---
title: "Infrastructure Security - Capacity Indicators and Workflows"
description: "This page provides an overview of how we measure the team's capacity to effectively handle current workloads and plan for future needs. By collecting and analyzing this data, we can make informed decisions regarding the team's capacity and headcount requirements. "
---

## Overview

This page provides an overview of how we measure the team's capacity to effectively handle current workloads and plan for future needs. By collecting and analyzing this data, we can make informed decisions regarding the team's capacity and headcount requirements.

Additionally, this page includes information on the type of work classification and effort classification. The type of work classification helps us identify areas where additional capacity or other changes may be necessary. It provides a detailed breakdown of different types of work associated with the InfraSec team, such as stable counterpart duties, threat model duties, merge request reviews, and more.

The effort classification, on the other hand, provides an estimate of the level of effort required to resolve a task. It is not a measure of the actual time spent on the task. The effort classification is categorized into different weights, ranging from trivial to too large, and serves as a guideline for understanding the complexity and time commitment associated with each task.

Collecting this data helps inform decisions involving the team's capacity and headcount needs. These metrics are only analyzed in aggregate and are __not__ utilized or referenced for evaluating individual team member performance. They are solely used to understand overall team dynamics and requirements.

### Where are the charts that are based on this data?

This still needs to be done and is tracked in [this issue](https://gitlab.com/gitlab-com/gl-security/product-security/infrastructure-security/bau/-/issues/6503).

### Metrics Review Frequency

The metrics review occurs at the beginning of each month. Led by InfraSec, this review involves a comprehensive analysis and discussion of the metrics. It is a valuable opportunity to assess the team's capacity and make data-driven decisions. For the review, an issue will be created which will have a due date of 7 days for team members to provide their feedback. The feedback from the team will be discussed in the next InfraSec Sync that happens.

During the review, we examine key metrics related to capacity, workload, and effort classification. By analyzing this data, we gain insights into the team's capacity, identify areas for improvement, and ensure that we have the necessary people to meet our security goals.

## Work Classification

Classifying each type of work helps to distinguish where exactly more capacity or other changes may be necessary. For that, we utilize the following GitLab labels, which are [created/managed/used at the `gitlab-com` group level](https://gitlab.com/groups/gitlab-com/-/labels?subscribed=&sort=relevance&search=InfraSecWork).

| Label    | Description |
| -------- | ------- |
| InfraSecWork::Counterpart  | Indicates the work is associated with the InfraSec stable counterpart duties |
| InfraSecWork::Investigation | Indicates the work is related to investigation-related issues |
| InfraSecWork::Maintenance | Indicates the work is associated with InfraSec maintenance activities |
| InfraSecWork::Project | Indicates the work is related to an InfraSec project |
| InfraSecWork::Discussion | Indicates an ongoing Discussion within the Infrasec team |

### Who assigns this label and when?

The [DRI](/handbook/people-group/directly-responsible-individuals/) is expected to assign this label to any new Issue.

## Effort Classification

The effort classification provides an estimate of the level of effort required to resolve a task, serving as a guideline rather than an actual measure of time spent. The `Estimation Guide` offers a reference point for understanding the complexity and time commitment associated with each task.

To provide further clarity, the effort classification is categorized into different weights, ranging from `trivial` to `too large`. These weights help understand the level of effort required, with `trivial` tasks requiring very little effort and `too large` tasks being highly complex and time-consuming. The `Estimation Guide` provides a rough estimate of the time commitment associated with each weight, helping to inform planning and resource allocation decisions.

| Label    | Weight | Classification | Description | Estimation Guide |
| -------- | ------ | ------- | ------- | ------- |
| InfraSecEffort::Trivial | 1 | Trivial | Very little effort required | Immediate or near immediate change to resolve the issue. This label should be used when effort is less than 1 day |
| InfraSecEffort::Small  | 2 | Small | Straight forward change, minimal investigation | 1-2 days  |
| InfraSecEffort::Medium | 3 | Medium | Some investigation and/or collaboration needed  | < 1 week |
| InfraSecEffort::Large | 5 | Large | Significant investigation and collaboration needed | 1-2 weeks |
| InfraSecEffort::Too Large | 13 | Needs Refinement | The issue is overly complex and needs to be promoted to an Epic or broken down into smaller issues | N/A |

Labelling of the issues should be done as follows:

- For issues which are to be labelled `InfraSecEffort::Medium` or less, the DRI will do it directly based on their own rationale and estimation.
- For issues which are to be labelled `InfraSecEffort::Large` or `InfraSecEffort::Too Large`, peer review will be done and issues will be labelled accordingly

### Handling Reestimation/blocks

- If an issue was estimated wrong, update the `InfraSecEffort` label and add another label `InfraSec::Reestimated`. This will help us improve the process.
- When the task is blocked due to a dependency on an external team, add `InfraSec::Blocked` label and remove the estimation. This will help us to identify tasks that are blocked on other teams and help us to track them more easily as well.

### Handling shift in priority

- If a task is deprioritised for a long period - We move the task to backlog by adding label `InfraSec::backlog` and update the label to show how much work has been done. For example, For an estimation of `InfraSecEffort::Large`, if the work was done in the timeframe for `InfraSecEffort::Medium`, we change the label and shift it to the backlog. The capacity has been measured this way. Next time we pick it up, we can reassess the estimation.
- If a task can be picked up after a few days, there is no need to do anything.

### Who assigns this label and when?

The [DRI](/handbook/people-group/directly-responsible-individuals/) is expected to assign this label to any new Issue.
