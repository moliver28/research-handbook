---
title: "Tableau Admin Guide"
description: "Tableau at GitLab"
---

## Tableau Administration Guide

This page describes the processes used to administer the Tableau sites managed by GitLab.  Additional run books, scripts, tools and repositories related to the processes will be referenced throughout this guide.

## Sites

GitLab currently maintains three different Tableau sites for different purposes: The main site, the public site, and the sandbox.  The main site is where all of the workbook and datasource development takes place and is the site team members can request a license to use.  The public site is used to host the workbooks that are intended to be embedded in the public handbook and viewed by anyone visiting the handbook page.  Team members do not have direct access to the public site and no general workbook development takes place on this site.  The sandbox site is used for testing of scripts and features in an environment that will not disrupt the main site. No general workbook development takes place on the sandbox site.

## Tools

The TableauConMan tool is developed in house to assist in automating several aspects of administering Tableau.  With orchestration in Airflow and a series of configuration files known as plans, it currently performers the following functions:

- Sync content to the public site
- Manage groups and group membership on the main site

---

## User Management

### Main Site

For the main site team members login using Okta.  For the team members to be able to see the login option in Okta they must be added to the  [`okta-tableau-users`](https://groups.google.com/a/gitlab.com/g/okta-tableau-users/members) google group.

The specification file in the Data Team repository is used to review and track the changes to users on the main site.  Any changes to users should first be made in the file and reviewed before the changes are made on the site following the appropriate instruction in the users [runbook](https://gitlab.com/gitlab-data/runbooks/-/tree/main/tableau?ref_type=heads).

A users group membership is managed using the TableauConMan tool, see Group Management for more details.

### Public Site

For the public site users login directly and do not use Okta.  The number of non viewer licenses on this site is limited so any active administration on the site should be done with the Analytics Service Account.

### Sandbox Site

For the sandbox site users login directly and do not use Okta.  The number of non viewer licenses on this site is limited so any active administration on the site should be done with the Analytics Service Account.

---

## Group Management

### Main Site

For the main site groups and group membership is managed using the TableauConMan tool.  To add or remove a group the appropriate changes should be made in the `groups` section of the specification file in the Data Team repository.  To add or remove members from a group, the group name should be added or removed from the `groups` list for the specific user.  Once the change has been reviewed and merged, the `tableau_provision_users` task in the [`tableau_workbook_migrate`](https://gitlab.com/gitlab-data/analytics/-/blob/master/dags/general/tableau_workbook_migrate.py) DAG will apply the changes.

### Public Site

The groups for the public site are manually maintained.  The general instructions found in the groups [runbook](https://gitlab.com/gitlab-data/runbooks/-/tree/main/tableau?ref_type=heads) can be followed to modify groups or group membership.

### Sandbox Site

The groups for the sandbox site are manually maintained.  The general instructions found in the groups [runbook](https://gitlab.com/gitlab-data/runbooks/-/tree/main/tableau?ref_type=heads) can be followed to modify groups or group membership.

---

## Project Structure

### Main Site

The project structure for the main site is maintained manually and should match the folder structure found in the Tableau repository.  This structure is used to enforce code reviews of changes in the production project and the MR with the requested changes should be approved before changes are made to the site.

### Public Site

The project structure for the public site is maintained manually.  Many processes such as content synchronization and shareable content reports are dependent on the project structure of the site. Changes to the project structure should be made with this in mind.

### Sandbox Site

The project structure of the sandbox site does not need to be fixed to any specific structure.

---

## Content Permissions

### Main Site

The content permissions for the main site are maintained manually and should align with the Transparency value and only limit access to content when it is strictly needed.  Content permissions should only be granted to groups and not individual users.

### Public Site

The content permissions for the public site are maintained manually.  Many processes such as content synchronization and shareable content reports are dependent on the project structure of the site. Changes to the project structure should be made with this in mind.

### Sandbox Site

The content permissions of the sandbox site do not need to be fixed to any specific structure.

---

## Content Management

### Main Site

#### Stale and Unsued Content Management

#### 1. Purpose - Content Archival

Unsued workbooks and data sources are moved to the Archive folder to maintain a clean and efficient Tableau Cloud environment. This is an automated process which ensures that only quality, actively used content remains readily accessible, thereby minimizing clutter and enhancing the user experience. Users can quickly find and access high-quality, relevant content without sifting through outdated or unused items. Automating this process ensures consistency and accuracy, saving time and effort for the Tableau Admin team. Manual intervention is minimized, reducing the likelihood of errors.

#### 2. Prerequisites - Automation Script

A Python script is used for this automation which follows specific criteria to identify and archive stale content. Here is a detailed explanation of the stale contentent identification:

1. <b>Workbooks</b> - Stale Criteria: A workbook is considered stale if it has not been created, updated, or viewed in the last 90 days.

2. <b>Data Sources</b> - Stale Criteria: A data source is considered unused if it has no connected workbooks and has not been created or updated in the last 90 days.

    Exclusions and Uniquenss:

    - Exclusions: Workbooks and Data sources with the Tableau tag "Do NOT Archive" are excluded from archiving.

    - Renaming for Uniqueness: Before moving a workbook or data source to the "Archive" folder, its name is appended with the owner, parent project, and the current date/time to ensure uniqueness and avoid conflicts.

#### 3. Archival Schedule

This procedure is scheduled to run quarterly, specifically at the end of each quarter. The Tableau Admin team will manually kick off the process, ensuring that the automation runs at the most opportune time and any immediate concerns can be addressed.

#### 4. Exclusion Tag

To prevent critical content from being archived, the business can use the exclusion tag "Do NOT Archive". Any workbooks or data sources with this tag will be skipped during the archiving process. The Data team may periodically review the dashboards with this tag to ensure the exceptions are still warranted. It should be noted that workbooks tagged with "Public" should also be exlcuded.

#### 5. Archive Folder Access

The "Archive" folder has restricted access, meaning that the business cannot view or access its contents directly. This restriction helps in removing archived content from search results, thereby maintaining a clean and efficient environment. If users need access to any archived content, they can reach out to the BI Team via the #data-tableau Slack channel for assistance.

### Public Site

#### Stale and Unsued Content Management

Content archival and management is performed manually on an as need basis.

### Sandbox Site

Content archival and management is performed manually on an as need basis.

## Connected Applications

Only the public site has a connected application that is used for viewing content embedded in the public handbook.  There are keys, secrets, and ids from this connected app that must be updated and shared with the handbook team: specifically the [cloud function](https://console.cloud.google.com/functions/details/us-central1/tableau-connected-app?env=gen2&hl=en&project=mcottrell-8f2b9454&tab=details) that authenticates the viewer on page load.
