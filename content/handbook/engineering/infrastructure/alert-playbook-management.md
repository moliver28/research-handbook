---
title: "Alert Playbook Management"
---

## Purpose

This page is meant to be a resource when writing playbooks dealing with alerts. 

## Guidelines

- Create playbooks in the relevent service directory under `/alerts/` such as `docs/<service name>/alerts/` in the [Runbooks Repo](https://gitlab.com/gitlab-com/runbooks)
- Condense alerts into a single playbook when the difference between alert names is only a suffix with a header line indicating that the playbook covers multiple alerts.
  - For example, `WALGBaseBackupDelayed` and `WALGBaseBackupFailed` are combined into one playbook named [`WALGBaseBackup`](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/patroni/alerts/walgBaseBackup.md). The majority of the details will be the same, but the difference between "Delayed" and "Failed" need to be discussed.
- Update the links that are attached to the alerts. Alerts are defined in either the [mimir-rules-jsonnet](https://gitlab.com/gitlab-com/runbooks/-/tree/master/mimir-rules-jsonnet) or [mimir-rules](https://gitlab.com/gitlab-com/runbooks/-/tree/master/mimir-rules) directories in the Runbooks repo.
- When adding a new alert, the service owners adding the alert should create a playbook before the alert is added.
- After modifying an alert or playbook, you'll need to run `make generate` in the runbooks repo. Instructions on how to prepare the runbooks repo can be found in the [contributor onboarding in the README](https://gitlab.com/gitlab-com/runbooks/-/tree/master#contributor-onboarding).
- Reach out to the Production Engineering - Ops team in #g_infra_ops Slack channel if you need assistance.

## Important Links

- [Playbook Template](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/template-alert-playbook.md)
- [MR template for new playbooks](https://gitlab.com/gitlab-com/runbooks/-/blob/master/.gitlab/merge_request_templates/alert-playbook-template.md)
