---
title: AI Model Validation Group
description: "The Model Validation group is focused on supporting GitLab teams to make data-driven feature development decisions leveraging ML/AI."
aliases: /handbook/engineering/development/data-science/model-validation
---

## 📝 Mission

The AI Model Validation team mission is to support and improve the integrity, reliability, and effectiveness of Generative AI solutions thorough evaluation, validation, and research science processes for GitLab Duo Features. We offer a centralized evaluation framework that promotes data-driven decision-making and pragmatic refinement of AI features. We further explore methods and techniques on forward deployed research science in the Gen AI space

## Direction

[Group direction](https://about.gitlab.com/handbook/engineering/development/data-science/ai-powered/model-validation/).
We have two categories under this group. Category AI Evaluation and Category AI Research. This group followed under the 
stage AI-Powered.

## 🚀 Team members

The team is composed of [ML engineers](https://handbook.gitlab.com/job-families/engineering/development/data-science/machine-learning/) focused on ML science and MLOps backend, and they are permanent members of the AI Model Validation Group

| Who | Role |
| --- | --- |
| [Hongtao Yang](/handbook/company/team/#hongtaoyang) | ML Engineer |
| [Andras Herczeg](/handbook/company/team/#andrasherczeg) | Senior ML Engineer |
| [Stephan Rayner](/handbook/company/team/#srayner) | Senior ML Engineer |
| [Tan Le](/handbook/company/team/#tle_gitlab) | Senior ML Engineer |
| [Monmayuri Ray](/handbook/company/team/#mon) | Engineering Manager |
| [Susie Bitters](/handbook/company/team/#susie.bee) | Senior Product Manager |

## ☎️  How to contact us

- Tag a team member in a merge request or issue
- Slack Channel: [`#g_ai_model_validation`][slack]

## Customer outcomes we are driving for GitLab-Duo

The customer outcomes we are focused on can be divided into themes below

#### Benchmark for Quality and Performance Metric of Foundational Model and Feature
We first assess the models and the feature on a large-scale dataset to understand and benchmark quality metrics from a set of metrics. We provide dashboards for diagnostic purposes as well as a continuous daily run dashboard so we can track how the features are performing based on the benchmark.

#### Evaluation as tool for Software Engineer to experiment as they iterate and build AI Features
After the initial assessment, we have a dynamic dataset pull from daily runs so feature teams can run the datasets with every code and prompt change via CLI. This helps them understand how changes in code /prompt/system can impact quality based on the variance between control (before change) and test (after change) code on a primary metric of choice.

#### Documentation as we use new ways and processes as we embrace GenAI
We are further iterating and documenting an evaluation-centric way of building GenAI features. This is mainly for the internal team, and the epic to track this can be found here.

Our current customers include GitLab [AI powered Duo feature teams:](https://docs.gitlab.com/ee/user/ai_features.html)

The immediate customers include: 

1. [AI Powered: Duo-Chat team](https://about.gitlab.com/direction/ai-powered/duo_chat/)
2. [Create: Code Creation team](https://about.gitlab.com/direction/create/code_creation/)
3. [Govern:Threat Insights `Vulnerability explanation` team](https://about.gitlab.com/direction/govern/threat_insights/vulnerability_management/)
4. [Root Cause Analysis](https://docs.gitlab.com/ee/user/ai_features.html#root-cause-analysis)
5. [Issue Summarization](https://docs.gitlab.com/ee/user/ai_features.html#issue-description-generation)
6. [AI Powered: Group Custom Models](https://about.gitlab.com/direction/ai-powered/custom_models/)


## 🧪 Top FY25 Priorities

Data Driven evaluated AI Solutions with every code change.
We encompass two categories on AI Evaluation and AI Research. Our goal is to empower each team building AI features to confidently deliver meaningful and relevant features for GitLab customers. As a long-term initiative, we aim to expand our Centralized Evaluation Framework to assess various models, AI features, and components based on quality, cost, and latency. The primary decision factors for AI content quality are:

- Is it honest? (consistent with facts)
- Is it harmless? (not include content that might offend and harm)
- Is it helpful? (accomplishing the end goal of the user)

We also aim for AI Engineers to leverage the Centralized Framework for experimenting and expanding from prompt engineering, RAG, Agent, to model tuning.
This can be achieved through the Framework's API for the Prompt Library, recognizing that every code change significantly impacts the input and output of LLMs.

Further there are novel research topics and we would love GitLab presented in the AI Research community by publishing our approaches on Evaluation

## 📚 Prompt Library ( Data)

We create large libraries ( prompts as data) that serves as a proxy to production. We do this by understanding various complexities of tasks and methods so we can holistically evaluate a set of data beyond few tests but more as a performance in production. The currents tasks we have included or are planning in the immediate team  in the prompt library would be 
1. Code Completion 
2. Code Genertation
3. Issue/Epic
4. Documentation Dataset
5. /slash Commands( In Progress)
6. Vulnerability Explanation( To be added)  

## 🔍 Metrics 

There are few different metrics that we use to asses. If we have establish ground truth we do an assessment with similarity and cross similarity score. If the ground truth is not establish we use Consensus Filtering as LLM Based evalutor through Independent LLM Judge and Collective LLM judge. We are always iterating and evolving our metric pipeline 

#### Similarity Score

This metric evaluates the degree of similarity between an answer generated by a point solution and those produced by other LLMs,
such as Claude-2, Text-Bison, and GPT-4, response to the same question or to ground truth.

#### Independent LLM Judge

This metric involves soliciting evaluations from LLM Judges to assess the quality of answers provided given a specific question and context.
Judges are tasked with assigning scores based on three key aspects: correctness, comprehensiveness, and readability.
To enhance the credibility of these scores, multiple LLMs can participate as judges. For instance, if three judges unanimously agree that an answer is subpar, we can confidently conclude its quality.

#### Collective LLM Judge

This metric operates similarly to the "LLM Judge" metric but consolidates all answers generated by each answering model into a single prompt.
Judges are then tasked with comparing these consolidated responses and assigning scores accordingly.


## 📦 Team Processes

We have a global distributed team spanning accross EMEA , AMER , APAC and we have two sync session weekly empathising on the team's preferances and change the time periodically based on the team's preferance. 
We have meetings dedicated to milestone planning as we as engineering dicussion or on ideation. 

### 📆 Regular team meetings

#### Team Meetings

1. **Weekly Team Sync**
   * **When:** Every Wednesday, 21:00 GMT
   * **What:** This meeting is dedicated to working on the vision and roadmap . The Engineering Manager and Product Manager ideate , discuss and assign work as needed for the entire team.

2. **Weekly Engineering Sync**
   * **When:** Every Tuesday, 21:00 GMT
   * **What:** This meeting is dedicated to the engineering team for the purpose of syncing up on progress, discussing technical challenges, and planning upcoming week and milestones. This is also to ideate on future milestone and building validation as a product.

3. **Quarterly Creative Destruction Labs**
   * **When:** Once in 8 weeks a 48 hour collab session. 
   * **What:** This is a 48 hour session of working comprised of syn and async where under the Category AI research the team comes together as part of a lab , to take a topic to destruct and old way and rebuild in a new way to be able to rapidly iterate to the Product Roadmap and Vision 

### 🌍 Shared calendars

* AI-Powered Stage Calendar (Calendar ID: `c_n5pdr2i2i5bjhs8aopahcjtn84@group.calendar.google.com`)

### 🖖 Weekly and Quarterly Updates

Each week, the team publishes a report on the progress made during the past week and outlines the focus for the upcoming week. The report also includes a GenAI reading list to ensure that the engineers stay up-to-date in the ever-changing GenAI space [here](https://gitlab.com/gitlab-org/modelops/ai-model-validation-and-research/annoucements/-/issues).

We also publish a quarterly report that summarizes how we perform in reference to OKRs, highlights our achievements, celebrates milestones, identifies opportunities, and shares learnings. [here](https://gitlab.com/gitlab-org/modelops/ai-model-validation-and-research/annoucements/-/issues/13)

### 📹  GitLab Playlist

We conduct regular walkthroughs as we add data, metrics, and evaluation workflows.[GitLab AI Model Validation Playlist](https://www.youtube.com/playlist?list=PL05JrBw4t0KrJQLuBcVpgFTPGMLfy5l_l) includes a list of these walkthroughs. Some videos published might be for internal purposes only

### 🎯 Current OKR 

Our current OKR can bbe viewed [here](https://gitlab.com/gitlab-com/gitlab-OKRs/-/work_items/6943) (GitLab internal)

### 🔗 Epics and Themes

We have two major epic that can be subdivided into further sub-epics and issues. The themes are based on the Category AI Evaluation and Category AI Research 

- [Category AI Evaluation ](https://gitlab.com/groups/gitlab-org/modelops/ai-model-validation-and-research/-/epics/19)
- [Category AI Research](https://gitlab.com/groups/gitlab-org/modelops/ai-model-validation-and-research/ai-research/-/epics/1)

## 🔄 How to work with us? 

We have issue templates for requesting a new model evaluation or for evaluating a feature (Internal Only). Below are the request templates that can be used .

1. If a feature team would like a model to be evaluated for a certain task, here is the request template:[Model Request](https://gitlab.com/gitlab-org/modelops/ai-model-validation-and-research/ai-evaluation/prompt-library/-/blob/main/.gitlab/issue_templates/Model%20Request.md?ref_type=heads)
2. If a feature team would like to evaluate a certain use case, here is the request template:[Use-Case Request](https://gitlab.com/gitlab-org/modelops/ai-model-validation-and-research/ai-evaluation/prompt-library/-/blob/main/.gitlab/issue_templates/Use%20Case%20Request.md?ref_type=heads)

Further , we iterate and act more quickly with feedback and [here](https://gitlab.com/gitlab-org/modelops/applied-ml/code-suggestions/prompt-library/-/issues/31) is the best place for provide feedback.


## 📝 Dashboards and additional Resources (internal only)
- [Gitlab Duo-Chat Evaluation Dashboard](https://lookerstudio.google.com/u/0/reporting/151b233a-d6ad-413a-9ebf-ea6efbf5387b/page/ay5gB)
- [GitLab Code Completion Foundational Model Dashboard](https://dashboards.gitlab.net/d/fecc5b69-8e38-4b4e-9fed-1c837f9c2b7m/code-completion-ai-evaluations-v1?orgId=1)
- [GitLab Code Suggestion Dashboard](https://lookerstudio.google.com/u/0/reporting/4a80a4ce-441c-4fb1-9454-ab5523d1cffc/page/ay5gB)
- [GitLab AI Testing and Evaluation Framework](https://internal.gitlab.com/handbook/product/ai-strategy/ai-integration-effort/ai_testing_and_evaluation/)
- [How to use CEF for Duo-chat Experimentation](https://gitlab.com/gitlab-org/modelops/ai-model-validation-and-research/ai-evaluation/prompt-library/-/tree/main/doc/how-to?ref_type=heads#:~:text=1%20month%20ago-,run_duo_chat_eval.md,-Update%20duo%20chat)
- [How to use CEF for Code Suggestion Experimentation](https://gitlab.com/gitlab-org/modelops/ai-model-validation-and-research/ai-evaluation/prompt-library/-/blob/main/doc/how-to/run_code_creation_eval.md?ref_type=heads)
- [Prompt Template for Models and Tasks Evaluated](https://gitlab.com/gitlab-org/modelops/ai-model-validation-and-research/ai-evaluation/prompt-library/-/tree/main/data/prompts?ref_type=heads)
- [Genenral Guidance of A/B Testing using CEF](https://docs.google.com/document/d/18c3GYxelFbVJOIjibshBIxT0orxDdNxqQM3RbZ3j34A/edit#heading=h.ek176csspj1b)

## 🔗 Additional Resources 
- [GitLab Validation Metrics](https://about.gitlab.com/direction/ai-powered/ai_model_validation/ai_evaluation/metrics/)
- [ Gitlab Evaluation Procedure](https://about.gitlab.com/direction/ai-powered/ai_model_validation/ai_evaluation/procedures/)
- [Blog: How we de validate and test at scale](https://about.gitlab.com/blog/2024/05/09/developing-gitlab-duo-how-we-validate-and-test-ai-models-at-scale/)

**Required labels**

- Group: `~group::ai model validation`

<!--

## Team Meetings

Our group holds synchronous meetings to gain additional clarity and alignment on our async discussions. We aspire to record all of our meetings as our team members are spread across several time zones and often cannot attend at the scheduled time.

We have a weekly team meeting at 11pm Pacific on Wednesdays (as many team members are in APAC).

Meetings will be in the [`Model Validation Group` playlist in GitLab Unfiltered](https://www.youtube.com/playlist?list=PL05JrBw4t0Kp5fbMFUOKl-uroknEjofJ3)

### Technical Architecture

The team primary codes in python and as part of Ml workflows we build pipelines starting from dataops to mlops. Most of our models our trained using GPU enabled runners and the framework would depend on the use-case. As part of the ML architecture here are the following tools we also use

- Google Data Flow
- Pub/Sub
- Google PostGres

We are always exploring new tools and frameworks to optimize the ML workflow . Currently we here are things we are exploring

- Clickhouse Datastore to store Model data for AI Assisted
- Pytorch as a framework
- Opensource tools for Model Monitoring and Observability
- [Code Suggestion Architecture ] (https://docs.gitlab.com/ee/architecture/blueprints/ai_gateway/#example-feature-code-suggestions)

### Demos

We periodically showcase demos, and if there is any specific demo on Machine learning that would be beneficial, we would love to hear from you. We have monthly demo days when the team presents recent work done in ML, answers questions relevant to ML, and makes tutorials.  Here is a list

- [CI/CD for Machine-learning](https://www.youtube.com/watch?v=7mUgGFgab4E)
- [Suggested Reviewer MLOPS pipeline using GitLab]
- [Prompt Template for LLM's] (https://youtu.be/jR8Czar0cU8)

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="ai model validation" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
  {{< tableau/filters "GROUP_LABEL"="ai model validation" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/Flakytestissues/FlakyTestIssues" >}}
  {{< tableau/filters "GROUP_NAME"="ai model validation" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/SlowRSpecTestsIssues/SlowRSpecTestsIssuesDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="ai model validation" >}}
{{< /tableau >}}

-->
