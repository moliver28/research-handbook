---
title: Anti-Abuse Group
description: "The Anti-Abuse group creates controls to prevent abuse of the GitLab product"
---

## Vision

Our goal is to provide Insider Threat features for your applications as well as GitLab itself. We will help proactively identify malicious activity, accidental risk, compromised user accounts or infrastructure components, anomalous use of the GitLab platform, and various high-risk behaviors where actionable remediation steps are possible.

## How we work
- We work in accordance with our [GitLab values](/handbook/values/).
- We work [transparently](/handbook/values/#transparency) with nearly everything public.
- We get a chance to work on the things we want to work on.
- We have a [bias for action](/handbook/values/#bias-for-action).
- We make data-driven decisions.
- Everyone can contribute to our work.

### Collaboration

You are encouraged to work as closely as needed with our [stable counterparts](/handbook/product/categories/#govern-stage).

Other teams that we might collaborate with include but are not limited to:

- [Govern:Authentication and Authorization](/handbook/engineering/development/sec/govern/authentication-and-authorization/)
- [Growth:Acquisition and Activation](/handbook/marketing/growth/engineering/)
- [Fulfillment:Fulfillment Platform](/handbook/engineering/development/fulfillment/fulfillment-platform/#team-members)

Here are some examples of when to engage with your counterpart:

- [Seeking a Govern:Authentication and Authorization review when making a significant change to the registration flow](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/99193#note_1120182366)
- [Seeking a Fulfillment review when making a change involving Zuora](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/96994#note_1089045221)
- Discussing in `#f_signup_registration` (Slack, GitLab internal) when making a change that affects how our users signup or login

## Direction

- [Instance Resiliency](https://about.gitlab.com/direction/govern/anti-abuse/instance_resiliency/)
- [Insider threat](https://about.gitlab.com/direction/govern/anti-abuse/insider_threat/)

## Team members

The following people are permanent members of the Anti-Abuse Group:

{{< team-by-manager-slug manager="jayswain" team="(?i)Engineer(.*)Govern:Anti-abuse" >}}

## How to contact us

- Tag a team member in a merge request or issue
- Post a message in the `#g_govern_anti-abuse` Slack channel (GitLab internal)

## Project management process

Our team uses a hybrid of Scrum for our project management process. This process follows GitLab's [monthly milestone release cycle](/handbook/marketing/blog/release-posts/#schedule).

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="anti abuse" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
  {{< tableau/filters "GROUP_LABEL"="anti abuse" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/Flakytestissues/FlakyTestIssues" >}}
  {{< tableau/filters "GROUP_NAME"="anti abuse" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/SlowRSpecTestsIssues/SlowRSpecTestsIssuesDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="anti abuse" >}}
{{< /tableau >}}

### Workflow

Our team use the following workflow stages defined in the [Product Development Flow](/handbook/product-development-flow/#workflow-summary):

### Issue boards

We use a team specific [issue board](https://gitlab.com/groups/gitlab-org/-/boards/4292845?not%5Bmilestone_title%5D=Backlog&label_name[]=group%3A%3Aanti-abuse&group_by=epic) to track issue progress on a daily basis. Issue boards are our single source of truth for the status of our work.

### Iteration

When planning how to construct our [MVC](/handbook/values/#minimal-viable-change-mvc), we need to be aware of the [tradeoffs of slicing MR’s vertically vs horizontally](/handbook/engineering/workflow/iteration/#tradeoffs-between-horizontal-and-vertical-slicing). Reducing scope for each iteration is encouraged.

As requirements can shift, and complexity can increase when uncovering challenging areas in the codebase, we strive to keep issue requirements updated for clarity.

We follow the [iteration process](/handbook/engineering/development/principles/#iteration) outlined by the Engineering function.

### Refinement

Refinement is the responsibility of every team member. While planning out an epic or a feature we break it down into small consumable [MVC’s](/handbook/values/#minimal-viable-change-mvc). This process is challenging, and takes time. This is why we've set a [weekly refinement meeting](#team-meetings).

### Milestone Planning and Timeline

Our team follows the [Product Development Timeline](/handbook/engineering/workflow/#product-development-timeline) as our group is dependent on the [GitLab self-managed release cycle](https://about.gitlab.com/upcoming-releases/).

We use [planning issues](https://gitlab.com/gitlab-org/modelops/anti-abuse/team-tasks/-/issues/?sort=updated_desc&state=opened&label_name%5B%5D=Planning%20Issue) to discuss priorites (GitLab internal).

### Issue labels

We use issue labels to keep us organized. Every issue has a set of required labels that the issue must be tagged with. Every issue also has a set of optional labels that are used as needed.

**Required labels**

- Stage: `~devops::govern`
- Group: `~group::anti-abuse`

### Merge request labels

MR labels can mirror issue labels (which is automatically done when created from an issue), but only certain labels are required for correctly [measuring engineering performance](#measuring-engineering-performance).

**Required labels**

- Stage: `~devops::govern`
- Group: `~group::anti-abuse`

### Milestones

We tag each issue and MR with the planned milestone or the milestone at time of completion.

## Team Meetings

Our group holds synchronous meetings to gain additional clarity and alignment on our async discussions. We aspire to [record](/handbook/tools-and-tips/zoom/) all of our meetings as our team members are spread across several time zones and often cannot attend at the scheduled time.

We have a weekly team sync meeting with rotating [EMEA/AMER](https://drive.google.com/drive/folders/1nm7FRZ0f9T4ajbmJvz4LYLVWl5cXiXiQ?usp=sharing) and [AMER/APAC](https://drive.google.com/drive/folders/1wLdWWi3f6Aho6E2m4Xbhv1Nuoy_ZSC1e?usp=sharing) friendly time slots: Weds 14:30 UTC and Thurs 00:00 UTC.

We have a weekly refinement session Friday 00:00 UTC.

## Abuse Maintenance

The Anti-abuse team works closely with [Trust and Safety](/handbook/security/security-operations/trustandsafety/) to mitigate abuse on our platform. It's not uncommon for Trust and safety to [request features or maintenance](https://gitlab.com/gitlab-org/modelops/anti-abuse/team-tasks/-/issues/new?issuable_template=abuse_maintenance) from our team to assist their effort of mitigating abuse. Prioritized requests are organized in our [Abuse Maintenance epic](https://gitlab.com/groups/gitlab-org/-/issues/?sort=updated_desc&state=opened&label_name%5B%5D=group%3A%3Aanti-abuse&or%5Blabel_name%5D%5B%5D=workflow%3A%3Aready%20for%20development&or%5Blabel_name%5D%5B%5D=workflow%3A%3Ain%20dev&or%5Blabel_name%5D%5B%5D=workflow%3A%3Ascheduling&epic_id=773187&first_page_size=20).

## Pipeline Validation Service responsibility

[PVS](https://gitlab.com/gitlab-org/modelops/anti-abuse/pipeline-validation-service) is an internal service that belongs to the Anti-abuse team. It’s a combination of heuristic-based (text matching, etc) and behavior-based rules (duplicate builds, etc). The [Trust and Safety team](/handbook/security/security-operations/trustandsafety/) leverages this service the most, and acts as the customer for feature requests.

### Heuristic rules

Due to the nature of cryptomining attacks, heuristics are going to change quickly and need to be implemented rapidly. Accordingly, T&S is invited to submit MR’s to PVS that are heuristic based, or alternatively [request these changes](https://gitlab.com/gitlab-org/modelops/anti-abuse/pipeline-validation-service/-/issues/new?issuable_template=pvs_miss) from the Anti-abuse team.

### Behavior rules

Behavior rules are more slow to change and potentially cast a much wider net (vs a very targeted heuristic rule). Changes to behavior rules are expected to come from T&S, and implemented by the Anti-abuse team.

### Severity and Priority

[Severity](/handbook/security/#severity-and-priority-labels-on-security-issues) and priority will be added on all issues/merge requests created by T&S so that Anti-abuse can act on them accordingly.

Priority will be based on impact and likelihood of the attacker returning.

### Iteration

Anti-abuse will periodically review the accuracy of PVS alerts to see where there are opportunities to reduce the False Positive rate, without impacting the true positives, and Trust and Safety will help provide the required information to do this.
