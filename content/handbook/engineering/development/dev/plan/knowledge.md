---
title: Plan:Knowledge Engineering Team
---

## Plan:Knowledge team

The Plan:Knowledge team works on both the backend and frontend parts of
GitLab's [Knowledge] categories in the [Plan stage].

For more details about the vision for this area of the product, see the
[Plan stage] page.

[Knowledge]: /handbook/product/categories/#knowledge-group
[Plan stage]: /direction/plan/

### Team members

{{< team-by-manager-role role="Engineering Manager(.*)Plan:Knowledge" >}}

### Stable counterparts

{{% stable-counterparts manager-role="Engineering Manager(.)Plan:Knowledge" role="(.)Plan:Knowledge$|Product Manager(.)Plan Stage|Security(.)Plan|Engineering(.)Plan$|Principal(.)Plan$|Group(.*)Plan" %}}

### Hiring chart

Check out our [jobs page](https://about.gitlab.com/jobs/) for current openings.

## Planning

### Picking something to work on

The team [build board](https://gitlab.com/groups/gitlab-org/-/boards/5454834) always shows
work targeting the upcoming release, organized into workflow columns. The ~"workflow::ready for development" column is ordered by priority.

The following labels are added by the Engineering Manager at the start of the milestone and communicate the priority of the issue to stakeholders:

- The ~Deliverable label indicates that we have committed to customers that we will deliver this item in the current milestone.
- The ~Stretch label indicates that we have not committed to deliver the item but will attempt to make progress on it.

It's OK not to take the top item if you are not confident you can solve it, but please post in #s_plan or #g_knowledge if that's the case, as this
probably means the issue should be better specified.

### Capacity

{{% include "includes/engineering/plan/capacity-planning.md" %}}

Typically, 3-month rolling average is a good indicator of the team's capacity. Knowledge is a new team and determining capacity will be difficult at the beginning without clear historical data.

The PM and EM will work to fit ~Deliverable issues into no more than 75% of the team's capacity and allocate the rest to ~Stretch issues.

#### Planning Rotation

As a small team with distinct roles this team does not run an allocated planning rotation, as other Plan teams do.

Instead, all members of the team get involved in estimation during the planning process. We rely on the person with the most context around a task
to give an accurate estimate. This should start on the 5th and be completed by the 12th of the month.

#### Weighing bugs

{{% include "includes/engineering/plan/weighing-bugs.md" %}}

### Refinement

#### Board-Walk (weekly)

Team-members meet to walk the [Build Board](https://gitlab.com/groups/gitlab-org/-/boards/5454834) once a week. 25 minutes are allocated for this sync call but it may be completed much more quickly than that. The EM is DRI and attendance is optional except for PM. It is recorded and shared in the [#g_knowledge Slack channel](https://app.slack.com/client/T02592416/C04R571QF5E). The recording will be made public only if no security or other confidential issues are discussed. The [agenda](https://docs.google.com/document/d/1SZrFiipmH5GX5CYL-nOuc8NNqSs-AXCvHOzajwy06vk/edit?usp=sharing) is available internally and all team-members are encouraged to contribute updates and questions.

The purpose of this meeting is to:

- Update on the status of work in progress
- Identify blockers and risk
- Reprioritize
- Ask for help

DRIs should keep issues up to date with [workflow labels](/handbook/engineering/development/dev/plan/knowledge/#use-of-labels) and [health status](/handbook/engineering/development/dev/plan/#keeping-health-status-accurate) on an ongoing basis rather than waiting for this meeting.

#### Planning Meeting (monthly)

A planning meeting is held once per month, prior to the start of the milestone. The Product Manager is the DRI for scheduling it.

Attendance is optional for engineers but participation is not. The meeting will have an agenda and will be recorded. It may involve any or all of the following:

- Setting priorities and expectations.
- Estimating tasks.
- Breaking down and collaborating on scope.
- Clarifying requirements.
- Estimating capacity and carry-over.

As much as possible these tasks should be completed asynchronously, reducing the work required in the meeting. The purpose of the meeting is to start the upcoming milestone in the best possible shape for success.

#### Refinement sessions (ad-hoc)

Team-members are encouraged to propose refinement sync meetings for large issues and/or new features.
The goal is to explore concerns and unknowns while sharing knowledge and gathering different perspectives on the problem.

A refinement meeting might have an agenda with topics like:

- Product requirements
- Technical challenges
- Technical alternatives
- How to iterate on the solution proposed

As an outcome, the meeting could produce a list of issues, with an estimated milestone, to iterate over.

#### Asynchronous-first

Most planning is done asynchronously. Some tools and processes are observed to make this more efficient.

Since issues can only have one milestone attached, the `~"Next Up"` label is used to mark items for the upcoming milestone, regardless of whether they already have a milestone or not. PM and EM should remove this label from any issues prior to the start of planning, then add it to prospective issues and any expected to slip the current milestone during the planning process.

Using this label, it's possible to easily analyze the upcoming milestone. The [Planning Board] mimics the Build Board but is scoped to this label instead of the current milestone. Use it to:

- View the current workflow state of all proposed issues.
- Plan capacity by totalling weight values for each list.
- Understand blocking relationships that may be resolvable before the milestone starts.

When the new milestone starts, the milestone can be added all issues with the `~"Next Up"` label in a bulk action, and the label itself removed.

[Planning Board]: https://gitlab.com/groups/gitlab-org/-/boards/7109724

## Workflow

### Use of Labels

Proper labelling of issues helps with the classification, traceability and quantification of work the team can and is doing. Some labels
are essential. The table below describes these and gives the reason why.

| Label | Use | Handbook Guidance | DRI |
|---    | --- | ---               | --- |
| ~workflow::* | Communicates the current workflow state of an issue. Important for understanding progress & quantifying risk during the course of a milestone. | [Updating Issues Throughout Development](/handbook/engineering/workflow/#updating-issues-throughout-development) | Engineer |
| ~type::* | Communicates the type of work being done. Used to quantify and report the split of work to roles inside and outside GitLab. | [Work Type Classification](/handbook/engineering/metrics/#work-type-classification) | |
| ~Deliverable/~Stretch | ~Deliverable communicates to customers and stakeholders that we intend to deliver an issue within the assigned milestone. ~Stretch indicates that it might be started during the milestone but is not expected to complete. | [Release Scoping Labels](https://docs.gitlab.com/ee/development/labels/#release-scoping-labels) | Engineering Manager |

### Collaboration

Close collaboration outside of Knowledge group or Engineering discipline is often required. To mitigate the effect of [Conway's Law](https://en.wikipedia.org/wiki/Conway%27s_law), where siloes in the organization are reflected in the design of the product, and to promote efficiency, here are some guidelines for engaging with counterparts across the organization.

#### Pipeline Authoring

Changes to the pages product often require changes to pipeline configuration. Help is available from the [Pipeline Authoring](/handbook/engineering/development/ops/verify/pipeline-authoring/) team, who are directly responsible for this functionality.

It's encouraged to engage with this team when spiking and planning new work for the pages product. Reference your spike or planning issue when reaching out to [#g_pipeline-authoring](https://gitlab.slack.com/archives/C019R5JD44E) for any requested guidance. You can use the `@verify-pa-backend` Slack group to specifically ping the backend team. Engaging with the team at the earliest ensures they're able to set aside capacity to help with minimal disruption to their own roadmap.

### Dashboards

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="knowledge" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
  {{< tableau/filters "GROUP_LABEL"="knowledge" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/Flakytestissues/FlakyTestIssues" >}}
  {{< tableau/filters "GROUP_NAME"="knowledge" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/SlowRSpecTestsIssues/SlowRSpecTestsIssuesDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="knowledge" >}}
{{< /tableau >}}


Detailed metrics are available on the [Engineering Metrics page].

[Engineering Metrics page]: https://handbook.gitlab.com/handbook/engineering/metrics/dashboards/

#### Application Performance

Additional dashboards are available in Grafana that show application performance of parts of the application for which the team is responsible.

- [Stage-Group Dashboard] (including 28-day Error Budget)
- [Error Budget Detail]

[Work Type Classification]: https://about.gitlab.com/handbook/engineering/metrics/#work-type-classification
[Stage-Group Dashboard]: https://dashboards.gitlab.net/d/stage-groups-knowledge/stage-groups-knowledge-group-dashboard?orgId=1
[Error Budget Detail]: https://dashboards.gitlab.net/d/stage-groups-detail-knowledge/stage-groups-knowledge-group-error-budget-detail?orgId=1

## Useful links

- [Plan:Knowledge] - Apply a milestone filter to see work in the current release
- [#s_plan] in Slack
- [Recorded meetings][youtube]
- [Retrospectives][retros]
- [Group Conversations] (archive; group conversations now happen at a the
  [section level])

[Plan:Knowledge]: https://gitlab.com/groups/gitlab-org/-/boards/1569369?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=group%3A%3Aknowledge
[#s_plan]: https://gitlab.slack.com/archives/s_plan
[youtube]: https://www.youtube.com/playlist?list=PL05JrBw4t0KoceqcTneOVmAzhEp6NinY0
[retros]: https://gitlab.com/gl-retrospectives/plan/issues?scope=all&utf8=%E2%9C%93&state=all&label_name[]=retrospective
[Group Conversations]: http://gitlab-org.gitlab.io/group-conversations/plan/
[section level]: /company/team/structure/#organizational-structure
