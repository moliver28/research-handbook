---
title: Package:Package Registry Group
---

## 📦 The Team

The Package Registry is part of the GitLab [Package
stage](/handbook/engineering/development/ops/package/), which integrates with [GitLab's CI/CD product](https://about.gitlab.com/direction/ops/).

## Who We Are

### Team Members

The following people are permanent members of the Package Registry Group:

{{< team-by-manager-slug manager="crystalpoole" team="Package Registry" >}}

### Stable Counterparts

The following members of other functional teams are our stable counterparts:

{{< stable-counterparts manager="crystalpoole" role="[,&] Package" >}}

## How We Work

### Directly Responsible Individual (DRI)

A [DRI](/handbook/people-group/directly-responsible-individuals/) is assigned to every substantial project or initiative the team works on. A project is considered substantial when the work involved is expected to span more than two milestones. When projects take that long to deliver, tasks such as the planning and breakdown of deliverables and regular async updates become increasingly important for the project's success. Therefore, it makes sense to enforce the assignment of a DRI, who will be personally accountable for those tasks.

We strongly encourage everyone on the team to step forward and sign up as DRI for new projects. Ideally, all team members should experience this role over time. This promotes shared ownership, accountability and development opportunities for all team members.

In case of critical, unusually long, or highly complex projects, a specific DRI with the most experience on the subject may be assigned by the Engineering Manager. In these situations, other team members may volunteer or be assigned to shadow the assigned DRI and act as backup. This provides not only a learning opportunity for newer team members but also redundancy.

Apart from what is described in the [DRI handbook page](/handbook/people-group/directly-responsible-individuals/), DRIs leading projects on the team must perform the following tasks:

- Make sure the epic that serves as single source of truth for the project is kept up to date, and so are the individual sub epics and issues under;
- Make sure to consistently provide a weekly async update on the related epic. Low-level updates on sub-epics are optional. High-level updates on the root epic are required.
- Ensure there is at least one issue ready to be scheduled on the next milestone;
- Engage with the Product Manager to have the issue(s) ready for development scheduled in the next milestone;
- Keep the Engineering Manager and Product Manager aware of any unexpected changes to the plan;
- Consult and collaborate with other DRIs when inter project dependencies or blockers are identified;
- Consult with other engineers when the project's technical scope changes.

The DRI for a given project can be identified by looking at the corresponding epic's description, where a section as follows should be added:

```md
## Owners

* Team: [Package Registry](/handbook/engineering/development/ops/package/package-registry/)
* Most appropriate slack channel to reach out to: `#g_package-registry`
* Best individual to reach out to: <!-- GitLab handle of the DRI, or "TBD" if none has been assigned yet -->
* PM: @trizzi
* EM: @crystalpoole
```

Additionally, we maintain a list of active projects and the assigned DRI on this page, in [What Are We Working On](#what-are-we-working-on).

#### DRI for package manager formats

The Package Registry supports several different package manager formats. Although the functionality between formats is similar, there is enough nuance in the implementation and maintanence of each format that we have DRI's for each format.

| Format | DRI    |
| ------ | ------ |
| npm       | [@dmeshcharakou](https://gitlab.com/dmeshcharakou)    |
| Maven     | [@10io](https://gitlab.com/10io)             |
| PyPI      | [@radbatnag](https://gitlab.com/radbatnag)        |
| NuGet     | [@mkhalifa3](https://gitlab.com/mkhalifa3)        |
| Terraform | [@radbatnag](https://gitlab.com/radbatnag)        |
| Generic   | [@dmeshcharakou](https://gitlab.com/dmeshcharakou)    |

### How we handle breaking changes

Announce deprecations, breaking changes, and removals at least 3 milestone before (according to https://docs.gitlab.com/ee/development/deprecation_guidelines/#when-can-a-feature-be-removedchanged).

- Before the major version milestone: implement the breaking change with a feature flag. A feature flag will be used every time unless there is a very good argument not to.
- In the major version milestone:
  - Rollout the feature flag.
  - If no issues are detected, the change is considered stable and we can open the feature flag cleanup MR.

By implementing the change before the major milestone we have less MRs to produce on the major version milestone. In addition, it allows more flexiblity. For example, if the rollout goes wrong. We have then two paths:
- We can fix it before the end of the major version milestone and do the rollout again or
- We can disable the feature flag and wait for the next major version milestone to re-do the rollout.

## 📈 Measuring results

### OKRs

We use quarterly Objectives and Key Results as a tool to help us plan and measure how to achieve Key Performance Indicators (KPIs).

Here is the [standard, company-wide process for OKRs](/handbook/company/okrs/)

<iframe src="https://app.ally.io/public/EkMQUhunXy9Ifeo" class="dashboard-embed" height="600" width="100%" style="border:none;"> </iframe>

### Performance indicators

We measure the value we contribute by using [performance indicator metrics](/handbook/product/performance-indicators/). The primary metric used for the Package Registry group is the number of monthly active users or GMAU.

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="package registry" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
  {{< tableau/filters "GROUP_LABEL"="package registry" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/Flakytestissues/FlakyTestIssues" >}}
  {{< tableau/filters "GROUP_NAME"="package registry" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/SlowRSpecTestsIssues/SlowRSpecTestsIssuesDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="package registry" >}}
{{< /tableau >}}

### What Are We Working On

Here is a list of active projects and initiatives that we are currently working on, along with the corresponding [DRI](/handbook/people-group/directly-responsible-individuals/):

| Project                                                                                                                                        | DRI                                                                                       |
|------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------|
| [Automated packages import from Artifactory or Sonatype](https://gitlab.com/groups/gitlab-org/-/epics/8730)                                    | [@10io](https://gitlab.com/10io)                                                          |
| [Maven dependency proxy](https://gitlab.com/groups/gitlab-org/-/epics/3610)                                                                    | [@10io](https://gitlab.com/10io)                                                          |
| [Improve the performance of package metadata generation](https://gitlab.com/groups/gitlab-org/-/epics/9835)                                 | [@dmeshcharakou](https://gitlab.com/dmeshcharakou)                                        |
| [Eliminating duplicate npm packages](https://gitlab.com/groups/gitlab-org/-/epics/9812)                                                        | [@dmeshcharakou](https://gitlab.com/dmeshcharakou)                                        |
| [Key improvements for the npm registry](https://gitlab.com/groups/gitlab-org/-/epics/7037)                                                     | [@radbatnag](https://gitlab.com/radbatnag)                                                |
| [Key improvements for the NuGet registry](https://gitlab.com/groups/gitlab-org/-/epics/7039)                                                   | [@mkhalifa3 ](https://gitlab.com/mkhalifa3)                                               |


## Documentation

Package Registry documentation is available [here](https://docs.gitlab.com/ee/user/packages/package_registry).
