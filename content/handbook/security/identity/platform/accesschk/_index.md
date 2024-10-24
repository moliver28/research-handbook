---
title: "Access Check (accesschk)"
description: "Access Check (accesschk) is a separate pipeline from Access Control (accessctl) that focuses on evidence collection of the current state of users and configuration for each compliance in-scope system. This pipeline automates the extract-transform-load (ETL) process for (e)xtracting/fetching data from the API, formatting/(t)ransforming it into a CSV and JSON datestamped file, and loading it into a GitLab repository for analysis and reference by audit and compliance users."
---

{{% alert title="Not Live Yet" color="warning" %}}
You are viewing a preview of documentation for the future state of GitLab Identity v3 (mid 2024). See the <a href="https://handbook.gitlab.com/handbook/security/access-management-policy">Access Management Policy</a> for the GitLab Identity v2 current state with baseline entitlements and access requests. See the roadmap in the <a href="https://gitlab.com/groups/gitlab-com/gl-security/identity/eng/-/roadmap?state=all&sort=start_date_asc&layout=QUARTERS&timeframe_range_type=THREE_YEARS&group_path=gitlab-com/gl-security/identity/eng&progress=WEIGHT&show_progress=true&show_milestones=false&milestones_type=ALL&show_labels=true">epics gantt chart</a>.
{{% /alert %}}

{{% alert title="Not the documentation you are looking for?" color="info" %}}
You are viewing the `accesschk` engineering deep-dive architecture for audit and compliance evidence collection. We have `accessctl` engineering architecture documentation for <a href="/handbook/security/identity/platform">policy management and automated provisioning</a>. We also have a getting started guide for <a href="/handbook/security/identity/guide/audit">auditors</a>, <a href="/handbook/security/identity/guide/change-mgmt">change management</a>, and <a href="/handbook/security/identity/guide/app">tech stack application system owners</a>.
{{% /alert %}}

{{% alert title="Work in Progress" color="danger" %}}
This page is a work-in-progress. Please check back later for up-to-date details.
{{% /alert %}}

## CI/CD Pipeline Overview

```mermaid
graph LR

subgraph accesschk GitLab Repositories
direction LR
subgraph accesschk-evidence Repo
direction LR
end
end

subgraph accesschk GitLab CI/CD Pipeline Jobs
direction LR
subgraph Okta API
CI_AUDIT_OKTA_USER_JOB["Okta Users Job<br />chk:okta-users"]
CI_AUDIT_OKTA_APP_JOB["Okta Apps Job<br />chk:okta-apps"]
CI_AUDIT_OKTA_GROUP_JOB["Okta Groups Job<br />chk:okta-groups"]
CI_AUDIT_OKTA_POLICY_JOB["Okta Policies Job<br />chk:okta-policies"]
CI_AUDIT_OKTA_ADMIN_ROLES_JOB["Okta Admin Roles Job<br />chk:okta-admin-roles"]
CI_AUDIT_OKTA_SETTING_JOB["Okta Settings Job<br />chk:okta-settings"]
end
subgraph Google Workspace Directory API
CI_AUDIT_GOOGLE_USER_JOB["Google Users Job<br />chk:google-users"]
CI_AUDIT_GOOGLE_ADMIN_ROLES_JOB["Google Admin Roles Job<br />chk:google-admin-roles"]
CI_AUDIT_GOOGLE_GROUP_JOB["Google Groups Job<br />chk:google-groups"]
CI_AUDIT_GOOGLE_CHROME_JOB["Google Chrome Policies Job<br />chk:google-chrome"]
CI_AUDIT_GOOGLE_ORG_UNIT_JOB["Google Org Units Job<br />chk:google-org-units"]
end
subgraph Google Cloud Resource Manager and IAM API
CI_AUDIT_GCP_ORGS_JOB["Google Cloud Organizations Job<br />chk:gcp-organizations"]
CI_AUDIT_GCP_FOLDERS_JOB["Google Cloud Folders Job<br />chk:gcp-folders"]
CI_AUDIT_GCP_PROJECTS_JOB["Google Cloud Projects Job<br />chk:gcp-projects"]
CI_AUDIT_GCP_SERVICE_ACCOUNTS_JOB["Google Cloud Service Accounts Job<br />chk:gcp-service-accounts"]
CI_AUDIT_GCP_BILLING_ACCOUNTS_JOB["Google Cloud Billing Accounts Job<br />chk:gcp-billing-accounts"]
end
subgraph GitLab.com SaaS API
CI_AUDIT_GITLAB_SAAS_GROUP_JOB["GitLab SaaS Groups Job<br />chk:gitlab-saas-groups"]
CI_AUDIT_GITLAB_SAAS_PROJECTS_JOB["GitLab SaaS Projects Job<br />chk:gitlab-saas-projects"]
CI_AUDIT_GITLAB_SAAS_ADMIN_JOB["GitLab SaaS Admin Roles Job<br />chk:gitlab-saas-admins"]
end
subgraph GitLab Self-Managed Instance API
CI_AUDIT_GITLAB_SELF_GROUP_JOB["GitLab Self-Managed Groups Job<br />chk:gitlab-self-groups"]
CI_AUDIT_GITLAB_SELF_PROJECTS_JOB["GitLab Self-Managed Projects Job<br />chk:gitlab-self-projects"]
CI_AUDIT_GITLAB_SELF_ADMIN_JOB["GitLab Self-Managed Admin Roles Job<br />chk:gitlab-self-admins"]
end
end
```
