---
title: "Snowflake warehouse optimization"
description: ""
---

## Prospectus

In our current dbt set-up, we are currently using a mix of `Large` and `X-Large` warehouses to run our production dbt jobs, based largely on the model tag.

There is room for improvement here because not every model that is tagged 'product' for example requires an XL warehouse.

dbt has since introduced functionality to specify size of warehouse by model level.

The goal of this exploration is to provide some guidelines on 'right-sizing' warehouses in the context of the data team's needs, so that we can take advantage of setting appropriate warehouse sizes for each dbt model.

Specifically, the following will be discussed:

- How warehouse sizing effects cost vs performance
- Theoretically what makes the most 'efficient' warehouse for our needs
    - hypothetical examples
- Guidelines for right-sizing
    - real world examples

## Warehouse sizing - cost vs performance

Each time you increase the size of the warehouse one level, you are doubling the CPU and RAM of your compute instance. Correspondingly, you are also doubling the price via the credits you are consuming.

While the *price is doubled*, in an ideal world on the proper workload/query, the *query time is reduced by half* due to the doubling of the compute instance's resources. Therefore, in this situation, you would pay the same price on either warehouse, but you would halve the runtime of the query using the bigger warehouse, making it the more efficient choice.

Eventually if you keep upsizing the warehouse, you'll reach a point of diminishing returns where the query runtime may be only reduced slightly, but the cost are much higher.
Here's a diagram illustrating this point [1]:
![image](/uploads/2a21346907a0edc543b106acf6320b16/image.png)

## Most 'Efficient' warehouse sizing

There are two dimensions to consider: cost and performance. We define warehouse sizing efficiency as the relationship between the % increase in cost and the % increase in performance (specifically in query runtime) when scaling up a warehouse.

When the % increase in cost exceeds the % increase in performance, then we rate the model as 'inefficient'.

<details><summary>Aside: calculating percentage improvements for runtimes</summary>

To get into a technicality here, percentage improvement in query runtime can be a bit confusing because performance improves when runtime *decreases* - it's an inverse relationship.

We will calculate percentage improvement in runtime using the traditional formula [2]:
```
(new - old)/old*100%
```

So if the old runtime was 10 seconds, and the new runtime is 5 seconds then:
```
(new - old)/old*100%
=(5-10)/10*100%
=-50%
```

