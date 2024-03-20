---
title: Custom Models Group
description: "The Custom Models group focuses on additional, custom models that power GitLab Duo functionality in support of our customers unique data and use-cases."
aliases: /handbook/engineering/development/data-science/custom-models
---

## Vision

The Custom Models group focuses on additional, custom models that power GitLab Duo functionality in support of our customers unique data and use-cases.

## Organisation

The AI-powered:Custom Models team focuses on GitLab's suite of Custom Model features and is responsible for all backend aspects of the product categories that fall under the [Custom Models group][group] of the [AI Powered stage][stage] of the [DevOps lifecycle][lifecycle]. Our Product direction is found on the [Category Direction - Custom Models Management](https://about.gitlab.com/direction/ai-powered/ai_framework/custom_models/) page.

The features we work with are listed on the [Features by Group Page](/handbook/product/categories/features/#custom-models).

[group]: /handbook/product/categories/#custom-models-group
[stage]: /handbook/product/categories/#ai-powered-stage
[lifecycle]: /handbook/product/categories/#devops-stages

### Team OKRs

If you're interested in the team's Objectives and Key Results (OKRs), you can find them on [GitLab](https://gitlab.com/gitlab-com/gitlab-OKRs/-/issues/?sort=title_asc&state=opened&label_name%5B%5D=group%3A%3Acustom%20models&first_page_size=20).

### Team Members

**Engineering Manager & Engineers**

Engineering Manager: [@sean_carroll](https://gitlab.com/sean_carroll)

{{< team-by-manager-slug "sean-carroll" >}}

**Product, Design & Quality**

Product Manager: [@susie.bee](https://gitlab.com/susie.bee)

{{% stable-counterparts manager-role="Engineering Manager(.*)Custom Models" role="Custom Models" %}}

### How to reach us

- Issue Tracker: [`~group::custom models`](https://gitlab.com/dashboard/issues?sort=title_asc&state=opened&label_name[]=group::custom+models)
- Slack Channel: [#g_custom_models](https://gitlab.enterprise.slack.com/archives/C06DCB3N96F)
- Label Subscription: [`~group::custom models`](https://gitlab.com/groups/gitlab-com/-/labels?subscribed=&search=group%3A%3Acustom+models)

#### Organisational Labels

Issues owned by the Custom Models group should have these labels:

- `~"group::custom models"` 
- `~"devops::ai-powered"` 
- `~"section::dev"`

In additional issues should contain the relevant `~type:` and subtype labels.
## Team Processes

### Milestone Planning issues

[Planning issues](https://gitlab.com/groups/gitlab-org/-/epics/12950) for each milestone are created by the PM and are used to coordinate upcoming work between the PM, EM and stable counterparts.


### Shared calendars

TBD

## Communication

The Custom Models communicates based on the following guidelines:

1. Always prefer async communication over sync meetings.
1. Don't shy away from arranging a [sync call](#-ad-hoc-sync-calls) when async is proving inefficient, however endevour record it to share with team members.
1. [Transparency by Default](https://handbook.gitlab.com/handbook/security/transparency-by-default/)
1. The primary channel for work-related communication is the [#g_custom_models](https://gitlab.enterprise.slack.com/archives/C06DCB3N96F) Slack channel.
1. Internal team issues and projects are namespaced under [`gitlab-org/ai-powered/custom-models`](https://gitlab.com/gitlab-org/ai-powered/custom-models)

### Asking for help

Don't hestitate to ask for help from other team members via the [#g_custom_models](https://gitlab.enterprise.slack.com/archives/C06DCB3N96F) Slack channel.

### Acknowledgement of Pings

If you are pinged by name in either Slack or GitLab, please acknowledge the ping by either:

- A threaded comment
- An emoji

### Time Off

Team members should add any [Paid Time Off](https://handbook.gitlab.com/handbook/paid-time-off/) in the "Time Off by Deel" slack app, so that the Engineering Manager can use the proper number of days off during capacity planning. Where possible, try to add time off a full milestone in advance.

It is recognised there can always be last-minute, unplanned PTO needs. Please take any time you need, but enter it into PTO Deel and communicate with the EM as soon as you can.

### Ad-hoc sync calls

We operate using async communication by default. There are times when a sync discussion can be beneficial and we encourage team members to schedule sync calls with the required team members as needed.

## Metrics

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="custom models" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
  {{< tableau/filters "GROUP_LABEL"="custom models" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/Flakytestissues/FlakyTestIssues" >}}
  {{< tableau/filters "GROUP_NAME"="custom models" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/SlowRSpecTestsIssues/SlowRSpecTestsIssuesDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="custom models" >}}
{{< /tableau >}}

<!-- LINKS START -->

[slack]: TBA
[youtube]: https://www.youtube.com/playlist?list=PL05JrBw4t0Kpt0DsmS5WSZbeiMgrBeZXv
[paid-time-off]: /handbook/paid-time-off/#paid-time-off
[gdoc]: https://docs.google.com/document/d/1rSJNmRZJ0q8hd9S6W_AXlCMvtNTC6cfWr6VU0e2fJCQ/edit#heading=h.3xbjtjtrp0e9

<!-- LINKS END -->
