---
title: Labels and issue boards
description: Support Operations policies page for labels and issue boards
canonical_path: "/handbook/support/readiness/operations/docs/policies/labels_and_issue_boards"
---

## How we use GitLab Labels:

The Support Readiness-Operations team uses labels to help us categorize and manage our work.

We use labels to triage and categorize every issue created under our [Issue Tracker](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project). During issue creation, we use a specific issue template for each area we handle so that we can automatically add group labels and assignees based on our [division of responsibilities](https://handbook.gitlab.com/handbook/support/readiness/operations/division_of_responsibilities/).

We also use labels to categorize issues created under the [Support Team Meta project](https://gitlab.com/gitlab-com/support/support-team-meta) where Support Readiness involvement is needed.

The table below provides a summary of all labels used by the Support Readiness team, when they're used, as well as a brief description of the intent behind the label.

## Labels usage and description

| Label | Category | Used in | Description |
|:-----:|----------|---------|-------------|
| ~"Readiness::Triage" | Project stage | STM Issues and Issue Tracker Project | Used to track issues that are to be triaged and need to be qualified as requiring Support Readiness input.|
| ~"Readiness::Consulting" | Project stage | STM Issues and Issue Tracker Project | Used to track issues that require input and discussion from the Support Readiness team to determine feasibility of potential changes. |
| ~"Readiness::Scoping" | Project stage | STM Issues and Issue Tracker Project | Used to track issues that will require some change by the Support Readiness team. During this stage, Readiness will gather requirements and establish the scope of work to be done.|
| ~"Readiness::Planning" | Project stage | STM Issues and Issue Tracker Project | Used to track issues that the Support Readiness team are to undertake. During this stage, required resources will be identified and a schedule will be determined. |
| ~"Readiness::Development" | Project stage | STM Issues and Issue Tracker Project | Used to track issues that involve changes by Support Readiness that undergoing active development. |
| ~"Readiness::Deployment" | Project stage | STM Issues and Issue Tracker Project | Used to track issues that involve changes by Support Readiness that have been developed and have either been deployed or are awaiting the next deployment cycle. |
| ~"Readiness::Validation" | Project stage | STM Issues and Issue Tracker Project | Used to track issues that involve changes by Support Readiness that have been deployed and are now awaiting review/confirmation that the solution is as expected |
| ~"Readiness::Completed" | Project stage | STM Issues and Issue Tracker Project | Used to track issues that involve changes by Support Readiness. The solution has been successfully developed and validated by the requester and is now complete. |
| ~"SupportOps::To Do" | Progress Label | Issue Tracker Project | Support has not yet begun working the issue/MR |
| ~"SupportOps::Doing" | Progress Label | Issue Tracker Project | Support Ops is actively working the issue/MR |
| ~"SupportOps::Completed" | Progress Label | Issue Tracker Project | Support Ops has completed the issue/MR |
| ~"SupportOps::Blocked" | Progress Label | Issue Tracker Project | Support Ops is blocked from working the issue/MR |
| ~"SupportOps::Backlog" | Progress Label | Issue Tracker Project | Support Ops has determined the issue/MR is needed, but is not able to prioritize it at this time |
| ~"SupportOps::Triaged" | Progress Label |  Issue Tracker Project | The ticket has been triaged but still needs a progress label || ~"SupportOps::Needs Attention" | Group Label | Progress Label | Issue Tracker Project | The issue/MR is missing a progress label |
| ~"Support-Ops-Priority::Urgent" | Priority| Issue Tracker Project | This is a system critical issue. The expected SLO for this is 3 days |
| ~"Support-Ops-Priority::High" | Priority | Issue Tracker Project | The expected SLO for this is 7 days |
| ~"Support-Ops-Priority::Normal" | Priority | Issue Tracker Project | The expected SLO for this is 14 days |
| ~"Support-Ops-Priority::Low" | Priority | Issue Tracker Project | The expected SLO for this is 30 days |
| ~"Support-Ops-Priority::Missing" | Priority | Issue Tracker Project | It is missing a priority label |
| ~"Support-Ops-Category::Account Deletions" | Category | Issue Tracker Project | The issue/MR is about Account Deletions |
| ~"Support-Ops-Category::Agent Signatures" | Category | Issue Tracker Project | The issue/MR is about agent signatures |
| ~"Support-Ops-Category::Apps" | Category | Issue Tracker Project | The issue/MR is about Zendesk Apps |
| ~"Support-Ops-Category::Audit" | Category | Issue Tracker Project | The issue/MR is about Audits |
| ~"Support-Ops-Category::Automations" | Category | Issue Tracker Project | The issue/MR is about Automations |
| ~"Support-Ops-Category::Calendly" | Category | Issue Tracker Project | The issue/MR is about Calendly |
| ~"Support-Ops-Category::Documentation" | Category | Issue Tracker Project | The issue/MR is about Documentation |
| ~"Support-Ops-Category::Forms" | Category | Issue Tracker Project | The issue/MR is about Forms and Ticket Fields|
| ~"Support-Ops-Category::GitLab Projects" | Category | Issue Tracker Project | The issue/MR is about GitLab Projects that support ops maintains |
| ~"Support-Ops-Category::GitLab Settings" | Category | Issue Tracker Project | The issue/MR is about GitLab Settings that support-ops maintains |
| ~"Support-Ops-Category::Macros" | Category | Issue Tracker Project | The issue/MR is about macros |
| ~"Support-Ops-Category::Missing" | Category | Issue Tracker Project | It is missing a category label |
| ~"Support-Ops-Category::Orgs and Users" | Category | Issue Tracker Project | The issue/MR is about organizations and users |
| ~"Support-Ops-Category::Other" | Category | Issue Tracker Project | A catchall |
| ~"Support-Ops-Category::Pagerduty" | Category | Issue Tracker Project | The issue/MR is about Pagerduty |
| ~"Support-Ops-Category::Provisioning and Deprovisioning" | Category | Issue Tracker Project | The issue/MR is about provisioning/deprovisioning |
| ~"Support-Ops-Category::Shadowing" | Category | Issue Tracker Project | The issue/MR is about shadowing |
| ~"Support-Ops-Category::Sync" | Category | Issue Tracker Project | The issue/MR is about the ZD<>SFDC sync |
| ~"Support-Ops-Category::Theme" | Category |  Issue Tracker Project | The issue/MR is about Zendesk theme |
| ~"Support-Ops-Category::Triggers" | Category | Issue Tracker Project | The issue/MR is about Triggers |
| ~"Support-Ops-Category::Views" | Category | Issue Tracker Project | The issue/MR is about Views |
| ~"Support-Ops-Category::Zendesk Settings" | Category | Issue Tracker Project | The issue/MR is about Zendesk settings (SLAs, schedules, etc.) |
| ~"support-ops-change::1" | Change Level | Issue Tracker Project | To signify a Support Ops issue/MR is a change level 1 |
| ~"support-ops-change::2" | Change Level | Issue Tracker Project | To signify a Support Ops issue/MR is a change level 2 |
| ~"support-ops-change::3" | Change Level | Issue Tracker Project | To signify a Support Ops issue/MR is a change level 3 |
| ~"support-ops-change::4" | Change Level | Issue Tracker Project | To signify a Support Ops issue/MR is a change level 4 |
| ~"Zendesk::Global" | Zendesk Instance | Issue Tracker Project | This relates to the Zendesk Global instance |
| ~"Zendesk::US-Federal" | Zendesk Instance | Issue Tracker Project | This relates to the Zendesk US Federal instance |

## How we use issue boards

The Readiness [issue board](https://gitlab.com/gitlab-com/support/support-team-meta/-/boards/7261822) is based on the following project labels:

- ~"Readiness::Triage"
- ~"Readiness::Consulting"
- ~"Readiness::Scoping"
- ~"Readiness::Planning"
- ~"Readiness::Development"
- ~"Readiness::Deployment"
- ~"Readiness::Validation"
- ~"Readiness::Completed"

The issue board allows us to keep track of the various Support Team Meta issues we are involved in and gives an overview of the number of issues we have in each project stage.
