---
owning-stage: "~sec::govern"
title: 'GitLab Secrets Manager ADR 008: Redesigning secrets manager without a Rails database table'
toc_hide: true
---

# Redesigning secrets manager without a Rails database table

One major issue with the database design for Tanukey is that it requires data
synchronization across two distinct services, preventing the use of a common
transaction. Using an external storage operation with OpenBao is impossible,
so our next best design option is to use OpenBao as the single source of truth
and identify what enhancements need to be made.

Our design goals are as such:

1. Strictly rely on OpenBao as much as possible and avoid database
   synchronization issues;
2. Minimize net-new enhancements to OpenBao;
3. Be cognizant of OpenBao's performance characteristics.

## Summary

With careful layout of secrets, this **should** be possible for MVC. For
post-GA, there are definitely some future improvements that would be necessary
for decent performance, but many of these can be solved by first (re-)adding
horizontal scalability via servicing read-only requests on standby HA nodes.

## Proposed secret layout

We will use the existing [secret layout](https://handbook.gitlab.com/handbook/engineering/architecture/design-documents/secret_manager/#secrets).

The one caveat in this design is that "option 2" (wherein the same secret can
appear with different names in different contexts) becomes hard to enforce;
thus we'll use option 1 exclusively. While theoretically we can use the naming
[solutions](https://gitlab.com/gitlab-org/gitlab/-/issues/470406#note_2115279537),
we can't easily validate that two paths have separate scopes when updating an
ACL and thus will prefer to have separate names entirely.

Ignoring this constraint and allowing name to be a strictly free-form value,
forcing users to refer to secrets by some identifier we choose, could likely
cause confusion and poor UX (and, doesn't solve the underlying issue reused
names to keep the production/staging difference as minimal as possible and
enable the same `.gitlab.yml` file for both, just executing from different
branches perhaps).

## Proposed ACL design

We propose a group-based approach to ACL policies: each scope (for a pipeline)
and role (for users, when not using explicit grants) will grant access to
specific subsets of secrets. These policies are maintained and stored in
OpenBao, but GitLab Rails is tasked with managing and provisioning them.

Notably, no operations are expected to span multiple tenant contexts. This
allows us to add per-namespace ACLs in the future and create smaller
path->policy indices in the future. Furthermore, we can use nested paths to
segment different policies and build per-segment indices, reducing the list
operation overhead as well.

### Hierarchy of policies

For each project, we'll provision ACL policies prefixed with `project_{id}/`:
this path separator component is an allowed character in policy names and
allows us to use a [future extension](#acl-list-prefix) to list just policies
we are interested in and will let us reduce the size (and increase the
relevance) of indices.

Additionally in the future, hierarchical secrets can be supported by also
supporting `group_{id}` and other constructs as top-level categories. With
multi-tenant support, we'll have fewer top-level items (as they'll be
explicitly bounded by the tenant), making iterating over all such items
easier. However, we'll usually have fairly few items.

Note that these do not necessary reflect the secret's path and only notate
where ACL profiles exist. Because tenant information will eventually be
conveyed within a namespace (and the policies moved appropriately), we'll
eventually end up with a secret-like ACL policy hierarchy.

Each top-level segment essentially represents all access to a particular
secrets management section of the UI: `project_{id}/`, `group_{id}/` &c.

### ACLs for pipelines

#### Layout

Within the `project_{id}/` top-level path segment, we'll provision an
additional path segment, `pipelines/`, to separate pipeline-related
policies for a project from other types of access.

We create the following types of pipeline policies with Rails:

 - `global`: secrets any pipeline can access
 - `env/{context}`: environment restriction policies
 - `branch/{context}`: branch restriction policies
 - `combined/env/{context}/branch/{context}`: combined environment and branch restrictions (`AND`)

A full path of an ACL would thus look like the following examples:

 - `project_12345/pipelines/global`,
 - `project_12345/pipelines/env/prod-*`,
 - `project_12345/pipelines/branch/release/*`, or
 - `project_12345/pipelines/combined/env/prod-*/branch/release/*`.

Notably, the direct encoding of restriction to path allows for us to create
groups with [the same encoding](#group-alias-glob-matching), reducing the
need for GitLab Rails to query the set of restrictions before issuing the
JWT. Use of `combined` as a prefix ensures we cannot have confusion attacks
with poorly named environments and branches.

In the future, explicit grants could also occur: stages could have a path
segment and policies (`stages/{name}/global`) and each job in a stage could
also have direct secret access (`stages/{name}/job/{name}/global`). Or, we
could even support ANDing between stage, name, and the above restrictions
(environment/branch) to support rather granular execution contexts for these
jobs.

When issuing a JWT, presently GitLab Rails will need to query relevant
ACLs within a path and issue [a `groups_claim` field](https://openbao.org/api-docs/auth/jwt/#parameters-1)
with all the relevant values from the ACL list. However, with the mentioned
glob enhancements, GitLab Rails should be able to directly compute these
without requiring a lookup from OpenBao as this information already appears
[on the `id_token`](https://docs.gitlab.com/ee/ci/secrets/id_token_authentication.html).
The one exception is that the future enhancement for direct explicit grant
(by stage/job name) does not yet exist on the id token and thus cannot
be used for ACLing.

#### Contents

Like with the [existing design](https://handbook.gitlab.com/handbook/engineering/architecture/design-documents/secret_manager/#pipeline-acl),
each ACL policy will be an explicit grant of capabilities over a path. We
will set these with GitLab Rails and will not support globbing.

For example, if any pipeline running with an `env/prod-<DATE>` context is to
have access to the production database credentials, we will create a policy
named `project_54321/pipelines/env/prod-*` with the contents:

```hcl
path "user_12345/project_54321/secrets/kv/data/explicit/PROD_DB_PASS" {
    capabilities = [ "read" ]
}
```

Notably, because a pipeline will have multiple contexts which might provision
different ACL policies, we'll eventually want to implement
[policy unions](#policy-unions).

### ACLs for users

While presently we will use GitLab Rails to proxy requests to OpenBao from
the web UI, in the future, we'd like to use a direct user JWT to set secrets
on behalf of the user, before eventually pushing that to the users' browser
and having them directly interact with the underlying OpenBao instance so that
GitLab Rails does not see the actual secrets.

Based on current designs, we do not need to handle cross-project queries of
any sort. Furthermore, our initial design only requires role-based access:
granular permission access (in the future) would require us to solve the
[reverse-lookup problem](#reverse-lookup-of-policies), which is doable but
requires an additional, more complex extension to OpenBao.

#### Layout

Similar to pipelines, we'll create policies under the relevant top-level
path, with a `roles/` or `direct/` subcomponent. Here, `roles/` will have
various default or custom roles which get access to secrets at various
levels. For instance, `roles/maintainers` and `roles/owners`: this allows
each project to control what scope of access these roles get, if the defaults
are not ideal.

Further, with `direct/user_{id}` roles, users will be given explicit grants
to certain secrets, beyond what they might normally see given their role.

#### Contents

For both roles and direct access, there are two types of grants:

1. Broad grants to the entire category of secrets.
2. Specific grants to individual secrets.

For the former, the policies might look like:

```hcl
path "org_{orgid}/project_{projectid}/secrets/kv/data/explicit/+" {
    capabilities = [ "sudo", "create", "update", "patch", "delete", "list" ]
}
```

for read-write access and

```hcl
path "org_{orgid}/project_{projectid}/secrets/kv/data/explicit/+" {
    capabilities = [ "list" ]
}
```

for view-only access.

For the latter (specific grants), the policies might look like the above,
just with explicit names in them (e.g., `DB_PASS_PROD`).

When accessing a secrets management page, GitLab Rails will issue a JWT
to the user which will contain the relevant `groups_claims` to groups with
specific policies within the project. Notably, this will not delay load:
this token will only be used by the user to set specific secrets, though
a similar JWT and secret could be used on the GitLab Rails' backend to
render the initial page. The assumption here being the Rails->OpenBao
interconnect is faster than User->OpenBao and potentially Rails could
have caching of user or secret lists.

### Modifying ACL policies

Notably, ACL policies are written in HCL: this presents a problem since
[Ruby lacks good HCL support](https://rubygems.org/search?query=hcl).
However, [HCL is JSON-compatible](https://developer.hashicorp.com/vault/tutorials/policies/policies#hashicorp-configuration-language-hcl).

This means that, for any given ACL policy above, we can construct its
equivalent in JSON, giving GitLab Rails native capabilities to edit it.

For example, the policy in HCL:

```hcl
path "org_{orgid}/project_{projectid}/secrets/kv/data/explicit/+" {
    capabilities = [ "list" ]
}
```

would be equivalent to the following JSON:

```json
{
    "path": {
        "org_{orgid}/project_{projectid}/secrets/kv/data/explicit/+": {
            "capabilities": [
                "list"
            ]
        }
    }
}
```

This becomes much easier for GitLab Rails to query and update.

## Types of operations

In order for this design to be effective, we need to know that every type of
operation over secrets can be efficiently performed. We enumerate them below.

### Pipelines fetch secrets

Pipelines must be able to fetch secrets from OpenBao. To fetch a secret:

1. GitLab Rails provisions a JWT, containing the concrete environment,
   branch, and project information including in a claim used for
   `groups_claim` matching.
   - Initially GitLab Rails must query OpenBao to find the globbed groups
     directly, but if group aliases are updated [to support globs](#group-alias-glob-matching),
     we can directly provision the final environments and OpenBao can match
     alias->globs internally.
2. GitLab Rails gives the JWT and the relevant paths to OpenBao to the Runner.
3. The Runner authenticates to OpenBao and fetches the secrets.

Steps 2 and 3 do not rely on any complex operations; only step 1 currently
requires a LIST operation on the GitLab Rails->OpenBao side.

**Observation**: CI pipelines may default to static secrets, but most dynamic
secret engines probably should have a `type:` keyword to allow the Runner to
understand what type of operations to use.

### User list secrets

User listing of secrets is limited to a particular space (project, ...) and
thus incurs (initially) a single LIST operation. In the future, dynamic secret
backends might complicate this, but we can likely use [profiles](#profiles) to
address that later.

Depending on the verbosity of the display, some information from viewing a
specific secret might also apply and incur additional complexity.

### User views specific secret

Viewing a specific secret implies we know the path in storage for the secret.

To view a specific secret, a `LIST-PAGE` call can be issued (size=1) to ensure
the secret appears in the list. GitLab Rails can then fetch relevant ACL
and metadata information using subsequent `LIST` operations against prefixed
paths to get relevant policies. These ACLs will need to be `READ` to match
secret to policy to understand relevant scope (based on the above).

In the future, we'll be able to skip the undirected `LIST` operation and all
`READ` operations by using [reverse lookup of policies](#reverse-lookup-of-policies);
this will let us know (by virtue of policy naming) what things have access to
this secret.

### User modifies permission

To modify a permission, GitLab Rails would have to act on the user's behalf,
fetching the relevant policy and then modifying it to have the new scope
or removing an existing scope. The policy would either be updated (if
additional paths remained in the policy) or it would be deleted.

Notably, while groups still exist on the entity (for any in-flight requests),
this would have a real-time impact, unlike the [current design](https://handbook.gitlab.com/handbook/engineering/architecture/design-documents/secret_manager/#pipeline-acl),
which generates ephemeral policies per-execution of a pipeline.

### User sets value

To set a value, the user would perform a write operation to OpenBao (whether
directly or through GitLab Rails acting on its behalf). Because the user
already knows the path, this shouldn't impact anything.

### Auditing user's access

Auditing a user's access to all secrets in OpenBao is fairly easy insofar as
it is one or more LIST requests to relevant API endpoints based on project
information. It is harder to search across all tenants and users, but this
could potentially be done with broader (and thus, more expensive) scoped
[reverse lookup of policies](#reverse-lookup-of-policies).

However, for a single project, this boils down to a few LIST operations
based on the above user ACL layout.

### Timestamp computation

Since Rails will want to be ingesting and parsing OpenBao's Audit data
anyways, we'll be able to maintain created, last modified, and last accessed,
times. This could go into a table for more efficient lookup.

## Notable restrictions

### Uniqueness checks are hard

While we can support uniqueness within a given K/V engine, if we were to
introduce hierarchical secrets in the future (at the group level for
instance), it will be hard to ensure global uniqueness across group->project,
especially as users will have direct write capabilities in the future.

Thus, it is suggested to add an optional `scope:` tag to secrets (defaulting
to `project`), to allow disambiguating where in the hierarchy this secret is
expected to be read from.

However, except with a single unified table indicating type, we'd _also_ have
uniqueness issues at the same scope for dynamic secrets. In that case, using
a `type:` field (on the secret in the YAML file) will yield some clarity (or
potentially cause some confusion...).

This is a future problem.

### Descriptions and metadata

Not solved here is what to do with the
[description](https://gitlab.com/gitlab-org/gitlab/-/issues/432384/designs/Edit_Secret.png)
and other metadata fields (`suggested rotation` &c).

For K/V secrets, this can be a metadata value, but this will not work for
non-K/V dynamic secrets. One option would be to provision a K/V entry for all
values: metadata fields for description could then be used and uniqueness
across all types of secrets would potentially be enforced.

Theoretically this could also be done for inherited values (to "block" local
engines from creating them), fixing the uniqueness check issue.

## Future extensions

The following extensions to OpenBao will allow us to improve performance and
solve certain shortcomings with the existing design.

### Short-term

The following short-term enhancements are required to be completed by GA as
they're necessary just for the designs presented through MVC. They might
have performance implications that allow us to reduce the work that GitLab
Rails does.

#### ACL list prefix

ACL policies can contain the `/` character, which is still interpreted as an
actual K/V path component separator. This means theoretically the
`LIST /sys/policies/acl` could take an optional `[/:prefix...]` which
corresponds to an on-disk subpath under the policy store, limiting results
without having to use an iterated `LIST-PAGE`.

In particular, by prefixing our policies with a segment (`project_{id}/` or
`user/` or `roles/` &c), we can list over just the policies applicable to
each (project pipelines, or direct permissions given to users).

OpenBao already [mostly supports this](https://github.com/openbao/openbao/blob/c9e46f74d17ebf5b3d093f2911a8ba610014de9e/vault/policy_store.go#L504-L515).
We will just need to support creating a SubView if `ListPolicies(...)` is
given an optional `prefix`.

**Complexity**: simple
**Impact**: necessary performance improvement at scale
**MVC**: not strictly

#### Group alias glob matching

The [identity subsystem](https://openbao.org/api-docs/secret/identity/group-alias/)
group aliases: alternative names (within one mount path) to which other
names for specific groups apply. By enhancing these to support explicit
globs, we can [map glob policies to glob groups](https://openbao.org/api-docs/secret/identity/group/)
and have OpenBao apply them in the future.

This reduces GitLab Rails' from needing to query the exact set of groups
and policies to apply before issuing the JWT in the first place.

To apply this mapping [`refreshExternalGroupMembershipsByEntityID`](https://github.com/openbao/openbao/blob/c9e46f74d17ebf5b3d093f2911a8ba610014de9e/vault/identity_store_util.go#L2109-L2229)
will need to be updated to support globs in the `groupAliases` parameter.
In particular, this is rather complex as the underlying MemDB does not
support native glob matching. We'll need to create a new set of tables,
and do a [Longest Prefix match](https://pkg.go.dev/github.com/hashicorp/go-memdb#Txn.LongestPrefix)
to resolve candidates for the glob before validating each one against the
actual value and seeing what matches.

An alternative design here would be to somehow convey this information in
a Rails table: the risk of out-of-sync then becomes minimal and potentially
this table can be used to solve the "nption 2" [design issue](https://gitlab.com/gitlab-org/gitlab/-/issues/470406#note_2115279537).

**Complexity**: complex
**Impact**: necessary performance improvement at scale to reduce the number
            of Rails->OpenBao queries.
**MVC**: not strictly

### Long-term

The following long-term enhancements are required to add additional features
into GitLab Secrets Manager, but aren't required for the initial set of
designs through GA.

#### Policy unions

An upstream OpenBao commenter already noted the weird ACL
[combining behavior](https://github.com/openbao/openbao/issues/514) and
wants to address it with strict UNIONs over policies. This isn't useful
for us in the short-term (because all pipelines with separate policies
will have paths with READ access only, and so will all have the same
capabilities), but we'll need this for the future if we support CREATE
or dynamic secrets of various sorts.

**Complexity**: complex; lots of RFC design work and careful consideration.
**Impact**: solves the [subtoken requirement problem](https://github.com/openbao/openbao/issues/514#issuecomment-2336401580).

#### Reverse lookup of policies

Notably, the current ACL subsystem cannot handle reverse lookups at all:
given a path, what policies apply to them?

We need an enhancement to build a [`PathManager`](https://github.com/openbao/openbao/blob/main/sdk/helper/pathmanager/pathmanager.go)
over relevant policies to allow efficient lookup of path->allowing policy.

This could be at a path such as `sys/policies/lookup/acl[/:prefix]`, taking
a `path=...` parameter conforming to existing `PathManager` expectations
(because it is, after all, an OpenBao path which we want to check access to).

Notably, the current implementation is not serializable, so we will want to
handle that so that indices can be persisted to disk (built on update) and
not be stored in memory (as we'll likely have lots of policies and hopefully
relatively few lookups relatively). A LRU cache can be used to store commonly
accessed queries in memory and to provide better locality for fetch.

**Complexity**: moderately complex to be performant
**Impact**: solves a use case that [required the Rails database](https://gitlab.com/gitlab-com/content-sites/handbook/-/merge_requests/7362#note_2021176842).

#### Exists as an operation

OpenBao supports LIST (and, now, LIST-PAGE), which can be used as proxies
for an existence check. However, they have the notable restriction of leaking
names of secrets which the user may not have access to. We would like to
support scoped-list in the future, but in the mean time, we should also
consider a direct existence check, to allow users to make specific queries to
specific paths to check if they exist or not. While theoretically equivalent
to LIST operations given sufficient volume, they'll allow us to efficiently
check (on the client) whether or not hierarchical secrets exist and condition
appropriately.

**Complexity**: Requires some Core knowledge but should be doable.
**Impact**: low: ways to work around it.

#### Size limits

This is required for direct user access, and probably notated elsewhere in
discussions, but is worth calling out: direct user access will require
request size quotas.

**Complexity**: moderate; much plumbing for other types of quotas already exist.
**Impact**: large: greatly improves security posture.

#### Profiles

For many reasons, profiles (server-side execution of multiple requests from a
given input and formatted into a response) are an attractive solution to
multiple client->server requests.

They are described more in this [draft blog post](https://gist.github.com/cipherboy/64583068e076c8b5774d24c571c550f3#file-02-cross-plugin-communication-md).
