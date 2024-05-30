---
title: Package:Container Registry Group
---

## The Team

The Container Registry is part of the GitLab [Package
stage](/handbook/engineering/development/ops/package/), which integrates with [GitLab's CI/CD product](https://about.gitlab.com/direction/ops/).

## Who We Are

### Team Members

The following people are permanent members of the Container Registry Group:

{{< team-by-manager-slug manager="crystalpoole" team="Container Registry" >}}

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

* Team: [Container Registry](/handbook/engineering/development/ops/package/container-registry/)
* Most appropriate slack channel to reach out to: `#g_container-registry`
* Best individual to reach out to: <!-- GitLab handle of the DRI, or "TBD" if none has been assigned yet -->
* PM: @trizzi
* EM: @crystalpoole
```

Additionally, we maintain a list of active projects and the assigned DRI on this page, in [What Are We Working On](#what-are-we-working-on).

## 📈 Measuring results

### OKRs

We use quarterly Objectives and Key Results as a tool to help us plan and measure how to achieve Key Performance Indicators (KPIs).

Here is the [standard, company-wide process for OKRs](/handbook/company/okrs/)

### Performance indicators

We measure the value we contribute by using [performance indicator metrics](/handbook/product/performance-indicators/). The primary metric used for the Package Registry group is the number of monthly active users or GMAU.

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="container registry" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
  {{< tableau/filters "GROUP_LABEL"="container registry" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/Flakytestissues/FlakyTestIssues" >}}
  {{< tableau/filters "GROUP_NAME"="container registry" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/SlowRSpecTestsIssues/SlowRSpecTestsIssuesDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="container registry" >}}
{{< /tableau >}}

### What Are We Working On

Here is a list of active projects and initiatives that we are currently working on, along with the corresponding [DRI](/handbook/people-group/directly-responsible-individuals/):

| Project                                                                                                                                        | DRI                                  | Backup DRI                            |
| ---------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------ | ------------------------------------- |
| [Release container registry with metadata database and online GC for self-managed installs](https://gitlab.com/groups/gitlab-org/-/epics/5521) | {{< member-by-gitlab hswimelar >}}   |                                       |
| [Storage and limits management for the Container Registry](https://gitlab.com/groups/gitlab-org/-/epics/7225)                                  | {{< member-by-gitlab jdrpereira >}}  | {{< member-by-gitlab suleimiahmed >}} |
| [Container Registry AMAU: Track usage](https://gitlab.com/groups/gitlab-org/-/epics/8213)                                                      | {{< member-by-gitlab jaime >}}       |                                       |
| [Allow renaming/moving groups and projects with container repositories](https://gitlab.com/groups/gitlab-org/-/epics/9459)                     | {{< member-by-gitlab suleimiahmed >}}|                                       |
| [Data transfer visibility for the Container Registry](https://gitlab.com/groups/gitlab-org/-/epics/8732)                                       | {{< member-by-gitlab jdrpereira >}}  |                                       |
| [Implement auto deployments for the Container Registry](https://gitlab.com/groups/gitlab-org/-/epics/7998)                                     | {{< member-by-gitlab suleimiahmed >}}|                                       |

## Documentation

Project documentation is available [here](/product/container-registry/).
