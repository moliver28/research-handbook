---
title: "Snowflake warehouse optimization"
description: ""
---

## Quick Summary

In order to 'right-size' a warehouse, the following steps are suggested:

- The user should base the initial *estimated* warehouse size on the number of partitions scanned within the query
- Benchmark by increasing the warehouse size and comparing the 'cost' vs 'reduction in query time'

## Prospectus

In our current dbt set-up, we are currently using a mix of `Large` and `X-Large` warehouses to run our production dbt jobs, based on the model tag.

There is room for improvement here because not every model that is tagged 'product' for example requires an XL warehouse.

dbt has since introduced functionality to specify the size of the warehouse on the *model* level.

The goal of this exploration is to provide some guidelines on 'right-sizing' warehouses in the context of the data team's needs so that we can take advantage of setting appropriate warehouse sizes for each dbt model.

Specifically, the following will be discussed:

- How warehouse sizing affects cost vs performance
- Theoretically, what makes the most 'efficient' warehouse for our needs
  - hypothetical examples
- Guidelines for right-sizing
  - Real world examples

## Warehouse sizing - concepts

### Concept 1: Cost vs Performance

Each time you increase the size of the warehouse by one level, you are doubling the CPU and RAM of your compute instance. Correspondingly, you are also doubling the price via the credits you are consuming.

While the *price is doubled*, in an ideal world on the proper workload/query, the *query time is reduced by half* due to the doubling of the compute instance's resources. Therefore, in this situation, you would pay the same price on either warehouse, but the bigger warehouse would halve the run-time of the query, making it the more efficient choice.

Eventually, if you keep upsizing the warehouse, you'll reach a point of diminishing returns where the query run-time may be only reduced slightly, while the costs increase disproportionately faster.
Here's a select.dev [cost vs performance diagram](https://images.app.goo.gl/K3asyxSqhJqP2hM76) illustrating this point [1].

### Concept 2: defining 'efficiency'

When thinking about efficiency, there are two dimensions to consider: cost and performance.

Because there are 2 dimensions, 'efficiency' doesn't have a clear definition, it needs to be decided based on how much you value 'cost' versus 'performance'.

In our case, we will say here that we value 'cost' more than 'performance'. This is because for many of our models, we don't have a strict SLA.

However, that is not to say we are willing to sacrifice all performance. In an ideal world, we stay pretty close to our existing dbt run-times. However, when possible, we would rather 'horizontally scale' rather than 'vertically scale'. That is, we would rather run more models concurrently on a cheaper warehouse, than run fewer models concurrently on a more expensive warehouse.

Based on the requirements above, we will define efficiency clearly as follows:

> **A warehouse is efficient when compared to the next-size smaller warehouse, the query run-time is reduced by 40% or more.**

Explanation: As discussed in the previous section, for the next-size bigger warehouse, in order for it to break-even, it needs to run 2x as fast (query run-time is reduced by **50%**) to compensate for its 2x price increase.

In our definition, we require run-time to be reduced by at least 40%, which translates to a maximum increase in cost of 20%. The reason why we don't require 50% reduction in run-time (and break-even in costs) is the following:

- we need our performance to stay close to existing dbt run-times
- we want to work iteratively, which means setting a more realistic goal that allows some wiggle room, and then adjusting the goalpost once we learn more.

<details><summary>Aside: calculating percentage improvements for run-times</summary>

To get into a technicality here, percentage improvement in query run-time can be a bit confusing because performance improves when run-time *decreases* - it's an inverse relationship.

We will calculate the percentage improvement in run-time using the traditional formula [2]:

```py
(new - old)/old*100%
```

So if the old run-time was 10 seconds, and the new run-time is 5 seconds then:

```py
(new - old)/old*100%
=(5-10)/10*100%
=-50%
```

