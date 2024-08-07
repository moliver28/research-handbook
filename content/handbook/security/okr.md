---
title: "Security OKRs"
---

## Security OKRs

The Security organization executes quarterly [Objectives and Key Results or OKRs](/handbook/company/okrs).

### How We Plan, Assign, and Execute Work

Four Mondays before the start of the fiscal quarter, in the days after the CEO shares OKRs with all of GitLab in the #okr channel, the CISO proposes OKRs for the Security Division in the OKR draft review meeting agenda for a maximum of 5 objectives. Security leaders are to propose draft OKRs to the CISO prior to the meeting for inclusion.
From FY24 Q1 forward all Security OKRs are documented in the [GitLab OKR project](https://gitlab.com/gitlab-com/gitlab-OKRs). For easy filtering, all Security Objective and KR issues have the [division::Security](https://gitlab.com/gitlab-com/gitlab-OKRs/-/issues/?label_name%5B%5D=division%3A%3ASecurity) label applied.

Larger initiatives that span the scope of multiple teams or projects may require a [Working Group](/handbook/company/working-groups).

{{% alert title="Note" color="primary" %}}
[Critical Projects](/handbook/security/critical-projects/) occur somewhat regularly and take priority over OKRs.
{{% /alert %}}

#### Alignment to CEO OKRs

The security division exists to enable the business to iterate on its OKRs. This means that Security OKRs won't generally have a direct relationship to CEO-level OKRs but are nonetheless foundational for the business to have continued success.

#### Within the context of OKRs, what is a priority?

A prioritized OKR objective directly contributes to the elimination, mitigation, or transference of a [Top-5 risk](/handbook/security/security-assurance/security-risk/storm-program/#top-5-risks) and is generally aligned with our [multi-year strategy](https://internal.gitlab.com/handbook/security/information_security_goals_and_priorities/) (internal link). As such, each security sub-department may not issue their own OKRs in a given quarter. For example, [Security Assurance](/handbook/security/security-assurance/) output results in the creation of our Top 5 risks and the execution of compliance activities. As such, a focus on business as usual may be prioritized.

#### Given an agreed-upon priority, how do functional areas align?

Before the new quarter:

- **Seven Mondays prior**: Boilerplate Google Doc with rough ideas is created and shared across [functional leaders](/handbook/company/structure/#functional-leaders)
- **Six Mondays prior**: Functional leaders collaborate (async and sync) and determine objectives for the coming quarter. Each functional leader is responsible for proposing at least one objective or contributing to an already-proposed objective inclusive of up to 3 KRs per objective. Security functional leaders are to propose draft OKRs to the CISO.
  - KRs at this level should have clear, data-driven, quantitative targets. In some cases it's okay for KR to be centered around establishing a baseline KPI.
- **Four Mondays prior**: In the days after the CEO shares OKRs with all of GitLab in the #okr channel, the CISO proposes OKRs for the Security Division in the OKR draft review meeting agenda for a maximum of 5 objectives.
  - Senior Managers and above within security participate in a draft review to fully identify dependencies on teams in other functional areas and to gain any needed KR clarification from senior leadership.
- **Two to four Mondays prior**: Managers in functional areas work with their teams to prepare KR work for the coming quarter. As described in the handbook, new dependencies may be discovered and should be triaged accordingly. A team that is a dependency on another team's KR is responsible for confirming the ability to support that work with the accountable team. This is determined between directly impacted managers. The KR is not considered finalized until that confirmation happens. In the event of a team's inability to support, the KR is re scoped or removed; the overarching objective should only be reworked in circumstances where the at-risk KR is responsible for over 50% of the success criteria for that objective.
"No capacity" decisions should be documented as a leadership metric, primarily for future capacity and headcount planning purposes.
- **Two Mondays prior**: OKRs are finalized and shared in the [GitLab OKR project](https://gitlab.com/gitlab-com/gitlab-OKRs).

### Labels

Labels are applied to our OKRs and KRs to ease grouping and search, but also to reflect their priority.

Apply:

- The `~Division: Security` label to both OKRs and KRs
- The `FY<yy>-Q<x>` label to both OKRs and KRs
- The `~OKR` label to OKRs only
- The ~`sec-okr::p<x>` priority label (see below) to OKRs only

#### Priority label

We use the following labels to reflect the priority of our OKRs:

The Priority [scoped](https://docs.gitlab.com/ee/user/project/labels.html#scoped-labels) label ranges from 0 to 2 and is applied to OKRs.

- `sec-okr::p0`: Should only be reserved for [Critical Projects](https://internal.gitlab.com/handbook/security/critical_projects)
- `sec-okr::p1`: 70% or greater completed across the team/Objective, important
- `sec-okr::p2`: Stretch (future P1 or P0, if we knock out P0/1 we will hit these)

### What does it mean to be a DRI for a KR?

A KR Directly Responsible Individual (DRI) is meant to be the person accountable for the success of that key result.

This doesn't mean you are the assignee for each individual milestone in the KR, but rather that you're the person driving change forward to ensure the KR is successful and the progress, risk, and blockers are appropriately communicated within the Security Assurance team.

Being a DRI for a KR includes:

- Drafting KR milestones (including consistent titling)
- Monitoring weekly status of milestone progress
- Proactively alerting the appropriate stakeholders if a milestone is at risk of on-time completion
- Weekly KR reporting to support OKR-level leadership updates

A given objective is DRI'd by a functional leader (ProdSec, SecOps, SecAssurance, etc) or a direct report of a functional leader. If it seems an individual contributor could own an objective, then the objective is probably too narrowly scoped.

A given KR is DRI'd by a manager or IC. The rule is that the DRI should be able to impact the KR directly through their individual actions

The DRI for the KR does not need to be a part of the department that owns the Objective. For instance, an InfraSec IC can DRI for a KR under a SecOps objective.

### Templates

#### New Security KR - GitLab Template

:scissors: Copy and paste the below into the GitLab Issue Description

```text
`Issue Title: FYxx-Qx KR# (OKR Title Reference) measurable title. Example: FY22 Q3 KR1 (Security Training) Achieve 90% completion rate org wide for annual security training.`

## Dependencies

`what do you need to be succcessful with this KR`

## Milestones

- [ ] Milestone 1: Description: `add here` DRI: `add here`
- [ ] Milestone 2: Description: `add here` DRI: `add here`
- etc.
```

#### Security KR Weekly Update

Field updates:

- Progress %
- Health Status: On Track/Needs Attention/At Risk

:scissors: Copy and paste the below into the GitLab.com KR Issue(s) at the end of the week

```text
## Weekly KR Update for the week starting on YYYY-MM-DD

## What was accomplished this week

-

## What will be accomplished next week

-
```

With `YYYY-MM-DD` being the beginning of the week (Monday, even if this day if a holiday or a Family and Friends day).

### Cross-organizational collaboration and sharing

**What do other teams typically hope to gain with insight into our strategic objectives?** This is the lens we should use for defining this work. Understanding the strategic initiatives of a sister division is important for purposes of anticipation and calibration of expectations.

**How do we share this, most simply, with other teams?**
This presents a minimally viable model. If our sister organizations end up needing something differently, we can iterate.

- **What we are working on "right now"** Well-architected Labels and supporting links to epics/etc
- **What are your overarching strategic priorities?** CISO's multiyear + functional strategy documents (example: Multi-year ProdSec Strategy)
- **What is the security org focused on this year?** A bullet list of general priorities for the year:
  - Each functional leader provides 1-3 bullets, 1-2 sentences each to the bullet list.
  - These should rarely change, but pragmatism should always win.
