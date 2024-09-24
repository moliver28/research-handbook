---
title: Govern, Threat Insights
description: "The Threat Insights group at GitLab is charged with developing solutions to enable customers to manage their security risks effectively and efficiently."
---

## Customer outcomes we are driving for at GitLab

As a developer it is imperative to know if you are introducing vulnerabilities as you merge into protected branches in addition to the default branch. In FY25, we will allow users to track vulnerabilities across multiple branches. If there is something a developer wants to remediate, but aren't sure where to get started, they can use our features AI to learn more and get a suggestion for a fix.

As a security engineer, you want to know what vulnerabilities to work on first. Over the next year we will be adding key risk metrics so you can quickly triage and mitigate vulnerabilities that have the potential to be exploited.

Leadership wants to make sure their organization is mitigating risks and their security programs are effective. With enhancements to the Security Dashboards, leaders will have a place to get an overview and answer key questions about metrics, trends and vulnerabilities that need
to be addressed quickly.

## Top Priorities for FY25

**Enable users to identify risk and visualize trends** - We will be making enhancements to Security Dashboards at the project and group level.

**Estimate potential impact and likelihood of vulnerability exploitation** - Give users the ability to access risk directly in the vulnerability report through industry known risk scores like CVSS (Common Vulnerability Scoring System) and exploitability probability.

**Enable users to track vulnerabilities across multiple branches** - Allow users to track vulnerabilities outside the default branch.

**Offer guidance for users to get started with vulnerability remediation** - leverage the power of AI and security training to help developers understand and remediate vulnerabilities.

**Threat Insights features are reliable and perform at scale** - As we add more group and organization level features, we will be optimizing query performance and move forward with confidence that our database will scale and perform as we grow.

## Threat Insights Team Structure

