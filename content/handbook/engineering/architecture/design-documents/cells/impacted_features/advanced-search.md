---
stage: enablement
group: Tenant Scale
title: 'Cells: Advanced search'
toc_hide: true
---

{{% alert %}}
This document is a work-in-progress and represents a very early state of the
Cells design. Significant aspects are not documented, though we expect to add
them in the future. This is one possible architecture for Cells, and we intend to
contrast this with alternatives before deciding which approach to implement.
This documentation will be kept even if we decide not to implement this so that
we can document the reasons for not choosing this approach.
{{% /alert %}}

When we introduce multiple Cells, we intend to isolate all services related to those Cells. These main areas will need support for cells:

1. Infrastructure maintenance
2. Index maintenance 
3. Organization migration

## 1. Definition

The [Advanced search functionality](https://docs.gitlab.com/ee/user/search/advanced_search.html) allows users to search across the entire GitLab instance. Advanced search supports Elasticsearch and OpenSearch as the search backend.

### Infrastructure and index maintenance

Infrastructure maintenance tasks include Elasticsearch cluster version upgrades, scaling the Elasticsearch cluster, and support for incident root cause analysis and resolution. 

Index maintenance tasks include index shard resizing using the Zero-downtime reindexing feature ([example issue](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/18158))or Split shards Elasticsearch API ([example issue](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/18646)), enabling the Elasticsearch slowlog ([example issue](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/18159)), or cleaning up reverted migrations from the Advanced search migrations index ([example issue](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/16231)).

Today, most infrastructure and index maintenance tasks are performed manually by the Global Search team through the  [change request workflow](../../../../change-management.md/#change-request-workflows).

### Organization migration

Advanced search will need to support organizations being moved from one cell to another. 

Reference: [Organization migration design document](../migration.md]

## 2. Data flow

### Organization migrations

Indexing a namespace or project utilizes indexing pipelines to index database records, git data, and embeddings. 

#### Database & embeddings records

PostgreSQL records are indexed by queueing items into 16 Redis sorted ZSETs. A cron worker runs every minute and indexes a max of 1,000 records per ZSET for a total of 16,000 records per run. Records are indexed into Elasticsearch using the Bulk Index API. 

Initial indexing (when a namespace or project is first added to Advanced search), incremental indexing (when an indexed record is updated), and embeddings indexing are handled by separate ZSETs.

Today, there is no record of when database records indexing is completed. The mermaid chart below shows the initial indexing pipeline. The incremental and embeddings indexing pipelines have the same workflow.

```mermaid
flowchart LR
    A[Project queued for indexing] -->B
    B(Elastic::ProcessInitialBookkeepingService.backfill_project!) -->|Data queued into 16 Redis ZETs| C
    C(ElasticIndexInitialBulkCronWorker) -->D
    D(Gitlab::Elastic::BulkIndexer) -->|Elasticsearch Bulk index API|E
    E(Elasticsearch cluster)
```

#### Git data

 Non-PostgreSQL data (Code, Wikis, and Commits) are indexed using a separate indexing pipeline. Indexing status for code and wikis are stored for projects (`IndexStatus` model) and groups (`GroupIndexStatus` model) in the database.

```mermaid
flowchart LR
    A[Project queued for indexing] -->B
    B(ElasticCommitIndexerWorker) -->C
    C(Gitlab::Elastic::Indexer) -->D
    D(gitlab-elasticsearch-indexer) <-->|get commits and code|E
    D(gitlab-elasticsearch-indexer) -->|Elasticsearch Bulk index API|F
    E(gitaly)
    F[Elasticsearch cluster]
```

#### Problems to solve

1. There is no way to know when a project's database records are fully indexed. It is not possible to know when an organization migration is complete for Advanced search. Search results will be missing until the migration is complete.

1. The existing indexing pipeline could take a long time for large organizations (See [gitlab#48037](https://gitlab.com/gitlab-org/gitlab/-/issues/48037).  [Organization migration goal](../migration.md#goals) for Cells 1.0 is 24 hours, but ideally 0 for Cells 2.0.

## 3. Proposal

### Infrastructure and index maintenance

All index maintenance tasks will be initially be completed using the [Advanced search migration framework](https://docs.gitlab.com/ee/development/search/advanced_search_migration_styleguide.html). Once the migration process is verified, all index maintenance migrations will be migrated by CronWorkers. There should be a CronWorker per maintenance task:

1. Shard resize cron worker will review each index and adjust shard size if over the threshold
1. Migration cleanup cron worker will remove migrations from the migrations index that do not exist in codebase
1. Slowlog cron worker will enable the slowlog if an ops feature flag (or application setting) is enabled

All infrastructure maintenance must be automated. We may consider using the migration framework, but other methods should be evaluated. 

To support this, the following is required:

* The indexing paused framework must be modified to allow [pausing indexing for a specific index](https://gitlab.com/gitlab-org/gitlab/-/issues/381705). Pausing for a specific index allows maintenance tasks to be performed on an index without impacting other data types. This is important to reduce impact of search results being out of date because indexing is behind.
* Search and indexing validations must be automated. The `Search::ClusterHealthCheck` class can be expanded to include search and indexing validation.

### Organization migration

There are multiple ways to approach organization migration and each comes with a set of trade-offs. Since Cells is being rolled out in phases, this proposal contains recommendations by phase.

#### [Cells 1.0] Use existing indexing framework

Organization migration will be automated by using the existing indexing framework. Once an organization is put into maintenance mode and all PostgreSQL and gitaly data has been moved, the organization can be queued for indexing in the destination cell.

Conduct benchmarks to determine how long organizations at pre-determined sizes take to migrate. This data will be used to determine if the indexing pipeline will continue to be used for organization migration in later cells phases.

To support this, the following is required:

* The framework needs to be adjusted to handle indexing an organization. This may be as simple as iterating through all namespaces for an organization and kicking off the appropriate workers.

#### Pros

1. Cells can use any search cluster type and version.
1. Existing framework is well tested and understood by team members.

#### Cons

1. Indexing may take too long for organizations. We need to benchmark different organization sizes.
1. There are no indicators when indexing is complete for database records. Organizations will have missing search results until indexing is complete.
1. Additional load on GitLab instance including Sidekiq, Gitaly, and PostgreSQL. Other Sidekiq jobs in the cell will impact indexing completion.

#### [Cells 2.0] Use Elasticsearch APIs to move data

Organization migration can be automated with the [Elasticsearch Reindex API](https://www.elastic.co/guide/en/elasticsearch/reference/current/docs-reindex.html) to move all indexed data for an organziation to the new cell's Elasticsearch cluster. The API supports moving data between two different clusters (or hosts).

To support this, the following is required:

* The indexing paused framework must be modified to ensure that all queued indexing requests are completed once an organization is put into "maintenance mode". This is needed to ensure all indexed data is up to date before the migration.
* New queues should be setup to work on migrated data only. This will prevent other active indexing jobs from taking priority in the existing queues.

Proposed workflow:

```mermaid
flowchart TD
    A[Organization scheduled for migration] -->B
    B(Organization put into maintenance mode) -->C
    C(Complete all queued indexing requests for the organization) -->D
    D(Enqueue a worker to reindex all organization data from source cell Elasticsearch cluster to destination cell Elasticsearch cluster) -->|1-3 days in future|E
    E(Cleanup organization data from source cell)
```

#### Pros

1. No additional load on GitLab instance including Sidekiq, Gitaly, and PostgreSQL.
1. Know exactly when indexing is complete.

#### Cons

1. Requires Elasticsearch as the search cluster.
1. Database ID values must remain consistent between cells. Cluster wide unique database sequences are [planned for Cells](../decisions/008_database_sequences.md).


## 4. Evaluation

## 4.1. Pros

## 4.2. Cons
