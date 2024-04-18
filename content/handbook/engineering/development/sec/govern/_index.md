---
title: Govern Sub-department
layout: single
---

The Govern sub-department teams are the engineering teams in the [Govern Stage](/handbook/product/categories/#govern-stage) of the product.

## Vision

To support GitLab's product vision through alignment with the [Govern stage](https://about.gitlab.com/direction/govern/) product direction.

## Groups

- [Authentication](authentication/)
- [Authorization](authorization/) and [Anti-abuse](anti-abuse/)
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
- [Threat Insights](https://about.gitlab.com/direction/govern/threat_insights/16_threat_insights_priorities.html#priorities) [17.x](https://about.gitlab.com/direction/govern/threat_insights/17_threat_insights_priorities.html#priorities)

### Product Documentation Links

- [Security Dashboard](https://docs.gitlab.com/ee/user/application_security/security_dashboard/)
- [Vulnerability Pages](https://docs.gitlab.com/ee/user/application_security/vulnerabilities/)
- [Security scanner integration](https://docs.gitlab.com/ee/development/integrations/secure.html)
- [Secure and Govern terminology](https://docs.gitlab.com/ee/user/application_security/terminology/)

## Sub-department development people leaders

{{< team-by-manager-slug manager="pcalder" role="Govern" team="Engineering Manager(.*)Govern" >}}

To contact Govern sub-department development people leaders leaders use the following aliases:

- GitLab: `@gitlab-org/govern/managers`
- Slack: `@s_govern_managers`
- Slack channel: `#govern-development-people-leaders`

## All Team Members

### Authentication

{{% team-by-manager-slug manager="adil.farrukh" team="Engineer(.*)Govern:Authentication" %}}

### Authorization and Anti-abuse

{{% team-by-manager-slug manager="jayswain" team="Engineer(.*)Govern:Authorization|Govern:Anti-Abuse" %}}

### Compliance

{{% team-by-manager-slug manager="nrosandich" team="Engineer(.*)Govern:Compliance" %}}

### Security Policies

{{% team-by-manager-slug manager="maciejparuszewski" team="Engineer(.*)Govern:Security Policies" %}}

### Threat Insights

{{% team-by-manager-slug manager="nmccorrison" team="Engineer(.*)Govern:Threat Insights" %}}

{{% team-by-manager-slug manager="pcalder" team="end Engineer(.*)Govern:Threat Insights" %}}

## Stable Counterparts

The following members of other functional teams are our stable counterparts:

{{% stable-counterparts role="Govern" other-manager-roles="Engineering Manager(.*)Govern:(.*)|Director of Engineering(.*)Govern" %}}

## Govern staff meeting

The Govern stage engineering department leaders meet weekly to discuss stage and group topics in the `Govern staff meeting`. This meeting is open to all team members and is published on the Govern stage calendar.

Meetings have an agenda and are async-first, where the aim is to resolve discussions async and leave time in the meeting to deep dive into topics that require more discussion.

We use the [Govern Sub-department Board](https://gitlab.com/gitlab-com/govern-sub-department/-/boards/4833026) to better organize our discussions.

### Weekly updates

The Govern development teams provide [weekly status updates](https://gitlab.com/groups/gitlab-com/-/epics/2126) using an issue template and CI scheduled job.
As priorities change, engineering managers update the template to include areas of interest.

The template highlights priorities, opportunities, risks, and security and availability concerns [here](https://gitlab.com/gitlab-com/govern-sub-department/-/blob/main/.gitlab/issue_templates/govern_stage_weekly_update.md).

### Quarterly review updates

Every quarter, an engineering manager for each group in the Govern Sub-department prepares the quarterly review update using the issue template and records approximately 5 minutes to summarize the last quarter from the engineering perspective and present a high-level plan for the group for the next one to respond to quarterly Product strategy and explain our goals for next quarter.

We aim to foster collaboration and communication between engineering managers in the Govern Sub-department, align groups on product priorities for the next quarter, and celebrate our successes together.

Quarterly review update template can be found [here](https://gitlab.com/gitlab-com/govern-sub-department/-/blob/main/.gitlab/issue_templates/govern_stage_quarterly_review.md)).

### OKR planning

Our OKRs are a mixture of top down, aligned with Company-wide, Product, or Engineering Division OKRs, and bottom up engineering-led initiatives driven by our team members in Govern. Any team member can propose an OKR for Govern by creating a [proposal issue](https://gitlab.com/gitlab-com/gitlab-OKRs/-/issues/?sort=created_date&state=opened&label_name%5B%5D=Sub-Department%3A%3AGovern&type%5B%5D=issue&search=Govern%20%28proposal%29&first_page_size=100) in our internal OKR project. The issue can be used to collaborate and discuss the proposal. When we are ready to commit, we can create or align to an existing Objective, and add specific key results to track through the quarter.

Labels:

- `Sub-Department::Govern` - for top-level sub-department Objectives.
- `devops::govern` - for Objectives and key results for the stage, and stage groups
- `group::` - for Objectives and key results for a specific group

Each Objective and Key Result should have an assignee who is DRI for providing status updates throughout the quarter. Regular updates are preferred. At a minmum these should be updated
- By end of day, the second friday of every month
- Ay the end of the quarter 

OKRs can be changed or closed during the quarter if they are completed, or as our goals change. This ensures we are focusing on areas that are revelant to our current and future priorities.


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







### PTO

To support our teams, and commitments made to internal and external customers, team members in Govern are encouraged to create a PTO issue before going on leave lasting a week or longer.

The issue provides a place to discuss and document coverage for any work in progress, or projects where the team member is the directly responsible individual (DRI), and support the [Paid Time Off at GitLab](https://handbook.gitlab.com/handbook/paid-time-off/) policy.

We use an internal issue tracker as team member PTO is not public information, and a PTO template
- [PTO issue list](https://gitlab.com/gitlab-com/govern-sub-department/-/issues/?sort=weight_desc&state=opened&label_name%5B%5D=PTO&first_page_size=20)
- [New PTO issue template](https://gitlab.com/gitlab-com/govern-sub-department/-/issues/new?issuable_template=ooo_template)

When a team-member takes some time off, it is important that their work is still being followed up on if needed. We want to make sure that any MR that lands in staging and production environments while we are out gets proper attention and is verified by a counterpart. Therefore, when getting close to our time-off period, we should do the following:

* Any MR that can be put on hold until we're back from PTO should be put in the `Draft` status. This ensures that the MR won't be merged accidentally without a clear DRI to follow up on it.
* Other non-draft MRs and freshly merged MRs, which need to be verified on staging, should be assigned to another engineer. The additional DRI will be responsible to verify the changes if they land in staging while we're out. When doing this, we must ensure that enough context has been provided in the MR's description and/or the related issue (setup, testing, potential impact, design decisions, etc.).

Keep in mind that, while we strongly recommend following this process when taking some time off, it might not be relevant all the time. For example, if our time-off period is going to be short and/or our active MRs are minor enough, it might make sense to ignore these recommendations and follow up when we're back.

#### Engineering Leadership - PTO or unavailable

Team members should contact any Govern Engineering Manager by mentioning in `#sd_govern_engineering` or `#govern-development-people-leaders` if they need management support for a problem that arises, such as a production incident or feature change lock, when their direct manager is not available. The Govern manager can provide guidance and coordination to ensure that the team member receives the appropriate help.

Some people management tasks, including [Workday](/handbook/people-group/workday-guide) and [Navan Expense](/handbook/business-technology/enterprise-applications/guides/navan-expense-guide), may require for escalation or delegation.


## Metrics

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "STAGE_LABEL"="govern" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
  {{< tableau/filters "STAGE_LABEL"="govern" >}}
{{< /tableau >}}

## Links and resources

{{% include "includes/engineering/govern-shared-links.md" %}}
* Group [#g_govern_security_policies](https://gitlab.slack.com/archives/CU9V380HW)
* Group [#g_govern_threat_insights](https://gitlab.slack.com/archives/CV09DAXEW)
* Group [#g_govern_compliance](https://gitlab.slack.com/messages/CN7C8029H)
* [Software Supply Chain Security working group](/handbook/company/working-groups/software-supply-chain-security/)

### Technical Documentation Links

* [End-to-end tests](https://gitlab.com/gitlab-org/gitlab/-/tree/master/qa/qa/specs/features/ee/browser_ui/10_govern)
