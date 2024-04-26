---
title: "Handbook Roadmap"
description: Documents development plans for the handbook
aliases: /handbook/content-websites/handbook-migration/
---

## Introduction

This page will be for documenting and sharing plans for the handbook in true GitLab fashion: [iteratively](/handbook/values/#iteration)
and [transparently](/handbook/values/#transparency). Like the handbook overall, this roadmap will *always* be a work in
progress—a [living document](https://en.wikipedia.org/wiki/Living_document).

Everyone is welcome to browse and contribute to our [open handbook issues](https://gitlab.com/gitlab-com/content-sites/handbook/-/issues).
If there's something you'd like to report or something you'd like to see on this roadmap then please don't hesitate to
[open a new issue](https://gitlab.com/gitlab-com/content-sites/handbook/-/issues). Contributions are welcome and
appreciated!

## Ongoing work

Small improvements such as link updates and text tweaks are constantly being made, but small changes can be made as
quickly as updating the roadmap, so they don't need to be mentioned here unless they are part of a larger effort.

## Roadmap

| What                                   | When                     | Status    |
|----------------------------------------|--------------------------|-----------|
| Handbook Migration                     | March 2023 to 2023-12-22 | Completed |
| Handbook AMA Livestream                | February 2024            | Planning  |
| Handbook Issue Triage Livestream       | February 2024            | Planning  |
| Handbook Client-side Features          | February 2024            |           |
| Handbook Search Improvements           | TBC                      |           |
| New Team and Pets Site                 | TBC                      |           |

### Handbook Migration (Completed)

After years of exponential growth and evolution and the significant accumulation of technical debt the decision was taken
to migrate the Handbook from `www-gitlab-com` to its own repository and rearchitect how the handbook is generated.
Where as previously the handbook was generated using [Ruby](https://www.ruby-lang.org/) and
[Kramdown](https://kramdown.gettalong.org/index.html) the new handbook is generated using [Hugo](https://gohugo.io/).
This change has significantly decreased the time it takes to generate the site and get changes to the Handbook published.

Migrations are seldom easy.  There is 12 years worth of commit history as well as almost 3000 pages worth of
content with changes and updates being made every day.  This has necessitated an iterative approach to migrating the
handbook.  We've broken the Handbook down in to sections, weighted those section by complexity of the migration and
produced the following Timetable.  During this time content will be split between [https://about.gitlab.com](https://about.gitlab.com)
and [https://handbook.gitlab.com](https://handbook.gitlab.com).

For more details see the [Migration Timetable and Status](#migration-timetable-and-status) section below.

### Introduce Handbook AMA Livestream

The handbook is both a living document and an actively developed web site.  GitLab features are  also constantly being
tried out on the Handbook.  There is a plan to introduce a Ask Me Anything about the Handbook in keeping with our
commitment to our [values](/handbook/values).  This will be a once a month 25 minute livestream initially where people
can ask anything relating to the handbook.

### Introduce Handbook Issue Triage Livestream

To increase [transparency](/handbook/values/#transparency) of how Handbook issues and requests get treated its planned
to introduce a new fortnightly livestream where the issues are gone through, commented on and prioritized.  Any on going
issues will also get updates talked about.

### Client-side Features

The Handbook is a statically generated site by there are times when we need to put out notifications about pages or
on-going work.  The recently lead to the introduction of notifications to the handbook.  This was done primarily to
advise of the ongoing Handbook migration work.  There are plans to build on this to notify of deprecated pages, to
allow a watch list of pages and other client-side features.

### Handbook Search Improvements

Currently there is no combined search between [https://about.gitlab.com](https://about.gitlab.com)
and [https://handbook.gitlab.com](https://handbook.gitlab.com) and the internal handbook.  Additionally the handbook
search feature on [https://handbook.gitlab.com](https://handbook.gitlab.com) is Client Side powered using a script
called Luna.  The vision is that searching the Handbook should be simple and accessible.  Once the migration is completed
the next significant bit of work will be to improve search across the handbooks.

### New Team and Pets site

The current Team and Pets pages in company are quite complex and have not been included in the handbook migration as
these pages aren't really handbook content.  So a decision has been taken to split these pages in to their own site
once the migration has been completed.  This may include other elements such as the compensation calculator and the
organisation chart as well as using WorkDay as the Single Source of Truth for team data.

## Migration Timetable and Status

{{% migration-timetable %}}

### Migration calendar

We are providing a Google Calendar with all the dates for the migration in.  This also includes public holidays and notable dates for the US and UK and other dates important to the migration team.

<iframe src="https://calendar.google.com/calendar/embed?src=c_618947374a015de8e6dc270caa157b5d19eb591f3b3dd791200ed02aac0a76e3%40group.calendar.google.com&ctz=Europe%2FLondon" style="border: 0" width="800" height="600" frameborder="0" scrolling="no"></iframe>

If the above iFrame is blank you can also access the [Calendar Directly](https://calendar.google.com/calendar/embed?src=c_618947374a015de8e6dc270caa157b5d19eb591f3b3dd791200ed02aac0a76e3%40group.calendar.google.com&ctz=Europe%2FLondon).

### Why this order

The order is based largely on the table of contents for the handbook but its been weighted slightly so that those sections with lots of Ruby Template files (`erb`) are pushed to the bottom of the list.  The idea is that content which is easier to move is the content which moves first.  This will give more time for those teams who are using ruby templating to move their content to markdown.  Where content can't be easily moved to Markdown this will give the Handbook team time to work with teams to find and develop solutions to meet their needs.

We also hope to run in parallel the migration of the Engineering content from the existing handbook to the new handbook which we hope will reduce the time it takes to migrate all of the content from `www-gitlab-com`.  If we are unable to do this we'll still migrate engineering after Company Handbook Content.

### Dates and order subject to change

This is the order we have identified to migrate content but it is subject to change based on factors such as operational need and how smooth the migration goes for each section.  We won't hesitate to bring forward a migration date if the current piece of content has moved smoothly and quickly.  We'll also communicate changes in [#whats-happening-at-gitlab](https://gitlab.slack.com/archives/C0259241C) and [#handbook](https://gitlab.slack.com/archives/C81PT2ALD) on Slack.

### Migration Status

**Completed 2023-12-22**

### The break down of whats moving

#### Job Families

*Completion Date:* {{% migration-finish-date section="job-families" %}}

**Content to move:**

- [x] Job Families

#### TeamOps

*Completion Date:* {{% migration-finish-date section="teamops" %}}

**Content to move:**

- [x] TeamOps

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/about/migration-details/#teamops)

#### Company Handbook Content

***Expected Finish Date:*** {{% migration-finish-date section="company-handbook-content" %}}

***Content to move:***

- [x] Values
- [x] Being a public company
- [x] Communication
- [x] Handbook
- [x] Key Reviews
- [x] Group Conversations
- [x] E-Group Weekly
- [x] Sustainability
- [x] About the handbook
- [x] Content Websites Responsibility
- [x] Style-Guide
- [x] Inspired By GitLab
- [x] Executive Business Administrators

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/about/migration-details/#company-handbook-content)

#### Tools and Tips

**Completed:** {{% migration-finish-date section="tools-and-tips" %}}

**Content to move:**

- [x] Tools and Tips

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/about/migration-details/#tools-and-tips)

#### Infrastructure Standards

**Completed:** {{% migration-finish-date section="infrastructure-standards" %}}

**Content to move:**

- [x] Infrastructure Standards

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/about/migration-details/#infrastructure-standards)

#### IT Self Service

**Completed:** {{% migration-finish-date section="it-self-service" %}}

**Content to move:**

- [x] IT Self Service

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/about/migration-details/#it-self-service)

#### Support

**Completed** {{% migration-finish-date section="support" %}}

**Content to move:**

- [x] Support

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/about/migration-details/#support)

#### CEO and Office of the CEO

**Completed:** {{% migration-finish-date section="ceo-and-cost-team" %}}

**Content to move:**

- [x] CEO pages
- [x] Office of the CEO Pages

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/about/migration-details/#ceo-and-cost-team)

#### Company

**Completed:** {{% migration-finish-date section="company" %}}

**Content to move:**

- [x] Company
- [x] Friends and Family Days
- [x] History
- [x] KPIs
- [x] Mission
- [x] Offsite
- [x] OKRs
- [x] Purpose
- [x] Strategy
- [x] Top Cross Functional Initiatives
- [x] Structure
- [x] Working Groups

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/about/migration-details/#company)

#### Security

**Completed:** {{% migration-finish-date section="security" %}}

**Content to move:**

- [x] Organizational Change Management
- [x] Security

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/about/migration-details/#security)

#### People Group

**Completed:** {{% migration-start-date section="people-group" %}}

**Content to move:**

- [x] Anti-Harassment
- [x] Entity
- [x] Hiring
- [x] Incentives
- [x] Labor and Employment
- [x] Leadership
- [x] Paid Time Off
- [x] People Group
- [x] Total Rewards
- [x] Travel

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/about/migration-details/#people-group)

#### Culture

**Completed:** {{% migration-start-date section="culture" %}}

**Content to move:**

- [x] Company Culture

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/about/migration-details/#culture)

#### Finance

**Completed:** {{% migration-start-date section="finance" %}}

**Content to move:**

- [x] Board Meetings
- [x] Finance
- [x] Internal Audit
- [x] Spending Company Money
- [x] Stock Options
- [x] Tax

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/about/migration-details/#finance)

#### Product

**Completed:** {{% migration-start-date section="product" %}}

**Content to move:**

- [x] Acquisitions
- [x] Business Technology
- [x] Product
- [x] Product Development

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/about/migration-details/#product)

#### Marketing

**Completed:** {{% migration-start-date section="marketing" %}}

**Content to move:**

- [x] Marketing
- [x] Use-Cases

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/about/migration-details/#marketing)

#### Sales

**Completed:** {{% migration-start-date section="sales" %}}

**Content to move:**

- [x] Alliances
- [x] Customer Success
- [x] Resellers
- [x] Sales

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/about/migration-details/#sales)

#### Legal

**Completed:** {{% migration-start-date section="legal" %}}

**Content to move:**

- [x] DMCA Policy
- [x] GDPR Policy
- [x] Legal

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/about/migration-details/#legal)

#### Engineering

**Expected Date:** {{% migration-start-date section="engineering" %}}

**Content to move:**

- [x] Developer Onboarding
- [x] Engineering
    - [x] architecture
    - [x] automation
    - [x] career-development
    - [x] communication
    - [x] compensation-roadmaps
    - [x] core-development
    - [x] cross-functional-prioritization
    - [x] cto-staff
    - [x] demos
    - [x] deployments-and-releases
    - [x] development
    - [x] engineering-allocation
    - [x] error-budgets
    - [x] expansion-development
    - [x] fast-boot
    - [x] fellow
    - [x] frontend
    - [x] gitlab-repositories
    - [x] hiring
    - [x] ic-leadership
    - [x] incident-management
    - [x] infrastructure
    - [x] infrastructure-quality
    - [x] internships
    - [x] management
    - [x] mentorship
    - [x] metrics
    - [x] monitoring
    - [x] okrs
    - [x] open-source
    - [x] performance
    - [x] performance-indicators
    - [x] plato
    - [x] projects
    - [x] quality
    - [x] readmes
    - [x] recognition
    - [x] releases
    - [x] root-cause-analysis
    - [x] secondments
    - [x] starting-new-teams
    - [x] tax-credits
    - [x] volunteer-coaches-for-urgs
    - [x] workflow

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/about/migration-details/#engineering)

#### Team

**Expected Date:** {{% migration-start-date section="team" %}}

**Content to move:**

- [ ] Team Pages
- [ ] Team Pets

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/about/migration-details/#team)

### Refactor and move data

**Target Date:** TBD

#### Why move data

The contents of the `www-gitlab-com` data directory is a Source of Truth in its own right.  It is shared by a number of functions of the `www-gitlab-com` repository as well as the `internal-handbook`, `digital-experience` and the new `handbook` .  This represents a significant dependency for all these repositories and the content they drive.

Like the refactor of `www-gitlab-com` refactoring data will allow this dependency to have a single DRI and provide a single place where all repositories which depend on this data to call on.  Data will be benefit from faster pipelines and changes to data can quickly propagated to those repositories that depend on them.

#### Status

This is currently in the planning stages and we'll share more as soon as we can.
