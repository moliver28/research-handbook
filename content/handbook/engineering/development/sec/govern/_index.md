---
title: Govern Stage
---

The Govern engineering groups are responsible for the [Govern Stage](/handbook/product/categories/#govern-stage) of the product.

## Vision

Help users manage security vulnerabilities, policies, and compliance across their organization.

The stage vision is captured on the [Govern product direction](https://about.gitlab.com/direction/govern/) pages.

## Groups

- [Anti-abuse](anti-abuse/)
- [Authentication](authentication/)
- [Authorization](authorization/)
- [Compliance](compliance/)
- [Security Policies](security-policies/)
- [Threat Insights](threat-insights/)

## Priorities

Group priorities are reviewed collaboratively with product counterparts and published on the Govern direction pages

- [Anti-abuse](https://about.gitlab.com/direction/govern/anti-abuse/#priorities)
- [Authentication](https://about.gitlab.com/direction/govern/authentication/#priorities)
- [Authorization](https://about.gitlab.com/direction/govern/authorization/#priorities)
- [Compliance](https://about.gitlab.com/direction/govern/compliance/tactical-priorities.html#priorities)
- [Security Policies](https://about.gitlab.com/direction/govern/security_policies/#priorities)
- [Threat Insights](https://about.gitlab.com/direction/govern/threat_insights/16_threat_insights_priorities.html#priorities)


## Stage development people leaders

{{< team-by-manager-slug manager="pcalder" role="Govern" >}}

To contact Govern stage development people leaders leaders use the following aliases:

- GitLab: `@gitlab-org/govern/managers`
- Slack: `@s_govern_managers`

## All Team Members

### Anti-abuse

{{% team-by-manager-slug manager="jayswain" team="Engineer(.*)Govern:Anti-Abuse" %}}

### Authentication

{{% team-by-manager-slug manager="adil.farrukh" team="Engineer(.*)Govern:Authentication" %}}

### Authorization

{{% team-by-manager-slug manager="jayswain" team="Engineer(.*)Govern:Authorization" %}}

### Compliance

{{% team-by-manager-slug manager="nrosandich" team="Engineer(.*)Govern:Compliance" %}}

### Security Policies

{{% team-by-manager-slug manager="maciejparuszewski" team="Engineer(.*)Govern:Security Policies" %}}

### Threat Insights

{{% team-by-manager-slug manager="nmccorrison" team="Engineer(.*)Govern:Threat Insights" %}}

{{% team-by-manager-slug manager="kniechajewicz" team="Engineer(.*)Govern:Threat Insights" %}}

## Stable Counterparts

The following members of other functional teams are our stable counterparts:

{{% stable-counterparts role="Govern" other-manager-roles="Engineering Manager(.*)Govern:Authorization and Anti-abuse|Engineering Manager(.*)Govern:Authentication|Engineering Manager(.*)Govern:Compliance|Engineering Manager(.*)Govern:Security Policies|Engineering Manager(.*)Govern:Threat Insights|Engineering Manager(.*)Growth and Govern:Threat Insights|Director of Engineering for Secure(.*)Govern(.*)and Growth|Senior Manager(.*)Govern" %}}

## Skills

Because we have a wide range of domains to cover, it requires a lot of different expertise and skills:

| Technology skills | Areas of interest    |
|-------------------|----------------------|
| Ruby on Rails     | Backend development  |
| Go                | Backend development  |
| Vue, Vuex         | Frontend development |
| GraphQL           | _Various_            |
| SQL (PostgreSQL)  | _Various_            |
| Docker/Kubernetes | Threat Detection     |

{{% cross-functional-dashboards filters="govern" stage=true %}}

### Product Documentation Links

- [Security Dashboard](https://docs.gitlab.com/ee/user/application_security/security_dashboard/)
- [Vulnerability Pages](https://docs.gitlab.com/ee/user/application_security/vulnerabilities/)
- [Security scanner integration](https://docs.gitlab.com/ee/development/integrations/secure.html)
- [Secure and Govern terminology](https://docs.gitlab.com/ee/user/application_security/terminology/)

## Engineering Managers

We meet bi-weekly synchronously to discuss stage and group wide topics. We primarily try to use Epics/Issues to initiate discussions and maintain transparency. We use the
[Govern Compartment Board](https://gitlab.com/gitlab-com/govern-compartment/-/boards/4833026) to better organize our discussions.

### Engineering Leadership - Backup Plans and Escalation


The following table lists the Govern Stage management [backup plan](/handbook/engineering/management/#engineering-manager-backup).

| Team Member                                 | Covered by                                  | Escalation                               |
|---------------------------------------------|---------------------------------------------|------------------------------------------|
| {{< member-by-name "Phil Calder" >}}        | {{< member-by-name "Wayne Haber" >}}        | {{< member-by-name "Bartek Marnane" >}}  |
| {{< member-by-gitlab "alan" >}}             | {{< member-by-name "Nathan Rosandich" >}}   | {{< member-by-name "Phil Calder" >}}     |
| {{< member-by-name "Nathan Rosandich" >}}   | {{< member-by-gitlab "alan" >}}             | {{< member-by-name "Phil Calder" >}}     |
| {{< member-by-name "Kamil Niechajewicz" >}} | {{< member-by-name "Neil McCorrison" >}}    | {{< member-by-name "Phil Calder" >}}     |
| {{< member-by-name "Neil McCorrison" >}}    | {{< member-by-name "Kamil Niechajewicz" >}} | {{< member-by-name "Phil Calder" >}}     |
| {{< member-by-name "Jay Swain" >}}          | {{< member-by-name "Adil Farrukh" >}}       | {{< member-by-name "Phil Calder" >}}     |
| {{< member-by-name "Adil Farrukh" >}}       | {{< member-by-name "Jay Swain" >}}          | {{< member-by-name "Phil Calder" >}}     |

Team members should contact any Govern Engineering Manager by mentioning in `#sd_govern_engineering` or `#sec-growth-development-people-leaders` if they need management support for a problem that arises, such as a production incident or feature change lock, when their direct manager is not available. The Govern manager can provide guidance and coordination to ensure that the team member receives the appropriate help.

The Engineering Manager will allocate open issues and merge requests to another engineer, ideally in the same [group](#all-team-members), if an engineer is absent.

Some people management tasks, including [Workday](/handbook/people-group/workday/workday-guide) and [Navan Expense](/handbook/business-technology/enterprise-applications/guides/navan-expense-guide), may require for escalation or delegation.

In the event that one or more team members become unavailable for any reason, this can serve as the foundation for a business continuity plan (BCP) and serve as a basic guide for Managing Engineering continuity.

### PTO

To support our teams, and commitments made to internal and external customers, team members in Govern are encouraged to create a PTO issue before going on leave lasting a week or longer.

The issue provides a place to discuss and document coverage for any work in progress, or projects where the team member is the directly responsible individual (DRI), and support the [Paid Time Off at GitLab](https://handbook.gitlab.com/handbook/paid-time-off/) policy.

We use an internal issue tracker as team member PTO is not public information, and a PTO template
- [PTO issue list](https://gitlab.com/gitlab-com/govern-compartment/-/issues/?sort=weight_desc&state=opened&label_name%5B%5D=PTO&first_page_size=20)
- [New PTO issue template](https://gitlab.com/gitlab-com/govern-compartment/-/issues/new?issuable_template=ooo_template)

When a team-member takes some time off, it is important that their work is still being followed up on if needed. We want to make sure that any MR that lands in staging and production environments while we are out gets proper attention and is verified by a counterpart. Therefore, when getting close to our time-off period, we should do the following:

* Any MR that can be put on hold until we're back from PTO should be put in the `Draft` status. This ensures that the MR won't be merged accidentally without a clear DRI to follow up on it.
* Other non-draft MRs and freshly merged MRs, which need to be verified on staging, should be assigned to another engineer. The additional DRI will be responsible to verify the changes if they land in staging while we're out. When doing this, we must ensure that enough context has been provided in the MR's description and/or the related issue (setup, testing, potential impact, design decisions, etc.).

Keep in mind that, while we strongly recommend following this process when taking some time off, it might not be relevant all the time. For example, if our time-off period is going to be short and/or our active MRs are minor enough, it might make sense to ignore these recommendations and follow up when we're back.

## Weekly updates

The Govern development teams provide [weekly status updates](https://gitlab.com/groups/gitlab-com/-/epics/2126) using an issue template and CI scheduled job.
As priorities change, engineering managers update the template to include areas of interest.

An example template highlighting priorities, opportunities, risks, and security and availability concerns is:

Weekly update template can be found [here](https://gitlab.com/gitlab-com/govern-compartment/-/blob/main/.gitlab/issue_templates/govern_stage_weekly_update.md).

## Quarterly review updates

Every quarter, an engineering manager for each group in the Govern Compartment prepares the quarterly review update using the issue template and records approximately 5 minutes to summarize the last quarter from the engineering perspective and present a high-level plan for the group for the next one to respond to quarterly Product strategy and explain our goals for next quarter.

We aim to foster collaboration and communication between engineering managers in the Govern Compartment, align groups on product priorities for the next quarter, and celebrate our successes together.

Quarterly review update template can be found [here](https://gitlab.com/gitlab-com/govern-compartment/-/blob/main/.gitlab/issue_templates/govern_stage_quarterly_review.md)).

## Govern staff meeting

The Govern stage engineering department leaders meet every two weeks to discuss stage and group topics in the `Govern staff meeting`,
and optionally every week in the `Expansion Development` staff  and `Secure/Govern senior leaders development` staff meetings.

Meetings have an agenda and are async-first, where the aim is to resolve discussions async and leave time in the meeting to deep dive into topics that require more discussion.


## Links and resources

{{% include "includes/engineering/govern-shared-links.md" %}}
* Group [#g_govern_security_policies](https://gitlab.slack.com/archives/CU9V380HW)
* Group [#g_govern_threat_insights](https://gitlab.slack.com/archives/CV09DAXEW)
* Group [#g_govern_compliance](https://gitlab.slack.com/messages/CN7C8029H)
* [Software Supply Chain Security working group](/handbook/company/working-groups/software-supply-chain-security/)

### Technical Documentation Links

* [End-to-end tests](https://gitlab.com/gitlab-org/gitlab/-/tree/master/qa/qa/specs/features/ee/browser_ui/10_govern)