That means the new value is 50% smaller (faster, since we're talking about response time) than the old value.

</details>

That might sound a bit vague, so here are some hypothetical examples:

#### Hypothetical Examples

##### Example 1

The run-time has decreased by 50%, from 1 hour -> 30 minutes. In this case, it's a no-brainer to increase the warehouse size:

| warehouse_size | Credits/hr | run-time in hours | cost   |
|----------------|------------|------------------|--------|
| X-small        | 1          | 1                | $2     |
| Small          | 2          | 0.5              | $2.00  |
| % increase     |            | -50%              | 0%     |

##### Example 2

The run-time has decreased by 40% from 1 hour -> 36 minutes. Meanwhile, the cost has increased by 20% from $2 to $2.40:

| warehouse_size | Credits/hr | run-time in hours | cost   |
|----------------|------------|------------------|--------|
| X-small        | 1          | 1                | $2.00  |
| Small          | 2          | 0.6              | $2.40  |
| % increase     |            | -40%              | 20%    |

In this case, it's no longer a no-brainer to upsize the warehouse. It now depends on how much you value cost vs query run-time.

If you only cared about cost, you would stick with the X-small, and if you only cared about speed, you would go with the Small.

In our case, we want to find a balance between both, so we use the previously established guideline:

> **A warehouse is efficient when compared to the next-size smaller warehouse, the query run-time is 40% less.**

In this case, since the query run-time has been reduced by 40% it's exactly on the threshold of being considered 'efficient' and we should choose the 'S' warehouse.

##### Example 3

Example 3, run-time has decreased by 20% from 1 hour -> 48 minutes. Meanwhile, the cost has increased by 60%, from $2 to $3.20:

| warehouse_size | Credits/hr | run-time in hours | cost   |
|----------------|------------|------------------|--------|
| X-small        | 1          | 1                | $2.00  |
| Small          | 2          | 0.8              | $3.20  |
| % increase     |            | -20%              | 60%    |

In this case, the query would be considered 'inefficient', because the run-time has only been reduced by 20%, and for it to be considered 'efficient', the run-time needs to be reduced by 40% or more. Therefore, the 'XS' warehouse should be chosen.

## Steps to rightsizing warehouse

We have discussed the theory of what the 'optimal' warehouse is, how do we actually choose the correct warehouse for each model?

Here are the steps:

1. run an `explain` plan to figure out how many partitions the table has
1. Based on the number of partitions, use select.dev [# of partitions diagram](https://images.app.goo.gl/KtS6aXsKhRzN7e3f6) to **estimate** what warehouse to start with
1. Run the query in `dbt` with the first estimated warehouse
1. Check the below 'Benchmarking heuristics' section to see if you can immediately assign a warehouse, if not, continue
1. Using this [Google Sheet](https://docs.google.com/spreadsheets/d/1dh7cKTxeV3rUQ2J_k4nxPGbMe7IQFc-D1Rbahjsk5zc/edit?gid=1778011584#gid=1778011584) record the `query time`
1. Upsizing warehouse(s)
    - Now, run the query again with the next highest warehouse
    - Record the results
    - Continue these steps until one of the following occurs:
        - you upsized to `XL` warehouse
        - the *cost* is increasing faster than the *performance*

In the next sections, we'll look at the following:

- Why the benchmarking needs to happen in dbt
- We'll look at 2 examples of rightsizing warehouses by following these steps:
  1. simple query: `gitlab_dotcom_deployment_todo_dedupe_source`
  1. more complicated query with more partitions: `prep_ci_stage`

### Benchmarking Heuristics

A heuristic is a mental shortcut. In extreme cases, benchmarking is not needed:

- if the model runs slower than 3 minutes on a 'XS'
- if the model runs longer than 10 minutes on a 'XL'

### Benchmarking needs to be done in dbt

In the above list of steps, it states that the queries need to be run in dbt. This is because for almost all models, at least two SQL statements are being run. Firstly, a `SELECT` statement is being run, but additionally, one of these two statements is also being run under the hood:

- For incremental models, a [`MERGE`](https://docs.snowflake.com/en/sql-reference/sql/merge) statement is being run
- For new and full_refresh models, a `CREATE TABLE` statement is being run

Both of these additional SQL statements can be expensive computationally and need to be part of the benchmark.

When using `dbt run`, these statements are automatically run for you. Therefore, it's best to run all warehouse benchmarking queries via dbt, either locally or via CI job.

#### Benchmarking incremental runs

When benchmarking `incremental` models specifically, the 'most efficient' warehouse will be very different based on whether it's an incremental or full_refresh run.

At the very least, the incremental runs should be benchmarked like so:

1. The corresponding table should be fully loaded
1. Delete the previous day of data, and run *incrementally* using the estimated warehouse based on the size of the partition.

Optional: The model could also be benchmarked for running `full_refresh`. That way the model can be configured on a different warehouse based on whether it is an `incremental` or `full_refresh` run:

```sql
{% if is_incremental() %}
  {{ config(
      warehouse='smaller_warehouse'  # Use this warehouse for incremental runs
  ) }}
{% else %}
  {{ config(
      warehouse='larger_warehouse'  # Use this warehouse for full refresh runs
  ) }}
{% endif %}

SELECT *
FROM my_table
```

The below sections will look at 2 examples of how to follow the benchmarking steps.

### example 1: gitlab_dotcom_deployment_todo_dedupe_source

The first step is to run an explain plan, which shows the query has 630 partitons:

```sql
EXPLAIN
SELECT
  *
FROM
  "RAW".tap_postgres.GITLAB_DB_TODOS
QUALIFY ROW_NUMBER() OVER ( PARTITION BY id ORDER BY _uploaded_at DESC) = 1;
```

The 2nd step is to choose a warehouse based on the number of partitions, per the above diagram. In this case, with 630 partitions, we can start with a size `XS` warehouse.

With warehouse `XS` the query `01b5ff9d-080a-e214-0000-289d77d4f1e2` took 7m14s, so we'll add those stats to the google sheets template

Next, we will try using `M` warehouse. First, let's remove caching by running:

```sql
ALTER SESSION SET USE_CACHED_RESULT = FALSE;
```

With warehouse `M` query `01b5ffc3-080a-e214-0000-289d77d57b3e` took 1m45s, so we'll add those stats to the google sheets template:

| warehouse_size | Credits/hr | run-time minutes part | run-time seconds part | run-time in hours | cost   |
|----------------|------------|----------------------|----------------------|------------------|--------|
| X-small        | 1          | 7                    | 14                   | 0.12             | $0.24  |
| Medium         | 4          | 1                    | 45                   | 0.03             | $0.23  |
| % increase     |            |                      |                      | -76%             | -3%    |

The above shows that with the `M` warehouse, run-time has decreased by 73%, AND cost has also decreased by 3%, meaning that a 'M' warehouse is superior than the XS warehouse in this situation.

Since the performance has increased faster than the cost, we can upsize again to `L` warehouse to see if that continues to be the case.

Using the `L` warehouse, the query `01b5ffdc-080a-e214-0000-289d77d5c756` finished in 1m23s, pasting this into the spreadsheet:

| warehouse_size | Credits/hr | run-time minutes part | run-time seconds part | run-time in hours | cost   |
|----------------|------------|----------------------|----------------------|------------------|--------|
| X-small        | 1          | 7                    | 14                   | 0.12             | $0.24  |
| Medium         | 4          | 1                    | 45                   | 0.03             | $0.23  |
| Large          | 8          | 1                    | 23                   | 0.02             | $0.37  |
| % increase     |            |                      |                      | -21%             | 58%    |

The above spreadsheet shows that query run-time was reduced by 21% (good), but costs increased by 58% (bad). Therefore, the price is increasing much faster than the performance gains.

Conclusion: the `M` warehouse has the best run-time-to-cost ratio, and is the one that should be used for this model.

### example 2: prep_ci_stage

<details><summary>explain plan</summary>

```sql
EXPLAIN
WITH
  dim_project AS (
    SELECT
      *
    FROM
      "PROD".common.dim_project
  ),
  dim_ci_pipeline AS (
    SELECT
      *
    FROM
      "PROD".common.dim_ci_pipeline
  ),
  dim_namespace_plan_hist AS (
    SELECT
      *
    FROM
      "PROD".common.dim_namespace_plan_hist
  ),
  dim_date AS (
    SELECT
      *
    FROM
      "PROD".common.dim_date
  ),
  ci_stages AS (
    SELECT
      *
    FROM
      "PREP".gitlab_dotcom.gitlab_dotcom_ci_stages_dedupe_source
    WHERE
      created_at IS NOT NULL
  ),
  joined AS (
    SELECT
      ci_stages.id AS dim_ci_stage_id,
      IFNULL(dim_project.dim_project_id, -1) AS dim_project_id,
      IFNULL(dim_ci_pipeline.dim_ci_pipeline_id, -1) AS dim_ci_pipeline_id,
      IFNULL(dim_namespace_plan_hist.dim_plan_id, 34) AS dim_plan_id,
      IFNULL(dim_namespace_plan_hist.dim_namespace_id, -1) AS ultimate_parent_namespace_id,
      dim_date.date_id AS created_date_id,
      ci_stages.created_at::TIMESTAMP AS created_at,
      ci_stages.updated_at::TIMESTAMP AS updated_at,
      ci_stages.name AS ci_stage_name,
      ci_stages.status AS ci_stage_status,
      ci_stages.lock_version AS lock_version,
      ci_stages.position AS POSITION
    FROM
      ci_stages
      LEFT JOIN dim_project ON ci_stages.project_id = dim_project.dim_project_id
      LEFT JOIN dim_namespace_plan_hist ON dim_project.ultimate_parent_namespace_id = dim_namespace_plan_hist.dim_namespace_id
      AND ci_stages.created_at >= dim_namespace_plan_hist.valid_from
      AND ci_stages.created_at < COALESCE(dim_namespace_plan_hist.valid_to, '2099-01-01')
      LEFT JOIN dim_ci_pipeline ON ci_stages.pipeline_id = dim_ci_pipeline.dim_ci_pipeline_id
      INNER JOIN dim_date ON TO_DATE(ci_stages.created_at) = dim_date.date_day
  )
SELECT
  *,
  '@mpeychet_'::VARCHAR AS created_by,
  '@chrissharp'::VARCHAR AS updated_by,
  '2021-06-29'::DATE AS model_created_date,
  '2022-06-01'::DATE AS model_updated_date,
  CURRENT_TIMESTAMP() AS dbt_updated_at,
  CURRENT_TIMESTAMP() AS dbt_created_at
FROM
  joined;
```

</details>

The EXPLAIN plan shows the total there are `9211` partitions that will need to be scanned. The estimation warehouse diagram has guidelines for 8,000 and 16,000 multi-partitions.

We'll start with the `L` warehouse.

Let's first run the below statement to prevent caching for benchmarking:

```sql
ALTER SESSION SET USE_CACHED_RESULT = FALSE;
```

These were the query run-times:

- `L`: 32m17s
- `XL`: 11m32s

Pasting the run-times in our spreadsheet:

| warehouse_size | Credits/hr | run-time minutes part | run-time seconds part | run-time in hours | cost    |
|----------------|------------|----------------------|----------------------|------------------|---------|
| Large          | 8         | 32                   | 17                   | 0.54             | $17.22  |
| XL             | 16         | 11                   | 32                   | 0.19             | $12.30  |
| % increase     |            |                      |                      | -64%             | -29%    |

It's clear that the `XL` is more 'efficient' here because the run-time was reduced by 64%, and the cost was reduced by 29%.

## Additional considerations

- By following these guidelines to 'rightsize' warehouses for each individual model, we may end up saving on costs, but have decreased performance. If this becomes the case, we can consider **scaling-out**. This would allow us to speed up query processing for our thousands of models, while at the same time, maintaining optimal warehouse sizing.
- In order to find the most 'efficient' warehouse, it will necessitate having at least one size of each warehouse accessible to be run by any user. Currently, we're missing 'S', '2XL', '3XL'
- Until the totality of models is run using a 'right-sized' warehouse, it will be hard to predict the effect on cost.

## Future steps

1. Use/enforce these guidelines for new dbt models
1. All these benchmarking steps can and should be implemented programmatically. Furthermore, a CI job could be one end product of this that tells the user what size warehouse they *should* be using
1. Convert old dbt models, ideally in some rule-based or programmatic way
  1. Triage: Find queries with the least partition scanned using the biggest warehouses

## Sources

- [1] [select.dev: warehouse sizing](https://select.dev/posts/snowflake-warehouse-sizing)
- [2] calculating percentage improvements for run-times, [StackOverflow](https://stackoverflow.com/a/28404036)
