---
title: "Product Security Engineering"
description: "The Product Security Engineering team's mission is to create proactive and preventative controls which will scale with the organization and result in improved product security."
---

## Product Security Engineering Mission

As part of the Security Engineering sub-department, and sibling to the Application Security Team, our mission is to:

- Enhance security along the software development lifecycle by creating ["paved roads"](https://netflixtechblog.com/scaling-appsec-at-netflix-part-2-c9e0f1488bc5)
- Contribute product-first code that enhances the security of GitLab's software assets
- Reduces the manual burden of the Application Security team by building automation and product improvements

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

Work that is taken on by Product Security Engineering should have the `~"team::Product Security Engineering"` label and either:

- meet the criteria defined in [Automation Request template](https://gitlab.com/gitlab-com/gl-security/product-security-engineering/product-security-engineering-team/-/blob/main/.gitlab/issue_templates/automation_request.md) for automation work, or
- be updated to include exit criteria, such as which Product Team we hand it over to upon completion

### Removing work items from the backlog

If at any point during the refinement process it is determined that something is not work the Product Security Engineering team will take on, a member of the Product Security Engineering team will:

- Remove the `~"team::Product Security Engineering"` or `~ProdSecEng Candidate` label
- Make a comment explaining the reasoning as to why the Product Security Engineering team has decided not to commit to this work
- Make a best-effort to `@-mention` the appropriate Engineering Manager, Product Manager, or teams and apply the relevant group labels
- Consider applying the `~Seeking community contributions` label, if the issue is public and a potential fit for a community contribution

### Refinement, Design, and Build

Like [Single Engineer groups](https://about.gitlab.com/handbook/engineering/incubation/), each Product Security Engineer will *"encompass all of product development (product management, engineering, design, and quality) at the smallest scale. They are free to learn from, and collaborate with, those larger departments at GitLab but not at the expense of slowing down unnecessarily".*

- Our build boards are organized into workflow columns
- We use the labels, outcomes, and activities described [Product Development Flow](/handbook/product-development-flow/), but have the flexibility to skip the process where it's not needed
- All Product Security Engineering team members can contribute to validation, refinement, and solution design
- All Product Security Engineering team members can contribute to the prioritization, but the Security Engineering Manager is DRI
- Unless the effort is AppSec automation, the workflow ends by handing over the feature to a Product team

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

When a Product Security Engineer has capacity for more work, they should take an item from the top of the backlog and assign themselves to it. If they need to stop working on something they should unassign themselves, @ mention the team, and apply the correct workflow label (e.g. `~workflow::blocked`).

## References

This new team is still in the formation process. For more context, team members can refer to these internal links:

- [Our transition issues in `gitlab-com/gl-security/product-security-engineering/product-security-engineering-team/`](https://gitlab.com/groups/gitlab-com/gl-security/-/issues/?sort=created_date&state=opened&label_name%5B%5D=AppSec%3A%3ATransition&first_page_size=20)
- [The announcement Google Doc](https://docs.google.com/document/d/19NO6S02fMF3FZWkrptpXEFp6x2g6L9fro4qYUuITOsw/edit)
