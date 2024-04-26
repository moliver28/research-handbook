---
title: Manage Foundations Team
description: The Manage Foundations team is responsible for foundational Frontend work and our Design System Pajamas.
---

<!-- Common Links -->
[engineering workflow]: /handbook/engineering/workflow/
[GitLab]: https://gitlab.com/gitlab-org/gitlab
[GitLab UI]: https://gitlab.com/gitlab-org/gitlab-ui
[Pajamas]: https://gitlab.com/gitlab-org/gitlab-services/design.gitlab.com
[#g_manage_foundations]: https://gitlab.slack.com/archives/C010NAWPRV4

## About

We're the Foundations team and we are part of the [Manage Stage](/handbook/product/categories/#manage-stage).

This page is the shared team page for our Engineers, Product Designers, and Product Manager!

We hope it's a good entry point to learn more about who we are and what we do.

## Team Members

{{% stable-counterparts role="Manage:Foundations" %}}

## What do we work on?

 -  **Design System** ([Direction Page](https://about.gitlab.com/direction/manage/foundations/design_system/))

    We are currently focused on integrating our design system, [Pajamas], into the GitLab product.

    We perform an accessibility audit on each component and make sure that our implementations in [GitLab UI] and [GitLab] match the desired user experience, guidelines, and visual design.

    The Foundations team does the preparation work necessary so that other Engineers at GitLab and members from the wider community can help out with these efforts.

    **Do you want to contribute?** Please see [the Migration Day Picker for a good entry point](https://picker.pajamasmigrationday.com/).

 - **Navigation & Settings** ([Direction Page](https://about.gitlab.com/direction/manage/foundations/navigation_settings/))

## How do we work?

### Communication

To get in touch with the Foundations team, it's best to create an issue in the relevant project (typically [GitLab], [Pajamas] or [GitLab UI]) and add the `~"group::foundations"` label, along with any other appropriate labels.
Then, ping the relevant Product Manager and/or Engineering Manager (see [team members](#team-members)).

For more urgent items or if you are unsure who to ask, ping `@gitlab-org/manage/foundations` or use [#g_manage_foundations] on Slack (internal only).

### Capacity Planning

In general, we use the standard GitLab [Product Development Flow](/handbook/product-development-flow/). Here are some specific workflows we use:
#### How we weight issues

We use a Fibonacci scale and in terms of complexity, we use [this table](https://www.scrum.org/resources/blog/practical-fibonacci-beginners-guide-relative-sizing) from Practical Fibonacci.

**Foundations weighting scale:**

- **0 - Little to no effort is required** Something that would be quicker to do than it was to create the issue.
- **1 - Extra small.**  The engineers feel they understand most requirements and consider it relatively easy, probably the smallest item in the milestone and mostly likely completed in one day.
- **2 - Small.** A little bit of thought, effort, or problem-solving is required, but the engineers have confidence in the requirements.
- **3 - Average.**  Engineers have done this a lot; they know what needs to be done. There may be a few extra steps, but that's it.
- **5 - Large.**  This is complex work, or the engineers don't do this very often. Most engineers will need assistance from someone else on the team. This is probably one of the largest items that can be completed within a milestone.
- **8 - Extra Large.** This is going to take some time and research and probably more than one engineer to complete within the milestone. At this size, we should be looking at how we can split this into smaller issues/tasks.
- **13+ - Ludicrous!** This issue is far too complex, large, or under-defined. Anything with a weight of this size should go back to `~workflow::refinement` to be refined and split into more manageable chunks.

## Fifth week of focus

With our [release schedule](https://handbook.gitlab.com/handbook/engineering/workflow/#product-development-timeline) our milestones are either four or five weeks long.
To make planning more predictable and encourage experimentation, we treat the fifth week of any longer milestone as a week of focus.
During this week, our engineers are encouraged to work on a project of their own choosing.
It could be starting a proof-of-concept, learning a new skill, burning down neglected issues, writing a blog post, or something else.
The only requirement is that it contributes to the team, or their personal development.

We trialed this as an [OKR](https://gitlab.com/gitlab-com/gitlab-OKRs/-/work_items/5528) in December 2023 and it was a great success.

The five week milestones occur at these places in 2024.
All other milestones are four weeks long:

- February 9 to March 15, 2024
- May 10 to June 14, 2024
- August 9 to September 13, 2024
- October 11 to November 15, 2024

## Employee Development

Here are some resources team members can use for employee development:

- [Create Stage Professional Development](/handbook/engineering/development/dev/create/#professional-development)
- [Create Stage Training opportunities](/handbook/engineering/development/dev/create/engineers/training/)
- [GitLab Learning and Development](/handbook/people-group/learning-and-development/)
- [Level Up](https://levelup.gitlab.com/learn/dashboard)

## Metrics

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="foundations" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
  {{< tableau/filters "GROUP_LABEL"="foundations" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/Flakytestissues/FlakyTestIssues" >}}
  {{< tableau/filters "GROUP_NAME"="foundations" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/SlowRSpecTestsIssues/SlowRSpecTestsIssuesDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="foundations" >}}
{{< /tableau >}}

## Team onboarding

- [UX Onboarding Checklist](/handbook/engineering/development/dev/manage/foundations/ux-foundations-onboarding)
