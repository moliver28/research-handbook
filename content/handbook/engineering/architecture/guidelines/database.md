---

title: "Database"
---

GitLab is a [single application](/handbook/product/single-application/) that relies on a [single data store](/handbook/product/single-application/#single-data-store) (terminology we use in the context of stringent durability requirements, e.g., PostgreSQL as opposed to Redis).

This directive drives GitLab's product development: while GitLab is [*SaaS first*](https://about.gitlab.com/direction/#product-strategy), it is not *SaaS only*. In terms of databases, GitLab supports self-managed configurations with a single database cluster, generally through the use of logical databases. Only at scale do we contemplate unfolding the single cluster into multiple ones, as GitLab.com does. This implies that the code base stays stable and can leverage flexible backend strategies to address scalability. Self-managed and GitLab.com will continue to operate as a single application, and self-managed in particular will continue to provide simplicity while offering the flexibility to scale.

There is no fundamental aversion to multiple data stores, but we want to avoid the pitfalls of having *too many* of them, especially when a variety of data engines are involved. Additonal data stores introduce complexity in terms of management and development. Using new or adopting existing databases will involve tradeoffs, which have to be meticulously managed at scale. We have placed some gatekeepers before a separate data store can be deployed, and the following guidelines are intended to help you determine what the best course of action is and how to proceed.

These guidelines rely heavily on the Database Working Group [glossary](/handbook/company/working-groups/database-scalability/#glossary).

## *We need a new database*

*We need a new database* is becoming a more common request, and while it seems simple, it is deceptively so, particularly for new services and new teams.

First and foremost, access to the database (any database) can only happen within the confines of the production environment and relevant access controls and procedures. Features and services requesting new resources must undergo a [production readiness review](/handbook/engineering/infrastructure/production/readiness/).

Second, we need to fully understand what that statement actually means, particularly in terms of the type of data that has to be stored and queried, how tightly coupled it is to the main database, and how schemas and configurations are to be managed. 

Third, we need to understand what it will mean in terms of resource utilization (space requirements, transaction rates, expected growth for both). 

Finally, we need to understand if the data requires a new data store engine, since this will have significant implications once it is deployed in production in terms of the deployment itself, on-going maintenance (such as upgrades), observability integrations, and, more importantly, troubleshooting during incidents.

We use a relational database (PostgreSQL) as the primary metadata storage engine. Additionally, we also use a data structure store (Redis), which, while critical to the functioning of GitLab, stores more dynamic data.

### Relational: PostgreSQL

[PostgreSQL](https://docs.gitlab.com/ee/development/scalability.html#postgresql) is our relational database engine of choice, and, until recently, all metadata for projects, issues, merge requests, users, and so on resided in a single cluster. Its schema is managed by the Rails application ([`db/structure.sql`](https://gitlab.com/gitlab-org/gitlab/-/blob/master/db/structure.sql)). We commonly refer to this data store as the **main database**. As scalability needs increased, we adopted some [best practices](/handbook/engineering/architecture/practice/scalability/) to address them. Some items have been extracted from the database (diffs were the first ones), while others were deployed in separate logical databases or instances (at scale) because they were already separate services and had low data coupling requirements (Registry and Praefect). Still others have been decomposed ([CI](https://gitlab.com/groups/gitlab-org/-/epics/6168)) because of their scale (and because we found ways to work around tight coupling).

#### Data Structure: Redis

[Redis](https://docs.gitlab.com/ee/development/scalability.html#redis) is used for specialized, non-relational needs, including queues (Sidekiq jobs marshal jobs into JSON payloads), persistent state (session data and exclusive leases), and cache (repository data such as branch and tag names, and view partials). Redis is a critical component of the application, but it is not used with the same durability contraints as PostgreSQL.

## Considerations

Four basic questions have to be answered to determine the appropriate database:

1. What kind of code base comprises the application?
1. What kind of data does the application need to store?
1. What kinds of queries does the application need to run against the database?
1. What resource utilization is expected, both today and in the near future, in terms of space consumed, transaction rates (for read and writes), and latencies?

The answers to the first three questions are likely known in advance, since they are really baked into the application; the last one tends to be a little less clear, and while exact answers are not necessary, ballpark estimates (for both at deployment time and peering a bit into the future) are required.  Specialized teams, such as Database, Scalability, and Memory can aid in uncovering some of these unknowns. In any event, the answers to these questions should avoid specific technologies (with some exceptions). As an additional input, [the scaling model for GitLab.com based on business expectations and past growth](https://internal.gitlab.com/handbook/product/investment/scaling-model/) can be consulted to understand future scaling requirements.

## Default answer: the main Postgres database

Traditionally, the default answer has been to use our main database (PostgreSQL). However, we are probably at a point where this can no longer be the case, primarily for three reasons:

1. We have to carefully manage load on the main database for GitLab.com, particularly in terms of transaction rates, connections, and memory utilization, to ensure availability.
1. The product ecosystem is evolving in a varied fashion through integrations of existing technology stacks, and we are coming upon more specialized data needs.
1. The main GitLab.com Postgres database is intended for OLTP (Online Transaction Processing) use only. Especially at scale, OLAP (Online Analytical Processing) will introduced significant degradation on the database, particularly with regards to cluster replication.

In general, if the codebase is part of the main RoR application, more than likely it already uses the main PostgreSQL database, as the schema is managed through RoR and the code probably has fairly tight coupling with the Rails code base. New entities have to be managed carefully, however, as capacity planning concerns must be addressed in order to ensure availability. The Development [Database Group](/handbook/engineering/infrastructure/core-platform/data_stores/database/) and [the Infrastructure teams](/handbook/engineering/infrastructure/team) are the best sources of information in this regard, which also applies to Redis.

### Exception

Due to scalability concerns, we are currently executing the first [functional decomposition](https://gitlab.com/groups/gitlab-org/-/epics/6168) of the main database by moving the [CI tables](https://gitlab.com/groups/gitlab-org/-/epics/6167) to a separate cluster. Although the CI related code base is part of the main RoR application, the CI tables account for \~40% of the overall size and roughly 50% of writes of the main database. Data coupling with the rest of the database is relatively loose, so we are able to ensure data consistency between the two databases while making minimal changes and iterating on new techniques that we build ([Loose Foreign Keys](https://docs.gitlab.com/ee/development/database/loose_foreign_keys.html)).

In general, a separate cluster will only be supported if the size of the dataset and its corresponding transaction rate requirements are large enough to merit the cost of operating it and the added complexity of developing code to support it. Initially, this will likely reside in a separate logical database as part of the main cluster.

## Other use cases

### Relational (PostgreSQL)

If the application is **not** part of the main RoR application code base (for instance, [Container Registry](https://gitlab.com/gitlab-org/container-registry), [Praefect](https://gitlab.com/gitlab-org/gitaly), [Geo Tracking Database](https://docs.gitlab.com/ee/administration/geo/#geo-tracking-database)), then a separate database is the only option. Whether this is logical or belongs in an independent cluster will come down to scale.

| Code base | Transaction Rate | Storage       | Database             |
| --------- | ---------------- | ------------- | -------------------- |
| main RoR  | Low, Medium      | Low, Medium   | **Main** database    |
| main RoR  | High             | High (>1TB)   | **FD** database      |
| Any       | Low              | Low (<200GB)  | **Logical** database |
| Any       | Medium           | Medium (<1TB) | **Logical** database |
| Any       | High             | High (>1TB)   | **Separate** cluster |

## New data store engines

There will be times when currently supported data store engines will not be able to meet application requirements and a new data store engine must be introduced in the environment. These should be extremely rare, but will generally come courtesy of integration effort of new technology stacks into our environment (for instance, acquisitions), or when the data needs are very specialized (for instance, time series).

Due diligence should include involving the Infrastructure team as early as possible, since supporting new technologies will require a variety of work in terms of training, deployment, configuration, maintenance (upgrades), troubleshooting, etc.
