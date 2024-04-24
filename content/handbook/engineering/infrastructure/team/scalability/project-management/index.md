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

### Project Ownership

Each project has an owner who is responsible for delivering the project. 

The owner needs to:
1. Update the status block in the epic description each week.
1. Work with others to move project issues through the boards.

### Project Structure

The epic for the project must have the following items:

1. **Background**, including a problem statement, to provide context for people looking to understand the project.
1. **Exit criteria** for the specific goals of the project.
    1. These are created as issues with the `exit criterion` label in the epic and are linked in the description.
    1. We create these at the start of the project to allow us to keep focused on our goal, and use [blocking issues](https://docs.gitlab.com/ee/user/project/issues/related_issues.html) to indicate the state of each exit criterion.
1. **Status yyyy-mm-dd** should be the final heading in the description.
    1. This enables others who are interested in the epic to see the latest status without having to read through all comments or issues attached to the epic.
    1. This heading is used to auto-generate the status information on the top-level epic.
    1. If the epic has no child-epics and a mermaid block is added, [this script](https://gitlab.com/gitlab-com/gl-infra/epic-issue-summaries/-/blob/master/epic_issue_relationships.rb) that runs on a pipeline will automatically generate and include an issue relationship diagram in this section. An example can be seem [in this epic](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/447).
1. **Start date** is set to the expected start date, and updated to be the actual start date when the project begins.
1. **Due date** is set to be the expected end date.
    1. This should be seen as a target, and this target is re-evaluated every few weeks while the project is in progress. The date that a project actually ended is taken from the date that the epic was closed.
1. DRI and Participants who are contributing to the project.

### Project Workflow

[Workflow labels](https://handbook.gitlab.com/handbook/engineering/infrastructure/platforms/project-management/#workflow-labels) for issues also apply to epics. 

#### Preparation

In this stage, projects are rough ideas that are formed into proposals for discussion. They are developed into full projects that are then ready to be picked up by the team. We keep track of these projects in our roadmaps. 

- [Roadmap for Practices](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/1202)
- [Roadmap for Observability](xxx)

A Roadmap epic has three sections: Now, Next and Later. These list out what the team is working on, what they will do next, and what they might address at a later date. 

A Roadmap epic can have sub-epics that are also roadmaps. For example, the Practices team will have a sub-epic for Redis and the Observability team will have a sub-epic for Capacity Planning. These help to keep the narrative for each category in a single place. We will also implement automation for the flow of information between levels. 

The roadmap epics should have the workflow label of `workflow-infra::Proposal` so that it shows in the correct section of the top-level epic for the Grand Review. 

Any epic that is being prepared should be a child of a roadmap epic. These epics should have the workflow labels of either `workflow-infra::Triage`, `workflow-infra::Proposal` or `workflow-infra::Ready`.

The EM and the PM should work together to keep the Roadmap epics up to date with updates expected monthly. 

#### In Progress

When the EM and PM agree, and there is space for a new project to begin, the chosen project should be removed from the Roadmap issue and associated directly with the [Scalability top-level epic](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/148). 

The start and target date should be set, the DRI assigned, and the participants listed. The workflow label of `workflow-infra::In Progress` is applied and the project begins.

#### Completed

When the project is complete, follow the instructions on the [SaaS Plaforms project management page](https://handbook.gitlab.com/handbook/engineering/infrastructure/platforms/project-management/#when-a-project-is-finished). 

When the epic is closed, it can remain associated to the top-level epic. When we have too many epics associated, or when the end-of-year summary is produced, these epics are moved to the "Completed in Year xxx" epics, of which [this](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/1266) is an example. 

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
| ![Triage](img/label-triage.png)	<br/>![Proposal](img/label-proposal.png) <br/>![Ready](img/label-ready.png) | ![Ready](img/label-ready.png) <br/>![In Progress](img/label-in_progress.png) <br/>![Under Review](img/label-under_review.png) <br/>![Verify](img/label-verify.png) <br/>![Done](img/label-done.png)|

## Labels

The Scalability teams routinely uses the following set of labels:

1. The group label, `group::Scalability`.
2. The team labels, `team::Scalability-Observability` and `team::Scalability-Practices`
3. Scoped `workflow-infra` labels.
5. Scoped `Service` labels.

The `group::Scalability` label is used in order to allow for easier filtering of issues applicable to the team that have group level labels applied.