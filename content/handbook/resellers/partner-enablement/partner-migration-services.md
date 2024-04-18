---

title: "Channel Partner Migration Services"
---






<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />


GitLab encourages our GitLab Partners to engage in and lead technical services such as migrating to GitLab. This page provides an overview of different sources of data that can be transferred to various GitLab destinations. For deeper technical understanding, engineers should enroll and learn from the GitLab University [GitLab Certified Migration Services Specialist Learning Path.](https://university.gitlab.com/learning-paths/gitlab-certified-migration-services-specialist-learning-path)
 
For a short technical overview of available paths to importing or migrating to GitLab, see [Import and migrate groups and projects](https://docs.gitlab.com/ee/user/project/import/).
 
# Common migration steps for GitLab Partners
_For the links in this section, login to our [GitLab Partner Portal](https://partners.gitlab.com/) first, then click links:_

GitLab Partners who are successful at performing customer-facing migrations often take this example path in client engagement:
1. Scope/size the migration. How many users? How many code repositories? Will the group structure remain intact, or is the migration an opportunity to 'clean up unused projects' within GitLab? Would a [GitLab Partner Led Optimization Service](https://partners.gitlab.com/prm/English/s/assets?collectionId=55025&id=459892&renderMode=Collection) be a better first step?
1. Understand the customer's business; what artifacts are needed to be migrated? Is an audit-compliance history of users, issues, merge requests important to the business? Or is migrating just the git code repository sufficient? What data is your customer sensitive to migrating?
1. Is the import source of data healthy, or would a [Readiness Assessment](https://handbook.gitlab.com/handbook/customer-success/professional-services-engineering/engagement-mgmt/scoping-information/readiness/) help provide the health of the GitLab source? Are some git repositories not able to be cloned, or need to be cleaned up? Any large code repositories with a long-lived history?
1. Are there other consultative considerations like access control, Single-Sign-On (SSO) that need to be configured as part of the migration and adoption towards GitLab or GitLab.com?
 
After having a technical scoping/sizing conversation with your customer, GitLab Partners find our [GitLab Channel Service Packages](https://partners.gitlab.com/prm/English/c/Channel_Service_Packages) helpful. These contain templated Data Sheets, Statements of Work (SOWs) and Project Plans.

## From other DevOps platforms to GitLab

To migrate projects from systems other than GitLab, please review the list of [Supported import sources](https://docs.gitlab.com/ee/user/project/import/#supported-import-sources) and [Other Import Sources](https://docs.gitlab.com/ee/user/project/import/#other-import-sources) (anchor link on the same page).

Migrating pipelines from other systems, [such as Jenkins](https://docs.gitlab.com/ee/ci/migration/jenkins.html), is a value-add manual development process. We encourage our partners to scope by understanding the number of pipelines, current pipeline performance, [envirnonmental variables](https://docs.gitlab.com/ee/ci/variables/) and secrets used. Some partners find a time and materials style contract to be helpful when consulting on developing pipelines between other sources sytems and [GitLab's pipeline syntax.](https://docs.gitlab.com/ee/ci/)

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

GitLab Professional Services team has a [full service catalog of offerings avaialable](https://about.gitlab.com/services/catalog/) for direct to customers to utilize. Partners may want to review the offerings for inspiration towards delivering same or similar Professional (consultative) Service offerings.

The [GitLab Professional Services Migration Package](https://drive.google.com/file/d/1SK4iEg3XKx2nBWNo7xDlBbjLfOe1cFhB/view) is one popular offering.

Our [GitLab Partner Portal](https://partners.gitlab.com/English/) has [Channel Service Packages](https://partners.gitlab.com/prm/English/c/Channel_Service_Packages) that many partners choose to deliver as paid offerings. The link above includes Service Names, Data Sheets, Statement of Works (SOWs), Project Plans, Delivery Kits. The table also outlines GitLabs expectations for the certicications held by our partners under the `Aligned Partner Certification` column.




