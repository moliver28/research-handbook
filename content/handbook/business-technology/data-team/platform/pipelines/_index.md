---

title: "Data pipelines"
description: "This page describes the different data sources and the way we extract this data via data pipelines."
---









## Background

The data warehouse contains source data from different source systems, via different extraction methodologies (i.e. Fivetran, Stich and Postgres pipeline). This page describes the different data sources and the way we extract this data via data pipelines.

## Pseudonymistaion hashed user IDs with Snowflake Database

### Connecting Snowplow hashed user IDs with Snowflake Database

The pseudonymization project was undertaken with the primary goal of **allowing our internal teams to string together comprehensive user journeys in a privacy-minded manner**. We intend to not reveal a user's identity, but we do intend to know what a single non-identifiable user has done.
And this view is needed before they purchase with us (docs, pricing, marketing pages, etc), through trial, through purchase, and then through their journey using the product. Our pseudonymization MVC is limited to Snowplow events on `SaaS`.

As such, we are not considering the pseudonymization of backend events, and we do not have a way to connect the product journey in a holistic manner. Many examples of the type of analysis we'd like to perform at the user level requiring this connection have been mentioned in [this comment](https://gitlab.com/gitlab-org/gitlab/-/issues/339891#note_671241239).

Enable analysis of a user's entire `GitLab` experience, from visiting a page and clicking a `CTA` to creating an issue to starting a trial to deploying code.

### Requirements

1. The end user is able to join snowplow event data that contains hashed `user_id` with the production `gitlab.com` database
1. Access to the hash secret is restricted to a minimal amount of team members
1. No `PII` data should be visible when connected

### Motivation

Why do the `Product Management` and `Product Analysis` team wants to have this? There are a few reasons:

1. Promised to the wider community
1. In case of any leakage, will be much safer to have anonymized data
1. Product Management relies on the community and their data and obligation is crucial
1. Data will be used internally, but without the possibility to identify customers

### Proposed solutions evaluation

After listing down 6 potential technical approaches, the following has been listed for future evaluation.

| Category             | Property                                                                                          | `3.` ↩️ `DBT` + incremental models (`1.0` bad, `5.0` the best) | `4.2` ❄️ + ↩️ `Dynamic data masking` using `DBT` (`1.0` bad, `5.0` the best) |
| -------------------- | ------------------------------------------------------------------------------------------------- | -------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| 🔧 Requirements      | Create a mechanism to anonymize `USER_ID` *(and similar)* column                                  | `Yes` ✅                                                       | `Yes` ✅                                                                     |
| 🔧 Requirements      | No `PII` data should be visible when connected                                                    | `Yes` ✅                                                       | `Yes` ✅                                                                     |
| 🔧 Requirements      | Proposed solution must be resilient to indirect `USER_ID` *(and similar column)* disclosure       | `Yes` ✅                                                       | `No` ❌                                                                      |
| 🔧 Requirements      | Prevent disclosing user identity by providing a direct mapping between pseudonymized and raw data | `Yes` ✅                                                       | `Yes` ✅                                                                     |
| 🔧 Requirements      | Prevent disclosing user identity via discrimination attacks                                       | `Yes` ✅                                                       | `Yes` ✅                                                                     |
| 🔧 Requirements      | Access to the hash secret is restricted to the minimal amount of team members                     | `Yes` ✅                                                       | `Yes` ✅                                                                     |
| 🔧 Requirements      | Ability to connect with `Snowplow` data                                                           | `5.0` ⭐⭐⭐⭐⭐                                               | `5.0` ⭐⭐⭐⭐⭐                                                             |
| 🔧 Requirements      | Compute costs efficiency                                                                          | `3.0` ⭐⭐⭐☆☆                                                 | `3.0` ⭐⭐⭐☆☆                                                               |
| 🔧 Requirements      | Storage costs efficiency                                                                          | `1.0` ⭐☆☆☆☆                                                   | `5.0` ⭐⭐⭐⭐⭐                                                             |
| 🚀 Solution          | Easiness of implementation *(anti-complexity)*                                                    | `5.0` ⭐⭐⭐⭐⭐                                               | `4.0` ⭐⭐⭐⭐☆                                                              |
| 🚀 Solution          | Horizontal scalability                                                                            | `3.0` ⭐⭐⭐☆☆                                                 | `3.0` ⭐⭐⭐☆☆                                                               |
| 🚀 Solution          | Vertical scalability                                                                              | `2.0` ⭐⭐☆☆☆                                                  | `2.0` ⭐⭐☆☆☆                                                                |
| 🚀 Solution          | Ability for the implementation                                                                    | `3.0` ⭐⭐⭐☆☆                                                 | `5.0` ⭐⭐⭐⭐⭐                                                             |
| 🚀 Solution          | Ability for the maintenance                                                                       | `2.0` ⭐⭐☆☆☆                                                  | `5.0` ⭐⭐⭐⭐⭐                                                             |
| 🧱 Data manipulation | Data Extraction efficiency                                                                        | `2.0` ⭐⭐☆☆☆                                                  | `5.0` ⭐⭐⭐⭐⭐                                                             |
| 🧱 Data manipulation | Data Querying efficiency                                                                          | `5.0` ⭐⭐⭐⭐⭐                                               | `3.0` ⭐⭐⭐☆☆                                                               |
| 🧱 Data manipulation | Data Filtering efficiency                                                                         | `5.0` ⭐⭐⭐⭐⭐                                               | `1.0` ⭐☆☆☆☆                                                                 |
| 🧱 Data manipulation | Data Join efficiency                                                                              | `5.0` ⭐⭐⭐⭐⭐                                               | `1.0` ⭐☆☆☆☆                                                                 |
| 📦 **Summary**       | **Summary**                                                                                       | **Initial effort is higher, later is lower**                   | **Initial effort lower, joins are difficult**                                |

