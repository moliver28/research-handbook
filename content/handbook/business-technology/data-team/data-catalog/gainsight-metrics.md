---
layout: handbook-page-toc
title: "Data Guide for Adding Service Ping Metrics to Gainsight"
description: "Instructions for adding Service Ping metrics to Gainsight models"
---

---
# Process Overview
The Gainsight Data Pump delivers information on key customer usage metrics for Self-Managed, Dedicated, and GitLab.com customers, and is used by GitLab Customer Success Managers to maximize customer health and encourage product adoption. This document will explain each step required to properly add new metrics to the Gainsight Data Pump.

### Steps
- Step 1: Identify metrics to add to Gainsight
- Step 2a: Check that metrics are being sent for Self-Managed, Dedicated and GitLab.com customers
- Step 2b: If necessary, add metrics to SaaS Namespace Service Ping and backfill historical data
- Step 3: Add metrics to seed files, macros, and PREP layer
- Step 4: Cascade metrics through FCT, MART, and RPT layers to workspace models
- Step 5: Cascade metrics to production PUMP models
- Step 6: If necessary, add in Snowplow-based Redis counters to provide tracking for GitLab.com customers

# Identify metrics to add to Gainsight
This is done in conjunction with the Customer Sucess Operations team, which requests metrics based on the requirements of health-scoring and health-monitoring initiatives.
In general, metrics are not added to the dbt models individually; they are added as part of "waves", which are basically a tranche of metrics that all get added in one effort.
Typically, a Wave of metrics is a KR-level commitment that the Data Team would do once per quarter. [Here is an example](https://gitlab.com/groups/gitlab-data/-/epics/1027#wave-9-metrics) of a past Wave of metircs.

CS Ops starts the process of gathering metrics for a Wave months ahead of time by adding a new tab to the [Gainsight Wave Evaluation Google Sheet](https://docs.google.com/spreadsheets/d/1NDXv2DB5LTJuMquqBW6x_SQ77Fdh1KAAMX3LxAoyGtY/edit#gid=221677503). This is just a scratch sheet that is constantly changing, but it gives insight into the metrics that may be requested.

Once the Data Team is ready to begin a new Wave of metrics, we consult with the CS Ops team and the [Gainsight Wave Evaluation Google Sheet](https://docs.google.com/spreadsheets/d/1NDXv2DB5LTJuMquqBW6x_SQ77Fdh1KAAMX3LxAoyGtY/edit#gid=221677503) to create a list of metrics to be included in the Wave. Evaluate candidate metrics by using the [metrics dictionary](https://metrics.gitlab.com/). For each candidate metric, ensure that the `status` is `active` and `data_category` is `operational`. If `data_category` is not `operational`, update the yml file so that it is.

Finally, check the metric queries to ensure there are no obvious errors using [this snippet](https://gitlab.com/gitlab-data/analytics/-/snippets/2539821). Check for any erroneous filters
or incorrect tables. You can use the metric's yml `description` to get a sense for the intent of the metric.

# Check that metrics are being sent for Self-Managed, Dedicated and GitLab.com customers
Before we can add a Wave of metrics to Gainsight reporting, we need to validate that the metrics are being sent for both Self-Managed and GitLab.com customers.

### Self-Managed & Dedicated

Here is an example query that will show if a metric (in this case, [`counts_monthly.snippets`](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20210216180312_snippets.yml)) is being sent by Self-Managed & Dedicated installations:

```sql
WITH dim_ping_instance AS (

  SELECT
    *
  FROM prod.common.dim_ping_instance
),

parsed AS (

  SELECT
    raw_usage_data_payload['counts_monthly']['snippets'] AS m1
  FROM dim_ping_instance
  
)

SELECT 
  COUNT(IFF(m1 IS NOT NULL, TRUE, NULL)) AS m1_not_null
FROM parsed
```

### GitLab.com (non-Redis metrics)

Here is an example query that will show if a metric (in this case, [`counts_monthly.snippets`](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20210216180312_snippets.yml)) is being sent by GitLab.com namespaces:

```sql
SELECT
  COUNT(IFF(counter_value > 0, TRUE, NULL)) AS num_nonzero_values,
  ping_name
FROM PROD.COMMON_PREP.PREP_SAAS_USAGE_PING_NAMESPACE
WHERE ping_date >= dateadd('month', -1, GETDATE())
  AND ping_name IN (
    'counts_monthly.snippets'
  )
GROUP BY
  ping_name
```

### GitLab.com (Redis metrics)

It is a bit more complicated to discover if a Redis metric is available for GitLab.com namespaces. In these cases, we need to observe whether all Redis events associated with a metric
are coming through in Snowplow events. Here is an example query to see if the Redis event associated with [`counts.web_ide_commits`](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_all/20210216180242_web_ide_commits.yml) is coming through in Snowplow events:

```sql
SELECT
  COUNT(*),
  redis_event_name
FROM PROD.workspace_product.fct_behavior_structured_event_service_ping_context
WHERE behavior_at >= DATEADD(day, -7, GETDATE())
  AND redis_event_name IN (
    'web_ide_commit_created'
  )
GROUP BY
  redis_event_name;
```

## If necessary, add metrics to SaaS Namespace Service Ping and backfill historical data

If you find that a non-Redis metric is not available for GitLab.com namespaces, it can be added by creating a new entry in [usage_ping_namespace_queries.json](https://gitlab.com/gitlab-data/analytics/-/blob/master/extract/saas_usage_ping/usage_ping_namespace_queries.json). 
Here is an [example MR](https://gitlab.com/gitlab-data/analytics/-/merge_requests/7878) where we add four metrics to SaaS Namespace Service Ping. In order to discover the "correct"
query to use for each metric, please reference the [Self-Managed Service Ping queries](https://gitlab.com/gitlab-data/analytics/-/snippets/2539821) and translate the query logic to reference GitLab.com tables. Occasionally, you may find that a metric has been instumented incorrectly. Perhaps it does not have a date filter applied correctly, or an erroneous string filter is applied. In this case, the metric needs to be removed from Service Ping and a new, corrected metric should be implemented.

Once a metric has been added to SaaS Namespace Service Ping, it can optionally be "backfilled" to retroactively populate historical data. Importantly, this process is only enabled for 28d and 7d metrics; it does not work for all-time metrics. Backfill a metric by following the [backfill instructions here](https://about.gitlab.com/handbook/business-technology/data-team/data-catalog/saas-service-ping-automation/#instance-namespace-metrics-based-data-flow). Here is an [example backfill](https://gitlab.com/gitlab-data/analytics/-/merge_requests/7878#note_1290728389). 

# Add metrics to seed files, macros, and PREP layer
`COMING SOON`

# Cascade metrics through FCT, MART, and RPT layers to workspace models
`COMING SOON`

# Cascade metrics to production PUMP models
`COMING SOON`

# If necessary, add in Snowplow-based Redis counters to provide tracking for SaaS customers
`COMING SOON`
