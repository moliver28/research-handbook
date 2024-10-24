---
title: "Identity Platform Okta Provisioning"
description: ""
---

{{% alert title="Not Live Yet" color="warning" %}}
You are viewing a preview of documentation for the future state of GitLab Identity v3 (mid 2024). See the <a href="https://handbook.gitlab.com/handbook/security/access-management-policy">Access Management Policy</a> for the GitLab Identity v2 current state with baseline entitlements and access requests. See the roadmap in the <a href="https://gitlab.com/groups/gitlab-com/gl-security/identity/eng/-/roadmap?state=all&sort=start_date_asc&layout=QUARTERS&timeframe_range_type=THREE_YEARS&group_path=gitlab-com/gl-security/identity/eng&progress=WEIGHT&show_progress=true&show_milestones=false&milestones_type=ALL&show_labels=true">epics gantt chart</a>.
{{% /alert %}}

{{% alert title="GitOps Architecture and Approval Rules" color="info" %}}
This page is specific to the Okta groups and users configuration. You may also be interested in the <a href="/handbook/security/identity/gitops/okta">Okta GitOps Terraform architecture</a> for applications and settings configuration and <a href="/handbook/security/identity/approvals">merge request approvals</a> documentation.
{{% /alert %}}

## Pipeline Overview

```mermaid
graph LR

subgraph accessctl GitLab Repositories
direction LR
subgraph accessctl-policies Repo
direction TB
REPO_INV_POLICIES_ROLES[("policies/role/{kingdom}.yml")]
REPO_INV_POLICIES_OU[("policies/ou/{kingdom}.yml")]
end
subgraph accessctl-inventory Repo
direction LR
subgraph manifests
direction TB
REPO_INV_MANIFESTS_USERS[("manifests/users/<br />users.yml/json/csv")]:::sky
REPO_INV_MANIFESTS_ATTRIBUTES[("manifests/attributes/<br />{attribute}.yml/json/csv")]
REPO_INV_MANIFESTS_ROLE[("manifests/roles/<br/>{role}.yml/json/csv")]:::sky
REPO_INV_MANIFESTS_OU[("manifests/ou/<br />{ou}.yml/json/csv")]:::sky
end
subgraph auditlog
direction TB
REPO_INV_CHANGELOG_USERS_ONBOARDING[("auditlog/users/<br />onboarding.yml/json/csv")]
REPO_INV_CHANGELOG_USERS_OFFBOARDING[("auditlog/users/<br />offboarding.yml/json/csv")]
REPO_INV_CHANGELOG_USERS_CHANGES[("auditlog/users/<br />attributes.yml/json/csv")]
REPO_INV_CHANGELOG_ATTRIBUTE[("auditlog/attribute/<br />{attribute}.yml/json/csv")]
REPO_INV_CHANGELOG_ROLE[("auditlog/role/<br />{role}.yml/json/csv")]
REPO_INV_CHANGELOG_OU[("auditlog/ou/<br />{ou}.yml/json/csv")]
end
end
end

subgraph accessctl GitLab CI/CD Pipeline Jobs
direction LR
subgraph Manifest Stage
direction LR
CI_MANIFEST_USER_JOB[["Stage 1.1<br />Users Job<br/>CLI manifest:users"]]
CI_MANIFEST_ROLE_JOB[["Stage 1.2<br />Roles Job<br />CLI manifest:roles"]]
CI_MANIFEST_GROUP_JOB[["Stage 1.3<br />Org Units Job<br/>CLI manifest:ou"]]
end
subgraph Auditlog Stage
direction LR
CI_CHANGELOG_USER_JOB[["Stage 2.1<br />Users Job<br/>CLI auditlog:users"]]
CI_CHANGELOG_ATTRIBUTE_JOB[["Stage 2.2<br />Attributes Job<br/>CLI auditlog:attributes"]]
CI_CHANGELOG_ROLE_JOB[["Stage 2.3<br />Roles Job<br/>CLI auditlog:roles"]]
CI_CHANGELOG_GROUP_JOB[["Stage 2.4<br />Org Units Job<br/>CLI auditlog:ou"]]
end
subgraph Provisioning Stage
direction LR
subgraph Okta API
CI_PROVISIONING_OKTA_USER_JOB["Stage 3.1<br />Okta Users Job<br />provision:okta-users"]:::orange
CI_PROVISIONING_OKTA_GROUP_JOB["Stage 3.2<br />Okta Groups Job<br />provision:okta-groups"]:::orange
end
subgraph Google Workspace Directory API
CI_PROVISIONING_GOOGLE_GROUP_JOB["Stage 3.3<br />Google Groups Job<br />provision:google-groups"]
end
subgraph GitLab.com SaaS API
CI_PROVISIONING_GITLAB_SAAS_GROUP_JOB["Stage 3.4<br />GitLab SaaS Groups Job<br />provision:gitlab-saas-groups"]
end
subgraph GitLab Self-Managed Instance API
CI_PROVISIONING_GITLAB_SELF_GROUP_JOB["Stage 3.5<br />GitLab Self-Managed Groups Job<br />provision:gitlab-self-groups"]
end
end

CI_MANIFEST_USER_JOB --> CI_MANIFEST_ROLE_JOB --> CI_MANIFEST_GROUP_JOB
CI_CHANGELOG_USER_JOB --> CI_CHANGELOG_ATTRIBUTE_JOB --> CI_CHANGELOG_ROLE_JOB --> CI_CHANGELOG_GROUP_JOB
CI_PROVISIONING_OKTA_USER_JOB --> CI_PROVISIONING_OKTA_GROUP_JOB --> CI_PROVISIONING_GOOGLE_GROUP_JOB --> CI_PROVISIONING_GITLAB_SAAS_GROUP_JOB --> CI_PROVISIONING_GITLAB_SELF_GROUP_JOB

click CI_MANIFEST_USER_JOB "/handbook/security/identity/platform/manifests" "View Details"
click CI_MANIFEST_ROLE_JOB "/handbook/security/identity/platform/manifests" "View Details"
click CI_MANIFEST_GROUP_JOB "/handbook/security/identity/platform/manifests" "View Details"
click CI_CHANGELOG_USER_JOB "/handbook/security/identity/platform/auditlog" "View Details"
click CI_CHANGELOG_ATTRIBUTE_JOB "/handbook/security/identity/platform/auditlog" "View Details"
click CI_CHANGELOG_ROLE_JOB "/handbook/security/identity/platform/auditlog" "View Details"
click CI_CHANGELOG_GROUP_JOB "/handbook/security/identity/platform/auditlog" "View Details"
click CI_PROVISIONING_OKTA_USER_JOB "/handbook/security/identity/platform/provisioning/okta" "View Details"
click CI_PROVISIONING_OKTA_GROUP_JOB "/handbook/security/identity/platform/provisioning/okta" "View Details"
click CI_PROVISIONING_GOOGLE_GROUP_JOB "/handbook/security/identity/platform/provisioning/google" "View Details"
click CI_PROVISIONING_GITLAB_SAAS_GROUP_JOB "/handbook/security/identity/platform/provisioning/gitlab" "View Details"
click CI_PROVISIONING_GITLAB_SELF_GROUP_JOB "/handbook/security/identity/platform/provisioning/gitlab" "View Details"

classDef slate fill:#cbd5e1,stroke:#475569,stroke-width:1px;
classDef red fill:#fca5a5,stroke:#dc2626,stroke-width:1px;
classDef orange fill:#fdba74,stroke:#ea580c,stroke-width:1px;
classDef yellow fill:#fcd34d,stroke:#ca8a04,stroke-width:1px;
classDef emerald fill:#6ee7b7,stroke:#059669,stroke-width:1px;
classDef cyan fill:#67e8f9,stroke:#0891b2,stroke-width:1px;
classDef sky fill:#7dd3fc,stroke:#0284c7,stroke-width:1px;
classDef violet fill:#c4b5fd,stroke:#7c3aed,stroke-width:1px;
classDef fuchsia fill:#f0abfc,stroke:#c026d3,stroke-width:1px;
end
```

