---
title: Custom Models Group
description: "The Custom Models group focuses on additional, custom models that power GitLab Duo functionality in support of our customers unique data and use-cases."
aliases: /handbook/engineering/development/data-science/custom-models
---

## Vision

The Custom Models group focuses on additional, custom models that power GitLab Duo functionality in support of our customers unique data and use-cases.

## Organisation

The AI-powered:Custom Models team focuses on GitLab's suite of Custom Model features and is responsible for all backend aspects of the product categories that fall under the [Custom Models group](/handbook/product/categories/#custom-models-group) of the [AI Powered stage](/handbook/product/categories/#ai-powered-stage) of the [DevOps lifecycle](/handbook/product/categories/#devops-stages). Our Product direction is found on the [Category Direction - Custom Models Management](https://about.gitlab.com/direction/ai-powered/custom_models/) page.

The features we work with are listed on the [Features by Group Page](/handbook/product/categories/features/#custom-models).

### Team OKRs

If you're interested in the team's Objectives and Key Results (OKRs), you can find them on [GitLab](https://gitlab.com/gitlab-com/gitlab-OKRs/-/issues/?sort=title_asc&state=opened&label_name%5B%5D=group%3A%3Acustom%20models&first_page_size=20).

### Team Members

**Engineering Manager & Engineers**

Engineering Manager: [@sean_carroll](https://gitlab.com/sean_carroll)

{{< team-by-manager-slug "sean-carroll" >}}

**Product, Design & Quality**

Product Manager: [@susie.bee](https://gitlab.com/susie.bee)

{{% stable-counterparts manager-role="Engineering Manager(.*)Custom Models" role="Custom Models" %}}

### How to reach us

- Issue Tracker: [`~group::custom models`](https://gitlab.com/dashboard/issues?sort=title_asc&state=opened&label_name[]=group::custom+models)
- Slack Channel: [#g_custom_models](https://gitlab.enterprise.slack.com/archives/C06DCB3N96F)
- Label Subscription: [`~group::custom models`](https://gitlab.com/groups/gitlab-com/-/labels?subscribed=&search=group%3A%3Acustom+models)

#### Organisational Labels

Issues owned by the Custom Models group should have these labels, as appropriate:

- `~"group::custom models"`
- `~"devops::ai-powered"`
- `~"section::data science"`
- `~"Category:Model personalization"`
- `~"Category:Self-Hosted models"`

In addition, issues should contain the relevant `~type:` and subtype labels.

## Team Milestone Planning Process

Custom Models follows the [Product Development Flow](/handbook/product-development-flow/) and uses a planning issue and boards to manage the planning process.
[Planning issues](https://gitlab.com/groups/gitlab-org/-/epics/12950) for each milestone are created by the PM and are used to coordinate upcoming work between the PM, EM and stable counterparts.

In the last week of a milestone, planning is completed for the next milestone. The following activities are undertaken.

- Creation of planning issues and boards (EM)
- Identification of candidate issues for the milestone and addition to Planning Board (PM, EM, SET)
- Team member capacity planning (EM)
- Estimation of effort using weights (Engineers and EM)
- Joint planning session to finialise the planning board (PM, EM, SET)
- Assignment of work to engineers, addition of the `~Deliverable` label, update to the planning issue (EM)

### Planning Issue

Each month a planning issue is created by the EM, using the [Custom Models Planning Issue](https://gitlab.com/gitlab-org/ai-powered/custom-models/custom-models/-/blob/main/.gitlab/issue_templates/milestone-planning-template.md). This is the discussion area for the planning team members (PM, EM, and Software Engineer in Test (SET)) for a specific milestone and links to the Planning and Build Boards.

### Planning Board

The [Planning Board](https://gitlab.com/groups/gitlab-org/-/boards/7472416?milestone_title=17.0&label_name[]=group%3A%3Acustom%20models&label_name[]=planning%20priority) is created for each milestone by the PM, and is a curated list of issues by category. The EM requests engineers to allocate weights to all issues on this board prior to milestone planning.

### Ready for Development Status

Issues that are ready to be worked on by an engineer are labeled `workflow::ready for development`. Only issues with this label should be assigned to an engineer as a Deliverable. If research is required, the `~spike` label is assigned, but the scope of the spike should be clearly stated in the issue and an outcome might be code written or a refined issue created.

### Capacity Planning Spreadsheet

The EM maintains a [Google Sheet](https://docs.google.com/spreadsheets/d/18LhwZpsJ6G-1GBv0EDOq0E7EIAMpgsHqEg8Dn5GJmz0/edit#gid=1428069441) _GitLab internal only_ for calculating team capacity, and the same Spreadsheet is also used to perform the process of assigning issues to the release based on weight and priority. The EM posts the team capacity on the Planning Issue.

### Build Board

The EM selects issues from the [Planning Board](#planning-board) based on:

- previous milestone slippage
- PM preference
- weight
- priority

The EM then applies the ~Deliverable label to each issue in the Release and assigns then to an engineer. The issues are tracked through the release via the Build Board.

### Issue Weights

A weight is assigned to each issue as an estimation of work to close the issue. A weight of 1 is approximately 2 working days of effort. Generally issues are not weighted above a weight of 3: larger weights indicate the issue should be broken down further.

### Planning and Delivery Boards

All workflow statuses in the [Product Development Flow](/handbook/product-development-flow/) are valid, and the statuses and milestones tied to boards are below.

The [Next 1-3](https://gitlab.com/groups/gitlab-org/-/boards/7472817?milestone_title=Next%201-3%20releases&label_name[]=group%3A%3Acustom%20models) and [Next 4-6 milestones](https://gitlab.com/groups/gitlab-org/-/boards/7472821?milestone_title=Next%204-6%20releases&label_name[]=group%3A%3Acustom%20models) boards are used to house issues which need refinement or are ready to be worked on.

| Board       | Filters           | Columns            |
|-------------|-------------------|--------------------|
| Planning Board | Milestone, `~group::custom models`, `~planning priority` | `~type::bug`, `~type::maintenance`, `~type::feature` |
| Build Board    | Milestone, `~group::custom models`, `~Deliverable` | `~workflow::ready for development`, `~workflow::in dev`, `~workflow::in review`, `~workflow::awaiting security release`, `~workflow::blocked` |
| Next 1-3 Milestones | `%Next 1-3 Milestones` | `~workflow::problem validation`, `~workflow::problem validation`, `~workflow::design`, `~workflow::solution validation`, `~workflow::planning breakdown`, `~workflow::ready for development`     |
| Next 4-6 Milestones | `%Next 4-6 Milestones` | Same as `Next 1-3 Milestones`     |

### Issue Milestones

- Issues are assigned the current or next milestone if they are planned to be worked on or are currently being worked on.
- A milestone of `%Backlog` is assigned if issues are not intended to be worked on, although they may be addressed by a community contribution.
- Issues with a milestone of `%Awaiting Customer Feedback` may be worked on, pending customer interest.

The [issue triage report](https://gitlab.com/gitlab-org/quality/triage-reports/-/issues/17099) highlights issues which need a milestone assignment.

## Blog Posts

Blog posts written by Custom Model's team members

- [Developing GitLab Duo: How we validate and test AI models at scale](https://about.gitlab.com/blog/2024/05/09/developing-gitlab-duo-how-we-validate-and-test-ai-models-at-scale/) [@susie.bee](https://gitlab.com/susie.bee)

## Communication

The Custom Models communicates based on the following guidelines:

1. Always prefer async communication over sync meetings.
1. Don't shy away from arranging a [sync call](#ad-hoc-sync-calls) when async is proving inefficient, however endevour record it to share with team members.
1. [Transparency by Default](/handbook/security/transparency-by-default/)
1. The primary channel for work-related communication is the [#g_custom_models](https://gitlab.enterprise.slack.com/archives/C06DCB3N96F) Slack channel.
1. Internal team issues and projects are namespaced under [`gitlab-org/ai-powered/custom-models`](https://gitlab.com/gitlab-org/ai-powered/custom-models)

## Asking for help

Don't hesitate to ask for help from other team members via the [#g_custom_models](https://gitlab.enterprise.slack.com/archives/C06DCB3N96F) Slack channel.

## Acknowledgement of Pings

If you are pinged by name in either Slack or GitLab, please acknowledge the ping by either:

- A threaded comment
- An emoji

## Time Off

Team members should add any [Paid Time Off](/handbook/people-group/paid-time-off/) in the "Time Off by Deel" slack app, so that the Engineering Manager can use the proper number of days off during capacity planning. Where possible, try to add time off a full milestone in advance.

It is recognised there can always be last-minute, unplanned PTO needs. Please take any time you need, but enter it into PTO Deel and communicate with the EM as soon as you can.

## Ad-hoc sync calls

We operate using async communication by default. There are times when a sync discussion can be beneficial and we encourage team members to schedule sync calls with the required team members as needed.

## Identification of Open Source Models for GitLab Duo

As new open source models emerge, we will want to consider them for GitLab Duo use-cases. Here we define and document the process of identifying new models and baselining their performance for Duo features.

The following is a general guide for identifying open source models:

1. gain a thorough understanding of the Duo Feature to be enabled with open source models and identify use cases required for each feature (an example of use-cases per feature is [here](https://gitlab.com/groups/gitlab-org/-/epics/13760#features-and-open-source-models-for-consideration "Self Hosted Model Deployment - Duo Chat"))
   - document use-cases identified within [each Feature's epic](https://gitlab.com/groups/gitlab-org/-/epics/13069#by-feature-self-hosted-support "Category: Self-Hosted Model Deployment")
   - note that some use-cases may already be identified as components of the AI Validation pipeline for that or another feature; an example of this is the code generation use-case, which is a component of both Code Suggestions and Duo Chat
2. research and understand how existing and popular industry benchmarks relate to Duo Feature use-cases
   - update this documentation to add additional industry benchmarks identified for each use case with a description of the benchmark under "[Industry Benchmarks](https://gitlab.com/gitlab-org/gitlab/-/issues/461070#industry-benchmarks "Document how to identify Open Source Models for Duo use cases")"
3. document the performance of open source models against those identified industry benchmarks
   - leverage model leaderboards to help identify models and document performance; examples of leaderboards include:
     - [HuggingFace Open LLM Leaderboard](https://huggingface.co/spaces/HuggingFaceH4/open_llm_leaderboard)
     - [HuggingFace Chatbot Arena Leaderboard](https://huggingface.co/spaces/lmsys/chatbot-arena-leaderboard)
     - [HELM Leaderboard](https://crfm.stanford.edu/helm/lite/latest/#/leaderboard)
     - [CanAICode Leaderboard](https://huggingface.co/spaces/mike-ravkine/can-ai-code-results)
     - [LMSYS Chatbot Arena Leaderboard](https://chat.lmsys.org/?leaderboard)
     - [BigCodeBench Leaderboard](https://huggingface.co/spaces/bigcode/bigcodebench-leaderboard)
     - additional resources
       - https://github.com/underlines/awesome-ml/blob/master/llm-tools.md#leaderboards
       - https://bellard.org/ts_server/
   - add additional leaderboards of high utility to this documentation as they are identified
4. document any potential supply-chain or license issues (we prefer [gold or silver](https://blueoakcouncil.org/list)) that would prohibit/limit viability of self-hosting that model for our security-conscious customer base
5. verify that the open source model has not already been proposed and validated for the feature via the Custom Models [supported models documentation](https://docs.gitlab.com/ee/administration/self_hosted_models/install_infrastructure.html#step-1-install-llm-serving-infrastructure) and/or [top level epic for the relevant feature](https://gitlab.com/groups/gitlab-org/-/epics/13069#by-feature-self-hosted-support "Category: Self-Hosted Model Deployment").
6. if a custom Gitlab dataset already exists representing the identified use-case, follow the steps outlined in "Local Model Baselining and Prompt Development for Self-Hosted Models" for [Local Model Baselining](https://gitlab.com/gitlab-org/gitlab/-/issues/468933#local-model-baselining "Local Model Baselining and Prompt Development for Self-Hosted Models")
7. examine results of the baseline process for the model against other foundational models (available via dashboards for each feature) and assess viability of the model for the Duo feature.
   - note that industry benchmarks can only serve as a guide for models to validate, and not a validation itself as OS models scores may be higher on industry benchmarks that Gitlab use-case specific datasets

### Industry Benchmarks

<table>
<tr>
<th>Duo Feature Supported</th>
<th>feature / sub-feature</th>
<th>industry benchmark</th>
<th>description</th>
<th>

</th>
</tr>
<tr>
<td>Code Suggestions</td>
<td>code generation</td>
<td>MBPP</td>
<td>The MBPP (Mostly Basic Python Problems) dataset consists of around 1,000 crowd-sourced Python. programming problems, designed to be solvable by entry level programmers, covering programming. fundamentals, standard library functionality, and so on. Each problem consists of a task.</td>
<td>

</td>
</tr>
<tr>
<td>Code Suggestions</td>
<td>code completion</td>
<td>

[BigCodeBench](https://huggingface.co/blog/leaderboard-bigcodebench)
</td>
<td>

BigCodeBench contains 1,140 function-level tasks to challenge LLMs to follow instructions and compose multiple function calls as tools from 139 libraries. To evaluate LLMs rigorously, each programming task encompasses 5.6 test cases with an average branch coverage of 99%. Currently, **BigCodeBench is Python-only and cannot be easily extended to other programming languages.** 
</td>
<td>

</td>
</tr>
<tr>
<td>Chat</td>
<td>NLP</td>
<td>MMLU</td>
<td>A wide-ranging benchmark suite designed to push LLMs beyond the basics. It features over 15,000 questions across 57 diverse tasks, spanning STEM subjects, humanities, and other areas of knowledge. MMLU aims for a comprehensive evaluation. Questions go beyond simple factual recall – they require reasoning, problem-solving, and an ability to understand specialised topics.</td>
<td>

</td>
</tr>
<tr>
<td>Chat</td>
<td>NLP</td>
<td>SuperGLUE</td>
<td>

GLUE (General Language Understanding Evaluation) was an early but groundbreaking benchmark suite. SuperGLUE emerged as a response to LLMs quickly outperforming the original GLUE tasks. These benchmarks include tasks like:

Natural Language Inference: Does one sentence imply another?

Sentiment Analysis: Is the attitude in a piece of text positive or negative?

Coreference Resolution: Identifying which words in a text refer to the same thing.
</td>
<td>

</td>
</tr>
</table>


## Metrics

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="custom models" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
  {{< tableau/filters "GROUP_LABEL"="custom models" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/Flakytestissues/FlakyTestIssues" >}}
  {{< tableau/filters "GROUP_NAME"="custom models" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/SlowRSpecTestsIssues/SlowRSpecTestsIssuesDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="custom models" >}}
{{< /tableau >}}

<!-- LINKS START -->


<!-- LINKS END -->
