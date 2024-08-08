---
title: Personal Productivity Team
description: The Personal Productivity team is responsible for work relating to cross-stage features such as navigation, settings, and notifications.
---

## About

We're the Personal Productivity team and we are part of the [Foundations Stage](/handbook/product/categories/#foundations-stage).

This page is the shared team page for our Engineers, Product Designers, and Product Manager!

We hope it's a good entry point to learn more about who we are and what we do.

## Team Members

{{% stable-counterparts role="Foundations:Personal Productivity" %}}

## What do we work on?

<!-- TODO: Pull this from the product side -->
- **Navigation & Settings** ([Direction Page](https://about.gitlab.com/direction/manage/foundations/navigation_settings/))

## How do we work?

### Communication

To get in touch with the Personal Productivity team, it's best to create an issue in the relevant project (typically [GitLab](https://gitlab.com/gitlab-org/gitlab)) and add the `~"group::personal productivity"` label, along with any other appropriate labels.
Then, ping the relevant Product Manager and/or Engineering Manager (see [team members](#team-members)).

For more urgent items or if you are unsure who to ask, ping `@gitlab-org/foundations/personal-productivity` or use [#g_personal-productivity](https://gitlab.slack.com/archives/C010NAWPRV4) on Slack (internal only).

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

With our [release schedule](/handbook/engineering/workflow/#product-development-timeline) our milestones are either four or five weeks long.
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

## Metrics

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="personal productivity" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
  {{< tableau/filters "GROUP_LABEL"="personal productivity" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/Flakytestissues/FlakyTestIssues" >}}
  {{< tableau/filters "GROUP_NAME"="personal productivity" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/SlowRSpecTestsIssues/SlowRSpecTestsIssuesDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="personal productivity" >}}
{{< /tableau >}}
