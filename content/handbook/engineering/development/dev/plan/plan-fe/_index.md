---
title: Front End Plan Team
---

## Frontend Plan Team

The Frontend Plan team works on the frontend part of GitLab for the [Plan
stage]. Among other things, this means working on GitLab's issue tracker,
[portfolio management features], and [Markdown rendering].

For more details about the vision for this area of the product, see the [Plan
stage] page.

[Plan stage]: /stages-devops-lifecycle/plan/
[Markdown rendering]: https://docs.gitlab.com/ee/user/markdown.html
[portfolio management features]: /solutions/agile-delivery/

## Team Members

{{< team-by-manager-role role="Frontend Engineering Manager(.*)Plan" team="[,&] Plan" >}}

## Stable Counterparts

The following members of other functional teams are our stable counterparts:

{{< stable-counterparts role="[,&] (Plan Stage|Plan:Project Management|Plan:Portfolio Management & Plan:Certify)|Principal(.*)Plan|Security(.*)Plan|Group(.*)Plan" manager-role="Frontend Engineering Manager(.*)Plan" >}}

## Groups

The Plan stage is split into three groups: Project Management, Portfolio
Management and Certify. For the sake of planning, frontend engineers
have specialities within groups. However, due to shifting workloads per group,
frontend engineers on the Plan stage are expected to be able to take on work
outside of their speciality.

| Project Management | Portfolio Management | Certify |
|--------------------|----------------------|---------------|
| Simon Knox | Kushal Pandya | Kushal Pandya |
| Scott Stern | Rajat Jain | Rajat Jain |
| Coung Ngo | Florie Guibert | Florie Guibert |
| Natalia Tepluhina | | |

## Work

You can see how we work as a stage at the [Plan stage page].

Like the [backend team], we use the standard GitLab [engineering workflow]. To
get in touch with the Plan frontend team, it's best to create an issue in the
relevant project (typically [GitLab]) and add the ~"devops::plan" and
~"frontend" labels, along with any other appropriate labels. Then, feel free to
ping the relevant Product Manager and/or Frontend Engineering Manager as listed
above.

For more urgent items, feel free to also share the issue in [#s_plan] on Slack.

[Intern]: /handbook/engineering/development/dev/fe-plan/internship
[Plan stage page]: /handbook/product/categories/#plan-stage
[backend team]: /handbook/engineering/development/dev/plan-project-management/
[engineering workflow]: /handbook/engineering/workflow/
[GitLab]: https://gitlab.com/gitlab-org/gitlab

### Capacity Planning

{{% include "includes/engineering/plan/capacity-planning.md" %}}

### Frontend weighting

We're using a lightweight asynchronous planning model to determine weights of
upcoming work. On the 4th of every month, the Frontend Engineering Manager (FEM)
will create a planning issue for each group. There, a comment will be created
with a short summary of the work needed for every issue that needs a weight
(mostly ~frontend ~"Next up"). The ask is that every frontend engineer within
the group adds an emoji reaction to what they think the weight should be.
Discussion can occur over the next few days, but the idea is that consensus is
reached by the 9th, at which point the FEM will add the weight to the actual
issue. If there are differences in weights, the highest weight will be used.

#### Weighing bugs

{{% include "includes/engineering/plan/weighing-bugs.md" %}}

### Picking something to work on

The Plan FE stage works off of two boards, depending on the group: [Project
Management] and [Product Planning]

When deciding the next issue to take, frontend engineers should prioritize by
the following:

1. First filter by ~"frontend". Here, items in the ~"workflow::ready for
development" column are ready to be picked up. The priority is set top down in
the list.
1. Items in the ~"workflow::planning breakdown" column. This is a prioritized
list of items that may not be fully ready to start development on, but should
be close.
1. Items in the `Open` column. There should not be a point where there are not
issues in the previous steps, but if it happens, feel free to look through the
`Open` column and determine what is needed to move them to a more advanced step.

It's OK to not take the top item if you are not confident you can solve it, but
please add a comment in the issue if that's the case, as this probably means
the issue should be better specified.

When you pick something to work on, please assign the issue to yourself and
add the ~"workflow::In dev" label.

[Project Management]: https://gitlab.com/groups/gitlab-org/-/boards/1285239?label_name[]=group%3A%3Aproject%20management
[Product Planning]: https://gitlab.com/groups/gitlab-org/-/boards/1569369?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=devops%3A%3Aplan&label_name[]=group%3A%3Aproduct%20planning&not[milestone_title]=Backlog

#### High Severity Issues

{{% include "includes/engineering/plan/high-severity-items.md" %}}

### Unknown complexities

By the time something is picked up, it should already have a weight associated
with it. After closer investigation into what is actually involved in
implementing the feature, it's possible to discover that the effort is much more
complex. At this point, engineers are encouraged to update the weight, pinging
the PM of the group so they are able to reprioritize if necessary.

### Code Reviews

Our [Code Review Guidelines] state that we default to assigning reviews to team
members with domain expertise. A domain can be an area of the codebase that a
team is responsible for, so frontend engineers within the Plan stage are
considered domain experts for Issues, Epics, and all other areas of Plan.

When determining who to assign an MR to, this process should be followed:

1. Initial review should be done by a frontend engineer from the Plan stage.
1. Maintainer review should be assigned to a maintainer that has domain expertise,
not limited to the Plan stage. This is because we only have one maintainer
within the team.
1. If a maintainer with domain expertise is not available,
assign to the recommended maintainer from reviewer roulette.

**Exceptions**

- If an MR is not for a Plan feature or backstage item (global frontend work,
assisting another team) review can and should go to an engineer on another team
- If an MR touches code that Plan uses, but that is also used by another team,
one review (either reviewer or maintainer) should be done by the other team. An
example is with changes to notes, where responsibility is shared between
[Create:Source Code] and Plan.

[Code Review Guidelines]: https://docs.gitlab.com/ee/development/code_review.html
[Create:Source Code]: /handbook/engineering/frontend/create/

### Iterations

As a team, we are working towards using week-long iterations. In agile
terminology, this would equate to a week-long sprint. Our week ends during the
Plan Stage weekly meeting (Wednesdays), where we will demo the goals that we
accomplished during the week.

## Useful links

* [Plan frontend board] - this shows work in the current release
* [#s_plan] in Slack
* [Recorded meetings][youtube]
* [Retrospectives][retros]

[Plan frontend board]: https://gitlab.com/groups/gitlab-org/-/boards/654688
[#s_plan]: https://gitlab.slack.com/archives/s_plan
[youtube]: https://www.youtube.com/playlist?list=PLFGfElNsQthaREiE1QwWQtqUv1LYPEuuj
[retros]: https://gitlab.com/gl-retrospectives/plan/issues?scope=all&utf8=%E2%9C%93&state=all&label_name[]=retrospective

