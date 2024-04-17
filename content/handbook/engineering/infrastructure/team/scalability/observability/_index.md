---
aliases: /handbook/engineering/infrastructure/team/scalability/observability.html
title: "Scalability:Observability Team"
---

Observability encompasses the technical elements responsible for metrics, logging, and tracing, along with the tools and processes that leverage these components.

## Mission

Our mission is to deliver and maintain a world-class observability offering and frictionless operational experience for team members at GitLab.


## Common Links
|                                |                                                                                                                                                                                                                                                                                                                                                                                                                                |
|--------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Workflow**                   | [Team workflow](/handbook/engineering/infrastructure/team/scalability/#how-we-work)                                                                                                                                                                                                                                                                                                                                            |
| **GitLab.com**                 | `@gitlab-org/scalability/observability`                                                                                                                                                                                                                                                                                                                                                                                        |
| **Issue Trackers**             | [Scalability](https://gitlab.com/gitlab-com/gl-infra/scalability) <br/> [Tamland](https://gitlab.com/gitlab-com/gl-infra/tamland/-/issues)                                                                                                                                                                                                                                                                                        |
| **Team Slack Channels**        | [#g_scalability-observability](https://gitlab.slack.com/archives/g_scalability-observability) - Team channel<br/> [#scalability_social](https://gitlab.slack.com/archives/g_scalability_social) - Group social channel                                                                                                                                                                                                         |
| **Project Slack Channels**     | [#scalability-tamland](https://gitlab.enterprise.slack.com/archives/C05JU82BJQH) Tamland development <br/> |
| **Information Slack Channels** | [#infrastructure-lounge](https://gitlab.slack.com/archives/infrastructure-lounge) (Infrastructure Group Channel), <br/>[#incident-management](https://gitlab.slack.com/archives/incident-management) (Incident Management),  <br/>[#alerts-general](https://gitlab.slack.com/archives/alerts-general) (SLO alerting), <br/>[#mech_symp_alerts](https://gitlab.slack.com/archives/mech_symp_alerts) (Mechanical Sympathy Alerts) |

## Team Members

The following people are members of the Scalability:Observability team:

{{< team-by-manager-slug "liam-m" >}}

The team is located all over the world in [different timezones](https://timezonewizard.com/p4-6e9).

## Responsibilities and topics

This is an overview of topics we cover to help us reflect on and learn about our areas of ownership, duties, products and services since the team got created when merging Scalability:Projections and Reliability:Observability at the end of 2023.

1. [Monitoring](https://gitlab.com/gitlab-com/runbooks/blob/e00eeb59937a9043c5db04314a35acb05c4e9288/docs/monitoring/README.md#L1)
   1. Metrics stack
      1. [Thanos](https://gitlab.com/gitlab-com/runbooks/blob/e00eeb59937a9043c5db04314a35acb05c4e9288/docs/thanos/README.md#L1)
      1. [Thanos readiness review (03/2023)](https://gitlab.com/gitlab-com/gl-infra/readiness/-/blob/master/thanos/overview.md)
      1. We are [moving towards Grafana Mimir](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/1107), also see [Mimir runbooks](https://gitlab.com/gitlab-com/runbooks/blob/e00eeb59937a9043c5db04314a35acb05c4e9288/docs/mimir/README.md#L1)
   1. Logging stack
      1. In use: [ELK Stack](https://gitlab.com/gitlab-com/runbooks/blob/e00eeb59937a9043c5db04314a35acb05c4e9288/docs/logging/README.md#L1)
      1. Potential upcoming project: [Loki](https://gitlab.com/gitlab-com/runbooks/blob/e00eeb59937a9043c5db04314a35acb05c4e9288/docs/loki/README.md#L1)
1. [Error budgets](/handbook/engineering/infrastructure/team/scalability/observability/error_budgets.html)
   1. Ownership of concept and implementation
   1. Delivery of monthly error budget report
1. [Capacity planning](/handbook/engineering/infrastructure/team/scalability/observability/capacity_planning.html)
   1. [Triage rotation for .com](/handbook/engineering/infrastructure/capacity-planning/#gitlabcom-capacity-planning)
   1. [Operational aspects for GitLab Dedicated capacity planning](https://docs.gitlab.com/ee/architecture/blueprints/capacity_planning/)
   1. Developing [Tamland](https://gitlab.com/gitlab-com/gl-infra/tamland), the forecasting tool
   1. [Capacity reporting for GitLab Dedicated](https://gitlab.com/gitlab-com/gl-infra/capacity-planning-trackers/gitlab-dedicated)
1. [Service Maturity model][service maturity model] which covers GitLab.com's production services.
1. [GitLab.com availability](/handbook/engineering/monitoring/): Provide underlying data and aggregate numbers
1. SRE oncall rotation

### Indicators

The group is an owner of several performance indicators that roll up to the Infrastructure department indicators:

1. [Service Maturity model][service maturity model] which covers GitLab.com's production services.
1. The forecasting [project named Tamland](/handbook/engineering/infrastructure/team/scalability/observability/tamland.html) which generates capacity warnings to prevent incidents.

These are combined to enable us to better prioritize team projects.

An overly simplified example of how these indicators might be used, in no particular order:

* Service Maturity - provides detail on how trustworthy the data we received from observability stack in relation to the service; the lower the level the more focus we need to improve the service observability
* Tamland reports - Provides a forecast for a specific service

Between these different signals, we have a relatively (im)precise view into the past, present and future to help us prioritise scaling needs for GitLab.com.

[service maturity model]: /handbook/engineering/infrastructure/service-maturity-model/

## How we work

We default to working inline with the GitLab [values](/handbook/values/) and by following the processes of the wider [SaaS Platforms section](/handbook/engineering/infrastructure/platforms/project-management/) and [Scalability group](/handbook/engineering/infrastructure/team/scalability/#how-we-work). In addition to this, listed below are some processes that are specific, or particularly important, to how we work in Scalability:Observability.


### Issue management

While we mainly operate from the [scalability issue tracker](https://gitlab.com/gitlab-com/gl-infra/scalability/-/issues), there are other projects under the `gl-infra` group team members are working on.
Hence we strive to use group-level labels and boards to get the entire picture.

#### Labels

All issues pertaining to our team have the `~"team::Scalability-Observability"` label.

All issues that are within scope of current work have a `~board::build` or `~board::planning` label.
This is a measure to cut through noise on the tracker and allows us to get a view on what's currently important to us.
See Boards below on how this is being used.
All issues require either a Service label or the team-tasks, discussion, or capacity planning labels.

#### Assignees

We use issue assignments to signal who is the DRI for the issue.
We expect issue assignees to regularly update their issues with the status, and to be as explicit as possible at what has been done and what still needs to be done.
We expect the assignee of an issue to drive the issue to completion.
The assignee status typically expresses, that the assigned team member is currently actively working on this or planning to come back to it relatively soon.
We unassign ourselves from issues we are not actively working on or planning to revisit in a few days.

#### Boards

The Scalability::Observability team's [issue boards](https://gitlab.com/gitlab-com/gl-infra/scalability/-/boards/) track the progress of ongoing work.

We use [issue boards](https://gitlab.com/gitlab-com/gl-infra/scalability/-/boards/) to track the progress of planned and ongoing work.
Refer to the Scalability group [issue boards section](/handbook/engineering/infrastructure/team/scalability/#issue-boards) for more details.

| **Planning** | **Building**|
|--------------|-------------|
| [Planning Board](https://gitlab.com/groups/gitlab-com/gl-infra/-/boards/7339171) | [Build Board](https://gitlab.com/groups/gitlab-com/gl-infra/-/boards/7339070) |
| Issues where we are investigating the work to be done. | Issues that will be built next, or are actively in development. |
| ![Triage](../img/label-triage.png)	<br/>![Proposal](../img/label-proposal.png) <br/>![Ready](../img/label-ready.png) | ![Ready](../img/label-ready.png) <br/>![In Progress](../img/label-in_progress.png) <br/>![Under Review](../img/label-under_review.png) <br/>![Verify](../img/label-verify.png) <br/>![Done](../img/label-done.png)|

### Updates in Slack

In order to stay informed with everyone's immediate topics, we post regular status updates in our Slack channel.

These updates include whatever the team member is currently working on and dealing with, for example consider including current focus area, general work items, blockers, in-flight changes, learnings, side tracks, upcoming time off and other relevant information.

There is no strict frequency for posting updates, although we strive to make updates at least once per week.

When posting updates, consider providing enough context (e.g. through links) so that interested team members are able to dive in on their own ([low context](/handbook/communication/#top-tips-and-best-practices)).