That means the new value is 50% smaller (faster, since we're talking about response time) than the old value.

</details>

That might sound a bit vague, so here are some hypothetical examples:

### Hypothetical Examples

#### Example 1
Example 1, runtime is halved, costs stay the same. In this case its's a no-brainer to up the warehouse:

| warehouse_size | Credits/hr | runtime in hours | cost   |
|----------------|------------|------------------|--------|
| X-small        | 1          | 1                | $2     |
| Small          | 2          | 0.5              | $2.00  |
| % increase     |            | -50%              | 0%     |


#### Example 2
Example 2, runtime is 60% of the original runtime, or 36 minutes. The runtime has improved by 40%, i.e it takes 40% less time. Meanwhile, the cost has went up 20% from $2 to $2.40:

| warehouse_size | Credits/hr | runtime in hours | cost   |
|----------------|------------|------------------|--------|
| X-small        | 1          | 1                | $2.00  |
| Small          | 2          | 0.6              | $2.40  |
| % increase     |            | -40%              | 20%    |

In this case, it's no longer a no-brainer to upsize the warehouse. It now depends on how much you value cost vs query runtime.

If you only cared about cost, you would stick with the X-small, and if you only cared about speed, you would go with the Small.

In our case, we want to find a balance between both, so we use the previously established guideline:

> When the % increase in cost exceeds the % increase in performance, then we rate the model as 'inefficient'.

In this case, the % increase in performance is higher than the % increase in cost, so we elect to use the Small.

#### Example 3

Example 3, runtime is 80% of the original runtime, or 48 minutes. The runtime has improved by 20%, i.e it takes 20% less time. Meanwhile the cost has went from $2 to $3.20:

| warehouse_size | Credits/hr | runtime in hours | cost   |
|----------------|------------|------------------|--------|
| X-small        | 1          | 1                | $2.00  |
| Small          | 2          | 0.8              | $3.20  |
| % increase     |            | -20%              | 60%    |

In this case, unlike the previous example, the performance % increase of 20% is no longer worth it, as the cost increased by 60%.

## Steps to rightsizing warehouse

We have discussed the theory of what the 'optimal' warehouse is, how do we actually choose the correct warehouse for each model?

Here are the steps:

1. run an `explain` plan to figure out how many partitions the table has
2. Based on the number of partitions, use this diagram to **estimate** what warehouse to start with ![image](/uploads/cea900bdb74d74b4c34c4d670641e499/image.png)
3. Run the query with the first estimated warehouse
4. Using this Google Sheet #todo, record the `query time`
1. Upsizing warehouse(s)
    - Now, run the query again with the next highest warehouse
    - Record the results
    - Continue these steps until one of the following occurs:
        - you upsized to `XL` warehouse
        - the *cost* is increasing faster than the *performance*

Below, we'll look at 4 examples of rightsizing warehouses:
1. simple query: `gitlab_dotcom_deployment_todo_dedupe_source`
2. more complicated query with more partitions: `prep_ci_stage`


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

Next, we will try using `M` warehouse. First let's remove caching by running:
```sql
ALTER SESSION SET USE_CACHED_RESULT = FALSE;
```

With warehouse `M` query `01b5ffc3-080a-e214-0000-289d77d57b3e` took 1m45s, so we'll add those stats to the google sheets template:

| warehouse_size | Credits/hr | runtime minutes part | runtime seconds part | runtime in hours | cost   |
|----------------|------------|----------------------|----------------------|------------------|--------|
| X-small        | 1          | 7                    | 14                   | 0.12             | $0.24  |
| Medium         | 4          | 1                    | 45                   | 0.03             | $0.23  |
| % increase     |            |                      |                      | -76%             | -3%    |
The above shows that with the `M` warehouse, runtime has decreased by 73%, AND cost has also decreased by 3%, meaning that a 'M' warehouse is superior than the XS warehouse in this situation.

Since the performance has increased faster than the cost, we can upsize again to `L` warehouse to see if that continues to be the case.

Using the `L` warehouse, the query `01b5ffdc-080a-e214-0000-289d77d5c756` finished in 1m23s, pasting this into the spreadsheet:

| warehouse_size | Credits/hr | runtime minutes part | runtime seconds part | runtime in hours | cost   |
|----------------|------------|----------------------|----------------------|------------------|--------|
| X-small        | 1          | 7                    | 14                   | 0.12             | $0.24  |
| Medium         | 4          | 1                    | 45                   | 0.03             | $0.23  |
| Large          | 8          | 1                    | 23                   | 0.02             | $0.37  |
| % increase     |            |                      |                      | -21%             | 58%    |

This above spreadsheet shows that query runtime was reduced by 21% (good), but costs increased by 58% (bad). Therefore, the price is increasing much faster than the performance gains.

Conclusion: the `M` warehouse has the best runtime to cost ratio, and is the one that should be used for this model.

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

The explain plan shows the total there are `9211` partitions that will need to be scanned. The estimation warehouse diagram has guidelines for 8,000 and 16,000 multipartitions.

We'll start with the `L` warehouse.

Let's first run the below statement to prevent caching for benchmarking:
```sql
ALTER SESSION SET USE_CACHED_RESULT = FALSE;
```
Here were the query runtimes:

- 'L': 32m17s
- 'XL': 11m32s

Pasting the runtimes in our spreadsheet:

| warehouse_size | Credits/hr | runtime minutes part | runtime seconds part | runtime in hours | cost    |
|----------------|------------|----------------------|----------------------|------------------|---------|
| Large          | 8         | 32                   | 17                   | 0.54             | $17.22  |
| XL             | 16         | 11                   | 32                   | 0.19             | $12.30  |
| % increase     |            |                      |                      | -64%             | -29%    |

It's clear that the `XL` is more 'efficient' here because the runtime was reduced by 64%, and the cost was reduced by 29%.

## Additional considerations

- By following these guidelines to 'rightsize' warehouses for each individual model, we may end up saving on cost, but have decreased performance. If this becomes the case, we can consider **scaling-out**. This would allow us to speed up query processing for our thousands of models, while at the same time, maintaining optimal warehouse sizing.

## Future steps

1. Use/enforce these guidelines for new dbt models
2. Convert old dbt models
    1. Triage: Find queries with the least partition scanned using the biggest warehouses

## Sources

- [1] [select.dev: warehouse sizing](https://select.dev/posts/snowflake-warehouse-sizing)
- [2] calculating percentage improvements for runtimes, [StackOverflow](https://stackoverflow.com/a/28404036)
