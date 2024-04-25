---
title: AI Framework Group
description: "The AI Framework group is focused on how to support other product groups at GitLab with the AI Abstraction Layer, and GitLab AI feature development."
aliases: /handbook/engineering/development/data-science/ai-framework
---

## Vision

The AI Framework group is focused on how to support other product groups at GitLab with the AI Abstraction Layer, and GitLab AI feature development.

### 👌 Team OKRs

If you're interested in the team's Objectives and Key Results (OKRs), you can find them on [GitLab](https://gitlab.com/gitlab-com/gitlab-OKRs/-/issues/?sort=title_asc&state=opened&label_name%5B%5D=group%3A%3Aai%20framework&first_page_size=20).

### 🚀 Team Members

**Engineering Manager & Engineers**

{{< team-by-manager-slug "davidoregan" >}}

**Product, Design & Quality**

{{% stable-counterparts manager-role="Engineering Manager(.*)AI Framework" role="AI Framework" %}}

**Team members who are supporting this team on a short-term basis are located [here](https://comp-calculator.gitlab.net/org_chart) where "Work priorities" include "AI Framework."**

### ☕ Team Responsibilities

**Team responsibilities include**

* Facilitating the integration of AI capabilities throughout GitLab by leveraging the AI Abstraction Layer and AI Gateway.
* Guaranteeing the presence of comprehensive global observability, monitoring, documentation, and enhancements in latency.
* Providing essential support for our AI chat system framework.
* Incorporating support for new AI providers when required.
* Assisting with the production support and ensuring the readiness of the AI Gateway.
* LLM inference support, including prompt enginering, response evaluation, fine tuning, evaluation, and more.

### ☎️ How to reach us

Depending on the context here are the most appropriate ways to reach out to the IDE Group:

- Slack Channel: [`#g_ai_framework`][slack]
- Slack Groups: `@ai-framework` (entire team) and `@ai-framework-engs` (just engineers)

## 📦 Team Processes

### 📆 Regular team meetings

**❗️Important**: For every meeting, the [AI Framework team's meeting document][gdoc] should be used, and filled with the meeting notes, as well as references to any other sync meeting agendas/notes/recordings which have recently occurred. This will make it easier for people to find any meeting notes.

#### Team Meetings

1. **Weekly Work Assignment Meeting**
   - **When:** Every Monday, alternating between 09:00 AM GMT+1 and 17:00 PM GMT+1
   - **What:** This meeting is dedicated to workload assignment. The Engineering Manager and Product Manager assign work as needed for the entire team.

2. **Bi-Weekly Engineering Sync**
   - **When:** Every other Thursday, alternating between 11:00 AM GMT+1 and 18:00 PM GMT+1
   - **What:** This meeting is dedicated to the engineering team for the purpose of syncing up on progress, discussing technical challenges, and planning upcoming sprints.

3. **Monthly Sync Retro**
   - **When:** Once a month
   - **What:** This meeting is for our team retrospectives. We reflect on the past month, discuss what went well and what could be improved.

### Shared calendars

- AI Framework PTO (Calendar ID: `c_eca9440729dba2cbd88b3117fa70839836fb5811cb072132b94c52f912a31bf5@group.calendar.google.com`)
- AI-Powered Stage Calendar (Calendar ID: `c_n5pdr2i2i5bjhs8aopahcjtn84@group.calendar.google.com`)

AI Framework team members should [sync your PTO events](/handbook/people-group/engineering/team-pto-calendar/) with AI Framework PTO calendar.

### 🖖 Weekly EM Updates

Each week the team EM provides a Weekly Status update issue which aims to capture the most important items for the team to be aware of. These can be found [here](https://gitlab.com/gitlab-org/ai-powered/ai-framework/team-hq/-/issues/?sort=title_asc&state=opened&label_name%5B%5D=Weekly%20Announcements&first_page_size=20).

### 📚 AI Framework Board Outline

Our workflow process for our [board](https://gitlab.com/groups/gitlab-org/-/boards/7346017?label_name[]=group%3A%3Aai%20framework) is outlined below.

1. **Open** 📝: This list contains all identified issues. An engineering manager will be assigned if either the Milestone or the label "workflow::ready for development" is missing.
2. **workflow::problem validation** 🧪: Issues here are undergoing validation to ensure the proposed solution meets the requirements. Once validated, the "ready for development" label is applied.
2. **workflow::ready for development** 🎯: Issues that have been prioritized and assigned to a specific milestone are moved to this list and the "ready for development" label is applied.
3. **workflow::in dev** 👩‍💻: When a developer starts working on an issue, they should move it to this list and apply the "in dev" label.
4. **workflow::in review** 👀: Once the development work on an issue is complete, it should be moved to this list and the "in review" label should be applied.
5. **workflow::verification** ✅: After the code and UX review is complete, the issue should be moved to this list and the "verification" label should be applied.
6. **workflow::complete** 🎉: Once the issue has been verified and everything is working, it should be moved to this list, the "complete" label should be applied, and the issue should be closed.

### 📝 Issue Priority

To ensure that our developers are aware of the priority of their work, we [use three labels](https://gitlab.com/groups/gitlab-org/-/labels?subscribed=&sort=relevance&search=AIF):

- **AIF-Priority::1**: This label is for issues that are of the highest priority. These issues should be addressed first.
- **AIF-Priority::2**: This label is for issues that are of medium priority. These issues should be addressed after all Priority 1 issues have been resolved.
- **AIF-Priority::3**: This label is for issues that are of lower priority. These issues should be addressed after all Priority 1 and Priority 2 issues have been resolved.

### 🔄 Processes

#### 🗓️ Weekly

1. **Open 🆕**: (DRI: PM) Capture and list new issues as they arrive. This stage serves as the initial holding area where issues await further classification and prioritization.
2. **Workflow Design ✍️**: (DRI: Designer) Move issues into this lane for design refinement. Focus on detailing user experience and interface design. Essential for aligning the visual and functional aspects of the solution with user needs.
3. **Workflow Refinement 🔧**: (DRI: Engineering Lead) Issues undergo technical refinement here. Engineers review and adjust the technical aspects to ensure feasibility and adherence to technical standards.
4. **Workflow Ready for Development 🎯**: (DRI: PM/EM) Transition issues that have completed the refinement process here. They are fully specced and ready for developers to start coding.
5. **Workflow in Development 💻**: (DRI: Assigned Developer) Coding and implementation of workflows happen in this stage. Developers build out the features and functionalities as specified.
6. **Workflow in Review 🔍**: (DRI: QA/Reviewer) Conduct thorough reviews and testing of completed workflows. This includes code reviews and usability testing to ensure quality and functionality before final deployment.


**Issues for the AI Framework team are binary: they are categorized as either a discovery issue, requiring further investigation, or an implementation issue, ready for development. This approach helps us maintain a lean and efficient workflow.**

### 📝 Issue Guidelines

These guidelines apply to all issues we use for planning and scheduling work within our group. Our Engineers can define specific implementation issues when needed, but the overall goal for our issues are as follows:

- Provide a meaningful **title** that describes a deliverable result.
    - ✅ `Add the new GitLab Duo chat package as a Vue2 extension`
    - ✅ `Chat: move away from using OpenAI embeddings`
    - ❌ `Make Chat better`
- Provide a meaningful description that clearly explains the goal of the issue, and provide some technical details if necessary.
- Should there be critical implementation steps or other useful ways to create small tasks as part of the issue, please use a checklist as part of the issue descriptions.
- The issue should have a weight, milestone and workflow label assigned.

It's okay to create specific engineering-driven implementation issues for more complex features. These would be called **Child Issues** and they should always link back to their parent. If one issue would spawn many child issues, consider creating an Epic.

## 👏 Communication

The AI Framework Team communicates based on the following guidelines:

1. Always prefer async communication over sync meetings.
1. Don't shy away from arranging a [sync call](#-ad-hoc-sync-calls) when async is proving inefficient, however always record it to share with team members.
1. By default communicate in the open.
1. All work-related communication in Slack happens in the [#g_ai_framework][slack] channel.

### ⏲ Time Off

Team members should add any [planned time off][paid-time-off] in the "Time Off by Deel" slack app, so that the Engineering Manager can use the proper number of days off during capacity planning.

### 🤙 Ad-hoc sync calls

We operate using async communication by default. There are times when a sync discussion can be beneficial and we encourage team members to schedule sync calls with the required team members as needed.

## 🔗 Other Useful Links

### 📝 Dashboards (internal only)

- All Usage
- [Requests per provider](https://thanos-query.ops.gitlab.net/graph?g0.expr=sum%20by%20(client)(rate(gitlab_sli_llm_client_request_total%7Benv%3D%22gprd%22%7D%5B1m%5D))&g0.tab=0&g0.stacked=0&g0.range_input=1w&g0.max_source_resolution=0s&g0.deduplicate=1&g0.partial_response=0&g0.store_matches=%5B%5D&g0.step_input=60)
- [Error budgets](https://dashboards.gitlab.net/d/product-ai-powered_error_budget/product-error-budgets-ai-powered?orgId=1)
- [AI Gateway SLIs](https://dashboards.gitlab.net/d/ai-gateway-main/ai-gateway-overview?orgId=1)
- [GCP quota limits](https://dashboards.gitlab.net/d/ai-gateway-main/ai-gateway-overview?orgId=1&viewPanel=1515902021)
- [LLM Sidekiq completions](https://dashboards.gitlab.net/d/sidekiq-main/sidekiq-overview?orgId=1)
- [Duo Chat Question Categorization](https://app.periscopedata.com/app/gitlab/1173299/Duo-Chat-Question-Categorization)
- [Security Issues](https://gitlab.com/groups/gitlab-org/-/issues/?sort=due_date&state=opened&label_name%5B%5D=security&label_name%5B%5D=group%3A%3Aai%20framework&first_page_size=20)
- [Reliability Issues](https://gitlab.com/gitlab-org/gitlab/-/boards/4227439?not[label_name][]=type%3A%3Afeature&label_name[]=section%3A%3Adev&label_name[]=group%3A%3Aai%20framework)
- [Sentry via CompletionWorker](https://new-sentry.gitlab.net/organizations/gitlab/issues/?query=is%3Aunresolved++CompletionWorker&referrer=issue-list&statsPeriod=14d)
- [Sentry via Feature Category](https://new-sentry.gitlab.net/organizations/gitlab/issues/?query=is%3Aunresolved+feature_category%3Aai_abstraction_layer&referrer=issue-list&statsPeriod=24h)
- [Monthly Retros](https://gitlab.com/gl-retrospectives/data-science/ai-powered/ai-framework-retros)
- [Chat QA Evaluation](https://gitlab.com/gitlab-org/ai-powered/ai-framework/qa-evaluation)
- [Chat REST API Error Ratio](https://log.gprd.gitlab.net/app/r/s/lDEwi)

### 📹 GitLab Unfiltered Playlist

The AI Framework Group collates all video recordings related to the group and its team members in [a playlist][youtube] in the [GitLab Unfiltered](https://www.youtube.com/channel/UCMtZ0sc1HHNtGGWZFDRTh5A) YouTube channel.

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="ai framework" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
  {{< tableau/filters "GROUP_LABEL"="utai frameworkilization" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/Flakytestissues/FlakyTestIssues" >}}
  {{< tableau/filters "GROUP_NAME"="ai framework" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/SlowRSpecTestsIssues/SlowRSpecTestsIssuesDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="ai framework" >}}
{{< /tableau >}}

<!-- LINKS START -->

[slack]: TBA
[youtube]: https://www.youtube.com/playlist?list=PL05JrBw4t0Kpt0DsmS5WSZbeiMgrBeZXv
[paid-time-off]: /handbook/paid-time-off/#paid-time-off
[gdoc]: https://docs.google.com/document/d/1rSJNmRZJ0q8hd9S6W_AXlCMvtNTC6cfWr6VU0e2fJCQ/edit#heading=h.3xbjtjtrp0e9

<!-- LINKS END -->
