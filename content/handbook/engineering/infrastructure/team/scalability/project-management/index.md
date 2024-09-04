---
title: "Scalability Group Project Management"
---

## Project Management

The majority of our [project management process is described at the Platforms level](/handbook/engineering/infrastructure/platforms/project-management/)  and is shared between all SaaS Platform teams.
Please read this first.

This page describes the additions to the process described on the Platforms page.

The single source of truth for all work is [Scaling GitLab SaaS Platforms epic](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/148).
We often refer to this as our top-level epic.

Epics that are added as children to the top-level epic are used to describe projects that the team undertakes.

Project status is maintained in the description of the top-level epic so that it is visible at a glance. This is auto-generated using [the epic issues summary project](https://gitlab.com/gitlab-com/gl-infra/epic-issue-summaries).
You can watch a [short demo of this process](https://youtu.be/6Wb1f-c1_og) to see how to use status labels on the epics to make use of this automation.

## Project Ownership

Each project has an owner who is responsible for delivering the project.

The owner needs to:

1. Update the status block in the epic description each week.
1. Work with others to move project issues through the boards.

## Project Workflow

[Workflow labels](/handbook/engineering/infrastructure/platforms/project-management/#workflow-labels) for issues also apply to epics.

### Preparation

In this stage, projects are rough ideas on the Opportunity Backlog, that are formed into proposals for discussion on the Roadmap. They are developed into full projects that are then ready to be picked up by the team. We keep track of these projects in our roadmaps.

#### Opportunity Backlog

- ![Triage](img/label-triage.png)

When we have ideas for projects but we aren't certain that they are the right thing to do, we use the Opportunity Backlog.

There is one Opportunity Backlog epic per roadmap.

Ideas are documented in issues or epics and attached to the relevant Opportunity Backlog epic. These issues and epics can have very little detail and have the `workflow-infra::Triage` label.

The Product Manager and Engineering Managers regularly review the Opportunity Backlog. In a review session, they will note on the issue or epic if:

- An idea should be built into a proposal (the EM will then work with an Engineer to build a proposal). The engineers assigns themselves while working out the proposal and when done applies ~"workflow-infra::Proposal".
- An idea was considered but is not high enough priority to act on at this time. The issue remains labeled ~workflow-infra::Triage.
- An idea is not relevant and the issue will be redirected to another team or closed

#### Roadmaps

- ![Proposals](img/label-proposal.png)
- ![Ready](img/label-ready.png)
- ![In Progress](img/label-in_progress.png)

The EM and PM manage these roadmaps together. The PM ensures that the Roadmap reflects the priority of work required from this team. The EM ensures that there is a backlog of work ready for their team to pick up (See Ready For Development below).

- [Roadmap for Practices](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/1202)
- [Roadmap for Observability](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/1295)

The roadmap epics should have the workflow label of `workflow-infra::Proposal` so that it shows in the correct section of the top-level epic for the Grand Review.

Any project that is being prepared should be a child of a roadmap epic. These epics should have the workflow labels of either `workflow-infra::Triage`, `workflow-infra::Proposal` or `workflow-infra::Ready`.

A Roadmap epic has three sections: Now, Next and Later. These list, in priority order, what the team is working on, what they will do next, and what they might address at a later date.

**Now**

- ![In Progress](img/label-in_progress.png)

For the 'Now' section, the common pattern is to link to our [Scalability top-level epic](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/148) so we have a consistent SSoT for the work in progress.

Projects in this section are in progress.

**Next**

- ![Ready](img/label-ready.png)

The 'Next' section contains projects that are the highest priority projects on the roadmap and are ready for development.

During review, the Engineering Manager or Product Manager select the highest priority projects to be added to this list per roadmap.

**Later**

- ![Proposals](img/label-proposal.png)
- ![Ready](img/label-ready.png)

This section contains projects that are either ready for development or still proposals.

During review, the Engineering Manager or Product Manager will indicate if more information is required to accept a proposal.

A Roadmap epic can have sub-epics that are also roadmaps. For example, the Practices team will have a sub-epic for Redis and the Observability team will have a sub-epic for Capacity Planning. These help to keep the narrative for each category in a single place. We will also implement automation for the flow of information between levels.

### Proposal

We want to strike a balance between having a plan and over-planning.

The purpose of the Proposal state is to answer questions to clarify the goal of the project and broadly define the work required to achieve the goal.

When preparing a proposal, confirm with your Engineering Manager as to how much effort should be applied to this proposal. The Engineering Manager will be able to provide more context as to the current level of detail required.

### Ready for Development

Epics that are in the workflow state of proposal will be reviewed by the team to see if they can be advanced to ready for development.
The Engineering Manager asks an Engineer to review and decide whether more detail needs to be worked out upfront or we can advance the epic into ready for development.

For an epic to be ready, the following information must be present on the epic:

1. DRI (only required when in 'Next' section)
2. Participants (only required when in 'Next' section)
3. Context - why are we working on this (problem, background)
4. Goals or Impact - what do we expect this project to accomplish
5. [Dependencies and Stakeholders](/handbook/people-group/directly-responsible-individuals/#dri-consulted-informed-dci) - who is relying on this work, who should be informed, who should be consulted
6. Phases of Delivery
7. Project Management Arrangements - expectations of the DRI, EM and Participants, and specific status reporting requirements, if sub-epics or milestones are to be used
8. Status block - should be the final heading in the description with the format `### Status yyyy-mm-dd`.
    1. This enables others who are interested in the epic to see the latest status without having to read through all comments or issues attached to the epic.
    1. This heading is used to auto-generate the status information on the top-level epic.
    1. If the epic has no child-epics and a mermaid block is added, [this script](https://gitlab.com/gitlab-com/gl-infra/epic-issue-summaries/-/blob/master/epic_issue_relationships.rb) that runs on a pipeline will automatically generate and include an issue relationship diagram in this section. An example can be seem [in this epic](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/447).
9. Start date - set to the expected start date, and updated to be the actual start date when the project is started.
10. End date - set to the expected end date. This should be seen as a target, and this target is re-evaluated every few weeks while the project is in progress. The date that a project actually ended is taken from the date that the epic was closed.

Other items that can be included are:

1. **Exit criteria** for the specific goals of the project.
    1. These are created as issues with the `exit criterion` label in the epic and are linked in the description.
    1. We create these at the start of the project to allow us to keep focused on our goal, and use [blocking issues](https://docs.gitlab.com/ee/user/project/issues/related_issues.html) to indicate the state of each exit criterion.

This template may be used for epics:

```text
## DRI

## Participants

## OKR (optional)

## Context

## Goals

## Dependencies and Stakeholders

These teams should be consulted for this project:

These teams should be informed about this project:

## Phases of Delivery

## Exit Criteria (optional)

## Project Management information (optional)

## Status yyyy-mm-dd

/labels ~"group::scalability"
```

#### Large Projects

Large projects should be broken down into smaller deliverables.

It is at the discretion of the EM and DRI to choose between the sub-epic and the milestone method for managing large projects.

### In Progress

When the EM and PM agree, and there is space for a new project to begin, the chosen project should be removed from the Roadmap issue and associated directly with the [Scalability top-level epic](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/148).

The start and target date should be set, the DRI assigned, and the participants listed. The workflow label of `workflow-infra::In Progress` is applied, the start date and target date are set, and the project begins.

### Completed

When the project is complete, follow the instructions on the [SaaS Plaforms project management page](/handbook/engineering/infrastructure/platforms/project-management/#when-a-project-is-finished).

When the epic is closed, it can remain associated to the top-level epic. When we have too many epics associated, or when the end-of-year summary is produced, these epics are moved to the "Completed in Year xxx" epics, of which [this](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/1266) is an example.

## Non-Project Work

There are times when the Scalability teams are working on smaller issues that do not make up a project.

Always consider if these smaller issues should be batched to demonstrate progress on a particular part of the system. It is OK to have epics that are lower priority and longer running as a way of grouping this work together.

## Issue boards

The Scalability group [issue boards](https://gitlab.com/gitlab-com/gl-infra/scalability/-/boards/) track
the progress of ongoing work.

On the **planning board**, the goal is to get issues into a state where we have enough information to build the issue.
However, not all issues that are `workflow-infra::Ready` to be built should be scheduled for development right away. Some
issues may be too big, or might not be as important as others. This means not all issues that are `workflow-infra::Ready` on the
planning board will move to the build board immediately.

| **Planning** | **Building**|
|--------------|-------------|
| [Planning Board](https://gitlab.com/gitlab-com/gl-infra/scalability/-/boards/1697168) | [Build Board](https://gitlab.com/gitlab-com/gl-infra/scalability/-/boards/1697160) |
| Issues where we are investigating the work to be done. | Issues that will be built next, or are actively in development. |
| ![Triage](img/label-triage.png)    <br/>![Proposal](img/label-proposal.png) <br/>![Ready](img/label-ready.png) | ![Ready](img/label-ready.png) <br/>![In Progress](img/label-in_progress.png) <br/>![Under Review](img/label-under_review.png) <br/>![Verify](img/label-verify.png) <br/>![Done](img/label-done.png)|

## Labels

The Scalability teams routinely uses the following set of labels:

1. The group label, `group::Scalability`.
2. The team labels, `team::Scalability-Observability` and `team::Scalability-Practices`
3. Scoped `workflow-infra` labels.
4. Scoped `Service` labels.

The `group::Scalability` label is used in order to allow for easier filtering of issues applicable to the team that have group level labels applied.
