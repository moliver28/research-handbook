---

title: GitLab Trial Guidelines
description: GitLab Trial Guidelines
---


The guidelines here are meant to help prospects and existing GitLab Self-Managed or SaaS customers get started with an Ultimate trial.

### Requesting a Trial

Both prospects and existing customers should request an Ultimate trial by going to the [GitLab Trial Landing Page](https://about.gitlab.com/free-trial), choosing SaaS or self-managed, and then following the provided instructions.

### Notes Regarding Trial Licenses

 - If a Premium Trial is required instead of an Ultimate trial, then the customer should request the trial license as defined above. Then the GitLab Account Executive must create a [GitLab Support Internal Request](https://support-super-form-gitlab-com-support-support-op-651f22e90ce6d7.gitlab.io/) (Internal) in order to downgrade the Trial license from Ultimate to Premium. Use either the **GitLab Support Internal Requests for Global customers** or **GitLab Support Internal Requests for Federal customers** request option, then select the **Self-Managed Trial related - Modify an existing Self-managed trial** request type. GitLab Support will create a Premium license and email it to the user.

## Trial Guidelines


#### Existing SaaS Customers

A trial license cannot be added to an existing licensed SaaS namespace.  Since some features such as project and group access tokens are not available with a trial license, using a separate trial namespace ensures data integrity of production data and reduces confusion for end users in the production instance.  SaaS customers should create a new namespace for their trial and use one of the options in the next section to populate data into the namespace. To create a new namespace, you should login to gitlab.com and [create a new top-level group](https://docs.gitlab.com/ee/user/group/manage.html#create-a-group).  If your production group name is `ACME123` and you want your trial group to be `ACME123-trial`, then the trial group URL should be `https://gitlab.com/ACME123-trial`, **not** `https://gitlab.com/ACME123/ACME123-trial`.

SaaS trials have the following limitations:
- GitLab shared runners available (with credit card verification) but the number of minutes is limited.  If additional minutes are required, the [GitLab Sales team](https://about.gitlab.com/sales/) can request an increase on the customer's behalf.
- Only one [Project Access Tokens](https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html) is available with a trial license and [Group Access Tokens](https://docs.gitlab.com/ee/user/group/settings/group_access_tokens.html) are not available on a trial license.


#### Existing Self-Managed Customers

While self-managed customers are not prevented from trialing a higher tier license on their production instance, it is strongly discouraged.  Adding a higher tier trial license will confuse end users who may not be aware of which features are a trial vs available for ongoing production use.  Using a separate self-managed instance for a trial will prevent this confusion and ensure data integrity of production data is preserved. Alternatively, existing self-managed GitLab customers have the option to trial higher tier features in SaaS.

If a customer decides to activate a trial on an existing instance, they will need to [add the trial license](https://docs.gitlab.com/ee/administration/license_file.html) to their instance.  Once the trial license has expired, the instance will revert back to the non-expired production license.

Customers who choose a self-managed trial will need to install a single node [Omnibus instance](https://docs.gitlab.com/omnibus/) and start the trial there.  After completing the self-managed trial form, they will receive an email with additional instructions for getting starting with the trial.

### Populating your group with project data

- When determining which projects to import into the trial namespace, we recommend considering the following criteria:
   - Use copies of your own existing groups/projects - see [General Approaches](#general-approaches) below
   - Use GitLab Security demo projects - GitLab provides a set of [security demos](https://gitlab.com/gitlab-org/security-products/demos) to show how the various security scans work

- Only one [Project Access Tokens](https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html) is available with a trial license and [Group Access Tokens](https://docs.gitlab.com/ee/user/group/settings/group_access_tokens.html) are not available on a trial license

#### General Approaches

- [Copy Groups and Projects](https://docs.gitlab.com/ee/user/group/import/index.html)
  - When copying from one GitLab.com namespace to another, you must copy all subgroups and projects.  This is not recommended for customers with a large number of groups and projects.
  - Only [these](https://docs.gitlab.com/ee/user/group/import/index.html#migrated-group-items) groups items are migrated, no others
  - Only [these](https://docs.gitlab.com/ee/user/group/import/index.html#migrated-project-items) project items are migrated. Note these are the same project items that are migrated with file exports (described in the next section)
- [Migrate Projects using file exports](https://docs.gitlab.com/ee/user/project/settings/import_export.html)
  - Only [these](https://docs.gitlab.com/ee/user/project/settings/import_export.html#items-that-are-exported) project items are migrated. Note these are the same as above even if the lists look a little different.
- [Project Forking](https://docs.gitlab.com/ee/user/project/repository/forking_workflow.html)
  - This works like standard forking with a copy of the repository and branches
  - You will not have access to a lot of the project items that you get with the previous two approaches
- Added strategies
  - [Repository Mirroring](https://docs.gitlab.com/ee/user/project/repository/mirror/index.html)
    - Any of the above approaches can be combined with mirroring to make sure branches, tags, and commits are synced
    - Items such as Merge Requests and issues are not synced
- What to set up
  - [Autobuild](https://docs.gitlab.com/ee/topics/autodevops/stages.html#auto-build) will use a Dockerfile contained in the project root directory or cloud native build packs to detect the application type and build it
  - Since some project configurations like CI/CD variables, container and package registries, and tokens, do not get imported some suggestions are as follows
    - [SAST](https://docs.gitlab.com/ee/user/application_security/sast/), [Secret Detection](https://docs.gitlab.com/ee/user/application_security/secret_detection/), and [Dependency Scanning](https://docs.gitlab.com/ee/user/application_security/dependency_scanning/) can be run without building your project. Simply add them to the CI file and comment out any build / deploy sections if they cannot be set up again
    - [Container Scanning](https://docs.gitlab.com/ee/user/application_security/container_scanning/) - needs an application built into a container and pushed to the container registry, usually created via a build job that precedes the container scanning job, but does not require a deploy job
  - In order to validate [DAST](https://docs.gitlab.com/ee/user/application_security/dast/) or [web api fuzz testing](https://docs.gitlab.com/ee/user/application_security/api_fuzzing/), you must have a deployed application available to scan.  You might want to [connect a Kubernetes cluster](https://docs.gitlab.com/ee/user/clusters/agent/) to make evaluating these features easier.
- For customers wanting to evaluate portfolio and project planning, they can view the [GitLab Organization](https://gitlab.com/groups/gitlab-com/) to view the epic list and boards, roadmap, milestones, and other portfolio features.  Note: some features are only available to logged in users.
