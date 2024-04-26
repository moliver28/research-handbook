---
title: Secret Detection Group
---

## Secret Detection

The Secret Detection group was split from Static Analysis [on 2024-03-05](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/133169).

The Secret Detection group maintains the following feature categories for customer software repositories:
- [Secret Detection](https://about.gitlab.com/direction/secure/secret-detection/secret-detection/)
- [Code Quality](https://about.gitlab.com/direction/secure/secret-detection/code_quality/)

### Software Delivery

For software delivery, we generally follow a similar process to the [one](/handbook/engineering/development/sec/secure/static-analysis/#software-delivery-in-static-analysis) used by Static Analysis group.

#### Refinement

We have recently experimented with a new refinement process when refining the issues for the [Pre-receive SD beta/.com epic](https://gitlab.com/groups/gitlab-org/-/epics/12729). This process draws a lot of inspiration from other sections/stages but also aligns with the current [Secure Engineering Refinement](/handbook/engineering/development/sec/secure/workflow).

Following a set of [discussions and feedback](https://gitlab.com/gitlab-org/secure/general/-/issues/306) of said process, we have decided to make the improved refinement process a part of our software delivery workflow.

The goal of the process is to:

- Clarify any outstanding questions or concerns.
- Add a proposal or an implementation plan.
- Determine if the issue is the smallest iteration possible, and break it down if not.
- Determine if the issue requires support from other teams.
- Assign a weight to the issue.
- Ensure the issue is labeled correctly.
- Ensure issue is marked as ready to be worked on.

##### Workflow

The refinement process doesn't concern itself with how issues are picked up to be refined. This is assumed to be done in an earlier process that triages issues from the backlog (whether via the [MoSCoW process](/handbook/engineering/development/sec/secure/static-analysis/#moscow-process) or a similar variant). Normally, before issues are refined, a planning issue is created to select which issues are picked up in an upcoming milestone to be refined and delivered.

This workflow can summarized as follows:

1. Triaging: issues from backlog are triaged to determine the must/should/would/could-haves.
2. Planning/Prioritization: issues are selected for a specific milestone.
3. Refinement: issues are refined and prepared to be picked up.

##### Steps

Below is a list of steps followed during the refinement process.

* The refinement process is kicked off when a planning issue is finalized.
* A bot or an automated script assigns a number of issues (e.g. 2-3) randomly to each engineer.
* An engineer is responsible for refining their assigned issues, but could ask for help if needed.
* Engineers would follow a certain [checklist](handbook/engineering/development/sec/secure/secret_detection/#checklist) to determine if an issue is refined and ready to be picked up.
* The refinement process is time-boxed (e.g. one week), after which all issues ready for development is picked up.
* When an engineer completes refining an issue, they pass it on to another engineer (a reviewer) for review.
* The reviewer should follow the guidelines outlined in the checklist as much as possible:
  * If the reviewer agrees with the engineer, the issue is marked as ready for development.
  * If they are in disagreement, they should discuss the reason and find a way forward.
  * If a disagreement cannot be resolved, the issue is brought to next team meeting for discussion.
* Pending issues can continue to be refined, and depending on their status they may or may not be included in the milestone.

##### Checklist

The following checklist is to be copied either in the issue description or posted as a comment in the issue being refined. This is used to clarify the refinement and refinement review progress for all interested stakeholders.

```
**Please copy the list below into the issue you are refining, and check them as you deem appropriate.**

#### Refinement Progress

If a checkbox is not relevant for the issue, please remove or strikethrough it.

- [ ] This issue describes a problem to solve, or a task to complete, and it's confirmed.
- [ ] This issue describes a proposal or an implementation plan that outlines a way to solve the problem or complete the task.
- [ ] This issue requires assistance or support from other groups, and it's indicated in the issue description.
- [ ] This issue could affect application security or performance, and the concern is explained in the issue description.
- [ ] This issue is the smallest iteration possible and doesn't require further break down.
- [ ] This issue has weight set - according to [this list of possible values](https://handbook.gitlab.com/handbook/engineering/development/sec/secure/workflow/#possible-values) - and ~"needs weight" label is removed.
- [ ] This issue has a success criteria defined, and it is outlined in the issue description.
- [ ] This issue is labeled correctly.
- [ ] This issue is reviewed by another team member to confirm proposal/implementation plan and weight.
- [ ] Finally, add ~"workflow::ready for development" label to this issue and unassign yourself.

#### Refinment Review Guidelines

If you're assigned this issue to review its refinement, please follow the guidelines below.

1. Please validate the proposal or the implementation plan described in the issue.
1. Please validate the weight of the issue according to [this list of possible values](https://handbook.gitlab.com/handbook/engineering/development/sec/secure/workflow/#possible-values).
1. If in disagreement, please state your thoughts/reasoning and notify the engineer refining this issue.
1. If the disagreement can't be resolved, please bring this issue to the next team meeting for discussion.
```

##### Issue Assignmet

We plan to use [`triage-ops`](https://gitlab.com/gitlab-org/quality/triage-ops) bot to assign issues to engineers for refinement. More information will follow here on the exact process as we configure the bot to do so.
