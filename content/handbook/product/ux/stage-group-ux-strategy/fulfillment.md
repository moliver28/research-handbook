---
title: Fulfillment UX Team
description: "The Fulfillment UX team supports the Fulfillment section to provide customers a great experience with buying, upgrading and renewing GitLab."
---

## UX team members

- [Emily Sybrant](/handbook/company/team/#esybrant) - Product Design Manager
- [Tim Noah](/handbook/company/team/#timnoah) - Senior Product Designer, Fulfillment
- [Nick Hertz](/handbook/company/team/#nickhertz) - UX Researcher, Fulfillment

### Product Designer Focus Areas

In Q3, we are exploring the idea of Product Designers being assigned to Projects instead of Groups.

The Fulfillment team is Project focused, and many projects span Groups, leading to gaps in the user experience or frequent designer borrow requests. In order to avoid this, we will assign designers to project areas, and revisit quarterly during OKR planning.

In Q3:

- There should be a prioritization issue in [this project](https://gitlab.com/gitlab-org/fulfillment-meta) to reflect design priorities. There can be an issue per designer, or one issue for the team.
- Anyone can propose projects identified for design focus in the issue. Product Managers should work with Product Designers and the Product Design Manager to rank the priorities. If multiple PMs are contributing to a project, one should be designated for UX planning.
    - If we had to make a priority call to have projects that will go forward without design support, list those decisions in the issue.
- Priorities should be reviewed by the team quarterly, or when a new priority project is identified.
- Designers can still pick up issues outside their assigned projects. These should be crucial UX issues such as SUS Impacting issues or bugs. Issue weights can be used to discuss trade-offs when needed.
- Anyone can use the #s_fulfillment_ux Slack channel to ask for assistance.


Notes

- To manage workload, designers should generally be assigned to no more than one large and 1 small/medium project at a time, or 3-4 small/medium projects (or the equivalent in issue weights).
- Designers should use their best judgement and collaborate with their teams to decide which meetings to attend, and aren't expected to attend team sync meetings for multiple teams at the same time.
- Product Designers will continue to participate in product MRs via Reviewer Roulette. However, since they also do CustomersDot reviews, they are encouraged to set themselves busy when they reach their threshold of MR reviews, so as not to be overwhelmed by both responsibilities.
- We will review the impact of this approach at the end of the quarter in a retro issue to evaluate whether this reduced UX borrow requests without introducing any additional concerns or challenges.

## UX Health

One of the ways we track our progress is by measuring the UX of our different workflows (scorecards) and progress towards closing out issues that impact UX (issues labeled SUS:Impacting).

[View Fulfillment Cross-Functional Dashboard](/handbook/engineering/development/fulfillment/#cross-functional-backlog)

View the complete [Fulfillment UX Scorecard Playlist](https://youtube.com/playlist?list=PL05JrBw4t0KplrSGPYZAG8ZDCcyYPBEcz) on YouTube

### Fulfillment Platform

[Fulfillment Platform](https://about.gitlab.com/direction/fulfillment/platform/)

| JTBD                                     | Score  | Date | Opportunities                |
|------------------------------------------|--------|------|------------------------------|
|[SSO: Registering for CDot](https://gitlab.com/gitlab-org/gitlab-design/-/issues/2189) |  | Backlog | |
|[SSO: Signing in to CDot](https://gitlab.com/gitlab-org/gitlab-design/-/issues/2190) |  | Backlog | |

[View Open SUS:Impacting Issues for Fulfillment Platform](https://gitlab.com/groups/gitlab-org/-/issues/?sort=updated_desc&state=opened&label_name%5B%5D=group%3A%3Afulfillment%20platform&label_name%5B%5D=SUS%3A%3AImpacting&first_page_size=20)


### Billing and Subscription Management

[Billing and Subscription Management](https://about.gitlab.com/direction/fulfillment/billing-and-subscription-management/)

| JTBD                                     | Score  | Date | Opportunities                |
|------------------------------------------|--------|------|------------------------------|
| Renew a subscription (SaaS and SM) (based on renewals research) | NA  | Jan 2023 | - Consolidate and improve renewal messaging in app and emails <br/>- Improve seat usage visibility |
| [Manually renewing a GitLab subscription](https://gitlab.com/gitlab-org/gitlab-design/-/issues/2160) | C- | Jan 2023 | - customize email content and timing to customer context <br/> - improve SSO for seamless log in <br/> - improve UI with better readability and workflow |
| Upgrade a self-managed subscription| C- | Jan 2021 | Needs to be re-scored to identify opportunities |
| [Upgrade a GitLab.com subscription](https://gitlab.com/gitlab-org/gitlab-design/-/issues/947) | C | April 2020 | Needs to be re-scored to identify opportunities |
| Add additional seats to my subscription | |To be scheduled | |
| Link to a different namespace to use my plan with a different group | | To be scheduled| |
| Cancel a subscription | |To be scheduled | |
| Change/update subscription contact | |To be scheduled | |


[View Open SUS:Impacting Issues for Billing & Subscription Management](https://gitlab.com/groups/gitlab-org/-/issues/?sort=updated_desc&state=opened&label_name%5B%5D=group%3A%3Abilling%20and%20subscription%20management&label_name%5B%5D=SUS%3A%3AImpacting&first_page_size=20)

### Purchase

[Purchase](https://about.gitlab.com/direction/fulfillment/purchase/)

| JTBD                                     | Score  | Date | Opportunities                |
|------------------------------------------|--------|------|------------------------------|
| [Purchasing a Self-Managed Subscription](https://gitlab.com/gitlab-org/gitlab-design/-/issues/2177) | C | Jan 2023 | - update emails to all use same template <br/> - Improve navigation from purchase to activation |
| [Purchasing a GitLab.com Subscription (new user via a Trial)](https://gitlab.com/gitlab-org/gitlab-design/-/issues/2103)| C | Oct 2022 | - Auto sign-in users after email verification <br/> - Allow users to verify email later <br/> - Improve findability of upgrade link <br/> - More immediate access to paid features after purchase |
| [Purchasing a GitLab.com Subscription (existing user)](https://gitlab.com/gitlab-org/gitlab-design/-/issues/2103) | C | Oct 2022 |- Improve findability of purchase link for a group <br/> - More immediate access to paid features after purchase |
| Purchase add-on storage | | | |
| [Buy add-on compute minutes](https://gitlab.com/gitlab-org/gitlab-design/-/issues/531) | C | April 2020 | Needs to be re-scored to identify opportunities |

[View Open SUS:Impacting Issues for Purchase](https://gitlab.com/groups/gitlab-org/-/issues/?sort=updated_desc&state=opened&label_name%5B%5D=group%3A%3Apurchase&label_name%5B%5D=SUS%3A%3AImpacting&first_page_size=20)

### Utilization

[Utilization](https://about.gitlab.com/direction/fulfillment/utilization/)

| JTBD                                     | Score  | Date | Opportunities                |
|------------------------------------------|--------|------|------------------------------|
| [Determining where my storage is high in order to reduce it](https://gitlab.com/gitlab-org/gitlab-design/-/issues/2179) | D | Jan 2023 |- Support setting up good storage policies <br/> - Improve transparency into storage by project and type, including history <br/> Ensure accurate documentation |
| [Removing a user from my SaaS subscription](https://gitlab.com/gitlab-org/gitlab-design/-/issues/2177)| D | Sep 2022 |- Improve clarity around who uses a seat <br/>- Improve workflow clarity (buttons, alerts) |
| Removing a user from my self-managed subscription |  | To be scheduled | |
| Exclude a user from billing in my self-managed subscription |  |To be scheduled| |
| Determine how to make a single user non-billable (self-managed) |  | To be scheduled | |
| Set up auto-provisioning such that users are non-billable (self-managed) |  | To be scheduled | |

[View Open SUS:Impacting Issues for Utilization](https://gitlab.com/groups/gitlab-org/-/issues/?sort=updated_desc&state=opened&label_name%5B%5D=group%3A%3Afulfillment%20platform&label_name%5B%5D=SUS%3A%3AImpacting&first_page_size=20)

### Provision

[Provision](https://about.gitlab.com/direction/fulfillment/provision/)

| JTBD                                     | Score  | Date | Opportunities                |
|------------------------------------------|--------|------|------------------------------|
| Activate a self-managed license |  | To be scheduled | |
| Opt out of usage data and get offline license |  | To be scheduled | |
| Linking a sales-assisted subscription to GitLab.com |  | To be scheduled | |

[View Open SUS:Impacting Issues for Provision](https://gitlab.com/groups/gitlab-org/-/issues/?sort=updated_desc&state=opened&label_name%5B%5D=group%3A%3Aprovision&label_name%5B%5D=SUS%3A%3AImpacting&first_page_size=20)

## How We Work

We follow the [Product Designer workflows](/handbook/product/ux/product-designer/) and [UX Researcher workflows](/handbook/product/ux/ux-research/) described in the [Product Design section](/handbook/product/ux/) of the handbook. As Growth designers, we relentlessly measure the impact of our design changes following the [experimentation workflow](/handbook/marketing/growth/engineering/experimentation/). In addition:

- we have issue boards so we can see what everyone is up to.
- we **label** our issues with UX, devops::fulfillment, section::fulfillment and group::.
- we use the [workflow labels](https://gitlab.com/groups/gitlab-org/-/labels?utf8=%E2%9C%93&subscribed=&search=workflow%3A%3A).
- we use **milestones** to aid in planning and prioritizing.
- we use [UX issue weights](/handbook/product/ux/product-designer/#ux-issue-weights).
- we create separate issues for UX work and frontend work and name them with the prefix [UX] and [ENG]. This allows the Product Designer to add an issue weight specific to UX. It also keeps conversations confined to their corresponding issues. The [UX] issue should be the design SSOT for both designs and design feedback.
    - when the UX work is complete and the work is ready for the engineering team, we close the [UX] issue and the [ENG] issue should be updated to indicate it's ready to be worked on by linking the [UX] issue in the description of the [ENG] issue and updating the workflow label.

#### Getting Work Ready for Design

We use the Product Development Flow to help move issues through the product lifecycle. For the design phase to begin, the following are important:
- [ ] Problem is well understood and has been validated
- [ ] JTBD is well understood and has been validated
- [ ] PM has communicated the opportunity canvas to stable counterparts and group stakeholders, including the Product Designer and Product Design Manager

[Link to issue template](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issue%5Bmilestone_id%5D=#)

The template can also be copied into the main issue that is the SSOT.

#### Collaboration

There is a lot of overlap between Fulfillment groups, so we work very closely. To keep things simple and clear, we follow [GitLab internal communication](/handbook/people-group/employment-branding/people-communications/) guidelines. In addition the following tips will make it easier to collaborate with Product Designers who span multiple groups:

We collaborate with each other on issues across different Fulfillment Groups. On our monthly planning issues, each designer should indicate high priority or time consuming issues from other groups. A link to the other planning issue is fine too, just so it's easy for the Product Design Manager and Product Managers to navigate to this information.

#### Visual Reviews of MRs

The engineering team applies the `UX` label to any MR that introduces a visual, interaction or flow change. These MRs can be related to new issues, bugs, followups, or any type of MR. If the engineer isn't sure whether the MR needs UX, they should consult the designer who worked on the related issue, and/or the designer assigned to that stage group, or the Product Design Manager.

Live reviews are desired for any MR with the `UX` label. When the MR is in `workflow::In review`, the engineer assigns the MR to the designer for a  review using the [reviewer functionality](https://docs.gitlab.com/ee/development/code_review.html#getting-your-merge-request-reviewed-approved-and-merged) in the sidebar. This can happen in parallel with the maintainer review. Designers should prioritize these reviews to complete them as quickly as possible.

There are times when it isn't possible or practical for a Product Designer to complete their review via their local environment. At these times, the Product Designer can review screenshots and videos in the MR description or coordinate a demo with the Engineer. Another option for more complicated changes is keeping the change behind a feature flag and reviewing the change on staging after the MR has been merged. This is up to each Product Designer's discretion.
