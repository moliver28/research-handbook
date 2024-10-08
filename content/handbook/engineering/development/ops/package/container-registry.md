---
title: Package:Container Registry Group
---

## The Team

The Container Registry is part of the GitLab [Package stage](/handbook/engineering/development/ops/package/), which integrates with [GitLab's CI/CD product](https://about.gitlab.com/direction/ops/).

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

Authors of merge requests related to a specific project should request a review from the assigned DRI or backup DRI to ensure they are aware of the changes and can provide the necessary oversight.

### Alert management

The team is responsible for monitoring the Slack channel [#g_container-registry_alerts](https://gitlab.enterprise.slack.com/archives/C046REGL9QD) where alerts are displayed for the registry service and code base (broken master). Alerts are configured in
the [runbooks project](https://gitlab.com/gitlab-com/runbooks/-/tree/master/docs/registry) and they follow the infrastructure team
process to define them.

#### Processs for handling alerts

The team has agreed on the following process to handle alerts:

1. There is no person formally on-call (unless otherwise agreed during certain periods, e.g. end of year holidays).
1. Everyone is responsible for keeping an eye on [#g_container-registry_alerts](https://gitlab.enterprise.slack.com/archives/C046REGL9QD) during their working hours.
1. When there is an alert(s):
   1. Add an 👀 emoji to the alert to signal it is being looked at.
   1. Click on an alert for details. Each alert may contain the following:
      - Runbook - how to deal with the alert.
      - Dashboard - link to Grafana that chart related to the metric that triggered the alert.
      - Pipeline that failed - broken `master`.
      - Sentry issue - contains stacktrace to alert origin.
   1. Review logs:
      - [non-prod logs](https://nonprod-log.gitlab.net/goto/f3fbccdb9dea6805ff5bbf1e0144a04e)
      - [prod logs](https://log.gprd.gitlab.net/goto/7dc6f73d5dd4cc4bebcd4af3b767cae4)
   1. Determine if it's safe to ignore:
      - There is an existing issue for this alert. If so, add an occurrence of this problem in the issue.
      - The logs/dashboards show that the issue seems to be resolved. For example, when the Pending Tasks metric for the online garbage collector is going down after a sudden peak and there are no errors in the logs.
      - The alert has been automaticlaly resolved.
      - Open an issue if this requires attention in the future.
   1. Otherwise:
      - Review the [#production](https://gitlab.enterprise.slack.com/archives/C101F3796) channel and the [#incident-management](https://gitlab.enterprise.slack.com/archives/CB7P5CJS1) channel for existing incidents that may be related.
      - If there is an ongoing incident, consider helping or reaching out to the team for assitance.
      - Otherwise, consider [reporting an incident](https://about.gitlab.com/handbook/engineering/infrastructure/incident-management/#reporting-an-incident).
      - Share details in the [#g_container-registry](https://gitlab.enterprise.slack.com/archives/CRD4A8HG8) channel to raise awereness.
      - Ping people as needed.
   1. Add a comment as a thread to the alert that you reviewed.

## 📈 Measuring results

### OKRs

We use quarterly Objectives and Key Results as a tool to help us plan and measure how to achieve Key Performance Indicators (KPIs).

Here is the [standard, company-wide process for OKRs](/handbook/company/okrs/)

### Performance indicators

We measure the value we contribute by using [performance indicator metrics](https://internal.gitlab.com/handbook/company/performance-indicators/product/). The primary metric used for the Package Registry group is the number of monthly active users or GMAU.

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

| Project                                                                                                                | DRI                                   | Backup DRI                          |
| ---------------------------------------------------------------------------------------------------------------------- | ------------------------------------- | ----------------------------------- |
| [Release metadata database and online GC for self-managed installs](https://gitlab.com/groups/gitlab-org/-/epics/5521) | {{< member-by-gitlab hswimelar >}}    | {{< member-by-gitlab jaime >}}      |
| [AMAU usage tracking](https://gitlab.com/groups/gitlab-org/-/epics/8213)                                               | {{< member-by-gitlab jaime >}}        | {{< member-by-gitlab adie.po >}}    |
| [Allow renaming/moving groups and projects with repositories](https://gitlab.com/groups/gitlab-org/-/epics/9459)       | {{< member-by-gitlab suleimiahmed >}} | {{< member-by-gitlab adie.po >}}    |
| [Database load balancing](https://gitlab.com/groups/gitlab-org/-/epics/8591)                                           | {{< member-by-gitlab jdrpereira >}}   | {{< member-by-gitlab suleimiahmed >}} |
| [Confidential](https://gitlab.com/groups/gitlab-org/-/epics/13237)                                                     | {{< member-by-gitlab jaime >}}        | {{< member-by-gitlab jdrpereira >}} |
| [Database background migrations](https://gitlab.com/groups/gitlab-org/-/epics/13609)                                   | {{< member-by-gitlab suleimiahmed >}} | {{< member-by-gitlab jdrpereira >}} |
| [Release database dependent features for self-managed installs](https://gitlab.com/groups/gitlab-org/-/epics/12218)    | {{< member-by-gitlab adie.po >}} |  {{< member-by-gitlab hswimelar >}} |
| [Update user interface](https://gitlab.com/groups/gitlab-org/-/epics/12218)                                            | {{< member-by-gitlab rchanila >}} | {{< member-by-gitlab adie.po >}} |

## Documentation

Project documentation is available [here](/product/container-registry/).
