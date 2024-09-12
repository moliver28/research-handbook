---
title: "Continuous Planning"
description: "Continuous Planning is a tool designed to help GitLab account teams save time
when building customer-facing success plans based on information maintained in customer collaboration groups. Anyone can use the tools to present updates on ongoing initiatives within their GitLab projects."
---

View the [CSM Handbook homepage](/handbook/customer-success/csm/) for additional CSM-related handbook pages.

---

## Philosophy

When preparing for an executive business review or a similar presentation, it's common to create slide-based presentations that reflect the success or progress of a project. Traditionally, this process requires manually gathering information from various sources. However, if you use GitLab to track project progress, you might already document key objectives or milestones as epics or issues within these groups. This documentation is valuable because it's actively maintained during daily activities.

However, extracting information from these sources and incorporating it into a slide deck remains a manual process — but it doesn't have to be. Imagine that while maintaining your customer collaboration groups, you follow a few standard guidelines for setting up epics and issues. For example, you might assign standardized labels to epics representing key objectives or write descriptions using a structured template. This approach makes the information machine-readable, allowing you to automate at least part of the slide deck creation process, thereby enhancing efficiency.

By automating as much of the process as possible and utilizing scheduled CI/CD pipelines to run the automation regularly, we arrive at what we call __Continuous Planning__. This approach saves time and ensures that the presentation assets are always up-to-date and available to stakeholders at any time, shifting the focus from manual updates to continuous generation.

See an [example success plan](https://example-company-success-plan-gitlab-sales-contin-3ced2975f21bc1.gitlab.io/).

More information can be found in the [Continuous Planning open-source project](https://gitlab.com/gitlab-sales-continuous-planning).

## Direction and how you can help

👋 This is the strategy for [Continuous Planning](https://gitlab.com/gitlab-sales-continuous-planning), a tool the Customer Success Management (CSM) team created to standardize creating success plans for customers.

This strategy is a work in progress, and everyone can contribute. Sharing your feedback directly in the [issues](https://gitlab.com/groups/gitlab-sales-continuous-planning/-/issues) and [epics](https://gitlab.com/groups/gitlab-sales-continuous-planning/-/epics) is the best way to contribute to our strategy and vision.

## Overview

__Continuous Planning__ focuses on automating the creation of presentation materials by leveraging information from GitLab groups and projects. By standardizing how CSMs document customers' objectives and initiatives and utilizing CI/CD pipelines and GraphQL, we ensure that these materials are up-to-date and easily accessible to anyone who needs them.

## What we recently completed

- Converted Continuous Planning from private to an open-source project so any users organizing work with GitLab epics and issues can create standardization for documenting and presenting work.

## What we are currently working on

- [Improve the efficiency of success plan data collection](https://gitlab.com/groups/gitlab-sales-continuous-planning/-/epics/5) - This will have a dual benefit of improving the speed of data collection and creating a manager view of all success plans within the `account-management` sub-group.

- [Incorporate recently closed objectives and initiatives into success plan reports](https://gitlab.com/groups/gitlab-sales-continuous-planning/-/epics/3) - Currently, only open work items show in the presentation asset, we want also to highlight what's recently been accomplished.

- [Rework versioning strategy for easier testing/updating at the target/artifact level](https://gitlab.com/groups/gitlab-sales-continuous-planning/-/epics/4) - In addition to improving the version strategy, we're discussing having a monthly upgrade release cadence similar to Gitlab.com.

## What's next for us

- We want to extend Continuous Plannings usage beyond CSMs to other GitLab business units and customers. For example, Product Managers can use Continuous Planning to update the "What we recently completed" and "What we're currently working on" sections of their group direction page. The PS team can use it to highlight updates to customers.

- Work with the Gainsight admins to import the data collected from success plans into Gainsight.

- Determine how to gather usage data to understand the effectiveness of Continuous Planning by its use.
