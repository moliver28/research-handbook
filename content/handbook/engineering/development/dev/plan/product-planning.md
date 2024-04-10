---
title: Plan:Product Planning Engineering Team
---

## Plan:Product Planning team

The Plan:Product Planning team works on both the backend and frontend parts of
GitLab's [Product Planning] category in the [Plan stage].

For more details about the vision for this area of the product, see the
[Plan stage] page.

[Product Planning]: /handbook/product/categories/#product-planning-group
[Plan stage]: /handbook/engineering/development/dev/plan/

### Team members

{{% team-by-manager-role "Fullstack Engineering Manager(.*)Plan:Product Planning" %}}

### Stable counterparts

{{% stable-counterparts manager-role="Fullstack Engineering Manager(.*)Plan:Product Planning" role="(.*)Plan:Product Planning$|Product Manager(.*)Plan Stage|Security(.*)Plan|Engineering(.*)Plan$|Principal(.*)Plan$|Group(.*)Plan"" %}}

### Hiring chart

Check out our [jobs page](https://about.gitlab.com/jobs/) for current openings.

### Team metrics dashboard

We have a [metrics dashboard][dashboard] intended to
track against some of the [Development Department KPIs][kpis], particularly
those around merge request creation and acceptance. From that dashboard, the
following chart shows [MR Rate]. Please reference the dashboard section below.

[dashboard]: https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard
[kpis]: /company/kpis/#development-department-kpis
[MR Rate]: /handbook/engineering/performance-indicators/#engineering-mr-rate

### Application performance dashboard

We have useful dashboards tracking the performance of parts of the application we're responsible for:

- Application dashboards; showing request throughput, latency, SQL query counts, cache hits, Sidekiq jobs for Web and API endpoints, git usage and error budgets. Also links to other useful resources in Kibana.
  - [Product Planning]
- The [Sitespeed Dashboard]; showing the results of ongoing synthetic tests against representative product pages. Useful for identifying changes in page load time (TTFB), LCP, etc.

[Product Planning]: https://dashboards.gitlab.net/d/stage-groups-product_planning/stage-groups-group-dashboard-plan-product-planning?orgId=1&from=now-7d&to=now
[Sitespeed Dashboard]: https://dashboards.gitlab.net/d/product-plan/product-performance-plan?orgId=1

## OKRs

### Active Quarter OKRs

As we migrate to using GitLab to track OKRs, the active quarter (FY24-Q1) OKRs will be visible [here](https://gitlab.com/gitlab-com/gitlab-OKRs/-/issues/?sort=created_date&state=opened&type%5B%5D=objective&label_name%5B%5D=division%3A%3AEngineering&label_name%5B%5D=group%3A%3Aproduct%20planning&milestone_title=Q4&first_page_size=100) and Key Results [here](https://gitlab.com/gitlab-com/gitlab-OKRs/-/issues/?sort=created_date&state=opened&label_name%5B%5D=division%3A%3AEngineering&label_name%5B%5D=group%3A%3Aproduct%20planning&milestone_title=Q4&type%5B%5D=key_result&first_page_size=100).

### Previous Quarter OKRs

FY23-Q4 OKRs were conducted in Ally.io and are no-longer available.

## Work

See the [Plan stage page] and the [Plan:Project Management backend team page].

[Plan stage page]: /handbook/product/categories/#plan-stage
[Plan:Project Management backend team page]: /handbook/engineering/development/dev/plan-project-management/

### Capacity Planning

{{% include "includes/engineering/plan/capacity-planning.md" %}}

#### Weighing bugs

{{% include "includes/engineering/plan/weighing-bugs.md" %}}

#### Consider a Spike and/or a Design Document

Work that arrives in ~"workflow::ready for development" that is out of scope
or ill-defined should be
[returned to ~"workflow::planning breakdown" for further refinement][1].
To avoid the disruption this introduces we try to reduce the number of times
it happens by planning more carefully. While it's not always possible, we aim
to identify complexity before the build phase, such as by assigning an engineering
[DRI][dri] during the design and validation phase.

However, sometimes complexity can't be accurately estimated until development
work starts. If you anticipate this during planning, consider creating a spike to produce a
design document. Notify the participants in the issue, especially the PM, that
a spike is required, create a separate issue and follow these
steps:

1. Title the issue with the goal of the spike;
1. Add the ~spike, ~backend, and corresponding stage/group labels;
1. List the unknowns and questions to be answered;
1. List decisions, architectural or otherwise, that need to be made;
1. Identify specializations required to complete the spike (e.g. Backend, Frontend and UX) assign a DRI from each;
1. Mark the issue as blocking the original, and
1. Label with ~"workflow::ready for development" and assign to the current
milestone.

The deliverable is a design document that answers the questions set out in the
issue description. This can simply be the issue itself, containing a summary
of the discussion in the description, answers to the questions and links to
any PoC MRs produced.

[1]: https://about.gitlab.com/handbook/product-development-flow/#build-phase-2-develop--test
[dri]: https://about.gitlab.com/handbook/people-group/directly-responsible-individuals/

#### Historical Capacity

{{% include "includes/engineering/plan/historical-capacity.md" %}}

#### Collaborating to Improve Velocity

As a team we often work on features that require close collaboration. We've identified a list of techniques and characteristics that help projects like this proceed at a pace that is sustainable, predictable, and challenging, yet rewarding. An example of such feature was [Epic Linking](https://gitlab.com/groups/gitlab-org/-/epics/7546).

1. Feature is designed and broken down in advance of milestone start, including a [spike](#consider-a-spike-andor-a-design-document) if appropriate.
  1. Participants in the spike take part in delivery of the feature.
  1. Prior to closing the description is updated with Acceptance Criteria, with sign-off by each assignee + PM. This is what will be delivered.
  1. For efforts that are part of larger initiatives (like [Work Items](https://docs.gitlab.com/ee/development/work_items.html)), architectural documents are kept up to date with larger decisions; for example, around API design or functionality.
1. Requirements are well-defined with a goal that is achievable within a single milestone and provides business value. For larger features, work may be spread out over several milestones.
1. Items that must be delivered in separate milestones are identified and prioritized first; such as migrations, security issues, and other [multi-version compatibility](https://docs.gitlab.com/ee/development/multi_version_compatibility.html) issues.
1. The stable counterpart from documentation is included at the start of the spike.
1. Reviews are kept inside the team where possible to ensure domain expertise, capacity and a low level of context switching.
1. EM and PM work to remove or limit unneccessary/distracting work.
1. Feature is set as primary deliverable.
1. Due dates defined well in advance.
1. DRIs assigned to every upcoming and in-progress piece of work.
1. Use of Slack and synchronous communication to capture regular updates.
1. If team members have PTO during the milestone, make a plan to hand over work in progress to another team member.

### Collaborating across disciplines

#### Workflow Labels

Most issues, especially features, involve working with other disciplines. A
single issue will often be shared between frontend and backend and it
can be difficult to know which workflow label should be applied, especially
when progress is at different stages.

To ensure visibility for other team-members, for issues with a frontend and
backend component:
- Assign yourself as early as possible if you have capacity to work on it;
- When both frontend and backend DRIs are assigned, consider hosting a small kickoff discussion.
- When the backend work is merged and verified add [the ~"backend complete" label](#using-the-backend-complete-label).

We value [velocity over predictability](/handbook/engineering/development/principles/)
so use your own judgement on whether you should wait for your counterpart to
get involved before proceeding with development.

#### Using the ~"backend complete" label

The ~"backend complete" label is added to issues with multiple specializations (usually backend and
frontend) to indicate that the backend component is complete. Backend engineers should add this label when the backend work is
functionally complete, merged and verified but frontend, or other, work is ongoing.

#### Health Status

To help with visibility of whether or not an issue can be delivered in a milestone, the team uses health status to communicate quickly.
At the beginning of a milestone, all issues relating to the primary deliverable are assigned the "On track" status. Throughout the milestone, feature DRIs are responsible for updating issues statuses when necessary. If the health status is set to a status that is not "On Track", feature DRIs should leave a comment with additional details about why and if there's a way others on the team can help.
Using health status allows stakeholders, such as product and engineering managers, designers, and other engineers, to get a quick and easy overview of what is unlikely to make it into the current milestone.

#### Documentation

Documentation should accompany code for any [new or changed functionality] as per our
[definition of done]. This can become tricky when collaborating on a feature that is
behind a feature flag.

Since all feature flags start as disabled by default, we should aim to document the
feature as soon as it's safe for testing by users using the [feature flag template].
Don't wait until a feature is performant and stable to document it, instead do so once
it's secure and won't leave data in a corrupt, interim state.

Try to include docs with the first MR to introduce usable functionality. If this is
an API addition with no UI, document that and allow the FE engineers to update it as
work proceeds. As the feature flag rollout proceeds, the [documentation should be updated].

This avoids the rush to provide documentation that often accompanies the release cutoff.

[new or changed functionality]: https://about.gitlab.com/handbook/product/ux/technical-writing/workflow/#for-a-product-change
[definition of done]: https://docs.gitlab.com/ee/development/contributing/merge_request_workflow.html#definition-of-done
[feature flag template]: https://docs.gitlab.com/ee/development/documentation/feature_flags.html#features-disabled-by-default
[documentation should be updated]: https://docs.gitlab.com/ee/development/documentation/feature_flags.html#features-that-became-enabled-by-default


### Dashboards

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="product planning" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
  {{< tableau/filters "GROUP_LABEL"="product planning" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/Flakytestissues/FlakyTestIssues" >}}
  {{< tableau/filters "GROUP_NAME"="product planning" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/SlowRSpecTestsIssues/SlowRSpecTestsIssuesDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="product planning" >}}
{{< /tableau >}}

Detailed metrics are available on the [Engineering Metrics page].

Product Planning is part of a test of new MR sub-type labels which are designed to make it easier to understand which top-level type should be applied. You can read more about them in the [Work Type Classification] section of the metrics page.

Note: MR Type may differ from issue type. For example, a ~"maintenance::dependency" change that supports a new ~"feature::enhancement".

[Engineering Metrics page]: https://handbook.gitlab.com/handbook/engineering/metrics/dashboards/
[Work Type Classification]: https://about.gitlab.com/handbook/engineering/metrics/#work-type-classification

### Picking something to work on

The team [Build Board] always shows work in the current
release, with [workflow columns] relevant to implementation. Filtering it by
~backend shows issues for backend engineers to work on.

It's OK to not take the top item if you are not confident you can solve
it, but please post in [#s_plan] if that's the case, as this probably
means the issue should be better specified.

[workflow columns]: /handbook/product-development-flow/
[Build Board]: https://gitlab.com/groups/gitlab-org/-/boards/1569369?label_name[]=devops%3A%3Aplan&label_name[]=group%3A%3Aproduct%20planning&milestone_title=Started
[#s_plan]: https://gitlab.slack.com/archives/s_plan

### Direction Items

Items that are customer-facing deliverables and high impact are labeled with ~"direction". We strive to have these items in production by two days before the release cut-off to give ample time for validation.

#### High Severity Issues

{{% include "includes/engineering/plan/high-severity-items.md" %}}

### Working on unscheduled issues

Everyone at GitLab has the freedom to manage their work as they see fit,
because [we measure results, not hours][results]. Part of this is the
opportunity to work on items that aren't scheduled as part of the
regular monthly release. This is mostly a reiteration of items elsewhere
in the handbook, and it is here to make those explicit:

1. We expect people to be [managers of one][efficiency], and we [use
   GitLab ourselves][collaboration]. If you see something that you think
   is important, you can [request for it to be scheduled], or you can
   [work on a proposal yourself][iteration], as long as you keep your
   other tasks in mind.
1. From time to time, there are events that GitLab team-members can participate
   in, like the [issue bash]. Anyone is welcome
   to participate in these.
1. If you feel like you want to have some specific time set aside, but
   aren't interested in the topics of an existing event, feel free to
   label issues with "For Scheduling" and copy your manager for visibility.

When you pick something to work on, please:

1. Follow the standard workflow and assign it to yourself.
1. Share it in [#s_plan] - if not even more widely (like in #development
   or #backend).

[collaboration]: /handbook/values/#collaboration
[results]: /handbook/values/#results
[efficiency]: /handbook/values/#efficiency
[iteration]: /handbook/values/#iteration

[request for it to be scheduled]: /handbook/engineering/workflow/#requesting-something-to-be-scheduled
[issue bash]: https://about.gitlab.com/community/issue-bash/

## Useful links

- [:Plan:Product Planning] - Apply a milestone filter to see work in the current release
- [#s_plan] in Slack
- [Recorded meetings][youtube]
- [Retrospectives][retros]
- [Group Conversations] (archive; group conversations now happen at a the
  [section level])

[:Plan:Product Planning]: https://gitlab.com/groups/gitlab-org/-/boards/1569369?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=devops%3A%3Aplan&not[label_name][]=group%3A%3Aproject%20management]
[#s_plan]: https://gitlab.slack.com/archives/s_plan
[youtube]: https://www.youtube.com/playlist?list=PL05JrBw4t0KoceqcTneOVmAzhEp6NinY0
[retros]: https://gitlab.com/gl-retrospectives/plan/issues?scope=all&utf8=%E2%9C%93&state=all&label_name[]=retrospective
[Group Conversations]: http://gitlab-org.gitlab.io/group-conversations/plan/
[section level]: /company/team/structure/#organizational-structure
