---
title: Unplanned Upgrade Stop Workflow
---

Unplanned upgrade stop is disruptive for customers as it requires to perform rollback and additional maintenance work for performing the upgrade. Unplanned stop should be treated as an incident. The process below outlines the different stages of the incident resolution process and the steps to be taken by the corresponding teams and Directly Responsible Individuals (DRIs).

High-level workflow:

1. **Detect unplanned upgrade stop**: Identify instances of unplanned upgrade stops.
2. **Resolve upgrade bug**: Backport the fix or update Upgrade path to include new stop.
3. **Perform Unplanned Upgrade Stop Root Cause Analysis**: Understand why the stop occurred and prevent future incidents.

## What is unplanned upgrade stop?

Unplanned upgrade stop is an upgrade error that was detected outside of recommended GitLab [upgrade path](https://docs.gitlab.com/ee/update/index.html#upgrade-paths).

## Unplanned upgrade stop Detection

_(DRI: Support team or the team/individual detecting the issue)_

1. Create an issue with [Bug template](https://gitlab.com/gitlab-org/gitlab/-/blob/master/.gitlab/issue_templates/Bug.md?ref_type=heads) for the error (if not already created by customer)
1. Raise [Unplanned upgrade stop RCA issue](https://gitlab.com/gitlab-org/gitlab/-/blob/master/.gitlab/issue_templates/rca_upgrade_stop.md) with brief summary, customer impact and detection
1. Assign the RCA issue to PM or EM of Engineering team owning the bug
1. Post in the [#f_gitlab_upgrades](https://gitlab.enterprise.slack.com/archives/C04FXB5CP08) Slack channel

## Unplanned upgrade stop Resolution

_(DRI: To be identified by the EM of the team owning the bug)_

1. EM to review severity and identify DRI for resolving the bug.
1. DRI to work on resolving the bug as quickly as possible. The first priority is to find a fix.
1. DRI to update the bug with workaround to unblock the customer if applicable.
1. DRI to identify if fix can be backported. If backporting is not possible, collaborate with the Distribution team to update the upgrade path and include the unplanned stop for immediate resolution.
1. EM to identify DRI for performing Unplanned upgrade stop RCA.
1. RCA DRI performs Root Cause Analysis and raises corrective actions.
1. RCA DRI collaborate with Test Platform on test coverage analysis and raise corrective actions.
1. EM to prioritize corrective actions by following [GitLab Priority label](infrastructure/engineering-productivity/issue-triage/#priority) guidelines for RCA severity.
