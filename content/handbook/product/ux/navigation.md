---
title: "GitLab Navigation"
description: "The group::foundations team owns the navigation structures of the GitLab product. Please review this information if you plan to propose changes to GitLab navigation."
---

The [`group::foundations` team](/handbook/product/categories/#foundations-group) owns the navigation structures of the GitLab product. Please review this information if you plan to propose changes to GitLab navigation.

> Note: a [Code Owners approval rule](https://docs.gitlab.com/ee/user/project/codeowners/) is in place to prevent unapproved changes to the navigation. If you have not followed this process, your Merge Request will be blocked.

## What is navigation?

Navigation refers to elements that aid users in moving around GitLab, which includes their organization and wayfinding clues. The navigation experience directly impacts the usability and discoverability of our features. This document describes how we can collectively evolve the navigation while still [meeting our goals](https://about.gitlab.com/direction/manage/foundations/navigation_settings/#navigation).
 
## Why do we need to be careful when changing the navigation?

In the past, teams added items to highlight new features. However, this created an overwhelming navigation structure that makes it challenging for users to find what they need. Our [quarterly GitLab SUS survey](https://gitlab.com/groups/gitlab-org/-/epics/1455) continues to highlight these recurring themes:

* The navigation is complex or confusing
* The navigation is difficult to learn
* The navigation is not intuitive

## What kind of navigation changes require approval?

While Gitlab's UX allows users to navigate across the product in different ways, the focus of the approval process is on the left-side navigation. This area serves both as navigation and as a feature discovery point for users. As the navigation evolves, it's crucial that we maintain a balance between a focus on core workflows and feature visibility. 

To help maintain this balance, we ask for everyone to use this process when proposing changes to the left-side navigation:

- First, second, and third-level navigation additions
- Renaming a navigation item
- Removing a navigation item
- Changing the sort order of navigation items
- Changing navigation functionality or features
- Launching an [Experiment](https://docs.gitlab.com/ee/policy/experiment-beta-support.html#experiment) or [Beta](https://docs.gitlab.com/ee/policy/experiment-beta-support.html) feature

### When to change the navigation

We only make new additions to the GitLab navigation structure through a deliberate process that is intended to optimize user workflows. This [video](https://www.nngroup.com/videos/number-items-navigation-menu/) summarizes the main factors that are important to consider as we iterate on our navigation. In the past, teams added items to highlight new features. However, it becomes impossible to accommodate every new feature, as this creates an overwhelming navigation structure that makes it too difficult for users to find what they need to complete their tasks.

Therefore, we **do not add new items** to:

- Improve discoverability of new features. Instead, look for other opportunities to [highlight the functionality](https://design.gitlab.com/usability/feature-discovery) throughout the product.
- Optimize for the potential future. We should be forward thinking without over optimizing. As features are developed and added, we can look into what changes may need to occur to support a growing feature.

**Any proposal should include a business case with research that identifies the underlying problem and evaluates a navigation change against other potential solutions.**

There are many different types of [Problem Validation research](/handbook/product/ux/ux-research/problem-validation-and-methods/) that could be done to learn about areas of opportunity for our navigation. The specific type of research performed should be based on the research questions and goals of the study. The following research methods and frameworks are some examples of ways research can be used to justify a new addition to the existing GitLab navigation:
1. [Contextual inquiry](https://www.nngroup.com/articles/contextual-inquiry/): This method involves observing and interviewing users as they perform tasks related to their role to understand the "why" and the "how" behind them. Example: Users may demonstrate how they navigate through multiple menus and pages in GitLab to find their dashboards. This insight would reveal the need for a single page in GitLab to find all dashboards.
1. [Jobs to be Done (JTBD)](/handbook/product/ux/jobs-to-be-done/): This framework is a type of [foundational research](/handbook/product/ux/ux-research/foundational-research/) meant to learn the job(s) that customers want to accomplish within their roles. Jobs allow us to define the circumstances, goals, and outcomes of customers' work. Example: By interviewing users, we learn that have a main job of tracking metrics to show the health of their application, so they can identify when the application is failing. This insight would suggest a gap we could fill in GitLab by adding a page for displaying application metrics.
1. [Diary study](/handbook/product/ux/ux-research/diary-studies/): This method is used to gain feedback from users over a period of time, so we can uncover changes that occur over days, weeks, or months. Example: When gathing feedback about how users engage with a major change to GitLab's navigation bar, we observe that GitLab admins continuously struggle from one month to the next with locating the admin area to adjust settings. This insight would suggest we need to surface the admin area in the user interface since it is not easy to find over time.

Questions to ask to learn whether a change to the navigation is needed:

1. What are the main tasks assocaiated with your current role?
1. Why are those tasks important? What would happen if you could not complete those tasks?
1. Show me how you perform a specific task using your existing tools.
1. What, if anything, would you improve about the process of completing that task?

After there is insight into a problem with the navigation, the Product team DRI should work with Product Design and UX Research to evaluate the ideal solution through a subsequent [solution validation](/handbook/product/ux/ux-research/evaluating-navigation/#our-approach-to-evaluating-navigation-changes) study.

### How to propose a navigation change

1. It is recommended to propose a navigation change 2 milestones ahead of when you want to release. This allows enough time for collaboration between the team requesting navigation changes and Product/UX counterparts in Foundations.
1. Before opening an issue, review the [elements and patterns for navigation in Pajamas](https://design.gitlab.com/patterns/navigation). It is worth checking the [direction page](https://about.gitlab.com/direction/manage/foundations/navigation_settings/) to see how your proposal aligns or conflicts with upcoming changes.
1. Review the [list of navigation changes](/handbook/product/ux/navigation/#what-are-navigation-changes) and what they are to make sure your change qualifies.
1. The most important requirements:
   1. Familiarize yourself with feature discovery in the [product handbook](/handbook/product/product-principles/#discoverability-without-being-annoying) as well as our [design system](https://design.gitlab.com/usability/feature-discovery). Provide comprehensive context including alternative options explored (such as Explore, common entry points for your persona, and settings pages), which option is best suited in a given scenario & why, current and future discovery path, as well as a visual representation of proposed changes.
   1. Successful engagements with the Foundation teams usually include active participation by the product manager and designer on the proposal issue. Conducting proactive designs, user research, and using customer insights to [validate](/handbook/product-development-flow/#validation-phase-4-solution-validation) the proposal will ensure results inform the proposal.
1. If you are ready to propose a navigation change, use this [issue template](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issuable_template=Navigation%20Proposals) to kick off a discussion with the `group::foundations` team.
1. The [Product Manager for Foundations](/handbook/product/categories/#foundations-group) is the [DRI](/handbook/people-group/directly-responsible-individuals/#what-is-a-directly-responsible-individual) for navigation changes. Designers on Foundations will assist the DRI in reviewing the proposal and provide input. The typical turnaround time from the Foundations team will be 1 milestone.
1. When you have approval and are ready to start implementation, then follow the [GitLab Docs on adding items to the navigation](https://docs.gitlab.com/ee/development/navigation_sidebar.html#adding-page-specific-vue-content).

### Use feature flags

[Feature flags](https://docs.gitlab.com/ee/operations/feature_flags.html) are a great way for teams to merge changes in smaller batches without negatively impacting the user experience.

When shipping navigation changes behind a feature flag, it is required to present a proposal that considers the future state with a clear, validated vision of the final outcome. We do not merge iterative navigation changes behind a feature flag without having an understanding of the end state.

## Reconciliation process

The navigation proposal process attempts to balance a focus on core workflows and feature visibility, which means sometimes proposal authors may disagree with the Foundations team decision. If you feel like we’ve struck the wrong balance, let’s follow the [manager mention thread process](https://handbook.gitlab.com/handbook/communication/#scaling-merge-requests-through-manager-mention-mrs-formerly-consolidated-mrs). Add a comment to the proposal and:

1. Summarize why the proposal was rejected and your perspective on why this decision is incorrect
1. Mention your manager and the Foundations PM manager
1. Request their input on the decision
