---
title: "Optimize Group"
---

## Plan:Optimize

### [Optimize FY24 direction and goals](https://gitlab.com/groups/gitlab-org/-/epics/9882#fy24-goals)

### How we work

- In accordance with our [GitLab values](/handbook/values/).
- Transparently: nearly everything is public, we record/livestream meetings whenever possible.
- We get a chance to work on the things we want to work on.
- Everyone can contribute; no silos.
  - The goal is to have product give engineering and design the opportunity to be involved with direction and issue definition from the very beginning.
- We do an optional, asynchronous daily stand-up in our stage stand-up channel:
  - Plan:Optimize [#s_plan_standup](https://gitlab.slack.com/archives/CF6QWHRUJ)

#### Prioritization

Our priorities should follow [overall guidance for Product](/handbook/product/product-processes/#how-we-prioritize-work). This should be reflected in the priority label for scheduled issues:

| Priority | Description | Probability of shipping in milestone |
| ------ | ------ | ------ |
| priority::1 | **Urgent**: top priority for achieving in the given milestone. These issues are the most important goals for a release and should be worked on first; some may be time-critical or unblock dependencies. | ~100% |
| priority::2 | **High**: important issues that have significant positive impact to the business or technical debt. Important, but not time-critical or blocking others.  | ~75% |
| priority::3 | **Normal**: incremental improvements to existing features. These are important iterations, but deemed non-critical. | ~50% |
| priority::4 | **Low**: stretch issues that are acceptable to postpone into a future release. | ~25% |

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="optimize" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
  {{< tableau/filters "GROUP_LABEL"="optimize" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/Flakytestissues/FlakyTestIssues" >}}
  {{< tableau/filters "GROUP_NAME"="optimize" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/SlowRSpecTestsIssues/SlowRSpecTestsIssuesDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="optimize" >}}
{{< /tableau >}}

As a general guideline, we try to plan each release in this way:
- **Bugs**: 25%
- **Features**: 50%
- **Maintenance**: 25%

These targets will be [reviewed monthly](/handbook/product/product-processes/) after each release during the [retrospective](https://gitlab.com/gl-retrospectives/manage-stage/optimize/-/issues).

#### Organizing the work

We generally follow the [Product Development Flow](/handbook/product-development-flow/#workflow-summary):
1. `workflow::problem validation` - needs clarity on the problem to solve
1. `workflow::design` - needs a clear proposal (and mockups for any visual aspects)
1. `workflow::solution validation` - needs refinement and acceptance from engineering
1. `workflow::planning breakdown` - needs a Weight estimate
1. `workflow::scheduling` - needs a milestone assignment
1. `workflow::ready for development`
1. `workflow::in dev`
1. `workflow::in review`
1. `workflow::verification` - code is in production and pending verification by the DRI engineer
1. `workflow::complete` - the code has been verified and the work is complete, issue should be closed

Generally speaking, issues are in one of two states:

- Discovery/refinement: we're still answering questions that prevent us from starting development,
- Implementation: an issue is waiting for an engineer to work on it, or is actively being built.

Basecamp thinks about these stages in relation to the [climb and descent of a hill](https://www.feltpresence.com/hills.html).

While individual groups are free to use as many stages in the [Product Development Flow](/handbook/product-development-flow/#workflow-summary) workflow as they find useful, we should be somewhat prescriptive on how issues transition from discovery/refinement to implementation.

##### Measuring the value of the team deliverables

To visualize our flow of value to customers, we're [dogfooding](/handbook/engineering/development/principles/#dogfooding) [Value Stream Analytics](https://gitlab.com/groups/gitlab-org/-/analytics/value_stream_analytics?value_stream_id=1022&project_ids[]=278964&label_name[]=group%3A%3Aoptimize) to measure the time it takes to go from planning to production.

##### Backlog management

Backlog management is very challenging, but we try to do so with the use of labels and milestones.

###### Refinement

**The end goal is defined,** where all direct stakeholders says “yes, this is ready for development”. Some issues get there quickly, some require a few passes back and forth to figure out.

The goal is for engineers to have buy-in and feel connected to the roadmap. By having engineering included earlier on, the process can be much more natural and smooth.

To do so, engineering managers, engineers, and designers can be pinged directly from the issue. We're currently exploring [converting the Manage project into a group](https://gitlab.com/gitlab-org/manage/-/issues/16983) to be able to create groups to more easily ping group members.

To find issues that require refinement, please see the [Next Up](#next-up) label and its purpose.

###### Next Up

- To identify issues that need refinement, use the "Next Up" label.
  - The purpose of the "Next Up" label is to identify issues that are currently in _any_ workflow stage before `workflow::ready for development`. By using this "Next Up" label in addition to workflow labels, we're able to see exactly what is being refined, e.g., problem, design, solution. This helps identify which issues are closer to being ready to schedule.
- Issues shouldn't receive a milestone for a specific release (e.g. 13.0) until they've received a 👍 from both Product and Engineering. This also means the issue should not be labeled as `workflow::ready for development`.
  - Product approval is represented by an issue moving into `workflow::planning breakdown`.
  - Engineering approval is represented by an issue weight measuring its complexity.

##### Breaking down or promoting issues

Depending on the complexity of an issue, it may be necessary to break down or promote issues. A couple sample scenarios may be:

- We need to do discovery on the design, before we do anything else. A "Discovery:" issue may work best here as it helps to contain the design thinking and discussion there, with the end result being transferred over to a "Implementation:" issue. These prefixes also help to organize what type of issue they are, in the case they are linked to parent issues or epics.
- The scope of work is larger than anticipated, and needs to be broken down further, e.g., it currently has a weight higher than 5. It may suit you to then promote said issue to an epic, to break it down into smaller issues to list out the different iterations or phases of work that need to happen to deliver the overall feature that was originally proposed.
- The scope of work is clear, but a bit unwieldy for one issue. It may make sense to keep the given issue as is, to keep the conversation and activity visible to everyone, but create separate child design, backend, or frontend issues to track the more nuanced progress of a given issue.

If none of the above applies, then the issue is probably fine as-is! It's likely then that the weight of this issue is quite low, e.g., 1-2.

##### Managing discussions, information, decisions, and action items in an issue.

As part of [breaking down or promoting issues](#breaking-down-or-promoting-issues), you may find that there are a significant number of threads and comments in a given issue.

It's very important that we make sure any proposal details, pending action items, and decisions are easily visible to any stakeholder coming into an issue. Therefore, it's paramount that the issue description is kept up-to-date, or otherwise broken down or promoted as per the above section.

#### Estimation

Before work can begin on an issue, we should estimate it first after a preliminary investigation.

If the scope of work of a given issue touches several disciplines (docs, design, frontend, backend, etc.) and involves significant complexity across them, consider creating separate issues for each discipline (see [an example](https://gitlab.com/gitlab-org/gitlab-ee/issues/9288)).

Issues without a weight should be assigned the "workflow::planning breakdown" label.

When estimating development work, please assign an issue an appropriate weight:

| Weight | Description (Engineering) |
| ------ | ------ |
| 1 | The simplest possible change. We are confident there will be no side effects. |
| 2 | A simple change (minimal code changes), where we understand all of the requirements. |
| 3 | A simple change, but the code footprint is bigger (e.g. lots of different files, or tests affected). The requirements are clear. |
| 5 | A more complex change that will impact multiple areas of the codebase, there may also be some refactoring involved. Requirements are understood but you feel there are likely to be some gaps along the way. We should challenge ourselves to break this issue in to smaller pieces. |
| 8 | A complex change, that will involve much of the codebase or will require lots of input from others to determine the requirements. These issues will often need further investigation or discovery before being `~workflow::ready for development` and we will likely benefit from multiple, smaller issues. |
| 13 | A significant change that may have dependencies (other teams or third-parties) and we likely still don't understand all of the requirements. It's unlikely we would commit to this in a milestone, and the preference would be to further clarify requirements and/or break in to smaller Issues. |

As part of estimation, if you feel the issue is in an appropriate state for an engineer to start working on it, please add the ~"workflow::ready for development" label. Alternatively, if there are still requirements to be defined or questions to be answered that you feel an engineer won't be able to easily resolve, please add the ~"workflow::blocked" label. Issues with the `workflow::blocked` label will appear in their own column on our planning board, making it clear that they need further attention. When applying the `workflow::blocked` label, please make sure to leave a comment and ping the DRI on the blocked issue and/or link the blocking issue to raise visibility.

##### Implementation Approach

For engineers, you may want to create an implementation approach when moving an issue out of `~workflow::planning breakdown`. A proposed implementation approach isn't required to be followed, but is helpful to justify a recorded weight.

As the DRI for `workflow::planning breakdown`, consider following the example below to signal the end of your watch and the issues preparedness to move into scheduling. While more straightforward issues that have already been broken down may use a shorter format, the plan should (at a minimum) always justify the "why" behind an estimation.

The following is an example of an implementation approach from [https://gitlab.com/gitlab-org/gitlab/-/issues/247900#implementation-plan](https://gitlab.com/gitlab-org/gitlab/-/issues/247900#implementation-plan). It illustrates that the issue should likely be broken down into smaller sub-issues for each part of the work:

```md
### Implementation approach

~database

1. Add new `merge_requests_author_approval` column to `namespace_settings` table (The final table is TBD)

~"feature flag"

1. Create new `group_merge_request_approvers_rules` flag for everything to live behind

~backend

1. Add new field to `ee/app/services/ee/groups/update_service.rb:117`
1. Update `ee/app/services/ee/namespace_settings/update_service.rb` to support more than just one setting
1. *(if feature flag enabled)* Update the `Projects::CreateService` and `Groups::CreateService` to update newly created projects and sub-groups with the main groups setting
1. *(if feature flag enabled)* Update the Groups API to show the settings value
1. Tests tests and more tests :muscle:

~frontend

1. *(if feature flag enabled)* Add new `Merge request approvals` section to Groups general settings
1. Create new Vue app to render the contents of the section
1. Create new setting and submission process to save the value
1. Tests tests and more tests :muscle:
```

The DRI is **highly** recommended to ping a relevant counterpart or domain expert if an issue covers multiple
disciplines (for example backend and frontend) before moving the issue to `workflow::scheduling`. This gives
the domain expert the opportunity to approve the implementation plan or raise any potential pitfalls or
concerns before work begins.

Once an issue has been estimated, it can then be moved to `workflow::scheduling` to be assigned a milestone before finally being `workflow::ready for development`.

#### Planning

We plan in monthly cycles in accordance with our [Product Development Timeline](/handbook/engineering/workflow/#product-development-timeline). Meeting this timeline is up to the discretion of individual groups. A typical Optimize planning cycle looks like:

- By the 4th, Product should have created a planning issue for their group in the [Manage project](https://gitlab.com/gitlab-org/manage/issues) for the coming release.
  - This issue should include a tentative plan for the release, along with links to boards that represent the proposed work for the milestone.
  - A board filtered by the `Next 1 - 3 releases` milestone is used to caputure upcoming issues.
  - Issues of particular significance to our stage's strategy should be marked with `direction`.
- By the 12th, all issues proposed for the next release should be estimated with weights assigned by engineering (`workflow:ready for development`).
  - To assist with capacity planning, we start with a capacity of 10 weight per engineer and deduct based on time off, team days, on-call schedules, or other activities. The EM captures the execpted capacity in the planning issue.
  - Issues that we know will slip from the previous release should be reweighted for the remaining effort left and rescheduled to the next release.
- By the 15th, Product and Engineering will have ordered the list of issues in the `Next 1 - 3 releases` board.
  - Depending on availibility, either Product or Engineering will take capacity into consdieration and assign the top issues in each [type category](/handbook/engineering/development/dev/plan/optimize/#merged-merge-request-types) to the next release.
  - The engineering manager will assign the ~Deliverable label to any committed work.
  - The entire planning process is asynchronous, however a synchronous meeting to review the final release scope is optional if Product and Engineering require additional collaboration.

##### Deliverable and Stretch issues

Issues labelled `Deliverable` are scheduled for the current milestone. They are considered top priority and are expected to be done in time for the release.

Issues labelled `Stretch` are stretch goals for delivering in the current milestone. If these issues are not done in the current release, they will strongly be considered for the next release.

##### Community contributions

Issues that have previously been agreed upon and labelled as `Community contribution` should be [triaged](/handbook/engineering/infrastructure/engineering-productivity/issue-triage/) to ensure they have:

- A clear [implementation plan](/handbook/engineering/development/dev/create/ide/community-contributions/#treat-wider-community-as-primary-audience).
- A relevant weight estimate.
- The `Seeking community contributors` label assigned.

Once triaged the issue can be added to the `backlog` and left unassigned. Assigning an issue signals that the assignee is actively working on the issue, given the time constraints and varying levels of familiarity with the code base community members may have, it's best to assign the issue once an MR is progress.

If there is a clear need for the issue to be handled sooner, consider scheduling the issue for a milestone with the appropriate priority label assigned so that an optimize team member can plan for it.

If a community member expresses interest in taking on an issue, a relevant Optimize team member should ensure the issue description and implementation plan are accurate and reflect the latest decisions and all labels are up to date, as well as monitor progress in case the contributor requires additional assistance or has not been able to continue.

##### Self assignment

During planning, the EM may assign issues to individual engineers when it makes sense, but in general the issues will remain unassigned and left for engineers to self assign once planning has been finalized.

Expectations by role:

- EM to ping engineers on the planning issue once finalized.
- Engineers to self assign issues before the start of the release.
- EM to highlight unassigned issues during weekly team call.

#### During a release

- When an issue is introduced into a release after Kickoff, an equal amount of weight must be removed to account for the unplanned work.
- Development should not begin on an issue before it's been estimated and given a weight.
- By the 15th, engineering merge requests should be merged. In other words, we assume code merged after the 15th will not be in the release. That allows time for the release to be finalized, and any associated [Release Posts](/handbook/marketing/blog/release-posts/) to be merged by the 17th. (This is an [experiment starting with 13.11](https://gitlab.com/gitlab-org/manage/general-discussion/-/issues/17330).)

#### Release posts

For issues which need to be announced in more detail, a release post can be automatically created using the issue.
When working on an issue, either in planning, or during design and development, you can use the
[release post item generator](/handbook/marketing/blog/release-posts/#release-post-item-generator)
to have the release post created and notify all the relevant people.

If you do not want an issue to have a release post, make sure that the issue does not have a
release notes section or use a `release post item::` label.

#### Proof-of-concept MRs

We strongly believe in [Iteration](/handbook/values/#iteration) and delivering value in small pieces. Iteration can be hard, especially when you lack product context or are working in a particularly risky/complex part of the codebase. If you are struggling to estimate an issue or determine whether it is feasible, it may be appropriate to first create a proof-of-concept MR. The goal of a proof-of-concept MR is to remove any major assumptions during planning and provide early feedback, therefore reducing risk from any future implementation.

- Create an MR, prefixed with `PoC: `.
- Explain what problem the PoC MR is trying to solve for in the MR description.
- Timebox it. Can you determine feasibility or a plan in less than 2-3 days?
- Identify a reviewer to provide feedback at the end of this period.
- Close the MR. Provide a summary in the original issue on what you learned from the PoC, including product and performance implications.
  - State whether you are able to move forwards with implementation or not.
  - Please do not close the issue.

The need for a proof-of-concept MR may signal that parts of our codebase or product have become overly complex. It's always worth discussing the MR as part of the retrospective so we can discuss how to avoid this step in future.

#### Issue triage

We generally follow the [Issue Triage](/handbook/engineering/infrastructure/engineering-productivity/issue-triage) guidelines.

Expectations by role:

- PM is the DRI for `type::feature`
- EM is the DRI for `type::bug`
- UX supports the decision around severity labels for issues with `UX`, `Deferred UX`, and `SUS`
  - Where the UX severity and PM/EM severity is different, we take the [higher severity of the two](/handbook/engineering/infrastructure/engineering-productivity/issue-triage/#examples-of-severity-levels).
- Engineers are encouraged to participate

On a weekly basis, we aim to triage as many issues as possible. We strive to perform a [complete triage](/handbook/engineering/infrastructure/engineering-productivity/issue-triage/#complete-triage) on issues requiring triage.

### Working on unscheduled issues

Everyone at GitLab has the freedom to manage their work as they see fit,
because [we measure results, not hours](/handbook/values/#measure-results-not-hours). Part of this is the
opportunity to work on items that aren't scheduled as part of the
regular monthly release. This is mostly a reiteration of items elsewhere
in the handbook, and it is here to make those explicit:

1. We expect people to be [managers of one](/handbook/values/#managers-of-one), and we [use
   GitLab ourselves](/handbook/values/#dogfooding). If you see something that you think
   is important, you can request for it to be scheduled, or you can
   [work on a proposal yourself](/handbook/values/#dont-wait), _as long as you keep your
   other priorities in mind_.
1. From time to time, there are events that GitLab team-members can participate
   in, like the [issue bash](https://about.gitlab.com/community/issue-bash/). Anyone is welcome
   to participate in these.

When you pick something to work on, please:

1. Follow the standard workflow and assign it to yourself.
1. Share it in `#g_plan_optimize` to encourage [transparency](/handbook/values/#transparency)

### Additional considerations

#### Capacity planning

During planning we don't plan 100% of the team's capacity to go into deliverable work each milestone. Instead, we reserve a buffer of 15% per team member to allow for more time to research and scope work.

#### Documentation

Documentation is a crucial part of our [definition of done](https://docs.gitlab.com/ee/development/contributing/merge_request_workflow.html#definition-of-done). For any change that requires technical writing, we will add the documentation label. The documentation label should be used in addition to backend/frontend labels. If a feature justifies separate backend and frontend issues, the documentation label should be applied to each issue if applicable. An issue may only get resolved if all the work has been merged, i.e., the technical part and the documentation change.

#### Data seeding scripts

Features within the Optimize scope require appropriate data in order to verify functionality and test during development. Data seeding scripts should be created and/or updated as part of our development process.

## Meetings

Although we have a bias for asynchronous communication, synchronous meetings are necessary and should adhere to our [communication guidelines](/handbook/communication/#video-calls). Some regular meetings that take place in Manage are:

| Frequency | Meeting                              | DRI         | Possible topics                                                                                        |
|-----------|--------------------------------------|-------------|--------------------------------------------------------------------------------------------------------|
| Weekly    | Group-level meeting                  | Engineering Managers | Ensure current release is on track by walking the board, unblock specific issues                       |
| Monthly   | Planning meetings                    | Product Managers         | See [Planning](/handbook/engineering/development/dev/plan/#planning) section |

For one-off, topic specific meetings, please always consider recording these calls and sharing them (or taking notes in a [publicly available document](https://docs.google.com/document/d/1kE8udlwjAiMjZW4p1yARUPNmBgHYReK4Ks5xOJW6Tdw/edit)).

Agenda documents and recordings can be placed in the [shared Google drive](https://drive.google.com/drive/u/0/folders/0ALpc3GhrDkKwUk9PVA) (internal only) as a single source of truth.

Meetings that are not 1:1s or covering confidential topics should be added to the Manage Shared calendar.

All meetings should have an agenda prepared at least 12 hours in advance. If this is not the case, you are not obligated to attend the meeting. Consider meetings canceled if they do not have an agenda by the start time of the meeting.


## Group Members

The following people are permanent members of the group:

{{< stable-counterparts role="Plan.+Optimize" >}}

## Links and resources {#links}

- [Milestone retrospectives](https://gitlab.com/gl-retrospectives/manage-stage/optimize/-/issues)
- Our Slack channels
  - Plan:Optimize [#g_plan_optimize](https://gitlab.slack.com/messages/CJZR6KPB4)
  - Daily standups [#s_plan_standup](https://gitlab.slack.com/archives/CF6QWHRUJ)
- Issue boards
  - Optimize [build board](https://gitlab.com/groups/gitlab-org/-/boards/1401511) and [refinement board](https://gitlab.com/groups/gitlab-org/-/boards/1874426)ֿ
- For more information about the optimize group's plans and vision visit the [Groups page](/handbook/product/categories/#optimize-group)
