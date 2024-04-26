---
aliases: /handbook/customer-success/professional-services-engineering/engagement-mgmt/scoping-information/migrations/SM-to-GitLab-com
title: "Migrating from Self-Managed GitLab to GitLab.com"
description: "Things to know when helping customers migrate to GitLab.com."
---







# Migrating from Self-Managed GitLab to GitLab.com

## Options for customers migrating from self-managed GitLab to GitLab.com

 - Self-service [UI migration of groups and projects by direct transfer](https://docs.gitlab.com/ee/user/group/import/index.html#migrate-groups-by-direct-transfer-recommended). Please pay attention that migrating projects by direct transfer is a **Beta** feature. This is the recommended way to migrate groups and projects between GitLab instances within capabilities of GitLab application. We are working towards reaching General Availability for migrating projects by direct transfer.
 - Self-service API based [group or project migration by direct transfer](https://docs.gitlab.com/ee/api/bulk_imports.html).
 - Self-service UI based migration using [group import/export](https://docs.gitlab.com/ee/user/group/settings/import_export.html), however that has been deprecated. [Project import/export](https://docs.gitlab.com/ee/user/project/settings/import_export.html#project-importexport) is not deprecated.
 - API based migration using [group import/export api](https://docs.gitlab.com/ee/api/group_import_export.html) and [project import/export api](https://docs.gitlab.com/ee/api/project_import_export.html)
 - Professional services automated migration using the [Congregate Automation Tool](https://gitlab.com/gitlab-org/professional-services-automation/tools/migration/congregate)

## Why choose Professional Services for migrations to GitLab.com?

PS provides a proven approach that has been, and continues to be, regularly enhanced based on learnings from each customer engagement.  Our PS team has experience guiding customers through 100's of migrations to GitLab.com, so we can provide robust guidance on a migration plan that makes sense for a particular customer and what information to communicate to end users to make the experience as smooth as possible for them.

The automated migration tool handles more data than the UI- or API-based approach - things like registry data, CI/CD variables, hooks, integrated K8s cluster configurations, environments, and deploy keys (see [Congregate Feature List - GitLab to GitLab](https://gitlab.com/gitlab-org/professional-services-automation/tools/migration/congregate/-/blob/master/customer/gitlab-migration-features-matrix.md) for more details ).  And we migrate all users and their group and project permissions as part of the automated migration.  Historical user information regarding the author of MR's, notes, and issues is preserved via the PS migration.  This information is preserved as well when [migrating groups and projects using direct transfer](https://docs.gitlab.com/ee/user/group/import/index.html#migrate-groups-by-direct-transfer-recommended). It is however not preserved when importing groups and projects by uploading an export files (AKA groups and projects import/export). (See [Important Notes](https://docs.gitlab.com/ee/user/project/settings/import_export.html#important-notes) section of project import/export.  Note that end users cannot be given administrator permissions on GitLab.com).

Most importantly, GitLab Professional Services Engineers handle much of the migration work asynchronously, freeing up the customer's administrators to focus on other valuable tasks instead of needing to make the GitLab migration an initiative that requires all of their effort.

## How much does a Professional Services migration from self-managed to GitLab.com cost?

The total price of each engagement varies based on the size and complexity of the migration.  While not a perfect formula, we currently estimate the scope of the migration based on the number of users and projects in the self-managed system.  Note that GitLab repos > 5 GB cannot be migrated via our automated tooling and will significantly increase the scope of a self-managed to GitLab.com migration.  See [Why are Large Repos so Expensive to Migrate](#faq) in the FAQ at the end of this page for more information.  Also, please note that the source self-managed instance of GitLab must be within two minor versions of the [last released](https://gitlab.com/gitlab-org/gitlab/-/releases) version, or else an upgrade will be needed.  That can be included in the final estimate as well.

As a general guide, we've provided rough order magnitude (ROM) estimates below for migrations under standard conditions.  Please note that each customer migration needs to be scoped individually to validate assumptions in the ROM table.  Upon confirmation that the customer would like to proceed with Professional Services, we will generate an SOW that will need to be signed by the customer.

### ROM Estimates

Price in each cell represents a rough order of magnitude based on number of users and projects under 5 GB.  Add an additional $12k for every 10 Git repos > 5 GB.

| # Users (row) / # Projects (column) | 1,000 or less | 1,001 - 2,000| 2,001 - 3,000 | 3,001 - 4,000 | 4,001 - 5,000 | 5,001 - 6,000 | 6,001 - 7,000 | 7,001 - 8,000 | 8,001 - 9,000 | 9,001 - 10,000 |
| --- | --- | --- | --- | --- | ---| ---| ---| --- | --- | --- |
| 500 or less | $30-40k | $50-60k | $70-80k | $90-100k | $100-110k | $120-130k | $140-150k | $150-160k | $170-180k | $190-200k |
| 501 - 1,000 |$35-45k | $55-65k| $75-85k | $90-100k | $105-115k | $120-130k | $140-150k | $155-165k | $175-185k | $195-205k |
| 1001 - 2000 | $50-60k | $65-75k | $85-95k | $100-110k | $120-130k | $135-145k | $155-165k | $170-180k | $190-200k | $205-215k |
| 2001 - 3000 | $60-70k | $75-85k | $90-100k | $110-120k | $125-135k | $145-155k | $160-170k | $175-185k | $195-205k | $210-220k |

If you have more than 10,000 projects or 3000 users, please reach out to the Engagement Managers and they will work with you to provide a ROM estimate.

## My customer wants to proceed with PS for migrating to GitLab.com - what is the next step?

After you've had initial conversations, if your customer wants to proceeed to further explore PS for migrating to GitLab.com, please initiate a scoping request via the [Services Calculator](https://services-calculator.gitlab.io/).  Enter the customer name, your GitLab username, walk through a quick questionnaire to provide some additional information,and click the `Create PS Scoping Issue` button.

There will be a `<Customer Name> - Scope Issue and Write SOW` issue created by the calculator, as a child of an epic with the name of the customer.  That issue will have the information we need for scoping the customer engagement pre-populated as a table in the description (with the heading SSOT for "single source of truth").  Please fill in the appropriate fields in that table - bold font fields are required in order for us to scope the migration effort.

Once you have provided the required scoping info, an Engagement Manager will generate an Engagement Estimate, using standard formulas we have created for scoping.  We will produce a Google sheet that you can pdf and use for discussions with your customer, either async via email or sync via a live meeting.  The Engagement Manager would be happy to support a live meeting, schedule permitting, to review the information with the customer.  You can see a [sample Engagement Estimate](https://docs.google.com/spreadsheets/d/1-RuKHcijvHyyZJeYL1jSJrn5olqDODJjz6lf9y2ZIOc/edit?usp=sharing) with descriptions of each activities.

If the customer agrees to the estimate, and a conversation validates that the information used in scoping is accurate for the customer's situation, then the final step will be for the Engagement Manager to create an SOW that will be approved internally, and then you can send that to the customer for signature.  See [Selling Professional Services](/handbook/customer-success/professional-services-engineering/selling/) for additional details on this process.

## Gathering data to help scope a migration

There are a few questions GitLab uses to assist in the SM to GitLab.com transition process.   Two of those [questions](/handbook/customer-success/professional-services-engineering/engagement-mgmt/scoping-information/migrations/#migration-scoping-details) require a Customer Admin to provide data to the GitLab team:
    - 1. How many GL repos are larger than 5GB approximately?
    - 2. What is the typical container/package registry size of your projects?

GitLab provides a tool to gather data about the existing environment. Download and run the [Evaluate](https://gitlab.com/gitlab-org/professional-services-automation/tools/utilities/evaluate#usage) tool with an admin token and provide all the [generated files](https://gitlab.com/gitlab-org/professional-services-automation/tools/utilities/evaluate/-/blob/initial-branch/reading-the-output.md#breakdown-of-generated-files) back to the account team.

## Additional Selling Tools

- See the [WIP - Selling Professional Services - SM to GitLab.com](https://docs.google.com/presentation/d/1-svCV8CFqZZr0ma-1TJIzy-Lobu4sSslP5eAS2BaCbc/edit?usp=sharing) Google slides presentation

## FAQ

1. **Why are large repos so "expensive" to migrate?** The GitLab.com instance has a [hard limit Cloudflare 5GB file import/git push](https://docs.gitlab.com/ee/user/gitlab_com/#account-and-limit-settings). Any repo > 5 GB must be migrated manually via workarounds to remove large files and, in some cases, break the import into smaller pieces. These imports require significant effort so we can only manage 2 repo imports per day.
1. **What can my customer do to make the migration easier and potentially reduce the PS engagement cost?**
   - Since large repos greatly increase the scope of PS efforts, customers should follow the guidance provided in the [Reduce Repository Size](https://docs.gitlab.com/ee/user/project/repository/reducing_the_repo_size_using_git.html) documentation to clean up their repositories prior to migration.
   - The migration depends on users in the source and destination system having the same primary email address, so it is helpful to review user accounts in the primary system ahead of time, especially if the customer plans to utilize SSO with SCIM provisioning on GitLab.com.
   - Groups and projects are migrated in the same hierarchical structure as they are defined in your self-managed system, so if the customer wants to restructure groups or projects, they might want to undertake that before the migration.
   - On GitLab.com, public projects are available to the entire internet, which might be a big shift for a customer using self-managed GitLab behind their firewall.  Additionally, there are no internal projects on GitLab.com.  So if the customer has projects with these access settings, they will want to review them and start thinking about how to shift project accessibility on GitLab.com.
**Our Professional Services team can incorporate Advisory Services into a migration SOW to help with any of the above activities if the customer needs additional guidance.**
1. **Can partners perform SM to GitLab.com migrations?**  Partners are limited to the same restrictions as customers - they cannot have administrator permissions on the GitLab.com platform, and they must utilize known ui or api based migration approaches with their own scripted solutions.  GitLab partners can provide guidance on a migration plan, in terms of considerations for which groups and projects to migrate when, and what activities need to be performed, and what information needs to be communicated, to end users as their projects are migrated.  But, partner migrations have limitations, such as:
     - MR, notes, and issue authors are not preserved on migration
     - Git repos > 5 GB can be migrated using the [documented workaround](https://docs.gitlab.com/ee/user/project/settings/import_export.html#import-workaround-for-large-repositories)

We sometimes pair with a partner so that they do some of the advisory work and we run the automated migrations on their behalf.  Or, if a customer is not concerned about maintaining authors of MR's, notes, and issues, then the partner can perform the migrations themselves.  If the partner needs guidance in cleaning up large repos for import, they can subcontract that part of the migration to us.
