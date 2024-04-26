---
title: Offboarding Automation Flow
description: "Information on the automations we have in place to support the People Connect Team with offboarding related tasks."
---

The People Group Engineering team aims to reduce as much manual work as possible. One of the areas we have done this, is everything related to the employment automation flow.

## Offboarding

Note: this section only discusses items in the offboarding where People Engineering was involved. You can read more about offboarding at GitLab on [this handbook page](/handbook/people-group/offboarding)

## Timeline Flow

```mermaid
graph TD
  A[Offboarding is logged into the tracker] --> |All offboardings| B
  A --> |When the offboarding is voluntary| G
  B[Offboarding issue is created, manager is assigned] --> C
  C[Offboarding merge request is created] --> D
  D[Team member is removed from gitlab-com and gitlab-org] --> G
  G[Informational email is sent to the departing team member] --> |2 days before departure| H
  H[Slack message is sent to the departing team member]
```

## Automations

### Voluntary offboarding email

When a team member voluntarily leaves GitLab, an email going over the offboarding interview and frequently asked questions is automatically sent to them.

The pipeline is scheduled to run every hour and scan the offboarding spreadsheet for new rows since the last run. For each row, an email is sent to the departing team member using different templates depending on the team member's country.

### Scheduled offboarding issue creation

Every 15 minutes, a pipeline scans the offboarding spreadsheet for rows where the `Garden Leave (Non-US) Start Date`/`Last Working Day (US only) Start Date` occurred within the past 15 minutes. If neither are specified, `Termination Effective Date` is used as a fallback. For each row matching this criterion, it will perform the same actions as if a People Connect Team member ran manually initiated the offboarding. (see [Manually initiated offboarding issue creation](#manually-initiated-offboarding-issue-creation) and [Offboarding merge request](#offboarding-merge-request) sections).

The manual process is kept as a backup process should the automation fail or for exceptional cases where a team member offboarding cannot be added to the offboarding spreadsheet.

### Manually initiated offboarding issue creation

After a People Connect Team member runs the Slack command to open the issue, this will be automatically assigned to the People Connect Team member
who ran the command and the outgoing team member's Manager.

The job then grabs various details of the outgoing team member, like country of residence, entity through which they are hired, division, department, job title etc. For each of these details, it checks for the existence of a task file in the [`offboarding_tasks` folder](https://gitlab.com/gitlab-com/people-group/people-operations/employment-templates/-/tree/main/.gitlab%2Fissue_templates%2Foffboarding_tasks) of the `employment` project. These tasks files are of the format `country_<country name>.md`, `entity_<entity name>.md`, `division_<division name>.md`, `department_<department name>.md`, etc. If such a file is found, it includes contents of those files also in the offboarding issue.

This issue is added to the [team member's epic](/handbook/people-group/engineering/employment-issues#epics).

### Offboarding merge request

The `offboarding` command will also create a merge request to the `www-gitlab-com` project. This MR includes:

- Removing the individual file from the `data/team_members/person` directory
- Removing the picture used in the previous file
- Adjusting the `reports_to` in case the offboarded team member had reports
- Removing the pet picture in case the team member had any
- Update the CODEOWNERS file: change to the manager or remove if the manager is already a codeowner for that file

In the event that the merge request has become out of date and the `/rebase` quick action isn't working a People Connect Team member can follow these steps to regenerate the MR:

1. Close the MR that is out of date, and ensure to delete the branch that this was created on.
1. Run the offboarding team page Slack command to re-trigger the automation.
1. Verify that the MR has been opened.
