---

title: "Gitlab.com SAAS Extract Backfill"
description: "Gitlab.com SAAS Extract Backfill"
---









---

# Updated backfill process

There should no longer be any manual work required when backfilling a bigger table (i.e > 500M records).

Previously, a new backfill task would always start backfilling from the beginning, even if the previous task was in the middle of a backfill that was unsuccessfully finished. 

With the updated logic, a backfill will start from where it left off if various conditions are met.

This is especially useful when backfilling for bigger tables such as `ci_job_artifacts` where in the past, the backfill would have to be manually processed over a weekend maintenance window.

### High-level logic/changes
Backfill will be triggered when:
1. New table
1. Schema addition to source Postgres table
1. In the middle of a backfill (but only if the last upload was within 26 hours- else start backfill over)

Changes:
1. Use backfill metadata database to preserve backfill status
1. Chunked in 5 million records to match [Snowflake General File Sizing Recommendations](https://docs.snowflake.com/en/user-guide/data-load-considerations-prepare#general-file-sizing-recommendations)

### Detailed flow - Backfill
Backfill flow visually:
<div style="width: 640px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:640px; height:480px" src="https://lucid.app/documents/embedded/8b13be2a-66b8-426b-add4-47c2af351d14" id="MJUOAu6WNlCu"></iframe></div>

When a backfill is started, the following conditions are checked:

1. Check if in the middle of the backfill
    - If the last file written was less than 26 hours ago, resume from the last written id
    - Else if more than 26 hours, backfill from the beginning
1. Check if new table, if so, backfill from the beginning
1. Check if there is schema addition. If so, backfill from the beginning
1. Else, don't backfill 
    

#### Mid-backfill

During the backfill, for every n chunks, the metadata is written to a Postgres table within a GCP SQL instance [postgres-saas-meta-data](https://console.cloud.google.com/sql/instances/postgres-saas-meta-data/overview?project=gitlab-analysis).

The following metadata is written:
1. `table_name`
1. `initial_load_start_date`: save all the files associated with the load in the same folder based on the initial_load_start_date
1. `upload_date`: the upload date of the file
1. `last_extracted_id`: this is where the backfill will start from if mid-backfill
1. `is_export_completed`: Determines if the table is in the middle of a backfill

To determine if in the middle of a backfill, simply take the `is_export_completed` flag of the most recent record associated with that table.

#### New table
To determine if the table is a 'new' table, in Snowflake, check the `raw.tap_postgres` schema to see if the table already exists.

#### Schema change
Check the columns in the manifest and compare them against the columns in the Snowflake table. If there has been a schema **addition** to the manifest then backfill- schema subtractions are ignored by the backfill process.

### New GCS bucket locations
- production bucket: the files are saved in [saas-pipeline-backfills](https://console.cloud.google.com/storage/browser/saas-pipeline-backfills;tab=objects?forceOnBucketsSortingFiltering=true&project=gitlab-analysis&prefix=&forceOnObjectsSortingFiltering=false) GCS bucket, specifically in  `staging/` folder.
- testing bucket: When testing using local airflow, the files are saved in [test-saas-pipeline-backfills](https://console.cloud.google.com/storage/browser/test-saas-pipeline-backfills;tab=objects?forceOnBucketsSortingFiltering=true&project=gitlab-analysis&prefix=&forceOnObjectsSortingFiltering=false) GCS bucket.
#### Note on bucket folder structure
Within the `staging/` folder, there are various *subfolders* that indicate the type of extract it was:
- `regular/`: loaded from regular incremental load
- `backfill/`: loaded from backfill
- `incremental_load_by_id/`: loaded from incremental_by_id process, i.e `merge_request_diff_commits` table
- `deletes/`: loaded from the deletes process, only captures the primary keys to be used to compare against Snowflake table

## Tracking deletes in source

### Background
We want to capture deletes in the source by marking each record in a Snowflake table with an `is_deleted` boolean flag.

The standard way to do this is with CDC via logical replication. However, per [this issue](https://gitlab.com/gitlab-com/gl-infra/reliability/-/issues/15522#note_918619340), it was determined that Logical replication would lead to too much replication lag.

### New solution - table differences
Since logical replication is not feasible, we have decided to calculate deletes via table differences.

Essentially, once a month (the schedule is discussed more in detail in the 'cadence section), we will load all the primary keys from the source. Then we will compare these source primary keys against what exists in Snowflake. 

Any records in Snowflake that are no longer in the source indicates that these records have since been deleted.

### How to add new tables to the deletes process
When a table is added to the manifest, for all incremental tables, by **default** these tables will be included in the deletes process.

If you do not want to include them in the deletes process, the `deletes_exempt` flag needs to be marked as `True`. Example:
```yaml
merge_request_diff_commits:
  export_table: 'merge_request_diff_commits'
  deletes_exempt: True
```

If an existing table is currently excluded from the deletes process, it can be included by removing the `deletes_exempt` flag.

### Deletes in backfill process
This process also uses the new backfill process. That is, when loading the primary keys, the state of this extraction is record in the metadata table so that if the extract is stopped for any reason, it can be resumed later on.


### Deletes Flowchart
Deletes flow visually:
<div style="width: 640px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:640px; height:480px" src="https://lucid.app/documents/embedded/546d31bb-727d-49de-ae0d-4f45ad93b39b" id="JNUOtiQbybj."></iframe></div>

The steps from a high level are:
1. Every day, check if deletes should be (re-)captured
    - Two reasons why deletes would be necessary
        1. New table that doesn't have `is_deleted` column yet
        2. A few days before dbt monthly refresh, need to update `is_deleted` field prior to full refresh
1. If deletes are necessary, check if in hanging backfill state
    - if in hanging backfill state, and the last loaded file is within 26 hours, resume from the last loaded state
    - else, start extracting from the beginning
1. Begin extraction, and write results to [GCS bucket](https://console.cloud.google.com/storage/browser/saas-pipeline-backfills/staging?project=gitlab-analysis&pageState=(%22StorageObjectListTable%22:(%22f%22:%22%255B%255D%22))&prefix=&forceOnObjectsSortingFiltering=false), under the `deletes/` subfolder which is purged upon Snowflake load
1. For each successful GCS write, record in the metadata database
1. Once the extract is complete, upload it to Snowflake, into `raw.deletes_tap_postgres` schema
1. `update` statement on the `is_deleted` column of the actual `raw.tap_postgres` table by comparing against the `deletes_tap_postgres` table that was just loaded. Upon successful update, drop `deletes_tap_postgres` table.


### Cadence of deletes
Currently, the deletes process begins running two days before the monthly dbt full refresh. The dbt full refresh runs on the first Sunday of the month.

The reason it runs 2 days before the dbt monthly refresh is that the `dbt full refresh` is the only way for the `is_deleted` values to be propagated to downstream dbt models. 

Normally, for incremental models, any new changes would be picked up based on the `updated_at` field. However, when a record is marked `is_deleted=True`, the `updated_at` field is not updated. Thus a full-refresh must be used to update the `is_deleted` field downstream.

If we want the `is_deleted` field to be updated more frequently, then we would need to run the full refresh more frequently as well.
