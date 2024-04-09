---
title: "Static Analysis Group"
---

## Static Analysis

The Static Analysis group at GitLab is charged with developing the [Static Application Security Testing (SAST)](https://about.gitlab.com/direction/secure/static-analysis/sast/) feature category for customer software repositories.

## Common Links

- Slack channel: #g_secure-static-analysis
- Slack alias: @secure_static_analysis_team
- Google groups: static-analysis-be@gitlab.com

## How We Work

The Static Analysis group is largely aligned with GitLab's [Product Development Flow](/handbook/product-development-flow/), however there are some notable differences in
how we seek to deliver software. The engineering team predominantly concerns itself with the delivery of software, which is the portion of the workflow states where
we deviate the most. What follows is how we manage the handoff from product management to engineering to deliver software.

Issues worked by this team can span analyzers, vendored templates, and GitLab's Rails monolith.

### Issue Boards

- [Static Analysis Delivery Board](https://gitlab.com/groups/gitlab-org/-/boards/1590112?label_name[]=group%3A%3Astatic%20analysis&group_by=epic)
  - Primary board for engineers from which engineers can work. It's stripped down to only include the workflow labels we use when delivering software and utilizes epic-level swimlanes.
- [Static Analysis Planning Board](https://gitlab.com/groups/gitlab-org/-/boards/1229162?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=group%3A%3Astatic%20analysis)
  - Milestone-centric board primarily used by product management to gauge work in current and upcoming milestones.
- [Static Analysis EM Board](https://gitlab.com/groups/gitlab-org/-/boards/1655697)
  - Engineer-centric board used by engineering management to gauge how heavy a load engineer is carrying. Judged by the number of issues assigned to them.

#### Issue and Merge Requests labels

GitLab has a labeling convention for issues and Merge Requests. We follow this convention, though there are specific labels required to route artifacts to us. We
use these labels to filter issues meant for us on our issue boards. They are also used for metrics and KPI reporting.

| Label | Meaning |
| ----- | ------- |
| ~section::sec | Identifies the issue or MR as belonging to the Sec Section's roadmap. |
| ~devops::secure | Identifies the issue or MR as belonging to the Secure Stage's roadmap. |
| ~group::static analysis | Identifies the Static Analysis group as the collection of individuals who will work on the issue or MR. |
| ~Category:SAST | Identifies the issue or MR as being part of the SAST feature category. |
| ~Category:Secret Detection | Identifies the issue or MR as being part of the Secret Detection feature category. |
| ~Category:Code Quality | Identifies the issue or MR as being part of the Code Quality feature category. |
| ~backend | Identifies the issue or MR as being part of GitLab's backend. |
| ~frontend | Identifies the issue or MR as being part of GitLab's frontend. |

### It all starts with planning

As is the case throughout GitLab, the Static Analysis group works on a monthly planning cadence. We are product-driven and work in response to the priorities identified by Product Management.

However, GitLab milestones start in the second half of each month, which has made a planning cadence organized around weeks in a milestone somewhat difficult to understand as there are many
edge cases which are at odds with the Gregorian calendar. Rather than trying to work out week numbers in a milestone, we describe our planning cadence based upon weeks in a month.

Work in a calendar month is mixed between the **Current milestone** (which will be released [the current month](/handbook/engineering/releases/)) and the **Next milestone** (which will be released the following month).

#### Week 1

- **Current milestone:** Engineering Manager creates milestone [release issue](https://docs.gitlab.com/ee/development/sec/analyzer_development_guide.html#monthly-release-process), with assignments for individual updates.
  - Expected outcome: Engineers will complete designated tasks within 2 weeks.
- **Next milestone:** Product Manager creates a draft [planning issue](#planning-issues) for the upcoming milestone.
  - Group members and stable counterparts asynchronously add suggested items or problem areas that could be included in the milestone; see [planning issue format](#planning-issue-format) for details.
  - Product Manager and others engage in issue comments.

#### Week 2

- **Next milestone:** Product Manager finalizes priorities; group finalizes understanding of scope.
  - Product Manager edits issue description to reflect priorities.
  - Engineering Manager assigns a single DRI to each prioritized theme.
  - DRI works with Engineering Manager and Staff Engineer to discern the following:
    - Do you understand the business capabilities requested?
      - Are they clearly articulated in the issue description?
      - Do you agree with them?
        - If not, what's missing?
    - Do you have enough information about the work requested?
      - If so, please collect or create implementation issues.
      - If not, what are the unanswered questions?
        - Take questions to Product Management to clarify expectations.
        - If clarity is not found, create technical discovery issue(s) to flesh out the unknowns.
  - Theme design completed.
  - Engineering team for each theme declared.
  - Issues created or collected.
- **Current milestone:** Product Manager creates [release post](/handbook/marketing/blog/release-posts/) items based on customer-facing improvements that we expect to ship before the [release date](/handbook/engineering/releases/). At a minimum, one release post item details all notable updates from the release issue created in [Week 1](#week-1).

#### Week 3

- **Next milestone:** Issues in prioritized theme refined by declared engineering team.

#### Week 4

- **Current milestone:** Retrospective conversation held on the just-completed milestone.
- MoSCoW session held to review oldest issues still open.
  - Are the opportunities they describe still relevant?

### Planning issues

We use planning issues to articulate the themes which should be our top priorities in each release.
Themes may include epics or issues.

Product development is a team effort and everyone can contribute.
We interpret prioritized themes as what we're being asked to deliver; we use the entire group's strengths to break down and refine those themes into implementable solutions.

The planning issue serves multiple purposes:
 - Within the group and stable counterparts, the issue helps us identify and agree on the scope of work we seek to execute in the next milestone.
 - Outside the group, the issue communicates our priorities and what might be delivered during the milestone.
   - Note: although we seek to deliver on our plans, the planning issue is not itself a _promise_ to deliver a given issue by a certain time.

#### Planning issue format

The planning issue includes:
- Prioritized product themes (DRI: Product Manager)
  - Themes are written in priority order, with the most important priority first.
- Technical writing priorities (DRI: Technical Writing stable counterpart)
- Quality priorities (DRI: Quality stable counterpart)
- Planning priorities (DRI: Product Manager)
  - This section covers forward-looking tasks that we plan to work on during the current milestone, for better visibility and awareness across the team.
  - These tasks will generally be completed by Product Management, UX Design, or others not already covered in other sections.

Anyone can update the issue to add links, context, or information like DRI assignments, but the DRI for a section should be consulted if a meaningful change is to be made.
For instance, the Product Manager should be part of any decision to reorder priorities, and the Technical Writer should be part of any decision to add technical writing scope.

#### How we interact with planning issues

- Engineering Manager will mention engineers in planning issues to declare which epic they will work within.
- Engineering Manager will assign engineer(s) who will be working on issues in the prioritized epics.
- Engineering Manager will pull all issues on the epics prioritized into the `~workflow::planning breakdown` state.
  - This action should make the issues available on **Static Analysis Delivery Board** mentioned above.

#### Frontend Planning Meeting

The Frontend Planning meeting is a crucial planning session that takes place during the last quarter of a milestone. It has a heavy focus on Frontend-related issues because they often have many dependencies from other trades.

The purpose of this meeting is to lay out expectations and goals for the milestone that comes **after** the upcoming milestone, as well as to identify any potential blockers that may arise. By doing so, the team can proactively address any workflow dependencies and stay on top of them.

The goals and blockers for the milestone after the upcoming one are then documented in the planning issue of the upcoming milestone.

By holding regular Frontend Planning meetings, the team can ensure that all Frontend-related issues are identified and addressed proactively, which can help to prevent delays  by making sure things are ready to be picked up as planned.

### MoSCoW Process

The team aims for a regular cadence of backlog refinement with minimal overhead. One of the approaches we use to eliminate stale issues
is our asynchronous [MoSCoW](https://airfocus.com/glossary/what-is-moscow-prioritization/) prioritization process.

The goal is to determine what should be closed out of the backlog as "wont do." This is not an attempt to weight issues, which comes later after we have determined
whether the goals of the issue are worth pursuing.

The asynchronous MoSCoW process will be conducted over a 1 week period during each milestone. It is suggested to limit total item counts to around 12-15.

See [%15.3 issue](https://gitlab.com/gitlab-org/gitlab/-/issues/368540) as an example. This issue format can be cloned and applied as-needed.

### Static Analysis Shared Calendar

The [Static Analysis Shared Calendar](https://calendar.google.com/calendar/embed?src=c_fb285ec72974733f23fd84f70397732e68f7db9abe706c5613f199b6202e379a%40group.calendar.google.com) is used to make sure PTO events are visible to everyone on the team.

Below are the steps to add the calendar to Time Off by Deel:

- In Slack, jump to **Time Off by Deel** > **Home**, click on the dropdown **Your Events**, and select **Calendar Sync**.
- Under **Additional calendars to include?**, click on **Add calendar**.
- Add the following calendar ID: `c_fb285ec72974733f23fd84f70397732e68f7db9abe706c5613f199b6202e379a@group.calendar.google.com`.
- Great job! 🎉 Your PTO events will be synced to Static Anaylsis Shared Calendar from now on. 🚀

### Observability

For GitLab.com, we monitor performance of our code within the Rails application, metrics around our CI build performance, and traffic to our container registries. These dashboards are accessible on the [Monitoring](/handbook/engineering/monitoring) page.

Observability is a critical component to any high-availability system and it is recommended for each team member to review each dashboard and ensure they are familiar with their usability and trends.

- [Secure::Static Analysis Group Error Budget](https://dashboards.gitlab.net/d/stage-groups-static_analysis/stage-groups-static-analysis-group-dashboard)
- [SAST Analyzer Registry Traffic](https://log.gprd.gitlab.net/app/dashboards#/view/84aa3f10-89d2-11ec-9dd2-93d354bef8e7?_g=(filters%3A!()%2CrefreshInterval%3A(pause%3A!t%2Cvalue%3A0)%2Ctime%3A(from%3Anow-24h%2Cto%3Anow)))
- [SAST Engineering Kibana Dashboard](https://log.gprd.gitlab.net/app/dashboards#/view/1eebd010-9a73-11ec-9dd2-93d354bef8e7)


#### Runbooks

The process for monitoring, responding to, and mitigating incidents is documented within our [Static Analysis Runbooks](runbooks/) page.

### Software delivery in Static Analysis

While we follow GitLab's product development flow, our processes as an engineering team most closely resemble kanban. Engineers are empowered to choose issues from the Delivery
Board in their assigned epic swimlane and pull them through the identified states. In addition to the workflow states identified by the company, we are experimenting with the
`~workflow::refinement` state. Engineers are expected to use their best judgment as to how issues flow through the board, but the following outcomes are expected at each state.

An issue landing on the delivery board is the means by which work is released to the engineering team for Delivery. This event is the beginning of the process by which the
engineers will scrutinize an issue's readiness, estimate it size, and implement the changes necessary to achieve the desired outcomes.

| State | Expected Outcomes |
| ----- | ----------------- |
| `~workflow::planning breakdown` | - Issues deemed complete and understood.<br />- Issue split into smallest testable units of value.<br />- We try to split issues vertically rather than horizontally. Splitting vertically means the whole system will do something noticeably different; splitting horizontally results in trying to realize the fullest possible change in an individual component.<br />- If the issue can - and should - be split into separate issues, engineers are empowered to create the new issues, attach them to the epic they are working, and collaborate with product management on if they are included in current scope. |
| `~workflow::refinement` | - Implementation plan<br />- Relative size applied as weight. |
| `~workflow::ready for development` | Buffer queue - issue deemed to be `~Deliverable`, `~Stretch`, or possibly punted to a future iteration. |
| `~workflow::in dev` | Last MR is up and out of Draft or WIP status. |
| `~workflow::in review` | Last MR is merged and changes are available in a production environment. |
| `~workflow::verification` | Changes functionally tested in a production environment. |
| `~workflow::complete` | Code is verified, the work is complete, and the issue is closed. |

#### Weights

We assign issue weights according to the [Secure stage issue weight definitions](/handbook/engineering/development/sec/secure/workflow/#possible-values).

#### How we commit to delivering work in a milestone

In GitLab, the `~Deliverable` label is referred to as a [release scoping label](https://docs.gitlab.com/ee/development/labels/index.html#release-scoping-labels). Applying this label
represents a commitment from the engineering team to realize the work required in the issue within the milestone to which the issue is assigned. This means we decide whether we can commit to
delivering work once an issue is in the `workflow::ready for development` state.

The decision on when to use the `~Deliverable` label is made through answering the following questions.

- Given the issue's weight, are we reasonably confident there is enough time left in the milestone for the engineer to deliver the issue?
  - We currently assume an engineer in Static Analysis can achieve a velocity of 9 in any one milestone.
- Would the issue be achievable early in the next milestone if work began now?
  - If so, discuss with the Product Manager about the situation. Work can begin if the Product Manager agrees with the proposed timeline and would like to proceed.
  - Please make sure the milestone is updated before continuing with work.
- Is this the smallest, testable unit of work which adds value and cannot be further broken down without adding overhead?

The `~Deliverable` label is applied if the answer to the above questions are yes. The use of this label impacts the group's Say/Do ratio, making the Engineering Manager the directly responsible
individual for this label. However, engineers in Static Analysis are empowered to use their judgment about applying this label and proceeding if they believe the work is achievable. Please
have a conversation with the Engineering Manager if uncertain about how to proceed.

#### Code Review Process

The process for reviewing and maintainer code is documented within our [Static Analysis Group Code Review](/handbook/engineering/development/sec/secure/static-analysis/code_review.html) page.

#### Stabilization Period and Slack Time

The collection of issues which make up epics represent a sizable amount of work, which we typically seek to limit to approximately 1.5 milestones in total duration. The size and scope of
this work can result in previously unseen scope or have unexpected consequences. As a result, we will not immediately kick off work on another epic immediately after completing one. We will
allow one week of time for tech debt cleanup, feature stabilization, and engineer slack time to explore topics they encountered which are of interest to them.

### Security Vulnerability Process

We are responsible to ensure that what we deliver is secure. This means that we dogfood GitLab's Security
features.

See the [Secure sub-department vulnerability management process](/handbook/engineering/development/sec/secure/#vulnerability-management-process).

When creating an issue for a vulnerability, please make sure to follow
the [Engineering Security instructions](/handbook/security/engaging-with-security/#creating-new-security-issues).

#### SLO by Vulnerability Severity

When triaging `Unknown` vulnerabilities, they should be assigned a proper severity as a means to decide the
priority they should receive to be resolved. The corresponding priority is taken from [issue triage](/handbook/engineering/infrastructure/engineering-productivity/issue-triage/#priority).

| Target                     | Unknown | Critical     | High         | Medium       | Low          |
|----------------------------|:------:|:------------:|:------------:|:------------:|:------------:|
| Dismiss/Confirm Vuln       | 72h    | 72h          | 72h          | 1mo          | 1mo          |
| Confirmed Vuln is Resolved | N/A    | ~priority::1 | ~priority::2 | ~priority::3 | ~priority::4 |

#### Workstream Designation

The following is a description of the type of work and which workstream it flows through.

| Work | Responsible Workstream |
|---|---|
| Triage of new vulns | This should be done as a part of the MR review that introduces the vulns. |
| Triage of existing vulns | This is done by the main maintainer of each of our analyzers as defined in our [Release project's issue template](https://gitlab.com/gitlab-org/security-products/release/-/blob/master/scripts/templates/release_issue.md.erb). |
| Resolution of Critical / High Vulns | These should be a Product-driven priority. |
| Resolution of Medium / Low Vulns | This is done by the main maintainer of each of our analyzers as defined in our [Release project's issue template](https://gitlab.com/gitlab-org/security-products/release/-/blob/master/scripts/templates/release_issue.md.erb). |

As always, contributions are welcome from our community or the current MR coach in rotation.

#### False Positive Dismissal Process

The process for dismissing a vulnerability as a false positive is as follows:

- If it doesn't exist on the [Static Analysis Group Defined False Positives](/handbook/engineering/development/sec/secure/static-analysis/false_positives.html) page, then write documentation describing the type of false positive and why we think it is classified as such.
- If the vulnerability relates to a specific code location (e.g. SAST), then open an MR with comments at each FP location that contain a link to the FP documentation.
- Dismiss vulnerability in the GitLab UI with a comment that contains:
  - A link to the FP documentation.
  - A link to the FP comment MR if it was created.

#### Vulnerability Issue Labels

When creating issues for vulnerability consider adding the following labels besides our normal labels:

- ~security
- ~"type::bug"

When there is a doubt about the severity/priority while creating the issue and severity/priority labels are
not added. Then [Appsec Escalation
Engine](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/automation-team/appsec-escalator#appsec-escalation-engine)
could be leveraged to initiate a discussion with the Appsec team.  This bot monitor issues that are labeled
~security and not ~test or ~"type::feature". If severity/priority labels are not present, then labels
security-sp-label-missing and security-triage-appsec will be added and this issue will be mentioned in the
\#sec-appsec Slack channel. Then, the appsec stable counterpart for the group or App sec team triage person
will pick up the issue and assign a severity as part of the appsec triage rotation.

### We Own What We Ship

We are responsible for delivering GitLab's SAST and Secret Detection features, and the analyzers we develop rely heavily upon open source software.
This means we can be dramatically affected by changes in those software packages. We will check for updates to these packages once per [GitLab
release](https://about.gitlab.com/releases/). New versions will be scrutinized for the following aspects:

- Breaking changes
- New, updated, or removed security rules
- Behavior changes
- Analyzer changes needed to use the new version
- Security vulnerabilities

An issue will be created and prioritized if a breaking change is discovered. Otherwise, dependency updates will be detailed in the relevant
analyzer's changelog and a new version will be released utilizing the change. This is a lot of work, most likely requiring several hours of
focused study to understand what is happening in the new version. As a result, dependency updates will be divided evenly and assigned to
Senior and Intermediate Backend Engineers, with the remainder going to the group's Staff Backend Engineer. Assignments will be managed
through our [Release project's issue template](https://gitlab.com/gitlab-org/security-products/release/-/blob/master/scripts/templates/release_issue.md.erb).

The assigned backend engineer is the group's primary liaison with the dependency's open source community. Engineers are expected to contribute
back to those projects, especially if critical or high security findings are confirmed.

#### Testing for security vulnerabilities

We have a [dependencies group](https://gitlab.com/gitlab-org/security-products/dependencies) which contains mirrored copies of the OSS projects upon which we most rely. Prior to submitting an MR updating an analyzer to a new version of these projects, engineers are expected to do the following:

1. Find a release branch which matches the new version we wish to ship.
  1. If one doesn't exist, create it from the corresponding tag.
1. Push the branch through a pipeline which executes all of our security products.
  1. Please note, some of these projects have complicated builds. Auto DevOps works sometimes, but projects such as [spotbugs](https://gitlab.com/gitlab-org/security-products/dependencies/spotbugs) can require a custom CI configuration for our scans to be successful. Also, these projects include tests that can be noisy if not filtered out.
1. Evaluate any potential security vulnerabilities which are found.
  1. Work with the relevant Open Source community to resolve any Critical or High severity findings.
  1. GitLab has published [Secure Coding Guidelines](https://docs.gitlab.com/ee/development/secure_coding_guidelines.html), which may be a useful resource to use when trying to solve identified risks.

We do not want to ship updated dependencies which have Critical and High severity vulnerabilities in them. If we find ourselves in this situation, we will
withhold updates to the dependency until the problems have been patched.

#### Go security fixes

At times we will need to update our analyzers because of security updates to golang itself. In this situation, we follow the [established release process](https://docs.gitlab.com/ee/development/sec/analyzer_development_guide.html#security-and-build-fixes-of-go).

#### Testing and validation

Our users expect us to provide them with a quality experience, no matter which open source or proprietary components we include in our analyzers.
They also expect our documentation to clearly outline the configurations we support so that they can make informed decisions about whether to adopt our tools for their needs.

Before we document that we support a configuration, we **do validate** that it works.
For example, before we list a certain type of file or build configuration as a supported feature, we must have checked it at least once, however minimally.

However, we **do not** independently reproduce all end-to-end **tests** for components we rely on.
Maintaining these tests independently would require unnecessary effort and would duplicate work that would be better contributed upstream if it's lacking.
Instead, we aim to build tests that cover basic configurations for smoke-testing and demonstration purposes.

We may choose to document supported configurations once they're validated, even if the test coverage is not yet complete.

### Unplanned work

In general, the Static Analysis group has two sources of unplanned work: community contributions and ~severity::1 bugs. We will reserve capacity each
release so we can respond quickly and efficiently. In both scenarios, we will route community contributions to the [engineer who "owns" the analyzer](#we-own-what-we-ship).

We do, however, own and contribute to projects beyond the analyzers shipped as part of GitLab's product. Where possible, unplanned work requiring
the attention of an engineer in Static Analysis will be routed according to that project's `CODEOWNERS` file. Otherwise, unplanned work will be
considered and handled on a case-by-base basis.

#### Support to customers and prospects

While we plan our work on a monthly basis, customers and customer-facing team members may need support on an unplanned basis.
We aim to support these requests quickly because they affect the success of our customers and our business.

Generally, we aim to provide an initial response and triage the question/report as quickly as is reasonable.
"Reasonable" means, for example, that team members are answering during their normal working hours and are continuing their normal work activities.
Whoever is available and can contribute to a solution is encouraged to make first contact with the questioner and ask any clarifying questions—remember, you can always tag in another group member later if you're unable to resolve the question.

The aim of the triage is to support other team members in moving forward; if development work is required to address the problem, it is not automatically a top priority for the group and should not automatically displace existing planned work.
If there is any question of whether a bug fix or improvement should be taken up immediately, the Engineering Manager and Product Manager should be alerted to facilitate a decision.

When a [Customer Success Escalation](/handbook/customer-success/csm/escalations/) is declared, the Engineering Manager and Product Manager should both be alerted, and an appropriate team member should be designated to deprioritize existing work and respond to the escalation as soon as possible.

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="static analysis" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
  {{< tableau/filters "GROUP_LABEL"="static analysis" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/Flakytestissues/FlakyTestIssues" >}}
  {{< tableau/filters "GROUP_NAME"="static analysis" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/SlowRSpecTestsIssues/SlowRSpecTestsIssuesDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="static analysis" >}}
{{< /tableau >}}
