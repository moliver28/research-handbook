---
title: "Alert Playbook Management"
---

## Purpose

This page is meant to be a resource when writing playbooks dealing with alerts. 

## Guidelines

- Create playbooks in the relevent service directory under `/alerts/` such as `docs/<service name>/alerts/` in the [Runbooks Repo](https://gitlab.com/gitlab-com/runbooks)
- Condense alerts into a single playbook when the difference between alert names is only a suffix with a header line indicating that the playbook covers multiple alerts.
  - For example, `WALGBaseBackupDelayed` and `WALGBaseBackupFailed` are combined into one playbook named [`WALGBaseBackup`](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/patroni/alerts/walgBaseBackup.md)
 