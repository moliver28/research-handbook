---
title: Core Platform Sub-department
---

## Vision

Offer enterprise-grade operational experience of GitLab products from streamlined deployment and maintenance, disaster recovery, secure search and discoverability, to high availability, scalability, and performance.


## Mission

Core Platform focuses on improving our capabilities and metrics in the following areas:

- [Database](/handbook/engineering/infrastructure/core-platform/data_stores/database/)
- [Database Reliability](/handbook/engineering/infrastructure/core-platform/data_stores/database-reliability/)
- [Distribution:Build](/handbook/engineering/infrastructure/core-platform/systems/distribution/#distribution-build)
- [Distribution:Deploy](/handbook/engineering/infrastructure/core-platform/systems/distribution/#distribution-deploy)
- [Geo](/handbook/engineering/infrastructure/core-platform/systems/geo/)
- [Gitaly](/handbook/engineering/infrastructure/core-platform/systems/gitaly/)
- [Cloud Connector](/handbook/engineering/infrastructure/core-platform/systems/cloud-connector/)
- [Global Search](/handbook/engineering/infrastructure/core-platform/data_stores/search/)
- [Tenant Scale](/handbook/engineering/infrastructure/core-platform/data_stores/tenant-scale/)

## All Team Members

The following people are permanent members of teams that belong to the Core Platform Sub-department:

### Database

{{< team-by-manager-slug manager="alexives" >}}

### Database Reliability

{{< team-by-manager-slug manager="rmar1" >}}

### Distribution:Build

{{< team-by-manager-slug manager="david-mountney" team="Build" >}}

### Distribution:Deploy

{{< team-by-manager-slug manager="plu8" team="Deploy" >}}

### Geo

{{< team-by-manager-slug manager="juan-silva" >}}

### Gitaly

{{< team-by-manager-slug manager="andrashorvath" >}}

### Global Search

{{< team-by-manager-slug manager="cliu" team="Global Search" >}}

### Cloud Connector

{{< team-by-manager-slug manager="pjphillips" team="Cloud Connector" >}}

### Tenant Scale

{{< team-by-manager-slug manager="arturo-herrero" >}}

## Stable Counterparts

The following members of other functional teams are our stable counterparts:

{{< stable-counterparts manager-role="Director of Engineering, Core Platform" role="[,&] Core Platform|Core Platform:" >}}

## How We Work

### Dashboards

{{% cross-functional-dashboards filters="enablement" section=true %}}

### Weekly Async Updates (No Status Update In Meetings)

In order to embody GitLab [CREDIT values](/handbook/values/#credit), we take team status update to async. Instead of reporting on status in meetings, Directors, Senior Engineering Managers, Engineering Managers provide weekly async updates.  The content of these updates may vary week over week but generally cover:

1. Team projects, priorities, KPIs, OKRs
2. Other priorities (e.g. [Working Groups](/handbook/company/working-groups/), [FCLs](/handbook/engineering/#feature-change-locks), special initiatives, etc.)
3. Highlights & Accomplishments
4. Announcements & topics of interest to those reading the report

We use issues to communicate status asynchronously. The reporting issues reside in [Core Platform Status Update](https://gitlab.com/gitlab-org/enablement-section/enablement-status-update) project. There are two types of report issues - issues for each group, stage, and Director; summary issues for each week and month for quick access. The creation of these issues is automated by scripts and a cron job in the same project. The summary issues are also updated regularly by the same cron job to pull the latest together.

#### To make a weekly async update

Engineering managers are encouraged to make as many updates as needed throughout the week.

1. Open the weekly issue for your team, for example [Database](https://gitlab.com/gitlab-org/enablement-section/enablement-status-update/-/issues/50).
2. Edit the issue description and apply the issue template [group-weekly-status](https://gitlab.com/gitlab-org/enablement-section/enablement-status-update/-/blob/main/.gitlab/issue_templates/group-weekly-status.md).
3. Fill in the content in the issue description.

#### To review Core Platform weekly async updates

1. All issues with the `~Core Platform::Weekly-Update` label are summarized in weekly and monthly issues, for example [W23 Core Platform Sub-Dept Status Summary (2022-06-12 - 2022-06-18)](https://gitlab.com/gitlab-org/enablement-section/enablement-status-update/-/issues/13), [M6 Enablement Sub-Dept Status Summary (Jun 2022)](https://gitlab.com/gitlab-org/enablement-section/enablement-status-update/-/issues/6).
2. You are encouraged to comment and ask questions in weekly async update issues.  This provides useful feedback to the author and opportunities to collaborate.

#### Benefits of reporting and reviewing status async vs. synchronously in meetings

1. Collaboration - By sharing announcements, achievements, goals, and plans we are empowering team members with the information they need to make sound decisions and succeed in their roles.
1. Results - Async updates provide an important channel for sharing accomplishments and progress.
1. Efficiency - Expecting each team member to [poll](https://en.wikipedia.org/wiki/Polling_(computer_science)) for the status they need is extremely inefficient and becomes more inefficient as the organization grows. By using a [Publish Subscribe model](https://en.wikipedia.org/wiki/Publish%E2%80%93subscribe_pattern) we are able to share information much more efficiently.
1. Diversity, Inclusion & Belonging - Async status is more inclusive of team members across timezones.  Not every team member will be able to make a sync meeting (due to timezone or other factors) but everyone can participate in an async update.
1. Iteration - Taking the time to checkpoint where we are at each week prompts the author and readers to consider ways to iterate and to reflect on incremental progress.
1. Transparency - Sharing information in a consistent, accessible way increases transparency and reduces the threshold for team members to contribute.

### Cross-group Frontend Development

The nature of the work primarily done by most Core Platform groups calls for backend heavy roadmaps and backlogs. This means that frontend (FE) development work can be "stop-and-go" and typically does not warrant the need for a full-time FE developer assigned to those groups. However, when work does come up it can be overwhelming for the group in question, or they may not have the necessary FE development skills to complete the task.

To address this need, the enablement sub-department has established a cross-group frontend development process. The objective is to have **extra** frontend engineering capacity readily available to help all enablement groups with frontend development work overload while avoiding going through formal [borrow requests](/handbook/product/product-processes/#borrow) and their process overhead. This also has the added benefit of having some level of technical oversight that supports a consistent frontend architecture across groups.

The process itself consists of managing a unified enablement frontend roadmap and backlog. The DRI of this process is the Engineering Manager of Geo (@juan-silva). While the frontend engineers' primary focus is still their own groups' roadmap, they can be made available for this backlog based on demand, availability, and overall priority assessment upon agreements between respective groups' PMs and EMs coordinated by the DRI.

The roadmap is depicted in the table below. This roadmap is reviewed regularly on a monthly cadence during one of the Core Platform staff meetings. Additionally, ad-hoc planning sessions can be scheduled on request by other Core Platform EMs, when more prioritization is needed to balance the needs of different group stakeholders.

| Group | Roadmap Item | Milestones | Links | Notes
| ------ | ------ | ------ | ------ | ------ |
| Global Search | GitLab Chat | 16.0 | [MVC Epic](https://gitlab.com/groups/gitlab-org/-/epics/10220)
| Tenant Scale | Migrate user tabs to Vue | 16.1 | [Epic](https://gitlab.com/groups/gitlab-org/-/epics/9056)


Effort is based on T-shirt sizes as follows:
Small = Up to 1 week, Medium = 2-6 weeks, Large = 2-3 months, XL = more than 3 months

As the frontend roadmap items above are broken down into specific Epics and Issues, they are added to each individual group's backlog using that group’s own labels. Additionally, those issues must be labelled with `Core Platform-FE`.

New issues must initially be labeled `workflow::planning breakdown` where they can be assessed from a technical perspective and estimated accordingly. From there, issues are expected to follow the workflow steps outlined in the [Core Platform Frontend Backlog](https://gitlab.com/groups/gitlab-org/-/boards/5604213) board. Geo's FE Engineer is the DRI for updating the board regularly as development progresses.

### Increasing Efficiency through Documenting Decisions
Documenting development decisions is another way to increase efficiency.  These decisions can be either in an issue explicitly stating that we will not work on this issue, the product category page for your group or a more formal decision log in your group's section of the handbook.  Whatever your chosen desitination, each group should try to maintain a [single source of truth](/handbook/values/#single-source-of-truth) for the decisions.  A recent example (without mentioning specific product name) had a development team researching an open source product to accelerate development time only to find out later that this research had been previously completed and the product was eliminated from consideration.  If this decision had been discoverable via documentation or issue it would have saved precious development time.

We have started creating decision logs to benefit our internal development team as well as our greater GitLab community.  It is up to each group to determine the best location for decision logs to be discoverable.  For example, the Database team has a decision log for [Sharding GitLab with CitusDB](/handbook/engineering/infrastructure/core-platform/data_stores/database/doc/citus.html) in the Core Platform/Database section of the handbook and a decision log for the [Sharding Working Group](/handbook/company/working-groups/sharding/#outcome---closed) in the working group section of the handbook.

For issues, a clear decision is when an issue is successfully closed.  However, if an issue is closed because we "won't do it" it may not be immediately clear.  We are adopting the `~won't do` label for those issues.  Often the pattern is to just stash these issues in the `~backlog`.  This can be misleading to those watching the issue and frustrating to the original author, especially if they are a community contributor.  When we apply a `won't do` label to an issue, we are making a clear decision.  If there is no pushback on the `won't do` label then we made the right decision.  If there is pushback and we need to reprioritize the issue, then that is a good outcome as well.

### How Do We Interview Candidates
We hold our bar high when it comes to hiring. Our goal is to hire the best candidates who will make GitLab successful meanwhile ensuring that the candidates are also set up for success at GitLab. With that in mind, our interview panels consist of a minimum of 4 interviewers (a.k.a. 4 scorecards), and there is no upper bound if needed. However, typically it won't go beyond 6 interviewers in total. Our interview panels are designed so that multiple data points are available from different interviewers for a specific factor, such as technical competency. This lets us confidently make decisions by cross referencing interview feedback in order to avoid the risk of single data source.

To bring the best possible candidate experience and stay competitive, we schedule all interviews at once and try to fit all in a small time window. This means the interviews are not serial and the scheduling of an interview doesn't depend on the outcome of another one. On the other hand, we will give candidates advanced notice that the interview process can halt at any time and we will notify them if the case. This is to respect the candidates' time when we believe the candidate is a better fit for other opportunities.

#### Individual Contributors
1. Technical Assessment Interview
   1. Typically the general frontend, backend, full-stack, or Go technical assessment
   1. The Distribution team has designed a technical assessment specific to their needs, as the above does not apply to its domain.
1. Peer Team Member Interview
   1. Typically a behavioral interview with team members whom the candidates will work with
   1. An additional vertical domain technology drilldown
   1. A combination of both
1. Hiring Manager Interview
1. Skip-level Manager Interview
   1. A Senior Manager or a Director
   1. A Senior Manager or Director from another section if a Senior Managers or Director from Core Platform is not available.
1. Product Manager Interview (Optional - see Additional Guidelines)
   1. By `optional`, the Hiring Manager and their counterpart Product Manager can decide together whether Product Manager is invited to the interview panel
   1. If the Product Manager is on the panel, the interview must be consistently held for all candidates
1. Other interviews if needed - below are some but not limit to example scenarios that necessitate additional interviews
   1. Additional information is needed for any item required for the scorecards
   1. More clarification/drilldown to the answers that candidates provided
   1. Hiring a Staff and above engineer

Additional Guidelines:
1. There must be at least one behavioral style interview that is administered by another IC. This could be another engineer on the team or a Product Manager, for example. Regardless of who conducts this interview, we still want to ensure there are at least 2 scorecards from engineers.
   1. Other teams who would like to adopt this consolidation approach can follow this additional guideline.
1. When the `Technical Assessment` and `Peer Team Member Interview` are separate, the hiring manager can feel free to determine how many engineers are invited to each interview as long as a minimum of 2 engineers will provide **independent** feedback of technical assessments.
1. More about the Product Manager interview
   1. The Product Manager interview is **optional** for Intermediate candidates
   1. The Product Manager interview is **highly encouraged** for Senior candidates
   1. The Product Manager interview is **required** for Staff and above candidates

#### Engineering Managers
1. Hiring Manager Interview
1. Peer Manager Interview - an EM who will be the peer of the candidate. Usually, it is an Engineering Manager within the same Stage or who collaborates closely with this role
1. Team Member Interview - an individual contributor who will report to this role
1. Skip-level Manager Interview - if the hiring manager is a Senior Manager, the Director will be invited. If the hiring manager is a Director, the VP of Development or a Director from another section will be invited
1. Product Manager Interview - the counterpart product manager
1. Other interviews if needed - when the interview team finds out they need additional data for a particular topic(s), where the topic can be any item required for the scorecards or more clarification/drilldown to the answers that candidates provided. For Engineering Manager roles, it can also include additional skip-level manager interviews to provide additional input

#### Requirements for Qualified Candidates
1. There are at least two `Strong Yes` scorecards, excluding the recruiting call
1. All `must-haves` assessed and positive (`Yes` or `Strong Yes`)
1. Majority (e.g. 5 out of 9) of `nice-to-haves` assessed and positive
1. Thumb-down scorecard must be explicitly addressed in Justification
1. Any previous rejections (from this role or other roles) explicitly addressed in Justification
1. Any red flag must be explicitly addressed in Justification
1. Justification scorecard must be written by the Hiring Manager
1. Justification scorecard must score `must-haves` and `nice-to-haves` the same way as required in #2 and #3. The ratings should reflect the hiring manager's evaluation of the candidate based on all feedback. They are **not** an average of scores given by the interview panel.

## Software Subscriptions
The Core Platform teams leverage the following software or SaaS services to deliver our products. For general information of procurement, checkout the [procurement team page](/handbook/finance/procurement/). For procurement questions, bring to [#procurement](https://gitlab.slack.com/archives/CPTMP6ZCK). To make new Purchase Order (PO), create a new [procurement issue](https://gitlab.com/gitlab-com/Finance-Division/procurement-team/procurement/-/issues/new?issuable_template=software_vendor_contract_request).

| Software | Vendor Link | Term    | Renewal Date | Team Impacted | Comments |
| -----    | -----       | -----   | -----      | -----         | -----    |
| packagecloud.io | [https://packagecloud.io/](https://packagecloud.io/) | Annual | March 30th | Distribution | Existing vendor, [last renewal issue](https://gitlab.com/gitlab-com/Finance-Division/procurement-team/procurement/-/issues/485), [last renewal PO](https://gitlab.coupahost.com/requisition_headers/618)  |
| dependencies.io | [https://www.dropseed.io/](https://www.dropseed.io/ ) | Annual | November 1st | Distribution | Existing vendor, [last renewal issue](https://gitlab.com/gitlab-org/distribution/team-tasks/-/issues/514) |
| postgres.ai     | [https://postgres.ai/](https://postgres.ai/)     | Annual  | May 28th          | Database     | Existing vendor, [last renewal issue](https://gitlab.com/gitlab-com/Finance-Division/procurement-team/procurement/-/issues/676) |
