---
title: Plan:Project Management Team
---

## Plan:Project Management Team

The Plan:Project Management team works on
GitLab's [Project Management category](/handbook/product/categories/#project-management-group) in the [Plan stage](/handbook/engineering/development/dev/plan/).

For more details about the vision for this area of the product, see the
[Plan stage](/handbook/engineering/development/dev/plan/) page.

### Team members

{{% team-by-manager-role "Engineering Manager(.*)Plan:Project Management" %}}

### Stable counterparts

{{% stable-counterparts manager-role="Engineering Manager(.*)Plan:Project Management" role="(.*)Plan:Project Management$|Product Manager(.*)Plan Stage|Security(.*)Plan|Engineering(.*)Plan$|Principal(.*)Plan$|Group(.*)Plan" %}}

### Hiring chart

Check out our [jobs page](https://about.gitlab.com/jobs/) for current openings.

## Scalability Targets

We're tracking a number of issues that we believe could cause scalability problems in the future.

| Type | Description | Estimated Timeline for Failure | Resolution Due Date | 12 Month Target | Issue | Status |
| ---- | ---          | ---                            | ---                | ---    | ---   | ---    |
| Primary key int4 overflow | `system_note_metadata.id` column is at 50% saturation and must be converted to bigint (int8). | March 2024 - 2025 | 2023-12-22 | Sub-50% | [#424114](https://gitlab.com/gitlab-org/gitlab/-/issues/424114) | <span style='border-radius:0.2em; font-weight:bold; padding-left:1em; padding-right:1em; color:white; background-color:red;'>Urgent</span> |
| Redis Primary CPU | Unexpected load on the Shared State Redis instance caused by `SUBSCRIBE`, `UNSUBSCRIBE` and `PUBLISH` commands. | Unknown | November 2023 | [150k Concurrent WebSocket Connections](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/11747#action-cable-websockets) at peak | | <span style='border-radius:0.2em; font-weight:bold; padding-left:1em; padding-right:1em; color:white; background-color:green;'>Okay</span> |
| Redis Memory | Retention of Action Cable messages in Redis Shared State memory due to high numbers of and/or stalled/hung clients.  | Unknown | November 2023 | [150k Concurrent WebSocket Connections](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/11747#action-cable-websockets) at peak | [#326364](https://gitlab.com/gitlab-org/gitlab/-/issues/326364) | <span style='border-radius:0.2em; font-weight:bold; padding-left:1em; padding-right:1em; color:white; background-color:green;'>Okay</span> |
| Various | Scaling a combined 'Work Items' table consisting of all current issues, epics, requirements and test cases. | Unknown | November 2023 | [100k Work Items](#work) created per day| | <span style='border-radius:0.2em; font-weight:bold; padding-left:1em; padding-right:1em; color:white; background-color:green;'>Okay</span> |

Note: Work is ongoing on [migration helpers](https://gitlab.com/gitlab-org/gitlab/-/issues/292874) to mitigate Int4 Primary Key Overflows. These will provide a standard way to resolve these issues.

## Work

You can see how we work as a stage at the [Plan stage page](/handbook/product/categories/#plan-stage).

For the backend team specifically, we use the standard GitLab
[engineering workflow](/handbook/engineering/workflow/). To get in touch with the Plan:Project Management
backend team, it's best to create an issue in the relevant project
(typically [GitLab](https://gitlab.com/gitlab-org/gitlab)) and add the ~"group::project management" label, along
with any other appropriate labels. Then, feel free to ping the relevant
Product Manager and/or Engineering Manager as listed above.

For more urgent items, feel free to use [#s_plan](https://gitlab.slack.com/archives/s_plan) on Slack.

### Capacity planning

{{% include "includes/engineering/plan/capacity-planning.md" %}}

#### Weighing bugs

{{% include "includes/engineering/plan/weighing-bugs.md" %}}

#### Refining and organizing feature work

To help drive alignment with our stable counterparts, provide visibility into progress, and breakdown our vision into a series of [MVCs](/handbook/product/product-principles/#the-minimal-valuable-changegegege-mvc), we collaborate with Product and UX during [`~workflow::planning breakdown`](/handbook/product-development-flow/#description-4) to refine and organize `~type::feature` deliverables into the following structure:

- Feature (Epic) - Contains all of the necessary vertical feature slices to default the corresponding feature flag to "on". The feature epic will also serve as the location to generate a corresponding Release Post item MR. The feature epic should be scoped to the [minimal amount of functionality that still provides customer value](/handbook/product/product-principles/#the-minimal-valuable-change-mvc). Additional scope planned for future enhancements should be stored in follow-on epics.
  - Spike (Issue) - If we are unable to accurately estimate the effort necessary to implement the feature, we first conduct a [spike](#spikes)
  - UX (Issue) - For larger initiatives, UX creates a separate UX issue that serves as the SSOT for design goals, design drafts, design conversation and critique, and the chosen design direction that will be implemented. [Learn more about UX issues](/handbook/product/ux/stage-group-ux-strategy/plan/plan.html#ux-issue-management-weights-and-capacity-planning).
  - Vertical Feature Slice (Issue) - A subset of the feature that can be completed within a single milestone, tested, and verified within the `plan-stage` group on production.
    - Engineering Tasks (Task - *Optional*) - One or more engineering tasks that need to be completed in order to deliver the vertical feature slice. The scope of a task should generally correlate to a single MR.

During the `~workflow::planning breakdown` phase, all issues need to be weighted so we can efficiently and effectively collaborate with Product and UX on "right sizing" the feature epic. It's advisable that all issues are connected to a parent epic that describes the broader set of improvements we are proposing within a specific area of the product. The desired outcome is to ensure it's as small as possible, maximizes our ability to iterate, and makes it easy to track overall progress on delivery, while providing meaningful value and avoiding an undue amount of "change fatigue" for our customers.

#### Spikes

There is a decent amount of complexity in the features that we as a team are responsible for, and we're aiming to determine where the majority of risks involved in building a feature are prior to commitments being made and development starting. We are trying out a concept of a rotation of DRIs for spikes. Spikes will be a two week time period where one engineer DRI works exclusively on breaking down an issue/epic by asking questions to determine risk and complexity, creating proof of concepts, and writing up iteration plans for implementation.

The DRI will not be expected to produce MRs during the period they are on rotation, but instead, will be expected to produce issue artifacts at the end of the period, so that a first iteration can be worked on in the following milestone (either by the DRI or other engineers).

By the end of the spike, there should be documented acceptance criteria for a first iteration, that the internal parties (spike DRI, PM, UX, and EM) have all agreed to.

DRI rotation:

| DRI | Start date | End date | Spike |
| --- | --- | --- | --- |
| Alexandru Croitor | 2023-01-23 | 2023-02-03 | [Moving work items](https://gitlab.com/gitlab-org/gitlab/-/issues/387304) |
| Simon Knox | 2023-02-06 | 2023-02-17 | [Frontend of work items at the group level](https://gitlab.com/gitlab-org/gitlab/-/issues/390432) |
| Heinrich Lee Yu | 2023-02-20 | 2023-03-03 | [Group by work items](https://gitlab.com/gitlab-org/gitlab/-/issues/392418) |
| Coung Ngo | 2023-03-13 | 2023-03-24 | [Group by work items](https://gitlab.com/gitlab-org/gitlab/-/issues/392418) ~frontend focused |
| Mario Celi | 2023-03-27 | 2023-04-07 | |
| Deepika Guliana | 2023-04-10 | 2023-04-21 | |
| Eulyeon Ko | 2023-04-24 | 2023-05-05 | |

### Collaboration between backend and frontend

#### Using the ~"backend complete" label

The ~"backend complete" label is added to issues with multiple specializations (usually backend and
frontend) to indicate that the backend component is complete. Add this label when the backend work is
functionally complete, merged and verified but frontend, or other, work is ongoing.

### Picking something to work on

The [Plan:Project Management Build board](https://gitlab.com/groups/gitlab-org/-/boards/1285239?label_name[]=backend) shows prioritized work with [workflow columns](/handbook/product-development-flow/) relevant to implementation. There is an
additional column to show in-progress community contributions. Filtering it by
~backend shows issues for backend engineers to work on.

It's OK to not take the top item if you are not confident you can solve
it, but please post in [#s_plan](https://gitlab.slack.com/archives/s_plan) if that's the case, as this probably
means the issue should be better specified.

### Queueing Experimentation

As part of our ongoing efforts to improve efficiency, we will experiment with [queuing techniques](https://www.brightball.com/articles/story-points-are-pointless-measure-queues) instead of traditional weight/story points for the [migration of legacy issues to work items project](https://gitlab.com/gitlab-org/gitlab/-/issues/461855). Starting in milestone 17.3, we will:

1. **Refine Required Issues**: Review the [list of required issues for the first MVC](https://gitlab.com/gitlab-org/gitlab/-/issues/?sort=created_date&state=opened&label_name%5B%5D=work%20items::ga-issues&label_name%5B%5D=work%20items&first_page_size=100).

    - Determine the best way to group bundles of tasks, using issues or epics.
    - Break down large issues into tasks, aiming for tasks that are small enough to be moved from ~"workflow::in dev" to ~"workflow::in review" within 5 business days.

2. **Prioritize Tasks**: Prioritize the tasks from step 1.
3. **Update Workflow**: Update the #picking-something-to-work-on section to include the list of tasks, monitoring work in progress to keep it as low as possible.

This will help us manage and report progress more effectively using queue management principles.

#### High Severity Issues

{{% include "includes/engineering/plan/high-severity-items.md" %}}

### Working on unscheduled issues

Everyone at GitLab has the freedom to manage their work as they see fit,
because [we measure results, not hours](/handbook/values/#results). Part of this is the
opportunity to work on items that aren't scheduled as part of the
regular monthly release. This is mostly a reiteration of items elsewhere
in the handbook, and it is here to make those explicit:

1. We expect people to be [managers of one](/handbook/values/#efficiency), and we [use GitLab ourselves](/handbook/values/#collaboration). If you see something that you think
   is important, you can [request for it to be scheduled](/handbook/engineering/workflow/#requesting-something-to-be-scheduled), or you can
   [work on a proposal yourself](/handbook/values/#iteration), as long as you keep your
   other tasks in mind.
1. If you feel like you want to have some specific time set aside, but
   aren't interested in the topics of an existing event, feel free to
   label issues with "For Scheduling" and copy your manager for visibility.

When you pick something to work on, please:

1. Follow the standard workflow and assign it to yourself.
1. Share it in [#s_plan](https://gitlab.slack.com/archives/s_plan) - if not even more widely (like in #development
   or #backend).

### Dashboards

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="project management" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
  {{< tableau/filters "GROUP_LABEL"="project management" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/Flakytestissues/FlakyTestIssues" >}}
  {{< tableau/filters "GROUP_NAME"="project management" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/SlowRSpecTestsIssues/SlowRSpecTestsIssuesDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="project management" >}}
{{< /tableau >}}

## Useful links

- [Plan:Project Management Build board](https://gitlab.com/groups/gitlab-org/-/boards/1285239?label_name[]=backend) - this shows work in the current release
- [#s_plan](https://gitlab.slack.com/archives/s_plan) in Slack
- [Recorded meetings](https://www.youtube.com/playlist?list=PL05JrBw4t0KoceqcTneOVmAzhEp6NinY0)
- [Retrospectives](https://gitlab.com/gl-retrospectives/plan/issues?scope=all&utf8=%E2%9C%93&state=all&label_name[]=retrospective)
- [Group Conversations](http://gitlab-org.gitlab.io/group-conversations/plan/) (archive; group conversations now happen at a the
  [section level](/company/team/structure/#organizational-structure))
