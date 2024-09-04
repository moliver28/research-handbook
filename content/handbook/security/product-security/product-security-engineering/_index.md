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
- Mention `@gitlab-com/gl-security/product-security/product-security-engineering` on GitLab
- Submit an issue in the [Product Security Engineering Team repository](https://gitlab.com/gitlab-com/gl-security/product-security/product-security-engineering/product-security-engineering-team/-/issues)

## Runbooks

Please see our [Runbooks page](runbooks/).

## Workflow

### Backlog building / requests

The `~ProdSecEng Candidate` label identifies a particular issue as potentially being work that the Product Security Engineering team can take on. This label can be added by anyone, the issue will be reviewed and potentially pulled into the backlog by the Product Security Engineering team members.

Depending on the nature of the work it is added either to:

- [Internal Issue Board (gitlab-com)](https://gitlab.com/groups/gitlab-com/-/boards/7098644) (AppSec Automation needs)
- [Product Issue Board (gitlab-org)](https://gitlab.com/groups/gitlab-org/-/boards/7098625) (Product Security enhancements, paved roads, etc)

When we take on work:

1. Add the `~"team::Product Security Engineering"` label
1. For internal issues: ensure it meets the criteria defined in [Automation Request template](https://gitlab.com/gitlab-com/gl-security/product-security/product-security-engineering/product-security-engineering-team/-/blob/main/.gitlab/issue_templates/automation_request.md) for automation work, or
1. For product issues:
    1. Identify the relevant PM/EM are based on `group::` labels. If there are no `group::` labels, make a best effort to figure out what group it would be relevant to.
    1. Ping the group's PM/EMs. Say that we're working on this issue, do your best to align with any existing efforts, and highlight that after release it will belong to their team (similar to a community contribution).
    1. If we can't figure it out an owner, don't ping anybody.
1. Apply the appropriate `ProdSecEngMetric::` label based on the definitions listed in the [Metrics labels table](/handbook/security/product-security/product-security-engineering/metrics/)
    1. If unsure what the appropriate label is at this point, add the `~ProdSecEngMetric::Pending` label

### Removing work items from the backlog

If at any point during the refinement process it is determined that something is not work the Product Security Engineering team will take on, a member of the Product Security Engineering team will:

- Remove the `~"team::Product Security Engineering"` or `~ProdSecEng Candidate` label
- Make a comment explaining the reasoning as to why the Product Security Engineering team has decided not to commit to this work
- Make a best-effort to `@-mention` the appropriate Engineering Manager, Product Manager, or teams and apply the relevant group labels
- Consider applying the `~Seeking community contributions` label, if the issue is public and a potential fit for a community contribution

### Refinement, Design, and Build

Like [Single Engineer groups](/handbook/engineering/development/incubation/), each Product Security Engineer will *"encompass all of product development (product management, engineering, design, and quality) at the smallest scale. They are free to learn from, and collaborate with, those larger departments at GitLab but not at the expense of slowing down unnecessarily".*

- Our build boards are organized into workflow columns
- We use the labels, outcomes, and activities described [Product Development Flow](/handbook/product-development-flow/), but have the flexibility to skip the process where it's not needed
- All Product Security Engineering team members can contribute to validation, refinement, and solution design
- All Product Security Engineering team members can contribute to the prioritization, but the Security Engineering Manager is DRI
- New projects should follow the ["Creating a new project"](/handbook/engineering/gitlab-repositories/#creating-a-new-project) engineering guidance
- Unless the effort is AppSec automation, the workflow ends by handing over the feature to a Product team

#### Refinement Cadence

Product Security Engineering team members are responsible for performing refinement on issues that we may potentially take on. We aim to do refinement on a regular basis, which helps to ensure our Milestone Planning process is smooth and efficient.

It is expected that Product Security Engineering team members will do refinement tasks throughout the milestone. It is up to the individual to decide how they want to accomplish this, some ideas include:

- Setting aside a specific amount of time per week on the calendar to perform refinement
- Refining issues in-between major context switches, for example after submitting a merge request for review but before picking up the next piece of work

#### Step-by-step refinement process

Below is a step-by-step process for team members to walk through when refining backlog issues. We try our best to adhere to [existing GitLab development team standards](/handbook/product-development-flow/), so that the work can be picked up by anyone.

1. Choose an issue to refine
    1. Unrefined issues are labeled `~workflow::validation backlog` (or perhaps have no `~workflow::` label)
    1. You may also consider refining an issue labeled `~ProdSecEng Candidate`
    1. If possible, timebox refinement to at most 1 hour per issue
1. Get an understanding of what the issue is trying to accomplish
    1. You may need to ask questions of the person who created the issue or the relevant teams
    1. Ensure there is a clear definition of done for this particular set of work
    1. Consider breaking the issue down into separate pieces or, if needed, making an epic
1. Add additional details to the appropriate sections such that someone can easily understand the goals and requirements
1. Investigate what an ideal solution might look like and add potential solution information to that issue
    1. Consider timeboxing this effort
    1. If needed, consider applying the `~workflow::solution validation` label and engaging with the relevant product, engineering, or security teams to determine if the proposed solution addresses the requirements
1. Add a [weight](/handbook/security/product-security/product-security-engineering/#weights) based on how much effort this will take to accomplish
1. Consider adding a [priority](/handbook/security/product-security/product-security-engineering/#priorities) label to indicate the relative importance of the issue within our backlog
1. Add the `~workflow::ready for development` label to indicate that the issue has been refined

### Weights

We use a lightweight system of issue weighting with the knowledge that [things take longer than you think](https://erikbern.com/2019/04/15/why-software-projects-take-longer-than-you-think-a-statistical-model.html).
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

### Priorities

We use priority labels to provide the team and other contributors with an approximate timeline for when we intend to address issues.

| Label | Meaning |
| --- | --- |
| ~"ProdSecEngPriority::1" | This issue requires immediate attention and should be worked on as soon as possible. Typically, it is added to the next milestone or addressed during the current one if a team member has extra capacity. |
| ~"ProdSecEngPriority::2" | This issue is essential but can wait for a few milestones. |
| ~"ProdSecEngPriority::3" | This issue is a nice-to-have, but we do not commit to a specific timeline. |

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
- For AppSec related work, we use the [AppSec tooling namespace](https://gitlab.com/gitlab-com/gl-security/product-security/appsec/tooling) unless there is a compelling reason not to
- For our team's repositories, we use the [Product Security Engineering tooling namespace](https://gitlab.com/gitlab-com/gl-security/product-security/product-security-engineering/tooling)

## Tooling Integration work

One of the key focuses of our team is integrating custom out-of-product tooling that Product Security teams use into GitLab.

### Identification and Planning

[This epic](https://gitlab.com/groups/gitlab-com/gl-security/-/epics/291) is used to organize, plan, and track the work needed to implement custom Product Security tooling into GitLab.

For each custom tool:

- A tooling integration epic is created and made a child of the [Product Security Tooling Integration Epic](https://gitlab.com/groups/gitlab-com/gl-security/-/epics/291)
- An entry is also added to the appropriate table in the [List of Tools](https://gitlab.com/groups/gitlab-com/gl-security/-/epics/291#list-of-tools) for the Product Security Tooling Integration Epic, if it does not already exist
- An epic is created for each piece of discrete functionality of that tool and added as a child to that tool's integration epic
  - In some cases, we may need separate epics for specific components, modules, or other foundational work that doesn't fit specifically into a particular bit of functionality
  - Any other work required to implement, roll out, or handover that functionality should be tracked as children of these epics
  - Each of these epics must be labeled with `~ProdSecEngMetric::Tooling Integration`
- A tooling handover epic must be created so that conversations with development teams can begin as soon as possible
- A [sunset roadmap](/handbook/security/product-security/product-security-engineering/product-security-requirements/#sunset-roadmaps) is created, along with sunsetting issues

### Discrete Pieces of Functionality

As best we can, we try to break these tools down into discrete pieces of functionality. The purpose of doing so is to:

- Ensure understanding of the actual functionality and value proposition the tool is bringing
- Break the work down into smaller, actionable chunks of work
- Enable parallelization of work, cross-team collaboration, and decrease organizational friction

We define discrete pieces of functionality as a piece of functionality that is a distinct, separate thing that the application does. This functionality may be user facing or a necessary part that enables the rest of the application -- although it is not a component. One or more components in the codebase may work together to deliver a discrete piece of functionality.

Taking a basic todo list as an example, we might break it down into at least a few pieces of discrete functionality:

- Creation of todo list items
- Viewing of todo list items
- Editing of todo list items
- Removal of todo list items
- Rearranging of todo list items
- Tagging or categorization of todo list items

We do this on a best-effort basis, and acknowledge that not every tool may fit nicely into separate buckets of functionality. Product Security Engineering team members should feel empowered to be flexible in how we plan, chunk, and deliver work in an efficient and effective manner.

### Tooling Handover Epics

For any functionality being built into the product, we need to communicate and collaborate with the development teams that will own and maintain it going forward. In order to accomplish this, we create tooling handover epics and add them as children to the appropriate tooling integration epics.

These tooling handover epics will:

- Be created as early in the process as possible
- Establish a single source of truth for all handover coordination and decisions
- Help us identify what teams would own each specific piece of functionality or component
  - The appropriate product and engineering managers for the teams should be directly pinged
- Enable us to collaborate on a definition of done, feature flags, rollout, and eventual handover

### Sunsetting Issues

In order to keep track of the high-level requirements to fully deprecate a custom tool, we create issues specifically to track the sunsetting of that tool. This is done using the [sunsetting template](https://gitlab.com/gitlab-com/gl-security/product-security/product-security-engineering/product-security-engineering-team/-/issues/new?issuable_template=sunsetting) in the Product Security Engineering team repository.

Once a particular sunsetting requirement has been fulfilled, the Product Security Engineering team needs to close the relevant sunsetting issue in the Product Security Engineering team repository.

### Step-by-step processs

When beginning work to implement custom tooling into the product, we take the following actions:

- Create a tooling integration epic and make it a child of the [Product Security Tooling Integration Epic](https://gitlab.com/groups/gitlab-com/gl-security/-/epics/291)
- Create a tooling handover epic and make it a child of the newly created tooling integration epic

As we begin to build context on the tool, as part of our planning phase we will:

- Create and document an appropriately sized [Architecture Design Workflow](/handbook/engineering/architecture/workflow/) for the tool, if one does not yet exist
- Identify and create an epic for each piece of discrete functionality or required component
  - Make these epics children of the tooling integration epic
  - Be sure each of these have the `~ProdSecEngMetric::Tooling Integration` label
- Make a quick, best-guess recommendation as to what pieces of functionality or components we should start working on first
- Create a [sunset roadmap](/handbook/security/product-security/product-security-engineering/product-security-requirements/#sunset-roadmaps) and sunsetting issues

Once we have identified the functionality and components for this tool, we:

- Create issues under each functionality or component epic that push us towards integrating that functionality
- Reach out to Product and Engineering managers in the tooling handover epic to give them visibility, discuss any overlap with in-flight or planned work, and discuss eventual handover details
  - Does the functionality described in the epics/issues align with work their group does? If not, do they have suggestions as to who we should follow up with?
  - Do they have any concerns about the functionality, from a product/engineering/maintenance perspective?
  - What is the agreed upon definition of done, and at what point would it make sense to hand this work over to their team?
  - What would they like to see from us in order to ensure a smooth handover?

After we have finished a contribution related to a custom tooling integration, we need to:

- Update the sunsetting roadmap to indicate that a particular task or phase has been completed
- If appropriate, close the relevant sunsetting issue

## Milestone Planning

Please visit the [Product Security Engineering Milestone Planning page](/handbook/security/product-security/product-security-engineering/milestone-planning/) for information about how we plan our work.

## Metrics

Please refer to the [Product Security Engineering Metrics page](/handbook/security/product-security/product-security-engineering/metrics/) for information on our metrics.

## Integrating Product Security Team Requirements Into GitLab

Information on how the Product Security Engineering team plans, develops, and maintains functionality required by the GitLab Product Security sub-department can [be found here](/handbook/security/product-security/product-security-engineering/product-security-requirements/).

### Open Source Contributions

When possible, we contribute new features or security improvements directly to the dependencies that GitLab relies on so that everyone can benefit from those enhancements. Since those contributions happen in external repositories, they can't be tracked with our labels. In those cases, we should apply the appropriate labels to the merge requests we create for updating the dependency version to the one that includes our contributed changes.
