---
aliases: /handbook/engineering/infrastructure/core-platform/data_stores/database/doc/container-registry.html
title: Container Registry on PostgreSQL
---






## Container Registry on PostgreSQL

This page is meant to track the discussion of different database design approaches for the Container Registry.

### Background and reading material

* [Discussion of the database schema](https://gitlab.com/gitlab-org/container-registry/-/merge_requests/269) (model 1 below) along with queries, estimated database size and expected query rates.
* [API specs](https://gitlab.com/gitlab-org/container-registry/-/blob/master/docs/spec/api.md)
* [Top-level epic for container registry's garbage collection with zero downtime](https://gitlab.com/groups/gitlab-org/-/epics/2313)

#### Deduplication ratios

A docker manifest describes how a docker image comprises of multiple layers. A manifest can be identified by the layers it references and as such it can be thought of as unique throughout the registry. Multiple repositories reference the same manifest.

Below we discuss different approaches to modeling that. Model 1 aims to deduplicate manifests, so that there is only ever one record for the same manifest and repositories merely reference manifests. Model 2 does not deduplicate manifests this way. Here, a manifest always belongs to a repository (which is part of its key). The same manifest can be present in multiple repositories which in turn leads to "duplicate" manifest entries (aside from the fact they live in different repositories).

A similar concept holds true for layers of a manifest.

We have imported the container registry from dev.gitlab.org into a database using model 1. In this section, we gather statistics from that import to shed some light onto what to expect from this in-database deduplication.

The "dedup factor" is basically how much more entries we expect if we didn't deduplicate them.

| Entity   | Referenced from | Dedup factor |
| -------- | --------------- | ------------ |
| Manifest | Repository      | 1.003        |
| Blob     | Layer           | 1.53         |
| Blob     | Repository      | 1.17         |

Example for Manifest:

```sql
select (select count(*) from repository_manifests) / (select count(*)::numeric from manifests);
```

In the case of the registry on dev.gitlab.org, we can see that almost all manifests are unique (dedup factor 1.003). On average, blobs are being referenced by 1.53 layers and 1.17 repositories.

In summary, if we were not deduplicating those records in the database (model 2 below), we'd have less than double the number of records - assuming dev.gitlab.org is representative enough.

### Database design alternatives

#### Model 1: "Many-to-Many" and no duplicate records

This approach has been validated to support all relevant container registry features. The database design discussion is [well covered](https://gitlab.com/gitlab-org/container-registry/-/merge_requests/269) and includes query examples along with their plans.

The idea of this approach is to treat all entities as first-class citizens and use many-to-many reference tables to connect them. For example, for a given manifest digest, there'll ever be one entry in `manifests`. This entry might be referenced from multiple repositories through the many-to-many reference table `repository_manifests`.

This naturally leads to deduplicating records, as they are not physically tied to the existence of the `repository`. See above "Deduplication Ratios".

![er_model](container-registry/er_model.png)

##### Benefits

###### Benefit 1: Well aligned with the existing filesystem model of container registry

##### Drawbacks

###### Drawback 1: There is no common partitioning key.

There is [no natural partitioning key](https://gitlab.com/gitlab-org/gitlab/-/issues/234255#note_393239553) in this model. There are a couple of patterns how the tables are being access. Given all models are first-class citizens, there's no common dimension all tables (or a large enough subset of tables) are being accessed by.

This renders it problematic if not impossible to find a meaningful partitioning scheme. This has potential to lead to performance problems down the road, when tables become large.

###### Drawback 2: The model naturally leads to dangling records.

The nature of this model is to treat all entities as first class citizens. This helps to deduplicate records, but also allows for a state where an entity doesn't have any references anymore but still exists in the database.

This means that we'll have to have a garbage collection algorithm to clean those entries up.

###### Drawback 3: Garbage collection is expensive.

Since the model allows records to become "dangling", we'll have to implement a GC algorithm to find those and eventually delete them. Let's look at the example of dangling manifests: This is a manifest that is not being referenced by any repository. We can find a batch of up to `N=100` dangling manifests like so:

```sql
SELECT *
FROM manifests m
WHERE NOT EXISTS (
  SELECT 1
  FROM repository_manifests rm
  WHERE rm.manifest_id = m.id
)
LIMIT 100
```

This is an anti-join across the full relation, which can be executed as a scan on two indexes. In the best case, we find `N=100` records quickly. This is rather unlikely though since we generally strive to keep the registry clean of those dangling records. The worst case is the registry is clean (there are no dangling records). In this case, we scan the entire relation. This is expensive and non-linear due to the join-nature.

We have a [good example for anti-join runtime characteristics](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/40717#note_404570149). Here, runtime varies from a few milli-seconds (best case - many "dangling records" or "dangling records" at the beginning of the scan) to about 30s (no dangling records).

###### Drawback 4: Reference tables are expected to become large.

The many-to-many reference tables are the ones that would become large, because they are effectively connecting `N` repositories with `M` manifests, for example (one record per connection).

Ultimately, this can become a performance problem when they become very large. This is particularly because the reference tables are being used in joins across one or more other tables.

#### Model 2: `1-N` Repository structure with separate blob management

This approach treats a repository as the first-class model. A repository contains many manifests (`1-N`), those contain many layers (`1-N`). Separately from the repository structure, we keep track of blobs residing in object storage. We automatically maintain a reference table to keep track of which blob represents a given layer (lookup by blob digest).

Minor differences to model 1 include using a single `digest` column to store both algorithm and actual digest and normalizing the media type information into a lookup table.

Reference: [SQL schema](container-registry/alternative_model.sql)

![alternative_model](container-registry/alternative_model.png)

What is not shown in the diagram is the possibility to have `blobs_layers` being tracked automatically. This can be implemented in the database, but we may also do this from the application. The in-database implementation would rely on a trigger like so:

```sql
CREATE FUNCTION public.track_blob_usage() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
IF (TG_OP = 'DELETE') THEN
  -- TODO: We can do more stuff here, this is just for illustrative purposes.
  -- Note: This doesn't have to be a trigger, it can also be application logic
  IF (SELECT COUNT(*) FROM blobs_layers WHERE id <> OLD.id AND digest = OLD.digest AND layer_id IS NOT NULL) = 0 THEN
    INSERT INTO blob_review_queue (digest) VALUES (OLD.digest) ON CONFLICT (digest) DO NOTHING;
  END IF;
ELSIF (TG_OP = 'INSERT') THEN
  INSERT INTO blobs_layers (digest, repository_id, layer_id)
  VALUES (NEW.digest, NEW.repository_id, NEW.id)
  ON CONFLICT (digest, layer_id) DO NOTHING;

  INSERT INTO repository_blobs (repository_id, blob_digest)
  VALUES (NEW.repository_id, NEW.digest)
  ON CONFLICT (repository_id, blob_digest) DO NOTHING;
END IF;

RETURN NULL;

END
$$;

CREATE TRIGGER track_blob_usage_trigger AFTER INSERT OR UPDATE OR DELETE ON public.layers FOR EACH ROW EXECUTE PROCEDURE public.track_blob_usage();
```

In case of inserts to `layers`, we also keep track of the reverse lookup automatically in `blobs_layers` and `repository_blobs` . When we delete a layer, we can check if there are any remaining usages left for this blob (notice the efficient lookup by `digest`) and if not, we might insert the `digest` into a queuing table. A background process takes those records and eventually cleans object storage and the `blobs` table.

Note this is just illustrative and we can get to the details later.

##### Benefits

###### Benefit 1: Efficient garbage collection for blobs - no "scanning" GC needed

In contrast to model 1, this approach makes garbage collection straight forward. We don't ever need to scan entire tables to find "dangling" records. This is because the database contents are always consistent.

For example, when we delete a layer - we can determine the affected blobs easily and schedule those for further checking and eventually deletion. This can be implemented even inside the database (triggers), if we wanted to. If we rely on cascading foreign keys, all this can be triggered by a `DELETE` - even deleting a full repository may be possible (though we might want to consider batch deletes) this way, fully triggering a cleanup of all the `manifests`, `layers` and eventually scheduling relevant blobs for deletion.

###### Benefit 2: No GC needed for entities other than blobs

Blob management has a need for (some) GC algorithm, because we effectively deduplicate data in object storage. However, other entities like manifests and layers don't have a need to perform GC in this model.

This is in contrast to model 1 where we effectively allow a record to become "dangling" because we deduplicate all entities in the database, too.

###### Benefit 3: Supports partitioning by repository and digest (for blobs)

There are two distinct areas of the database, each with their own partitioning key:

1. A repository along with its structure (partitioned by `repository_id`)
2. Blob management (partitioned by `digest`)

The choice of partitioning key dictates how the respective tables should be accessed. We must always use the respective partitioning key to make for most efficient queries.

For blob information, this leads to "Drawback 2" below.

Note that this partitioning scheme can ultimately also be used to create an application sharding design. We would apply the same idea for the repository structure (split by repository) and rely on a single blob management (or even divide that into more parts at the expense of decreasing space usage efficiency).

##### Drawbacks

###### Drawback 1: Duplication of manifests and layers records

With repository being the top-level entity, manifests and their layers are not being deduplicated (in contrast to model 1, where we don't store a given manifest twice). This is intentional to support the ability to separate data by repository internally (see partitioning).

Since `manifests` contains the actual  payload of a manifest, too, this may have a significant effect on overall database size. It remains to be seen if this is mitigated by partitioning. This depends on the efficiency of deduplicating manifests, i.e. what the dedup factor is.

###### Drawback 2: Duplication of blob meta-data in `layers`

A blob has meta-data attached like its `digest`, the `size` or the detected `media_type_id`. This is stored in `blobs` but also in `layers`. The reason for this duplication is that we have queries that scan a range of manifests (e.g. all layers for a manifest). If we only had `manifests.digest`, we would have to lookup this information in `blobs`. This table in turn can only be queried efficiently by `digest`, rendering the lookups single-record queries and effectively a N+1 pattern. This is being mitigated by duplicating the information into `layers`.

### Garbage Collection in Model 2

#### Examples of managing potentially dangling records

Note: In most cases, we will have to resolve a repository's `<name>` to its corresponding `<id>` first. This needed so we can use the id as a partitioning key in later queries.

##### Example: Delete manifest

```
DELETE /v2/<name>/manifests/<digest>
```

In this case, we delete the corresponding record in `manifests`:

```
DELETE FROM manifests WHERE repository_id=:id AND digest=:digest
```

The installed trigger inserts all referenced blobs (configuration and layers in the manifest) into the `blob_review_queue`. A later GC process inspects those and deletes blobs in case they don't have any references anymore.

##### Example: Delete repository

Deleting a full repository doesn't seem implemented in the [api specs](https://gitlab.com/gitlab-org/container-registry/-/blob/master/docs/spec/api.md#detail). It works like deleting all manifests in the repository.

##### Example: Untagging a manifest

```
DELETE /v2/<name>/tags/reference/<reference>
```

In this case, we delete the tag:

```
DELETE FROM tags WHERE repository_id=:id AND name=:reference
```

This can lead to untagged manifests which in turn are eligible for deletion. In order to defer this check to background GC, we insert all referenced blobs for the manifest that the tag points to into the `blob_review_queue`, but only if no other tag points to the same manifest in that repository.

We might be able to skip this step early in case there is another tag for the same manifest. Note for simplicity, we can also do these checks in GC instead.

##### Example: Uploading a blob, pushing the manifest

```
PUT /v2/<name>/blobs/uploads/<uuid>
```

Once a blob upload is finished, we create the record in `blobs` and associate the blobs with the repository through `repository_blobs`. In regular situations, the client might upload more blobs until it pushes the manifest. However, this process might fail and we would be left with dangling blobs (a configuration or a layer, which is related to the repository, but no manifest references it.)

In this case, we would insert the blob digest into the `blob_review_queue` after the upload has finished (and before the corresponding records in `blobs, repository_blobs` have been created). By setting `blob_review_queue.review_after` to a time in the future, we can delay the checking of this blob (which effectively defines a timeout until when we expect the client to have pushed the manifest).

Now the client pushes the manifest.

```
PUT /v2/<name>/manifests/<reference>
```

We create the corresponding records in `manifests` and `layers`. After completing the verification steps, we can de-queue (delete) the digest from the `blob_review_queue`. This is because we are sure now that there is a reference to this blob and we can skip GC. Note this is optional as the GC process would also be able to figure this out on its own - deleting from the queue is cheap (and likely cheaper than running GC), so this is an optimization.

#### Example: Switch existing tag from manifest A to manifest B

PUT /v2/<name>/manifests/<reference>

When uploading a manifest, if `reference` is a tag (can be a digest as well), we have to consider the scenario where an existing tag is switched from manifest `A` to manifest `B`. For example, if we:

1. Build a docker image for a sample application, tag it with `myapp:latest` and push it to the registry. When pushing the image to the registry, its manifest, lets call it `A`, will be uploaded and tagged with `latest` inside the repository `myapp`;

1. Change the sample application source code, rebuild the image with the same `myapp:latest` tag and push it to the registry. Because we changed the source code, this image will have a different manifest, lets call it `B`, which will be uploaded with tag name `latest`.

When the registry receives the manifest `B`, it finds out that another manifest, `A`, is already tagged with `latest` in the repository. In this situation, the registry will remove the `latest` tag from `A` and point it to `B` instead. Because of this, manifest `A` may now be eligible for deletion if no other tag points to it.

To account for this we need to insert all blobs referenced by manifest `A` into the `blob_review_queue`.
#### Consuming the blob review queue

We implement a background job system that consumes entries from `blob_review_queue` and performs GC checks and actions. This can be done with go-routines and synchronization on `blob_review_queue` can be implemented with `SELECT ... FOR UPDATE SKIP LOCKED` mechanics.

Note: A particular choice here is that GC is performed on a single blob only. It can be expanded though to support batch GC. However, the database model being used here is optimized for making by-digest lookups.

##### Popping the queue

In order to retrieve the next blob digest for review from the queue (the queue "head"), we find the next non-locked and qualifying record:

```sql
BEGIN;
SELECT * FROM blob_review_queue WHERE review_after < NOW() FOR UPDATE SKIP LOCKED LIMIT 1;
-- now we perform checks and cleanup action
-- and once done, we remove the digest from the queue:
DELETE FROM blob_review_queue WHERE digest = :digest;
COMMIT;
```

There is a caveat to that: In order to delete the blob from storage, we would perform external IO within an open database transaction (which is an anti-pattern). In order to mitigate this, we can do the following:

```sql
BEGIN;
SELECT * FROM blob_review_queue WHERE review_after < NOW() FOR UPDATE SKIP LOCKED LIMIT 1;
UPDATE blob_review_queue SET review_after = review_after + INTERVAL '5 minutes' WHERE digest = :digest;
COMMIT;

-- now we perform checks and cleanup action (outside scope of a database transaction)
-- and once done, we remove the digest from the queue:
DELETE FROM blob_review_queue WHERE digest = :digest;
```

The trade-off here is that we have short database transactions but at the expense from changing the queue into having *at least once* semantics. That is, we can see multiple jobs trying to clean up the same digest. For example, when the external IO takes longer than 5 minutes (the offset for `review_after`) or a job fails completely. The assumption is that this is never a problem because the jobs are idempotent.

##### Performing checks

Given a single blob digest, we implement a series of checks to determine whether or not the blob should be deleted from object storage:

1. Any remaining layer references? `SELECT 1 FROM blobs_layers WHERE digest=:digest LIMIT 1`
2. Any remaining repository references? `SELECT 1 FROM repository_blobs WHERE blob_digest=:digest` (TODO: The partitioning scheme is not suitable here, we might want to have `blobs_repositories` additionally - tbd)
3. Any remaining configuration references? `SELECT 1 FROM blobs_configurations WHERE digest=:digest LIMIT 1`

The database model supports all those checks and we would typically benefit from the partitioning model plus using an efficient index (examples above: single record lookup).

##### Performing cleanup action

Now that we've determined a blob should be deleted, we perform the following steps:

1. Delete blob from storage
2. Delete record in `blobs` and `blob_review_queue`

We discussed a synchronization need with incoming requests. That is, an incoming request (like putting a manifest referencing this blob or checking) might haver to be serialized with the cleanup action to get consistent results.
