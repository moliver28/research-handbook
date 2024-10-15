---
title: "Snowflake Guide"
description: "Snowflake Data Warehouse Guide"
---

---

## What and why

[Snowflake](https://www.snowflake.com/) is our Enterprise Data Warehouse (EDW) and is the core technology in our [Enterprise Data Platform](/handbook/enterprise-data/platform/#our-data-stack).

## What does Snowflake Contain?

Snowflake contains all of our analytical data and [Data Sources](/handbook/enterprise-data/platform/#data-sources) defines the set of original/raw data available.

## Related Content

- [Access](/handbook/enterprise-data/platform/#warehouse-access)
- [Support Portal Access](/handbook/enterprise-data/platform/#data-warehouse)
- [Compute Resources](/handbook/enterprise-data/platform/#compute-resources)
- [Data Masking](/handbook/enterprise-data/platform/#data-masking)
- [Backups](/handbook/enterprise-data/platform/#backups)

## Logging In

Login to Snowflake from Okta.

## Navigating the UI

The [Snowflake Quick Tour of the Web Interface](https://docs.snowflake.com/en/user-guide/snowflake-manager.html) provides comprehensive documentation for the UI.

## Snowflake account configuration

### ABORT_DETACHED_QUERY

[ABORT_DETACHED_QUERY](https://docs.snowflake.com/en/sql-reference/parameters#abort-detached-query) parameter is set on account level to `True`.

We often have cases where the connectivity was lost and the query keeps trying to run and still does not complete. It is meaningless for the query to keep running in these cases and adds no value. There is a grace period of 5 mins. If the connectivity isn't fixed in 5 mins now, it stops the execution after the 5 mins so the warehouses won't be running unnecessarily.

## Data Freshness

We leverage automatic monitors in `MonteCarlo` for monitoring the freshness of the data.
