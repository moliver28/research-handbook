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

## Team Milestone Planning Process

Custom Models follows the [Product Development Flow](https://handbook.gitlab.com/handbook/product-development-flow/) and uses a planning issue and boards to manage the planning process.
[Planning issues](https://gitlab.com/groups/gitlab-org/-/epics/12950) for each milestone are created by the PM and are used to coordinate upcoming work between the PM, EM and stable counterparts.

In the last week of a milestone, planning is completed for the next milestone. The following activities are undertaken.

- Creation of planning issues and boards (EM)
- Identification of candidate issues for the milestone and addition to Planning Board (PM, EM, SET)
- Team member capacity planning (EM)
- Estimation of effort using weights (Engineers and EM)
- Joint planning session to finialise the planning board (PM, EM, SET)
- Assignment of work to engineers, addition of the `~Deliverable` label, update to the planning issue (EM)

### Planning Issue

Each month a planning issue is created by the EM, using the [Custom Models Planning Issue](https://gitlab.com/gitlab-org/ai-powered/custom-models/custom-models/-/blob/main/.gitlab/issue_templates/milestone-planning-template.md). This is the discussion area for the planning team members (PM, EM, and Software Engineer in Test (SET)) for a specific milestone and links to the Planning and Build Boards.

### Planning Board

The [Planning Board](https://gitlab.com/groups/gitlab-org/-/boards/7472416?milestone_title=17.0&label_name[]=group%3A%3Acustom%20models&label_name[]=planning%20priority) is created for each milestone by the PM, and is a curated list of issues by category. The EM requests engineers to allocate weights to all issues on this board prior to milestone planning.

### Ready for Development Status

Issues that are ready to be worked on by an engineer are labelled `workflow::ready for development`. Only issues with this label should be assigned to an engineer as a Deliverable. If research is required, the `~spike` label is assigned, but the scope of the spike should be clearly stated in the issue and an outcome might be code written or a refined issue created.

### Capacity Planning Spreadsheet

The EM maintains a [Google Sheet](https://docs.google.com/spreadsheets/d/18LhwZpsJ6G-1GBv0EDOq0E7EIAMpgsHqEg8Dn5GJmz0/edit#gid=1428069441) _GitLab internal only_ for calculating team capacity, and the same Spreadsheet is also used to perform the process of assigning issues to the release based on weight and priority. The EM posts the team capacity on the Planning Issue.

### Build Board

The EM selects issues from the [Planning Board](#planning-board) based on:

- previous milestone slippage
- PM preference
- weight
- priority

The EM then applies the ~Deliverable label to each issue in the Release and assigns then to an engineer. The issues are tracked through the release via the Build Board.

### Issue Weights

A weight is assigned to each issue as an estimation of work to close the issue. A weight of 1 is approximately 2 working days of effort. Generally issues are not weighted above a weight of 3: larger weights indicate the issue should be broken down further.

### Planning and Delivery Boards

All workflow statuses in the [Product Development Flow](https://handbook.gitlab.com/handbook/product-development-flow/) are valid, and the statuses and milestones tied to boards are below.

The [Next 1-3](https://gitlab.com/groups/gitlab-org/-/boards/7472817?milestone_title=Next%201-3%20releases&label_name[]=group%3A%3Acustom%20models) and [Next 4-6 milestones](https://gitlab.com/groups/gitlab-org/-/boards/7472821?milestone_title=Next%204-6%20releases&label_name[]=group%3A%3Acustom%20models) boards are used to house issues which need refinement or are ready to be worked on.

| Board       | Filters           | Columns            |
|-------------|-------------------|--------------------|
| Planning Board | Milestone, `~group::custom models`, `~planning priority` | `~type::bug`, `~type::maintenance`, `~type::feature` |
| Build Board    | Milestone, `~group::custom models`, `~Deliverable` | `~workflow::ready for development`, `~workflow::in dev`, `~workflow::in review`, `~workflow::awaiting security release`, `~workflow::blocked` |
| Next 1-3 Milestones | `%Next 1-3 Milestones` | `~workflow::problem validation`, `~workflow::problem validation`, `~workflow::design`, `~workflow::solution validation`, `~workflow::planning breakdown`, `~workflow::ready for development`     |
| Next 4-6 Milestones | `%Next 4-6 Milestones` | Same as `Next 1-3 Milestones`     |  

### Issue Milestones

- Issues are assigned the current or next milestone if they are planned to be worked on or are currently being worked on.
- A milestone of `%Backlog` is assigned if issues are not intended to be worked on, although they may be addressed by a community contribution.
- Issues with a milestone of `%Awaiting Customer Feedback` may be worked on, pending customer interest.

The [issue triage report](https://gitlab.com/gitlab-org/quality/triage-reports/-/issues/17099) highlights issues which need a milestone assignment.

## Shared calendars

TBD

## Communication

The Custom Models communicates based on the following guidelines:

1. Always prefer async communication over sync meetings.
1. Don't shy away from arranging a [sync call](#-ad-hoc-sync-calls) when async is proving inefficient, however endevour record it to share with team members.
1. [Transparency by Default](https://handbook.gitlab.com/handbook/security/transparency-by-default/)
1. The primary channel for work-related communication is the [#g_custom_models](https://gitlab.enterprise.slack.com/archives/C06DCB3N96F) Slack channel.
1. Internal team issues and projects are namespaced under [`gitlab-org/ai-powered/custom-models`](https://gitlab.com/gitlab-org/ai-powered/custom-models)

## Asking for help

Don't hesitate to ask for help from other team members via the [#g_custom_models](https://gitlab.enterprise.slack.com/archives/C06DCB3N96F) Slack channel.

## Acknowledgement of Pings

If you are pinged by name in either Slack or GitLab, please acknowledge the ping by either:

- A threaded comment
- An emoji

## Time Off

Team members should add any [Paid Time Off](https://handbook.gitlab.com/handbook/paid-time-off/) in the "Time Off by Deel" slack app, so that the Engineering Manager can use the proper number of days off during capacity planning. Where possible, try to add time off a full milestone in advance.

It is recognised there can always be last-minute, unplanned PTO needs. Please take any time you need, but enter it into PTO Deel and communicate with the EM as soon as you can.

## Ad-hoc sync calls

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
