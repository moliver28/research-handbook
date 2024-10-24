---
title: Plan:Product Planning Engineering Team
---

## Plan:Product Planning team

The Plan:Product Planning team works on both the backend and frontend parts of
GitLab's [Product Planning](/handbook/product/categories/#product-planning-group) category in the [Plan stage](/handbook/engineering/development/dev/plan/).

For more details about the vision for this area of the product, see the
[Plan stage](/handbook/engineering/development/dev/plan/) page.

### Team members

{{% team-by-manager-role "Fullstack Engineering Manager(.*)Plan:Product Planning" %}}

### Stable counterparts

{{% stable-counterparts manager-role="Fullstack Engineering Manager(.*)Plan:Product Planning" role="(.*)Plan:Product Planning$|Product Manager(.*)Plan Stage|Security(.*)Plan|Engineering(.*)Plan$|Principal(.*)Plan$|Group(.*)Plan" %}}

### Hiring chart

Check out our [jobs page](https://about.gitlab.com/jobs/) for current openings.

### Team metrics dashboard

We have a [metrics dashboard](https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard) intended to
track against some of the [Development Department KPIs](/handbook/company/kpis/#development-department-kpis), particularly
those around merge request creation and acceptance. From that dashboard, the
following chart shows [MR Rate](/handbook/engineering/performance-indicators/#engineering-mr-rate). Please reference the dashboard section below.

### Application performance dashboard

We have useful dashboards tracking the performance of parts of the application we're responsible for:

- Application dashboards; showing request throughput, latency, SQL query counts, cache hits, Sidekiq jobs for Web and API endpoints, git usage and error budgets. Also links to other useful resources in Kibana.
  - [Product Planning]
- The [Sitespeed Dashboard](https://dashboards.gitlab.net/d/product-plan/product-performance-plan?orgId=1); showing the results of ongoing synthetic tests against representative product pages. Useful for identifying changes in page load time (TTFB), LCP, etc.

## OKRs

Beginning FY24, we have moved away from Ally.io and have been using GitLab to track OKRs. Please note that the links below are only accessible to GitLab team members.

### Active Quarter OKRs

The current quarter (FY25-Q3) OKRs are visible [here](https://gitlab.com/gitlab-com/gitlab-OKRs/-/issues/?sort=title_asc&state=opened&label_name%5B%5D=devops%3A%3Aplan&label_name%5B%5D=group%3A%3Aproduct%20planning&first_page_size=100).

### Previous Quarter OKRs

All the previous quarter OKRs are available [here](https://gitlab.com/gitlab-com/gitlab-OKRs/-/issues/?sort=title_asc&state=closed&label_name%5B%5D=devops%3A%3Aplan&label_name%5B%5D=group%3A%3Aproduct%20planning&first_page_size=100).

## Work

See the [Plan stage page](/handbook/product/categories/#plan-stage) and the [Plan:Project Management backend team page](/handbook/engineering/development/dev/plan/project-management/).

### Milestone Planning

The week after a release of current milestone, planning issue for next milestone is created by automation and is available [here](https://gitlab.com/gitlab-org/plan-stage/product/-/issues/?sort=title_asc&state=opened&label_name%5B%5D=group%3A%3Aproduct%20planning&first_page_size=100).
Once the issue is created, Product Manager fills out initial information (i.e. broader theme for the milestone, product priorities, deliverable areas, etc.) within the issue description and refines the [Milestone Planning board](https://gitlab.com/gitlab-org/gitlab/-/boards/7695201?not[label_name][]=product%20work&label_name[]=group%3A%3Aproduct%20planning&milestone_title=Started).

Once the milestone candidates are available, Engineering Kick Off Call is scheduled. This call happens once a month on the day after the release is cut for current milestone (i.e. every second Friday of the month). In this call, team members review the proposed list of candidates and slippage from previous milestone that they're already assigned to, and the Milestone Planning board for issues labelled `workflow::planning breakdown` to identify any missing information, blocking dependencies, and ensuring if issues are indeed ready for development. If an issue in the list already has expert/DRI available, then they are required to update the issue to include additional information
about what needs to be done, and possible hints around approach that an engineer can take while working on the issue. At the end of the meeting, following outcome is expected;

- List of issues we want to work on in the milestone
- DRIs for those issues who can update it with implementation details
  - Once issue is updated, workflow label is updated to `workflow::ready for development`
- Team member bandwidth and availability for the milestone

**Estimation Template**

The following is a guiding mental framework for engineers to consider when contributing to estimates on issues.

```markdown
### Refinement / Weighting

<!--
Ready for development means replying yes to the following questions:

- Is this issue sufficiently small enough? If not, break it into smaller issues
- Is it assigned to the correct domain (e.g. frontend, backend)? If not, break it into two issues for the respective domains
– Is the issue clear and easy to understand? If not, try asking further clarification questions and update the description once they are received

If more than 2 MRs are needed, consider adding a table like the following to the description (e.g. under `Implementation plan`).

| Description | MR |
|-|-|
|||

It will help track the status.
-->

- [ ] Ready for development
- [ ] Weight is assigned
- [ ] Number of MRs listed
- [ ] Needs testing considerations
- [ ] Needs documentation updates

**Reasoning:**

<!--
Add some initial thoughts on how you might break down this issue. A bulleted list is fine.

This will likely require the code changes similar to the following:

- replace the hex driver with a sonic screwdriver
- rewrite backups to magnetic tape
- send up semaphore flags to warn others

Links to previous examples. Discussions on prior art. Notice examples of the simplicity/complexity in the proposed designs.
-->
```

### Capacity Planning

#### Estimating effort

When estimating the effort involved in upcoming work, we use the same approach and numerical scale as other groups in the Plan stage.

{{% include "includes/engineering/plan/estimating-effort.md" %}}

#### Weighing bugs

{{% include "includes/engineering/plan/weighing-bugs.md" %}}

#### Consider a Spike and/or a Design Document

Work that arrives in ~"workflow::ready for development" that is out of scope
or ill-defined should be
[returned to ~"workflow::planning breakdown" for further refinement](/handbook/product-development-flow/#build-phase-2-develop--test).
To avoid the disruption this introduces we try to reduce the number of times
it happens by planning more carefully. While it's not always possible, we aim
to identify complexity before the build phase, such as by assigning an engineering
[DRI](/handbook/people-group/directly-responsible-individuals/) during the design and validation phase.

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
functionally complete, merged and verified but frontend, or other work is ongoing.

#### Health Status

To help with visibility of whether or not an issue can be delivered in a milestone, the team uses health status to communicate quickly.
At the beginning of a milestone, all issues relating to the primary deliverable are assigned the "On track" status. Throughout the milestone, feature DRIs are responsible for updating issues statuses when necessary. If the health status is set to a status that is not "On Track", feature DRIs should leave a comment with additional details about why and if there's a way others on the team can help.
Using health status allows stakeholders, such as product and engineering managers, designers, and other engineers, to get a quick and easy overview of what is unlikely to make it into the current milestone.

#### Documentation

Documentation should accompany code for any [new or changed functionality](/handbook/product/ux/technical-writing/workflow/#for-a-product-change) as per our
[definition of done](https://docs.gitlab.com/ee/development/contributing/merge_request_workflow.html#definition-of-done). This can become tricky when collaborating on a feature that is
behind a feature flag.

Since all feature flags start as disabled by default, we should aim to document the
feature as soon as it's safe for testing by users using the [feature flag template](https://docs.gitlab.com/ee/development/documentation/feature_flags.html#features-disabled-by-default).
Don't wait until a feature is performant and stable to document it, instead do so once
it's secure and won't leave data in a corrupt, interim state.

Try to include docs with the first MR to introduce usable functionality. If this is
an API addition with no UI, document that and allow the FE engineers to update it as
work proceeds. As the feature flag rollout proceeds, the [documentation should be updated](https://docs.gitlab.com/ee/development/documentation/feature_flags.html#features-that-became-enabled-by-default).

This avoids the rush to provide documentation that often accompanies the release cutoff.

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

Detailed metrics are available on the [Engineering Metrics page](/handbook/product/groups/product-analysis/engineering/dashboards/dashboards/).

Product Planning is part of a test of new MR sub-type labels which are designed to make it easier to understand which top-level type should be applied. You can read more about them in the [Work Type Classification](/handbook/product/groups/product-analysis/engineering/dashboards/#work-type-classification) section of the metrics page.

Note: MR Type may differ from issue type. For example, a ~"maintenance::dependency" change that supports a new ~"feature::enhancement".

### Picking something to work on

The team [Build Board](https://gitlab.com/groups/gitlab-org/-/boards/1569369?label_name[]=devops%3A%3Aplan&label_name[]=group%3A%3Aproduct%20planning&milestone_title=Started) always shows work in the current
release, with [workflow columns](/handbook/product-development-flow/) relevant to implementation. Filtering it by
~backend shows issues for backend engineers to work on.

It's OK to not take the top item if you are not confident you can solve
it, but please post in [#s_plan](https://gitlab.slack.com/archives/s_plan) if that's the case, as this probably
means the issue should be better specified.

### Direction Items

Items that are customer-facing deliverables and high impact are labeled with ~"direction". We strive to have these items in production by two days before the release cut-off to give ample time for validation.

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
1. From time to time, there are events that GitLab team-members can participate
   in, like the [issue bash](https://about.gitlab.com/community/issue-bash/). Anyone is welcome
   to participate in these.
1. If you feel like you want to have some specific time set aside, but
   aren't interested in the topics of an existing event, feel free to
   label issues with "For Scheduling" and copy your manager for visibility.

When you pick something to work on, please:

1. Follow the standard workflow and assign it to yourself.
1. Share it in [#s_plan](https://gitlab.slack.com/archives/s_plan) - if not even more widely (like in [#development](https://gitlab.slack.com/archives/development)
   or [#backend](https://gitlab.slack.com/archives/backend)).

## Useful links

- [:Plan:Product Planning](https://gitlab.com/groups/gitlab-org/-/boards/1569369?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=devops%3A%3Aplan&not[label_name][]=group%3A%3Aproject%20management]) - Apply a milestone filter to see work in the current release
- [#s_plan](https://gitlab.slack.com/archives/s_plan) in Slack
- [Recorded meetings](https://www.youtube.com/playlist?list=PL05JrBw4t0KoceqcTneOVmAzhEp6NinY0)
- [Retrospectives](https://gitlab.com/gl-retrospectives/plan/issues?scope=all&utf8=%E2%9C%93&state=all&label_name[]=retrospective)
- [Group Conversations](http://gitlab-org.gitlab.io/group-conversations/plan/) (archive; group conversations now happen at a the
  [section level](/handbook/company/team/structure/#organizational-structure))
