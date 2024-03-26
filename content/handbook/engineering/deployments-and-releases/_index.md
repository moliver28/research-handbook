---
title: "Deployments and Releases"
---

## Overview and terminology

This page describes the deployment and release approach used to deliver changes to users. The overall process consists of two significant parts:

1 **Monthly self-managed release**: GitLab version (XX.YY.0) [published every month][process-monthly-release]. From this monthly release, [patch][process-patch-release], [non-critical][process-security-release-non-critical], and [critical][process-security-release-critical] security releases are created as needed
1 **GitLab.com deployment**: A Continous Delivery process to deploy [branches created from master branch][auto-deploy], on regular intervals.

For more details on the individual processes and how to use them please see the [Deployments page](/handbook/engineering/deployments-and-releases/deployments) for GitLab.com changes and the [Releases page](/handbook/engineering/releases/) for changes for self-managed users.

**The main priority** of both deployments and releases **[is GitLab availability & security](/handbook/engineering/development/principles/#prioritizing-technical-decisions)**
as an application running on both GitLab.com and for users running GitLab
in their own infrastructure.

### Deployment and Release Process overview

{{< youtube "aAQuhUnpbQE" >}}

For testing purposes, all changes are deployed to GitLab.com before being considered for a self-managed release. Deployment and release cadences operate on different timelines with changes deploying to GitLab.com multiple times per day, and packages being released for self-managed users several times a month.

This overview shows how the two processes are connected:

![Deployment and Release process overview](deployment-and-release-process-overview.png)

- [Diagram source](https://docs.google.com/presentation/d/1YRjA1dYCXNXp06VltDYlik1MdFyzUvaeXKk69mMPcA4/edit?usp=sharing)

1. Engineer creates features or bug fixes. Changes reviewed by Maintainers
1. Validated changes merged into the default branch
1. A scheduled pipeline packages all new changes into an "auto-deploy package" for deployment to GitLab.com. Multiple packages are created each day at the [listed times](/handbook/engineering/deployments-and-releases/deployments/#gitlabcom-deployments-process)
1. If deployments are allowed the auto-deploy pipeline starts. Production Change Locks, unhealthy environments, or other ongoing deployments are examples of events that would prevent a deployment
1. The auto-deploy package is deployed to GitLab.com. For more details [see the deployment process](/handbook/engineering/deployments-and-releases/deployments/#gitlabcom-deployments-process)
1. Changes that have been successfully deployed to GitLab.com can be considered for packaged release for self-managed users. A new release candidate package is created for these changes
1. The release candidate is deployed to a test environment and automated QA tests execute
1. Release Candidate is officially tagged and published for release

For a more detailed explaination of the processes see the [deployments page](/handbook/engineering/deployments-and-releases/deployments/) and the [releases page](/handbook/engineering/releases/)

## Release Managers

The overall coordination and operation of the deployment and release process is the responsibility of the release managers.

See the GitLab [Release Managers schedule] to find out who the current release managers are.

### How to contact a Release Manager

You can contact the current Release Managers:

1. On GitLab issues and epics by using `@gitlab-org/release/managers` handle
1. On Slack by using the `@release-managers` handle

We use the `#releases` and `#f_upcoming_releases` channels to discuss and coordinate deployments and releases. Automated deployment status announcements are made to the `#announcements` channel.

If you need to escalate a request, please use the [release management escalation process](/handbook/engineering/infrastructure/team/delivery/#release-management-escalation)

### Weekly Delivery Metrics Review

Each week, the current Release Managers walk through the key Delivery Group metrics in the EMEA/AMER Delivery Weekly sync ([YouTube Playlist](https://www.youtube.com/playlist?list=PL05JrBw4t0KoPzC03-4yXuJEWdUo7VZfX)). The goal is to share experiences about recent deployments and releases, and for the Group to identify ways we can improve our tools and processes.

[MTTP Monthly](/handbook/engineering/infrastructure/performance-indicators/#mean-time-to-production-mttp) - [Deployment blockers](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/1192) - [Deployment SLO](https://dashboards.gitlab.net/d/delivery-deployment_slo/delivery-deployment-slo?orgId=1) - [GitLab: deployment frequency](https://gitlab.com/gitlab-org/gitlab/-/pipelines/charts?chart=deployment-frequency) - [GitLab: lead time](https://gitlab.com/gitlab-org/gitlab/-/pipelines/charts?chart=deployment-frequency)

1. Walkthrough [Auto-Deploy packages dashboard](https://dashboards.gitlab.net/d/delivery-auto_deploy_packages/delivery-auto-deploy-packages-information?orgId=1)
1. Walkthrough the monthly view of [GitLab: deployment frequency](https://gitlab.com/gitlab-org/gitlab/-/pipelines/charts?chart=deployment-frequency) and [GitLab: lead time](https://gitlab.com/gitlab-org/gitlab/-/pipelines/charts?chart=lead-time) - note any patterns
1. Walkthrough of last week’s [Deployment Blockers](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/1192)
1. Do we need to take action based on the previous week’s MTTP?


## Resources

| Description        | Location            |
|--------------------|---------------------|
| Release documentation | [Link](https://gitlab.com/gitlab-org/release/docs) |
| Release related tasks issue tracker | [Link](https://gitlab.com/gitlab-org/release/tasks/) |
| Delivery team issue tracker | [Link](https://gitlab.com/gitlab-com/gl-infra/delivery/issues) |
| Release manager schedule | [Link](https://about.gitlab.com/community/release-managers/) |
| Deployment process | [Link](/handbook/engineering/deployments-and-releases/deployments/) |
| Release process | [Link](/handbook/engineering/releases/) |
| Maintenance Policy | [Link](https://docs.gitlab.com/ee/policy/maintenance.html) |

[auto-deploy]: https://www.youtube.com/watch?v=_G-EWRpCAz4
[process-monthly-release]: https://gitlab.com/gitlab-org/release/docs/blob/master/general/monthly/process.md
[process-patch-release]: https://gitlab.com/gitlab-org/release/docs/blob/master/general/patch/process.md
[process-auto-deploy]: https://gitlab.com/gitlab-org/release/docs/blob/master/general/deploy/auto-deploy.md
[process-security-release-critical]: https://gitlab.com/gitlab-org/release/docs/blob/master/general/security/process.md#critical-security-releases
[process-security-release-non-critical]: https://gitlab.com/gitlab-org/release/docs/blob/master/general/security/process.md#non-critical-security-releases
[Release Managers schedule]: https://about.gitlab.com/community/release-managers/
