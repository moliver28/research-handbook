---

title: Fulfillment Purchase Team
description: The Purchase Team of the Fulfillment Sub-department at GitLab
---







## Mission

For more details about the product vision for Fulfillment, see our [Fulfillment](/direction/fulfillment/) page.

The Purchase group manages the [Purchase category](/handbook/product/categories/#purchase-group).

## Team members

<%= department_team(base_department: "Fulfillment:Purchase Team") %>

## Stable Counterparts

The following members of other functional teams are our stable counterparts:

<%= stable_counterparts(role_regexp: /[,&] Fulfillment((?!:)|:Purchase)/, direct_manager_role: 'Fullstack Engineering Manager (Interim), Fulfillment:Purchase') %>

## How we work

### Weekly meeting
The team meets synchronously once per week alternating timezones between EMEA and APAC friendly times. Our counterparts from Design, Sales, Support, Enterprise Apps, and Product Management are encouraged to attend as well. Team members are encouraged to attended the meeting most appropriate for their time zone. Meeting topics include: wins from the past week, problems which are impeding progress in the milestone, and planning and refining of issues. The sync meeting will be scheduled for 45 minutes and start with 15 minutes of social discussion which is unrecorded. Team members are requested to accurately indicate their RSVP status, whether attending or not, in order to provide others with clear information regarding their availability. We strongly encourage everyone to join, even in the absence of a specific topic or agenda, as it offers an opportunity for engaging discussions on social matters.

### Weekly update
The Engineering Manager provides a weekly update on the team progress toward the milestone objectives. This should include the weight closed relative to the weight of the entire milestone. This update is added as a comment to the milestone planning issue prior to the weekly team meeting. In case the Engineering Manager is unavailable to provide the weekly update, an alternate team member will be assigned via the #s_fulfillment Slack channel.

#### Update template

```
### DD.MM X weeks into Milestone

* ~frontend X issues open, Y weights
   * <Please provide only small updates on what issue is being worked on, the addition of any unplanned issues, etc>
* ~backend X issues open, Y weights
   * <Please provide only small updates on what issue is being worked on, the addition of any unplanned issues, etc>
---
* ~frontend X issues closed, Y weights
   * <Please add important updates on what have been closed, honorary mention>
* ~backend X issues closed, Y weights
   * <Please add important updates on what have been closed, honorary mention>

---

**Updates**
   * <Updates which affect the Purchase team, ex- Welcome a new member>
   * <Special shoutout to team member/s for their achievements>
```

### Issue boards

We have two issue boards that we actively work from:

1. [Active Milestone](https://gitlab.com/groups/gitlab-org/-/boards/5019876)
1. [Next Milestone](https://gitlab.com/groups/gitlab-org/-/boards/5078830)

Our active milestone board contains the issues that we are currently working on or have planned to work on in the current milestone. The next milestone board is used to plan the upcoming milestone and contains the issues that have been scheduled for the next milestone or are being considered for it.

At the end of the milestone, all the issues still open on the active milestone board need to be re-assigned to the new milestone and the milestone on the board needs to be updated to the new milestone. The next milestone board's milestone also needs to be updated to the following one, but the issues don't need to be updated, as they should now show up on the active milestone board.

### Milestone planning
It is important for long term planning for the team to accomplish what we agree to at the beginning of the milestone. A significant aspect to completing our planned work is accurately weighting issues. The explanation of weights is specified on the [Fulfillment Sub-department page](https://about.gitlab.com/handbook/engineering/development/fulfillment/#estimation). We further specify, as a baseline, a 5 should roughly take 2 engineering weeks of work to complete. Issues with a weight of 1 should be rare and reserved for cases with no logic changes such as changing the text in a dialog or fixing a comment. A weight of 2 should be used when there are 1 or 2 minor logic changes. Likewise if an issue contains significant unknowns or will span multiple projects and many files, don't hesitate to weight at 8 or higher. This should trigger us to look more closely at breaking the issue into smaller issues, or more closely defining the implementation requirements.

We use the rolling average of the past 3 milestones to determine the total weight of the current milestone. We expect this to increase over time as we weight issues higher and become more familiar with types of work requested.

### Refinement
Issues that require refinement have the `workflow::refinement` label: they should be refined according to the [estimation template](https://about.gitlab.com/handbook/engineering/development/fulfillment/#estimation-template). A single engineer can do the refinement. They can ask other team members for a review or seek input to understand the domain knowledge better when in doubt.

If you see issues that are very similar or dependent on each other's solution, consider having the refinement/solution discussion on its epic or create a sub-epic to house the discussions. You can also create a foundation issue to discuss solutions if the issues need common foundational work to be done. Make sure that both the issues are updated to indicate where the discussions happen.

If you refine an issue suitable for ~onboarding, please make sure that description has all the needed context and detailed explanation.

When assigning weight to issues, it's best to err on caution, especially for issues that require confidential MRs, feature flag releases, etc. which have the tendency to take more effort than originally estimated.

### Focus on Deliverable issues
Issues with the Deliverable label assigned to the current Milestone are considered the most vital to the Milestone success. The focus should be on completing these issues ahead of non-deliverable issues. At 7 business days remaining in the Milestone, evaluation of the status of Deliverable issues should be completed by the Engineering Manager. If completion of one or more Deliverable issues is in jeopardy, the Engineering Manager should evaluate if adding more Engineers to those issues will help ensure their completion before the end of the Milestone. If so, multiple Engineers should be assigned to Deliverable issues.

### Definition of Ready
Objective of these templates is to have a templated approach to defining criteria needed before refinement can start. More specifically: when is problem & solution & design complete.
1. [Feature development use case](https://gitlab.com/gitlab-org/gitlab/-/issues/386055): where we go through full problem/design/solution stages
2. [Bug investigation use case](https://gitlab.com/gitlab-org/fulfillment-meta/-/issues/985): we have discovered a bug and need to figure out the root cause.
3. [Eng driven development use case](https://gitlab.com/gitlab-org/gitlab/-/issues/386056): hen engineering is leading (typically straight forward, simple use cases where engg wrote up the issue, proposal, fix) but engg needs confirmation this solution can be executed upon
