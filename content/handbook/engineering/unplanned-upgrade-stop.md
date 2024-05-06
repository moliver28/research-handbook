---
title: Unplanned Upgrade Stop Workflow
---

Unplanned upgrade stop is disruptive for customers as it requires to perform rollback and additional maintenance work for performing the upgrade. Unplanned stop should be treated as an incident. The process below outlines the different stages of the incident resolution process and the steps to be taken by the corresponding teams and Directly Responsible Individuals (DRIs).

High-level workflow:

1. **Detect unplanned upgrade stop**: Identify instances of unplanned upgrade stops.
2. **Resolve upgrade bug**: Backport the fix or update Upgrade path to include new stop.
3. **Perform Unplanned Upgrade Stop Root Cause Analysis**: Understand why the stop occurred and prevent future incidents.

## What is unplanned upgrade stop?

Unplanned upgrade stop is an error that requires an administrator to install a version of GitLab not on their [upgrade path](https://docs.gitlab.com/ee/update/index.html#upgrade-paths).

### Unplanned upgrade types

Root cause types for unplanned upgrade stops:

1. Database migration errors
    - Example: [Migration errors in 16.[012]](https://gitlab.com/gitlab-org/gitlab/-/issues/423895)
1. Configuration changes (component dependencies, deprecations, GitLab configuration)
    - Example: component versions upgrade (PostgreSQL, Elasticsearch), configuration deprecations ([like Gitaly in 16.0](https://docs.gitlab.com/ee/update/versions/gitlab_16_changes.html#gitaly-configuration-structure-change)), component compatibility like [Redis in 16.8.0](https://docs.gitlab.com/ee/update/versions/gitlab_16_changes.html#1680)
1. Breaking functionality changes
    - Example: [15.1.0 migration from MD5 to SHA256](https://docs.gitlab.com/ee/update/versions/gitlab_15_changes.html#1510)

### Unplanned upgrade severity

Severity of the unplanned upgrade stop by customer impact:

1. Upgrade errors which require to introduce the new upgrade stop - can't be fixed/backported - `~"severity::1"`
   - Example: [16.[012] unplanned upgrade stop](https://gitlab.com/gitlab-org/gitlab/-/issues/423895)
2. Upgrade errors that doesn't result in introducing new required stop - can be fixed / backported - `~"severity::2"`
   - Example: [16.10 migration error with backported fix](https://gitlab.com/gitlab-org/gitlab/-/issues/451760)
3. Upgrade errors that doesn't result in introducing new required stop and have minimum customer impact -`~"severity::3"` / `~"severity::4"`
   - Example: [issue#448948](https://gitlab.com/gitlab-org/gitlab/-/issues/448948#note_1842489335) when customer experienced upgrade error due to migrating GitLab instance using backup/restore


## Unplanned upgrade stop Detection

_(DRI: Support team or the team/individual detecting the issue)_

1. Create an issue with [Bug template](https://gitlab.com/gitlab-org/gitlab/-/blob/master/.gitlab/issue_templates/Bug.md?ref_type=heads) for the error (if not already created by customer)
1. Raise [Unplanned upgrade stop RCA issue](https://gitlab.com/gitlab-org/gitlab/-/blob/master/.gitlab/issue_templates/rca_upgrade_stop.md) with brief summary, customer impact and detection
1. Assign the RCA issue to PM or EM of Engineering team owning the bug
1. Post in the [#f_gitlab_upgrades](https://gitlab.enterprise.slack.com/archives/C04FXB5CP08) Slack channel

## Unplanned upgrade stop Resolution

_(DRI: To be identified by the Engineering Manager(EM) of the team owning the bug)_

1. EM to review severity and identify DRI for resolving the bug.
1. DRI to work on resolving the bug as quickly as possible. The first priority is to find a fix.
1. DRI to update the bug with workaround to unblock the customer if applicable.
1. DRI to identify if fix can be backported. If backporting is not possible, collaborate with the Distribution team to update the upgrade path and include the unplanned stop for immediate resolution.
1. EM to identify DRI for performing Unplanned upgrade stop RCA.
1. RCA DRI performs Root Cause Analysis and raises corrective actions.
1. RCA DRI collaborate with Test Platform on test coverage analysis and raise corrective actions.
1. EM to prioritize corrective actions by following [GitLab Priority label](infrastructure/engineering-productivity/issue-triage/#priority) guidelines for RCA severity.


## Metrics

Root Cause Analysis issues help to collect metrics for unplanned upgrade stops
and bring visibility into bugs severity and impact. List of all RCA for upgrades can be found
[in the GitLab project's issues by the `~RCA` and `~upgrades` label](https://gitlab.com/gitlab-org/gitlab/-/issues/?sort=created_date&state=all&label_name%5B%5D=RCA&label_name%5B%5D=upgrades&first_page_size=20).
