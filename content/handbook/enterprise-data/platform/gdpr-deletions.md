---
title: "GDPR deletions"
description: "Automated GDPR deletion proces"
---

### Supporting the GDPR process

Technical background on the process listed here: [Runbook](https://gitlab.com/gitlab-data/runbooks/-/blob/main/gdpr_deletions/gdpr_deletions.md)

A brief overview of the process:

```mermaid
graph LR
    A[Driveload_gdpr-delete-requests] --> B[dbt_gdpr_delete_requests] --> C[Tableau Report] --> D[Log_output.csv]
```

#### Driveload_gdpr-delete-requests

Standard Driveload process, looking for files in this [folder](https://drive.google.com/drive/folders/1mAvevVqr52leN6efsXY2wex5lDGL218-).

#### dbt_gdpr_delete_requests

Modified DBT DAG. There are two key things to note here:

1. Run operation macro: gdpr_bulk_delete
   - This macro reads in all the data provided in the Driveload process, and loops through one record at a time, running the gdpr_delete or gdpr_delete_gitlab_dotcom [macros](/handbook/enterprise-data/platform/dbt-guide/#snapshots-and-gdpr) (depending on what was provided in the Driveload file).
   - Additionally, after processing each row, this process **DELETES** the source record from the RAW.Driveload table. As this process is designed to remove all the data for an e-mail address, we cannot store the source records long term.
2. DAG params: --log-path gdpr_run_logs --log-format json
   - This provides a better format for the log outputs so that we don't have to manipulate strings to extract this data.
   - We also created a separate parsing path in `orchestration/upload_dbt_file_to_snowflake.py` to parse and upload this json data separately to the other type of DBT logs.
   - Finally, the --path parameter was created so that these logs are not mixed in with any of the general logs and so that we have a consistent format containing only the logs pertaining to the most recent run (this path is not persisted between runs)

#### Tableau report

Workbook, detailed here:

- Only thing to really note here is that the Data Source has a Custom SQL Query attached to it to try and filter out most of the unnecessary records from the batch.
  - The filter excludes a few fields and only returns runs which have more than 100 logged records. The reasoning here is that when the process runs without any Driveload input it creates 50-70 rows, when there was an input it is 250+, so this gives a clean exclusion on records we don't need.
- In the runbook, it is detailed that we use the Tableau downloader to extract the data, however, if this proves problematic, and you have SnowFlake access the data can also be extracted very easily through SnowFlake.