## CI/CD Job Workflows for Okta

```mermaid
graph TB

subgraph Identity GitLab Repositories
subgraph accessctl-inventory Repo
direction TB
REPO_INV_MANIFESTS_USERS[("manifests/users/<br />users.yml/json/csv")]:::sky
REPO_INV_MANIFESTS_ROLES[("manifests/roles/<br />{role}.yml/json/csv")]:::sky
REPO_INV_MANIFESTS_OU[("manifests/ou/<br />{ou}.yml/json/csv")]:::sky
end
end

subgraph Identity Platform CI/CD Provisioning State Scripts
direction LR

CI_USER_JOB["Stage 3.1<br />Okta Users Job<br />provision:okta-users"]:::orange
CI_GROUP_JOB["Stage 3.2<br />Okta Groups Job<br />provision:okta-groups"]:::orange

CI_USER_PARSE_API[(Get All Users<br/>from Okta API)]
CI_USER_CHECK_ROLE{{Compare user manifest<br />with API results to check for<br />rbac_role differences}}
CI_USER_UPDATE_API[[Update Okta users with<br />updated rbac_role attribute]]:::violet
CI_USER_JOB --> CI_USER_PARSE_API
CI_USER_PARSE_API --> CI_USER_CHECK_ROLE
CI_USER_CHECK_ROLE --> CI_USER_UPDATE_API

CI_GROUP_JOB --> CI_GROUP_PARSE_MANIFEST
CI_GROUP_PARSE_MANIFEST[(Parse Manifest)]
CI_GROUP_PARSE_API[(Get rbac_* groups from Okta API)]

CI_GROUP_CHECK_EXISTS{{Check if group exists}}
CI_GROUP_CREATE_GROUP[[Create group]]:::violet
CI_GROUP_DELETE_GROUP[[Delete group]]:::violet
CI_GROUP_CHECK_USERS{{Check if manifest users exist in Okta Group Users API}}
CI_GROUP_CREATE_USER[[Attach user to group<br />if does not exist]]:::violet
CI_GROUP_DELETE_USER[[Detach user from group<br />if no longer in policy]]:::violet
CI_GROUP_LOG_S3{{Create Audit Log entry in S3 bucket}}:::red
CI_GROUP_AUDIT{{Audit Transaction<br />REST API Call to accessctl<br />for automation workflows}}:::red
end


subgraph Identity SaaS Vendor Services
direction LR
subgraph Okta GitLab Tenant
IDENTITY_VENDOR_OKTA_API_USERS[("Okta Users")]
IDENTITY_VENDOR_OKTA_API_GROUPS[("Okta Groups")]
IDENTITY_VENDOR_OKTA_API_GROUP_USERS[("Okta Group Users")]
IDENTITY_VENDOR_OKTA_API_ENDPOINT[("Okta API<br />https://gitlab.okta.com/api/v1")]
IDENTITY_VENDOR_OKTA_API_ENDPOINT --> IDENTITY_VENDOR_OKTA_API_USERS
IDENTITY_VENDOR_OKTA_API_ENDPOINT --> IDENTITY_VENDOR_OKTA_API_GROUP_USERS
IDENTITY_VENDOR_OKTA_API_ENDPOINT --> IDENTITY_VENDOR_OKTA_API_GROUPS
IDENTITY_VENDOR_OKTA_API_USERS -.- IDENTITY_VENDOR_OKTA_API_GROUP_USERS
IDENTITY_VENDOR_OKTA_API_GROUPS -.- IDENTITY_VENDOR_OKTA_API_GROUP_USERS
end
end

CI_GROUP_PARSE_MANIFEST --> CI_GROUP_PARSE_API
CI_GROUP_PARSE_API --> CI_GROUP_CHECK_EXISTS
CI_GROUP_CHECK_EXISTS --> CI_GROUP_CREATE_GROUP
CI_GROUP_CREATE_GROUP ---> IDENTITY_VENDOR_OKTA_API_ENDPOINT
CI_GROUP_CHECK_EXISTS --> CI_GROUP_CHECK_USERS
CI_GROUP_CHECK_EXISTS --> CI_GROUP_DELETE_GROUP
CI_GROUP_CREATE_GROUP --> CI_GROUP_CHECK_USERS
CI_GROUP_DELETE_GROUP --> CI_GROUP_CHECK_USERS
CI_GROUP_CREATE_USER ----> IDENTITY_VENDOR_OKTA_API_ENDPOINT
CI_GROUP_CHECK_USERS --> CI_GROUP_CREATE_USER
CI_GROUP_CHECK_USERS --> CI_GROUP_DELETE_USER
CI_GROUP_CREATE_USER --> CI_GROUP_LOG_S3
CI_GROUP_DELETE_USER --> CI_GROUP_LOG_S3
CI_GROUP_LOG_S3 --> CI_GROUP_AUDIT
CI_USER_UPDATE_API ----> IDENTITY_VENDOR_OKTA_API_ENDPOINT
CI_GROUP_DELETE_GROUP ---> IDENTITY_VENDOR_OKTA_API_ENDPOINT
CI_GROUP_DELETE_USER ---> IDENTITY_VENDOR_OKTA_API_ENDPOINT
REPO_INV_MANIFESTS_USERS --> CI_USER_JOB
REPO_INV_MANIFESTS_ROLES --> CI_GROUP_JOB
REPO_INV_MANIFESTS_OU --> CI_GROUP_JOB

classDef slate fill:#cbd5e1,stroke:#475569,stroke-width:1px;
classDef red fill:#fca5a5,stroke:#dc2626,stroke-width:1px;
classDef orange fill:#fdba74,stroke:#ea580c,stroke-width:1px;
classDef yellow fill:#fcd34d,stroke:#ca8a04,stroke-width:1px;
classDef emerald fill:#6ee7b7,stroke:#059669,stroke-width:1px;
classDef cyan fill:#67e8f9,stroke:#0891b2,stroke-width:1px;
classDef sky fill:#7dd3fc,stroke:#0284c7,stroke-width:1px;
classDef violet fill:#c4b5fd,stroke:#7c3aed,stroke-width:1px;
classDef fuchsia fill:#f0abfc,stroke:#c026d3,stroke-width:1px;
```
