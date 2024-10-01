---
title: "Compliance Standards Adherence Scalability Review"
toc_hide: true
---

## Context

In https://gitlab.com/groups/gitlab-org/-/epics/13295+ we are delivering a new experience where customer can configure their own compliance requirements through compliance frameworks and then report and enforce those requirements through the adherence report and security policies.

To accommodate large-scale implementation of compliance frameworks (1000+ projects), we must prioritize scalability and ensure the feature remains performant even under heavy workloads.

Due to the configurability and importance of these features it is critical to ensure a smooth experience and adaptability of the features.

## Proposal

- Review and test the current DB ERD and review how the DB queries will scale for large groups (1000+ projects).
- Review the current ADRs and technical review.
- Review the effort it would take to add new controls.

## Feature Overview

- A **Compliance Framework** belongs to a **Namespace**
  - A **Framework** belongs to many **Projects** within a **Namespace**
  - A **Framework** has many **Requirements**
    - A **Requirement** is composed of a **Type** (internal or external) and **Control Expression**
      - A **Control Expression** defines the relevant setting or configuration to be checked

See [Design Details](./_index.md#design-details) for detailed ERD

## Compliance evaluation flow

_Given a namespace with two frameworks, from a high-level evaluation of a framework is performed using the following steps:_

1. A namespace setting is modified (worst case cascading and applicable to all Ultimate projects within said namespace)
1. Given _FrameworkA_, we must evaluate all projects associated to FrameworkA within the namespace
1. IDs of all associated projects are fetched and enqueued as batched background jobs to check each project's compliance status against FrameworkA's controls
1. Given _ProjectA_, within the background Sidekiq worker we fetch the project and associate data by ID.
    1. We iterate over FrameworkA's requirements to evaluate controls
    1. Entries within `project_compliance_configuration_status` are upserted with the results of the control evaluation
1. Given _FrameworkB_, we must evaluate all projects associated to FrameworkB within the namespace
1. IDs of all associated projects are fetched and enqueued as batched background jobs to check each project's compliance status against FrameworkB's controls
1. Given _ProjectA_, within the background Sidekiq worker we fetch the project and associate data by ID.
    1. We iterate over FrameworkB's requirements to evaluate controls
    1. Entries within `project_compliance_configuration_status` are upserted with the results of the control evaluation
1. Given _ProjectB_, within the background Sidekiq worker we fetch the project and associate data by ID.
    1. We iterate over FrameworkB's requirements to evaluate controls
    1. Entries within `project_compliance_configuration_status` are upserted with the results of the control evaluation

### Query plan validation

On modification of a project setting, using [feature branch](https://gitlab.com/gitlab-org/gitlab/-/compare/master...huzaifaiftikhar1_scalability_review_custom_controls).

#### 1. Retrieval of project IDs by associated framework

```rb
Project.includes(compliance_management_frameworks: :compliance_requirements).find(project_id)
```
Link to Database Lab query plan - https://console.postgres.ai/gitlab/gitlab-production-main/sessions/32134/commands/99301

<details><summary>query plan</summary>

```sql
SELECT
    "projects"."id",
    "projects"."name",
    "projects"."path",
    "projects"."description",
    "projects"."created_at",
    "projects"."updated_at",
    "projects"."creator_id",
    "projects"."namespace_id",
    "projects"."last_activity_at",
    "projects"."import_url",
    "projects"."visibility_level",
    "projects"."archived",
    "projects"."avatar",
    "projects"."merge_requests_template",
    "projects"."star_count",
    "projects"."merge_requests_rebase_enabled",
    "projects"."import_type",
    "projects"."import_source",
    "projects"."approvals_before_merge",
    "projects"."reset_approvals_on_push",
    "projects"."merge_requests_ff_only_enabled",
    "projects"."issues_template",
    "projects"."mirror",
    "projects"."mirror_last_update_at",
    "projects"."mirror_last_successful_update_at",
    "projects"."mirror_user_id",
    "projects"."shared_runners_enabled",
    "projects"."runners_token",
    "projects"."build_allow_git_fetch",
    "projects"."build_timeout",
    "projects"."mirror_trigger_builds",
    "projects"."pending_delete",
    "projects"."public_builds",
    "projects"."last_repository_check_failed",
    "projects"."last_repository_check_at",
    "projects"."only_allow_merge_if_pipeline_succeeds",
    "projects"."has_external_issue_tracker",
    "projects"."repository_storage",
    "projects"."repository_read_only",
    "projects"."request_access_enabled",
    "projects"."has_external_wiki",
    "projects"."ci_config_path",
    "projects"."lfs_enabled",
    "projects"."description_html",
    "projects"."only_allow_merge_if_all_discussions_are_resolved",
    "projects"."repository_size_limit",
    "projects"."printing_merge_request_link_enabled",
    "projects"."auto_cancel_pending_pipelines",
    "projects"."service_desk_enabled",
    "projects"."cached_markdown_version",
    "projects"."delete_error",
    "projects"."last_repository_updated_at",
    "projects"."disable_overriding_approvers_per_merge_request",
    "projects"."storage_version",
    "projects"."resolve_outdated_diff_discussions",
    "projects"."remote_mirror_available_overridden",
    "projects"."only_mirror_protected_branches",
    "projects"."pull_mirror_available_overridden",
    "projects"."jobs_cache_index",
    "projects"."external_authorization_classification_label",
    "projects"."mirror_overwrites_diverged_branches",
    "projects"."pages_https_only",
    "projects"."external_webhook_token",
    "projects"."packages_enabled",
    "projects"."merge_requests_author_approval",
    "projects"."pool_repository_id",
    "projects"."runners_token_encrypted",
    "projects"."bfg_object_map",
    "projects"."detected_repository_languages",
    "projects"."merge_requests_disable_committers_approval",
    "projects"."require_password_to_approve",
    "projects"."max_pages_size",
    "projects"."max_artifacts_size",
    "projects"."pull_mirror_branch_prefix",
    "projects"."remove_source_branch_after_merge",
    "projects"."marked_for_deletion_at",
    "projects"."marked_for_deletion_by_user_id",
    "projects"."autoclose_referenced_issues",
    "projects"."suggestion_commit_message",
    "projects"."project_namespace_id",
    "projects"."hidden",
    "projects"."organization_id"
FROM
    "projects"
WHERE
    "projects"."id" = 278964
```

```plaintext
--------------------------------------------------------------------------------------------------------------------------
 Index Scan using projects_pkey on projects  (cost=0.56..3.58 rows=1 width=823) (actual time=0.039..0.040 rows=1 loops=1)
   Index Cond: (id = 278964)
   Buffers: shared hit=5
 Planning:
   Buffers: shared hit=1497
 Planning Time: 4.005 ms
 Execution Time: 0.166 ms
(7 rows)
</details>

#### 2. Retrieval of Compliance Requirements for Project's Frameworks

Link to Database Lab query plan - https://console.postgres.ai/gitlab/gitlab-production-main/sessions/32134/commands/99300

<details><summary>Query plan</summary>

```sql
SELECT
    "compliance_requirements".*
FROM
    "compliance_requirements"
WHERE
    "compliance_requirements"."framework_id" IN (1020460, 1020461, 1020462, 1020463, 1020464)
```

```plaintext
QUERY PLAN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Index Scan using u_compliance_requirements_for_framework on compliance_requirements  (cost=0.14..4.53 rows=1 width=506) (actual time=0.023..0.048 rows=25 loops=1)
   Index Cond: (framework_id = ANY ('{1020460,1020461,1020462,1020463,1020464}'::bigint[]))
   Buffers: shared hit=14
 Planning:
   Buffers: shared hit=46
 Planning Time: 0.314 ms
 Execution Time: 0.086 ms
(7 rows)
```

</details>

#### 3A. For each requirement, evaluate control_expressions against project

Currently, each requirement can trigger queries depending on different controls used. Note that this doesn't trigger any query for controls that rely directly on project attributes.

```rb
req = frameworks.second.compliance_requirements.first

ComplianceManagement::ComplianceRequirement::QueryEvaluator.new(Gitlab::Json.parse(req.control_expression), project).evaluate
```

<details><summary>Query Plans</summary>

For `at_least_two_approvals` or any other control related to approval rule

Database Lab query plan - https://console.postgres.ai/gitlab/gitlab-production-main/sessions/32134/commands/99302

```sql
SELECT
    SUM(approvals_required)
FROM
    "approval_project_rules"
WHERE
    "approval_project_rules"."project_id" = 1
LIMIT 1
```

For `default_branch_protected`

Database Lab query plan - https://console.postgres.ai/gitlab/gitlab-production-main/sessions/32134/commands/99303

```sql
SELECT
    "protected_branches".*
FROM (
    SELECT
        "protected_branches".*
    FROM
        "protected_branches"
    WHERE
        "protected_branches"."project_id" = 1) protected_branches
```

Fetching namespace

Database Lab query plan - https://console.postgres.ai/gitlab/gitlab-production-main/sessions/32134/commands/99304

```sql
SELECT
    "namespaces"."id",
    "namespaces"."name",
    "namespaces"."path",
    "namespaces"."owner_id",
    "namespaces"."created_at",
    "namespaces"."updated_at",
    "namespaces"."type",
    "namespaces"."description",
    "namespaces"."avatar",
    "namespaces"."membership_lock",
    "namespaces"."share_with_group_lock",
    "namespaces"."visibility_level",
    "namespaces"."request_access_enabled",
    "namespaces"."ldap_sync_status",
    "namespaces"."ldap_sync_error",
    "namespaces"."ldap_sync_last_update_at",
    "namespaces"."ldap_sync_last_successful_update_at",
    "namespaces"."ldap_sync_last_sync_at",
    "namespaces"."description_html",
    "namespaces"."lfs_enabled",
    "namespaces"."parent_id",
    "namespaces"."shared_runners_minutes_limit",
    "namespaces"."repository_size_limit",
    "namespaces"."require_two_factor_authentication",
    "namespaces"."two_factor_grace_period",
    "namespaces"."cached_markdown_version",
    "namespaces"."project_creation_level",
    "namespaces"."runners_token",
    "namespaces"."file_template_project_id",
    "namespaces"."saml_discovery_token",
    "namespaces"."runners_token_encrypted",
    "namespaces"."custom_project_templates_group_id",
    "namespaces"."auto_devops_enabled",
    "namespaces"."extra_shared_runners_minutes_limit",
    "namespaces"."last_ci_minutes_notification_at",
    "namespaces"."last_ci_minutes_usage_notification_level",
    "namespaces"."subgroup_creation_level",
    "namespaces"."max_pages_size",
    "namespaces"."max_artifacts_size",
    "namespaces"."mentions_disabled",
    "namespaces"."default_branch_protection",
    "namespaces"."max_personal_access_token_lifetime",
    "namespaces"."push_rule_id",
    "namespaces"."shared_runners_enabled",
    "namespaces"."allow_descendants_override_disabled_shared_runners",
    "namespaces"."traversal_ids",
    "namespaces"."organization_id"
FROM
    "namespaces"
WHERE
    "namespaces"."type" = 'Group'
    AND "namespaces"."id" = 22
LIMIT 1
```

</details>

#### 3B. For each requirement, evaluate control_expressions against project

Alternatively, we can load all required tables initially with the project fetch and evaluate each control expression against in-memory values. This requires a larger initial query that may include attributes we are not utilizing but prevents additional and potentially redundant queries within evaluation of each Requirement's Controls.

#### 4. Persistence of project compliance status

After evaluating the control_expression to true/false we can insert the result in `project_compliance_configuration_status` which produces the following SQL

Link to Database Lab query plan - https://console.postgres.ai/gitlab/gitlab-production-main/sessions/32134/commands/99315

<details><summary>Queries</summary>

```sql
INSERT INTO "project_compliance_configuration_status" ("created_at", "updated_at", "project_id", "namespace_id", "compliance_requirement_id", "status")
    VALUES ('2024-09-27 20:28:14.097687', '2024-09-27 20:28:14.097687', 20, 31, 15, 1)
RETURNING
    "id"
```

</details>

#### 5. Rendering of Project Compliance Configuration Status dashboard

We need to fetch the rows from project_compliance_configuration_status table to display on the dashboard, these queries would be very similar to the existing query for fetching records from project_compliance_standards_adherence.

<details><summary>Queries</summary>

</details>

## Trigger conditions

There are two paths by which a framework evaluation will be enqueued: via setting modification or via time.

When a namespace setting is modified, jobs are enqueued to re-evaluate the namespace's frameworks against their applicable projects. Similarly, when a project setting is modified, a job is enqueued to re-evaluate the project against its applicable frameworks

In certain cases, a control expression must be evaluated on a recurring cadence; i.e. checking to ensure vulnerabilities are triaged within an anticipated SLO. In these cases the framework must trigger a re-evaluation frequently.

## Implementation of new controls

## Constraints

| Consideration | Constraint |
| ------ | ------ |
| Project applicability | Ultimate projects with associated Framework |
| Limit on frameworks per project | 5 |
| Limit on total requirements per framework | 5 |
| Limit on total controls per requirement | 5 |
| Limit on total fields per control expression | 5 |
| Allowed fields belonging to control expressions | Bounded allowlist tied to applicable schema |
| Control expressions query complexity| Fiels is non-user modifiable outside of configuration UI and subject to schema validation |
| Compliance validation frequency | 24hrs |

## References

- https://gitlab.com/gitlab-org/govern/compliance/general/-/issues/233+
- https://handbook.gitlab.com/handbook/engineering/architecture/design-documents/compliance-adherence-reporting/
