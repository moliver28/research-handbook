---
title: "Create:Source Code BE Team"
description: The Create:Source Code BE team is responsible for all backend aspects of the product categories that fall under the Source Code group of the Create stage.
---

The Create:Source Code BE team focuses on GitLab's suite of Source Code Management (SCM) tools and is responsible for all backend aspects of the product categories that fall under the [Source Code group][group] of the [Create stage][stage] of the [DevOps lifecycle][lifecycle]. Our Product direction is found on the [Category Direction - Source Code Management](https://about.gitlab.com/direction/create/source_code_management/) page.

We interface with the Gitaly and Code Review teams, and work closely with the [Create:Source Code Frontend team](../../create-source-code-fe/index.html). The features we work with are listed on the [Features by Group Page](/handbook/product/categories/features/#createsource-code-group) and technical documentation can be found on the [Create: Source Code Backend](https://docs.gitlab.com/ee/development/backend/create_source_code_be/index.html) technical reference page.

[group]: /handbook/product/categories/#source-code-group
[stage]: /handbook/product/categories/#create-stage
[lifecycle]: /handbook/product/categories/#devops-stages

## Team Members

The following people are permanent members of the Create:Source Code BE Team:

{{% team-by-manager-role "Backend Engineering Manager(.*)Create:Source Code" %}}

## Stable Counterparts

The following members of other functional teams are our stable counterparts:

{{< stable-counterparts role="Create:Source Code|Technical Writer(.*)Source Code|Director(.*)Create|Principal(.*)Create|Group(.*)Create" manager-role="Backend Engineering Manager(.*)Create:Source Code"  >}}

## Sisense & KPIs

We have a [metrics dashboard](https://app.periscopedata.com/app/gitlab/570334/Universal-Engineering-Team-Metrics-Dashboard) to help us stay on track with [Development KPIs](/handbook/company/kpis/#development-department-kpis) (Make sure you filter by our team at the top!) This dashboard does not include security MRs from `dev.gitlab.org`, but does include security MRs from production.

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="source code" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
  {{< tableau/filters "GROUP_LABEL"="source code" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/Flakytestissues/FlakyTestIssues" >}}
  {{< tableau/filters "GROUP_NAME"="source code" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/SlowRSpecTestsIssues/SlowRSpecTestsIssuesDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="source code" >}}
{{< /tableau >}}

## Workflow

We use the standard GitLab [engineering workflow](/handbook/engineering/workflow/). To create an issue for the Create:Source Code BE team, add these labels:

- ~backend
- ~"devops::create"
- ~"Category:Source Code Management"
- ~"group::source code"

For more urgent items, feel free to use `#g_create_source_code` on Slack.

[Take a look at the features we support per category here.](/handbook/product/categories/features/#createsource-code-group)

[engineering workflow]: /handbook/engineering/workflow/
[GitLab]: https://gitlab.com/gitlab-org/gitlab
[#g_create_source_code]: https://gitlab.slack.com/archives/g_create_source-code

### Working with the Product Team

Weekly calls between the Product Manager and Engineering Managers (frontend and backend) are listed in the "Source Code Group" calendar. Everyone is welcome to join and these calls are used to discuss any roadblocks, concerns, status updates, deliverables, or other thoughts that impact the group.

#### Issue refinement

1. Once we have validated the problem, product, UX, and engineering will collaborate to propose a solution and decide on what's technically feasible. The proposed solution will be shared with users to validate it solves the problem.
    1. Issues that require design work are marked with `UX` and `workflow::ready for design`.
    1. Once designs are ready and the proposed solution is viable then the label `workflow::planning breakdown` will be applied.
1. Once we have confirmed the proposed solution is viable, we will move to break it down as much as possible. When issues are ready for this stage, PM will mark issues with `workflow::refinement` label to signal next step.
1. EM will work with engineers to decide distribution of work and assign issues for breakdown.
1. Engineers or EM will evaluate the issue, work with PM, UX, and other engineering counterparts where necessary to address questions and concerns.
1. If the planned implementation of the issue can be further broken down, the engineer/EM will work with the PM to reduce scope and create new issues until this is the case (either PM or engineer/EM can create new work items).
1. When the planned implementation of the issue is in its smallest form, the engineer/EM will provide a weight. EM or PM will mark as `workflow::needs issue review`.

**Note**: if an issue receives a weight > 3 after this process, it may indicate the IC may not have a full idea of what is needed and further research is needed.

### Convention over configuration

As stated in our direction, we must place special emphasis on our [convention over configuration](https://about.gitlab.com/direction/create/source_code_management/#critical-product-principles) principle. As the feature set within Create:Source Code grows, it may feel natural to solve problems with configuration. To ensure this is not the case, we must intentionally challenge MVC and new feature issues to check for this. Let's consider the following steps for best results:

1. Once issues have been labeled as `workflow::needs issue review` PM will share the proposal with either a peer or their manager as well as engineering (EM or IC) and product designer.

1. Peers in product and engineering who review the issue should look for opportunities to eliminate configuration where possible. If opportunities are identified, the issue is moved back to `workflow::refinement`.

1. If PM and peers are satisfied with the proposal and it follows our convention over configuration principle as much as possible, those who reviewed the issue indicate their agreement with the proposal (with either 👍 or a comment in the issue). Finally, PM or EM will label issue `workflow:: ready for development`.

### Collaborating with counterparts

You are encouraged to work as closely as needed with stable counterparts outside of the PM. We specifically include quality engineering and application security counterparts prior to a release kickoff and as-needed during code reviews or issue concerns.

Quality engineering is included in our workflow via the [Quad Planning Process](https://gitlab.com/gitlab-com/www-gitlab-com/issues/6318).

Application Security will be involved in our workflow at the same time that [kickoff emails](#kickoff-emails) are sent to the team, so that they are able to review the upcoming milestone work, and notate any concerns or potential risks that we should be aware of.

### Communication

As a team we strive to be responsive and accommodating when we communicate. When consuming information, we use the following emoji to definition table as a shorthand glossary:

| Emoji | Definition                                                                                                          |
|-------|---------------------------------------------------------------------------------------------------------------------|
| 👀    | I'm looking at this now                                                                                             |
| 🤔    | I need to think about this before responding                                                                        |
| 📍    | I don't have time, will come back later                                                                             |
| 🤷🏼    | I don't know                                                                                                        |
| 👌    | I understand                                                                                                        |
| 👍    | Agree (and often won't give additional comment)                                                                     |
| ✅    | Task is complete                                                                                                    |
| ⏭    | I've seen this but I don't think I'm the best person for the job. Ping me if no one else responds and you need help |

### Triage Process

The weekly Triage Report is generated automatically by the [GitLab bot](https://gitlab.com/gitlab-bot) and this report is reviewed by the EM. Here is [an example](https://gitlab.com/gitlab-org/quality/triage-reports/-/issues/2700) of a previous report.

The Triage Report can be quite long, and it important to deal with it efficiently. An effective way to approach it is:

- Open every issue in a separate browser tab and use "edit issue" to mark then as checked once review, then close the tab.
- Verify if the issue belongs to ~"group::source code" and change group label if needed. The [Features by Group](/handbook/product/categories/features/#createsource-code-group) page is a good starting point for this assessment.
- Apply ~frontend if it is a frontend issue.
- Perform a brief search to assess if is a duplicate, close with a ~Duplicate label if this is the case.
- Is it a ~"support request" ? Does it ~"needs investigation" ? Apply labels if so.
- Apply ~regression label if it is one, consider bumping severity numbers if recent.
- Apply ~"severity::4", ~"priority::4", %Backlog if a smaller issue with no significant impact.
- If an uncontroversial problem with a clear solution, consider applying ~"Seeking community contributions"
- If also an easier issue which might interest a newer community contributor, consider applying ~"quick win".
- Apply ~"priority::3" ~"severity::3" if a bug with a workaround.
- Anything causing data loss, severe performance impact or security apply a ~"severity::1"  and ~"priority::1" or ~"priority::2" and assign to a team member.
- Unassign yourself from the Triage Report

### Engineering cycle

The engineering cycle is centered around the [GitLab Release Date every month](/handbook/engineering/releases/#timelines). This is the only fixed date in the month, and the table below indicates how the other dates can be determined in a given month.

#### Iteration Documents

These documents comprise everything that is documented during the release planning and execution.

##### Issue Boards

Create Source Code BE planning takes inputs from the following sources:

- [Performance Board](https://gitlab.com/gitlab-org/gitlab/-/boards/706619?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=group%3A%3Asource%20code&label_name[]=performance-refinement)
- [Infradev Board](https://gitlab.com/gitlab-org/gitlab/-/boards/706619?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=group%3A%3Asource%20code&label_name[]=infradev)
- [Application Limits Board](https://gitlab.com/gitlab-org/gitlab/-/boards/706619?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=group%3A%3Asource%20code&label_name[]=Application%20Limits)
- [Security Board](https://gitlab.com/gitlab-org/gitlab/-/boards/2716576?label_name[]=group%3A%3Asource%20code&label_name[]=security)
- [Missed SLO Board](https://gitlab.com/gitlab-org/gitlab/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=group%3A%3Asource%20code&label_name[]=missed-SLO&label_name[]=backend)
- Bugs
- New features

Create Source Code UX planning takes inputs from the following sources:

- [SCM UX Planning Board](https://gitlab.com/groups/gitlab-org/-/boards/5092292?label_name[]=UX&label_name[]=group%3A%3Asource%20code)
- [SCM UX Build Board](https://gitlab.com/groups/gitlab-org/-/boards/5092276?label_name[]=UX&label_name[]=group%3A%3Asource%20code)

##### Planning Issue

Each month a planning issue is created by the PM, using the [Source code template](https://gitlab.com/gitlab-org/create-stage/-/blob/master/.gitlab/issue_templates/source-code-planning.md).

##### Planning Board

The [Planning Board](https://gitlab.com/groups/gitlab-org/-/boards/2822491?milestone_title=14.1&label_name%5B%5D=group%3A%3Asource%20code) is created for each release by the PM, and is a curated list of issues by category. The EM requests engineers to allocate weights to all issues on this board via the [Needs weight issue](https://gitlab.com/gitlab-org/create-stage/-/issues/12837)

##### Capacity Planning Spreadsheet

The EM maintains a [Google Sheet](https://docs.google.com/spreadsheets/d/1A7Xgz4IrksKYbTbSVgvRPEV8CQgUe9hQC2A9tS-SEa8/edit#gid=1568889265) for calculating team capacity, and the same Spreadsheet is also used to perform the process of assigning issues to the release based on weight and priority.

##### Build Board

The EM selects issues from the [Planning Board](#planning-board) based on:

- slipped issues
- weight
- priority
- PM preference

The EM then applies the ~Deliverable label to each issue in the Release and assigns then to an engineer. The issues are tracked through the release via the Build Board.

#### Candidate issues

Urgent issues are tentatively assigned to a release to ensure other teams have visibility.

At this point the issues are _Candidate_ issues, and the milestone does not confirm that they will be definitely scheduled. Issues move from _Candidate_ status to confirmed during the [Issue selection](#issue-selection) process.

#### Key Dates

| Date | Event |
| ------ | ------ | ------ |
| The Monday of the week the milestone ends |**PM** creates planning board and pings EMs in the Planning Issue for review & weighting.<br><br> **EMs** calculate capacity, add to Planning Issue.<br><br>**PM** submits RPIs for reviews.|
| Monday to Friday of the week the milestone ends |**EMs** & **ICs** add weights to issues in the planning board|
| The Friday the milestone ends | **EMs** add ~Deliverable labels to issues so that they appear on the Build board _as a draft_<br><br>Release Post: **EMs**, **PMs**, and **PDs** contribute to MRs for Usability, Performance Improvements, and Bug Fixes|
| The Friday the milestone ends | **EMs** adjust ~Deliverable labels for slippage and make final assignments<br><br>**PMs** review final plan for milestone on Build board<br><br>**EMs** merge RPI MRs for features that have been merged.|
| The third Thursday of the month | Release |


#### Weighting issues

Based on the issues on the [Planning Board](https://gitlab.com/groups/gitlab-org/-/boards/2822491?milestone_title=14.1&label_name%5B%5D=group%3A%3Asource%20code), the EM will create a [Needs Weight](https://gitlab.com/gitlab-org/create-stage/-/issues/12837) issue to request an estimation of work by the engineers. In general no more than 4 issues should be assigned to an engineer for weighting.

1. Give issue a weight if there's none yet or update if the existing weight isn't appropriate anymore. Optionally leave a comment describing why a certain weight is given.
1. It's strongly encouraged to spend no more than 1 hour per issue. Give it your best guess and move on if you run out of time.
1. Label the issue as ~"workflow::ready for development" if you feel we can make progress on it in the next milestone.

If you would like to be assigned to work on this issue in the upcoming release, add a comment and ping the EM.

##### Weight categories

The weights we use are:

{{% include "includes/engineering/create/weight_table.md" %}}

A weight of 5 generally indicates the problem is not clear or a solution should be instead converted to an Epic with sub-issues.

###### If the issue should be broken down

If the problem is well-defined but too large (weight 5 or greater), either:

- Promote the issue to an Epic and break the work into sub-issues. Weight the individual issues if possible.
- Ping the EM and PM and outline the reason the issue needed to be promoted to an Epic.

###### If the issue SSOT is not clear

- Don't assign a weight, instead add a comment indicating what needs clarification and ping the EM and PM.

##### If the issue needs a spike

- Don't assign a weight, instead add a comment about the need for a spike (and possibly what would be investigated) and ping the EM or PM.
- Spikes are scheduled with a weight of 2.
- Spikes are scheduled with a weight of 2 (timeboxed).
- The ~spike label is added

When a spike is scheduled, the engineer performs research on what needs to be done. On completion of the investigation, the engineer has either closed the issue or developed a plan for the work needed, including a weight. A follow-up issue is created and the labels copied from the original issue, and the original issue then closed.

##### Security Issues

Security issues are typically weighted one level higher than they would normally
appear from the table above. This is to account for additional work and backports in the
[security release process](https://gitlab.com/gitlab-org/release/docs/blob/master/general/security/developer.md).

#### Planning issue review

The Source Code stable counterparts (BE, FE, PM, UX) meet and propose issues to be worked on in the upcoming release. Using the [Mural](https://www.mural.co/) visual collaboration tool, candidate issues are voted on by the group.

#### Capacity planning

Capacity planning is a collaborative effort involving all Source Code team members and stable counterparts from Frontend, UX and Product. An initial list of issues is tracked in the Source Code Group Planning issue [example](https://gitlab.com/gitlab-org/create-stage/-/issues/12783) for each month.

##### Team Availability

Approximately 5-10 business days before the start of a new release, the EM will begin determining how "available" the team will be. Some of the things that will be taken into account when determining availability are:

- Upcoming training
- Upcoming time off / holidays
- Upcoming on-call slots
- Potential time spent on another teams deliverables

Availability is a percentage calculated by _(work days available / work days in release) * 100_.

All individual contributors start with a "weight budget" of 10, meaning they are capable (based on historical data) of completing a maximum number of issues worth 10 weight points total (IE: 2 issues which are weighted at 5 and 5, or 10 issues weighted at 1 each, etc.) Then, based on their availability percentage, weight budgets are reduced individually. For example, if you are 80% available, your weight budget becomes 8.

Product will prioritize issues based on the teams total weight budget. Our [planning rotation](#planning-rotation) will help assign weights to issues that product intends on prioritizing, to help gauge the amount of work prioritized versus the amount we can handle prior to a kickoff.

##### Source Code issue pipeline

The Source Code issue pipeline is broad, and the PM and EM work together throughout the planning process and the final list is chosen during the Issue Selection meeting. The issue pipeline includes:

- Features
- Bugs
- Security issues
- [Infradev board issues](https://gitlab.com/gitlab-org/gitlab/-/boards/706619?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=group%3A%3Asource%20code&label_name[]=infradev)
- [Performance board issues](https://gitlab.com/gitlab-org/gitlab/-/boards/706619?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=group%3A%3Asource%20code&label_name[]=performance-refinement)
- [Application limit board issues](https://gitlab.com/gitlab-org/gitlab/-/boards/706619?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=group%3A%3Asource%20code&label_name[]=Application%20Limits)

#### Issue Selection

On or around the 16th, the PM and EM meet once more to finalize the list of issues in the release. The issue board for that release is then updated, and any issues with an candidate milestone that are not selected will be moved to Backlog or added as a candidate for a future release.

Issues scheduled for the release are then marked ~"workflow::ready for development".

#### Issue assignments

Once availability has been determined, weights have been assigned, and the PM/EM finalize a list of prioritized issues for the upcoming release, kickoff emails will be sent. The intent of this email is to notify you of the work we intend to assign for the upcoming release. This email will be sent before the release begins. The kickoff email will include:

- Your availability, weight budget, and how it was calculated
- A list of the issues you will most probably be assigned as an individual
- A reasoning behind why you have been assigned more than your weight budget, if applicable
- A list of the issues the team is working on that are deemed "note-worthy," in case you'd like to offer help on those issues as time allows


You will begin to collect follow-up issues when you've worked on something in a release but have tasks leftover, such as technical debt, feature flag rollouts or removals, or non-blocking work for the issue. For these, you can address them in at least 2 ways:

- Add an appropriate future milestone to the follow-up issue(s) with a weight and good description on the importance of working this issue
- Add the issue(s) to the relevant [planning issue](https://gitlab.com/gitlab-org/create-stage/-/issues?scope=all&utf8=%E2%9C%93&state=opened&search=source+code+group+planning)
 
You should generally take on follow-up work that is part of our [definition of done](https://docs.gitlab.com/ee/development/contributing/merge_request_workflow.html#definition-of-done), preferably in the same milestone as the original work, or the one immediately following. If this represents a substantial amount of work, bring it to your manager's attention, as it may affect scheduling decisions.

If there are many follow-up issues, consider creating an epic.

#### Backend and Frontend issues

Many issues require work on both the backend and frontend, but the weight of that work may not be the same. Since an issue can only have a single weight set on it, we use scoped labels instead when this is the case: `~backend-weight::<number>` and `~frontend-weight::<number>`.

### Workflow labels

{{% engineering/workflow-labels group-label="group::source code" %}}

### Retrospectives

We have 1 regularly scheduled "Per Milestone" retrospective, and can have ad-hoc "Per Project" retrospectives.

#### Per Milestone

{{% engineering/create-retrospectives group-label="Source Code" group-slug="source-code" %}}

#### Per Project

If a particular issue, feature, or other sort of project turns into a particularly useful learning experience, we may hold a synchronous or asynchronous retrospective to learn from it. If you feel like something you're working on deserves a retrospective:

1. [Create an issue](https://gitlab.com/gl-retrospectives/create-stage/source-code/issues) explaining why you want to have a retrospective and indicate whether this should be synchronous or asynchronous
1. Include your EM and anyone else who should be involved (PM, counterparts, etc)
1. Coordinate a synchronous meeting if applicable

All feedback from the retrospective should ultimately end up in the issue for reference purposes.

### Deep Dives

{{% include "includes/engineering/create/deep-dives.md" %}}

### Career development

{{% engineering/create/career-development "Source Code" %}}

### Performance Monitoring

The Create:Source Code BE team is responsible for keeping some API endpoints and
controller actions performant (e.g. below our target speed index).

Here are some Kibana visualizations that give a quick overview on how they perform:

- [Create::Source Code: Controller Actions](https://log.gprd.gitlab.net/app/kibana#/visualize/edit/32698f60-b145-11ea-bfe2-25f984e253f8?_g=(filters%3A!()%2CrefreshInterval%3A(pause%3A!t%2Cvalue%3A0)%2Ctime%3A(from%3Anow-7d%2Cto%3Anow)))
- [Create::Source Code: Endpoints](https://log.gprd.gitlab.net/app/kibana#/visualize/edit/104d4bf0-a0d9-11ea-8cfd-8dcd98a55a1d?_g=(filters%3A!()%2CrefreshInterval%3A(pause%3A!t%2Cvalue%3A0)%2Ctime%3A(from%3Anow-7d%2Cto%3Anow)))

These tables are filtered by the endpoints and controller actions that the group
handles and sorted by P90 (slowest first) for the last 7 days by default.
