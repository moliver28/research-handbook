---

title: Experimentation
description: "Information about creating and running experiments at GitLab."
---







### Experimentation

This page covers the Growth engineering process for running experiments. See also:

* [How Growth Launches Experiments](/handbook/product/growth/#how-growth-launches-experiments) (Product)
* [Experiment Guide](https://docs.gitlab.com/ee/development/experiment_guide/) (GitLab Developer Documentation)
* [Experimentation Design & Analysis](/handbook/product/product-analysis/experimentation/) (Product Analysis)

## Running Experiments

We follow a four step process for running experiments as outlined by [Andrew Chen's How to build a growth team.](https://andrewchen.co/how-to-build-a-growth-team/)

1. **Form Hypotheses:** Define ideas our team wants to test.
2. **Prioritize Ideas:** Decide which ideas to test first.
3. **Implement Experiments:** Do the Product, Design, Engineering, Data, and Marketing work to execute the experiment.
4. **Analyze Results:** Dive into the results data and prove or disprove our hypotheses.

Each week, we provide progress updates and talk about our learnings in our [Growth Weekly Meeting](/handbook/product/growth/#weekly-growth-meeting).

The duration of each experiment will vary depending on how long it takes for experiment results to reach statistical significance. Due to the varying duration, there will be some weeks when we have several experiments running concurrently in parallel.

### Experimentation Process

#### Overview

1. Create an [Experiment idea](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issuable_template=Experiment%20Idea) issue to define the scope of the experiment (label added: `~"experiment idea"`, optionally add: `~"growth experiment"`)
- Anybody who has an idea of something to try as an experiment can create this issue
- They provide information about which portion of the product they'd like to experiment with, their experimentation idea (i.e. their hypothesis), and what a successful outcome might look like
- At this extremely early stage, the most critical thing is that we get the idea jotted down with enough context and detail that it is understood by others on the team and can be carried forward by the Project Manager
1. Project Managers (PM) review the [Experiment backlog](https://gitlab.com/groups/gitlab-org/-/boards/2028884) regularly to ensure they meet the necessary criteria of a well-defined experiment
    - experiments that meet our [Experiment Definition Standards](#experiment-definition-standards) and are deemed relevant are initially prioritized by adding the appropriate milestone list (`%Awaiting further demand`, `%Backlog`, `%Next 1-3 releases`, or a specific milestone)
    - experiments that do not meet our [Experiment Definition Standards](#experiment-definition-standards) or are deemed no longer relevant are closed
1. PM follows the process outlined in [Experiment Setup](#experiment-setup) to create an epic and related issues
1. PM, UX, and Engineering follow the [product development flow](/handbook/product-development-flow/) and create `workflow::` issues linked to the epic to track the work required to complete the experiment
1. Additionally, the PM works with the Data Team to define what data will be needed in order to fulfill the defined success metric
    - **Note:** In order for the Data Team to begin ingesting data from new tables or columns, those tables or columns must first exist in the production database.
1. Engineering teams deliver changes in line with our product development flow, being mindful of changes affecting other GitLab teams.
- Our processes, planning, and current priorities are transparent to other groups
- We try to avoid running experiments on features that are currently or soon to be under development by other groups
- We choose reviewers and domain experts from relevant groups where possible to ensure different groups are familiar with the changes we are introducing
- When our product managers make the call, we initiate experiment and feature flag cleanup, either adding the experiment feature to the product or reverting
1. Engineering & PM collaborate on getting the experiment activated according to the defined rollout plan
    - PM or Engineering update the [experiment rollout](#experiment-rollout-issue) issue, setting the experiment scoped label to `~"experiment::active"` when the experiment is live
    - PM or Engineering notify interested parties (their team, data team, support, CSMs, etc.) by at-mentioning them in a comment on the [experiment rollout](#experiment-rollout-issue) issue, and on the `#production` Slack channel
1. PM monitors the experiment via data sent to Sisense, adjusting the rollout strategy in the [experiment rollout](#experiment-rollout-issue) issue as necessary
1. PM compares recorded data to the experiment's criteria for measuring success
    - if experiment (variant) is successful, PM/Engineering create an [Experiment Cleanup Issue](#experiment-cleanup-issue) to fully integrate the successful flow into the product
    - if experiment (all variants) are unsuccessful, PM/Engineering create an [Experiment Cleanup Issue](#experiment-cleanup-issue) to remove the experimentation code, reverting back to the "control" flow
1. Once the [experiment cleanup](#experiment-cleanup-issue) issue is resolved, the [experiment rollout](#experiment-rollout-issue) issue and [Experiment Epic](#experiment-epic) are closed and the experimentation process is complete

See also the [Growth RADCIE and DRIs](/handbook/product/growth/#growth-radcie-and-dris) for determining DRIs at each stage.

#### Experiment Issue Boards

A backlog of experiments are tracked on the [Experiment backlog](https://gitlab.com/groups/gitlab-org/-/boards/2028884?&label_name[]=growth%20experiment) board.

To track the status of an Experiment, Experiment tracking issues using the `~"experiment-rollout"` and scoped `experiment::` labels are tracked on experiment rollout boards across the following groups:

| gitlab-org | gitlab-com | all groups |
| ------ | ------ | ------ | ------ |
| [Experiment rollout](https://gitlab.com/groups/gitlab-org/-/boards/1352542) | [Experiment rollout](https://gitlab.com/groups/gitlab-com/-/boards/1542208) | [Issues List](https://gitlab.com/dashboard/issues?scope=all&state=opened&label_name[]=experiment-rollout) |

#### Experiment Setup

- Once the experiment hypothesis & measurement criteria are well-defined, an [Experiment Epic](#experiment-epic) is created at the top-level group most appropriate for the experimentation work (usually the `gitlab-org` group)
    - The epic becomes the single source of truth (SSoT) for the experiment
    - The original [Experiment Definition Issue](#experiment-definition-issue) is closed and gets attached to the epic
    - The final definition, hypothesis, & measurement criteria from the [Experiment Definition Issue](#experiment-definition-issue) are copied into the new epic's description
- New issues related to the experiment (such as an [experiment rollout](#experiment-rollout-issue) issue, an [experiment cleanup](#experiment-cleanup-issue) issue, a UX spec issue, or an Engineering work issue) are attached to the epic

##### Experiment Definition Issue

This issue acts as the starting point for defining an experiment, including an overview of the experiment, the hypothesis, and some idea of how success will be measured. The [Experiment idea] issue template can be used for this (label added: `~"experiment idea"`, optionally add: `~"growth experiment"`).

##### Experiment Definition Standards

1. The experiment can be qualitatively measured (i.e. there are no other factors that could give us false data)
1. The experiment is as atomic as possible (i.e. it is easiest to measure one, specific, individual change rather than a series or group of changes)
1. The experiment has clearly defined and reliably measurable success metrics
    - There is consensus around the chosen success metric
    - The success metric is clearly tied to a piece of data which will be collected & measured during the active phase of the experiment ([experiment rollout](#experiment-rollout-issue) issue)
1. The experiment includes an estimated time to significance: how long the experiment would need to run given the population size and expected conversion rate
    - Can use handy tools, like the [A/B-Test Calculator (external)](https://cxl.com/ab-test-calculator/), to help calculate this estimate

##### Experiment Epic

This epic acts as the single source of truth (SSoT) for the experiment once an experiment has been properly defined according to our [Experiment Definition Standards](#experiment-definition-standards) and is deemed worthwhile to run. Once an [Experiment Definition Issue](#experiment-definition-issue) is added to this epic, we fill out further details such as the expected rollout plan. We also assign the experiment to a milestone and follow the product development flow for UX & Engineering work. As the experiment design and rollout progresses, this epic or parent issue should contain details or links to further information about experiment including the tracking events and data points used to determine if the experiment is a success as well as links to relevant metrics-reporting dashboards (such as Sisense).

##### Experiment Rollout Issue

This issue is used to track the experiment progress once deployed. It is similar to a Feature Flag Roll Out issue with an additional `experiment::` scoped label to track the status of the experiment. The [Experiment Tracking] issue template includes an overview of the experiment, who to contact, rollout steps, and a link to the overall experiment issue or epic.

The `experiment::` scoped labels are:

* `~"experiment::pending"` - The experiment is waiting to be deployed
* `~"experiment::active"` - The experiment is active (live)
* `~"experiment::blocked"` - The experiment is currently blocked
* `~"experiment::validated"` - The experiment has been validated (the success criteria was clearly met)
* `~"experiment::invalidated"` - The experiment has been invalidated (the success criteria was clearly unmet)
* `~"experiment::inconclusive"` - The experiment was inconclusive (the success criteria was not clearly met nor clearly unmet)

#### Experiment Cleanup Issue

This issue is used to clean up an experiment after an experiment has been completed. It is created within the project where the cleanup work will be done (e.g. the `gitlab-org/gitlab` project).
The cleanup work may include completely removing the experiment
(in the case of `~"experiment::invalidated"` and `~"experiment::inconclusive"`) or refactoring the experiment feature for the long run (in the case of `~"experiment::validated"`).
The cleanup issue should be linked to the experiment rollout issue as a reference to ensure the experiment is concluded prior to cleanup.

The [Experiment Successful Cleanup](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issuable_template=Experiment%20Successful%20Cleanup) issue template can be used for the `gitlab-org/gitlab` project.

#### Experiment issue templates

- GitLab `gitlab-org/gitlab` project
    - [Experiment idea](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issuable_template=Experiment%20Idea) issue template
    - [Experiment implementation](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issuable_template=Experimentation%20Implementation) issue template for Engineering
    - [Experiment rollout](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issuable_template=Experiment%20Rollout)
    - [Experiment successful cleanup](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issuable_template=Experiment%20Successful%20Cleanup) issue template for converting a successful experiment into a feature
- Growth `team-tasks` project
    - [Milestone planning](https://gitlab.com/gitlab-org/growth/team-tasks/-/issues/new?issuable_template=growth_team_planning_template) issue template for Growth groups
    - [Experiment idea](https://gitlab.com/gitlab-org/growth/team-tasks/-/issues/new?issuable_template=Growth%20experiment) issue template for Growth groups
    - [Experiment rollout](https://gitlab.com/gitlab-org/growth/team-tasks/-/issues/new?issuable_template=Experiment%20Rollout) issue template for Growth groups


## Minimum Viable Experiment (MVE)

Experimentation, like everything at GitLab, should be approached with [the GitLab CREDIT values](/handbook/values/) in mind, specifically the values of [Iteration](/handbook/values/#iteration), [Efficiency](/handbook/values/#efficiency), and [Results](/handbook/values/#results).

The larger an experiment is, the longer it takes to craft a design, implement code changes, review code changes, define and collect necessary data, organize data into meaningful tables, graphs, and dashboards, and so on.
As we build and improve our experimentation platform and increase our ability to quickly create and run experiments, we should [expect a large percentage of all experiments to fail at proving their hypotheses](https://hbr.org/2017/09/the-surprising-power-of-online-experiments#:~:text=At%20Google%20and%20Bing,%20only%20about%2010%25%20to%2020%25%20of%20experiments%20generate%20positive%20results).
Given these invalidated or inconclusive experiments will be rolled back there is an advantage in ensuring experiments are as small and iterative as possible.

With this in mind, there are advantages to considering developing a Minimum Viable Experiment (MVE).
Much like the concept of [Minimum Viable Change (MVC)](/handbook/product/product-principles/#the-minimal-viable-change-mvc), the goal of an MVE is to look for the smallest hypothesis to test, the simplest design for testing that hypothesis, the quickest implementation of the design, the least amount of data to be collected in order to verify the hypothesis, and so on.

So, what might an MVE look like in practice?
Matej Latin shares an example of [a so-called "painted door" test](https://crstanier.medium.com/a-product-managers-guide-to-painted-door-tests-a1a5de33b473) in his blog post, ["Small experiments, significant results and learnings"](https://about.gitlab.com/blog/2021/04/07/small-experiments-significant-results-and-learnings/#do-non-admin-users-want-to-invite-their-team-members).
A simple example of a "painted door" test might be a call-to-action (CTA) button that doesn't really go anywhere – maybe it brings up a simple modal which says "Oops! That feature isn't ready yet," or maybe it takes the user to an existing page in our documentation.
Because the design of this type of MVE is intentionally simple, it is easier and faster to develop, deploy, and start gathering data.
Because the design of this type of MVE is intentionally simple, it is easier and faster to develop and deploy. With a small amount of instrumentation, we can use it as an opportunity to measure initial engagement with that button.
- Who clicks on the CTA?
- How often is it getting clicked?

This can be a fairly low cost way to inform next steps, for example rolling back, developing a larger experiment, or implementing a feature as a follow-up.

Keep in mind that "painted door" tests are not always the best first approach.
The main idea is to strive for an iterative approach to experimentation.
Ask yourself, "Is there a simpler version of this experiment which is worth deploying and which still gives us enough data to know how to proceed?"

## Experiment Status

For real time experiment rollout status GitLab team members can view the [experiments API](https://gitlab.com/api/v4/experiments) ([docs](https://docs.gitlab.com/ee/api/experiments.html)) (a JSON viewer for your browser is recommended).

The "current_status" will be on, off, or conditional. If conditional, there will be either a percentage_of_time or percentage_of_actors. Refer to the [note on feature flags](https://docs.gitlab.com/ee/development/experiment_guide/gitlab_experiment.html#notes-on-feature-flags) in the experiment guide.

There are dashboards in Sisense to indicate whether the experiment flag still exists, but not the current status. These are also only available to GitLab team members.

The [experiment rollout board](https://gitlab.com/groups/gitlab-org/-/boards/1352542?label_name[]=experiment-rollout) lists rollout issues linked to [experiment feature flags](https://docs.gitlab.com/ee/development/feature_flags/#experiment-type) used in development and on SaaS.
