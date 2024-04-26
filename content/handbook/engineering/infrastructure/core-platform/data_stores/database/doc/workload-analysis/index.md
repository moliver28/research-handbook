---
aliases: /handbook/engineering/infrastructure/core-platform/data_stores/database/doc/workload-analysis.html
title: Workload analysis for GitLab.com
---






## Workload Analysis for GitLab.com

This document discusses several approaches to understand the database workload for GitLab.com better. It aims to provide a few more perspectives on database workload, in addition to already existing monitoring solutions.

### Index bloat

In [previous studies](https://gitlab.com/gitlab-com/gl-infra/readiness/-/tree/master/library/database/postgres/bloat/#index-analysis), we've established that GitLab.com suffers a lot from bloat in btree indexes. That is, over time, some indexes tend to grow a lot beyond their ideal size - they take up more space than needed and become less efficient over time. The ideal size for an index is its most compact representation. This is the case when the index is built freshly, but regular updates to the index cannot maintain this compact representation over time in many cases.

For GitLab.com, we've previously introduced monitoring database bloat in good detail. This is based on a bloat heuristic for individual tables and indexes. Note this is an estimation only and the error is unbound - but it typically provides good insight into database bloat and is much cheaper than rebuilding indexes and tables fully (e.g. using `VACUUM FULL`) to determine their individual level of bloat. Thanks to this estimation, we've exposed metrics available through Prometheus and best seen in this [Grafana dashboard](https://dashboards.gitlab.net/d/000000224/postgresql-bloat?orgId=1&refresh=5m).

Aggregating those statistics, we can see that index bloat (yellow line) steadily grows over time while table bloat (green line) stays rather constant. The graph below shows about 3 months (early 2020) and an increase in index bloat from 240 GB to more than 600 GB.

![index-bloat-1](workload-analysis/index-bloat-1.png)

A few months later, in summer 2020, overall index bloat has accumulated to more than 1.3 TB (see below). Notice that table bloat increase significantly, too - however that was due to a single table which a data migration dealt with during that time (so that was expected). Compared to the overall database size at that time of 8.5 TB, index bloat made up about 15% of the total size. This space is mostly wasted and it occupies memory.

![index-bloat-3](workload-analysis/index-bloat-3.png)

We've started to address this through manual invocations of [pg_repack](https://gitlab.com/gitlab-com/gl-infra/readiness/-/tree/master/library/database/postgres/bloat/#design-1) in early September (the dip in index bloat and the vertical green lines indicate that). The overall impact of the autumn repacking efforts can be seen below. In multiple steps, we've successfully lowered index bloat to more acceptable levels - freeing up over 1 TB of space. After the data migration had finished, we also removed table bloat - again freeing up over 1 TB of additional space (the green line).

![index-bloat-2](workload-analysis/index-bloat-2.png)

##### Addressing index bloat long term

We came to realize that addressing index bloat is something we need to automate. This allows us to address this problem in a higher frequency, with no manual efforts and ultimately we maintain a healthy state of index bloat over time.

We also expect larger self-managed installations of GitLab to suffer from this problem. Therefore, we developed a reindexing feature that ships with GitLab. Currently, this is being rolled out to GitLab.com and once proven successful, the feature will be available and enabled in GitLab by default.

The reindexing implementation is based on the fact that a [majority of index bloat stems from regular (non unique) btree indexes](https://gitlab.com/gitlab-com/gl-infra/readiness/-/tree/master/library/database/postgres/bloat/#index-analysis). Those can be recreated relatively easily, without risk of prolonged locking situations:

1. Create a new index with the same definition using a temporary name (index creation using `CONCURRENTLY` option)
2. Swap original index with newly created one
3. Drop the original index

Now this approach is not possible for indexes supporting primary keys. Fortunately, this is not where we need to deal with a lot of index bloat in any case - so we don't need to solve this problem right now.

Note that once GitLab requires PostgreSQL 12, we'll be able to leverage the [concurrent reindexing feature](https://paquier.xyz/postgresql-2/postgres-12-reindex-concurrently/) introduced there. Furthermore, PostgreSQL 12 has seen [significant improvements in terms of btree storage savings](https://www.cybertec-postgresql.com/en/b-tree-index-improvements-in-postgresql-v12/), which we expect to benefit from eventually, too.

In this cycle, we've enabled the feature on GitLab.com briefly. We've discovered an issue with functional indexes that led to an [incident](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/2885). The underlying problem is that a subset of functional indexes needs additional statistics. Those statistics get dropped with dropping the original index. Hence, we explicitly need to rebuild indexes before dropping the original index. This has led to an interesting [conversation](https://www.postgresql.org/message-id/flat/CAFcNs%2BqpFPmiHd1oTXvcPdvAHicJDA9qBUSujgAhUMJyUMb%2BSA%40mail.gmail.com) about the PostgreSQL 12 feature `REINDEX CONCURRENTLY`, which suffers from the same problem. A fix for the reindexing approach is being tracked in this [issue](https://gitlab.com/gitlab-org/gitlab/-/issues/272997).

The reindexing lives inside a Rake task that gets triggered through a cronjob. For GitLab.com, we expect to be able to maintain healthy levels of index bloat by running this task on weekends only, but ultimately we'd like to be able to run this job as a low-priority background task in a more frequent fashion.

Going forward and with %13.6, we are going to improve this feature by adding a [good index selection strategy](https://gitlab.com/gitlab-org/gitlab/-/issues/258576) and [observability](https://gitlab.com/gitlab-org/gitlab/-/issues/273198) [features](https://gitlab.com/gitlab-org/gitlab/-/issues/263463) to it.

###### Relevant links

1. [Automatic reindexing epic](https://gitlab.com/groups/gitlab-org/-/epics/3989)
2. [Database bloat dashboard](https://dashboards.gitlab.net/d/000000224/postgresql-bloat?orgId=1&refresh=5m)
3. [Index bloat study (2019)](https://gitlab.com/gitlab-com/gl-infra/readiness/-/tree/master/library/database/postgres/bloat/#index-analysis)

### High resolution top-k query analysis based on pg_stat_statements

In order to understand database workload in a good amount of detail, one can use tools like pgBadger to produce insightful reports. This analysis is based on the postgres log output and typically has two limitations:

1. Only covers a part of the workload: Postgres is configured to only log slow queries (`log_min_duration_statement = 1s` on GitLab.com, so only >=1s runtime gets logged), faster queries are not part of the analysis but may contribute significantly to overall workload
2. Aggregates across the full time span: Timings and other metrics are typically measured and aggregated across the full timespan of the given log. This allows to understand the average workload: For example, we know what the most time consuming query was across the observation time (potentially days). This works well for rather homogeneous workloads, but falls short with rather spiky workloads - effectively hiding less frequent, but impactful queries.

As an example, let's consider an hourly cronjob that performs very expensive queries for a few minutes. It reads a lot of data from disk, invalidates most caches and causes high CPU. However, seeing those statistics aggregated across the whole day effectively hides this - not unlikely, other, more frequent queries dominate the statistics. What makes things worse here, those higher frequency queries are often less easily optimized.

How do we look at database workload? Let's say, we are concerned with the primary database instance and its workload. We may want to understand in more detail which queries retrieves most records and which ones read the most data from disk (as an example).

With `pg_stat_statements`, this information is readily available on a per-query basis for most queries ever executed on the database (there is a configurable threshold, currently we track `pg_stat_statements.max = 5,000` queries at most). This means the approach has much more detailed insight into the actual workload than a log-based approach, effectively addressing concern (1) from above.

##### High resolution top-k approach

This approach deals with concern (2): It provides a way to keep track of any queries that were considered "offending", even if only for a very short period of time (think 30 seconds).

Let's introduce a couple things first and then outline how the analysis works.

*Snapshot and snapshot frequency*: The approach is based on taking snapshots of `pg_stat_statements` at high frequency, e.g. at a snapshot interval of 30 seconds.

*Time frame and differential*: The time between two consecutive snapshots provides opportunity to calculate the differential between those snapshots regarding available metrics. For example, we understand the number of rows a certain query returned overall during this time.

*Offending query by a metric `x`*: A query is considered offending a particular metric `x` in a particular time frame, if it is among the top-k queries by `x`. As an example, we might look at the TOP10 queries by total duration during a certain time frame - those are considered offending.

*Offending strike count for a query*: We keep track of the overall number of times a query shows up as offending and call this the *strike count*.

###### Methodology

The analysis performs a few steps:

1. Gather snapshots of `pg_stat_statements` from a particular database host across an extended period of time with the desired frequency.
2. For each time frame, calculate offending queries for each relevant metric and keep track of those offenses.
3. For each relevant metric, provide a list of all queries that we offending (`strike count > 0`) during the total time.

In this approach, we still see queries in the result even if they were only being considered offending during one time frame (e.g. 30 seconds).

###### Exemplary implementation and results

An proof of concept implementation is available in [gitlab-org/database-team/highres-stat-statements](https://gitlab.com/gitlab-org/database-team/highres-stat-statements).

An example report can be found in this [sheet](https://docs.google.com/spreadsheets/d/15C8chcgqTGDsKxg22M06WQUwSH4herugRlSQ7Jj8LQU/edit#gid=1953020943) (GitLab internal link). This is based on snapshots taken off the GitLab.com primary during 32 minutes at a 30 seconds interval.

###### pg_stat_statements and Marginalia

Marginalia is a Ruby gem that annotates database queries with their origin. For example, for sidekiq jobs and web requests, we would see similar SQL comments alongside each query:

1. Sidekiq: `/*application:sidekiq,...,jid:...,job_class:AuthorizedProjectUpdate::UserRefreshWithLowUrgencyWorker*/`
2. Web: ` /*application:web,controller:issues,action:related_branches,correlation_id:...*/`

This information is retained in `pg_stat_statements`. We can use it to aggregate across sidekiq jobs, controllers or controller actions.

Following the same methodology as above but aggregating based on the "endpoint" (a sidekiq job class or controller action), we can find offending endpoints in a similar fashion.

This has also been implemented in gitlab-org/database-team/highres-stat-statements. An example report based on the same data as above can be found in this [sheet](https://docs.google.com/spreadsheets/d/1-NyzDUCXcUqL_LhFCpOgJkrmVbvlp9DlfUrPSLzUThU/edit?usp=sharing) (internal link).

Worth to note that it looks like not all queries are being annotated by Marginalia sufficiently for this. There are some queries that only have `application:web`, but no further information. If we wanted to use this approach, we may want to make sure a good portion of queries has the right annotations.

### Using pgBadger

PgBadger can be used to generate aggregate reports based on log data. For GitLab.com, we can follow the [runbook](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/patroni/pgbadger_report.md) explaining more details.

As outlined above, this is based on log analysis and as such suffers from lack of detail (only slow queries are being logged). It is still useful to have this in the toolbelt and provides a good way to reason about slow queries.

Example reports for the GitLab.com primary can be found [here](https://gitlab.com/gitlab-org/database-team/team-tasks/-/issues/92#note_436770927) (internal link).