The Threat Insights group is structured into three focused swimlanes that each approach work in [vertical slices](https://www.visual-paradigm.com/scrum/user-story-splitting-vertical-slice-vs-horizontal-slice/): Performance and Optimization, Projects, and AI. This subdivision is to provided bounded focus to each area: enabling us to progress on multiple fronts and reduce planning overhead.

### Stable Counterparts

The following members of other functional teams are our stable counterparts, and work across all swimlanes:

{{% stable-counterparts role="Threat Insights" other-manager-roles="Engineering Manager(.*)Govern:(.*)|Director of Engineering(.*)Govern" %}}

### Performance and Optimization

[Performance and Optimization](https://about.gitlab.com/direction/govern/threat_insights/17_threat_insights_priorities.html#technical-debt-and-deprecations)

DRI: {{< member-by-gitlab "nmccorrison" >}}

{{< member-and-role-by-gitlab "bwill" "ghavenga" "minac" "wandering_person" "subashis">}}

### Projects

[Projects](https://about.gitlab.com/direction/govern/threat_insights/17_threat_insights_priorities.html#vulnerability-management)

DRI: {{< member-by-gitlab "ryaanwells" >}}

{{< member-and-role-by-gitlab "bala.kumar" "lorenzvanherwaarden" "Quintasan" "svedova" "srushik" "anarinesingh" >}}

### AI

[AI](https://about.gitlab.com/direction/govern/threat_insights/17_threat_insights_priorities.html#ai)

DRI: {{< member-by-gitlab "nmccorrison" >}}

{{< member-and-role-by-gitlab "sming-gitlab" "dpisek" "subashis" "darbyfrey"  >}}

### Reporting Structure

Threat Insights was previously sub-divided into Navy and Tangerine, following the reporting lines below.
Navy engineers report to {{< member-by-gitlab "nmccorrison" >}} and Tangerine engineers report to {{< member-by-gitlab "ryaanwells" >}}.

{{% team-by-manager-slug manager="nmccorrison" team="Engineer(.*)Govern:Threat Insights" %}}

{{% team-by-manager-slug manager="ryaanwells" team="end Engineer(.*)Govern:Threat Insights" %}}

## Common Links

* Slack channels:
  * Main channel: [`#g_govern_threat_insights`](https://gitlab.slack.com/archives/CV09DAXEW/p1663788936706469)
  * Stand-up updates: [`#g_govern_threat-insights_standup`](https://gitlab.slack.com/archives/C01U7T6DPNY)
  * Engineering - All: [`#g_govern_threat_insights_eng`](https://gitlab.slack.com/archives/C05N5BLDYUT)
  * Engineering - AI Swimlane: [`#g_govern_threat_insights_eng_ai`](https://gitlab.enterprise.slack.com/archives/C07KSUHD09E)
  * Engineering - Performance Swimlane: [`#g_govern_threat_insights_performance`](https://gitlab.enterprise.slack.com/archives/C07CA38UG3E)
  * Engineering - Projects Swimlane: [`#g_govern_threat_insights_projects`](https://gitlab.enterprise.slack.com/archives/C07CLAV0X33)
* Slack aliases: `@govern_threat_insights_be`, `@govern_threat_insights_fe`
* Google groups: eng-dev-secure-threat-insights-members@gitlab.com
* [Threat Insights calendar](https://calendar.google.com/calendar/u/0?cid=Y19iNGQxYmYzYzY4ZTBjODZkYTE0ZDc4N2M0MjZhMDUxYWEzYzljYWRlZjIwZTcwMmNmOWRjZmEwNzQzMmRmMDNkQGdyb3VwLmNhbGVuZGFyLmdvb2dsZS5jb20) (internal link)

### Prioritization

We use our Threat Insights Priorities page for [17.x](https://about.gitlab.com/direction/govern/threat_insights/17_threat_insights_priorities.html) to track what we are doing, and what order to do it in.

### Metrics

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="threat insights" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
  {{< tableau/filters "GROUP_LABEL"="threat insights" >}}
{{< /tableau >}}

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/Flakytestissues/FlakyTestIssuesDetails" >}}
  {{< tableau/filters "GROUP_NAME"="threat insights" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/SlowRSpecTestsIssues/SlowRSpecTestsIssuesDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="threat insights" >}}
{{< /tableau >}}

## Workflow

The Threat Insights group largely follows GitLab's [Product Development Flow](/handbook/product-development-flow/).  In the sections below, we provide details about our teams specific Software Development Lifecycle.

### Design Review
During the design phase, engineers may be asked to review designs well before they are ready for refinement and/or development.  The goal is to validate technical possibilities of achieving the desired UX experience.  The sooner this happens, the better, as it reduces the time spent needlessly on designing and, later, developing solutions that are not scalable.  When asked to review designs please consider the following:

TODO

### Refinement

Issues in the `workflow::refinement` state are either assigned by EMs to individuals engineers for refinement, or are assigned randomly by the triage bot based on the [assign-refinement policy](https://gitlab.com/gitlab-org/quality/triage-ops/-/blob/master/policies/groups/gitlab-org/threat-insights/assign-refinement.yml). Note that [Epics are slightly different](#epic-engineering-dri).

Engineers assigned to refine issues are encouraged to ask questions and collaborate with the Product Manager and Product Designer if issues lack the information and/or designs required for successful refinement and execution.

We assign issues for refinement to ensure we have focus on the highest-priority items, as determined by Product Management.  This is **not** an assignment to work on the issue.

* Engineering output: Move issue into the `workflow::ready for dev` state and unassign themselves if they have completed refinement. Leave issue in `workflow::refinement` and assign the issue to their EM if for any reason refinement could not be completed. Confirm the issue has the appropriate [work type classification](/handbook/product/groups/product-analysis/engineering/dashboards/#work-type-classification).

#### Refinement Guidelines

Backlog refinement is the most important step to ensure an issue is ready to move into development and that the issue will match everyone's expectations when the work is delivered.

The goal of the refinement process is to ensure an issue is ready to be worked on by:

* Identify and resolve outstanding questions or discussions.
* Identify missing dependencies (e.g. `backend` API).
* Raise any questions, concerns or alternative approaches.
* Outline an implementation plan.
* Assign a weight to the issue.

#### Refinement steps for Engineers

1. Issues you need to refine will be assigned to you by your EM. Note the
   differences for [bugs](#bug-diagnosis) and [spikes](#refinement-for-spikes).
1. Backend/Frontend labels:
   * If a backend engineer is required for the issue, ensure a `backend` label. Otherwise, remove
     any backend label, assign any relevant labels and you are done.
   * If a frontend engineer is required for the issue, ensure a `frontend` label. Otherwise,
     remove any frontend label, assign any relevant labels and you are done.
1. Check the issue for completeness.
   * Does it have the necessary designs?
   * Is the functionality clearly articulated and is there a consensus or decision on how it
     should function?
   * Are the technical details outlined?
   * Has a consensus been reached or decision been made in areas of discussion?
   * Are there dependencies? Call those out.
1. If the issue is not complete:
   * Tag the relevant people that can help complete the issue and outline what is needed. Tag the
     appropriate EM and PM, so they know that the item can not be fully refined.
   * If you are unable to resolve blockers to your refinement within a reasonable amount of time
     (2-3 days dependign on size of initative) see [Failing Refinement](#failing-refinement).
1. Ensure the issue is fully understood.
   * Update the issue description with the final description of what will be implemented.
   * Update the issue description with an [implementation plan](#implementation-plan).
   * Update the issue description with [verification steps](#verification-steps).
   * Ensure the issue title is accurate for the work being done.
   * Open up new issues for 'follow-up' work, or work that was forced out of scope.
1. Assign a [weight](#weights).
   * If the issue requires both frontend and backend work, it should be split and weighed independently.
1. Determine if [a feature flag is needed](/handbook/product-development-flow/feature-flag-lifecycle/#when-to-use-feature-flags).
   * If you think that we should use the feature flag for a given issue, add ~"feature flag" label
     and add in the description a section called **Feature Flag** with the proposed name.
   * Create a [feature flag rollout](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issuable_template=Feature%20Flag%20Roll%20Out) issue to track the multiple stages of releasing with a feature flag.
   * Consider creating a [feature flag clean up](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issuable_template=Feature%20Flag%20Cleanup) issue if the removal of the feature flag will occur in a subsequent milestone.
1. Encourage Community Contributions.
   * If the scope of the issue is well defined and there are no dependencies, consider adding
     [contribution Labels](/handbook/marketing/developer-relations/contributor-success/community-contributors-workflows.html#labels).
   * The `~"quick win"` label is particularly helpful but note that you would
     be [volunteering to mentor new contributors](/handbook/marketing/developer-relations/contributor-success/community-contributors-workflows.html#issues-for-new-contributors).
1. Refinement Review.
   * If the weight you've assigned to the issue is 3 or less, move the issue directly to `~"workflow::ready for development"`.
   * If the weight of the issue is greater than 3, unassign the issue from yourself and request a review from another engineer.
   * When the reviewer agrees with the implementation plan and weight, they will unassign themself and move the issue to `~"workflow::ready for development"`.

Anyone should be able to read a refined issue's description and understand what is being solved, how it is solving the problem, and the technical plan for implementing the issue.

In order for someone to understand the issue and its implementation, they should **not** have to read through all the comments. The important bits should be captured in the description as the [single source of truth](/handbook/communication/#issues).

##### Bug Diagnosis

Note the following differences when refining bugs:

1. As a guideline, spend no more than 1 hour per issue. Bugs that take too long to refine are
   indicative of a more complex issue.
1. Do not add weight. Our velocity represents the capacity to deliver new, bug-free features.
1. When you hit the time limit for refinement, it's ok to have uncertainty in the [Implementation Plan](#implementation-plan). It's sufficient just to direct where you expect the code change to be (high or low level).

##### Refinement for Spikes

1. Do not add weights[^3].
1. Time-box how much time to spend on the issue.
1. The deliverable is typically an answer or solution to be used in upcoming issues.

[^3]: a spike doesn't directly add value to users so it shouldn't contribute to our velocity. The
      information delivered by a spike is what will be useful to deliver direct value to users.

##### Refinement for Security Issues

The [Security Developer process](https://gitlab.com/gitlab-org/release/docs/-/blob/master/general/security/engineer.md)
can be daunting for first-timers. As part of refinement, ask for a volunteer to act as a "Security
Issue Release Buddy".

#### Failing Refinement

An issue should fail refinement if it can not be worked on without additional information or
decisions to be made. To fail an issue:

1. Leave a comment on the issue that it can not be worked on, and highlights what still needs to
    be done.
2. Unassign yourself if you can not contribute further to issue at the current time.
3. Assign the `workflow::blocked` label.

#### Weights

Weights are used as a *rough* order of magnitude to help signal to the rest of the team how much
work is involved.  Weights should be considered an artifact of the refinement process, not the
purpose of the refinement process.

It is perfectly acceptable if items take longer than the initial weight. We do not want to inflate
weights, as [velocity is more important than predictability](/handbook/engineering/development/principles/#velocity-over-predictability)
and weight inflation over-emphasizes predictability.

We do not add weights to bugs as this would be double-counting points. When our delivery contains
bugs, the velocity *should* go down so we have time to address any systemic quality problems.

##### Possible Values

We are using the Fibonacci sequence for issue weights. Definitions of each numeric value are associated with the [frontend-weight & backend-weight labels](https://gitlab.com/groups/gitlab-org/-/labels?utf8=%E2%9C%93&subscribed=&search=-weight%3A%3A). Anything larger than 5 should be broken down whenever possible.

Setting a `frontend-weight` or `backend-weight` label on an issue is optional, but ensure you set the **Weight** property on the issue during refinement.

Examples of when it may be appropriate to set a weight label instead of / as well as setting the issue weight include:

* On newly drafted issues, where we haven't yet fully determined the scope or if both frontend and backend are needed.
* On bugs, where we don't directly assign a weight. The label can help provide guidance on complexity.

### Implementation Plan

A list of the steps and the parts of the code that will need to get updated to implement this
feature. The implementation plan should also call out any responsibilities for other team members
or teams. [Example](https://gitlab.com/gitlab-org/gitlab/-/issues/326975#implementation-plan).

The goal of the implementation plan is to spur critical analysis of the issue and have the engineer refining the issue
think through what parts of the application will get touched. The implementation plan will also
permit other engineers to review the issue and call out any areas of the application that might
have dependencies or been overlooked.

## Development Guidelines
In the spirit of iteration we want to identify and minimize risks as soon as possible.  It is recommended that engineers work towards a proof-of-concept quickly.  This could be something as simple as an SQL query to test performance.

TODO

## Verification Steps

A list of the steps that will need to be followed to verify this feature. The verification steps should also include additional test cases that should be covered. [Example](https://gitlab.com/gitlab-org/gitlab/-/issues/379110#verification-steps).

The purpose of the issue verification procedures is to aid in better understanding the expected change in the application after implementing the issue. Other engineers will be able to evaluate the issue and identify any application components that may have dependencies or have been ignored and that require further testing thanks to the verification steps.

When writing verification steps for a feature or bug fix, it's important to include both positive and negative scenarios. This helps ensure that the feature or fix only works when specific criteria are met and not in every situation. For example, when verifying MR Approval Policies, you should provide a scenario where approval is required when the policy is violated, and another scenario where approval is not needed when the policy is not violated. This approach allows for a more thorough and accurate testing process.

## Verification

The issue verification should be done by someone else other than the MR author[^4].

1. All implementation issues should have verification steps in the description. Our [implementation issue template](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issuable_template=Implementation) conveniently provides this section.
1. When an engineer has merged their work, they should move their issue into the verification status, indicated by the `~workflow:verification` label and wait until they receive notification that their work has been deployed on staging via the release issue email.
1. If possible, after the engineer has received the notification and verified their work in staging, they leave a comment summarizing the testing that was complete.
1. After the change is available on .com/production (make sure the MR has the `~workflow:verification` label, so it's available with GitLab Next turned off), the engineer should verify again, leave a comment summarizing the testing that was completed, and unassign themselves from the issue. Also provide a link to a project or page, if applicable.
1. Unassigned issues in the `~workflow:verification` state are assigned randomly by the triage bot based on the [verification policy](https://gitlab.com/gitlab-org/quality/triage-ops/-/blob/master/triage/processor/assign_dev_for_verification.rb) to an applicable team engineer. This engineer should then additionally verify the issue.
1. Once the issue has been verified in production by both engineers, add the `workflow::complete` label and close the issue.

[^4]: To minimize cycle time between engineers, it's preferable that the writing engineer verify their work, as they will be able to start working on the issue again immediately if it turns out that the issue has not been sufficiently resolved. Waiting for another engineer to find obvious failures will increase turn around time.

## Planning for PTO

We follow the [Govern stage PTO process](/handbook/engineering/sec/govern/#pto) and [GitLab team members Guide to Time Off](/handbook/people-group/paid-time-off/#a-gitlab-team-members-guide-to-time-off).

## Epic Engineering DRI

As an Epic is ready to move to the refinement stage, the EMs assigns someone as the DRI for each required tech stack. This may happen sooner, during planning breakdown.

As the DRI for an Epic, the engineer is **not** responsible for executing all the work but they are responsible for:

1. Suggesting the implementation issue breakdown and requesting feedback.
1. Writing the agreed implementation issues.
1. Identifying when further research is required and writing the spike issue(s).
1. Making technical decisions.
1. Providing status updates when requested.
1. Identifying and communicating blockers.
1. Identifying potential security implications and involve a security engineer if necessary
1. Take measurements to [reduce the impact of far-reaching work](/handbook/engineering/expansion-development/#reducing-the-impact-of-far-reaching-work)

The DRI may choose to refine and work on the issues they created but they're not expected to
deliver the whole Epic on their own.

### Milestone Planning

* On the second Tuesday of the month the Product Manager kicks off the planning issue. They identify priorities for the milestone and tag engineering managers, and stable counterparts (UX, QA) to review.
* By the third Tuesday of the month the Engineering Managers have reviewed the planning issue and agreed on the scope for the milestone.
  * All epics scheduled for this milestone should have the `~auto-report` label and **one** of these labels:
    * `~Threat Insights::Performance`
    * `~Threat Insights::Projects`
  * All issues scheduled for the milestone should have the `~Deliverable`, `workflow::ready for dev` labels as well as `Health Status: On Track` at the beginning of the milestone. The milestone field should also be set correctly.
* The planning issue is created in this [epic](https://gitlab.com/groups/gitlab-org/-/epics/12683) for 17.0-17.11.

### Tracking Deliverables

* Issues that are marked as Deliverables for a milestone serve as the single source of truth for what we aimed to deliver for a given milestone. Throughout the milestone, things may change, become blocked, etc. *Ideally, we'd like to keep the Planning Issue unchanged after the milestone starts.*
* Something is considered delivered if it is either a. merged into production in time for the release date, b. completed before the next milestone start, or c. the feature flag enabling the feature is turned on.  It is important to keep track of the milestone of the deliverable; we encourage self-managed customers to turn on feature flags so they can try different features. Ensuring the milestone is correct, allows someone to tell if that change is available in a specific release.

#### Weekly async issue updates

At the end of every week, each engineer is expected to provide a quick async issue update by commenting on their assigned issues using the following template:

```markdown
### Async issue update

* Current status:
<!--- Please provide a quick summary of the current status (one sentence) -->

* Shipping this milestone: <!-- Not confident | Slightly confident | Very confident -->

* Scope reduction opportunities: <!-- No | Yes, ... -->

/health_status <!-- on_track | needs_attention | at_risk -->
/label <!-- ~"workflow::blocked" | ~"workflow::refinement" | ~"workflow::ready for development" | ~"workflow::In dev" | ~"workflow::In review" | ~"workflow::verification" -->

<!-- Please apply a :triangular_flag_on_post: emoji to this comment. Fore more information see https://gitlab.com/jayswain/automated-reporting -->
```

We do this to encourage our team to be more async in collaboration and to allow the community and other team members to know the progress of issues that we are actively working on. This also enables us to automatically collate updates across swimlanes, removing some manual process.

### Support rotation

On top of our development roadmap, engineering teams need to perform tasks related to support and triage. Our team nominates an individual person to reserve capacity for these tasks. The rota is [here (internal link)](https://gitlab.com/groups/gitlab-org/govern/threat-insights/-/epics/2) This is to avoid excessive context-switching and better distribute the workload. It is important we defend our focus within the team to support the delivery of our commitments.

If you are **not** the nominated person in a given week then:

1. You are not expected to triage and investigate by default. Use your best judgement here (e.g. critical issues still take priority, no change in expectations here).
1. You should redirect the question to the nominated person (e.g. if it comes in a DM in Slack, redirect it to our public channel).

Please keep track of the actions you're doing during your rotation and add notes in the corresponding issue (e.g. copying tools command executed locally, sharing relevant changes to projects and processes, etc.)

#### Triage expectations

Triage does not immediately guarantee a change to currently-planned work in a milestone. Triage is the process of determining impact and priority so we can justify changes to scope and milestone commitments.

* Refine the request for help tickets: do we have reproduction steps, does this relate to other scoped or planned work, is this a bug or feature request or an acceptable limitation of the system.
  * Outcomes could be: updates to our documentation or Handbook pages, validated reproduction of bugs and then creating issues from this.
* Directly answering support questions.
* Engaging with Product to agree on priority and scheduling of any work required. Work with Product to define severity and whether to interrupt the rest of the development team.

When dealing with Slack interactions you are expected to use the following reactions:

* :eyes: - I am actively looking at this
* :white_check_mark: (or a variant) - This is resolved

#### Responsibilities - Support

1. Monitor slack channels for questions, support requests, and alerts. The person assigned to the reaction rotation is expected to handle them primarily.
If a support engineer requests assistance via Slack and it requires investigation or debugging, they should be directed to raise an issue in [a dedicated project](https://gitlab.com/gitlab-com/sec-sub-department/section-sec-request-for-help).

* [#g_govern_threat_insights](https://gitlab.slack.com/archives/CV09DAXEW)
* [#s_govern](https://gitlab.enterprise.slack.com/archives/CFHGVJ06R)
* [#sec-section](https://gitlab.slack.com/archives/C02087FTL5V)
* [#s_secure-alerts](https://gitlab.slack.com/archives/CAU9SFKNU)
* [#sec-eng-requests-for-help](https://gitlab.enterprise.slack.com/archives/C071W3BA87J)
* Monitor [Section Sec Request For Help](https://gitlab.com/gitlab-com/sec-sub-department/section-sec-request-for-help/-/issues/?sort=created_date&state=opened&label_name%5B%5D=Help%20group%3A%3Athreat%20insights&first_page_size=20) project for support requests.

Our preference is to utilise the [Section Sec Request For Help](https://gitlab.com/gitlab-com/sec-sub-department/section-sec-request-for-help/-/issues/?sort=created_date&state=opened&label_name%5B%5D=Help%20group%3A%3Athreat%20insights&first_page_size=20) as much as possible. This helps with visibility, tracking and review.

These items must be triaged continuously which means they must be checked multiple times a week.

### MR Reviews

We follow these guidelines when submitting MRs for review when the change is within the Threat Insights domain:

1. Aim to request at least one of the reviews from someone outside our group. This helps avoid a code knowledge silo.
1. For time-critical reviews, consider using internal reviewers and maintainers.
1. The initial review should be performed by a member of the team. This helps the team by:
   * Faster reviews, as the reviewer is already familiar with the domain.
   * Additional awareness of changes taking place within the domain.
   * Identifying changes that don't align with what is happening with the domain.
   * Providing additional confidence from a domain expert to the external maintainer reviewer that the change behaves as expected.
1. GraphQL merge requests should be reviewed by a frontend engineer as soon as possible. This
   helps to validate the interface, and allows changes to be made before tests are written.

### Issue Boards

* [Threat Insights Delivery Board](https://gitlab.com/groups/gitlab-org/-/boards/1754666?scope=all&utf8=%E2%9C%93&milestone_title=%23started&label_name[]=group%3A%3Athreat%20insights)
  * Primary board for engineers from which engineers can work. It's stripped down to only include the workflow labels we use when delivering software.

* [Threat Insights Planning Board](https://gitlab.com/groups/gitlab-org/-/boards/1420734?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=group%3A%3Athreat%20insights)
  * Milestone-centric board primarily used by product management to gauge work in current and upcoming milestones.

* [Threat Insights "Ready to Pull" Board](https://gitlab.com/groups/gitlab-org/-/boards/4643978?label_name[]=group%3A%3Athreat%20insights&label_name[]=ready%20to%20pull)
  * Secondary board for unassigned issues that are separate from a larger effort. Ideal candidates are small features, bugs, and follow-up items.

These boards show current status of issues.

### Indicating Status and Raising Risk

Our teams use the [Health Status](https://docs.gitlab.com/ee/user/project/issues/managing_issues.html#health-status) feature within issues to indicate the likelihood of completion within the milestone. We assign `On Track` at the beginning of a milestone to a small number of issues where we have high confidence in delivery during that milestone. If there is concern with marking something as initially on track, then we should discuss why.

Raising risk early is important. The more time we have, the more options we have. For example, issues that have not gone into review by the 10th of the month may not have enough time to get merged. These should be considered Needs Attention or At Risk depending on their complexity and other factors.

Follow these steps when raising or downgrading risk:

1. Update the Health Status in the issue:
    1. `On Track` - high confidence - there is no indication the work won't get merged by the 15th.
    1. `Needs Attention` - medium confidence - the issue is blocked or has other factors that need to be discussed.
    1. `At Risk` - low confidence - the issue is in jeopardy of missing the merge cutoff of the 15th.
1. Add a comment about why the risk has increased or decreased. Copy the Engineering Manager and Project Manager for awareness.

Note that an issue probably shouldn't go directly from On Track to At Risk. That pattern indicates we have missed an opportunity to discuss earlier. Consider the progression: `On Track -> Needs Attention -> At Risk`.

## Quality

### Running E2E specs in the MR pipeline

We encourage running the `e2e: test-on-omnibus` downstream [E2E job](https://docs.gitlab.com/ee/development/testing_guide/end_to_end/#testing-code-in-merge-requests) in merge requests at least once and review the results when there are changes in:

* GraphQL (API response, query parameters, schema etc)
* Gemfile (version changes, adding/removing gems)
* Database schema/query changes
* Any frontend changes which directly impact vulnerability report page, MR security widget, pipeline security tab, security policies, configuration, license compliance page

### Running Govern E2E specs locally against GDK

Standalone [E2E specs can be run against your local GDK instance](https://gitlab.com/gitlab-org/gitlab/-/tree/master/qa?ref_type=heads#generic-command-for-a-typical-gdk-installation).

### E2E tests with feature flags

E2E tests should pass with a feature flag enabled before it is enabled on Staging or on GitLab.com.
Therefore, it's important to confirm this when introducing a new feature flag. Adding or editing a feature flag definition file [starts two `e2e:test-on-omnibus` jobs](https://docs.gitlab.com/ee/development/testing_guide/end_to_end/feature_flags.html#automatic-test-execution-when-a-feature-flag-definition-changes) (one with the feature flag turned on and another where it's turned off).

## Monitoring

* [Stage Group dashboard on Grafana](https://dashboards.gitlab.net/d/stage-groups-threat_insights/stage-groups-threat-insights-group-dashboard)
* [Largest Contentful Paint (LCP)](https://dashboards.gitlab.net/d/sftijGFMz/sitespeed-lcp-leaderboard?from=now-90d&orgId=1&to=now&refresh=30s&var-namespace=sitespeed_io&var-path=desktop&var-domains=gitlab_com&var-pages=Secure_Instance_Dashboard_Settings&var-pages=Secure_Instance_Security_Dashboard&var-pages=Secure_Instance_Vulnerability_Report&var-pages=Secure_Group_Security_Dashboard&var-pages=Secure_Group_Vulnerability_Report&var-pages=Secure_Project_Security_Dashboard&var-pages=Secure_Project_Vulnerability_Report&var-pages=Secure_Standalone_Vulnerability&var-browser=chrome&var-connectivity=cable&var-function=median) for our web pages.

## Contributing

### Local testing of licensed features

When a feature needs to check the current license tier, it's important to make sure this also works on GitLab.com.

To emulate this locally, follow these steps:

1. Export an environment variable: `export GITLAB_SIMULATE_SAAS=1`[^1]
1. Within the same shell session run `gdk restart`
1. Admin > Settings > General > "Account and limit", enable "Allow use of licensed EE features"

See the [related handbook entry](https://docs.gitlab.com/ee/development/ee_features.html#act-as-saas) for more details.

### Cross-stack collaboration

We encourage frontend engineers to contribute to the backend and vice versa. In such cases we should work closely with a domain expert from within our group
and also keep the initial review internal.

This will help ensure that the changes follow best practice, are well tested, have no unintended side effects, and help the team be across any changes that go into the Threat Insights codebase.

### Community Contributions

The Threat Insights group welcomes community contributions. Any community contribution should get prompt feedback from one of the Threat Insights engineers. All engineers on the team are responsible for working with community contributions. If a team member does not have time to review a community contribution, please tag the Engineering Manager, so that they can assign the community contribution to another team member.

If a team member creates an issue or finds an issue where we would be open to a community contribution, it should be labeled with ~"Seeking community contributions". If the contributor needs an EE license, we can point towards the [Contributing to the GitLab Enterprise Edition (EE)](/handbook/marketing/developer-relations/contributor-success/community-contributors-workflows/#contributing-to-the-gitlab-enterprise-edition-ee) section on the Community contributors workflows page.

### Group discussion

We hold weekly group discussions alternating on APAC/AMER, and EMEA/AMER time zones. Everyone is invited to attend, and it's a great forum to ask questions about Vulnerability Management, customer queries, our road map, and what the Threat Insights team might be thinking about. You can find the meetings on the [Threat Insights calendar](#common-links); take a look at [the agenda](https://docs.google.com/document/d/1mbXHw6EYT-IqlEFguYRyLrm35f_DGA7EzGPGBCOc9ao/edit#heading=h.pt5d0o3avmun) (internal link). We hope to see you there!

## Footnotes

[^1]: There are many ways to pass an environment variable to your local GitLab instance. For example, you can create a `env.runit` file in the root of your GDK with the above snippet.