The comprehensive guildeline should be found [in the README.md file](https://gitlab.com/gitlab-data/runbooks/-/blob/main/pseudonymized_data_spike/README.md) with all technical details and a deep dive approach.

## GitLab Ops Database

GitLab ops database refers to the database instance of `ops.gitlab.net`.

The tables are replicated/restored daily into a Cloud SQL instance [ops-db-restore](https://console.cloud.google.com/sql/instances/ops-db-restore/overview?project=gitlab-analysis), which is hosted in the GitLab-analysis GCP project.

These are the tables currently being restored:
- `ci_builds`
- `ci_pipelines`
- `ci_stages`
- `labels`
- `merge_request_metrics`
- `merge_requests`
- `projects`
- `users`
- `label_links`
- `members`

A CI pipeline is responsible for dumping/restoring the tables. The CI-pipeline is set up in project [ops-db-dump](https://ops.gitlab.net/gitlab-com/gl-infra/ops-db-dump).
The restore is executed at 00:15 UTC and takes around 10 minutes.

The airflow user has been given full access after restoring the database to read all the data from the source.
Note that in order for the airflow user to connect to the Cloud SQL instance which is inside the GCP Analytics project, it must first establish a `cloud-proxy` connection, and then connect using localhost IP (127.0.0.1), [cloud-proxy CI job](https://gitlab.com/gitlab-data/analytics/-/blob/master/extract/extract-ci.yml#L72) and [cloud-proxy docs](https://cloud.google.com/sql/docs/postgres/connect-instance-private-ip#connect).

Alternatively, for testing, one can connect to the sql instance through its `external IP`, but only once the user's own IP address is authorized on this [networking page](https://console.cloud.google.com/sql/instances/ops-db-restore/connections/networking?project=gitlab-analysis).

## Gitlab Customer Dot Database

Customers Dot database holds information on the `Customer Portal` of the gitlab.com, where customers manage information such as upgrade of subscriptions, adding more seats etc. The infrastructure setup is done in a way that the data team uses the backups as a data source to extract information without affecting the production database.
The system setup is done by SRE team. For more details on peering can be found [here](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/customersdot/backups.md#gitlab-analysis).
Currently, we run a complete extract from the customer dot database. This process relies on a [backup pipeline running in ci jobs](https://ops.gitlab.net/gitlab-com/gl-infra/gitlab-restore/postgres-prdsub/-/jobs), if we're unable to connect or run into any other configuration problems interacting with the db, that is a good place to check.

## Google Search Console

[Google Search Console](https://search.google.com/search-console/about) helps you monitor and maintain your site's presence in Google Search results.

The data is loaded into our warehouse using Fivetran connectors and are uploaded into our Snowflake warehouse every 24 hours.

We bring in data for the report `Keyword Page Report` from our fivetran connectors. This report allows us to search traffic data of the pages of the site based on the query string user searched for on Google. Each record shows how the site appeared in the search result for a particular search query.

The following 3 sites are included in the extract:
- `https://about.gitlab.com/`
- `https://gitlab.com/`
- `http://gitlab.com/`
- `https://page.gitlab.com/`

## Service ping

Service Ping is a method for GitLab Inc to collect usage data about a given GitLab instance.
More information about `Service ping` (formerly known as `Service ping`) from a Product perspective, should be found **[here](https://about.gitlab.com/handbook/customer-success/csm/service-ping-faq/)**. Comprehensive guide with rich documentation is exposed in [Service Ping Guide](https://docs.gitlab.com/ee/development/service_ping/).

Service ping has two major varieties:
- Self-Managed Service Ping
- SaaS Service Ping

For more details refer to [4 types of service ping processes](/handbook/business-technology/data-team/data-catalog/saas-service-ping-automation/#4-types-of-service-ping-processes-run-versus-3-environments)

### Self-Managed Service Ping

Self-Managed Service Ping is loaded into the Data Warehouse from the Versions app and is stored in the `VERSION_DB` databases.

### SaaS Service Ping

SaaS Service Ping is loaded into Data Warehouse in two ways:
- using `SQL` statements from Gitlab `Postgres Database` Replica (`SQL-based`) and
- RestFUL API call from `Redis` (`Redis based`)

Implementation details from the Data team is shown under [Readme.md](https://gitlab.com/gitlab-data/analytics/-/blob/master/extract/saas_usage_ping/README.md#user-content-technical-implementation) file.

<img src="saas_service_ping_workflow.png" alt="drawing" width="800"/>

#### Loading instance `SQL-based` metrics

Data is loaded from `Postgres Sql` replica: The queries are version controlled in the very large JSON (couple of hundreds queries in the file) files present within this extract.  The queries are split out into two categories: instance queries and namespace queries. The instance queries generate data about `GitLab.com` as a whole, while the namespace queries generate data about each namespace on `GitLab.com`.
Data is stored in the tables (in the `RAW.SAAS_USAGE_PING` schema):
- `RAW.SAAS_USAGE_PING.INSTANCE_COMBINED_METRICS`
- `RAW.SAAS_USAGE_PING.INSTANCE_SQL_ERROR` - this table contains SQL command where error pops-up during data processing for SQL metrics.

Details about implementation are exposed in **[sql-metrics-implementation](/handbook/business-technology/data-team/data-catalog/saas-service-ping-automation/#sql-metrics-implementation)**

> **Note:** Data for the `instance_sql_metrics` and `instance_redis_metrics` are combined after processing and stored in the same row in the table `RAW.SAAS_USAGE_PING.INSTANCE_COMBINED_METRICS`

#### Loading instance `Redis` based metrics

Data is downloaded via API, refer to API specification: [UsageDataNonSqlMetrics API](https://docs.gitlab.com/ee/api/usage_data.html#usagedatanonsqlmetrics-api). Stored in a `JSON` format, approximately size is around 2k lines. Usually, it is one file per load *(at the moment, it is a weekly load)*. The main purpose of loading data from Redis is to ensure fine granulation of metrics can't be fetched using SQL queries.
Data is stored in the table (in the `RAW.SAAS_USAGE_PING` schema):
- `RAW.SAAS_USAGE_PING.INSTANCE_COMBINED_METRICS`

> **Note:** Data for the `instance_sql_metrics` and `instance_redis_metrics` are combined after processing and stored in the same row in the table `RAW.SAAS_USAGE_PING.INSTANCE_COMBINED_METRICS`

#### Loading instance `Namespace` based metrics

Data for the `instance_namespace_metrics` are calculated and stored in the table;
- `RAW.SAAS_USAGE_PING.GITLAB_DOTCOM_NAMESPACE`

Details about implementation are exposed in **[redis-metrics-implementation](/handbook/business-technology/data-team/data-catalog/saas-service-ping-automation/#redis-metrics-implementation)**

#### Automated Service Ping Observability

To ensure high quality of metrics calculation process and to keep track of metrics, we created a `Monte Carlo` monitor [**Automated Service Ping Metrics observability**](https://getmontecarlo.com/monitors/e618120e-c443-4aee-9f93-927037762219).
This monitor tracks `Automated Service Ping` metrics on a "week-on-week" basis. It will check if is there any significant rise or drop in metrics values for each week when metrics are calculated.  It is running after Automated Service Ping is done *(it starts each `Monday` at `0700 UTC`)* and checks any discrepancy in metrics on a weekly basis. We are creating a rolling window to check the last `10` pings.

The monitor is based on the metrics flattened in the table `PROD.COMMON_PREP.PREP_PING_INSTANCE_FLATTENED` and focuses only on the `Automated Service Ping` (`ping_type='SaaS - Automated'`) and scan metrics where `metrics_value>=500` *(to avoid false positives in case changes are rapid)*.

**How to solve the issue:** In case a breach happens, inside the monitor specification you should find the `Investigation Query` section where there is a handy option to check why metrics grow or drop.

#### SaaS Service Ping - Admin mode

Please note that in order to run the `saas_usage_ping` pipeline, the service account `analyticsapi@gitlab.com` needs [**admin_mode**](https://docs.gitlab.com/ee/administration/settings/).

Without admin_mode, the request to `https://gitlab.com/api/v4/usage_data/queries` will fail, as seen in this [issue](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/23398).

## SheetLoad

SheetLoad is the process by which a Google Sheets and CSVs from GCS or S3 can be ingested into the data warehouse.

Technical documentation on usage of SheetLoad can be found in the [readme](https://gitlab.com/gitlab-data/analytics/tree/master/extract/sheetload) in the data team project.

If you want to import a Google Sheet or CSV into the warehouse, please [make an issue](https://gitlab.com/gitlab-data/analytics/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=) in the data team project using the "CSV or GSheets Data Upload" issue template. This template has detailed instructions depending on the type of data you want to import and what you may want to do with it.

### Considerations

{: #mind-about-sheetload}

SheetLoad should primarily be used for data whose canonical source is a spreadsheet - i.e. Sales quotas. If there is a source of this data that is not a spreadsheet, you should at least [make an issue for a new data source (internal link)](https://gitlab.com/gitlab-data/analytics/-/issues/new?issuable_template=[New%20Request]%20New%20Data%20Source) to get the data pulled automatically. However, if the spreadsheet is the SSOT for this data, then SheetLoad is the appropriate mechanism for getting it into the warehouse.

### Loading into Snowflake

SheetLoad is designed to make the table in the database an exact copy of the sheet from which it is loading. Whenever SheetLoad detects a change in the source sheet, it will drop the database table and recreate it in the image of the updated spreadsheet. This means that if columns are added, changed, etc. it will all be reflected in the database. Changes are detected within 24 hours.

### Preparing for SheetLoad

Except for where absolutely not possible, it is best that the SheetLoad sheet import from the original Google Sheet directly using the `importrange` function. This allows you to leave the upstream sheet alone while enabling you to format the SheetLoad version to be plain text. Any additional data type conversions or data cleanup can happen in the base dbt models. (This does not apply to the Boneyard.)

Some additional considerations for preparing the data for loading:

- format all numeric columns to have no commas or other symbols - 1000.46 instead of $1,000.46
- use simple headers where possible - `user_name` instead of `GitLab - User Name`
- use blank cells to indicate no data. blank cells are stored as `null` in the database.

### Modeling

Before regular SheetLoad data can be accessible by Sisense, it has to be modeled via dbt. A minimum of 2 models will be made for the sheet: a [source model](/handbook/business-technology/data-team/platform/dbt-guide/#source-models) and a [staging model](/handbook/business-technology/data-team/platform/dbt-guide/#staging). These will be made by a member of the data team once you've [made an issue](https://gitlab.com/gitlab-data/analytics/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=) in the data team project.

### Boneyard

The `boneyard` schema is where data can be uploaded from a spreadsheet and it will be directly available for querying within Sisense. However, this is for instances where a one-off analysis is needed and/or you need to join this to data already in the warehouse. It is called Boneyard to highlight that this data is relevant only for an ***ad hoc/one off*** use case and will become stale within a relatively short period of time. We will periodically remove stale data from the `boneyard` schema.

### Certificates

If you are adding Certificates to SheetLoad, refer to the instructions in the [People Group page](/handbook/people-group/learning-and-development/)

## GCS External

Using a Snowflake Integration we are able to extract and load data directly from files stored in GCS. This can be used for load operations as well as for [External tables](https://docs.snowflake.com/en/user-guide/tables-external-intro.html). GCS External pipelines are those for which the source of truth remains within a GCS bucket.

This allows us to make general use of data, especially large data, without need for complicated load processes. External tables may serve as a means [to a data lake/lakehouse](https://www.snowflake.com/blog/external-tables-are-now-generally-available-on-snowflake/) within our existing data stack.

![image-6.png](./image-6.png)

### GCP Billing Data

We have created an export of our GCP Billing Data to BigQuery using Google's provided [Cloud Billing Export service](https://cloud.google.com/billing/docs/how-to/export-data-bigquery). This data is exported in Summary and Detail tables that are difficult to replicate in Snowflake because of a lack of unique keys and what otherwise look like duplicates in the Summary data. This, along with the relatively large size of the detail data, led us to an implementation of external tables.

Data is exported from BigQuery to GCS using
- [Our BigQuery Client](https://gitlab.com/gitlab-data/analytics/-/blob/master/orchestration/big_query_client.py)
- [An Airflow DAG](https://gitlab.com/gitlab-data/analytics/-/blob/master/dags/extract/external_gcp_billing.py)
- [`/gcs_external/src/gcp_billing/gcs_external.py`](https://gitlab.com/gitlab-data/analytics/-/blob/master/extract/gcs_external/src/gcp_billing/gcs_external.py)
- [`/gcs_external/src/gcp_billing/gcs_external.yml`](https://gitlab.com/gitlab-data/analytics/-/blob/master/extract/gcs_external/src/gcp_billing/gcs_external.yml)

Export queries for BigQuery are generated via details in the `gcs_external.yml` and logic within `gcs_external.py`, which are run by the Airflow DAG, which also runs a external table refresh via dbt.

The detail table is partitioned daily, which matches the current schedule interval in the DAG, the summary table however is partitioned monthly, though run daily. **This means that when backfilling the summary table you only need to run one task instance per month**.

#### dbt external table package

This data is then accessed in Snowflake via external tables created with the [dbt external table package](https://github.com/dbt-labs/dbt-external-tables), which is implemented for this GCS billing pipeline in [`/sources/gcp_billing/sources.yml`](https://gitlab.com/gitlab-data/analytics/-/blob/master/transform/snowflake-dbt/models/sources/gcp_billing/sources.yml#L25).

This pattern should be expanded or replicated for any future BigQuery to GCS export use cases.

###### External table perms

There is a slight complication regarding Snowflake perms. The external stage must be created with the LOADER role. However, the external table created by the dbt package uses the TRANSFORMER role. This causes a `Schema 'some_schema' does not exist or not authorized` error.

To fix this, the Snowflake `external stage` and `schema` must be updated to be owned by the TRANSFORMER role like so:

```sql
use <database.schema>;
use role <your-username>;

-- schema currently owned by LOADER
grant ownership on schema <schema>
to role transformer copy current grants;

-- stage currently owned by LOADER
grant ownership on stage <stage>
to role transformer copy current grants;
```

### Container Registry Logs

A [hardcoded SQL pipeline](https://gitlab.com/gitlab-data/analytics/-/blob/master/extract/gcs_external/src/container_registry.py) that queries directly from the external stage is used for filtering and loading data from an external GCS stage. Currently only used for [Container Registry Log data (issue linked)](https://gitlab.com/groups/gitlab-data/-/epics/579), which was too large to completely replicate into `RAW`. Currently [the DAG](https://gitlab.com/gitlab-data/analytics/-/blob/master/dags/extract/container_reg.py) runs SQL daily that creates a new table for each date partition, the business [has indicated](https://docs.google.com/document/d/1kwL3KGSmTbtKD7vliRbWOp1uY6gu6FLms6SPb4wXwA4/edit#heading=h.5kovd39dcksw) that this is unlikely to become a business critical data source.


## Postgres Pipeline (pgp) - Postgres Extractor

Data can be loaded from `postgres` into our data warehouse using `postgres_pipeline`.
All tables uploaded using `pgp` will contain a metadata column called `_uploaded_at` so that it can be determined when the data was loaded.

SCD (Slowly-Changing Dimensions):

Slowly-Changing dimensions are handled pretty simply. Each time the code is run, it will create a full copy of that table in the data warehouse in an append-only fashion.

- run `pgp` for SCD tables by invoking `python postgres_pipeline/main.py tap <manifest_path> --load_type scd`
- This command will tell `pgp` to only extract and load tables that are considered slowly-changing dimensions, it will skip all other tables
- A table is programmtically determined to be an SCD table if there is no `WHERE` clause in the raw query

Incremental (used by Airflow for time-specific loading and backfilling):

- run `pgp` for Incremental tables by invoking `python postgres_pipeline/main.py tap <manifest_path> --load_type incremental`
- This command will tell `pgp` to only extract and load tables that are able to be incrementally loaded, it will skip all other tables in addition to incremental tables that need to be fully re-synced
- A table is programmtically determined to be an incremental table if there is a `WHERE` clause in the raw query
- The time increment to load is based on the `execution_date` that is passed in by airflow minus the increment (`hours` or `days` depending on the query) passed in as an environment variable

Full sync (when a full-table backfill is required):

- There are two conditions that would trigger a full sync: 1) The table doesn't exist in snowflake (it is a new table) or 2) The schema has changed (for instance a column was added or dropped or renamed even).
- `pgp` will look at the max ID of the target table (the table in `Snowflake` the manifest describes) and backfill in chunks since. Note that this only works for tables that have some primary key. This is true for most tables at GitLab. We are not currently able to handle tables without a primary key.

Test:

- When a table has changed or is new (including SCD tables) `pgp` will try to load 1 million rows of that table to ensure that it can be loaded. This will catch the majority of data quality problems.

Validation (data quality check):

- *Documentation pending feature completion*

#### pgp manifest definition:

There are 5 mandatory sections and 2 optional sections in a `pgp` manifest.
The 5 sections are as follows:

1. `import_db`: the name of the database that is being imported from
1. `import_query`: this is the `SELECT` query that is used to extract data from the database. They usually target a single table
1. `export_schema`: this is the schema that the table lives in in the target database
1. `export_table`: this is the name of the table that is being targeted for export by the query
1. `export_table_primary_key`: this is the name of the column that is used as the primary key for the table. It is usually just `id`

The 6th optional section is called `additional_filtering`.
This field is used when you need to add an additional condition to the `import_query` that isn't related to incremental loading, for instance to filter some bad rows.

The 7th optional section is called `advanced_metadata`. This is a boolean field with the default being false and the only accepted value being `true`.
Adding this field requires a `drop` of the target table in `Snowflake` and a full re-sync. This field adds a `_task_instance` column to each upload so partitioning by Airflow runs is easier.

<!-- sites/handbook/source/handbook/business-technology/data-team/platform/infrastructure/index.html.md -->
#### Technical Details:

The logical execution of data loading looks like the following:

1. The manifest is parsed and the table is processed
1. A check is done to see if the table exists or if the schema has changed
1. Depending on the above, the data is either loaded into a `_TEMP_` table or directly into the existing table
1. A query is run against the `postgres` DB, and a pointer is used to return chunks of the result-set
1. This data is then written out to a tab-separated file in a GCS bucket (the bucket is named `postgres_pipeline` in the `gitlab-analysis` project). Each table only has one file that it continually overwrites. The GCS bucket is set to purge files that are more than 30 days old.
1. A query is executed in Snowflake that triggers the loading of the file into the target table.
1. The next table is processed...

#### Tests

Tests are run in CI using `pytest`. `Snowflake` access and `postgres` access are both required, as they rely on the actual data sources for end-to-end testing.

### Development


To add new tables or fields to be pulled by postgres pipeline, the manifest file for the specific source database will need to be changed.  These manifest files are in a folder [here](https://gitlab.com/gitlab-data/analytics/-/tree/master/extract/postgres_pipeline/manifests).  To add a new table, add an item to the `tables` list.  The `import_db` value should match the other items in that manifest.  The `import_query` is executed directly against the source target database.  Where possible, make the import query incremental by adding a `WHERE` clause such as:

```sql
WHERE updated_at BETWEEN '{EXECUTION_DATE}'::timestamp - interval '{HOURS} hours'
AND '{EXECUTION_DATE}'::timestamp
```

The `export_schema` value should match the other items in the manifest.  The `export_table` value should match the name of the table being imported.  The `export_table_primary_key` should be set to the primary key of that specific table in the postgres database.  If the import query is not incremental, then add `advanced_metadata: true` which creates another column that differentiates when data was loaded.

After the manifest changes are made, create a merge request using the `add_manifest_tables` template.  Then follow the instructions there.

For further details on the technical implementation see the README [here](https://gitlab.com/gitlab-data/analytics/-/blob/master/extract/postgres_pipeline/README.md)

### Internal Only Filtering

There are some columns in the application data that are useful for internal operations, but also contain customer information. In order to ensure that customer information is not introduced to Snowflake, while still preserving our access to internal data, we create a secondary table entry in the manifest with the `_internal_only` suffix and use the `additional_filtering` parameter to restrict the rows to those within internal projects and groups.

This is done by using any of the following keys in the `additional_filtering` parameter:

- `INTERNAL_NAMESPACE_IDS`
- `INTERNAL_PROJECT_IDS`
- `INTERNAL_PROJECT_PATHS`
- `INTERNAL_NAMESPACE_PATHS`
- `INTERNAL_PATHS`

as in

```yaml
  projects_internal_only:
    additional_filtering: AND namespace_id in {INTERNAL_NAMESPACE_IDS}
    dbt_snapshots: true
    dbt_source_model: true
    export_schema: 'gitlab_com'
    export_table: 'projects_internal_only'
```

These IDs are generated from dbt seed files which we use to identify internal groups and projects. If a project or group needs to be included it needs to be added to one of these CSVs
- [`internal_gitlab_projects.csv`](https://gitlab.com/gitlab-data/analytics/-/blob/master/transform/snowflake-dbt/data/internal_gitlab_projects.csv)
- [`internal_gitlab_namespaces.csv`](https://gitlab.com/gitlab-data/analytics/-/blob/master/transform/snowflake-dbt/data/internal_gitlab_namespaces.csv)
- [`projects_part_of_product.csv`](https://gitlab.com/gitlab-data/analytics/-/blob/master/transform/snowflake-dbt/data/projects_part_of_product.csv)
- [`projects_part_of_product_ops.csv`](https://gitlab.com/gitlab-data/analytics/-/blob/master/transform/snowflake-dbt/data/projects_part_of_product_ops.csv)

### Testing in Airflow

When testing postgres pipeline (pgp) locally in Airflow, there are a few things to keep in mind:

- Previously, a pool needed to be added manually to Airflow, but running `make init-airflow` will now automatically add all the pgp pools to Airflow.
- Prior to triggering the DAG, the `clone_raw_postgres_pipeline` [CI pipeline](/handbook/business-technology/data-team/platform/ci-jobs/#clone_raw_postgres_pipeline) will need to be run. This pipeline clones a schema `tap_postgres` into a Snowflake 'dev' database that the DAG will write the data to.


## Prometheus / Thanos (Periodic Queries)

We have one solution in place for extracting data from our Thanos instance, which is managed my the Infrastructure team, into snowflake. There is a service set up in CI Pipeline that runs in `ops.gitlab.net` called [Periodic Quries](https://gitlab.com/gitlab-com/runbooks/blob/d3b03bd2aff20865ba0ae3f96c9d38e3209b4e15/periodic-thanos-queries/README.md) that queries thanos and loads json files into a [GCS Bucket with the same name](https://console.cloud.google.com/storage/browser/periodic-queries)

To pull the metrics into Snowflake from GCS, a stage was created:

```sql
CREATE STAGE "RAW"."PROMETHEUS".periodic_queries 
STORAGE_INTEGRATION = GCS_INTEGRATION URL = 'gcs://periodic-queries/';
```

A Snowflake task was then setup to load the new data files in daily:

```sql
create or replace task prometheus_load_task
       WAREHOUSE = LOADING
       SCHEDULE = '1440 minute'
       AS 
    copy into raw.prometheus.periodic_queries (jsontext, uploaded_at)
    from (select $1, current_timestamp() as uploaded_at from @raw.prometheus.periodic_queries)
    file_format=(type='json');
```

Current Metrics Available

| Name | Topic Link | Source Issue |
|------|------------|--------------|
| `stage_group_error_budget_availability` | [stage-group-error-budgets.queries.jsonnet](https://gitlab.com/gitlab-com/runbooks/-/blob/master/periodic-thanos-queries/stage-group-error-budgets.queries.jsonnet) | [#7713 (internal link)](https://gitlab.com/gitlab-data/analytics/-/issues/7713) |
| `total_haproxy_bytes_out` | [daily-haproxy-bytes.queries.jsonnet](https://gitlab.com/gitlab-com/runbooks/-/blob/master/periodic-thanos-queries/daily-haproxy-bytes.queries.jsonnet) | [#11584 (internal link)](https://gitlab.com/gitlab-data/analytics/-/issues/11584) |

## Zuora API Sandbox

The API Sandbox is Zuora's "release preview" environment. It is a customer facing, multi-tenant environment that gets code deployed to it before Zuora's production environment. How early code gets deployed depends on the type of release: Major releases are usually deployed a week in advance, whereas minor releases and emergency patches get deployed days, hours or minutes before production. Zuora customers can purchase any number of tenants in this environment for a recurring annual fee.

API Sandbox is co-located in the same data center as the production environment, running on bare metal, but on a smaller footprint, offering less capacity.

The main use cases for API Sandbox include:

Basic implementation configuration and integrations
- Training
- Integration testing
- Regression testing
- Release preview testing


## Zuora Central Sandbox

Zuora Central Sandbox combines the capability to copy production data along with production-like performance into a single test environment tenant.  While Zuora Central Sandbox always comes with a snapshot of scrubbed production data, it can also be utilized for a brand new implementation in case the production tenant has no data at that time. The use cases of Zuora Central Sandbox includes all that of API Sandbox and more. See the following use cases supported by Zuora Central Sandbox.

Basic implementation configuration and integration

- Training
- Integration testing
- Regression testing
- Performance testing (with guidelines)
- Pre-production testing
- User acceptance testing

Zuora Central Sandbox is hosted on a production-like AWS infrastructure, allowing you to test the API response time, the bill runs and payment runs with production-level data loading. It provides a more realistic view of performance than API Sandbox. While the Zuora Central Sandbox is designed for production-level performance, Zuora recommends you to contact [Zuora Global Support](http://support.zuora.com/) if you plan to test over a certain amount of volume in a 24 hour period in the Zuora Central Sandbox. See [Performance guidelines](https://knowledgecenter.zuora.com/BB_Introducing_Z_Business/D_Zuora_Environments/Getting_started_with_Zuora_Central_Sandbox#Performance_guidelines) for the details.

Zuora Central Sandbox vs API Sandbox
See the contrasts between the use cases of API Sandbox and Zuora Central Sandbox.

|   |API Sandbox    | Zuora Central Sandbox  |
|---|---|---|
| Regression testing  |Yes   |Yes   |
| Performance testing (with guidelines)  | No  | Yes  |
| Pre-production testing  | Yes  | Yes  |
| User acceptance testing   |No   | Yes  |
|Basic implementation configuration and integration|Yes |Yes |
|Training |Yes |Yes |
|Integration testing |Yes|Yes|

### Zuora Central Sandbox connection

In case we get the database refreshed the credentials gets wiped off in source because of which the connectivity between fivetran and zuora central sandbox gets lost.  In order to restore the connection  request for the `client Id` and `client secret`. Once received update the same in Fivetran.



## Zuora Revenue

Zuora Revenue is an application where you can automate the complicated revenue management process in compliance with the latest revenue standards (ASC 606 and IFRS 15).
As part of data pipeline for Zuora Revenue extraction process, we extract data using REST Call from Zuora Revenue BI views (created by Zuora Revenue in the product by default, we only use these views and could not create or alter these views).
The data entities for Zuora Revenue BI views are based on the key physical tables. Some BI views are similar to the physical tables on which they are based. Other BI views are derived from calculations based on the physical tables.

### Zuora Network Architecture

The Zuora system is placed behind a firewall. In order to get access through the firewall GitLab IP address needs to be allowlisted. The Kubernetes Engine does not have a static IP, hence an extra compute engine is in place, with a static IP to gain access to Zuora.

![Zuora Network ](https://lucid.app/publicSegments/view/81713250-c9ab-410d-8cde-4b4ce7865b56/image.png)


From this [list](https://knowledgecenter.zuora.com/Zuora_Revenue/Zuora_Revenue_BI_views) only below table are being loaded or had data for Gitlab in Zuora Revenue at the moment for integration.

Below is the list of table which has data and which will be created in snowflake. The table which is not having data will not be created because the table definition provided by Zuora API is not on the column ordinal position but it alphabetical order, which makes column labeling incorrect.

|Serial No|Data entity in Zuora|Physical table In Zuora|View Name in Zuora|Table Name in SF|Has Records|Present in Snowflake|
|----|--------------------|-----------------------|-------------------|--------------|-------------|-----------|
|1|Account Type|RPRO_BI3_ACCT_TYPE_V|BI3_ACCT_TYPE|BI3_ACCT_TYPE|Yes|Yes|
|2|Accounting Pre-Summary|RPRO_BI3_RI_ACCT_SUMM_V|BI3_RI_ACCT_SUMM|BI3_RI_ACCT_SUMM|Yes|Yes|
|3|Approvals|RPRO_BI3_APPR_DTL_V|BI3_APPR_DTL|BI3_APPR_DTL|Yes|Yes|
|4|Bill|RPRO_BI3_RC_BILL_V|BI3_RC_BILL|BI3_RC_BILL|Yes|Yes|
|5|Calendar|RPRO_BI3_CALENDAR_V|BI3_CALENDAR|BI3_CALENDAR|Yes|Yes|
|6|Deleted Schedules|RPRO_BI3_RC_SCHD_DEL_V|BI3_RC_SCHD_DEL|BI3_RC_SCHD_DEL|Yes|Yes|
|7|Header|RPRO_BI3_RC_HEAD_V|BI3_RC_HEAD|BI3_RC_HEAD|Yes|Yes|
|8|Holds|RPRO_BI3_RC_HOLD_V|BI3_RC_HOLD|BI3_RC_HOLD|Yes|Yes|
|9|Lines|RPRO_BI3_RC_LNS_V|BI3_RC_LNS|BI3_RC_LNS|Yes|Yes|
|10|MJE|RPRO_BI3_MJE_V|BI3_MJE|BI3_MJE|Yes|Yes|
|11|POB|RPRO_BI3_RC_POB_V|BI3_RC_POB|BI3_RC_POB|Yes|Yes|
|12|Schedules|RPRO_BI3_RC_SCHD_V|BI3_RC_SCHD|BI3_RC_SCHD|Yes|Yes|
|13|Waterfall (Derived)|RPRO_BI3_WF_SUMM_V|BI3_WF_SUMM|BI3_WF_SUMM|Yes|No|
|14|Org|RPRO_BI3_ORG_V|BI3_ORG|BI3_ORG|No|No|
|15|Acct Summary (Derived)|RPRO_BI3_LN_ACCT_SUMM_V|BI3_LN_ACCT_SUMM|BI3_LN_ACCT_SUMM|No|No|
|16|Book|RPRO_BI3_BOOK_V|BI3_BOOK|BI3_BOOK|No|No|
|17|Cost|RPRO_BI3_RC_LN_COST_V|BI3_RC_LN_COST|BI3_RC_LN_COST |No|No|


## Zuora Revenue Extract

### Summary of extract and load pipeline

- Extract: [extract_zuora_revenue.py](https://gitlab.com/gitlab-data/analytics/-/blob/master/extract/zuora_revenue/src/extract_zuora_revenue.py), uploads data to a GCS bucket called [zuora_revpro_gitlab](https://console.cloud.google.com/storage/browser/zuora_revpro_gitlab). Note the following:
    - The extract is NOT run on airflow, rather it is scheduled and run on a dedicated *Compute Instance*.
    - Currently, every run is done as a *full extract* because the Zuora system sometimes misses updating the `UPDT_AT` column, [issue](https://gitlab.com/gitlab-data/analytics/-/issues/10774).
- Load: data is then loaded from the GCS bucket to Snowflake with the zuora_revenue_load.py [DAG](https://gitlab.com/gitlab-data/analytics/-/blob/master/dags/extract/zuora_revenue_load.py) which then runs [load_zuora_revenue.py](https://gitlab.com/gitlab-data/analytics/-/blob/master/extract/zuora_revenue/load_zuora_revenue.py)
- Triage note: Zuora performs deletes/reconciliations(monthly and/or quarterly) at the source system and since zuora is a full refresh system, we get volume anomalies in Monte carlo which can be marked as *expected*.

### Diving deeper

<details>
  <summary markdown="span">Below is how to set-up the Compute Engine for the extract, click here to expand</summary>

### Setup the environment in Compute engine

Do SSH to the zuora compute engine using your service account.
Below is the server details in GCP
https://console.cloud.google.com/compute/instancesDetail/zones/us-west1-a/instances/zuora-revenue-extract-server?project=gitlab-analysis&rif_reserved

 ssh -o UserKnownHostsFile=/dev/null -o CheckHostIP=no -o StrictHostKeyChecking=no -i $HOME/.ssh/google_compute_engine -A -p 22  <username>@<external_ip>


From separate terminal go to `~/repos/analytics/extract/zuora_revenue/src` directory and run below command to upload whole directory to compute engine. This directory contains the code for the extraction process.

gcloud compute scp --recurse src --zone "us-west1-a" zuora-revenue-extract-server:/home/vedprakash/zuora_revenue

This will upload the src folder from your branch your local to the compute engine branch.

### Post connection and upload of file.

`Step 1`: Create a virtual environment inside the compute engine named --- `zuora-revenue-extract-venv`

Keep the same name to keep the changes minimal.

`python3 -m venv zuora-revenue-extract-venv`

`Step 2`: Activate the venv

`source /home/vedprakash/zuora-revenue-extract-venv/bin/activate`

`Step 3`: Post that upgrade the pip

`pip install --upgrade pip`

`Step 4`: Go to src folder and install all the required package.

`pip install -r requirements.txt`

`Notes:`  Step 1 to Step 4 is required only when the environment is crashed and we have got to build it from start not required for general operations.

### Below Steps is required if we have accidentally deleted the GCS bucket folder, then we need to do below steps for each table. Also if there is requirement to add new table into the system then also we below steps can be used.


`Step 5`: Create the start_date_<table_name>.csv file which holds   table_name,load_date information.
For example for table BI3_MJE the file name will be
 `start_date_BI3_MJE.csv` and file content will be below.

table_name,load_date
BI3_ACCT_TYPE,
load_date for new table should be left blank because it will start to download the file from start. For other we can pick up the last load date from airflow log.
For the current table below is the list of command to create the file, this can be done from local or from compute engine as well.

```
echo "table_name,load_date
BI3_ACCT_TYPE," > start_date_BI3_ACCT_TYPE.csv
echo "table_name,load_date
BI3_APPR_DTL," > start_date_BI3_APPR_DTL.csv
echo "table_name,load_date
BI3_CALENDAR," > start_date_BI3_CALENDAR.csv
echo "table_name,load_date
BI3_MJE," > start_date_BI3_MJE.csv
echo "table_name,load_date
BI3_RC_BILL," > start_date_BI3_RC_BILL.csv
echo "table_name,load_date
BI3_RC_HEAD," > start_date_BI3_RC_HEAD.csv
echo "table_name,load_date
BI3_RC_HOLD," > start_date_BI3_RC_HOLD.csv
echo "table_name,load_date
BI3_RC_LNS," > start_date_BI3_RC_LNS.csv
echo "table_name,load_date
BI3_RC_POB," > start_date_BI3_RC_POB.csv
echo "table_name,load_date
BI3_RC_SCHD," > start_date_BI3_RC_SCHD.csv
echo "table_name,load_date
BI3_RC_SCHD_DEL," > start_date_BI3_RC_SCHD_DEL.csv
echo "table_name,load_date
BI3_RI_ACCT_SUMM," > start_date_BI3_RI_ACCT_SUMM.csv
```

This command create the file for each table and then putting required column name and value.
The load_date is set to null because it will be treated as first run.
`Note:` If we know the load date then place in `2016-07-26T00:00:00`  format `%Y-%m-%dT%H:%M:%S` for the particular table.

`Step6`: Now we need to upload the file in staging area. Below is the set of command for upload each file to respective table in staging area.

```
gsutil cp start_date_BI3_MJE.csv             gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_MJE/
gsutil cp start_date_BI3_ACCT_TYPE.csv  gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_ACCT_TYPE/
gsutil cp start_date_BI3_APPR_DTL.csv  gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_APPR_DTL/
gsutil cp start_date_BI3_CALENDAR.csv  gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_CALENDAR/
gsutil cp start_date_BI3_RC_BILL.csv  gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_RC_BILL/
gsutil cp start_date_BI3_RC_HEAD.csv  gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_RC_HEAD/
gsutil cp start_date_BI3_RC_HOLD.csv  gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_RC_HOLD/
gsutil cp start_date_BI3_RC_LNS.csv  gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_RC_LNS/
gsutil cp start_date_BI3_RC_POB.csv  gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_RC_POB/
gsutil cp start_date_BI3_RC_SCHD.csv  gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_RC_SCHD/
gsutil cp start_date_BI3_RC_SCHD_DEL.csv  gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_RC_SCHD_DEL/
gsutil cp start_date_BI3_RI_ACCT_SUMM.csv  gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_RI_ACCT_SUMM/
```

`Step 7`: To run the extract below variable needs to be declared in the .bash_profile file of the server.

```
    export zuora_bucket=""
    export zuora_dns=""
    export authorization_code=""
    export python_venv="source /home/vedprakash/zuora-revenue-extract-venv/bin/activate" #From step 2
    export zuora_extract_log="/home/vedprakash/zuora_revenue/src/logs/"
    export zuora_src="/home/vedprakash/zuora_revenue/src" #The path of source code
```

`Note:` The credentials is present in 1 password under `zuora_revenue_prod`.

`Step 8`: The last step is to do the schedule.Add below command to crontab.
Once edited and ready add the required command to crontab of that machine.
The current schedule is set to run at 02:00 AM UTC every day.

```
00 02 * * * . $HOME/.bash_profile;$python_venv && cd $zuora_src && python3 extract_zuora_revenue.py -table_name BI3_ACCT_TYPE     -bucket_name $zuora_bucket -api_dns_name $zuora_dns -api_auth_code "$authorization_code" &>/tmp/mycommand.log
00 02 * * * . $HOME/.bash_profile;$python_venv && cd $zuora_src && python3 extract_zuora_revenue.py -table_name BI3_APPR_DTL      -bucket_name $zuora_bucket -api_dns_name $zuora_dns -api_auth_code "$authorization_code" &>/tmp/mycommand.log
00 02 * * * . $HOME/.bash_profile;$python_venv && cd $zuora_src && python3 extract_zuora_revenue.py -table_name BI3_CALENDAR      -bucket_name $zuora_bucket -api_dns_name $zuora_dns -api_auth_code "$authorization_code" &>/tmp/mycommand.log
00 02 * * * . $HOME/.bash_profile;$python_venv && cd $zuora_src && python3 extract_zuora_revenue.py -table_name BI3_MJE           -bucket_name $zuora_bucket -api_dns_name $zuora_dns -api_auth_code "$authorization_code" &>/tmp/mycommand.log
00 02 * * * . $HOME/.bash_profile;$python_venv && cd $zuora_src && python3 extract_zuora_revenue.py -table_name BI3_RC_BILL       -bucket_name $zuora_bucket -api_dns_name $zuora_dns -api_auth_code "$authorization_code" &>/tmp/mycommand.log
00 02 * * * . $HOME/.bash_profile;$python_venv && cd $zuora_src && python3 extract_zuora_revenue.py -table_name BI3_RC_HEAD       -bucket_name $zuora_bucket -api_dns_name $zuora_dns -api_auth_code "$authorization_code" &>/tmp/mycommand.log
00 02 * * * . $HOME/.bash_profile;$python_venv && cd $zuora_src && python3 extract_zuora_revenue.py -table_name BI3_RC_HOLD       -bucket_name $zuora_bucket -api_dns_name $zuora_dns -api_auth_code "$authorization_code" &>/tmp/mycommand.log
00 02 * * * . $HOME/.bash_profile;$python_venv && cd $zuora_src && python3 extract_zuora_revenue.py -table_name BI3_RC_LNS        -bucket_name $zuora_bucket -api_dns_name $zuora_dns -api_auth_code "$authorization_code" &>/tmp/mycommand.log
00 02 * * * . $HOME/.bash_profile;$python_venv && cd $zuora_src && python3 extract_zuora_revenue.py -table_name BI3_RC_POB        -bucket_name $zuora_bucket -api_dns_name $zuora_dns -api_auth_code "$authorization_code" &>/tmp/mycommand.log
00 02 * * * . $HOME/.bash_profile;$python_venv && cd $zuora_src && python3 extract_zuora_revenue.py -table_name BI3_RC_SCHD       -bucket_name $zuora_bucket -api_dns_name $zuora_dns -api_auth_code "$authorization_code" &>/tmp/mycommand.log
00 02 * * * . $HOME/.bash_profile;$python_venv && cd $zuora_src && python3 extract_zuora_revenue.py -table_name BI3_RC_SCHD_DEL   -bucket_name $zuora_bucket -api_dns_name $zuora_dns -api_auth_code "$authorization_code" &>/tmp/mycommand.log
00 02 * * * . $HOME/.bash_profile;$python_venv && cd $zuora_src && python3 extract_zuora_revenue.py -table_name BI3_RI_ACCT_SUMM  -bucket_name $zuora_bucket -api_dns_name $zuora_dns -api_auth_code "$authorization_code" &>/tmp/mycommand.log
```

</details>

<details>
<summary>Zuora Extract Flow Chart</summary>

## Zuora Extract Flow Chart

![Zuora Extract FLow](https://lucid.app/publicSegments/view/87b3c145-78aa-4fe8-bc1e-63c4c008c0a1/image.png)

At the end of the process below will be output.
1) A success log file is present named `<table_name>_DD-MM-YYYY.log`  upload to path zuora_revpro_gitlab/RAW_DB/staging/<table_name>/<table_name>_DD-MM-YYYY.log.log. For example for table BI3_MJE the log file for the day will be named `BI3_MJE_21-06-2021.log` and it will be uploaded to the path `gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_MJE/BI3_MJE_21-06-2021.log`
2) Any file for the date range wil be present in the GCS bucket.
</details>

### In order to add table for extraction to Snowflake.

From this list if any table get the data and we need to add the entry to snowflake then we need to follow below steps.
**Step 1:** Add the entry `extract/zuora_revenue/zuora_revenue_table_name.yml` to add task in the `zuora_revenue_load_snow` DAG.  
**Step 2:** For the respective table follow  Step 5, Step 6 and Step 8.
<br>**Step 3:** Pickup the column name from the file downloaded and set all column to varchar, then create the table in snowflake RAW.ZUORA_REVENUE schema.

**Notes:** Don't use the describe column API to create the table definition because the order of column in list may differ from original table definition.


#### For Derived table

Zuora have provided view definition for the derived view. As extracting data from the derived view is not feasible in production. Hence for table BI3_WF_SUMM we prepare the data in the DBT model in PREP layer with the DDL provided from Zuora. The DDL definition is present in [extract/zuora_revenue/README.md](https://gitlab.com/gitlab-data/analytics/-/tree/master/extract/zuora_revenue) in repo.

## Zoominfo

ZoomInfo is a go-to-market intelligence platform for B2B sales and marketing teams. The integrated cloud-based platform provides sellers and marketers with comprehensive information to help them find potential new customers. In order to get these kind of enrich data, Gitlab needs to send data as outbound towards Zoominfo and after processing GitLab will receive processed data as an inbound table via Snowflake data share from zoominfo.

The Zoominfo data pipeline is an automated bi-directional data pipeline that leverages Snowflake data share methodology.

### Snowflake Data share.

[Snowflake data share](https://docs.snowflake.com/en/user-guide/data-sharing-intro.html) enables sharing of snowflake database tables from one account and also allows access to data shared from external accounts. This involves creating an outbound share of a database in their account and grant access to the snowflake table that needs to be shared to an external account using either web interface/SQL.

#### Snowflake Data Share using SQL

Below are the steps followed for working on outbound/inbound shares via snowflake data share using SQL.

##### Outbound share using SQL

For example database named `prod` with a schema named `share` and a table named `gitlab_user_outbound`is shared with consumer account `azitest`. Run below SQL's
to create outbound share.
- Step 1: Create a Share using role accountadmin.
    - USE ROLE accountadmin;
    - CREATE SHARE share_test;
- Step 2: Add database, schema and table to the Share by Granting Privileges.
    - GRANT USAGE ON DATABASE prod TO SHARE share_test;
    - GRANT USAGE ON SCHEMA prod.share TO SHARE share_test;
    - GRANT SELECT ON TABLE prod.share.gitlab_user_outbound TO SHARE share_test;
- Step 3: Add consumer account to the Share.
In order to add account to the share, consumer need to provide their account details and both consumer and provider accounts should be in the same snowflake region.
    - ALTER SHARE share_test ADD ACCOUNTS =‘azitest';

##### Inbound share using SQL

For example share named `gitlab` is shared to us from account `azitest`, run below SQL to create database in snowflake and to access the tables and data in inbound share.

- CREATE DATABASE zoominfo_inbound FROM SHARE azitest.gitlab;

#### Snowflake Data Share using snowflake web interface

Below are the steps followed for working on outbound/inbound shares via snowflake data share using Web interface.
Use `accountadmin` role and navigate to shares page in the snowflake web interface to perform inbound/outbound data share tasks.

![image-1.png](./image-1.png)

##### Outbound share using snowflake web interface
- Step 1: To create a outbound share click on `outbound` icon and then on `+create` icon on shares page in the snowflake web interface.
- Step 2: Add secure share name, database, table/view details and then click on create button on the bottem.

![image-2.png](./image-2.png)

- Step 3: Add consumer account to the share and choose to create reader/full account and click on `add` button at the bottem. This will create a share and shares tables/views to consumer.

![image-3.png](./image-3.png)

##### Inbound share using snowflake web interface

Inbound shares can be viewed under Inbound tab under shares page on the snowflake web interface. Inorder to access the tables and data in the inbound share, a shared database needs to be created. To create shared database click on `Create database from secure share` icon and provide database name, grant access to and click on `create database` button. This process creates database `zoominfo_inbound` in snowflake. Inbound tables and data can be accessed under this shared database in snowflake. Data from shared database is ingested into `prep`.

![image-4.png](./image-4.png)

![image-5.png](./image-5.png)


### Architecture

![image.png](./image.png)

#### Outbound table
- `"PROD"."SHARE"."GITLAB_USER_OUTBOUND"` - Outbound table has Gitlab user information such as First name, Last name, email address and company name. Outbound table is shared only once to Zoominfo via Snowflake data share. The table is prepared via `dbt` so it will change over time. Its up to Zoominfo to ingest newly and updated data in this table.

#### Loading Inbound tables  

Zoominfo sends inbound files to Gitlab via Snowflake data share. Shared database ZOOMINFO_INBOUND is created from inbound share using either the web interface or SQL. The inbound tables don't follow the standard architecture, where we ingest data in our raw layer and where `dbt` picks the data up for transformation. We handle the shared database as the `raw` database to avoid creating extra processes and make the pipeline more efficient. Data from inbound tables in ZOOMINFO_INBOUND is ingested into snowflake `prep` ​​using Snowflake Data Exchange loader. Below list of inbound tables are created in PREP database under 'zoominfo' schema.

- `"ZI_COMP_WITH_LINKAGES_GLOBAL_SOURCE"` -  International table has a list of all the companies they have information about. This is a one time share.
- `"ZI_REFERENCE_TECHS_SOURCE"` - Technograph table that has a list of technologies used by companies in their database.This is a one time share.
- `"GITLAB_CONTACT_ENHANCE_SOURCE"` - User table company matched table which appends company information to the user list Gitlab sends to zoominfo. Gitlab sends Zoominfo only once but the appended data can be refreshed quarterly.

## Adaptive

Note: Starting in August 2023, the `tap-adaptive` Meltano extract has been **deprecated** and replaced with a custom extract for `exportData`, [deprecation issue](https://gitlab.com/gitlab-data/analytics/-/issues/17935).


<details><summary>Deprecated meltano-adaptive process</summary>
Adaptive has been implemented as part of this [issue (internal link)](https://gitlab.com/gitlab-data/analytics/-/issues/6237). The tap is reponsible for 100% sync for every refresh and executed via Meltano via the TAP-ADAPTIVE.

Below is the list of the relevant endpoints in Adaptive. The end points available and more information around the end point is present [here](https://adaptiveplanning.doc.workday.com/r/DG7oXjCPB6kIw6Th6awNUg/r2Yl8CztW98XTEeX1vKtgQ)

- exportAccounts
- exportActiveCurrencies
- exportAttributes
- exportConfigurableModelData
- exportCustomerLogo
- exportData
- exportDimensionFamilies
- exportDimensions
- exportDimensionMapping
- exportGroups
- exportInstances
- exportLevels
- exportLocales
- exportModeledSheet
- exportRoles
- exportPermissionSet
- exportSecurityAudit
- exportSheetDefinition
- exportSheets
- exportTime
- exportTransactionDefinition
- exportUsers
- exportVersions

All of these end points or table are created in snowflake. If the data is not present then also sklenton of the table will be created. The target landing Schema is `RAW.TAP-ADAPTIVE`.

Repo URL for [TAP-ADAPTIVE](https://gitlab.com/gitlab-data/meltano_taps/-/tree/main/tap-adaptive).

To run the TAP it required 2 enviornment variable named `TAP_ADAPTIVE_USERNAME` and  `TAP_ADAPTIVE_PASSWORD`. Below is the details of meltano.yml file which is configured for the TAP-ADAPTIVE.

```
- name: tap-adaptive
    namespace: tap_adaptive
    pip_url: git+https://gitlab.com/gitlab-data/meltano_taps.git#subdirectory=tap-adaptive
    executable: tap-adaptive
    capabilities:
     - catalog
     - discover
     - state
    settings:
     - name: username
     - name: password
       kind: password
     - name: start_date
       value: '2010-01-01T00:00:00Z'
    config:
      start_date: '2010-01-01T00:00:00Z'
      username: $TAP_ADAPTIVE_USERNAME
      password: $TAP_ADAPTIVE_PASSWORD
  loaders:
```

The Schedule is set to run daily at midnight.
</details>


## ZenGRC

The ZenGRC data source uses a singer tap we developed in [gitlab-data/tap-zengrc](https://gitlab.com/gitlab-data/tap-zengrc) and is run in our [Meltano instance](/handbook/business-technology/data-team/platform/Meltano-Gitlab/) on a [daily](https://gitlab.com/gitlab-data/gitlab-data-meltano/-/blob/main/meltano.yml#L73) scheduled 3 times per day/every 8 hours starting at midnight UTC in Meltano.

Currently this tap extracts a select number of objects from ZenGRC. These are listed in the [stream types in `tap_zengrc/tap.py`](https://gitlab.com/gitlab-data/tap-zengrc/-/blob/main/tap_zengrc/tap.py#L20-26).

This tap was created using [Meltano SDK](https://sdk.meltano.com/en/latest/) and the [ZenGRC API](https://gitlab.api.zengrc.com/#/). [Environment variables for username and password](https://gitlab.com/gitlab-data/gitlab-data-meltano/-/blob/main/meltano.yml#L29) `$ZENGRC_USERNAME` and `$ZENGRC_PASSWORD`are required to run this in Meltano.

## ZenDesk

The `ZenDesk` data source uses the [tap-zendesk](https://hub.meltano.com/taps/zendesk) Singer tap and runs on our [Meltano instance](/handbook/business-technology/data-team/platform/Meltano-Gitlab/) on a [daily](https://gitlab.com/gitlab-data/gitlab-data-meltano/-/blob/main/meltano.yml#L374) schedule at `04:00:00 UTC`.

The streams we currently load are specified on the `meltano.yml` configuration file, under the loader's `select` [section](https://gitlab.com/gitlab-data/gitlab-data-meltano/-/blob/main/meltano.yml#L100).


[Environment variables](https://gitlab.com/gitlab-data/gitlab-data-meltano/-/blob/main/meltano.yml#L71) for the `tap-zendesk` are:
- `$TAP_ZENDESK_EMAIL`
- `$TAP_ZENDESK_START_DATE`
- `$TAP_ZENDESK_SUBDOMAIN`
- `$TAP_ZENDESK_API_TOKEN`

and they are required to run this in Meltano. They are part of the `tap-secrets` secret on k8s.

The data is then loaded into Snowflake, using the `target-snowflake--edcast` loader, which is our in-house developed loader targetting Snowflake databases. The repo for this loader is located [here](https://gitlab.com/gitlab-data/target-snowflake-edcast).

The final data ends up in Snowflake under the `TAP_ZENDESK` schema.


## ZenDesk Community Relations

Similar to the `ZenDesk` pipeline, the `ZenDesk Community Relations` data source uses the [tap-zendesk](https://hub.meltano.com/taps/zendesk) Singer tap and runs on our [Meltano instance](/handbook/business-technology/data-team/platform/Meltano-Gitlab/) on a [daily](https://gitlab.com/gitlab-data/gitlab-data-meltano/-/blob/main/meltano.yml#L380) schedule at `05:00:00 UTC`.

Notice how in the configuration, this loader has a different name (`tap-zendesk--community-relations`), but it inherits from the same base loader: `tap-zendesk`.

The streams we currently load are specificed on the `meltano.yml` configuration file, under the `tap_zendesk` loader `select` [section](https://gitlab.com/gitlab-data/gitlab-data-meltano/-/blob/main/meltano.yml#L289).


[Environment variables](https://gitlab.com/gitlab-data/gitlab-data-meltano/-/blob/main/meltano.yml#L71) for the `tap-zendesk` are:
- `$TAP_ZENDESK_COMMUNITY_RELATIONS_EMAIL`
- `$TAP_ZENDESK_COMMUNITY_RELATIONS_START_DATE`
- `$TAP_ZENDESK_COMMUNITY_RELATIONS_SUBDOMAIN`
- `$TAP_ZENDESK_COMMUNITY_RELATIONS_API_TOKEN`

and they are required to run this in Meltano. They are part of the `tap-secrets` secret on k8s.

The data is then loaded into Snowflake, using the `target-snowflake--edcast` loader.
The final data ends up in Snowflake under the `TAP_ZENDESK_COMMUNITY_RELATIONS` schema.


## Xactly

The Xactly data source uses a singer tap we developed in [gitlab-data/tap-xactly](https://gitlab.com/gitlab-data/meltano_taps/-/tree/main/tap-xactly) and is run in our [Meltano instance](/handbook/business-technology/data-team/platform/Meltano-Gitlab/) on a daily schedule at midnight UTC and at 5:00AM UTC. The midnight UTC is the regular extract and we do an [extra](https://gitlab.com/gitlab-data/analytics/-/issues/14780#note_1185764844) extract at 5:00AM UTC incase of network errors. Network errors do occur from time to time when extracting data out of Xactly which gets resolved automatically. Instead of rerunning the extract manually with the risk of missing the SLO we do an extra try at 5:00AM UTC.

## Clari

Clari is a revenue platform currently used by GitLab to forecast salesperson sales for the quarter. Clari data is loaded into Snowflake via a custom [script](https://gitlab.com/gitlab-data/analytics/-/blob/master/extract/clari/src/clari.py), which requests data from the [Clari API](https://developer.clari.com/documentation/external_spec).

For each quarter, the API returns a forecast record for each user/week/metric.

The [Clari child page](/handbook/business-technology/data-team/platform/pipelines/clari-pipeline) in the handbook has more technical details, including various gotcha's such as:
- API is not idempotent - returns only records for *current* active users, making backfills inadvisable
- Need two DAG's to support the following edge cases:
    - late updated records
    - weeks in the quarter starting prematurely

## Level Up / Thought Industries Extract

[Thought Industries](https://www.thoughtindustries.com/) is the name of the vendor that provides
GitLab with a Learning Management System internally known as [Level Up](https://levelup.gitlab.com/catalog).

This extract sources from the [Thought Industry API](https://api.thoughtindustries.com/#thought-industries-api) with the goal of providing data to the [Learning and Development team](/handbook/people-group/learning-and-development/) at GitLab.

Currently, there are 5 endpoints/tables that are being extracted:
- [`Course Actions`](https://api.thoughtindustries.com/#course-actions)
- [`Course Completions`](https://api.thoughtindustries.com/#course-completions)
- [`Course Views`](https://api.thoughtindustries.com/#course-views)
- [`Logins`](https://api.thoughtindustries.com/#logins)
- [`Visits`](https://api.thoughtindustries.com/#visits)

#### Code Structure

There is one parent class `ThoughtIndustries()` and for each API endpoint, a corresponding child class.

Since the logic to call each endpoint is similar, the parent class contains the key logic, specifically in the [fetch_from_endpoint()](https://gitlab.com/gitlab-data/analytics/-/blob/master/extract/level_up_thought_industries/src/thought_industries_api.py#L52) function. The docstring within the function has more detail on implementation.

#### DAG structure

The [DAG](https://gitlab.com/gitlab-data/analytics/-/blob/master/dags/extract/level_up_thought_industries_extract.py) has been designed to be idempotent- if a DAG run is cleared and 're-run', it will always generate the same output.

Since each API endpoint has a `startDate` and `endDate` parameter, we can correspondingly pass in the DAG run's `execution_date` and `next_execution_date`. And since the DAG has a daily schedule, each run will return data for a 24-hour period.

To do backfills for a longer period of time, it may be useful to follow the [handbook guidelines](/handbook/business-technology/data-team/platform/infrastructure/#backfills) on backfilling from the command line.

## Omamori Extract

The [Omamori Project](https://gitlab.com/gitlab-com/gl-security/security-operations/trust-and-safety/omamori) is a mass detection and mitigation system for Trust & Safety.

The Security team moves data from the source application to an Analytics-owned [GCS bucket](https://console.cloud.google.com/storage/browser/gitlab-omamori-exported-data;tab=objects?forceOnBucketsSortingFiltering=true&project=gitlab-analysis&prefix=&forceOnObjectsSortingFiltering=false), the work was done in this [Security & Safety Issue](https://gitlab.com/gitlab-com/gl-security/security-operations/trust-and-safety/omamori/-/issues/69).

Once the upstream data is in GCS, the following steps take place, ([Analytics MR](https://gitlab.com/gitlab-data/analytics/-/merge_requests/8406)):
- `t_omamori_external` DAG runs the following every hour:
    - Snowflake `external table` referring to each Omamori table is refreshed
    - dbt incremental source model is updated based on any new data in the external table

## Adaptive - Custom Extract

#### Background

Previously Adaptive data was being extracted via [Meltano tap-adaptive](https://gitlab.com/gitlab-data/meltano_taps/-/tree/main/tap-adaptive).

However, there was no easy way in Meltano to take the output of one stream, `exportVersions`, and use it to run another stream `exportData` 'n' times where 'n' is the number of versions returned from the former stream.

As such, this solution was converted into a custom extract. The work was done in this [Epic](https://gitlab.com/groups/gitlab-data/-/epics/804).

#### Purpose of this extract

The [Adaptive API exportData](https://doc.workday.com/adaptive-planning/en-us/integration/managing-data-integration/api-documentation/metadata-and-data-create-update-and-read-methods/mdn1623709213322.html) endpoint returns both Forecasted and Actual metrics. These metrics are used in the 'Executive Dashboard' in Tableau.

Currently, only the `account_codes` associated with the metrics used in the `executive dashboard` are extracted (i.e. Net ARR).
It would have been easy to extract all account_codes at once, but we are not doing that because some of the account_codes are associated with `MNPI` data.

#### Querying the data

The data can be queried like so:

```sql
SELECT *
FROM RAW.ADAPTIVE_CUSTOM.reporting
WHERE
  version = 'Shared to Data - FY24 Plan'
  AND account_name = 'Net ARR Bookings';
```

#### How the code works

The code is in the [Adaptive extract repo](https://gitlab.com/gitlab-data/analytics/-/tree/master/extract/adaptive).

In the Adaptive system, versions are organized in a file-like hierarchy. There is one folder that finance has set aside for this extract called `Shared with Data`.

Within this folder are finalized versions (reports) that need to be uploaded to Snowflake. The code checks this folder daily to see if there are any new versions that haven't been uploaded yet.

If there are new versions in the folder, the following happens:
- an API call to `exportData` is made to export that data
- the exported data is loaded into the `reporting` table in Snowflake
- the version name is inserted into the `processed` table in Snowflake so that it won't be processed again.

## OCI (Oracle Cloud Infrastructure) Usage

We get our OCI Usage Data from report files generated by OCI, made available in OCI Object Storage. We based [our extraction](https://gitlab.com/gitlab-data/analytics/-/blob/master/extract/oci_usage/extract.py) roughly on the [example provided in OCI's Docs](https://docs.oracle.com/en-us/iaas/Content/Billing/Tasks/download-cost-usage-report.htm), which uses the the [OCI Python SDK](https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/pythonsdk.htm). As of yet we have not identified a way to download files based on metadata like a created timestamp and so we're just downloading all of the files in the extraction.

[The exaction & load DAG](https://gitlab.com/gitlab-data/analytics/-/blob/master/dags/extract/oci_usage.py) runs daily, comparing the downloaded files to the files that have been already loaded into the `OCI_REPORTS` stage in `RAW.OCI_REPORTS` and puts new files into the stage and copies them into the appropriate table. If the copy statement fails the file will then also be removed from the stage so as to maintain a common state with the data in the staged files and the two tables in `RAW.OCI_REPORTS`:

1. `OCI_COST_REPORT`
1. `OCI_USAGE_REPORT`

As of now, only the cost report is in use downstream.

### Schema Evolution

Within a week of this extraction being deployed the schema changed for the cost report, which broke the pipeline. In order to resolve this, and prepare for likely future schema changes, the tables were [recreated](https://gitlab.com/gitlab-data/analytics/-/merge_requests/8559#note_1505207263) using [schema evolution](https://docs.snowflake.com/en/user-guide/data-load-schema-evolution).

At the time this was an feature in preview and we are still learning how this affects our data type definitions in the source layer in dbt.

### Refresh

If for whatever reason this data needs to be refreshed in Snowflake simply truncate the tables, empty the stage, and then rerun the DAG. Since we're not yet using a `SWAP WITH` or a `MERGE` this should be done between dbt runs.

```sql
USE ROLE LOADER;
DELETE FROM RAW.OCI_REPORTS.OCI_COST_REPORT;
DELETE FROM RAW.OCI_REPORTS.OCI_USAGE_REPORT;
REMOVE @OCI_REPORTS.OCI_REPORT;
```
