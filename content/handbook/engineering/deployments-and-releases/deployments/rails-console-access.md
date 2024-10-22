---
title: "Rails Console Access"
---

## Policy on Rails Console Usage in Production and Staging

### Purpose

To ensure the stability, security, and auditability of GitLab

### Scope

This policy applies to all GitLab deployment environments such as GitLab.com and Dedicated and to all users in those environments

### Policy

Access to the [GitLab Rails Console](https://docs.gitlab.com/ee/administration/operations/rails_console.html) is intended as a measure of last resort. 

1. Read-only rails console permissions are appropriate for critical debugging scenarios where no alternative method is available
2. Making changes through the rails console is prohibited
3. All production changes must be implemented through version-controlled code deployments or chatops. This ensures that those changes are traceable, reproducible, and testable.

### Exceptions to this policy

In some exceptional scenarios, such as critical production outages impacting customers, temporary authorization to make changes via the rails console may be requested. To do so, you must get the approval of the current EOC in addition to either an Infrastructure Manager or IMOC. After the immediate need has passed, actions taken in the console should be translated into code changes and deployed through the standard release process to ensure a permanent and auditable fix. 
