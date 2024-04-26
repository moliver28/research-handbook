---
aliases: /handbook/engineering/infrastructure/core-platform/data_stores/database/doc/root-namespace-sharding.html
title: Sharding GitLab by top-level namespace
---







## Sharding GitLab by top-level namespace

This document summarizes the idea of sharding GitLab by top-level namespace. It is meant to provide an idea of how product features would have to change with namespace sharding and to highlight the difficulties and complexities we anticipate with this approach, as well as touching on implementation details and known unknowns.

### Nomenclature - what is a namespace?

Let's start off by defining common nomenclature.

#### Namespace

In GitLab, projects are contained inside a *namespace*.. A namespace can be nested inside another namespace. This forms a tree-like hierarchy: Namespaces are the nodes of the tree, projects are the leaves. The root of this hierarchy is called "top-level namespace".

Let's decompose this example: https://gitlab.com/gitlab-org/database-team/team-tasks
1. `gitlab-org`: top-level namespace
1. `database-team`: a group inside `gitlab-org`
1. `team-tasks`: a project inside `database-team`

After signup, each user has their own namespace associated under `gitlab.com/$user`. Additionally, a user may interact with any number of (root) namespaces across the instance.

#### Data access pattern

A data access pattern is a commonly found perspective of how data is being looked at. This typically informs how database query filters look like. Let's look at a few examples:
1. Data by time: The primary query filter is perhaps a date range. GitLab example: Instance-wide audit log
2. Data by user: The primary query filter is the user id. GitLab example: User dashboard
3. Data by namespace: The primary query filter is the namespace id. GitLab example: issue group search

### Sharding by top-level namespace

The gist of this idea is to slice all data horizontally by the respective top-level namespace.

Let's use `/gitlab-org` and `/gitlab-com` as two example top-level namespaces. Both contain many sub-groups, projects, a lot of issues, merge requests, CI data and so on. With sharding applied at the database level, we separate those two namespaces in the database into separate shards (for the sake of the example):

1. Shard 1: `/gitlab-org` and all its data
2. Shard 2: `/gitlab-com` and all its data

Glossing over data distribution details for now, we can think of those two shards as physically separate databases.

Now, as desired, each shard is much smaller in data size compared to the non-sharded database. This results in much better performance for database queries that are designed around this sharding idea. More on that in: "Features in support of sharding".

On the other hand and strictly speaking, this limits product features in a sense that accessing any data has to always be scoped to a (root) namespace. Otherwise, we would have to scan all shards - which is undesirable and breaks at scale. So this is about access patterns and how some product features access the data. More on that in: "Features in conflict with sharding".

Complicating things, there is data that is completely unrelated to a namespace. We can see this by analyzing the database schema statically. Without even thinking about access patterns at this point, we can already conclude that this type of data is not shardable by namespace - it doesn't have any reference to a namespace.

Before we dive into details, let's summarize shortly what is ideal for this sharding approach:

1. There is only one common sharding dimension for related data, i.e. data that is commonly accessed together in one database query.
1. Shardable data has some notion of the sharding key, e.g. a reference to a namespace. This can be a transitive property, e.g. an issue does not have a direct reference to the top-level namespace but rather is contained in a project, perhaps other groups which eventually reference the top-level namespace.
1. Features are designed such that their data access patterns align with the sharding dimension.

The following section details apply these points to GitLab.

### Common sharding dimension in GitLab

We describe database sharding by top-level namespace and this builds on the premise of using the top-level namespace as the common sharding dimension throughout the application. Let's look into how well this works in GitLab.

#### Database schema

GitLab's current database schema contains roughly 80 (out of 350) tables that do not have any notion of a namespace. This is a result from statically analyzing the database schema and basically checking for columns that (perhaps transitively) relate to a namespace. A summary for this analysis can be found in "[A Note on the Technical Complexities with Sharding by Namespace](https://docs.google.com/document/d/1LEoDRVR531_D4qwsKQsJq1NncUh-kInhItkIKwKJxhg/edit#)" (GitLab-internal link).

