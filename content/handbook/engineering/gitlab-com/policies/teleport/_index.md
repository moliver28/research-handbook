---
title: "GitLab Teleport Access Policy"
controlled_document: true
---

## Purpose

To ensure an audited access to our terminal/CLI tools like [Database Access](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/teleport/Connect_to_Database_Console_via_Teleport.md) and [Rails Console](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/teleport/Connect_to_Rails_Console_via_Teleport.md), GitLab uses Teleport.

## Scope

The Teleport Access policy applies to all systems within our production environment that require a terminal or CLI access.

## Roles & Responsibilities

| Role | Responsibility |
| --- | --- |
| GitLab Team Members | Responsible for following the requirements in this policy |
| System Owners | Alignment to this policy |
| Code Owners | Responsible for approving changes and exceptions to this policy |

## Procedure

- Teleport access is managed through [Okta](https://handbook.gitlab.com/handbook/business-technology/okta/) and is provided as part of a role's baseline group assignment or through an [access request](https://about.gitlab.com/handbook/business-technology/team-member-enablement/onboarding-access-requests/access-requests/) with appropriate approval
- Teleport Audit Logs must be retained for a defined period of 1 year
- Teleport Audit Logs must not be modified and or deleted before the defined time of 1 year
- Access to Teleport Audit log data must be limited based on the principle of least privilege

## Exceptions

Exceptions to this policy will be tracked as per the [Information Security Policy Exception Management Process](https://handbook.gitlab.com/handbook/security/#information-security-policy-exception-management-process)

## References

- [What is considered production](https://gitlab.com/gitlab-com/gl-security/security-assurance/sec-compliance/compliance/-/blob/master/production_definition.md)
- [Production Architecture](/handbook/engineering/infrastructure/production/architecture/)
- [Runbook: How to connect to a Database console using Teleport](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/teleport/Connect_to_Database_Console_via_Teleport.md)
- [Runbook:  How to connect to a Rails Console using Teleport](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/teleport/Connect_to_Rails_Console_via_Teleport.md)
- [Teleport](https://goteleport.com/docs/)
