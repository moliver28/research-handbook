---
title: "Create:Code Review FE Team"
description: The Create:Code Review FE team is responsible for all frontend aspects of the product categories that fall under the Code Review group of the Create stage.
---

The Create:Code Review FE team is responsible for all frontend aspects of the product categories that fall under the [Code Review group][group] of the [Create stage][stage] of the [DevOps lifecycle][lifecycle].

[group]: /handbook/product/categories/#code-review-group
[stage]: /handbook/product/categories/#create-stage
[lifecycle]: /handbook/product/categories/#devops-stages

## Team Members

The following people are permanent members of the Create:Code Review FE Team:

{{< team-by-manager-role "Frontend Engineering Manager(.*)Create:Code Review" >}}

## Stable Counterparts

The following members of other functional teams are our stable counterparts:

{{< stable-counterparts role="Create:Code Review$|Technical Writer(.*)Code Review|Director(.*)Create|Principal(.*)Create|Group(.*)Create" manager-role="Frontend Engineering Manager(.*)Create:Code Review"  >}}

## Iteration

We held an Iteration Retrospective in April 2020 in order to review past work and discuss how we could improve iteration for upcoming efforts.

- [Frontend: Iteration Retrospective (Source Code)](https://gitlab.com/gl-retrospectives/create-stage/source-code/-/issues/22)

Some overal conclusions/improvements

- Despite having improved the splitting of Merge Requests, we still tend to keep one issue spawning multiple Merge Requests.
- We'll be more strict about splitting the issues in foreseeable iteration steps upon scheduling/assignment
- We must keep in mind the overhead in review times when splitting up related backstage work. ([more info](https://gitlab.com/gl-retrospectives/create-stage/source-code/-/issues/22#note_342547093))

## Work

See the [work section](/handbook/engineering/development/dev/create/code-review/#work) of the main Code Review page.

## Capacity planning


{{% include "includes/engineering/create/weights-fe.md" %}}

### Weights

{{% include "includes/engineering/create/weights-fe.md" %}}

## Kickoff

On the first week of every milestone, we have a sync-call with every IC in which they take turns at presenting their plan for their Deliverables for the new milestone.

This usually happens at the first Thursday of the milestone (at least 5 days into it) at 3PM UTC.

## Relevant issues

- [Merge Request Architecture Walkthrough](https://gitlab.com/gitlab-org/gitlab/-/issues/291035/designs/gl_mr_architecture_boxes.png) (as of December 2020) — an outline of the current status of the entire Merge Request page Frontend components, including the answers to:
  - Component Name
  - Technology
  - State Management (Technology + shared with others?)
  - Responsible Team
  - Shared with other Team?
  - Other comments
