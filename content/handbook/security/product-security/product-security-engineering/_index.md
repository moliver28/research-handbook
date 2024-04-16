---
title: "Product Security Engineering"
description: "The Product Security Engineering team's mission is to create proactive and preventative controls which will scale with the organization and result in improved product security."
---

## Product Security Engineering Mission

As part of the Product Security department, and sibling to the Application Security sub-department, our mission is to:

- Enhance security along the software development lifecycle by creating ["paved roads"](https://netflixtechblog.com/scaling-appsec-at-netflix-part-2-c9e0f1488bc5)
- Contribute product-first code that enhances the security of GitLab's software assets
- Reduce the manual burden of the Application Security team by building automation and product improvements

### What we do

Product Security Engineering will take potential work from several areas:

- Existing security enhancement issues in GitLab
- Automation requirements from AppSec
- Previously uncaptured efforts identified by Product Security Engineering as being high impact security improvement work
- Product needs identified by other teams (ex SIRT, Trust & Safety, Security leadership)
- The Key risks/areas ("Security Focus" areas)

## Contacting us

To reach the Product Security Engineering team, team members can:

- Ask in `#sec-product-security-engineering` on Slack
- Mention `@gitlab-com/gl-security/product-security-engineering` on GitLab
- Submit an issue in the [Product Security Engineering Team repository](https://gitlab.com/gitlab-com/gl-security/product-security-engineering/product-security-engineering-team/-/issues)

## Workflow

### Backlog building / requests

The `~ProdSecEng Candidate` label identifies a particular issue as potentially being work that the Product Security Engineering team can take on. This label can be added by anyone, the issue will be reviewed and potentially pulled into the backlog by the Product Security Engineering team members.

Depending on the nature of the work it is added either to:

- [Internal Issue Board (gitlab-com)](https://gitlab.com/groups/gitlab-com/-/boards/7098644) (AppSec Automation needs)
- [Product Issue Board (gitlab-org)](https://gitlab.com/groups/gitlab-org/-/boards/7098625) (Product Security enhancements, paved roads, etc)

When we take on work:

1. Add the `~"team::Product Security Engineering"` label
1. For internal issues: ensure it meets the criteria defined in [Automation Request template](https://gitlab.com/gitlab-com/gl-security/product-security-engineering/product-security-engineering-team/-/blob/main/.gitlab/issue_templates/automation_request.md) for automation work, or
1. For product issues:
    1. Identify the relevant PM/EM are based on `group::` labels. If there are no `group::` labels, make a best effort to figure out what group it would be relevant to.
    1. Ping the group's PM/EMs. Say that we're working on this issue, do your best to align with any existing efforts, and highlight that after release it will belong to their team (similar to a community contribution).
    1. If we can't figure it out an owner, don't ping anybody.

### Removing work items from the backlog

If at any point during the refinement process it is determined that something is not work the Product Security Engineering team will take on, a member of the Product Security Engineering team will:

- Remove the `~"team::Product Security Engineering"` or `~ProdSecEng Candidate` label
- Make a comment explaining the reasoning as to why the Product Security Engineering team has decided not to commit to this work
- Make a best-effort to `@-mention` the appropriate Engineering Manager, Product Manager, or teams and apply the relevant group labels
- Consider applying the `~Seeking community contributions` label, if the issue is public and a potential fit for a community contribution

### Refinement, Design, and Build

Like [Single Engineer groups](/handbook/engineering/incubation/), each Product Security Engineer will *"encompass all of product development (product management, engineering, design, and quality) at the smallest scale. They are free to learn from, and collaborate with, those larger departments at GitLab but not at the expense of slowing down unnecessarily".*

- Our build boards are organized into workflow columns
- We use the labels, outcomes, and activities described [Product Development Flow](/handbook/product-development-flow/), but have the flexibility to skip the process where it's not needed
- All Product Security Engineering team members can contribute to validation, refinement, and solution design
- All Product Security Engineering team members can contribute to the prioritization, but the Security Engineering Manager is DRI
- New projects should follow the ["Creating a new project"](/handbook/engineering/gitlab-repositories/#creating-a-new-project) engineering guidance
- Unless the effort is AppSec automation, the workflow ends by handing over the feature to a Product team

#### Step-by-step refinement process

Below is a step-by-step process for team members to walk through when refining backlog issues. We try our best to adhere to [existing GitLab development team standards](https://handbook.gitlab.com/handbook/product-development-flow/), so that the work can be picked up by anyone.

1. Choose an issue to refine
    1. Unrefined issues are labeled `~workflow::validation backlog` (or perhaps have no `~workflow::` label)
    1. You may also consider refining an issue labeled `~ProdSecEng Candidate`
1. Get an understanding of what the issue is trying to accomplish
    1. You may need to ask questions of the person who created the issue or the relevant teams
    1. Ensure there is a clear definition of done for this particular set of work
    1. Consider breaking the issue down into separate pieces or, if needed, making an epic
1. Add additional details to the appropriate sections such that someone can easily understand the goals and requirements
1. Investigate what an ideal solution might look like and add potential solution information to that issue
    1. Consider timeboxing this effort
    1. If needed, consider applying the `~workflow::solution validation` label and engaging with the relevant product, engineering, or security teams to determine if the proposed solution addresses the requirements
1. Add a [weight](https://handbook.gitlab.com/handbook/security/product-security/product-security-engineering/#weights) based on how much effort this will take to accomplish
1. Add the `~workflow::ready for development` label to indicate that the issue has been refined

### Weights

We use a lightweight system of issue weighting with the knowledge that [things take longer than you think].
It's OK if an issue takes longer than the weight indicates. The weights are intended to be used in aggregate, and what takes one person a day might take another person a week, depending on their level of background knowledge about the issue. That's explicitly OK and expected.

These weights we use are:

| Weight | Meaning |
| --- | --- |
| 1 | Trivial, does not need any testing |
| 2 | Small, needs some testing but nothing involved |
| 3 | Medium, will take some time and collaboration |
| 4 | Substantial, will take significant time and collaboration to finish |
| 5 | Large, will take a major portion of the milestone to finish |

Anything larger than 5 should be broken down if possible.

[things take longer than you think]: https://erikbern.com/2019/04/15/why-software-projects-take-longer-than-you-think-a-statistical-model.html

### Choosing what to work on

Product Security Engineering should always have at least one AppSec-related issue in flight. This rule's intention is to make sure we achieve our mission of reducing AppSec's manual work burden.

If a Product Security Engineer completes all their work in a Milestone, they should take an item from the top of the backlog and assign themselves to it. If they need to stop working on something they should unassign themselves, @ mention the team, and apply the correct workflow label (e.g. `~workflow::blocked`).

### Merge Request Reviews

When contributing to a project that is owned or maintained by another team or an official GitLab asset, we follow that project's established review conventions, rules, and requirements.

When contributing to a project owned and primarily maintained by Product Security Engineering:

- We default to asking for other Product Security Engineering team members to review our merge requests
  - We strive to review eachother's contributions in order to encourage collaboration, facilitate knowledge sharing, and reduce silos
  - We must acknowledge that we are a small team and that sometimes a thorough review isn't going to happen in a timely manner, impacting velocity
  - We evaluate the tradeoff between knowledge sharing and velocity on a case-by-case basis, with each team member empowered to make decisions on foregoing a review
- We can skip a formal review if something is blocking, time-sensitive, and/or resolving an urgent high-impact need
- We try to pick up issues in tooling other team members have written

### Project namespaces

The Product Security Engineering team defaults to using the namespaces of the stakeholder that we're performing the work for:

- For contributions to GitLab assets, we contribute to the relevant repositories where other work is performed
- For AppSec related work, we use the [AppSec tooling namespace](https://gitlab.com/gitlab-com/gl-security/appsec/tooling) unless there is a compelling reason not to
- For our team's repositories, we use the [Product Security Engineering tooling namespace](https://gitlab.com/gitlab-com/gl-security/product-security-engineering/tooling)

## Milestone Planning

The Product Security Engineering team plans its work on a cadence based around [GitLab Product Milestones](https://handbook.gitlab.com/handbook/product/milestones/). This section describes the planning process that we use to determine what work will be completed for each Milestone.

### Milestone Planning Issue

On the 1st of each month, a [Milestone Planning issue](https://gitlab.com/gitlab-com/gl-security/product-security-engineering/product-security-engineering-team/-/issues/?label_name[]=Milestone Planning) is created in the Product Security Engineering team repository. The purpose of this issue is to:

- Identify potential work to perform
- Identify refinement gaps and determine how to address them
- Determine what work we're committing to for the upcoming Milestone
- Set and communicate priority for the work we've decided to take on

This issue is the single source of truth for all planning related discussions and decisions related to the upcoming Milestone.

### Milestone Planning Process

1. On the first of the month, an issue will be created using [the Milestone Planning issue template](https://gitlab.com/gitlab-com/gl-security/product-security-engineering/product-security-engineering-team/-/blob/main/.gitlab/issue_templates/milestone_planning.md?ref_type=heads)
1. The Product Security Engineering manager will be responsible for completing the checklist items in the Planning Checklist section of the Milestone Planning issue
1. Product Security Engineering team members will add any work being carried over from the previous Milestone into the Milestone Work table
1. The Product Security Engineering team will add potential work items to the Parking Lot section, with a brief explanation of why it would be good to include in the Milestone
    1. Team members can add discussion threads to discuss potential work to pull into the Milestone
    1. Both individual team members and the Product Security Engineering manager can add items to this list
1. The Product Security Engineering team will work together to add new items to the Milestone Work table
    1. Each item being added must be refined before it can be formally committed to
    1. Once we have refined and committed to the work, the relevant issue needs to be updated with the Milestone
1. The Milestone Planning issue should be finalized at least 3 days before the Milestone Start Date
    1. The Product Security Manager will use threads in the Milestone Planning issue to work with each Product Security Engineering team member to finalize their workload
    1. Once finalized, the Planning Issue should be closed

### Milestone Planning responsibilities

Product Security Engineering team members are responsible for:

- Evaluating and communicating their capacity for the Milestone (based on PTO and other factors)
- Adding work that is being carried over into the Milestone Work table
- Adding potential work items to the Parking Lot and being involved in discussions around what work we should pull into the Milestone
- Collaborating with the Product Security Engineering manager to finalize the set of work being committed to for the Milestone

The Product Security Engineering manager is responsible for:

- Creating, updating, and maintaining the Milestone Planning issue
- Collaborating with Product Security Engineering team members to discuss potential work, identify refinement gaps, and assemble the Milestone Work table
- Coordinating the finalization of the Milestone Planning issue

## References

This new team is still in the formation process. For more context, team members can refer to these internal links:

- [Our transition issues in `gitlab-com/gl-security/product-security-engineering/product-security-engineering-team/`](https://gitlab.com/groups/gitlab-com/gl-security/-/issues/?sort=created_date&state=opened&label_name%5B%5D=AppSec%3A%3ATransition&first_page_size=20)
- [The announcement Google Doc](https://docs.google.com/document/d/19NO6S02fMF3FZWkrptpXEFp6x2g6L9fro4qYUuITOsw/edit)
