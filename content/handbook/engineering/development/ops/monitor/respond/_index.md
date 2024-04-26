---
title: "Respond Group"
description: "The Respond Group a part of the Monitor Stage of the DevOps lifecycle."
---

## Respond
The **Respond** group at GitLab is responsible for building tools that enable DevOps teams to respond to, triage and remediate errors and IT alerts for the systems and applications they maintain. We aim to provide a streamlined Operations experience within GitLab that enables the individuals who write the code, to maintain it at the same time.

This team maps to the [Respond Group](/handbook/product/categories/#respond-group) category and focuses on:

* [Service Desk](https://about.gitlab.com/direction/service_management/service_desk/)
* [Incident Management](https://about.gitlab.com/direction/service_management/incident_management/)
* [On-call Schedule Management](https://about.gitlab.com/direction/service_management/on-call_schedule_management/)

## Exciting things and accomplishments

You can follow along with the team's accomplishments by reading the [latest weekly async updates](https://gitlab.com/gitlab-org/monitor/respond/-/issues/?sort=created_date&state=closed&label_name%5B%5D=OpsSection%3A%3AWeekly-Update&first_page_size=100).

## Team members

{{< team-by-manager-role role="Engineering Manager(.*)Monitor:Respond" team="Monitor:Respond" >}}

## Stable counterparts

{{< stable-counterparts role="" >}}

## Communication

- Slack channel: [#g_respond](https://gitlab.slack.com/archives/C02SHPPGZS5)
- Slack alias: [@monitor-respond-group](https://app.slack.com/client/T02592416/C02SHPPGZS5/user_groups/SLFUX86HF)
- Our Google groups are organized like this:
  - [Monitor Respond Group](mailto:monitor-respond-group@gitlab.com) (whole team)
    - [monitor-respond_be](mailto:monitor-respond-be@gitlab.com) (backend team)
    - [monitor-respond-fe](mailto:monitor-respond-fe@gitlab.com) (frontend team)
- The Respond group team meetings are scheduled on our [Monitor Stage team calendar](https://calendar.google.com/calendar?cid=Z2l0bGFiLmNvbV8xbGMyZHFpbjFoMXQ2MHFoNnJmcjJjZTE5OEBncm91cC5jYWxlbmRhci5nb29nbGUuY29t)
  - The team holds a [weekly sync meeting](https://docs.google.com/document/d/1_z-VJYnobq5UN0PbFoABWLK3PNn9IXlDo8WO51DF2Ls), alternating between 2 timezone groups (Thu @ 06:00 UTC and Thu @ 14:00 UTC) and [meetings are recorded](https://drive.google.com/drive/u/0/folders/11oEDabI5blfcHz0P9dOZY6Oj_dHd0-wx). We generally try to keep our process pretty light on meetings.

## Dashboards

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="respond" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
  {{< tableau/filters "GROUP_LABEL"="respond" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/Flakytestissues/FlakyTestIssues" >}}
  {{< tableau/filters "GROUP_NAME"="respond" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/SlowRSpecTestsIssues/SlowRSpecTestsIssuesDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="respond" >}}
{{< /tableau >}}

## Working Agreements

### 🤝 [Collaboration](/handbook/values/#collaboration)

* Anything in an issue description is allowed to change. And YOU'RE allowed to do it. Since we have the description history, we can always go back to an old version with negligible effort.  If making a substantial change to the description, provide some explanation to explain why it's changing. **Issue descriptions are documentation, not a single person's opinion**.
    * Related: try to keep “I”s out of the issues you write, or differentiate your personal opinions/context by adding a disclaimer/bold/italics.  Personal opinions could also be added to the comments section so that others can respond and discuss them. If a description is less personal, it's easier for anyone else to feel like they can improve or refine it.
* It's ok to ask people to do things directly. It may feel uncomfortable, but you have to trust that they can manage their own time and priorities.
    * **"Someone should probably do X."** is a trap. Prefer "Would anyone be willing to do X?" or "Who can take on X?".  Identifying a specific owner for each new task or subtask (write tests, update docs, add a follow-up, etc) will prevent it from getting lost or forgotten.
* Conversely, it's ok to say no or offer hard limits.
    * **When you do say "no", propose alternatives or a potential path forward** for that person to get what they want/need.

### 📈 [Results](/handbook/values/#results)

* **Just declare a plan.** If people don't agree, they'll tell you.
    * If requirements are unclear, ask for help and explain exactly what you're looking for. Prefer questions like "What should happen in scenario X?" to "I'm not sure how Y should work." The responder should be able to tell whether they've unblocked you simply by making sure each of your questions has an answer.
    * If the discussion has gotten off-track, you can't tell what the action item should be, or you don't have an opinion yourself, make the plan up! Then communicate it.
* It's also ok to express a direct opinion about what you think is best when presenting a set of options.
    * It's way easier to engage with your work if you believe in what you're building. Advocate for it.
* Sometimes it’s necessary to accept risk to make progress.

### ⏱️ [Efficiency](/handbook/values/#efficiency)

* It's ok to say "I'm so confused, can you explain it differently?"
* When answering questions or posing questions, **always think "who is my audience, and what info do they need right now?"**
    * Make it easy for the reader to just pick an option or take action.
    * If posing a question/problem to multiple groups, **categorize information & label it**. Let the reader choose what they want to read.
    * A question posed to a designer *should* be different from a question asked of an engineer. Our designer needs to know the impact of the decision on the user, how big of a pain a given solution is, or whether an option has implications for the design down the line. Conversely, an engineer needs to know which code is being discussed, any implicit assumptions that have been made, which requirements are already known, or why certain options have been ruled out. But in either circumstance, you want to provide the responder with exactly what they need to make an informed choice by the time they reach the end of the question/comment.

### 🌐 [Diversity, Inclusion & Belonging](/handbook/values/#diversity-inclusion)

* Communication is hard. Our attention spans are short. If possible, supplement with pictures.
    * If you are verbose, that's ok. **Include summaries, tldrs, tables, headers, and style your text to make it easier to consume your writing.**

### 👣 [Iteration](/handbook/values/#iteration)

* If you already took an action down one path, but now you need to go a different direction, that's ok. That's iteration. You did not waste time or do anything wrong. You just moved forward.

### 👁️ [Transparency](/handbook/values/#transparency)

* If there's 80% of a decision but still some unknowns, **it can be ok to use "I'm just going to improvise" as the plan** for the remaining pieces. Just state it explicitly in advance & communicate the outcome afterward.
    * The best path forward is sometimes the path of least resistance. **It often doesn't matter *what* you do, as long as it's well communicated.**

## Issue boards

* [Monitor - Workflow](https://gitlab.com/groups/gitlab-org/-/boards/1160198) - Issue board organized by workflow labels
* [Monitor Bugs](https://gitlab.com/groups/gitlab-org/-/boards/979406) - Issue board organized by Priority labels so that we make sure we meet our bug fix SLA

## Development Processes

### Surfacing blockers

To surface blockers, mention your Engineering Manager or Product Manager in the issues. Also make sure to raise any blockers in your daily async standup using Geekbot.

The Engineering Manager and Product Manager want to make unblocking the team their highest priority. Please don't hesitate to raise blockers.

### Scheduling

#### Scheduling issues in milestones

The Product Manager is responsible for scheduling issues in a given milestone. The engineering team will make sure that issues are scoped and well-defined enough to implement and whether they need UX involvement and/or technical investigation.

See also [Measuring Say Do ratio](/handbook/engineering/development/ops/monitor/respond/#measuring-say-do-ratio) for more on milestone commitments.

#### Scheduling bugs

When new bugs are reported, the Engineering Manager ensures that they have proper [Priority](/handbook/engineering/infrastructure/engineering-productivity/issue-triage/#priority) and [Severity](/handbook/engineering/infrastructure/engineering-productivity/issue-triage/#severity) labels. Bugs are discussed in the [weekly triage issue](https://gitlab.com/gitlab-org/quality/triage-reports/-/issues/?label_name%5B%5D=group%3A%3Arespond) and are scheduled according to severity, priority, and the capacity of the teams. Ideally, we should work on a few bugs each release regardless of priority or severity.

#### Scheduling technical debt

As new technical debt issues are created, the Engineering Manager and Product Manager will triage, prioritize and schedule these issues.   When new issues are created by Monitor team members, add any relevant context to the description about the priority or timing of the issue, as this will help streamline the triage work.

Technical debt is planned following the [standard prioritization scheduling](/handbook/engineering/infrastructure/engineering-productivity/issue-triage/#priority).

### Weekly async updates

As part of the [Ops sub-department Async Updates](/handbook/engineering/development/ops/#async-updates-no-status-in-meetings), the EM is responsible for sharing a weekly team update.

Weekly update flow:
1. Monday
   1. (bot) Weekly update is created automatically as an issue in the [gitlab-org/monitor/respond](https://gitlab.com/gitlab-org/monitor/respond/-/blob/master/weekly_update/README.md) project.
1. Throughout the week
   1. (human) Noteworthy highlights, blockers, key metrics, etc, are posted manually in a comment thread on the issue.
1. Friday
   1. (bot) Issue stats are pulled and inserted in the issue.
   1. (bot) Highlight thread is copied in the issue.
   1. (human) Curate the issue description as needed.
   1. (human) If the milestone just ended, report on Say Do ratio with some context and trend.
   1. (human) Close the issue, share a link to it in the #g_respond Slack channel.

Links
- [Past weekly update issues](https://gitlab.com/gitlab-org/monitor/respond/-/issues/?sort=created_date&state=all&label_name%5B%5D=OpsSection%3A%3AWeekly-Update&first_page_size=100)
- [Automation README](https://gitlab.com/gitlab-org/monitor/respond/-/blob/master/weekly_update/README.md)
- [Issue template](https://gitlab.com/gitlab-org/monitor/respond/-/blob/master/.gitlab/issue_templates/weekly-update.md?plain=1)

### Interacting with community contributors

Community contributions are encouraged and prioritized at GitLab. Please check out the [Contribute page](https://about.gitlab.com/community/contribute/) on our website for guidelines on contributing to GitLab overall.

Within the Monitor stage, Product Management will assist a community member with questions regarding priority and scope. If a community member has technical questions on implementation, Engineering Managers will connect them with [MR coaches](/job-families/expert/merge-request-coach) within the team to collaborate with.

### Using spikes to inform design decisions

<!-- this section should be edited to refer to the technical breakdown issue template -->
Engineers use spikes to conduct research, prototyping, and investigation to gain knowledge necessary to reduce the risk of a technical approach, better understand a requirement, or increase the reliability of a story estimate (paraphrased from [this overview](/handbook/product/product-processes/#spikes)). When we identify the need for a spike for a given issue, we will create a new issue, conduct the spike, and document the findings in the spike issue. We then link to the spike and summarize the key decisions in the original issue.

### Assigning MRs for code review

Engineers should typically ignore the suggestion from [Dangerbot's](https://docs.gitlab.com/ee/development/dangerbot.html) Reviewer Roulette and assign their MRs to be reviewed by a [frontend engineer](/handbook/company/team/?department=monitor-respond-fe-team) or [backend engineer](/handbook/company/team/?department=monitor-respond-be-team) from the Respond Group. If the MR has domain specific knowledge to another team or a person outside of the Respond Group, the author should assign their MR to be reviewed by an appropriate domain expert. The MR author should use the Reviewer Roulette suggestion when assigning the MR to a maintainer.

Advantages of keeping most MR reviews inside the Respond Group include:

* Quicker reviews because the reviewers hopefully already have the context and don't need additional research to figure out how the MR is supposed to work.
* Knowledge sharing among the engineers in the Respond Group.
* Design reviews currently follow a [different process](/handbook/product/ux/product-designer/mr-reviews/#how-to-assign-mr-reviews). For design reviews, follow the "Reviewer roulette" recommendation (will only be shown if the MR is non-draft and has a ~UX label applied), and ensure you provide context for how to set up the feature they will be testing. For example, for testing alerts:

```
<!---
1. Navigate to Settings > Monitor
1. Expand the Alert section, and click the button to "Enable a new integration"
1. Select "HTTP endpoint" in the integration type dropdown. Add an integration name, turn the toggle to "active", and click to "Save the integration"
1. Once the integration is added, click on the settings icon button in the integration table
1. Click on the "Send test alert" tab
1. Enter the sample payload shown below, and click send.
1. Navigate to Monitor > Alerts, where you will see the new alert appear.
-->
{  "title": "Gitaly latency is too high",  "description": "https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/gitaly/gitaly-latency.md",  "service": "service not affected",  "monitoring_tool": "GitLab scripts",  "severity": "high", "host": "fe-2" }
```

### Preparing UX designs for engineering

Product designers generally try to work one milestone ahead of the engineers, to ensure scope is defined and agreed upon before engineering starts work. So, for example, if engineering is planning on getting started on an issue in 12.2, designers will assign themselves the appropriate issues during 12.1, making sure everything is ready to go before 12.2 starts.

To make sure this happens, early planning is necessary. In the example above, for instance, we'd need to know by the end of 12.0 what will be needed for 12.2 so that we can work on it during 12.1. This takes a lot of coordination between UX and the PMs. We can (and often do) try to pick up smaller things as they come up and in cases where priorities change. But, generally, we have a set of assigned tasks for each milestone in place by the time the milestone starts so anything we take on will be in addition to those existing tasks and dependent on additional capacity.

The current workflow:

* Though Product Designers make an effort to keep an eye on all issues being worked on, PMs add the UX label to specific issues needing UX input for upcoming milestones.

* The week before the milestone starts, the Product Designers divide up issues depending on interest, expertise and capacity.

* Product Designers start work on assigned issues when the milestone starts. We make an effort to start conversations early and to have them often. We collaborate closely with PMs and engineers to make sure that the proposed designs are feasible.

* In terms of what we deliver: we will provide what's needed to move forward, which may or may not include a high-fidelity design spec. Depending on requirements, a text summary of the expected scope, a balsamiq sketch, a screengrab or a higher fidelity measure spec may be provided.

* When we feel like we've achieved a 70% level of confidence that we're aligned on the way forward, we change the label to ~'workflow::ready for development' as a sign that the issue is appropriately scoped and ready for engineering.

* We usually stay assigned to issues after they are ~'workflow::ready for development' to continue to answer questions while the development process is taking place.

* Finally, we review MRs following the [guidelines](/handbook/product/ux/product-designer/mr-reviews/) as closely as possible to reduce the impact on velocity whilst maintaining quality.

### Measuring Say Do ratio

How we measure Say Do ratio:
1. We set a list of goals in the milestone planning issue. Usually 3-5 of them.
   1. Stretch goals may exist but don't contribute to Say/Do.
1. Ideally 1 goal = 1 epic. There can be exceptions, some goals don't map 1:1 with an epic. That's ok.
1. Say = number of goals planned (i.e. committed) at the start of the milestone.
1. Do = number of goals achieved at the end of the milestone (i.e. number of epics closed, usually).
1. The Engineering Manager reports the ratio in the [weekly async update](/handbook/engineering/development/ops/monitor/respond/#weekly-async-updates) with some context and the recent trend.

How this differs from past approaches:
1. We do not apply the `~deliverable` label to issues committed to being completed in the current milestone.
1. We do not apply the `~filler` label to issues which are not committed in the current milestone.

Why we choose this approach:
1. Clear goals. Puts the focus on committing to milestone goals, and whether we're achieving them. Milestone plan is the go-to source of truth for our priorities.
   1. Bonus: we get better at writing goals (Say), because if we don’t they’ll be hard to assess (Do).
1. Accuracy. By zooming out to the epic-level, we gain accuracy. We don't need to label individual issues, they're either part of a deliverable goal / epic, or not.
1. Usability. By being less granular, we don't need to spend time labeling individual issues. Engineering Managers save time, engineers retain ownership and case-by-case decisions within an established goal/epic.
1. Easier to reason about. The Say Do ratio is "rounder" (20%, 25%, 33%, 40%, etc), since the number of goals is 3-5. It’s less noisy, and less prone to over-analysis than an issue-based ratio. E.g. what would it mean to go from 77.8% to 73.6% delivered issues? Is it worrisome? Is it ok?
1. See [this thread](https://gitlab.com/gitlab-org/monitor/respond/-/issues/217#note_1326514387) for the original context that lead to this approach.

Downsides to this approach:
1. Accuracy may still be a problem, depending on how well we break down our milestone goals.
   1. Mitigation: accept that perfect accuracy is not a goal, and rely on the feedback cycle to improve our goal setting skills.
1. Query-based dashboards will not pick up our Say Do ratio.
   1. Mitigation: reporting of Say Do ratio in the Ops sub-department is moving to the monthly PI review instead of relying on a dashboard.

## Repos we own or use
* [Prometheus Ruby Mmap Client](https://gitlab.com/gitlab-org/ruby/gems/prometheus-client-mmap) - The ruby Prometheus instrumentation lib we built, which we used to instrument GitLab
* [GitLab](https://gitlab.com/gitlab-org/gitlab) - Where much of the user facing code lives
* [Omnibus](https://gitlab.com/gitlab-org/omnibus-gitlab) and [Charts](https://gitlab.com/charts/charts.gitlab.io), where a lot of the packaging related work goes on. (We ship GitLab fully instrumented along with a Prometheus instance)

## Service accounts we own or use

### Zoom sandbox account

In order to develop and test Zoom features for the [integration with GitLab](https://gitlab.com/groups/gitlab-org/-/epics/1439) we now have our own Zoom sandbox account.

#### Requesting access

To request access to this Zoom sandbox account please open [an issue](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=New_Access_Request) providing your **non-GitLab email address** (which can already be associated an existing non-GitLab Zoom account).

The following people are owners of this account and can [grant access](https://zoom.us/account/user) to other [GitLab Team Members](/handbook/communication/top-misused-terms/):

* [Andrew Newdigate](https://gitlab.com/andrewn)
* [Peter Leitzen](https://gitlab.com/splattael)
* [Allison Browne](https://gitlab.com/allison.browne)

#### Granting access

1. Log in to [Zoom](http://zoom.us/) with your non-GitLab email
1. Go to [**User Management > Users**](https://zoom.us/account/user)
1. Click on `Add User`
1. Specify email addresses
1. Choose `User Type` - most likely `Pro`
1. Click `Add` - the users receive invitations via email
1. Add the linked name to [the list in "Requesting access"](#requesting-access)

#### Documentation

For more information on how to use Zoom see theirs [guides](https://marketplace.zoom.us/docs/guides) and [API reference](https://marketplace.zoom.us/docs/api-reference/introduction).

## Labels
The Respond team uses labels for issue tracking and to organize issue boards.  Many of the labels we use also drive reporting for Product Management and Engineering Leadership to track delivery metrics.  It's important that labels be applied correctly to each issue so that information is easily discoverable.

### Issue Labels

- **Stage**: required. Identifies which stage of GitLab an issue is assigned to.
  - `~devops::monitor`
- **Group**: required. Identifies which team this issue belongs to. This triggers new issues to appear in the weekly triage report for the team's Product and Engineering managers.
  - `~group::respond`
- **Team**: required. Identifies which team (or both) will develop a solution.
  - `~frontend`
  - `~backend`
- **Category**: optional. Identifies the correct [Monitor category](https://about.gitlab.com/direction/monitor/#categories-in-monitor) the issue falls under.
  - `~Category:Runbooks`
  - `~Category:Incident Management`
  - `~Category:On-call Schedule Management`
  - `~Category:GitLab Self Monitoring`
  - `~Category:Error Tracking`
  - `~Category:Synthetic Monitoring`
  - `~Category:Product Analytics`
- **Milestone**: optional. While technically not a label, if the issue is being worked on immediately, add the current milestone.  If you know when the issue needs to be scheduled (such as follow-up work), add the future milestone that it should be scheduled in.  Otherwise, leave it empty.
- **Issue Type**: required.
  - `~"type::feature"`: [Feature Issues](/handbook/product/product-processes/#feature-issues)
  - `~"type::bug"`: [Bug Issues](/handbook/product/product-processes/#bug-issues)
  - `~technical debt` : [Technical Debt](/handbook/engineering/workflow/#technical-debt)
- **Workflow**: required.
  - `workflow::refinement`: Issues that need further input from team members in order for it to be `workflow::ready for development`.
  - `workflow::blocked`: Waiting on external factors or another issue to be completed before work can resume.
  - `workflow::ready for development`: The issue is refined and ready to be scheduled in a current or future milestone.
  - `workflow::in dev`: Issues that are actively being worked on by a developer.
  - `workflow::in review`: Issues that are undergoing code review by the development team.
  - `workflow::verification`: Everything has been merged, waiting for verification after a deploy.

## Respond PTO
Just like the rest of the company, we use [Time Off by Deel](/handbook/paid-time-off/#time-off-by-deel) to track when team members are traveling, attending conferences, and taking time off. The easiest way to see who has upcoming PTO is to run the `/time-off-deel whosout` command in the `#g_respond_standup` slack channel. This will show you the upcoming PTO for everyone in that channel.

## Reading list

A list of interesting content related to the areas of the Respond group:

- **On-Call**
  - [Google's SRE Workbook, Chapter 8 - On-Call](https://sre.google/workbook/on-call/)
- **Incident Response**
  - [Google's SRE Workbook, Chapter 9 - Incident Response](https://sre.google/workbook/incident-response/)
- **Postmortem Culture: Learning from Failure**
  - [Google's SRE Workbook, Chapter 9 - Incident Response](https://sre.google/workbook/postmortem-culture/)
