---
title: "Compliance Frameworks ADR 004: Compliance Adherence Checks"
---

## Context
We need to offer compliance tools to enable our customers to know if they adhere to certain rules, standards,
regulations, and guidelines. For this we need to create compliance adherence checks within GitLab that can be related
to the software development standards in the industry.

## Approach

We thought of the following approaches for creating the concept of compliance adherence checks within GitLab:

### Use Audit Events as Compliance Adherence Checks

1. In this approach we planned to directly use the existing Audit Events that are stored in the database as compliance
adherence checks.
1. As an example, consider that a setting like Merge Request Approval Settings to prevent approval by merge request
author is enabled. This means that we have ensured that a merge request author cannot approve their own merge request.
1. On the compliance standards adherence dashboard, we planned to directly fetch the last audit event related to that
compliance check and would display the compliance status accordingly.
1. To further understand this, let us assume that we have a compliance check called "Prevent approval by merge request
authors". We would query the audit events table to get the latest audit event that updated the merge request approval
settings to prevent approval by merge request author.
1. This approach had certain advantages:
   1. No need for creating new database tables for storing compliance adherence checks.
   1. Audit events serving as the single source of truth for adherence to compliance standards.
1. However, this approach also had certain disadvantages:
   1. Currently, querying audit events table is already quite slow because of the large size of the database.
   1. Not all the audit events are stored consistently, hence we would need to parse the JSON column `details` of the
   `audit_events` table to get the details of the event.
   1. Due to the above reasons, this approach would result in poor performance in terms of loading the compliance
   standards dashboard.

### Use Audit Events as trigger points for creating Compliance Adherence Checks

1. In this approach we planned to create a separate database table for storing the results of compliance adherence
checks.
1. The status of these compliance adherence checks would be derived from the audit events via database triggers or
Active Record callbacks.
1. Whenever a new audit event is created, we would check if that audit event is associated to a compliance adherence
check that we need to capture. We would create or update its status in the database accordingly.
1. This approach had certain advantages:
   1. No need to query the audit events database table as the approach is event based.
   1. Audit events serving as the single source of truth for adherence to compliance standards.
   1. Increase code readability as the logic for creating compliance adherence checks would be at a single place.
1. However, this approach also had certain disadvantages:
   1. We would have to write separate logic for handling streaming only audit events as these audit events are not
   stored in the database and therefore the hooks won't get triggered for such audit events.
   1. In case of any changes in the existing business logic to audit events will also require changes to the compliance
   adherence checks.
   1. We also plan to [move audit events to ClickHouse](https://gitlab.com/groups/gitlab-org/-/epics/10241) which might
   require re-work on this feature as we don't know how callbacks or database triggers would work after the migration
   to ClickHouse.

### Use Sidekiq workers for creating and updating Compliance Adherence Checks

1. In this approach we completely decoupled audit events with the compliance adherence checks. The compliance adherence
checks would get created via Sidekiq workers in the background.
1. These workers would get enqueued whenever a related setting is toggled.
1. As an example, let us assume that we have a compliance check called "Prevent approval by merge request authors".
We would enqueue the Sidekiq worker responsible for creating compliance adherence checks whenever the setting
related to merge request approvals is updated.
1. The sidekiq worker would fetch the updated value of merge request approval setting in the background and would
create or update the result of this compliance adherence check for the given project in the database.
1. This is a modular approach thus allowing us to modify the business logic independently.

## Decision

1. The decision was made to use sidekiq workers for creating results of compliance adherence checks for a project.
1. The database table for storing the results is `project_compliance_standards_adherence` and has the following
schema:
    ```mermaid
    classDiagram
        class project_compliance_standards_adherence
        project_compliance_standards_adherence : id bigint
        project_compliance_standards_adherence : created_at timestamp
        project_compliance_standards_adherence : updated_at timestamp
        project_compliance_standards_adherence : project_id bigint
        project_compliance_standards_adherence : namespace_id bigint
        project_compliance_standards_adherence : check_name smallint
        project_compliance_standards_adherence : status smallint
        project_compliance_standards_adherence : standard smallint
    ```
1. `check_name` is Enum and contains values like "prevent_approval_by_merge_request_author",
"prevent_approval_by_merge_request_committers", "at_least_two_approvals", etc.
1. `standard` column contains the name of the standard to which the check belong to, like SOC2, GitLab standard, etc.
1. `status` can have values "success" or "fail" denoting the status of that compliance adherence check for a project.
1. This table is used to display the status of compliance adherence checks for projects on the compliance
adherence dashboard.
