---
title: "Upgrade improvements"
description: "The working group aims to enhance customer's experience of the entire lifecycle of upgrading a self-managed GitLab instance."
status: active
---

## Attributes

<table>
<tr>
<th>Property</th>
<th>Value</th>
</tr>
<tr>
<td>Date Created</td>
<td>2024-10-01</td>
</tr>
<tr>
<td>Target End Date</td>
<td>TBD</td>
</tr>
<tr>
<td>Slack</td>
<td>

[#wg_upgrade_improvements](https://gitlab.enterprise.slack.com/archives/C07GYUGJLPM) (only accessible from within the company)
</td>
</tr>
<tr>
<td>Google Doc</td>
<td>

[Working Group Agenda](https://docs.google.com/document/d/14vqe2wbsTatp0kYRUntaf7-2XWYKPtvzrPG-eemzAow/edit) (only accessible from within the company)

[Project Plan](https://docs.google.com/document/d/1FbZP2bCi25efAxUZQX21NIu_gcMv7jHoR8gEny9BSVI/edit#heading=h.hyca1fd7tvon) (only accessible from within the company)
</td>
</tr>
<tr>
<td>Epic</td>
<td>

</td>
</tr>
</table>

## Goal

The Upgrade Improvements Working Group is a cross-functional group focused on Upgrade Improvements project, one of the top CTO priorities. The project aims to enhance customer's experience of the entire lifecycle of upgrading a self-managed GitLab instance.

### Overview

Upgrading GitLab can be challenging, varying in difficulty from upgrade to upgrade and deployment. The working group reviewed [FY25 emergency upgrade tickets so far](https://gitlab.com/gitlab-com/support/readiness/emergencies/-/issues/2808 "Review of Upgrade issues captured in FY25"), gitlab.com [deployment blocker dashboard](https://dashboards.gitlab.net/d/delivery-deployment_blockers/delivery3a-deployment-blockers?orgId=1), and customer conversations, group Distribution is also [reviewing and validating current upgrading process](https://gitlab.com/gitlab-org/distribution/team-tasks/-/issues/1597 "Test varying upgrade scenarios and test for pain points").

We have found that the current upgrade process itself works in general, there are user experience improvements that can be made to lower the barrier of upgrades, but the upgrade process itself works as intended today. The main challenges are product bugs, configuration issues, migration bug and migration taking too long, these problems are largely existing in the pre- and post- upgrade phases.

Hence, the working group decided to address these concerns in multiple phases.

<table>
<tr>
<th>Phase</th>
<th>Focus areas</th>
<th>ETA</th>
</tr>
<tr>
<td>Phase 1</td>
<td>

* Database improvements
* Code quality
* Introduce Support Spikes process
* Perform UX research
</td>
<td>TBD</td>
</tr>
<tr>
<td>Phase 2</td>
<td>

* Provide option for long term support (LTS) versions
* TBD
</td>
<td>TBD</td>
</tr>
<tr>
<td>Phase X</td>
<td>

* TBD
</td>
<td>TBD</td>
</tr>
</table>

Refer to [Upgrade Improvements project plan](https://docs.google.com/document/d/1FbZP2bCi25efAxUZQX21NIu_gcMv7jHoR8gEny9BSVI/edit) (Internal only) and the project [Epic](https://gitlab.com/groups/gitlab-org/-/epics/10949 "GitLab self-managed upgrade improvements") for more details.

### Exit Criteria

The north star of this working group is increasing the number of self-managed GitLab instances running on maintained versions. However, given that metrics can be influenced by various factors, and some of them are beyond our control, specific exit criteria for each phase are outlined below:

<table>
<tr>
<th>Phase</th>
<th>Exit Criteria</th>
</tr>
<tr>
<td>Phase 1</td>
<td>

* Decrease number of self-managed emergency upgrade support tickets relating to database migration
* TBD
</td>
</tr>
<tr>
<td>Phase 2</td>
<td>

* TBD
</td>
</tr>
<tr>
<td>Phase X</td>
<td>

* TBD
</td>
</tr>
</table>

## Roles and Responsibilities

| Working Group Role | Person | Title |
|--------------------|--------|-------|
| Executive Stakeholder | [Sabrina Farmer](https://gitlab.com/sabrinafarmer) |  |
| Facilitator | [Peter Lu](https://gitlab.com/plu8) | Engineering Manager, Distribution::Deploy |
| Functional Lead - Product & Distribution | [Dilan Orrino](https://gitlab.com/dorrino) | Senior Product Manager Distribution |
| Functional Lead - Database | TBD |  |
| Functional Lead - Quality | [Kassandra Svoboda](https://gitlab.com/ksvoboda) | Engineering Manager, Test Platform |
| Functional Lead - Support | [Brie Carranza](https://gitlab.com/bcarranza) | Staff Support Engineer |
| Functional Lead - Backup | [Lucie Zhao](https://gitlab.com/luciezhao) | Engineering Manager, Geo |
| Functional Lead - Development | TBD |  |
| Member | [Mek Stittri](https://gitlab.com/meks) | VP, Technical Infrastructure |
| Member | [Chun Du](https://gitlab.com/cdu1) | Director, Core Platform |
| Member | [Joshua Lambert](https://gitlab.com/joshlambert) | Director, Product Management |
| Member | [Vincy Wilson](https://gitlab.com/vincywilson) | Director, Quality Engineering |
| Member | [Lyle Kozloff](https://gitlab.com/lyle) | Director, Support Engineering |
| Member | [Stan Hu](https://gitlab.com/stanhu) | Engineering Fellow |
