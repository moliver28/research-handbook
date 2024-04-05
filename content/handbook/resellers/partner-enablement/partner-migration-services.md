---

title: "Channel Partner Migration Services"
---






<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />


# Partner Migration Services
{: .gitlab-orange}

To learn about GitLab migrations, start with GitLab's technical documentation titled [Import and migrate groups and projects](https://docs.gitlab.com/ee/user/project/import/). Depending on the source Git provider, size/scope of the migration and the importance of the preservation of the migrated artifacts, carefully consider each option given each option's limitations/benefits.

The GitLab Channel Program provides the following [resources to our partners to construct your own Services Packages](https://partners.gitlab.com/prm/English/c/Channel_Service_Packages) in our Partner Portal, including our Migration+ Services Offering.

## From other DevOps platforms to GitLab

To migrate projects from systems other than GitLab, please review the list of [available project importers](https://docs.gitlab.com/ee/user/project/import/#available-project-importers).

Migrating pipelines is always a manual process.

## From GitLab self-managed to GitLab self-managed

In case of migrating from one self-managed GitLab server to another, the best way usually is to do a full backup at the source instance and then a restore at the target instance. More details about this method can be found [here](https://docs.gitlab.com/ee/administration/backup_restore/#migrate-to-a-new-server).

## From GitLab self-managed to GitLab SaaS or the other way around

There are three different options for these migrations.

### 1. Congregate

[Congregate](https://gitlab-org.gitlab.io/professional-services-automation/tools/migration/congregate/) - used by [GitLab Professional Services](https://about.gitlab.com/services/) - is GitLab's most mature migration solution and supports many options. **Note that migrations to SaaS requires the involvement of GitLab PS due to restricted access to GitLab SaaS (multi-tenant) data.** More information about the latter can be found [here](/handbook/customer-success/professional-services-engineering/engagement-mgmt/scoping-information/migrations/SM-to-SaaS/#faq).

Important to note about Congregate:

- [Congregate Migration Features Matrix](https://gitlab.com/gitlab-org/professional-services-automation/tools/migration/congregate/-/blob/master/customer/gitlab-migration-features-matrix.md)

- [Migration Readiness Checklist](https://gitlab.com/gitlab-org/professional-services-automation/tools/migration/congregate/-/blob/master/customer/migration-readiness-checklist.md)

- [Customer's obligations and responsibilities - Congregate FAMQ](https://gitlab.com/gitlab-org/professional-services-automation/tools/migration/congregate/-/blob/master/customer/famq.md#what-are-a-customers-obligations-and-responsibilities-prior-during-and-after-a-migration)

- [Limitations of Self-Managed to SaaS migrations via Congregate - Congregate FAMQ](https://gitlab.com/gitlab-org/professional-services-automation/tools/migration/congregate/-/blob/master/customer/famq.md#what-level-of-instance-access-and-permission-are-needed-for-migrating)

### 2. Direct transfer (Beta)

This feature was just recently released, and is the direction our product team is moving towards for migrating GitLab projects from instance to instance or to SaaS. Please review the following resources:

- [Migrated group items (direct transfer)](https://docs.gitlab.com/ee/user/group/import/index.html#migrated-group-items)

- [Migrated project items (direct transfer)](https://docs.gitlab.com/ee/user/group/import/index.html#migrated-project-items-beta)

### 3. File exports

For cases what direct transfer can't or won't cover. A good example would be air-gapped environments - see below.

- [Migrating projects using file exports](https://docs.gitlab.com/ee/user/project/settings/import_export.html)

- [Items that are exported via file exports](https://docs.gitlab.com/ee/user/project/settings/import_export.html#items-that-are-exported)

- [Items that are not exported via file exports](https://docs.gitlab.com/ee/user/project/settings/import_export.html#items-that-are-not-exported)

- [Project import and export API](https://docs.gitlab.com/ee/api/project_import_export.html)

- [Group import and export API](https://docs.gitlab.com/ee/api/group_import_export.html)

## Air-gapped environments

GitLab can be installed and operated in [offline environments](https://docs.gitlab.com/ee/user/application_security/offline_deployments/). This setup makes migration projects more complex.

- Direct transfer doesn't support this. Project/export import is a workaround and it will likely stay as such. More info [here](https://gitlab.com/groups/gitlab-org/-/epics/8985) and [here](https://gitlab.com/gitlab-org/gitlab/-/issues/363406).

- Congregate does support this. More info [here](https://gitlab.com/groups/gitlab-org/professional-services-automation/tools/migration/-/epics/116) and [here](https://gitlab.com/gitlab-org/professional-services-automation/tools/migration/congregate/-/blob/master/runbooks/airgapped-migration-usage.md).


# GitLab Professional Migration Services

{: .gitlab-orange}
GitLab Professional Services team has a [full service catalog of offerings avaialable](https://about.gitlab.com/services/catalog/) for direct to customers to utilize. Partners may want to review the offerings for inspiration towards delivering same or similar Professional (consultative) Service offerings.

The [GitLab Professional Services Migration Package](https://drive.google.com/file/d/1SK4iEg3XKx2nBWNo7xDlBbjLfOe1cFhB/view) is one popular offering.

Our [GitLab Partner Portal](https://partners.gitlab.com/English/) has [Channel Service Packages](https://partners.gitlab.com/prm/English/c/Channel_Service_Packages) that many partners choose to deliver as paid offerings. The link above includes Service Names, Data Sheets, Statement of Works (SOWs), Project Plans, Delivery Kits. The table also outlines GitLabs expectations for the certicications held by our partners under the `Aligned Partner Certification` column.