In terms of data size, tables without a notion of namespace make up about 400 GB worth of data (about 6% of total size) as of today. Expecting a 100x growth, we would have 40TB worth of data that cannot be sharded. Depending on implementation details, this data would have to be replicated across to expose it locally to each shard or we would only maintain this data on a central coordinator instance (which means we'd have to combine local and remote data from shards in queries).

Assuming we're not also adding capabilities for multi-master writes (i.e. the ability to write the same data in different locations), this hinders our ability to scale the read-write capacity - because these writes can only happen on a single cluster.

#### Features and access patterns

A notion of the sharding key is required for sharding, but it's not sufficient to actually benefit from it. In order to leverage sharding, a feature needs to access sharded data by the sharding dimension. It is fine to add additional filters, but without the sharding key we are not only not making use of sharding but should expect a potentially severe degradation for query performance: Without the sharding key, we'd have to scan all shards (fan out) - which is very expensive. Depending on implementation details, it may be difficult to implement parallel cross shard scans.

Let's look at two examples here, more can be found in [#50](https://gitlab.com/gitlab-org/database-team/team-tasks/-/issues/50).

1. Issues: This is a representative example for data that originates from within a namespace, but also has conflicting access patterns.
2. Audit log: This is representative for features with conflicting access patterns at the instance level.

##### Issues

An issue tracker lives inside a single project. As such, issue data transitively references a top-level namespace.

Sharding by namespace is ideal for these features:
1. Listing and working with a project issue tracker including search etc ([example](https://gitlab.com/gitlab-org/gitlab/-/issues))
2. Similar the group level ([example](https://gitlab.com/groups/gitlab-org/-/issues))

For these examples, we can clearly see the access path is "by namespace" or "by project" (which ultimately "by top-level namespace" covers).

On the other hand, there are features which would require a cross-shard scan:

1. User dashboard: Which issues are assigned to a particular user? [Example](https://gitlab.com/dashboard/issues?assignee_username=abrandl)
2. Similar: Instance-wide issue search by author, assignee, label, milestone, release, "my reaction". [Example](https://gitlab.com/dashboard/issues?scope=all&utf8=%E2%9C%93&state=opened&my_reaction_emoji=thumbsup)

These features have conflicting access patterns with the idea of sharding by namespace. This results in database queries that span all shards. Conceptually, this comes from the fact a user can interact with any number of namespaces across the instance. Therefore, in order to find assigned issues, we'd have to look into each and every namespace.

In a non-sharded database, this is easy: We maintain a single lookup table `issue_assignees (user_id int, issue_id int)`  to model the N:M relationship.

In a database sharded by namespace, we would have two shards following the previous example:

1. Shard 1: `/gitlab-org` with a table `issue_assignees (user_id int, issue_id int)`
2. Shard 2: `/gitlab-com` data with a table `issue_assignees (user_id int, issue_id int)`

In order to find all assigned issues, we iterate all shards and query each of them. This is because we don't know which top-level namespaces the user interacted with at all and where to look for issue assignments (also see "Statistics on user interaction"). After querying all shards, we reconcile the results to typically display the TOP 20 issues (by some criteria) across all shards.

###### How can we fix this?

In the ideal scenario for namespace sharding, these features would be constrained by a namespace. This means, search cannot go across multiple namespaces. There are two theoretically possible ways to implement this:

1. Always let the user select a desired namespace for the search
2. On a more global level, constrain a single user to only be able to work and see data from inside a namespace at a time.

In both cases, it would be possible to change the currently active namespace. However, none of the features would display or work with data across multiple namespaces.

##### Audit log

The audit log contains information about events that happened throughout the instance. An event may pertain to a user, a project or a group.

Based on that, we can already conclude that there are events which are unrelated to a project: User-related events do not have a notion of a namespace at all. On GitLab.com, this makes up about 75% of the audit log data, which cannot be sharded by namespace.

We allow users to work with the audit log from different perspectives:

1. By project
2. By group (which is behind a feature flag currently)
3. Global at the instance level (for admins)

The global instance level view is the problematic one: Ideally, an instance admin wants to see what happened across all namespaces and users on the instance.

In summary, if we sharded by namespace we would face:
1. 75% of data is not shardable in this dimension
2. Namespace sharding does not support the instance-level view

###### How can we fix this?

The audit log feature and its data is not suited well for namespace sharding in its current form unless we change the admin features.

For example, we could have an admin to always select a namespace of interest and we would only show data for a single namespace at a time.

However, in order to view audit logs for a user, we can only continue to build a large non-sharded table to provide this view. Depending on how isolated the audit log feature is from the rest of the application, we may want to think about feasibility of a different sharding dimension here (time or user).

### GitLab.com: Statistics on user interaction

The premise of sharding by namespace is the idea that "customers care only about what happens inside their namespace".

For example, it may even be undesirable for a SaaS customer on GitLab.com to accidentally @-mention users outside their organization. A typical SaaS customer is assumed to only care about search results inside their namespace, for example.

In GitLab, we track which projects a user interacted with. Based on that, we conducted an analysis of how many projects, groups and top-level namespaces users interact with on GitLab.com. Here, interaction is defined as performing any kind of action on a project - opening and just looking at a project is not enough in this case (i.e. we're looking at actions that lead to an event). Note this includes users without any activity.

![user-interaction-middle](root-namespace-sharding/user-interaction-middle.png)

A summary and the takeaways are:

1. 95% of users interact with about 4 top-level namespaces or less (including their user namespace).

2. 60% of users only interact with 1 top-level namespace

3. 45% of users interact with a namespace other than their own

4. 15% of users interact with more than one namespace other than their own

More details including the raw data used can be found in [gitlab-org/database-team/user-interaction-data](https://gitlab.com/gitlab-org/database-team/user-interaction-data/-/blob/master/user%20interaction%20data.ipynb).

While this is good news for the namespace sharding approach, it doesn't solve the fundamental problem of conflicting access patterns for all features.

For "by user" access patterns, we may be able to use this information to first figure out which shards are relevant for the particular user at hand and then only query those. This would help to avoid scans across all shards and limit it closer to what is relevant. However, this is not a static analysis anymore but rather involves maintaining lookup information to track which shards are relevant for a given user.

### Technical implementation of database sharding

GitLab is built on PostgreSQL which does not support native sharding (however, it's on the community roadmap). We explored [using CitusDB](/handbook/engineering/infrastructure/core-platform/data_stores/database/doc/citus.html) instead, which is not an option for us.

We also explored using of PostgreSQL features such as [partitioning in combination with foreign-data wrappers](/handbook/engineering/infrastructure/core-platform/data_stores/database/doc/fdw-sharding.html) to implement a notion of a sharding database feature ourselves. While we identified a principal direction how this can be implemented, we are well aware of its complexities. This is not perceived as a "boring" solution and we [do not know of positive reports from other companies going down this road](https://gitlab.com/gitlab-org/database-team/team-tasks/-/issues/57). Also based on our own experience with using FDW for GitLab Geo, we deem this a very complicated approach.

Identified complexities reside around the following topics:

1. Operational: We would have to run multiple interconnected PostgreSQL clusters and a coordinator  cluster on GitLab.com (each needs their own HA setup, coordinator is a single-point of failure).
2. Development: PostgreSQL FDW does not support parallel scans through FDW (fan out). All-shard scans seem infeasible at scale.
3. Development: Schema migrations are difficult to achieve in a distributed database.
4. Operational: Consistent backups of the database state are problematic.
5. Scalability: Write bottlenecks for tables replicated from a single point (for non-shardable data)
6. Product: Many product features have been identified to potentially become very slow/expensive or break with this approach. We would need to align the product thinking such that features are fully contained in a namespace. Ideally, this includes confining users into a single namespace, too - which seems like a huge undertaking and also quite limiting for the user experience.

We expect to only need sharding capabilities for GitLab.com and don't expect this to be necessary for self-managed installations. This further complicates implementation because it's likely we would have to implement some actions specific to GitLab.com.

### Summary

We explored what is needed for database sharding and we also got an idea of how well this would work with GitLab. In order to successfully implement namespace-based sharding, we identified two challenges:

1. Align product features with namespace-based sharding - it is expected that this requires a large amount of rethinking the product and design new features (and re-design existing ones) with namespace boundaries in mind.
2. Technical implementation of a distributed database backend - while we have ideas how this can look like, it seems like a risky and lengthy effort.

#### How does this relate to partitioning efforts?

We aim to introduce PostgreSQL table partitioning to the application. This can be thought of as a database tool we have at our disposal to considerably improve performance and scalability of the application.

It can be applied local to a single feature and optimize for a particular use case. For example, we are working on improving the [audit log feature with a partitioning pattern](https://gitlab.com/groups/gitlab-org/-/epics/3206). The benefit from this locality is the ability to optimize for different cases across the application - we don't have to find the single common sharding dimension for everything.

While we've explored partitioning to implement a notion of sharding (with FDW), partitioning is also simply a tool to improve database interaction. As such, it can be used additionally to sharding approaches: In a sharded database or in application sharding, partitioning is local to a shard and further improves database scalability.

In that sense, partitioning is a tool that is readily available for us to make use of now and one that does not introduce operational complexity. It directly improves performance and scalability of the database. On GitLab.com, we are at a scale currently where this seems to right tool to address performance issues. Additionally, it comes with the same fundamental thinking around slicing data horizontally and analyzing existing access patterns (and perhaps rethinking product features to align better).

Related links for partitioning:
1. [On table partitioning](partitioning.html)
2. [Table partitioning: Issue group search as an example](issue-group-search-partitioning.html)
3. [Database partitioning epic](https://gitlab.com/groups/gitlab-org/-/epics/2023)

#### Where to go from here

We are going to continue to explore ways to improve database scalability, particularly with GitLab.com in mind:

1. Systematic workload analysis, micro-analysis on a query basis and applying standard relational best practices for modeling, query building, indexing, partitioning etc - harvesting low hanging fruits ([example](https://gitlab.com/gitlab-org/gitlab/-/issues/219094)).
2. [A mid-term database capacity analysis](https://gitlab.com/gitlab-com/gl-infra/infrastructure/-/issues/10258) is in progress to better inform necessity and timelines for scalability needs. A [short term estimation](https://gitlab.com/gitlab-com/gl-infra/infrastructure/-/issues/10340) is expected to yield first results, shortly.
3. Implement [data retention strategies to reduce the size and growth of the database](https://gitlab.com/groups/gitlab-com/-/epics/374)
4. Scale up seems possible still
   1. Read/write workload: We can still continue to scale vertically to improve read/write capacity on the primary if needed.
   2. Read workload: We continue to scale-out the read-workload across multiple replicas.

Aside from this, we continue to discuss sharding approaches. This is mostly a product question to start with, because it is rather unlikely this works out without needing product changes.

------

Author: [Andreas Brandl](https://gitlab.com/abrandl)
