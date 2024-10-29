---
title: "Security Realm"
description: "This realm is for the engineering security team to deploy shared and team-specific infrastructure resources."
---

### Quick links

- [Global infrastructure standards](/handbook/company/infrastructure-standards/)
- [Global labels and tags](/handbook/company/infrastructure-standards/labels-tags/)
- [Infrastructure policies](/handbook/company/infrastructure-standards/policies/)
- [Infrastructure helpdesk](/handbook/company/infrastructure-standards/helpdesk/)

## Overview

This realm is for the engineering security team to deploy shared and team-specific infrastructure resources.

{{% panel header="**Future Iteration with Engineering Infrastructure Handbook Pages**" header-bg="info" %}}
The [Engineering Infrastructure Environments handbook page](/handbook/engineering/infrastructure/environments/) is the current SSOT for environments. As the WIP initiative to iterate on our company-wide infrastructure standards evolves, the Engineering Infrastructure pages will be refactored incrementally as the standards are documented, implemented, and changes to environments take place.
{{% /panel %}}

### Access requests

To request access to a group, please see [group access request tutorial](/handbook/company/infrastructure-standards/tutorials/groups/access-request/).

> For email authenticity security reasons, only GitLab issues or Slack messages to owners or counterparts are allowed for infrastructure requests.

### Realm Owners

| Name                 | GitLab.com Handle       | Group Role       | Job Title                                       |
|----------------------|-------------------------|------------------|-------------------------------------------------|
| Marco Lancini        | `mlancini`              | Owner            | Staff Security Engineer - Infrastructure        |
| Paulo Martins        | `pmartinsgl`            | Counterpart      | Senior Security Engineer - Infrastructure       |
| James Ritchey     | `jritchey`      | Counterpart      | Sr. Manager, Product Security                  |

## Realm labels and tags

The [global labels/tags](/handbook/company/infrastructure-standards/labels-tags/) and [realm labels/tags](/handbook/company/infrastructure-standards/realms/security/labels-tags/) should be applied to each resource.

## Realm Groups

Each gl_dept_group has a shared GCP project and/or AWS account for group members.

If a group has not been implemented yet, please contact the realm owner for assistance. After a group is implemented, a separate handbook page is created with usage documentation.

| Group Name (AWS Account/GCP Project Name) | Usage Documentation (Empty cells are not implemented yet)                                                                       |
|-------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------|
| `eng-security-shared-infra`               | <!--[Group Docs](/handbook/company/infrastructure-standards/realms/eng-infra/groups/eng-security-shared-infra)-->                       |
| `eng-security-shared-services`            | <!--[Group Docs](/handbook/company/infrastructure-standards/realms/eng-infra/groups/eng-security-shared-services)-->                    |
| `eng-security-ops-red`                    | <!--[Group Docs](/handbook/company/infrastructure-standards/realms/eng-infra/groups/eng-security-ops-red)-->                            |
| `eng-security-ops-incident-response`      | <!--[Group Docs](/handbook/company/infrastructure-standards/realms/eng-infra/groups/eng-security-ops-incident-response)-->              |
| `eng-security-ops-trust-safety`           | <!--[Group Docs](/handbook/company/infrastructure-standards/realms/eng-infra/groups/eng-security-ops-trust-safety)-->                   |
| `eng-security-risk-compliance`            | <!--[Group Docs](/handbook/company/infrastructure-standards/realms/eng-infra/groups/eng-security-risk-compliance)-->                    |
| `eng-security-eng-app-sec`                | <!--[Group Docs](/handbook/company/infrastructure-standards/realms/eng-infra/groups/eng-security-eng-app-sec)-->                        |
| `eng-security-eng-automation`             | <!--[Group Docs](/handbook/company/infrastructure-standards/realms/eng-infra/groups/eng-security-eng-automation)-->                     |
| `eng-security-eng-research`               | <!--[Group Docs](/handbook/company/infrastructure-standards/realms/eng-infra/groups/eng-security-eng-research)-->                       |

## Usage guidelines

This is a placeholder for the realm owner to provide instructions on best practices and usage guidelines for this infrastructure.
