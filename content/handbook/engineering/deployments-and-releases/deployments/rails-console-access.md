---
title: "Rails Console Access"
---

## Policy on Rails Console Usage in Production and Staging

### Purpose

To ensure the stability, security, and auditability of GitLab

### Scope

This policy applys to all GitLab deployment environments such as GitLab.com and Dedicated and to all users in those environments

### Policy

Access to the [GitLab Rails Console](https://docs.gitlab.com/ee/administration/operations/rails_console.html) is intended as a measure of last resort. 

1. Read-only persmissions are appropriate for critical debugging scenerios where no alternative method is available
2. Making changes through the rails console is prohibited
3. All production changes must be imnplemented through version-controlled code deployments. This ensures that those changes are tracable, reproducable, and testable.

### Exceptions to this policy

In some exceptional scenerios, such as critical production outages impacting customers, temporary authorization to make changes via the rails console may be requested. To do so, you must get the approval of the current EOC in addition to either an Infrastructure Manager or IMOC. After the immediate need has passed, actions taken in the console should be translated into code changes and deployed through the standard release process to ensure a permanent and auditable fix. 