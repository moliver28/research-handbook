---

title: "Demo Systems"
description: "The GitLab Demo Systems provide infrastructure for the GitLab Customer Success, Marketing, Sales, and Training teams to demonstrate GitLab features, value propositions, and workflows in a variety of asynchronous and live capacities."
---







## Overview of Demo Systems

The GitLab Demo Systems provide infrastructure for the GitLab Customer Success, Marketing, Sales, and Training teams to demonstrate GitLab features, value propositions, and workflows in a variety of asynchronous and live capacities.

The Demo Systems were architected by [Jeff Martin](https://gitlab.com/jeffersonmartin) starting in October 2019 when he was a Senior Demo Systems Engineer. We have other team members that contributed to help support our users and infrastructure ([James Sandlin](https://gitlab.com/jsandlin) and [Cristiano Casella](https://gitlab.com/ccasella)). We also collaborate with counterparts in other departments for broader GitLab infrastructure configuration in AWS, GCP, etc and security incident response.

In June 2021, Jeff Martin changed roles to a [Senior IT Systems Engineer](/job-families/finance/it-systems-engineer/) and the Demo Systems program became a managed service of the [IT Engineering Infrastructure](/handbook/business-technology/it/engineering/infrastructure/) team. We continue to maintain the infrastructure and Kubernetes support in the `#demo-systems` Slack channel and related channels listed below.

For questions about what demo sample projects are available or peer assistance with troubleshooting your failed pipeline job, please ask in the `#cs-questions` Slack channel.

Please tag `@Jeff Martin` in one of the following Slack channels with any questions or requests related to infrastructure or access requests.
- `#demo-systems` is for SA, CSM, and PSE team members with questions or needing technical assistance. No longer for training/workshop related posts.
- `#demo-systems-workshops` is for workshop-related discussions.
- `#demo-systems-ps-education` is for ILT/SPT/etc related discussions for Professional Services.
- `#sandbox-cloud-questions` is for help and support with the Sandbox Cloud

Please consider this handbook documentation to be the single source of truth ("SSOT") for all resources that use the `gitlabdemo.com`, `gitlabdemo.cloud`, and `gitlabtraining.cloud` domain names.

### Why do we have demo systems?

- **Why shouldn’t we just use GitLab.com?** Although you can use GitLab.com for showing most of the value of GitLab use cases, there are some administrative features that require the deployment of GitLab Omnibus infrastructure in AWS, GCP, or local VM/container. Many of our enterprise customers opt for self-managed over GitLab.com so we are mindful of “showing the customer what they’ll see in production”.

- **What’s special about our infrastructure?** The demo systems infrastructure doesn’t do anything special that a customer or partner company couldn’t do themselves with the appropriate staffing and engineering investment. We have open sourced our infrastructure-as-code methods, scripts and tools for the wider community to use to streamline their deployment of Omnibus infrastructure. See the [gitlab-com/demo-systems](https://gitlab.com/gitlab-com/demo-systems) repositories to explore our open source projects.

- **Are there special engineering or scalability considerations with training classes and workshops?** Yes. The GitLab product was designed for users to be doing different activities throughout the day and the smaller reference architectures are not designed for dozens or hundreds of users to click the same button and running the same background jobs or pipeline jobs at the same time. Our users are also ephemeral and have automated garbage collection requirements that are not customary for conventional GitLab product use cases. This requires special scalability considerations, notably with the Container Registry, Sidekiq, and Kubernetes that we have to accommodate for. Here's some of the things we're looking for with scalability challenges.
    - Autoscaling runners for 500 simultaneous pipelines started in 10 seconds
    - Autoscaling Kubernetes nodes for 500 simultaneous review apps/deployments in 60 seconds
    - Auto DevOps pipelines that consume lots of wasted resources
    - Kubernetes services that are not needed (ex. Postgres database)
    - Intensive test jobs that are not needed during workshop (ex. Code Quality, Dependency Scanning, etc.)
    - Project export/import queued job fails with 500 simultaneous project imports
    - Features in your project that have known issues with import/export process (ex. wikis)
    - Administrative access for students (alternative use cases)
    - Package registry caching and garbage collection
    - Container registry caching and garbage collection
    - CI images pulling from Docker Hub with rate limits
    - CI image versions that are incompatible or have been upgraded with bug fixes
    - Using templates in `.gitlab-ci.yml` without realizing the underlying job load.
    - Using custom `.gitlab-ci.yml` files without comments of the actions being performed
    - Dependency proxy configuration (particularly for npm and maven dependencies)
    - Lack of step-by-step instructions that leads to student misconfigurations and errors

## Shared Environments

These shared environments are referred to as the Demo Cloud or Training Cloud. Historically, training users used the Demo Cloud so the names are used interchangably in some conversations.

<div class="panel panel-warning">
<div class="panel-heading">
Demo Systems v1 Deprecation
</div>
<div class="panel-body">
The <code>gitlab-core.us.gitlabdemo.cloud</code> instance was deprecated on 2021-04-20 and destroyed on 2021-06-03. No data back up is available. See <a href="#access-shared-omnibus-instances">Access Shared Omnibus Instances</a> instructions for accessing the <code>cs.gitlabdemo.cloud</code> instance (direct replacement).<br />
</div>
</div>

- `cs.gitlabdemo.cloud` - This is the primary GitLab Omnibus instance that all team members have access to for creating groups, projects, and sandbox purposes on a self-managed Omnibus instance. Please keep in mind that this is a shared environment across all team members and you should treat the Admin areas as read-only.
- `ilt.gitlabtraining.cloud` - This is used for instructor-led training classes. You should generate credentials for this instance if you are an instructor and need admin access to be able to import sample projects and/or see the groups for all of the students in a class.
- `spt.gitlabtraining.cloud` - This is used for self-paced training classes that are published in EdCast. You should only generate credentials for this instance if you are involved with instructional design or certification grading of self-paced student courses. If you are enrolled in a self-paced training class, you should follow the instructions for [redeeming an invitation code](#invitation-code-redemption) to generate temporary credentials that can be used for accessing the instance that has been pre-configured for the training lab guide steps.
- `workshop.gitlabtraining.cloud` - This is used for enablement and field marketing workshops that are delivered on a routine basis. You should generate credentials for this instance if you are involved creating lab sample projects, lab guides, presenting, or supporting a workshop.

## Isolated Environments

- **AWS Account**: See the [instructions](#aws-account-or-gcp-project-sandbox-cloud) for provisioning your own isolated AWS account with the GitLab Sandbox Cloud.
- **GCP Project**: See the [instructions](#aws-account-or-gcp-project-sandbox-cloud) for provisioning your own isolated GCP project with the GitLab Sandbox Cloud.
- **AWS Elastic Kubernetes Service (EKS) Cluster:** You can use your AWS account to provision an EKS cluster using the [Adding EKS clusters](https://docs.gitlab.com/ee/user/project/clusters/add_eks_clusters.html) GitLab documentation.
- **GCP Google Kubernetes Enginge (GKE) Cluster:** Send a message to Jeff Martin with questions about clusters that are in the `group-cs` GCP project. See the tutorial for [configuring GitLab with group-level Kubernetes cluster](/handbook/customer-success/demo-systems/tutorials/getting-started/configuring-group-cluster/) to add your cluster to your GitLab group.

## How to Get Started

These instructions are for Demo Systems v2 that uses the [gitlabdemo.cloud](https://gitlabdemo.cloud) Portal. The Demo Systems v1 infrastructure that used [gitlabdemo.com](https://gitlabdemo.com) has been deprecated except for training class invitation codes.

### Access Shared Omnibus Instances

These instructions provide you access to one or more of our [shared environments](#shared-environments) (Omnibus self-managed instances).

> The Demo Cloud Portal and provisioning system is powered by [gitlabdemo-cloud-app](https://gitlab.com/gitlab-com/demo-systems/management-apps/gitlabdemo-cloud-app), an open source project created by [Jeff Martin](https://gitlab.com/jeffersonmartin).

1. Visit the GitLab Demo Cloud Portal ([https://gitlabdemo.cloud](https://gitlabdemo.cloud)) and sign in with your Okta credentials.
1. Navigate to the Environments top navigation link or click on the **View Environments** button on the dashboard.
1. Locate the Environment Instance that you wish to access and click the **Generate Credentials** button.
1. After the credentials have been generated, click the **View Credentials** button.
1. Create a new record in your 1Password vault with your generated credentials.
1. Click the **Access Instance** button to open a new tab with the URL of the GitLab Omnibus instance.
1. Bookmark the Omnibus instance that you can use to easily access this in the future. You do not need to access the [https://gitlabdemo.cloud](https://gitlabdemo.cloud) portal each time you want to access the instance since this is only for access requests (credential generation).
1. After signing in, a group has been pre-created for you to store your projects under. To help with namespace consistency and security best practices, please do not create other top-level groups with custom names. You can create any subgroups or projects you'd like under your pre-created group or in your personal namespace.
1. Each instance is pre-configured with shared GitLab Runners and a Kubernetes cluster. These are for consumption purposes when running CI/CD pipelines and you do not have administrative access to these in the shared environments.
1. You can ask for help from other peers in the `#cs-questions` Slack channel.

### AWS Account or GCP Project (Sandbox Cloud)

See the [Sandbox Realm](/handbook/infrastructure-standards/realms/sandbox/#how-to-get-started) handbook page for instructions on creating your own AWS account and/or GCP project that you can use for deploying your own infrastructure with the benefit of centralized billing.

### Invitation Code Creation

These instructions are for training class organizers, instructors, and workshop presenters to generate an invitation code that students can redeem to generate credentials for accessing the respective Training Cloud Omnibus instance.

1. Visit [https://gitlabdemo.com](https://gitlabdemo.com) and sign in with your Okta credentials.
1. In the top navigation bar, click **Invitation Codes**.
1. Browse the list of invitation codes to ensure that an invitation code has not already been created for your class or workshop. You can click on the name of the invitation code to view details about the existing invitation code and redemptions by students.
1. Click the blue **Create Invitation Code** button in the top right corner.
1. Use the helper text below each form field to fill out the form.
1. Click the green **Create Invitation Code** button.
1. You will be redirected to the details page for the invitation code and can copy and paste the 8-character invitation code into your issue(s), slide deck, or other related location. The invitation code should not be shared with students until the class begins, or the Monday of the week that the class or workshop begins. This ensures that we do not have students that access infrastructure that we need to do a last minute update and deal with migrating their projects. This policy also future proofs for load balanced instances that may be dynamically allocated or provisioned just-in-time.

### Invitation Code Redemption

> **Warning for GitLab team members:** This process generates new credentials that are used for accessing the GitLab Demo Portal and/or GitLab Omnibus instance that you may already be authenticated to using your administrative user account.

1. In an incognito browser window, visit [https://gitlabdemo.com](https://gitlabdemo.com) and click the **Redeem Invitation Code** button.
1. Type in the 8-character invitation code that was provided by your instructor or in your course materials.
1. Press **Redeem and Create Account**.
1. You will see new credentials that have been generated. Click the red **Download Credentials** button or copy your credentials into your password manager or a temporary text file on your desktop.
1. Click the yellow **GitLab Dashboard** button to open a new tab with the URL of the GitLab instance (`https://*.gitlabtraining.cloud`).
1. Sign in with your generated credentials (`iu######`).

#### Option A. Use the My Group button

1. Select the previous browser tab and click the blue **My Group** button to the right of the yellow **GitLab Dashboard** button.
1. You will be redirected to the group that serves as the namespace for creating your projects

#### Option B. Navigate to My Group

1. In the top navigation, select **Groups** and choose **Your groups** from the dropdown menu.
1. Click the expansion caret to the left of the `Training Users` group.
    > You will receive a 404 error if you click on the name of the `Training Users` folder since you do not have access to resources in that specific folder. Behind the scenes, this is actually a 403 (Unauthorized) error.
1. Click the expansion caret to the left of the `Session ########` group.
1. Click the name of the `My Test Group - iu######` group.
1. You can now see the group that serves as the namespace for creating your projects.

### Workshop Preparation

> The workshop process has iterated multiple times. The latest version of the workshop preparation process has been simplified into a self-service model.

**As the workshop presenter and supporting team member, you are responsible for importing and testing your sample projects and lab guide content. There is no support provided for misconfigured projects, failing pipelines and jobs, or GitLab Runner error messages specific to projects and jobs.**

There is no more peer review or approval process other than scheduling coordination with the field marketing team. **You no longer need to create an issue in the Demo Systems Issue Tracker.** These instructions provide best practice guidance. If you need assistance, please ask in the `#cs-questions` Slack channel to get help from other team members that have delivered similar workshops.

1. **Schedule a Date** - This is usually handled by the field marketing team or workshop organizer. As of 2021-04-23, we have a capacity restriction of one workshop per calendar week. The real-time SSOT schedule can be found in [field-marketing#3074](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/3074).

1. **Invitation Code** - Create your invitation code [using the instructions](#invitation-code-creation). This will automatically create the GitLab group (`/training-users/session-########`) that all student groups and projects will be created underneath. There is a single invitation code per workshop (specific date) that is shared across all student attendees and any instructors performing the lab steps for testing purposes. We can administratively update the expiration date if your workshop is rescheduled. This invitation code should be added in the field marketing issue.

1. **Import Sample Project(s)** - Access the [https://workshop.gitlabtraining.cloud](https://workshop.gitlabtraining.cloud) Omnibus instance [using the administrative credentials that you generated previously](#access-shared-omnibus-instances) and saved in 1Password. Import the project into the [Sample Project Templates](https://workshop.gitlabtraining.cloud/sample-project-templates) group and set the project visibility to `Public`. This will now appear as an instance level project template when you create a new project as a student.

1. **Redeem the Invitation Code (for test user account)** - Open a new browser window in incognito mode and visit [https://gitlabdemo.com/invite](https://gitlabdemo.com/invite). Copy and paste the invitation code that you created and click the **Redeem and Create Account** button. Follow the instructions for [invitation code redemption](#invitation-code-redemption) to access the GitLab group that was created for your student user account.

1. **Follow Your Lab Guide Steps** - You are now signed in as a student and should run through the steps that you plan on having students run through. It is important to be very detail click-by-click oriented and not use any of your tribal knowledge that your students don't have. **All pipelines should pass and have no failed jobs, unless the job failure is specifically documented in your lab guide instructions and the project README.** If you run into problems, you will need to debug them and update the lab guide with the fix or solution. There is no support provided for misconfigured projects, failing pipelines and jobs, or GitLab Runner error messages specific to projects and jobs, so it is best practice to do your due diligence and have peers run through the lab guide as well to catch any errors to provide the most polished experience for students. If you need assistance, please ask in the `#cs-questions` Slack channel to get help from other team members that have delivered similar workshops.

1. **Day of the Workshop** - Use the [slides to show students how to properly redeem an invitation code](https://docs.google.com/presentation/d/1ZKZSecu7orWyQxY8m-et26RQI2-ZELVaFuIrJxNN6-Q/edit?usp=sharing). This can be copied into your lab guide steps. The workshop presenter(s) are responsible for providing support and triaging any problems or failed pipeline job error messages that students see when using your sample project.

1. **Extension Policy** - We do not extend workshop access since it is very resource intensive to keep resources around. Students have access to the Training Cloud until 00:00 UTC two days following the workshop (4:00pm PT on the day after the workshop). Ask students to perform an export of any projects that they want to keep that can be reimported into GitLab.com or another Omnibus instance in their own environment. The [sample project templates group](https://workshop.gitlabtraining.cloud/sample-project-templates) is publicly accessible for reference at a later time, however iterative changes are to be expected.

### Workshop lab guide catalog

All of the workshop content that are created officially can be found in the [gitlab-com/customer-success/workshops](https://gitlab.com/gitlab-com/customer-success/workshops) group. There have historically been many deviations and custom workshops that have been created, so use your best judgement on which sample project to use for your workshop. It is a best practice to test your sample project before every workshop to debug any errors before you have 200 students with problems.

| Lab Guide Name                 | Links | Maintainer |
|--------------------------------|-------|------------|
| Advanced CI/CD                 | [Slides and Sample Projects](https://gitlab.com/gitlab-com/customer-success/workshops/templates/advanced-ci-cd-template) | `@lmwilliams` |
| Program and Project Management | [Slides and Sample Projects](https://gitlab.com/gitlab-com/customer-success/workshops/templates/ppm-template) | `@lmwilliams` |
| DevOps Automation              | [Slides and Sample Projects](https://gitlab.com/gitlab-com/customer-success/workshops/templates/devops-automation-template) | `@lmwilliams` |
| Security                       | [Slides and Sample Projects](https://gitlab.com/gitlab-com/customer-success/workshops/templates/security-template) | `@lmwilliams` |

### Workshop Content Creation Best Practices

When creating new lab guides for a workshop, you should start planning and creating your workshop labs 6-8+ weeks before the planned date of the workshop. **It is a best practice to create and publish your content before scheduling a date for your workshop.** As part of our efficiency value, we encourage you to reuse workshop materials from previous events.

> These are recommendations (not requirements) to help you be successful based on past experience. You can do what you need to do, however keep in mind that you're responsible for supporting and triaging up to 200 users simultaneously who have problems with the sample projects and lab guides that you create.

1. `[4-6+ weeks prior]` **Create or import sample project(s)** - Create your code sample project or import your existing sample project into the [Sample Project Templates](https://workshop.gitlabtraining.cloud/sample-project-templates) GitLab group and set the visibility to `Public`. You can start using your sample project and perform testing using the [workshop preparation instructions](#workshop-preparation).
1. `[4-6+ weeks prior]` **Create a slide deck using the template and add steps for your exercises** - This [slide deck](https://docs.google.com/presentation/d/1ZKZSecu7orWyQxY8m-et26RQI2-ZELVaFuIrJxNN6-Q/edit?usp=sharing) has the standardized instructions for students to redeem an invitation code and import their project. You will need to add additional slides with the lab exercises being performed in your workshop.
    - We use step-by-step instructions in the slides to allow students with a variety of learning styles to be successful in our workshops. Remember that not all students will perform the steps to create their lab environment, so instructions should be in the slides in addition to the `README`.
    - Remember to update all screenshots based on what you see when you perform your tests with your sample projects. Slide decks that have instructions that do not match what the student sees will cause confusion.
    - Remember that while you may be presenting this workshop, others should be able to reuse your content or consume it async. Everything that you think is important or said verbally is either on the slide or in the presenter notes of the slide deck. It is helpful to record your dry run to be able to go back and add in the verbal only information. Please help the team live our values of iteration and build upon the great work that you're doing.
    - **Helpful tip:** You can redeem the invitation code multiple times to get a fresh environment to perform lab exercise steps.
1. `[3-5+ weeks prior]` **Publish the link to your sample project in the event issue** - After your project is ready for performing lab exercises, update the event issue description with the link to your sample project.
1. `[3-5+ weeks prior]` **Publish the link to your slides in the issue** - After you have added your lab exercise steps, update the event issue description with the link to your slides. The peer review process is up to your discretion.
1. `[3-5+ weeks prior]` **Record a video of yourself performing lab steps (dry run)** - Use your preferred screenshare recording tool (Zoom, Camtasia, Screenflow, etc) to record a video of walking through the lab steps and providing a narrative of what you're doing. This serves as a dry run that other team members can review and serves as a guideline for peer reviewers to follow if your lab steps are not sufficient. You will find that you will explain a lot of things verbally that are not written down and this is a chance to capture it while benefiting the others that are reviewing the labs.
1. `[2-4+ weeks prior]` **Peer review of lab exercises** - The peer reviewers should review the slide deck for understandability and topic coverage. They will also perform the lab exercises as if they are a student to ensure that instructions are easy to understand and follow, and identify any technical issues or possible confusion areas that should be known for the team members assisting with the workshop in real time.
    - Each peer reviwer should comment on the issue with a full review. The goal is to reach a "good enough" state that all students can be successful with the instructions as written.
1. `[2-3+ weeks prior]` **Final edits and publishing** - It is expected that there will be several hours of edits to make to the slides or lab exercises based on the peer review.
1. `[1-3+ weeks after]` **Publish to catalog** - After the workshop has been completed and any reported problems are mitigated, you should publish the lab guide for your workshop to the catalog for future re-use.

## Version Upgrades and Maintenance

We perform version upgrades on the weekend following the [monthly release](/handbook/engineering/releases/). The weekend upgrades are performed at a random time on Saturday or Sunday based on engineer availablility and lasts for approximately 30 minutes.

We delay the upgrade window for updates that we consider risky or occur during holidays. This occurs during May each year that aligns with the US Memorial Day holiday, in December around the Christmas Holiday, and in January at the end of the fiscal year when we have a configuration freeze until sales demos are completed.

For patch and security updates, we will usually only perform upgrades for critical updates and will announce maintenance windows in the `#demo-systems` channel on Slack.

### Upgrade Schedule

The `cs.gitlabdemo.cloud` instance is upgraded to the latest version on the second or third weekend after release (minimum 10 days) to allow time for patch versions. The `ilt`, `spt`, and `workshop` training instances are version locked based on training content and are upgraded in conunction with course material updates.

| GitLab Version | Release Date     | Upgrade Window (Sat to Sun) |
|----------------|------------------|-----------------------------|
| v14.3          | 2021-09-22 (Wed) | 10-02 to 10-03              |
| v14.4          | 2021-10-22 (Fri) | 11-06 to 11-07              |
| v14.5          | 2021-11-22 (Mon) | 12-03 to 12-04              |
| v14.6          | 2021-12-22 (Wed) | 2022-01-01 to 01-02         |
| v14.7          | 2022-01-22 (Sat) | 02-05 to 02-06              |
| v14.8          | 2022-02-22 (Tue) | 03-05 to 03-06              |
| v14.9          | 2022-03-22 (Tue) | 04-02 to 04-03              |
| v14.10         | 2022-04-22 (Fri) | 05-07 to 05-08              |

### Legacy Version Support

We keep our shared environment up-to-date with the latest versions to help showcase the value that the newest features and solutions offer.

For demo and sandbox use cases requiring an older version, you can deploy a GitLab instance in a container in the Container Sandbox or using Omnibus in the Compute Sandbox. We do not offer any data migration or parity configuration support.

## Tutorials

- [Configuring GitLab with group-level Kubernetes cluster](/handbook/customer-success/demo-systems/tutorials/getting-started/configuring-group-cluster/)
- [Create a Jenkins Pipeline (Deprecated, Educational only)](/handbook/customer-success/demo-systems/tutorials/integrations/create-jenkins-pipeline/)

## Sample Data

Historically, there has not been a consistent set of demo data. Each of our Solutions Architects are responsible for creating their own demo data or forking projects from other team members.

See the handbook page for [Demo Readiness](/handbook/solutions-architects/demonstrations/#demo-readiness) and [Existing Demonstrations](/handbook/solutions-architects/demonstrations/#existing-demonstrations) to get started.

Please see the <a href="https://gitlab.com/gitlab-com/customer-success/solutions-architecture-leaders/sa-initiatives/-/issues">Solutions Architecture Initiatives issue tracker</a> for more information on the crowd sourced OKRs that are in progress and the development of our [Communities of Practice](/handbook/customer-success/initiatives/communities-of-practice.html).

## Projects and Code Repositories

These are the projects that make the Demo Systems possible behind the scenes. You are welcome to study and learn from any of our source code. Each project is classified as `Public` or `Private` depenending on the security risk of the source code or information contained within.

### Demo Systems v2

The Demo Systems v2 repositories can be found in [gitlab.com/gitlab-com/demo-systems](https://gitlab.com/gitlab-com/demo-systems).

- `Public` Underlying Terraform Modules and Ansible Role
    - [terraform-modules](https://gitlab.com/gitlab-com/demo-systems/terraform-modules)
    - [terraform-modules/gcp/gce/gcp-compute-instance-tf-module](https://gitlab.com/gitlab-com/demo-systems/terraform-modules/gcp/gce/gcp-compute-instance-tf-module)
    - [terraform-modules/gcp/gke/gke-cluster-tf-module](https://gitlab.com/gitlab-com/demo-systems/terraform-modules/gcp/gke/gke-cluster-tf-module)
    - [ansible-roles/omnibus](https://gitlab.com/gitlab-com/demo-systems/ansible-roles/omnibus)
- `Public` Assembled Terraform Modules and Environments
    - [terraform-modules/gcp/gitlab/gitlab-omnibus-sandbox-tf-module](https://gitlab.com/gitlab-com/demo-systems/terraform-modules/gcp/gitlab/gitlab-omnibus-sandbox-tf-module)
    - [environment-templates/gitlabtraining-shared-environment-template](https://gitlab.com/gitlab-com/demo-systems/environment-templates/gitlabtraining-shared-environment-template)
    - [INSTALL.md example](https://gitlab.com/gitlab-com/demo-systems/environment-templates/gitlabtraining-shared-environment-template/-/blob/master/INSTALL.md)
- `Private` Environments IaC - see `terraform/terraform.tfvars.json` and CI pipeline
    - [environments](https://gitlab.com/gitlab-com/demo-systems/environments)
    - [environments/cs-gitlabdemo-cloud](https://gitlab.com/gitlab-com/demo-systems/environments/cs-gitlabdemo-cloud)
    - [environments/ilt-gitlabtraining-cloud-iac](https://gitlab.com/gitlab-com/demo-systems/environments/ilt-gitlabtraining-cloud-iac)
    - [environments/spt-gitlabtraining-cloud-iac](https://gitlab.com/gitlab-com/demo-systems/environments/spt-gitlabtraining-cloud-iac)
    - [environments/workshop-gitlabtraining-cloud-iac](https://gitlab.com/gitlab-com/demo-systems/environments/workshop-gitlabtraining-cloud-iac)
    - [environments/app-gitlabdemo-cloud](https://gitlab.com/gitlab-com/demo-systems/environments/app-gitlabdemo-cloud)
- `Public` Management Applications
    - [management-apps/gitlabdemo-cloud-app](https://gitlab.com/gitlab-com/demo-systems/management-apps/gitlabdemo-cloud-app)
    - [gitlab.com/hackystack/hackystack-portal](https://gitlab.com/hackystack/hackystack-portal) (Open source namespace)
    - [sandbox-cloud/apps-tools/hackystack-portal](https://gitlab.com/gitlab-com/demo-systems/sandbox-cloud/apps-tools/hackystack-portal) (Mirror for Ultimate features)
- `Private - Ops` Sandbox Cloud Infrastructure
    - [ops.gitlab.net/cloud-realms/master-account/gcp/gcp-hackystack-portal-prd-tf](https://ops.gitlab.net/cloud-realms/master-account/gcp/gcp-hackystack-portal-prd-tf)
    - [ops.gitlab.net/cloud-realms/master-account/gcp/gcp-hackystack-portal-prd-ansible](https://ops.gitlab.net/cloud-realms/master-account/gcp/gcp-hackystack-portal-prd-ansible)
    - [ops.gitlab.net/cloud-realms/master-account/gcp/gcp-sandbox-cloud-dns-tf](https://ops.gitlab.net/cloud-realms/master-account/gcp/gcp-sandbox-cloud-dns-tf)
- `Private` Runbooks
    - [runbooks](https://gitlab.com/gitlab-com/demo-systems/runbooks)
    - [ops.gitlab.net/cloud-realms/apps-tools/runbook-docs](https://ops.gitlab.net/cloud-realms/apps-tools/runbook-docs)

### Demo Systems v1 (Deprecated)

The Demo Systems v1 repositories can be found in [gitlab.com/gitlab-com/customer-success/demo-systems](https://gitlab.com/gitlab-com/customer-success/demo-systems).

- `Private` Terraform Monolith Environments and Modules
    - [infrastructure/demosys-terraform](https://gitlab.com/gitlab-com/customer-success/demo-systems/infrastructure/demosys-terraform)
- `Private` Ansible Monolith Configuration and Roles
    - [infrastructure/demosys-ansible](https://gitlab.com/gitlab-com/customer-success/demo-systems/infrastructure/demosys-ansible)
- `Private` Management Applications (gitlabdemo.com)
    - [infrastructure/demosys-portal](https://gitlab.com/gitlab-com/customer-success/demo-systems/infrastructure/demosys-portal)
- Issue Trackers
    - [Demo Systems](https://gitlab.com/gitlab-com/demo-systems/issue-tracker)

### Handbook Links for Related Infrastructure

- [GitLab Sandbox Cloud](/handbook/infrastructure-standards/realms/sandbox/)
- [GitLab Infrastructure Standards](/handbook/infrastructure-standards/)
- [GitLab Infrastructure Standards - Labels and Tags](/handbook/infrastructure-standards/labels-tags/)
- [Demo Systems Kubernetes Architecture Docs](/handbook/customer-success/demo-systems/infrastructure/kubernetes/)
- [Demo Systems Network Architecture and Subnet Docs](/handbook/customer-success/demo-systems/infrastructure/networking/)

### Help and Support

We use Slack for real-time support and quick fixes. If in doubt of how to get help, ask in `#demo-systems`. The issue trackers are used for tasks and projects that take longer than 30 minutes. We do not use email for internal team communications.

- [Demo Systems Issue Tracker](https://gitlab.com/gitlab-com/demo-systems/issue-tracker/-/issues)
- `#demo-systems` Slack channel (for Demo Cloud announcements, questions, and technical support with Demo Cloud)
- `#demo-systems-ps-education` Slack channel (for ILT/SPT training lab discussions)
- `#demo-systems-workshops` Slack channel (for workshop discussions)
- `#sandbox-cloud` Slack channel (for Sandbox Cloud announcements)
- `#sandbox-cloud-questions` Slack channel (for Sandbox Cloud questions and technical support)
- `demo-systems-admin@gitlab.com` (for non-Slack users)
