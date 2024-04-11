---
title: Environments Group
description: "The Environments group is responsible for the Environments in the Deploy stage of the DevOps lifecycle."
---

## Vision

For an understanding of where this team is going, take a look at [the product](https://about.gitlab.com/direction/delivery/)
vision.

As a member of the Ops Sub-department, you may also like to understand [our](https://about.gitlab.com/direction/ops/)
overall vision.

## Mission

### OKRs


### Product Indicators


### Contribution to GitLab


## Team Members

{{< team-by-manager-slug "nicolo-maria-mezzopera" >}}

## Stable Counterparts

The following members of other functional teams are our stable counterparts:

{{< stable-counterparts role="Deploy:Environments" manager="nicolo-maria-mezzopera" >}}

## Common Links

- [General Slack channel](https://gitlab.slack.com/archives/C04SS157XSQ)
- [Standup Slack channel](https://gitlab.slack.com/archives/CPJ6QAV9S)
- [Social Slack channel](https://gitlab.slack.com/archives/C04QL4HKV0C)

Some dedicated Slack channels:

* Agent for Kubernetes: [`f_agent_for_kubernetes`](https://gitlab.slack.com/archives/f_agent_for_kubernetes)
* Terraform backend: [`f_terraform_backend`](https://gitlab.slack.com/archives/f_terraform_backend)
* [Terraform provider](https://gitlab.com/gitlab-org/terraform-provider-gitlab): [`terraform-provider`](https://gitlab.slack.com/archives/terraform-provider)
* Auto DevOps: [`f_autodevops`](https://gitlab.slack.com/archives/f_autodevops)
* Environments Detail Page: [`#f_environment_details_page`](https://gitlab.slack.com/archives/C04N1P3B3UL)

## Insights

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="environments" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
  {{< tableau/filters "GROUP_LABEL"="environments" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/Flakytestissues/FlakyTestIssues" >}}
  {{< tableau/filters "GROUP_NAME"="environments" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/SlowRSpecTestsIssues/SlowRSpecTestsIssuesDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="environments" >}}
{{< /tableau >}}

## Processes

### Acronyms

- Engineers: All the Engineers of the Environments group
- Engineering: Engineers and the Engineering Manager
- EM: Engineering Manager
- PM: Product Manager
- FE: Frontend Engineer
- BE: Backend Engineer
- UX/PD: User Experience Designer
- TW: Technical Writer

### Meetings

#### Environments Team Meeting

We have one team meeting each week. The time alternates every week to accommodate APAC/EMEA and EMEA/AMER. The purpose of this meeting is to share information about the ongoing projects. It also contains general announcements that are important for collaboration.

Meeting format:

- Before and during the meeting, team members write anything they want to verbalize in the notes attached to the meeting.
- We wait 1 or 2 minutes for the team members who want to join and then start recording when ready.
- During recording, we go over each point in the document.
- Anyone can facilitate the discussion. If the EM or PM is there, they will kick things off.
- If the author of the current point being discussed is available, they can verbalize their point.
- A short discussion may occur around each point, taking into consideration that we want to get through as much of the document as we can.
- All team members are welcome and encouraged to help take notes in the document while the discussion takes place.
- After we get through all the points, we stop recording.
- If there is left over time, team members may use the remaining unrecorded time to socialize or leave the meeting early.

If the meeting for the week has already taken place and you would like to add a new item for discussion, create a new section for the next meeting date above the last one and add your item.

#### Frontend, Go and Ruby Meetings

These are optional meetings on the team calendar. Everyone on the team is welcome. They are prioritized
to be at a time where as many of the engineers who work primarily on the corresponding topics can attend.

These meetings are not too formal and also provide time for the engineers across
time zones to discuss ongoing projects, ask questions, pair up, and catch up. We go through any
agenda items first.

Meeting Links:

- Frontend: [Frontend ChitChat](https://calendar.google.com/calendar/event?action=TEMPLATE&tmeid=MDE2OWkwamdtOG45aDFjdWFlNHY0aWVhYTFfMjAyNDAxMjNUMTUzMDAwWiBnaXRsYWIuY29tX2tuYWlmZjdiY3BnM3FrcXJ1YmRrZjRpdjEwQGc&tmsrc=gitlab.com_knaiff7bcpg3qkqrubdkf4iv10%40group.calendar.google.com&scp=ALL)
- Go: [It's time to Go !!!](https://calendar.google.com/calendar/event?action=TEMPLATE&tmeid=ZGJvaDFvZDBmM3FrcnIyaWJ2NXAyNmw3NG1fMjAyNDAxMjRUMTAwMDAwWiBnaXRsYWIuY29tX2tuYWlmZjdiY3BnM3FrcXJ1YmRrZjRpdjEwQGc&tmsrc=gitlab.com_knaiff7bcpg3qkqrubdkf4iv10%40group.calendar.google.com&scp=ALL)
- Ruby: [Ruby Chat](https://calendar.google.com/calendar/event?action=TEMPLATE&tmeid=MnRxYWtwM2xkNWdxdDMwbjhuaHNydDQ0cnRfMjAyNDAxMjNUMjMwMDAwWiBnaXRsYWIuY29tX2tuYWlmZjdiY3BnM3FrcXJ1YmRrZjRpdjEwQGc&tmsrc=gitlab.com_knaiff7bcpg3qkqrubdkf4iv10%40group.calendar.google.com&scp=ALL)

#### Technical Discovery Meetings

Sometimes we will encounter issues that need the input of the whole team to be refined and then worked on, such issues will be selected as a topic for a Technical Discovery meeting.
We try to be conscious of sync time and so we expect a maximum of two of these meetings for each milestone.
A technical discovery meeting consists of:

- 2 Meetings across timezones so that everyone has a fair opportunity to join the sync meeting.
    - APAC/EMEA
    - EMEA/AMER
- The 2 meetings are recorded and share the same agenda.
- The meetings are announced at least one week before they will be held and each participant must familiarize themselves with the issue that is being investigated prior to attending one of the meetings.
- Discussing the topic async in advance in the issue/epic is encouraged.
- The PM will open the conversation either by describing the use case/scenario or by recording a quick video about it.
- The meetings are agenda first and everyone is expected to write their comments and questions in the agenda before the first meeting.
- If the agenda is empty the meeting is cancelled.
- The conversations in the meeting must be recorded in the same documents as notes.
- One host is decided for every meeting, and they are responsible to drive the conversation forward.
- In the last meeting someone is appointed to summarize the conversation either in the original issue or a technical document.

The goal of technical discovery meetings is to come up with a concrete technical proposal for the question at hand. We should not force a proposal, but aim to get there and write the conclusion accordingly with potential follow-ups.

#### Design Pair Meeting

Each week the Product Designer hosts a design pairing session with the team on Thursdays at 1:30pm UTC. The goal of the design pairing sessions is to give the team more insight into what Product Design is currently working on, share feedback and questions, as well as give us a space to brainstorm and work together through bigger problems. Anyone is encouraged to propose topics or existing user problems that could use some brainstorming together as a team. A design pairing session consists of:

- [An agenda document](https://docs.google.com/document/d/1osEJL4S2xe7AIgWoInIPoup-A2XuvqSZe5YNMFPTilo/edit?usp=sharing) with the weekly topic prepared the day before.
- 30 minutes of the call will be dedicated to a design walkthrough or brainstorming session.
- 20 minutes of the call will be dedicated to a Q&A from the engineering team (previously know as the FE/UX sync).
- A recording which will be posted to the team's [Youtube playlist](https://www.youtube.com/playlist?list=PL05JrBw4t0Kq-lA3_JctMdX0y4um3BGmV).

If there are no topics, the meeting can be cancelled for the week.

#### Engineering Pair Meeting

Due to high distrubtion and full calendars, we can have one of these for as many
regions for which we have a DRI.

##### AMER

DRI: `@hustewart`

Time: Tuesdays at 6:00pm UTC.

Goal: Solve problems together and build trust/rapport.

[Calendar event](https://calendar.google.com/calendar/event?action=TEMPLATE&tmeid=M2xxMm5kOGYwOXB2YzloZTBvZWg4bGhwczQgZ2l0bGFiLmNvbV9rbmFpZmY3YmNwZzNxa3FydWJka2Y0aXYxMEBn&tmsrc=gitlab.com_knaiff7bcpg3qkqrubdkf4iv10%40group.calendar.google.com)

What we'll do:
- Introductions for people who don't know each other.
- Pick a problem to solve.
- Pair.
- Document what we learn.

Feel free to submit a topic beforehand (notes are on calendar event), or simply show up.

All team members are welcome.

##### EMEA/APAC

DRI: `@andrei.zubov`

Time: Every second Tuesday at 8:00am UTC.

[Calendar event](https://calendar.google.com/calendar/event?action=TEMPLATE&tmeid=NDIyOG9rNWxhbTU3ZXJoYTVxYmlrcmt2ZW1fMjAyNDAzMjZUMDgwMDAwWiBnaXRsYWIuY29tX2tuYWlmZjdiY3BnM3FrcXJ1YmRrZjRpdjEwQGc&tmsrc=gitlab.com_knaiff7bcpg3qkqrubdkf4iv10%40group.calendar.google.com&scp=ALL)

### Team issue tracker

- We use [team issues tracker](https://gitlab.com/gitlab-org/ci-cd/deploy-stage/environments-group/general/-/issues) for internal discussions such as: milestone planning issues, events planning, etc...
- We also use a [special project](https://gitlab.com/gitlab-org/ci-cd/deploy-stage/environments-group/info/-/issues) for [Ops Section Async Updates](engineering/development/ops/#async-updates-no-status-in-meetings).
- These issues are [public by default](/handbook/values/#public-by-default), but can be confidential.

### Issue refinement

Every week the [refinement bot](https://gitlab.com/gitlab-org/ci-cd/deploy-stage/environments-group/refinement) assigns a team member as the refinement DRI, who is responsible for refining **some issues from the top of the `~"workflow::refinement"` list** (the list is prioritised top to bottom) in the [Milestone Board](#milestone-board) **and another issue of their choice** with a ping to the EM and/or PM explaining the reasoning.

The refinement process is described in the [issue template](https://gitlab.com/gitlab-org/ci-cd/deploy-stage/environments-group/refinement/-/blob/main/templates/default.erb).

### Planning

#### Issue Weighting

The weights we use are:

| Weight     | Extra investigation | Surprises    | Collaboration |
| ---------- | ------------------- | ------------ | --------      |
| 1: Trivial | not expected        | not expected | not required  |
| 2: Small   | possible            | possible     | possible      |
| 3: Medium  | likely              | likely       | likely        |
| 5: Large   | guaranteed          | guaranteed   | guaranteed    |

The above table is contextual. For example, domain knowledge, experience levels, and time at GitLab can impact an engineer's perspective on whether an issue requires Extra Investigation or Surprises.

Weights are not set in stone. We do our best to get it right during refinement, but we want to be transparent and accurate. If an issue is taking more effort than is reflected in the existing weight, the DRI on the issue is encouraged to change the weight. We want accurate documentation of the level of effort that was required.

By giving a weight 1 to an issue, we're saying "we can't benefit from this issue being broken down into smaller units of shippable work."

Anything 5 or larger should be broken down, these should not be `ready for development`. We would likely turn a 5 into an epic, into a research and implementation issue or a [technical discovery](TBD).

Occasionally, a proof-of-concept (POC) is necessary to determine a feasible technical path. When one is required, the engineer will create a POC issue that contains the context of the research to be conducted along with the goals of the POC. This
issue will be scheduled for work before any further breakdown of tasks is performed. Once the technical path is clear, the engineer can proceed to weight the issue and/or break down the issue further to guide implementation. Every POC issues should contain a list of questions we want to answer, the definition of done should include the answers and suggested next steps.

Not all POCs will be successful, and that is OK! Some avenues of research may not be successful, and the POC will have saved us from investing significant time in a solution that will not meet our needs. The goal is early feedback and fast iteration.

As a note, designers use the design weight labels instead of using the weight input within the issue, which is reserved for engineering.

##### Weight, Velocity, and Planning

We intentionally leave the term "velocity" undefined and do not use it in planning workload capacity for the team.

We leave the question of interpreting summed weights open to each unique situation.

When making decisions about how much work the team can take on for a milestone, we trust individual impressions and instincts reflected in the discussions that take place in the planning issue and the refinement process. The weighting system helps foster these discussions.

### GitLab Terraform Provider

The [GitLab Terraform Provider](/handbook/engineering/projects/#terraform-provider-gitlab) is managed by the Environments group.

### Milestone Board

The issues scheduled for a milestone can be tracked at [Milestone Board](https://gitlab.com/groups/gitlab-org/-/boards/4176401?not[label_name][]=environments%3A%3Aparked).

This board contains all the necessary columns to track the workflow of the team, in particular:

- `~"workflow::refinement"` the list of issues that needs to be refined before they can be assigned.
- `~"workflow::ready for development"` the list of issues that are ready to be worked on, both assigned and not assigned to the milestone.
- One or more Milestone columns containing the planned work for the given milestone.

All the columns are prioritised top to bottom.

Once a team memeber self-assigns an issue on the Milestone Board, issue labels should follow the [Engineering Workflow](/handbook/engineering/workflow/#updating-issues-throughout-development).

For Merge Requests, it's up to the author and the project they are contributing to, to decide if they want to use these `~workflow::` labels. It is not required to use them or keep them synced up with the Issue labels.

#### Feature development

Our goal is to move towards a continuous delivery model so the team completes tasks regularly, and keeps working off of a prioritized backlog of issues. We default to team members self-scheduling their work:

- Team members self-assign issues from the [Milestone Board](https://gitlab.com/groups/gitlab-org/-/boards/4176401?not[label_name][]=environments%3A%3Aparked) that are in the `workflow:ready for development` column and has the current milestone.
-  `~Deliverable` issues take priority over any other work, as they are the main focus of each milestone and inform our [say-do ratio](#say-do-ratio).
- Once a team member has completed their assigned issues, they are expected to go to the Milestone Board and assign themselves to the next unassigned issue from the current milestone.
- If there are no more issues in the current milestone, engineers are expected to assign themselves to the next unassigned `workflow:ready for development` issue.
- The issues on the board are in priority order based on importance (the higher they are on the list, the higher the priority). This order is set by the product manager.
- If all issues are assigned for the milestone, team members are expected to identify the next available issue to work on based on the team's work prioritization (see below).
- While backstage work is important, in the absence of specific prioritization, the team will have a bias towards working on `bug` or `feature` categorized issues.

#### ~Environments::EngineeringChoice process

While diligently pursuing our objectives, we also recognize the significance of work that resonates personally with our engineers. To facilitate this, we have introduced the "~Environments::EngineeringChoice" label. Here's how it works:

1. **Selection During Milestones**: In each Milestone Plan, engineers are encouraged to select up to five issues (total for the group) that they find particularly interesting or valuable, marking them with the "~Environments::EngineeringChoice" label. These issues should improve GitLab product or developer experience but they don't have to be in the ~"group::environments" domain.
1. **Limit per Milestone**: To maintain focus, no more than five issues should be labeled with "~Environments::EngineeringChoice" within a single milestone.
1. **Priority After Deliverables**: Once all mandatory ~Deliverables are completed, the next priority is to address issues labeled "~Environments::EngineeringChoice."
1. **Refined issues only**: Before applying the "~Environments::EngineeringChoice" label, the issue should be `worfklow::ready for development` and accordingly needs a weight.
1. **Maximum issue size**: To rule out likely surprises and extra investigation, only issues with [weight 1-2](#issue-weighting) are acceptable for "~Environments::EngineeringChoice".
1. **Tracking in Milestone Planning**: Progress and choices under the "~Environments::EngineeringChoice" category will be monitored and recorded in a specific section of the Milestone Planning issue.

#### Bug fixing and prioritized work

Team members self-schedule feature development. The manager may assign bugs or other important work directly to a team member.

When severity labels are assigned/changed on a `~type::bug` issue, we aim to set/adjust the issue due date at the same time.
everyone is encouraged to set the deadline based on the date of the last severity label update and [the SLA for the given severity](/handbook/engineering/infrastructure/engineering-productivity/issue-triage/#severity-slos).

##### Bug intake process

###### High level

The goal of our bug intake process is to deliver the best result for the
customer while aligning with our CREDIT values. From a high level we value the
following:

- A bias for action on deciding if we will fix a bug or not.
- A bias for action on scheduling work to fix bugs we've decided to fix.
- Not maintaining a bug backlog. 

As a result of the above principle, all bug reports should end up in one of the following destinations:
  - They are verified as a bug we will fix, becoming part of the next
    milestone's planned work as soon as they are `~workflow::ready for
    development`

  - They are verified as bugs but labeled as `~wontfix` and closed.

  - They determined not to be bugs. The `~type::bug` label is removed and the
    issue is closed, re-triaged as a feature or maintenance issue.


###### Process details

When a `~group::environments` issue is created with the `~type::bug` label,
apply the following process:

- From the reporter, ask for clear and concrete steps to reproduce the issue
  with a minimal setup and example input/output directly on the issue along with
  the expected input/output.

- From the reporter, ask for a link to relevant documentation (if available) that
  support the idea that the behavior is unexpected. If no documentation exists,
  then we need an explanation of why the reporter expects a different result.

- If the reporter is a GitLab team member, ask if we have something that shows
  an idea of how many users are impacted, or broader category like "all customer
  using feature x". This may not always be available but it helps in
  prioritizing when it is.

- Once the reporter has provided the required information, apply the severity
  and (optionally) priority labels.

- Decide if it is a bug.

- Communicate that through labels, and a summary comment.

- Decide if we will fix it. This requires partnering with the Product Manager.

- Apply the `~wontfix` label if we won't fix it and close the issue with a comment.

- If we will fix it two things happen:
  - Product manager moves the issue up in refinement list.
  - Fixing it becomes part of the current or next milestones planned work.

##### Deciding if a reported behavior is a bug

Anyone can create an issue and apply the `~type::bug` label. It's up to our team
to verify that the behavior is actually a bug.

If it's not clear that the reported behavior is a bug, partner with the product
manager.

##### Deciding to not to fix a bug

In each case we will need to partner with the product manager and compare the
effort required to the value delivered. This is then also taken into
consideration alongside other objectives.

Engineers can partner well with the product manager thinking through this loose
criteria:

- What are the severity and priority labels saying about the impact of this bug?
- How much effort does this bug require to fix?
- How much risk is involved in fixing this bug?
- Is this bug part of something that will be deprecated soon?
- Are there existing workarounds to mitigate the undesired behavior?

#### Say-do ratio

Our team keeps track of their commitment with `say-do` ratios, two metrics are important: **say-do** and **reprioritized say-do**

- Say-do **only** applies to `~Deliverable` issues.
- By the 17th of the month the `~Deliverable` label is applied to the upcoming milestone issues by the EM.
- We aim roughly to assign one `~Deliverable` for each engineer, this may change milestone by milestone.
- Any issue that has the `~Deliverable` label at that point is considered as *promised to be delivered* and is part of our say-do ratio.
- If at any time during the milestone a `~Deliverable` label is removed or the issue is removed from the milestone that issue does **not** count anymore in the `reprioritized say-do` metric, but still does count for `say-do`.

We aim to achieve 100% `re-prioritized say-do` and at least 80% `say-do`.

##### Example

- In the milestone 15.11 we have 10 `~Deliverable` issues labelled as such by the 17th of March 2023
- Along the way we realise that 5 of those `~Deliverable` issues will not make it, and reasonably before the end of the milestone, we move them to 16.0
- At the end of the milestone there is an hiccup and of those 5 remaining issues, 1 is not completed.

Our `say-do` ratio would be 40% (4 out of 10)
Our `reprioritized say-do` would be 80% (4 out of 5)

### MR reviews

Team members should use their best judgment to determine whether to assign the first review of an MR based on the DangerBot's suggestion or to someone else on the team. Some factors in making this decision may be:

- If there is known domain expert for the area of code, prefer assigning the initial review to them.
- Does the MR require a lot of context to understand what it is doing? Will it take a reviewer outside the team a long time to ramp up on that context?
- Does the MR require a lot of dev environments setup that team members outside the Environments group are likely to not have?
- Is the MR part of a larger effort for which a specific team member already has all the context?

### Handling Deferred UX

Team members should make their best effort to resolve UX issues as they come up
during MR reviews. However, there are times where the changes requested or
feedback given would significantly slow down velocity. For the sake of
efficiency and iteration, a Deferred UX issue must be opened to follow up on the
feedback.

In these instances, the engineer who authored the original MR should assign
themselves the issue and become the DRI to evaluate the UX feedback. This may
mean reaching out to the team's Product Designer to ensure the feedback is
actionable and resolving the debt is prioritized appropriately during the
following milestone planning. For example, for Deferred UX issues opened in the 16.3
milestone, engineers should evaluate and ensure appropriate prioritization of
the issue during the planning of the 16.4 milestone. This does not mean that the
issue must be resolved during the 16.4 milestone, but that the issue is placed
into the appropriate step of our [product development
flow](/handbook/product-development-flow), or closed if appropriate.

This helps to ensure that Deferred UX issues are resolved in a timely manner,
keeping with the overall goals of the group and adherence to broader
[engineering workflows](/handbook/engineering/workflow#deferred-ux).

### Epic Ownership

The Environments group uses epics to describe features or capabilities that will increase the maturity of the Environments categories over time.

Each epic should be owned by an engineer who is responsible for all technical aspects of that epic. The engineering DRI will work closely with the Product Manager and Product Designer to understand the requirements and create issues that encapsulate the technical work required during the [design](/handbook/product-development-flow/#validation-phase-3-design)/[solution validation](/handbook/product-development-flow/#validation-phase-4-solution-validation) phases and [build](/handbook/product-development-flow/#build-track) track of the [Product Development Flow](/handbook/product-development-flow/). Each issue needs to be weighted and contain enough information in the description area for any other engineer on the team to be able to pick up that work.

**For the duration of building the epic**, the engineer does not need to be the only person implementing the issues. They should keep watch of the work that is done on the issues so that they can verify that the work is progressing correctly. If there are problems with the work, or lengthy delays,
they need to make sure the Product Manager and Engineering Manager are aware.

**When work is nearing completion**, the engineer should make sure that any additional issues that may have come up during the build process are either
addressed, or scheduled for work. Additional issues should be created and added to the epic. This will help to make sure that we do not build up technical debt while building.

**Finally**, they should also monitor any work that needs to occur while rolling out the Epic in production. If there are
rake tasks, database migrations, or other tasks that need to be run, they need to see those through to being
run on the production systems with the help of the Site Reliability counterpart.

This places a lot of responsibility with the DRI, but the PM and EM are always there to support them. This ownership
removes bottlenecks and situations where only the PM or EM is able to advance an idea. In addition, the best people
to decide on how to implement an issue are often the people who will actually perform the work.

To declare an ownership, insert `DRI: <your-gitlab-handle>` at the top of the epic description. [Example](https://gitlab.com/groups/gitlab-org/-/epics/9859).

## Quality Processes

Maintaining a high standard of quality is a critical factor to delivering winning products.

Within the Environments group we use the following processes and best practices to ensure high quality.

1. We ensure each MR is accompanied with meaningful unit tests and integration tests.
1. For each major feature we develop and maintain End to End tests that run nightly and confirm no regressions have been introduced to critical paths.
1. On a weekly basis, we review our [Triage report](/handbook/engineering/infrastructure/engineering-productivity/triage-operations/#triage-reports) for bugs and regressions and take the appropriate action.
1. We review the [quality dashboard](https://10az.online.tableau.com/t/gitlab/views/OpenBugAgeOBA/OpenBugAgeOBADashboard) each milestone to track our long term progress at improving quality.

#### End to End Testing

The Environments group uses [GitLab QA](https://gitlab.com/gitlab-org/gitlab-qa) for End-to-End testing. We have [guidelines](/handbook/engineering/development/ops/deploy/environments/quality) for how our team is leveraging these tests.

#### gitlab-agent QA bot

In [`feed_alerts_configure`](https://gitlab.slack.com/archives/C025U6U6HA9) we have a bot that  runs tests at [this project](https://gitlab.com/gitlab-org/configure/k8s-agent-qa/-/pipelines)

If this bot alerts of a failed pipeline, we should treat these the same as a broken master branch.
- Check the pipeline for intermittent errors (and retry if this is the case)
- Otherwise create an investigation issue to dig further/fix.

## Error Budget

Our target [availability](https://dashboards.gitlab.net/d/stage-groups-detail-environments/stage-groups-environments-group-error-budget-detail?orgId=1) is 99.9%

### Error Budget failure DRI process

Each week we receive an Error Budget report in [#cd-section](https://gitlab.slack.com/archives/C05BTB4CBGQ) on Slack if we are under our target availability.

An engineer might be assigned as a DRI to look into this.

The DRI is neither expected to determine a root cause nor propose a solution on their own.

The DRI should instead reach out to [the Scalability:Projections team](/handbook/engineering/infrastructure/team/scalability/projections.html) for support.

## Async Issue Updates

In order to optimize async collaboration across a big team we use issue updates to share progress completed on a specific issue or epic.
Weekly updates on progress and status will be added to each issue by its assignee. A weekly update may be skipped if there was no progress. It's preferable to update the issue rather than the related merge requests, as those do not provide a view of the overall progress. This applies to issues with the labels `workflow::in dev` or `workflow::in review`

The status comment should include what percentage complete the work is, the confidence of the person that their estimate is correct and, a brief note on what was done. It's perfectly acceptable to have multiple updates if more than one DRI is working on the issue.

As a part of the async update it's important to verify that the issue and related MRs workflow labels are correctly set.

#### Example

```
## Async status update

- Complete: 80%
- Confidence: 90%
- Notes: expecting to go into review tomorrow
```

To simplify the work of adding and keeping track of async updates [TalTal](https://taltal-new.netlify.app/) can be used.

## Career Development and Promotions

We want every team member to be advancing in their Career Development.

We follow the Engineering Department [Career Development Framework](/handbook/engineering/career-development/).

## Maximize asynchronous performance in this team

Async practices are particularly important to us because we live in time zones that do not afford much, if any, overlap during our working hours.

To maximize our asynchronous performance, we should follow [the GitLab Communication guideline](/handbook/communication/).
More specifically, the following points are important:

- Have an SSOT discussion page (Issue or MR). This is the main collaboration point that everyone can get the latest information quickly.
  The description section should contain essential and up-to-date information, such as:
  - What's the problem to solve?
  - Who's the DRI in charge of making the decision?
  - What's the [acceptance criteria](https://www.productplan.com/glossary/acceptance-criteria/) (e.g. user experience goal)?
  - Is anything out of scope?
  - What proposals do we have?
  - What are the PROs/CONs and technical difficulty of each proposal?
  - Whose approval do you need for making the decision?
  - When is the due date to make the decision?
  - FAQ
- The DRI keeps the description updated with latest information based on any
  decisions made in threads.
- When a team member is asked to give input, they should respond as soon as possible to unblock discussions.
  It's also fine to respond that you don't have any feedback or can't take time for it, so that the DRI can avoid waiting for your response.
- If the DRI didn't get much progress from the asynchronous communication, the DRI should schedule a synchronous meeting or reach out to broader audiences.
- When the DRI schedules a sync meeting, they should make sure that agendas are prepared before the meeting starts.

### Monthly Showcases DRI

We participate in the [OPS showcase initiative](/handbook/engineering/development/ops/#ops-engineering-showcase), to facilitate the selection of topics, the creation of the issues and content we have a Showcase DRI which will:

- Ensure every month at least a showcase issue is created and linked in the right issues/epic
- Facilitate the selection of the topic of each showcase, paying attention to give space to everyone in the team
- Help whoever is creating the content with video creation and issue description
- Ultimately is the showcase DRI responsibility that a showcase issue is produced and ready in time

Currently the showcase DRI for FY24Q3 is: @anna_vovchenko


## How to work with us

### Default to GitLab Issues

#### Why

We think that using GitLab Issues as much as possible is the best way to align with our values of Transparency and Efficiency. Using Issues gives us the greatest chance of collaboration, reusing any work done, and documenting the request and outcome in a findable, persisted way.

#### How

Follow the guidance in our [request for help documentation](https://gitlab.com/gitlab-com/ops-sub-department/section-ops-request-for-help).

### How to contribute to Auto DevOps

Read our [specific GDK](https://gitlab.com/gitlab-org/gitlab-development-kit/-/tree/main/doc/howto/kubernetes)
instructions as well as our [handbook entry](/handbook/engineering/development/ops/deploy/environments/autodevops/)
on what existing testing does and how to develop features for Auto DevOps.

### Useful links for contributing to Auto DevOps

- [Tips and Troubleshooting](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/main/doc/howto/kubernetes/tips_and_troubleshooting.md)
- [Useful Commands](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/main/doc/howto/kubernetes/useful_commands.md)
- [How to work with slow connections](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/main/doc/howto/kubernetes/tips_and_troubleshooting.md#qa)
- [Enabling premium features for development purposes](https://license.gitlab.com/users/sign_in)
- [Thanos query for complete Auto DevOps pipelines](https://thanos-query.ops.gitlab.net/graph?g0.range_input=2d&g0.max_source_resolution=0s&g0.expr=sum(increase(auto_devops_pipelines_completed_total%7Benv%3D%22gprd%22%7D%5B6h%5D))%20by%20(status)&g0.tab=0)

### Shared Cloud Infrastructure

The Environments group has access to a shared GCP project which can be used for demos, experiments, or to host auxilliary services.
The project id is `deploy-stage-shared-i-e55e01cb` and was created and provisioned using the following ARs:

- https://gitlab.com/gitlab-com/it/infra/issue-tracker/-/issues/493 (internal)
- https://gitlab.com/gitlab-com/it/infra/issue-tracker/-/issues/495 (internal)

If you need to create permanent infrastructure in that GCP project, it's encouraged to do it with Terraform
to easily share and document the setup with the entire group. You can use [this](https://gitlab.com/gitlab-org/ci-cd/deploy-stage/environments-group/infra)
GitLab group to host the project.

If the infrastructure is temporary, you can manage it with whichever tools you prefer.

Currently hosted projects:

- [arm64-runners](https://gitlab.com/gitlab-org/ci-cd/deploy-stage/environments-group/infra/arm64-runners): IaC for arm64-based GitLab runners for some projects requiring it due to the lack of arm64-based shared runners.

### Example/Demonstration projects

When you need to create an example project for demonstartion,
consider having it in the [example group](https://gitlab.com/gitlab-org/ci-cd/deploy-stage/environments-group/examples)
instead of your personal namespace.

This allows us to collect all of the knowledge under the same place. Also, this example group has EEP license by default.
