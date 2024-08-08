---
title: Design System Engineering Team
description: The Design System Engineering team is responsible for work relating to our design system, Pajamas.
---

## About

We're the Design System team and we are part of the [Foundations Stage](/handbook/product/categories/#foundations-stage).

We hope it's a good entry point to learn more about who we are and what we do.

## Team Members

{{% stable-counterparts role="Foundations:Design System" %}}

## What do we work on?

<!-- TODO: Pull this from the product side -->
- **Design System** ([Direction Page](https://about.gitlab.com/direction/manage/foundations/design_system/))

    We are currently focused on integrating our design system, [Pajamas](https://gitlab.com/gitlab-org/gitlab-services/design.gitlab.com), into the GitLab product.

    We perform an accessibility audit on each component and make sure that our implementations in [GitLab UI](https://gitlab.com/gitlab-org/gitlab-ui) and [GitLab](https://gitlab.com/gitlab-org/gitlab) match the desired user experience, guidelines, and visual design.

    The Design System team does the preparation work necessary so that other Engineers at GitLab and members from the wider community can help out with these efforts.

## How do we work?

### Communication

To get in touch with the Design System team, it's best to create an issue in the relevant project (typically [GitLab](https://gitlab.com/gitlab-org/gitlab), [Pajamas](https://gitlab.com/gitlab-org/gitlab-services/design.gitlab.com) or [GitLab UI](https://gitlab.com/gitlab-org/gitlab-ui)) and add the `~"group::design system"` label, along with any other appropriate labels.
Then, ping the relevant Product Manager and/or Engineering Manager (see [team members](#team-members)).

For more urgent items or if you are unsure who to ask, ping `@gitlab-org/foundations/design-system` or use [#g_pajamas-design-system](https://gitlab.slack.com/archives/CDNNDD1T3) on Slack (internal only).

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

{{% include "../_fifth_week_of_focus.md" %}}

## Metrics

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="design system" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
  {{< tableau/filters "GROUP_LABEL"="design system" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/Flakytestissues/FlakyTestIssues" >}}
  {{< tableau/filters "GROUP_NAME"="design system" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/SlowRSpecTestsIssues/SlowRSpecTestsIssuesDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="design system" >}}
{{< /tableau >}}
