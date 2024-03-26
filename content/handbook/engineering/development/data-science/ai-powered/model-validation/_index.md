---
title: AI Model Validation Group
description: "The Model Validation group is focused on how to extend GitLab functionality to provide additional value by leveraging ML/AI."
aliases: /handbook/engineering/development/data-science/model-validation
---

## Vision

The Model Validation group is focused on how to extend GitLab functionality to provide additional value by leveraging ML/AI. This group will build on existing successful GitLab categories and features to make them smarter, easier to use, and more intelligent.

[Commit Virtual 2021: What the ML is up with DevOps and AI? A ModelOps Overview](https://www.youtube.com/watch?v=7mUgGFgab4E)

## How we work

- We work in accordance with our [GitLab values](/handbook/values/).
- We work [transparently](/handbook/values/#transparency), keeping nearly everything public.
- We get a chance to work on the things we want to work on.
- We have a [bias for action](/handbook/values/#bias-for-action).
- We make data-driven decisions.
- Everyone can contribute to our work.

## Direction

[Group direction](https://about.gitlab.com/direction/modelops/ai_assisted/)

## Team members

The following people are permanent members of the Model Validation Group:

| Who | Role |
| --- | --- |
| [Hongtao Yang](/handbook/company/team/#hongtaoyang) | Backend Engineer |
| [Andras Herczeg](/handbook/company/team/#andrasherczeg) | Backend Engineer |
| [Stephan Rayner](/handbook/company/team/#srayner) | Senior Backend Engineer |
| [Tan Le](/handbook/company/team/#tle_gitlab) | Senior Fullstack engineer |
| [Monmayuri Ray](/handbook/company/team/#mon) | Engineering Manager |
| [Susie Bitters](/handbook/company/team/#susie.bee) | Product Manager |
| [Katie Macoy](/handbook/company/team/#kmacoy) | Senior Product Designer |
| [Taylor McCaslin](/handbook/company/team/#tmccaslin) | Group Product Manager |

## How to contact us

- Tag a team member in a merge request or issue
- Post a message in the #g_ai_model_validation Slack channel (internal only)

##  Responsibilities

Team responsibilities include:

- Creating, testing, and tuning ML models
- Creating PoCs for AI features, all in accordance with the product roadmap and alignment between the AI Assisted and AI Framework teams. The PoC proves the concept. It doesn't need to implement non-functional requirements such as performance, availability, maintainability, observability, etc.  A PoC may also be written a different language than what is implemented in production (Python to Ruby or vice-versa).  This is similar to how [the vulnerability research and secure development teams operate](/handbook/engineering/development/sec/secure/vulnerability-research/#how-we-work).
- Turning these PoCs over to the relevant product group (such as AI Framework formerly called AI Enablement) to be productized and supported long-term. This is a similar to how the [vulnerability research team](/handbook/engineering/development/sec/secure/vulnerability-research/) operates (examples of the transition process followed for [LicenseDB](https://docs.google.com/document/d/1NQwdmgngmFLS-0iA5DhywKf_8H7w0oJQfmWRPyKG5i0/edit#heading=h.xr5pzhtyxvhi) and [VET](https://docs.google.com/presentation/d/1VAtshsRQaF9PRSNGL-A9uDQUm38k7tBxDrhRqGrWqzc/edit#slide=id.p)).

## Short term priorities

- Improving the user acceptance rate of code suggestions.
- Custom evaluation pipelines (prompt library) - [Epic](https://gitlab.com/groups/gitlab-org/modelops/applied-ml/code-suggestions/-/epics/10)

## Project management process

Our team uses a hybrid of Scrum for our project management process. This process follows GitLab's [monthly milestone release cycle](/handbook/marketing/blog/release-posts/#schedule).

### Workflow

Our team use the following workflow stages defined in the [Product Development Flow](/handbook/product-development-flow/#workflow-summary):

### Epic roadmap

We use an epic roadmap to track epic progress on a quarterly basis.

### Issue boards

We use issue boards to track progress to track issue progress. Issue boards are our single source of truth for the status of our work. Issue boards should be viewed at the highest group level for visibility into all nested projects in a group.

Currently, we have two boards for two different initiatives:

- [Code Suggestions](https://gitlab.com/groups/gitlab-org/-/boards/5885823?label_name%5B%5D=Category%3ACode%20Suggestions) - collaboration across AI Assisted and AI Framework groups
- [AI Assisted Research](https://gitlab.com/groups/gitlab-org/-/boards/5929371?label_name[]=Category%3ACode%20Suggestions&label_name[]=group%3A%3Aai%20assisted)

### Iteration

We follow the [iteration process](/handbook/engineering/development/principles/#iteration) outlined by the Engineering function.

### Weekly refinement

Refinement is the responsibility of every team member. Every Friday, Slack will post a refinement reminder in our group channel. During refinement, we make sure that every issue on the issue board is kept up to date with the necessary details and next steps.

Each engineer is expected to provide a quick async issue update by commenting on their assigned issues using the following template:

```markdown
<!---
Please be sure to update the workflow labels of your issue to one of the following (that best describes the status)"
- ~"workflow::In dev"
- ~"workflow::In review"
- ~"workflow::verification"
- ~"workflow::complete"
- ~"workflow::blocked"
-->
### Async issue update
1. Please provide a quick summary of the current status (one sentence).
1. When do you predict this feature to be ready for maintainer review?
1. Are there any opportunities to further break the issue or merge request into smaller pieces (if applicable)?
1. Were expectations met from a previous update? If not, please explain why.
```

We do this to encourage our team to be more async in collaboration and to allow the community and other team members to know the progress of issues that we are actively working on.

### Milestone Planning and Timeline

Our team follows the [Product Development Timeline](/handbook/engineering/workflow/#product-development-timeline) as our group is dependent on the [GitLab self-managed release cycle](https://about.gitlab.com/upcoming-releases/). Here is a our [Milestone progress for Suggested Reviewer](https://gitlab.com/groups/gitlab-org/modelops/applied-ml/review-recommender/-/boards/4228790)

### Issue labels

We use issue labels to keep us organized. Every issue has a set of required labels that the issue must be tagged with. Every issue also has a set of optional labels that are used as needed.

**Required labels**

- Stage: `~devops::modelops`
- Group: `~group::AI Assisted`

### Merge request labels

MR labels can mirror issue labels (which is automatically done when created from an issue), but only certain labels are required for correctly [measuring engineering performance](#measuring-engineering-performance).

**Required labels**

- Stage: `~devops::modelops`
- Group: `~group::AI Assisted`

### Milestones

We tag each issue and MR with the planned milestone or the milestone at time of completion.

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

<!-- <%# TBD Mon to update as the dashboads are empty %> -->
