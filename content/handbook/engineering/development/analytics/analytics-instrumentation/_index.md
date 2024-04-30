---
title: Analytics Instrumentation Group
description: "The Analytics Instrumentation group work on feature enhancements and implementing privacy focused product analytics across GitLab projects"
---

## Vision

The Analytics Instrumentation Group is part of the [Analytics section](/handbook/product/categories/analytics/). Our group focuses on providing GitLab's team with data-driven product insights to build a better GitLab. To do this, we build data collection and analytics tools within the GitLab product in a privacy-focused manner. Insights generated from Analytics Instrumentation enable us to identify the best places to invest people and resources, what product categories mature faster, where our user experience can be improved, and how product changes impact the business. You can learn more about what we're building next on the [Analytics Instrumentation Direction page](https://about.gitlab.com/direction/analytics/analytics-instrumentation/).

How we work:
- We work in accordance with our [GitLab values](/handbook/values/).
- We work [transparently](/handbook/values/#transparency) with nearly everything public.
- We get a chance to work on the things we want to work on.
- We have a [bias for action](/handbook/values/#bias-for-action).
- We make data-driven decisions.
- Everyone can contribute to our work.

## How to reach us

If you have any questions start by @ mentioning the product manager for the [Analytics Instrumentation Group](/handbook/product/categories/#analytics-instrumentation-group) or by creating an issue in our [issue board](/handbook/engineering/development/analytics/analytics-instrumentation/#issue-boards).

### Office hours

Every week Analytics Instrumentation team holds open office hours on Zoom for any questions that might arise. It's typically Wednesday for half an hour at 7:30 UTC. You can find the event in the [GitLab Team Meetings calendar](/handbook/tools-and-tips/#gitlab-team-meetings-calendar).
The historical and upcoming meeting agendas can be accessed in [our agenda document](https://docs.google.com/document/d/13GHTIfaPTHKh_eYXAhhCyYHHisZQvKlVNqhlo6EyqbE).

## Incidents

We define incidents as a deviation from the intended process that significantly disrupts the reporting of metrics to the point that immediate action is required. The process below outlines the different stages of the incident resolution process and the steps to be taken by the corresponding Directly Responsible Individuals (DRIs). Please reach out to the [Analytics Instrumentation Group EM/PM](/handbook/engineering/development/analytics/analytics-instrumentation/#team-members) for any recommendations to changes in the process.

### Incident Detection
_(DRI: The team/individual detecting the issue)_

1. Create an issue and fill all necessary information using the [Analytics Instrumentation Incident Template](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issuable_template=Analytics+Instrumentation+Incident).
1. Add appropriate label using the below guideline
    - `~"Analytics Instrumentation::Incident-High Severity"` for impending loss of data for many metrics or moderate to severe loss in business critical metrics that have a performance_indicator_type value.
    - `~"Analytics Instrumentation::Incident-Medium Severity"` for data delay.
    - For cases when there is minimal impact on data and manual steps or correction is needed, please raise a bug rather than an incident.
1. Assign the issue to [Analytics Instrumentation Group PM and EM](/handbook/engineering/development/analytics/analytics-instrumentation/#team-members).
1. Post in the [#g_analyze_analytics_instrumentation](https://gitlab.slack.com/archives/CL3A7GFPF) slack channel and tag [Analytics Instrumentation Group PM and EM](/handbook/engineering/development/analytics/analytics-instrumentation/#team-members).

### Incident Notification
_(DRI: The PM of the Analytics Instrumentation group)_

1. Notify these slack channels [#g_analyze_product_analytics](https://gitlab.slack.com/archives/C03M4R74NDU), [#data_rd_fusion](https://gitlab.slack.com/archives/C02C82WDP0U), [#data](https://gitlab.slack.com/archives/C8D1LGC23) with link to the issue.
1. Inform Analytics stage Engineering & Product GPM.
1. Update aforementioned slack channels and individuals on resolution time, changes to resolution times, and when incident is resolved.
1. Ensure the incident and status is reflected in the next [monthly state of data issue](https://gitlab.com/groups/gitlab-com/-/epics/1608 "Monthly State of Data").

### Incident Resolution
_(DRI: To be identified by the EM of the Analytics Instrumentation group)_

1. EM to review severity assigned by detection DRI, label issue as ~"type::bug" and add a bug severity if needed.
1. DRI to work on resolving the issue as quickly as possible. The first priority is to find a fix, even if that is a temporary one, before working on a long term resolution.
1. In case of a ~"Analytics Instrumentation::Incident-High Severity" issue:
    - EM to create a temporary channel for the incident in Slack and invite the whole group including PM and relevant stakeholders based on the incident.
    - EM to announce a feature change lock specific to the analytics instrumentation group.
    - All group members concentrate on finding a fix for the issue.
    - DRI to post an update in the channel about the current status at least twice per day.
1. In case of a ~"Analytics Instrumentation::Incident-Medium Severity" issue:
    - DRI to create a slack thread within [#g_analyze_analytics_instrumentation](https://gitlab.slack.com/archives/CL3A7GFPF) for coordination around the incident.
    - DRI to post daily updates in the channel and issue about the current status of the incident.
1. DRI to update the incident issue with an expected resolution time as soon as one is clear.
1. PM/EM, in coordination with the individual/team reporting the incident, to close the issue after verifying that the fix is working.
1. If a patch release is necessary:
    - DRI to create a merge request for a patch release if required and link the merge request to the main issue
    - DRI to announce in the main issue when the Patch release is completed
1. DRI to create a root cause analysis (RCA) issue using this [template](https://gitlab.com/gitlab-org/gitlab/-/blob/master/.gitlab/issue_templates/rca.md) and assign it to the EM.
1. EM to identify other assignees for the RCA and create related epics/issues if needed.

## Responsibilities

### Service Ping Metrics

We're responsible to deliver a reliable Service Ping that runs every week on SaaS and Self Managed instances. Our responsiblity is tooling and automations for metric collections to set the company up for success to deliver Service Ping data to our data warehouse. Due to the amount of metrics we can't maintain the health of all metrics or can provide insights into the business logic of metrics.
- For questions related to a specific metric, its definition and/or implementation, please contact the Product Manager of the group which owns the metric. You can find information about the metric including its [data category](/handbook/legal/privacy/customer-product-usage-information/#categories-of-data-collected), whether it is considered an [xMAU metric](/handbook/business-technology/data-team/data-catalog/xmau-analysis/), its group designation and more in the [metric dictionary](/handbook/product/analytics-instrumentation-guide/#metrics-dictionary).
- When a metric times out, we will create an issue and inform the responsible team.
- When a metric is using too many resources to time out the whole Service Ping, we will quarantine the metric and inform the responsible team.
- When the metric is business critical (defined as any metric with an xMAU value in `performance_indicator_type`) we also inform the responsible team but will treat it as a Severity 1/Priority 1 issue and try to provide a fix.

### Projects

1. [Metrics Dictionary](https://gitlab.com/gitlab-org/analytics-section/analytics-instrumentation/metric-dictionary) and [Metrics Dictionary from Growth group](https://gitlab.com/gitlab-org/growth/product-intelligence/metric-dictionary).
1. [Snowplow Pseudonymization](https://gitlab.com/gitlab-org/analytics-section/analytics-instrumentation/snowplow-pseudonymization)
1. [Snowplow URL Pseudonymizer](https://gitlab.com/gitlab-org/analytics-section/analytics-instrumentation/snowplow-url-pseudonymizer)
1. [Version App](https://gitlab.com/gitlab-org/gitlab-services/version.gitlab.com)

### Overview how to use Analytics Instrumentation tooling

For an overview about the capabilities of the analytic tooling the team develops, you can watch the video [Analytics Instrumentation 101](https://www.youtube.com/watch?v=awWhNtwuVNs), or look through [the slides (internal)](https://docs.google.com/presentation/d/1omQ2-9i5l2LKHs_9WP_U1evVQmY6adzYyvZaVjbhdEk/edit#slide=id.p1)

## Team members

The following people are permanent members of the Analytics Instrumentation Group:

{{< stable-counterparts role="Analytics.+Analytics.Instrumentation" >}}

## Project management process

Our team uses a hybrid of Scrum for our project management process. This process follows GitLab's [monthly milestone release cycle](/handbook/marketing/blog/release-posts/#schedule).

- We only work off of issue boards which act as our single source of truth.
- We continuously progress issues to the next workflow stage.
- We work on both product and engineering initiatives.
- We prioritize and estimate all issues we work on.
- We do monthly milestone planning to prepare for our upcoming milestone.
- We do weekly check-ins to share updates within the team

### Check-In

We do a weekly automated check-in within a [separate Slack channel](https://gitlab.slack.com/archives/C04SHHKTQFM).
We feel that a weekly cadence is enough to keep everyone up to date about the most important developments within the team.
A bot asks every team member autoamtically the following questions at the beginning of the week and posts them to the channel

- **What Victories did you have in the last week?**: This should be the most important achievements from the last week. They can also be personal achievements.
- **What Impediments did you have in the last week? Which impediments do you anticipate this week?**: This is important information for other stakeholders, to understand where a team member might need support.
- **Which Priorities do you have for the current week?**: This should be the most important things you want to achieve during the week.

### Workflow

Our team use the following workflow stages defined in the [Product Development Flow](/handbook/product-development-flow/#workflow-summary):

#### Validation stage

| Label | Usage |
| -- | -- |
| `~"workflow::validation backlog"` | Applied by the Product Manager for incoming issues that have not been refined or prioritized. |
| `~"workflow::problem validation"` | Applied by the Product Manager for issues where the PM is developing a thorough understanding of the problem |
| `~"workflow::design"` | Applied by the Product Manager or Designer (or Analytics Instrumentation Engineer) to ideate and propose solutions. The proposed solutions should be reviewed by engineering to ensure technical feasibility. |
| `~"workflow::solution validation"` | Applied by the Product Manager or Designer (or Analytics Instrumentation Engineer) to validate a proposed solution through user interviews or usability testing. |

#### Build stage

| Label | Usage |
| -- | -- | -- |
| `~"workflow::planning breakdown"` | Applied by the Product Manager for Engineers to begin breaking down issues and [adding estimates](#estimation). |
| `~"workflow::ready for development"` |  Applied by either Engineering or Product Manager after an issue has been broken down and scheduled for development. |
| `~"workflow::in dev"` | Applied by the Engineer after work (including documentation) has begun on the issue. An MR is typically linked to the issue at some point throughout this stage. |
| `~"workflow::in review"` | Applied by the Engineer indicating that all MRs required to close an issue are in review. |
| `~"workflow::verification"` | Applied by the Engineer after the MRs in the issue have been merged, this label is applied signaling the issue needs to be verified in staging or production. |
| `~"workflow::complete"` | Applied by the Engineer after all MRs have merged and the issue has been verified. At this step, the issue should also be closed. |
| `~"workflow::blocked"` | Applied by any team member if at any time during development the issue is blocked. For example: technical issue, open question to PM or PD, cross-group dependency. |


### Epic roadmap

We use an epic roadmap to track epic progress on a quarterly basis. The epic roadmap is a live view of the [Analytics Instrumentation Direction page](https://about.gitlab.com/direction/analytics/analytics-instrumentation/).

To keep things simple, we primarily use the [gitlab.com/gitlab-org](https://gitlab.com/gitlab-org/) group for our roadmap. If epics are created on the [gitlab.com/gitlab-com](https://gitlab.com/gitlab-com/) and [gitlab.com/gitlab-services](https://gitlab.com/gitlab-services/) groups, we create placeholders of them on [gitlab.com/gitlab-org](https://gitlab.com/gitlab-org/) so that all epics show up in a single roadmap view.

| gitlab-org | gitlab-com | gitlab-services | all groups |
| ------ | ------ | ------ | ------ |
| [gitlab-org Epic Roadmap](https://gitlab.com/groups/gitlab-org/-/roadmap?state=opened&sort=start_date_asc&label_name%5B%5D=group%3A%3Aanalytics+instrumentation) | [-](https://gitlab.com/groups/gitlab-com/-/roadmap?state=opened&sort=start_date_asc&label_name%5B%5D=group%3A%analytics+instrumentation) | [-](https://gitlab.com/groups/gitlab-services/-/roadmap?state=opened&sort=start_date_asc&label_name%5B%5D=group%3A%3Aanalytics+instrumentation) | |

### Issue boards

We use issue boards to track issue progress on a daily basis. Issue boards are our single source of truth for the status of our work. Issue boards should be viewed at the highest group level for visibility into all nested projects in a group.

* [**Analytics Instrumentation Issue Board _-by milestone_**](https://gitlab.com/groups/gitlab-org/-/boards/2774881?scope=all&not[label_name][]=product%20work&not[label_name][]=Technical%20Writing&not[label_name][]=UX)
* [**Analytics Instrumentation Issue Board - Current Milestone**](https://gitlab.com/groups/gitlab-org/-/boards/5071664?milestone_title=Started)


### Prioritization

We prioritize our product roadmap in the [Issue Board by Milestone](https://gitlab.com/groups/gitlab-org/-/boards/2774881). Issues appear on each list in order of priority and prioritization of our product roadmap is determined by our product managers.

### Picking something to work on

Engineers can find and open [the board for the current milestone](https://gitlab.com/groups/gitlab-org/-/boards/5071664?milestone_title=Started).
Engineers should start at the top of the "workflow::ready for development" column and pick the first available, non-assigned issue.
When picking an issue, the engineer should assign themselves as a signal that they are taking ownership of the issue and move them to "workflow::in development" to signal the start of development.

If the next available issue is not a viable candidate (due to amount of capacity vs. issue weight, complexity, knowledge domain, etc.) the engineer may choose to skip an issue and pick the next issue in order of priority.

The following table will be used as a guideline for scheduling work within the milestone:

| Type        | % of Milestone | Description                                                                                |
|-------------|----------------|-------------|------------------------------------------------------------------------------|
| Deliverable | 70%            | business priorities (compliance, IACV, efficiency initiatives)                             |
| Tech debt   | 10%            | nominated by engineers prior to milestone start in Milestone Planning Issue                                                                                           |
| Other       | 20%            | engineer picks, critical security/data/availability/regression, urgent business priorities |

If all work within a milestone is picked, engineers are free to choose what to work on. Acceptable options include:

- Post in Slack channel to see if any engineers would like help/pair on something they are working on
- Pick an issue from the next milestone (using the [board by milestone view](https://gitlab.com/groups/gitlab-org/-/boards/2774881))
- Create/work on tech debt issue
- Work on a passion issue
- Other (study, research, learning)

### Iteration

We follow the [iteration process](/handbook/engineering/development/principles/#iteration) outlined by the Engineering function.

### Estimation

We estimate issues async and aim to provide an initial estimate (weight) for all issues scheduled for an upcoming milestone.

We require a minimum of two estimations for weighing an issue. We consider reacting with a ➕ emoji to the estimation as agreeing with it (and thus contributing to the minimal count of estimations).
If both estimations agree, the engineer who did the second estimation should add the agreed-upon weight to the issue. If there is disagreement, the second engineer should @-mention the first one to resolve the conflict.

In planning and estimation, we value [velocity over predictability](/handbook/engineering/development/principles/#velocity-over-predictability). The main goal of our planning and estimation is to focus on the [MVC](/handbook/values/#minimal-viable-change-mvc), uncover blind spots, and help us achieve a baseline level of predictability without over-optimizing. We aim for 70% predictability instead of 90%.

We default spike issues to a weight of 8.

If an issue has many unknowns where it's unclear if it's a 1 or a 5, we will be cautious and estimate high (5).

If an initial estimate needs to be adjusted, we revise the estimate immediately and inform the Product Manager. The Product Manager and team will decide if a milestone commitment needs to be changed.

* [Unweighed, upcoming issues in gitlab-org](https://gitlab.com/groups/gitlab-org/-/issues?sort=created_date&state=opened&label_name[]=group::analytics+instrumentation&weight=None&milestone_title=Upcoming&not[label_name][]=product+work)
* [Unweighed, upcoming issues in gitlab-services](https://gitlab.com/groups/gitlab-services/-/issues?sort=created_date&state=opened&label_name[]=group::analytics+instrumentation&weight=None&milestone_title=Upcoming&not[label_name][]=product+work)

Issues estimation examples

| Weight | Definition | Example (Engineering) |
| ------ | ---------- | ------------------------- |
| 1 | The simplest possible change. We are confident there will be no side effects. | [Add missing metric definition for "counts_monthly.promoted_issues"](https://gitlab.com/gitlab-org/gitlab/-/issues/340940),<br />[Add instrumentation classes for license standard metrics](https://gitlab.com/gitlab-org/gitlab/-/issues/336340),<br />[Update Registration Features text](https://gitlab.com/gitlab-org/gitlab/-/issues/335051) |
| 2 | A simple change (minimal code changes), where we understand all of the requirements. | [VersionApp: Add indexed on other tables that are exported](https://gitlab.com/gitlab-org/gitlab/-/issues/352019),<br />[Set values for StandardContext in Frontend](https://gitlab.com/gitlab-org/gitlab/-/issues/342993) |
| 3 | A simple change, but the code footprint is bigger (e.g. lots of different files, or tests effected). The requirements are clear. | [Update Registration Features CTA for repository size limit](https://gitlab.com/gitlab-org/gitlab/-/issues/349307),<br />[More paid features available to free users](https://gitlab.com/gitlab-org/gitlab/-/issues/341442) |
| 5 | A more complex change that will impact multiple areas of the codebase, there may also be some refactoring involved. Requirements are understood but you feel there are likely to be some gaps along the way. | [Spike Service Ping health dashboard](https://gitlab.com/gitlab-org/gitlab/-/issues/346431),<br />[Remove `deprecated` metric status ](https://gitlab.com/gitlab-org/gitlab/-/issues/340847) |
| 8 | A complex change, that will involve much of the codebase or will require lots of input from others to determine the requirements. | [Dispatch Snowplow events from their event definitions](https://gitlab.com/gitlab-org/gitlab/-/issues/346751),<br />[Add metrics yml files for usage data metrics definition ](https://gitlab.com/gitlab-org/gitlab/-/issues/270107) |
| 13| A significant change that may have dependencies (other teams or third-parties) and we likely still don't understand all of the requirements. It's unlikely we would commit to this in a milestone, and the preference would be to further clarify requirements and/or break in to smaller Issues. | [Create Snowplow monitoring framework](https://gitlab.com/gitlab-org/gitlab/-/issues/331103),<br />[Enable batch counting for some individual queries](https://gitlab.com/gitlab-org/gitlab/-/issues/208923) |
| ? | For issues where don't know how to estimate | |

#### Estimation template

The following is a guiding mental framework for engineers to consider when contributing to estimates on issues.

```
### Refinement / Weighing

**Ready for Development**: Yes/No

<!--
Yes/No

Is this issue sufficiently small enough, or could it be broken into smaller issues? If so, recommend how the issue could be broken up.

Is the issue clear and easy to understand?
-->

**Weight**: X

**Reasoning**:

<!--
Add some initial thoughts on how you might break down this issue. A bulleted list is fine.

This will likely require the code changes similar to the following:

- replace the hexdriver with a sonic screwdriver
- rewrite backups to magnetic tape
- send up semaphore flags to warn others

Links to previous example. Discussions on prior art. Notice examples of the simplicity/complexity in the proposed designs.
-->

**Iteration MR/Issues Count**: Y
<!--

Are there any opportunities to split the issue into smaller issues?

- 1 MR to update the driver worker
- 1 MR to update docs regarding mag tape backups

Let me draw your attention to potential caveats.
-->

**Documentation required**: Y/N
<!--
- Do we need to add or change documentation for the issue?
-->
```

### Due dates

To properly set expectations for product managers and other stakeholders, our team may decide to add a due date onto an issue. Due dates are not meant to pressure our team but are instead used to communicate an expected delivery date.

We may also use due dates as a way to timebox our iterations. Instead of spending a month on shipping a feature, we may set a due date of a week to force ourselves to come up with a smaller iteration.

### Milestone Planning and Timeline

Our team mostly follows the [Product Development Timeline](/handbook/engineering/workflow/#product-development-timeline) as our group is dependent on the [GitLab self-managed release cycle](https://about.gitlab.com/upcoming-releases/).

The specific application of this timeline to the Analytics Instrumentation Milestone planning process is summarized below.

#### Overview

| Phase           | Time                     |
|-----------------|--------------------------|
| Planning & Breakdown Phase  | 4th - 17th of month N|
| Development Phase   | 18th of month N - 17th of month N+1 |

#### 1. Planning & Breakdown Phase:

- **Timeline**: 4th - 17th of month N

- **Tasks**:
1. Initial Planning
    1. PM: Milestone planning issue gets created ([example](https://gitlab.com/gitlab-org/analytics-instrumentation/-/issues/623)).
    1. PM: Adds overall objective and theme for the milestone to the planning issue
    1. PM: Adds and prioritizes issues of type feature in the planning issue.
    1. EM: Adds and prioritizes issues of type maintenance and bug in the planning issue.
    1. PM/EM: Ensures all issues in the planning issue are assigned to the correct milestone and all other issues, not in the planning issue are removed from the milestone.

2. Breakdown and weighing
    1. EM: Removes weight from issues that have been weighed more than 6 months ago to make sure weights consider recent changes.
    1. EM: Moves all unweighed issues to ~"workflow::planning breakdown" stage and tags engineers for estimation.
    1. Engineers: Add a solution proposal if none is present yet.
    1. Engineers: Add their [estimation](#estimation), ask clarifying questions, link potential blockers, and break down the issues further if needed.
    1. EM: Moves estimated and broken down issues into ~"workflow::ready for development" stage.
    1. Engineers: Indicate their availability for the next milestone in our capacity planning sheet.

3. Final Planning
    1. EM: Calculates estimated [capacity](#milestone-capacity).
    1. EM: Adds issues that probably need to be carried over from the current milestone to the planning issue.
    1. EM & PM: Add or remove issues based on weights and capacity.
    1. EM: Prioritizes issues in the [Issue Board by Milestone](https://gitlab.com/groups/gitlab-org/-/boards/2774881) based on the planning issue.

#### 2. Development Phase:
- **Timeline**: 18th of month N – 17th of month N+1.

- **Tasks**:
1. Engineers: Work on the issues in the milestone based on the outlined priority:
    1. Engineers assign themselves to issues based on interest/experience.
    1. If no more issues are available in the milestone, they first check if they can take over or help with problems in the milestone assigned to another engineer. Otherwise, they inform the EM, who pulls in issues from the next milestone.
1. PM/EM: Present the plan for the milestone in the first Analytics Instrumentation sync of the new milestone focusing on the overall objective and themes.

#### Milestone Capacity

Our milestone capacity tells us how many issue weights we can expect to complete in a given milestone. To estimate this we calculate the average daily weight completed by an engineer per day across the previous two milestones. This is multiplied with the actual working days available to us in a given milestone.

**Previous Two Milestones:**
* **Total weights completed:** 120 weights
* **Available work days:** 40 days * 5 engineers = 200 days
* **Actual work days:** 200 days - 20 days off = 180 days
* **Average weight per engineer/day:** 120 weights / 180 days = 0,67 weights/day

**Next Milestone:**
* **Available work days:** 21 days * 5 engineers = 105 days
* **Actual work days:** 105 days - 10 days off = 95 actual days
* **Maximum capacity:** 95 days * 0,67 weights/day = 64 weights

In this example, the next milestone’s capacity is 64 weights for the whole team. Keep in mind that neither estimations nor this calculation are an exact science. The capacity planning is supposed to help the EM and PM set realistic expectations around deliverables inside and outside time. We do not expect to hit the exact amount of predicted weights.

#### Milestone Commitment

A milestone commitment is a list of issues our team aims to complete in the milestone. The product team follows our GitLab principle of [planning ambitiously](/handbook/product/product-principles/#how-this-impacts-planning) and therefore expect that we won't always be able to deliver everything that we wanted in every milestone. After issues are broken down, estimated, and prioritized, the product manager will apply the `~Deliverable` label to applicable issues. Issues marked with the `~Deliverable` label represent the commitment we are intending to ship in that milestone.

#### Work Type Classification

Per the [Next Prioritization](/handbook/company/working-groups/cross-functional-prioritization/) initiative, we will review our team's performance in applying appropriate [type labels](https://docs.gitlab.com/ee/development/labels/index.html#type-labels) to MRs. At the close of the milestone, on the Planning Issue, the EM or PM will post a link to [this dashboard](/handbook/engineering/development/analytics/analytics-instrumentation/#merged-merge-request-types) along with a summary of shipped work by type label (include null) to ensure we are observing the [recommended work split](/handbook/company/working-groups/cross-functional-prioritization/#exit-criteria) of 60% feature, 30% maintenance, 10% bugs, and <=5% undefined.

##### Clarifying Maintenance vs. Feature Work

In Analytics Instrumentation, determining if work is applicable to ~type::maintenance or ~type::feature is not readily apparent. As a guide, we denote work which benefits the Analytics Instrumentation team and technical processes as ~type::maintenance whereas work which benefits GitLab customers or team members is considered ~type::feature.

## Epics and issues

To help our team be [efficient](/handbook/values/#efficiency), we explicitly define how our team uses epics and issues.

### Epic and issue creation

We aim to create issues in the same project as where the future merge request will live. And we aim to create epics at the topmost-level group that makes the most sense for its collection of child epics and issues. For example, if an experiment is being run in the CustomersDot, the epic should be created in the `gitlab-org` group, and the issue should be created in the `gitlab-org/customers-gitlab-com` project.

We emphasize creating the epic at the topmost-level group so that it will show up on our epic roadmap. And we emphasize creating the issue in the right project to avoid having to close and move it later in the development process.

### Ratio of issues to MRs

The ratio of issues to MRs is at the responsible engineer's discretion. MRs should follow the [MVC principle](/handbook/values/#minimal-viable-change-mvc).
If it is evident in advance that an issue will require more than 2 MRs we should evaluate whether we can split the issue further to document the split of the work more clearly.

### Epics

We group related issues together using parent [epics](https://docs.gitlab.com/ee/user/group/epics/) and child epics, providing us with a better visual overview of our roadmap.

- The description of the parent epic should always be kept up-to-date as the single source of truth.
- Epics and Child Epics must have the same section and group labels to see them on our roadmap.

### Issues

When creating an issue, use the [linked template](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issuable_template=Analytics%20Instrumentation%20Issue) and follow its instructions.

In case the issue is not created for the [GitLab project](https://gitlab.com/gitlab-org/gitlab), copy the template's content into the appropriate project.

### Merge request labels

MR labels should mirror issue labels (which is automatically done when created from an issue):

**Required labels**
- Section: `~section::analytics`
- Group: `~group::analytics instrumentation`
- [Type:](/handbook/engineering/metrics/#work-type-classification) `~"type::bug"`, `~"type::feature"`, `~"type::tooling"`, `~"type::maintenance"`

### Milestones

We tag each issue and MR with the planned milestone or the milestone at time of completion.

## Team Meetings

Our group holds synchronous meetings to gain additional clarity and alignment on our async discussions. We aim to record all of our meetings as our team members are spread across several timezones and often cannot attend at the scheduled time.

### Meeting rules

* Agenda items should be filled in 6 hours before meetings otherwise it's possible to cancel the meeting.
* It's fine to add agenda items during the meeting as things come up in sync meetings we might not have thought about beforehand.
* Meetings start :30 seconds after start time
* Whoever has the first agenda item starts the meeting.
* Whoever has the last agenda item ends the meeting.
* Meetings end early or on time.
* Any missed agenda items are bumped to the next meeting.

### Our meetings

* **Analytics Instrumentation Sync:** an optional weekly meeting for the Analytics Instrumentation team to discuss any topics they please.
* **Analytics Instrumentation Team Social:** an optional bi-weekly call for our team to hang out and socialize.

### Knowledge sharing

We like to share knowledge and learn! If your group would like someone from the Analytics Instrumentation group to attend a sync call and provide a brief overview of our responsibilities and scope, please open an issue and apply the `~group::analytics instrumentation` label ([example issue](https://gitlab.com/gitlab-org/analytics-instrumentation/-/issues/547)).
In the same spirit, we want to learn more about the different teams at GitLab. If you'd like to participate in sharing information with our team, please comment in our slack channel [#g_analytics_instrumentation](https://gitlab.slack.com/archives/CL3A7GFPF).

#### Proposing a knowledge session

If you would like to propose a new knowledge session for a topic you want to learn more about, open an issue in [Analytics Instrumentation](https://gitlab.com/gitlab-org/analytics-instrumentation) and provide the details. [Issue 603](https://gitlab.com/gitlab-org/analytics-section/analytics-instrumentation/internal/-/issues/603) gives you a good example of how this is done.

#### Knowledge sharing sessions

| Date | Topic / Recording | Speaker |
| --- | --- | --- |
| 2022-08-16 | [Usage of Service Ping data](https://gitlab.com/gitlab-org/analytics-section/analytics-instrumentation/internal/-/issues/603) | Jay Stemmer |
| 2023-01-10 | [Service Ping Analysis Engine & Service Ping usage in Customer Success](https://youtu.be/WNbdwUphXP8) | Martin Brümmer |

## Development metrics

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="analytics instrumentation" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
  {{< tableau/filters "GROUP_LABEL"="analytics instrumentation" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/Flakytestissues/FlakyTestIssues" >}}
  {{< tableau/filters "GROUP_NAME"="analytics instrumentation" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/SlowRSpecTestsIssues/SlowRSpecTestsIssuesDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="analytics instrumentation" >}}
{{< /tableau >}}

## Error budget

We maintain [UsageData API endpoints](https://docs.gitlab.com/ee/development/service_ping/implement.html#usagedata-api) under the `service_ping` feature to track events, and because of this we must monitor our [budget spend](/handbook/engineering/error-budgets/).

To investigate budget spend, see the [overview](https://dashboards.gitlab.net/d/stage-groups-product_intelligence/stage-groups-product-intelligence-group-dashboard?orgId=1) and [details](https://dashboards.gitlab.net/d/stage-groups-detail-product_intelligence/stage-groups-product-intelligence-group-error-budget-detail?orgId=1) Grafana dashboards for Analytics Instrumentation. You can also check requests contributing to spending the budget in Kibana by filtering by the `service_ping` feature. An example Kibana view can be found [here](https://log.gprd.gitlab.net/goto/8e82ff10-ecb8-11ec-8656-f5f2137823ba).

Note that the budget spend is calculated proportionally by requests failing apdex or failing with an error, and not by how much the target is exceeded. For example, if we had an endpoint with a set goal of 1s request duration, then bringing the request duration from 10s to 5s would not improve the budget.

## Out of office coverage process

An OOO coverage process helps reduce the mental load of "remembering all the things" while preparing for being away from work. This process allows us to organize the tasks we need to complete before time off and make the team successful.

Open a new issue in the [Analytics Instrumentation project](https://gitlab.com/gitlab-org/analytics-section/analytics-instrumentation/internal/-/issues/new?issuable_template=out_of_office_coverage_template) with the [`out_of_office_coverage_template`](https://gitlab.com/gitlab-org/analytics-section/analytics-instrumentation/internal/-/blob/master/.gitlab/issue_templates/out_of_office_coverage_template.md).

## Onboarding

All new team members to the Analytics Instrumentation teams are provided an onboarding issue to help ramp up on our analytics tooling. New team member members should create their own onboarding issue in the [gitlab-org/analytics-section/analytics-instrumentation/internal project](https://gitlab.com/gitlab-org/analytics-section/analytics-instrumentation/internal/-/issues) using the `engineer_onboarding` template.


## Quick Links

| Resource                                                                                                                          | Description                                               |
|-----------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------|
| [Internal Analytics Docs](https://docs.gitlab.com/ee/development/internal_analytics/) | Docs for instrumenting internal analytics at GitLab |
| [Analytics Instrumentation Monitoring and Troubleshooting](./monitoring_troubleshooting.html) | Information around Troubleshooting Analytics Instrumentation infrastructure|
| [Analytics Instrumentation Infrastructure](./infrastructure.html) | Information about the infrastructure we run |
| [Service Ping Guide](https://docs.gitlab.com/ee/development/service_ping/)     | An implementation guide for Service Ping      |
| [Privacy Policy](https://about.gitlab.com/privacy/)        | Our privacy policy outlining what data we collect and how we handle it     |
| [Analytics Instrumentation Direction](https://about.gitlab.com/direction/analytics/analytics-instrumentation/)  | The roadmap for Analytics Instrumentation at GitLab  |
| [GitLab Performance Snowplow Dashboards ](./gitlab_com_performance_dashboard.html) | Performance dashboards for GitLab.com via Snowplow  |
