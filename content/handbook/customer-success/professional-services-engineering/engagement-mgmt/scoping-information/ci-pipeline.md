---
title: "Professional Services EM Scoping - CI/CD Pipeline Migration"
description: "Describes the process for scoping pipeline migrations from other CI/CD systems to GitLab"

---

## General discovery questions to determine customer maturity level

Its helpful to understand the level of maturity that the customer is on as it relates to CI/CD, Containers and repository hygiene. The following questions should be considered if a customer is interested in **GitLab Ultimate** or the **DevOps Platform Concent**. Also, consider these questions if conversations on **SCM Migration** are expanding to migration of additional data elements from the later stages of the DevOps lifecycle.

| Question | Answer | Sample Answer | Rationale for asking|
| ----- | ----- | ----- | ----- |
| How do you use containers in your software development lifecycle today? | | We deploy our software applications into containers OR We use general purpose containers to run CI/CD jobs OR We use purpose-built containers with a tightly managed bill of materials to run CI/CD jobs. | This question is meant to purposfully differentiate deploying software as containers vs. using containers to run CI/CD jobs.  |
| How do you control/manage the software that is installed and runs on your CI/CD compute environment? | | We allow each application team to install software on their VMs/Containers so they can build/test/scan/deploy their apps. OR  We centrally manage the base VMs/Containers that are allowed to perform build/test/scan/deploy jobs. App teams can add software to those VMs/Containers. | We are hoping to understand how the customer manages their [SDLC Supply chain](https://about.gitlab.com/direction/supply-chain/#overview) and the risks associated with losing control of the software running in their CI/CD ecoysystem. |
| How long does it take you to pull in containers into your environment? | | We pull containers from the internet monthly and scan and publish internally. If we need a new container, you can expect this to take about a week for the request to approved, and processed. OR We dont have a scanning approach today; App teams can use whatever container they want. | We want to understand the security practices in place today to ensure we scope services properly. |
| How do you structure your repositories, structured (single tech stack focused on a single solution) vs. unstructured (many tech stacks that host many software solutions) | | Most of the git repositories are focused on a single software solution. We may have a few unstructured repositories, but these are outliers. | We ask this because using strutured repositories will help make use of GitLab CI/CD (and specifically Pipeline COE) out of the box. |
| How do you currently import packages such as Debian or Red Hat packages into your environment today? | | We utilize Red Hat Satellite to handle this. We currently allow developers to import packages themselves. We have an internal Apt/Yum Repository that we import packages into | We want to understand the level of control/standardization the customer currently has and what level of control/standarization they want to achieve in their future state. |

## General approaches for CI/CD "Migration"

1. **Flash Cut** - Migrate all data from legacy CI platform to GitLab including job definitions, job outputs and artifacts. *Note: This is typically harder to do as you will need to recreate history on the new system. Most customers are not interested in the additional cost (development time to script/test, longer migration). Wherever possible, we should recommend **Net New***.
2. **Net New** - Update all pipelines job definitions to run on the customer GitLab instance using GitLab CI. All job history remains on the legacy system. All historical packages and containers are left on the legacy system and rebuilt on the new GitLab system.

## Migrating from Artifactory to GitLab Registry

## Specific Approaches

1. **Flash Cut** - Migrate all data from Artifactory to GitLab registry including historically built packages and containers. *(Not recommended)*
2. **Net New** - Update all pipelines to push to and pull from GitLab registry so that all newly built software packages are stored in GitLab in the build/package stage. Then in the deploy stage they are pulled from GitLab registry. Slowly migrate the dependencies that don't often change to GitLab registry. Graudally phase out Artifactory. *(Recommended)*

## Scoping Questions - Artifactory Migration Opportunity

| Question | Answer | Sample Answer | Rationale for asking|
| ----- | ----- | ----- | ----- |
| What artifacts are stored in artifactory? | | built software binaries and docker containers. No dependent libraries - we go out to the internet for these | This will affect the decision on general approaches listed above |
| How many artifacts are stored in artifactory? | | 1,234 | Shows roughly how large the scope of a migration project will be. |
| How many artifactory servers do you have? | | 2 | This is a gauge of complexity. The more artifactory services, the more complex. |
| How many software packages/images are pushed to artifactory per Month? |  | 2345 | This shows the customer is measuring this data to be used during the transition process. |
| How many software packages/images are pulled from artifactory per month? |  | 2345 | This shows the customer is measuring this data to be used during the transition process. |

## Migrating from Jenkins to GitLab CI

## Specific Approaches - Jenkins Migration

1. **Flash Cut** - Migrate all data from Jenkins to GitLab CI and update pipeline files at once.
2. **Net New** - Update all pipeline job definitions to run on the customer GitLab instance using GitLab CI. All job history remains on the legacy system. All historical packages and containers are left on the legacy system and rebuilt on the new GitLab system.

## Scoping Questions - Jenkins Migration Opportunity

| Question | Answer | Sample Answer | Rationale for asking|
| ----- | ----- | ----- | ----- |
| How many Jenkins Instances do you have? Please list them and answer the below questions for each instance.  | | 2 instances - US east and US West | We need to know this to understand the scope of migration  |
| Where are these instances located? | | AWS US East 1c, In our on-prem Sacramento data center | Thinking through connectivity between Jenkins servers and GitLab |
| Total number of jobs? | | 6,400 | This is a gauge of scale and an indicator of project duration |
| Total number of users? | | 900 | This is a gauge of scale and an indicator of project duration |
| Total number of repositories? | | 6,400 | This helps us understand cardinality (e.g. how many jobs are associated with each source code project). Its also an indicator of scale of an engagement. |
| How does Jenkins currently communicate with your SCM? | | A single service account is used for polling the SCM for changes. | If there is a shift in responsibility (from platform team to application team), this tells us whether we should discuss education services on how to configure the GitLab project. |
| What Jenkins plugins are you using most often? |  | We use the maven plugin extensively. Also some teams use Ant/Gradle plugins. Some usage of .NET SDK too.  | Knowing more about the plugins that support your workflow will help us understand how much time to spend on building workflow proposals to use an approach based on GitLab best practices. |
| Do you use the branch/source plugin to automate the creation of jenkins folders or jobs?  |  | We don't use the branch/source plugin for automatically creating jenkins jobs on repo creation | This automation is usually something customers want to retain, so we will need special considerations for this kind of approach. |
| What type of job executors pick up your Jenkins jobs? | | We have a persistently running fleet of virtual machines that are available to run jobs. | This helps us understand the level of effort to port your workflows to use GitLab best practices (leveraging containerized builds). |
