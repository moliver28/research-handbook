---
title: "Identity Engineering Team"
description: "The Identity Engineering team leads the technical strategy and automation implementation of identity and access management (IAM), role-based access control (RBAC), and administrative access controls for internal GitLab systems, cloud infrastructure, and tech stack applications. The Security team focuses on customer and product trust, while the Business Technology and IT team focuses on compliance and financial trust."
---

## Overview

The Security Identity Engineering team was formed on 2023-12-01 to lead the design and implementation of our next-generation of identity and access management framework and program at GitLab that we refer to as [Identity v3](/handbook/security/identity). The founding members of the team joined Security from the IT Engineering and IT Infrastructure team as part of an organization realignment, however have been working on identity management projects for several years.

To get started with understanding the Identity function, see the [Identity](/handbook/security/identity) handbook page. Our flagship project is the [Identity Platform](/handbook/security/identity/platform), powered by [Access Control (accessctl)](https://gitlab.com/gitlab-identity/accessctl) and [Access Check (accesschk)](https://gitlab.com/gitlab-identity/accesschk).

The team is just getting started, so please see the [Identity Engineering Issue Tracker](https://gitlab.com/gitlab-com/gl-security/identity/eng/issue-tracker/-/issues) to learn more about what we're working on.

**Looking for IT Infrastructure?** Please create an issue in the [Identity Ops Issue Tracker](https://gitlab.com/gitlab-com/gl-security/identity/ops/issue-tracker) or ask in Slack `#security-identity-ops`.

**Looking to get access to something?** Please open an access request using the appropriate [issue template](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/blob/master/README.md?ref_type=heads).

## Quick Reference

### Contact Us

- (Preferred) Ask in `#security-identity-ops`
- Tag us in an existing issue with `@gitlab-com/gl-security/identity/ops`
- Tag us in an existing Slack thread with `@security-identity`
- Create an issue in [Identity Ops Issue Tracker](https://gitlab.com/gitlab-com/gl-security/identity/ops/issue-tracker)
- Confidential? Send a Slack DM to one of the team members.

#### On Call Schedule (Slack DM)

- Use Slack DM on weekdays. Use PagerDuty on weekends.
- 00:00 to 03:00 UTC - Jeff Martin
- 03:00 to 07:00 UTC - No Coverage (contact SIRT)
- 07:00 to 15:00 UTC - Vlad Stoianovici
- 15:00 to 17:00 UTC - Jeff Martin / Vlad Stoianovici (sunset handoff)
- 17:00 to 23:59 UTC - Jeff Martin

### Epics and Issues

- Operations
  - [Access Requests Issue Tracker](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues) (use [issue template](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/blob/master/README.md?ref_type=heads))
  - [Identity Ops Issue Tracker](https://gitlab.com/gitlab-com/gl-security/identity/ops/issue-tracker/-/issues) (day-to-day requests)
- Engineering
  - [Identity Engineering Epics Roadmap](https://gitlab.com/groups/gitlab-com/gl-security/identity/eng/-/epics)
  - [Identity Engineering Epics](https://gitlab.com/groups/gitlab-com/gl-security/identity/eng/-/epics)
  - [Identity Engineering Issue Tracker](https://gitlab.com/gitlab-com/gl-security/identity/eng/issue-tracker/-/issues) (leadership sponsored or OKR related)
  - [Access Control Public Issue Tracker](https://gitlab.com/gitlab-identity/accessctl/-/issues) (features and bugs for our software and tools)
  - [Access Check Public Issue Tracker](https://gitlab.com/gitlab-identity/accesschk/-/issues) (features and bugs for our software and tools)

### Data Sources

- [Identity Policy and Manifest Data](https://gitlab.com/gitlab-com/gl-security/identity/data-poc)
- [Identity Kingdoms and Tech Stack](/handbook/security/identity/kingdoms)
- [Counterpart Directory](/handbook/security/identity/counterparts)

### Projects and Source Code

- Open Source Projects at [gitlab.com/gitlab-identity](https://gitlab.com/gitlab-identity)
- Internal Projects at [gitlab.com/gitlab-com/gl-security/identity](https://gitlab.com/groups/gitlab-com/gl-security/identity)

## Team Directory

<!-- START_TEAM_DIRECTORY -->
```yaml
smanzuik:
  name: 'Steve Manzuik'
  pronunciation: 'man-zoo-ick'
  title: 'director_threat_vulnerability_management'
  email_handle: 'smanzuik'
  gitlab_saas_handle: 'smanzuik'
  timezone: 'US Pacific (UTC-8 Winter/UTC-7 Summer)'
  working_hours:
    pt: '7:00am to 4:00pm'
    utc_winter: '15:00 to 23:59'
    utc_summer: '16:00 to 00:59'
  on_call_hours: null
  links:
    gitlab_saas_profile: 'https://gitlab.com/smanzuik'
jmartin:
  name: 'Jeff Martin'
  pronuncation: 'bat-man'
  title: 'staff_security_engineer'
  email_handle: 'jmartin'
  gitlab_saas_handle: 'jeffersonmartin'
  timezone: 'US Pacific (UTC-8 Winter/UTC-7 Summer)'
  working_hours:
    pt: '7:00am to 4:00pm'
    utc_winter: '15:00 to 23:59'
    utc_summer: '16:00 to 00:59'
  on_call_hours:
    pt: '5:00am to 7:00pm'
    utc_winter: '12:00 to 03:00'
    utc_summer: '13:00 to 04:00'
  links:
    gitlab_saas_profile: 'https://gitlab.com/jeffersonmartin'
vstoianovici:
  name: 'Vlad Stoianovici'
  pronunciation: 'stoy-on-oh-vitch'
  title: 'senior_security_engineer'
  email_handle: 'vstoianovici'
  gitlab_saas_handle: 'vlad'
  timezone: 'Eastern Europe (UTC+2 Winter/UTC+3 Summer)'
  working_hours:
    eet: '9:00am to 7:00pm'
    utc_winter: '07:00 to 17:00'
    utc_summer: '08:00 to 18:00'
  on_call_hours:
    eet: '9:00am to 7:00pm'
    utc_winter: '07:00 to 17:00'
    utc_summer: '08:00 to 18:00'
  links:
    gitlab_saas_profile: 'https://gitlab.com/vlad'
```
<!-- END_TEAM_DIRECTORY -->
