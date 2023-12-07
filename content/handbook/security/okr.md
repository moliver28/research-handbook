---
title: "Security OKRs"
---

## Security OKRs

The Security organization executes quarterly [Objectives and Key Results or OKRs]({{< ref "okrs" >}}).

### How We Plan, Assign, and Execute Work

Four Mondays before the start of the fiscal quarter, in the days after the CEO shares OKRs with all of GitLab in the #okr channel, the CISO proposes OKRs for the Security Division in the OKR draft review meeting agenda for a maximum of 5 objectives. Security leaders are to propose draft OKRs to the CISO prior to the meeting for inclusion.

From FY24 Q1 forward all Security OKRs are documented in the [GitLab OKR project](https://gitlab.com/gitlab-com/gitlab-OKRs). For easy filtering, all Security Objective and KR issues have [Label = Division: Security](https://gitlab.com/gitlab-com/gitlab-OKRs/-/issues/?sort=created_date&state=opened&label_name%5B%5D=Division%3A%20Security&first_page_size=100) applied.

Larger initiatives that span the scope of multiple teams or projects may require a [Working Group]({{< ref "working-groups" >}}).

KRs must be defined as SMART Goals, and have to have definition of done.

Reminder: *SMART* stands for *Specific, Measurable, Achievable, Relevant, and Time-bound*.

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

- `sec-okr::p0`: 100% complete within the quarter RCA if not done
- `sec-okr::p1`: 70% completed across the team/Objective, important
- `sec-okr::p2`: Stretch (future P1 or P0, if we knock out P0/1 we will hit these)

### What does it mean to be a DRI for a KR?

A KR Directly Responsible Individual (DRI) is meant to be the person accountable for the success of that key result.
This doesn't mean you are the assignee for each individual milestone in the KR, but rather that you're the person driving change forward to ensure the KR is successful and the progress, risk, and blockers are appropriately communicated within the Security Assurance team.

Being a DRI for a KR includes:

- Drafting KR milestones (inlcuding consistent titling)
- Monitoring weekly status of milestone progress
- Proactively alerting the appropriate stakeholders if a milestone is at risk of on-time completion
- Weekly KR reporting to support OKR-level leadership updates

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
## Weekly KR Update for the week of YYYY-MM-DD

## What was accomplished this week

- 

## What will be accomplished next week

- 
```

With `YYYY-MM-DD` being the beginning of the week (Monday, even if this day if a holiday or a Family and Friends day).
