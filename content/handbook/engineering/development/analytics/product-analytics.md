---
title: Product Analytics Group
description: "The Product Analytics group works on the tools that enable customers to use GitLab to analyze the use of their deployed applications."
---
## Vision

The Product Analytics Group is part of the [Analytics section](/handbook/product/categories/analytics/).

How we work:

- We work in accordance with our [GitLab values](/handbook/values/).
- We work [transparently](/handbook/values/#transparency) with everything public.
- We have a [bias for action](/handbook/values/#bias-for-action).
- Everyone can contribute to our work.

How we design:

- We follow all workflows defined within the [UX Department section of the handbook](/handbook/product/ux/), including protocol for both
    [Product Design](/handbook/product/ux/product-designer/) and [UX Research](/handbook/product/ux/ux-research/).
- We use the [UX issue weights](/handbook/product/ux/product-designer/#ux-issue-weights)
    and [UX issue labels](/handbook/product/ux/#ux-labels) to categorize, prioritize, and track work.
- We review all merge requests containing the [UX] label to ensure design and engineering parity.
- We dogfood Product Analytics to measure and test the impact of each product iteration.

Learn more about what we work on and the problems we are solving on our public [direction page](https://about.gitlab.com/direction/analytics/product-analytics/).

## Team members

{{< stable-counterparts role="Monitor:Product Analytics|Group(.*)Analytics" >}}

## Onboarding engineer? Start here

Welcome! Start by familiarizing yourself with the [developer onboarding guide](/handbook/engineering/developer-onboarding/). After that you'll need to set up a few things specific to the Product Analytics team.

### Docker

We use Docker to run our development environment. You can find installation instructions [here](https://docs.docker.com/install/). Free alternatives such as Rancher are not fully compatible with our development stack.

Docker is not expensable, so you will need to open an access request to get a valid license. Further instructions are [here](/handbook/tools-and-tips/mac/#docker-desktop).

### DevKit

Our internal development kit is a Docker Compose project which will run the entire product analytics stack.

It is pre-configured and the [repository](https://gitlab.com/gitlab-org/analytics-section/product-analytics/devkit) contains all the required information and steps to get started.

### GDK

Follow the [GDK documentation](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/main/doc/howto/product_analytics.md) on how to set up your GDK for product analytics.

### Set up your own cluster for use in production

To improve results and customer empathy, in Q2FY25 [all engineers were expected](https://gitlab.com/gitlab-com/gitlab-OKRs/-/work_items/7137) to stand up their own cluster to use in production and we require all future engineers to do the same and note any issues faced.

Instructions to do so are in the public [helm-charts](https://gitlab.com/gitlab-org/analytics-section/product-analytics/helm-charts).

## Communication

### Slack

We have dedicated Slack channels for the Product Analytics group:

- `#g_monitor_product_analytics` for general posts.
- `#g_monitor_product_analytics_daily` for our daily asynchronous stand-ups.
- `#g_monitor_product_analytics_frontend` for the monthly frontend retrospective and kickoff.
- `#g_monitor_product_analytics_infra_alerts` for infrastructure alerts.

### Meetings

- Our weekly sync meeting switches fortnightly on Tuesdays between EMEA/AMER (1400UTC) and AMER/APAC (1930UTC) friendly times. Attendance is not mandatory (although encouraged, if you are available) and the meeting is recorded on GitLab Unfiltered. You can find the meeting link in the `#g_monitor_product_analytics` channel.
- All analytics meetings can be found by searching for the `Analytics Shared` meeting room in Google calendar and all GitLab team members are welcome to join.

## How we work

We base our workflow on the company's [Product Development Flow](/handbook/product-development-flow/). Any modifications or clarifications on how we apply the workflow are detailed below.

### Milestone goals

During milestone planning it is the responsibility of the issue scheduler to add one of the five scoped goal labels to set clear expectations for a given milestone:

| Goal label          | Expectation                                                        |
|---------------------|--------------------------------------------------------------------|
| `goal::design`      | Design work completed.                                             |
| `goal::planning`    | Implementation plan created and if needed reviewed and approved.   |
| `goal::development` | Development has begun and either has in dev or in review workflow. |
| `goal::complete`    | Development complete and issue verified.                           |
| `goal::stretch`     | Added as a stretch goal, no expectation to start.                  |

### Issue prioritization

Our priorities should follow [overall guidance for Product](/handbook/product/product-processes/#how-we-prioritize-work). This should be reflected in the priority label for scheduled issues:

| Priority | Description | Probability of shipping in milestone |
| ------ | ------ | ------ |
| priority::1 | **Urgent**: top priority for achieving in the given milestone. These issues are the most important goals for a release and should be worked on first; some may be time-critical or unblock dependencies. | ~100% |
| priority::2 | **High**: important issues that have significant positive impact to the business or technical debt. Important, but not time-critical or blocking others.  | ~75% |
| priority::3 | **Normal**: incremental improvements to existing features. These are important iterations, but deemed non-critical. | ~50% |
| priority::4 | **Low**: stretch issues that are acceptable to postpone into a future release. | ~25% |

### Estimation

We estimate issues async and aim to provide an initial estimate (weight) for all issues scheduled for an upcoming milestone. Engineering are responsible for estimating issues at the `~workflow::solution validation` stage and issues require a weight and milestone before proceeding to `~workflow::scheduling`. They are used by engineering and product management to most effectively decide which issues are picked for a particular milestone.

Weight estimates are just that: estimates. They _do not equate_ to time spent, but in the ideal world they _do generally correlate_.

#### Weight definitions

| Weight | Definition |
| ------ | ---------- |
| 1 | The simplest possible change. We are confident there will be no side effects. |
| 2 | A simple change (minimal code changes), where we understand all of the requirements. |
| 3 | A simple change, but the code footprint is bigger (e.g. lots of different files, or tests effected). The requirements are clear. |
| 5 | A more complex change that will impact multiple areas of the codebase, there may also be some refactoring involved. Requirements are understood but you feel there are likely to be some gaps along the way. |
| 8 | A complex change, that will involve much of the codebase or will require lots of input from others to determine the requirements. |
| 13| A significant change that may have dependencies (other teams or third-parties) and we likely still don't understand all of the requirements. It's unlikely we would commit to this in a milestone, and the preference would be to further clarify requirements and/or break in to smaller Issues. |

### Feature flags

Engineering are responsible for maintaining an up to date [list of active feature flags](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/main/doc/howto/product_analytics.md#feature-flags) and their statuses.
