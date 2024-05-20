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

* Slack Channel: [`#g_ai_framework`][slack]
* Slack Groups: `@ai-framework` (entire team) and `@ai-framework-engs` (just engineers)

## 📦 Team Processes

### 📆 Regular team meetings

**❗️Important**: For every meeting, the [AI Framework team's meeting document][gdoc] should be used, and filled with the meeting notes, as well as references to any other sync meeting agendas/notes/recordings which have recently occurred. This will make it easier for people to find any meeting notes.

#### Team Meetings

1. **Weekly Refinement/Weight Assignment Meeting**
   * **When:** Every Monday, alternating between 09:00 AM GMT+1 and 17:00 PM GMT+1
   * **What:** This meeting replaces the previous Work Assignment Meeting and focuses on refining and assigning weights to issues. The Engineering Manager and Product Manager ensure all issues are properly refined and weighted.

2. **Bi-Weekly Engineering Sync**
   * **When:** Every other Thursday, alternating between 11:00 AM GMT+1 and 18:00 PM GMT+1
   * **What:** This meeting is dedicated to the engineering team for the purpose of syncing up on progress, discussing technical challenges, and planning upcoming sprints.

3. **Monthly Capacity Review Meeting**
* **When:** Once a month
   * **What:** This meeting focuses on reviewing the team's capacity, monitoring fluctuations, and reacting to any drops in capacity. It includes a review of the points completed in the past month and adjustments to estimates if necessary.

4. **Think BIG sessions**
   * **When:** Once a month
   * **What:** This session will alternate between EMEA/AMER and APAC regions every other month, focusing on broad discussions about group dynamics and strategic planning.

### Shared calendars

* AI Framework PTO (Calendar ID: `c_eca9440729dba2cbd88b3117fa70839836fb5811cb072132b94c52f912a31bf5@group.calendar.google.com`)
* AI-Powered Stage Calendar (Calendar ID: `c_n5pdr2i2i5bjhs8aopahcjtn84@group.calendar.google.com`)

AI Framework team members should [sync your PTO events](/handbook/people-group/engineering/team-pto-calendar/) with AI Framework PTO calendar.

### 🖖 Weekly EM Updates

Each week the team EM provides a Weekly Status update issue which aims to capture the most important items for the team to be aware of. These can be found [here](https://gitlab.com/gitlab-org/ai-powered/ai-weekly/-/issues/?sort=created_date&state=all&label_name%5B%5D=AI%20Powered%20Weekly%20Updates&first_page_size=20).

### 📚 AI Framework Board Outline

Our workflow process for our [board](https://gitlab.com/groups/gitlab-org/-/boards/7346017?label_name[]=group%3A%3Aai%20framework) is outlined below.

1. **Open** 📝: This list includes all identified issues. An engineering manager will be assigned if either the Milestone or the "workflow::ready for development" label is missing.
2. **workflow::design** ✏️: During this phase, issues undergo design refinement. After design considerations are integrated, the "ready for development" label is applied.
3. **workflow::refinement** 🧪: Issues in this stage are undergoing engineering refinement to ensure the proposed solution meets all requirements. Once refined, the "ready for development" label is applied.
4. **workflow::ready for development** 🎯: Issues that are prioritized and assigned to a specific milestone are moved to this list, and the "ready for development" label is applied.
5. **workflow::in dev** 👩‍💻: When a developer begins work on an issue, they should move it to this list and apply the "in dev" label.
6. **workflow::in review** 👀: After development is complete, the issue moves to this list, and the "in review" label is applied.
7. **workflow::verification** ✅: Following a successful code and UX review, the issue should be moved to this list and the "verification" label should be applied.
8. **workflow::complete** 🎉: Once the issue is verified and confirmed to be working properly, it should be moved to this list, the "complete" label should be applied, and the issue should be closed.

### 📝 Issue Priority

To ensure that our developers are aware of the priority of their work, we [use three labels](https://gitlab.com/groups/gitlab-org/-/labels?subscribed=&sort=relevance&search=AIF):

* **AIF-Priority::1**: This label is for issues that are of the highest priority. These issues should be addressed first.
* **AIF-Priority::2**: This label is for issues that are of medium priority. These issues should be addressed after all Priority 1 issues have been resolved.
* **AIF-Priority::3**: This label is for issues that are of lower priority. These issues should be addressed after all Priority 1 and Priority 2 issues have been resolved.

### 🔄 Processes

#### 🗓️ Weekly Process

1. **Open 🆕**: (DRI: PM) Capture and list new issues as they arrive. This stage serves as the initial holding area for issues awaiting classification and prioritization.
2. **Workflow Design ✍️**: (DRI: Designer) Move issues into this lane for **design refinement**, focusing on user experience and interface design.
3. **Workflow Refinement 🔧**: (DRI: Engineering Lead) Conduct **technical refinement** to ensure feasibility and adherence to standards.
4. **Workflow Ready for Development 🎯**: (DRI: PM/EM) Transition fully refined and specced issues here, ready for developers to start coding.
5. **Workflow in Development 💻**: (DRI: Assigned Developer) Implement and build the specified features and functionalities.
6. **Workflow in Review 🔍**: (DRI: QA/Reviewer) Perform thorough reviews and testing, including code reviews and usability testing.

### 📝 Issue Guidelines

These guidelines apply to all issues we use for planning and scheduling work within our group. Our Engineers can define specific implementation issues when needed, but the overall goal for our issues are as follows:

* Provide a meaningful **title** that describes a deliverable result.
    * ✅ `Add the new GitLab Duo chat package as a Vue2 extension`
    * ✅ `Chat: move away from using OpenAI embeddings`
    * ❌ `Make Chat better`
* Provide a meaningful description that clearly explains the goal of the issue, and provide some technical details if necessary.
* Should there be critical implementation steps or other useful ways to create small tasks as part of the issue, please use a checklist as part of the issue descriptions.
* The issue should have a weight, milestone and workflow label assigned.
* Design and frontend engineering use one issue. The same issues moves from workflow::design to workflow::refinement to workflow::ready for development. This ensures that there is a single source of truth for customer-facing issues. If a design issue is too large to be implemented, it may be promoted to an epic.

It's okay to create specific engineering-driven implementation issues for more complex features. These would be called **Child Issues** and they should always link back to their parent. If one issue would spawn many child issues, consider creating an Epic.

🏋 Weighting and Estimation Process

To assign weights to issues effectively, it’s important to remember that issue weight should not be tied to time. Instead, it should be a purely abstract measure of the issue’s significance. The team uses the Fibonacci sequence starting from weight 0:

- **Weight 0:** Reserved for the smallest and easiest issues, such as typos or minor formatting changes, or very minor code changes with no tests required.
- **Weight 1:** For simple issues with little or no uncertainty, risk or complexity. These issues may have labels like “good for new contributors” or “Hackathon - Candidate”. Example: Changing copy text which may be simple but take some time.
- **Weight 2:** For more involved issues which are still straightforward without much risk or complexity, but may involve touching multiple areas of the code, and updating multiple tests.
- **Weight 3:** For larger issues which may have some unforeseen complexity or risk, or require more extensive changes, but is still not large enough to warrant breaking down into smaller separate issues.
- **Weight 5:** Normally, this weight should be avoided, and indicates that the issue ideally should be broken down into smaller separate issues. However, in some cases, a weight of 5 might still be prioritized. For example, if there is a large amount of manual updates to be made which will require a large amount of effort, but doesn’t necessarily involve significant risk or uncertainty.
- **Weight 8/13+:** Weights above 5 are used to clearly indicate work that is not yet ready to be assigned for implementation, and must be broken down because it is too large in scope to start implementing, and/or still has too many unknowns/risks. This weight is temporarily assigned to “placeholder” issues to capture the scope of the effort in our velocity-based capacity planning calculations.

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

### 🌍 AIGW Region Deployments

* 🚀 [Staging](https://gitlab.com/gitlab-org/modelops/applied-ml/code-suggestions/ai-assist/-/blob/main/.runway/runway-staging.yml?ref_type=heads#L12)
* 🌐 [Production](https://gitlab.com/gitlab-org/modelops/applied-ml/code-suggestions/ai-assist/-/blob/main/.runway/runway.yml?ref_type=heads#L12)

### 📝 Dashboards (internal only)

* [Requests per provider](https://thanos-query.ops.gitlab.net/graph?g0.expr=sum%20by%20(client)(rate(gitlab_sli_llm_client_request_total%7Benv%3D%22gprd%22%7D%5B1m%5D))&g0.tab=0&g0.stacked=0&g0.range_input=1w&g0.max_source_resolution=0s&g0.deduplicate=1&g0.partial_response=0&g0.store_matches=%5B%5D&g0.step_input=60)
* [Error budgets](https://dashboards.gitlab.net/d/product-ai-powered_error_budget/product-error-budgets-ai-powered?orgId=1)
* [AI Gateway SLIs](https://dashboards.gitlab.net/d/ai-gateway-main/ai-gateway-overview?orgId=1)
* [GCP quota limits](https://dashboards.gitlab.net/d/ai-gateway-main/ai-gateway-overview?orgId=1&viewPanel=1515902021)
* [LLM Sidekiq completions](https://dashboards.gitlab.net/d/sidekiq-main/sidekiq-overview?orgId=1)
* [Duo Chat Question Categorization](https://app.periscopedata.com/app/gitlab/1173299/Duo-Chat-Question-Categorization)
* [Security Issues](https://gitlab.com/groups/gitlab-org/-/issues/?sort=due_date&state=opened&label_name%5B%5D=security&label_name%5B%5D=group%3A%3Aai%20framework&first_page_size=20)
* [Reliability Issues](https://gitlab.com/gitlab-org/gitlab/-/boards/4227439?not[label_name][]=type%3A%3Afeature&label_name[]=section%3A%3Adev&label_name[]=group%3A%3Aai%20framework)
* [Sentry via CompletionWorker](https://new-sentry.gitlab.net/organizations/gitlab/issues/?query=is%3Aunresolved++CompletionWorker&referrer=issue-list&statsPeriod=14d)
* [Sentry via Feature Category](https://new-sentry.gitlab.net/organizations/gitlab/issues/?query=is%3Aunresolved+feature_category%3Aai_abstraction_layer&referrer=issue-list&statsPeriod=24h)
* [Monthly Retros](https://gitlab.com/gl-retrospectives/data-science/ai-powered/ai-framework-retros)
* [Chat QA Evaluation](https://gitlab.com/gitlab-org/ai-powered/ai-framework/qa-evaluation)
* [Chat REST API Error Ratio](https://log.gprd.gitlab.net/app/r/s/lDEwi)

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
[paid-time-off]: /handbook/people-group/paid-time-off/#paid-time-off
[gdoc]: https://docs.google.com/document/d/1rSJNmRZJ0q8hd9S6W_AXlCMvtNTC6cfWr6VU0e2fJCQ/edit#heading=h.3xbjtjtrp0e9

<!-- LINKS END -->
