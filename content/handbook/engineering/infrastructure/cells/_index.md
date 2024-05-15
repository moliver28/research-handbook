---
title: "Cells"

description: "This is the handbook page for the Cells project. Cells is one of the top priorities for FY2025, with the goal of providing additional scalability for GitLab.com. This handbook page contains the project information such as the project plan, roadmap, workstreams, DRIs, stakeholders, and communication channels. It also has links to important documentation such as the Cells design blueprints."
---

## Intro

Cells is a new architecture for our software as a service platform. This architecture is horizontally scalable, resilient, and provides a more consistent user experience. It may also provide additional features in the future, such as data residency control (regions) and federated features.

For more information about the goals of Cells, see [goals](https://docs.gitlab.com/ee/architecture/blueprints/cells/goals.html).

## Requirements and Architecture

Cells overall architecture [blueprint](https://docs.gitlab.com/ee/architecture/blueprints/cells/).

## Roadmap, Workstreams, and DRIs

### Roadmap

<table>
<tr>
<td>
 
[Cells 1.0](https://docs.gitlab.com/ee/architecture/blueprints/cells/iterations/cells-1.0.html)
</td>
<td>
 
[Cells 1.5](https://docs.gitlab.com/ee/architecture/blueprints/cells/iterations/cells-1.5.html)
</td>
<td>
 
[Cells 2.0](https://docs.gitlab.com/ee/architecture/blueprints/cells/iterations/cells-2.0.html)
</td>
</tr>
<tr>
<td>
 
- For internal customers only
- Organizations are private
- Users cannot interact with other Organizations (including GitLab Org)
- Groups and projects are private in the Organization
- For more details, see [Organizations on Cells 1.0](https://docs.gitlab.com/ee/architecture/blueprints/organization/index.html#organizations-on-cells-10)
</td>
<td>
 
- For existing/new customers of GitLab.com
- Organizations are private
- Existing users can interact with private Organizations on Secondary Cells
- Groups and projects are private in the Organization
- For more details, see [Organizations on Cells 1.5](https://docs.gitlab.com/ee/architecture/blueprints/organization/index.html#organizations-on-cells-15)
</td>
<td>
 
- Organizations are public or private
- Users can interact with other Organizations
- Groups and projects are private or public in the Organization
- For more details, see [Organizations on Cells 2.0](https://docs.gitlab.com/ee/architecture/blueprints/organization/index.html#organizations-on-cells-20)
</td>
</tr>
</table>

### DRIs and Stakeholders

<table>
<tr>
<td>

</td>
<td>Role</td>
<td>Responsibility</td>
</tr>
<tr>
<td>

[Sabrina Farmer](https://gitlab.com/sabrinafarmer)

</td>
<td>Executive Sponsor</td>
<td>

</td>
</tr>
<tr>
<td>

[Marin Jankovski](https://gitlab.com/marin)

</td>
<td>Senior Director of Engineering</td>
<td>

</td>
</tr>
<tr>
<td>

[Ethan Guo](https://gitlab.com/yanguo1)

</td>
<td>Director, Infra Technical Program Management</td>
<td>

1. Develop project plan and drive schedule
2. Inter-team connection, collaboration and communication
3. Project management
</td>
</tr>
<tr>
<td>

[Chun Du](https://gitlab.com/cdu1)

</td>
<td>Director of Engineering</td>
<td>

1. Liaison between project team and cross-functional engineering leaders
2. Coordinating temporary staffing arrangements within the Data Stores stage
</td>
</tr>
<tr>
<td>

[Nick Nguyen](https://gitlab.com/nhxnguyen)

</td>
<td>Senior Engineering Manager</td>
<td>

1. Coordinating staffing and unblocking groups in Data Stores
2. Drive cross-functional efforts in engineering
3. Report on Data Stores progress and mitigate risks
</td>
</tr>
<tr>
<td>

[Arturo Herrero](https://gitlab.com/arturoherrero)

</td>
<td>Tenant Scale Engineering Manager</td>
<td>

1. Status updates of Tenant Scale workstreams
2. Mitigate risks
3. Collaborate with Tenant Scale Product Manager on Organizations and Cells projects
</td>
</tr>
<tr>
<td>

[Joshua Lambert](https://gitlab.com/joshlambert)

</td>
<td>Director of Product Management </td>
<td>

1. Investment and staffing of Core Platform teams
2. Liaison between project team and cross functional product managers and product leaders
3. Escalation of product priorities competing with Cells
4. Decision maker for supported and un-supported features for each iteration of Cells
</td>
</tr>
<tr>
<td>

[Christina Lohr](https://gitlab.com/lohrc)

</td>
<td>Tenant Scale Product Manager</td>
<td>

1. Product definition, requirements, roadmap for Organization workstream within Tenant Scale
2. Product definition, requirements, roadmap for Cells workstreams within Tenant Scale
3. Point of contact to collaborate with product managers from other teams
4. Investment and staffing of Tenant Scale
</td>
</tr>

</table>

### Workstreams

<table>
<tr>
<td>
 
**Work stream**
</td>
<td>
 
**Engineering DRI**
</td>

<td>
 
**PM DRI**
</td>
 
<td>
 
**TPM DRI**
</td>
</tr>

<tr>
<td>Application’s Cell readiness</td>
<td>
 
[Kamil Trzciński](https://gitlab.com/ayufan)
</td>
<td>
 
[Josh Lambert](https://gitlab.com/joshlambert)
</td>
<td>
 
[Ethan Guo](https://gitlab.com/yanguo1)
</td>
</tr>

<tr>
<td>Architecture</td>
<td>
 
[Kamil Trzciński](https://gitlab.com/ayufan)
</td>
<td>
 
[Josh Lambert](https://gitlab.com/joshlambert)
</td>
<td>
 
[Ethan Guo](https://gitlab.com/yanguo1)
</td>
</tr>

<tr>
<td>Cells Services  (includes Router and Topology services)</td>
<td>
 
[Thong Kuah](https://gitlab.com/tkuah)
</td>
<td>
 
[Christina Lohr](https://gitlab.com/lohrc)
</td>
<td>
 
[Ethan Guo](https://gitlab.com/yanguo1)
</td>
</tr>
<tr>

<td>Cell lifecycle automation and management</td>
<td>
 
[Steve Xuereb](https://gitlab.com/sxuereb)
</td>
<td>
 
[Christina Lohr](https://gitlab.com/lohrc)
</td>
<td>
 
[Ethan Guo](https://gitlab.com/yanguo1)
</td>
</tr>

<tr>
 
<td>Observability</td>
<td>
 
[Rachel Nienaber](https://gitlab.com/rnienaber)
</td>
<td>
 
[Christina Lohr](https://gitlab.com/lohrc)
</td>
<td>
 
[Ethan Guo](https://gitlab.com/yanguo1)
</td>
</tr>

<tr>
<td>Application Deployment</td>
<td>
 
[Dave Smith](https://gitlab.com/dawsmith)
</td>
<td>
 
[Sam Wiskow](https://gitlab.com/swiskow)
</td>
<td>
 
[Ethan Guo](https://gitlab.com/yanguo1)
</td>
</tr>

<tr>
<td>Production readiness</td>
<td>
 
[Chun Du](https://gitlab.com/cdu1)
</td>
<td>
 
[Josh Lambert](https://gitlab.com/joshlambert)
</td>
<td>
 
[Ethan Guo](https://gitlab.com/yanguo1)
</td>
</tr>
<tr>

<td>Operations</td>
<td>
 
[Rick Mar](https://gitlab.com/rmar1)
</td>
<td>
 
[Josh Lambert](https://gitlab.com/joshlambert)
</td>
<td>
 
[Ethan Guo](https://gitlab.com/yanguo1)
</td>
</tr>

<tr>
<td>Performance validation of Cells</td>
<td>
 
[Andy Hohenner](https://gitlab.com/AndyWH)
</td>
<td>
 
[Christina Lohr](https://gitlab.com/lohrc)
</td>
<td>
 
[Ethan Guo](https://gitlab.com/yanguo1)
</td>
</tr>
</table>

## Program Planning and Tracking

All Cells 1.0 work is tracked under the [Cells 1.0 Epic](https://gitlab.com/groups/gitlab-org/-/epics/12383). We also have a planning [spreadsheet](https://docs.google.com/spreadsheets/d/1n1h99JKDuNJbfv46rFniCGg0Z0Mgm1QA8OyuSGxosFo/edit#gid=0) that provides a high level program structure and timelines (for planning purpose only).

### Reference links

- [Cells 1.0 Epic](https://gitlab.com/groups/gitlab-org/-/epics/12383)
- [Cells 1.0 Status Dashboard](https://epic-dashboard-gitlab-org-tenant-scale-group-4aecf10d1d02154641.gitlab.io/epic_12383)
- [Sharding Key migration work for Cells](https://cells-progress-tracker-gitlab-org-tenant-scale-g-f4ad96bf01d25f.gitlab.io/sharding_keys)
- [Database schema migration](https://gitlab-org.gitlab.io/tenant-scale-group/cells-progress-tracker/schema_migration)

### Cells 1.0 Milestones

1. First Production Cell - Experimental
   - label: [cells-1.0-milestone::Experiment](https://gitlab.com/groups/gitlab-org/-/issues/?sort=created_date&state=opened&label_name%5B%5D=cells-1.0-milestone%3A%3Aexperiment&first_page_size=20)
   - Production system with no production customer data. We have an environment that covers testing needs of Test Platform and Development teams.
   - Entering criteria: A cell is brought up so that development teams and Infra teams have an environment to test their changes, Test platform team has a place to run different kind of tests, including E2E, automation test and etc.
   - Exit criteria: All the [planned application features](https://docs.gitlab.com/ee/architecture/blueprints/cells/iterations/cells-1.0.html#features-on-gitlabcom-that-are-not-supported-on-cells) are supported, a Cell is provisioned using the cells lifecycle automation tools, and we run our existing E2E tests on Cells as part of our deployment pipeline
1. First Production Cell - Production Ready
   - label: [cells-1.0-milestone::GA](https://gitlab.com/groups/gitlab-org/-/issues/?sort=created_date&state=opened&label_name%5B%5D=cells-1.0-milestone%3A%3Aga&first_page_size=20)
   - We have a production instance that is ready for internal or external customer's production use
   - Entering Criteria: Exit criteria of Experiment

### Cells 1.0 Timeline

- 2024-11-30: Experimental
- 2025-01-31: Production Ready

#### Cells 1.0 Development Phases

The listed phases will be applied for both Staging then at a later stage to Production, if not stated otherwise. We use the `cells-1.0-milestone::Phase x` labels to categorize issues by phase.

1. [Phase 1](https://gitlab.com/gitlab-org/gitlab/-/issues/?label_name%5B%5D=cells-1.0-milestone%3A%3APhase%201): Deploy router as a pass-through proxy for GitLab.com
1. [Phase 2](https://gitlab.com/gitlab-org/gitlab/-/issues/?label_name%5B%5D=cells-1.0-milestone%3A%3APhase%202): Deploy router as a pass-through proxy for registry.GitLab.com
   - Registry behind the WAF
   - Pass through proxy to Cell 1
1. [Phase 3](https://gitlab.com/gitlab-org/gitlab/-/issues/?label_name%5B%5D=cells-1.0-milestone%3A%3APhase%203): Routing via classification
   - Topology Service deployed with classification with Runway
   - mTLS between the router and topology service
1. [Phase 4](https://gitlab.com/gitlab-org/gitlab/-/issues/?label_name%5B%5D=cells-1.0-milestone%3A%3APhase%204): Complete Cells Services
   1. Phase 4a: Add Claim Service
   1. Phase 4b: Enable Claim Service on Cell 1
   1. Phase 4c: Backfill of Claims
1. [Phase 5](https://gitlab.com/gitlab-org/gitlab/-/issues/?label_name%5B%5D=cells-1.0-milestone%3A%3APhase%205): Register existing GitLab.com as a Cell with Topology Service
   1. Phase 5a: Legacy infrastructure becomes a cell
   1. Phase 5b: Database Sequencing Service - Sequence claiming is enabled on Cell 1 (legacy GitLab.com)
   1. Phase 5c: Backfill existing sequences
1. [Phase 6](https://gitlab.com/gitlab-org/gitlab/-/issues/?label_name%5B%5D=cells-1.0-milestone%3A%3APhase%206): Continuous deployment of Cell 2 (QA cell, no external customers)
   - Dedicated on GCP pre-GA
   - Enable organizations FF on Cell 2
   - No automation
   - No internal and external customers
   - Able to run QA E2E tests across cells
   - Hook up Fulfillment/License
   - Hook up data replication to Snowplow/Tableau
1. [Phase 7](https://gitlab.com/gitlab-org/gitlab/-/issues/?label_name%5B%5D=cells-1.0-milestone%3A%3APhase%207): Reconfigure Gitlab Shell to use Topology Service
1. [Phase 8](https://gitlab.com/gitlab-org/gitlab/-/issues/?label_name%5B%5D=cells-1.0-milestone%3A%3APhase%208): Production readiness
1. [Phase 9](https://gitlab.com/gitlab-org/gitlab/-/issues/?label_name%5B%5D=cells-1.0-milestone%3A%3APhase%209): Cell 3
   - Internal customers only
1. [Phase 10](https://gitlab.com/gitlab-org/gitlab/-/issues/?label_name%5B%5D=cells-1.0-milestone%3A%3APhase%210): Create an organization for a GitLab internal customer, for example Finance
   - Enable organization FF on Cell 3
   - Move the internal customer to Cell 3 with Direct Transfer

### Work Estimation

We use t-shirt sizing to estimate the time and effort needed to deliver issues/epics. Sizes are not meant to be viewed as precise estimations or timeline commitments. Rather, these sizes help us identify risk areas and opportunities for cutting scope. Sizes map to the following definitions:

| Size   | Time       |
| ------ | ---------- |
| Tiny   | 1-2 weeks  |
| Small  | 1 month    |
| Medium | 3 months   |
| Large  | 6 months   |
| XXL    | > 6 months |

## Communication

### Slack Channels

- [#f_cells_and_organizations (internal only)](https://gitlab.enterprise.slack.com/archives/C0609EXHX6F): Regular communication
- [#cto (internal only)](https://gitlab.enterprise.slack.com/archives/C9X79MNJ3): Weekly program status update

### Meetings

- Fortnightly Cells X-Functional Sync ([Meeting notes (internal only)](https://docs.google.com/document/d/1i6B_JcSJoN6OWgOazVdwqkYnn4h-a28P2ddWAUIHQdU/edit#heading=h.37jadhgzdghi))

### Status updates

- Weekly “Cells & Organizations Status Update - [yyyy-mm-dd]” issues in this [project](https://gitlab.com/gitlab-org/core-platform-section/status-update/-/issues/?sort=created_date&state=all&label_name%5B%5D=cells-organizations-status)
- Weekly status updates in Slack [#cto channel (internal only)](https://gitlab.enterprise.slack.com/archives/C9X79MNJ3) channel

## Additional Information

### Cells Fast Boot 2024

We held a Cells Fast Boot in Dublin, Ireland, between 2024-04-23 and 2024-04-24. Below are the artifacts from the event.

#### Agenda, Slides, and Videos

Please use the `Unfiltered` Google account to watch video recordings.

1. [Main agenda (internal only)](https://docs.google.com/document/d/1m5w8sVG5kCvZF0mg7h7HnKzVGREhTuH6e1FRhRlMjns/edit?usp=sharing)
1. Introductions, overview, and logistics: [Agenda (internal only)](https://docs.google.com/document/d/18gqKRORUE8BRULkqfBAv3FZk4yPpRw6BoqmGNUwKm50/edit?usp=sharing)
1. Cells Services - Global Service: [Agenda (internal only)](https://docs.google.com/document/d/1fTeiS6ksvhxJggui_DnCZ9tl5xIN23IZGrqgiqzB5JU/edit?usp=sharing), [Slides (internal only)](https://docs.google.com/presentation/d/12NlfOwolRf10DSLszQi9NjxFy0UUKc2XVC2kYW0HFGk), [Video (internal only)](https://www.youtube.com/watch?v=cNKsNda9Bkc)
1. Cells Services - Routing: [Agenda (internal only)](https://docs.google.com/document/d/1Z3fhilM5wYhLBhghqXeJJCLaO57YeTVdJROrTSgTuDg/edit?usp=sharing), [Slides (internal only)](https://docs.google.com/presentation/d/1wad5IOoXIPkLlVeJdzWnzGmpN_CvwRQi9cMesWj-kz0/edit?usp=sharing), [Video (internal only)](https://www.youtube.com/watch?v=1TgbM-qlQOM)
1. Application Readiness - Organizations and Users: [Agenda (internal only)](https://docs.google.com/document/d/18TH2FraEp2ISSlNOl4asBd3GYQv_homXl4jsLebveJ0/edit?usp=sharing)
1. Application Readiness - Dependencies and OKR alignments: [Agenda (internal only)](https://docs.google.com/document/d/1ySJDT2WQCsndCQikDFAN3VMDadvJwLg000qAI-u3M0I/edit?usp=sharing)
1. Deployment: [Agenda (internal only)](https://docs.google.com/document/d/1Pb280b90MkMNl7TU3i09hGZWAbBZmTUFATRoVFvssiE/edit?usp=sharing), [Slides (internal only)](https://docs.google.com/presentation/d/1rYQup9yc0UEBBrxPkVTDJ9ihzgtiLjmuGYOjZ68TZGs/edit?usp=sharing), [Video (internal only)](https://www.youtube.com/watch?v=Pf5BOMJ0A-0)
1. Provisioning: [Agenda (internal only)](https://docs.google.com/document/d/1Pb280b90MkMNl7TU3i09hGZWAbBZmTUFATRoVFvssiE/edit?usp=sharing)
1. Observability and Runners: [Agenda (internal only)](https://docs.google.com/document/d/1Pg7CKao-StGEbJQ-BEeF6x9xp-Ttux-NeiuvGmBstrQ/edit?usp=sharing)
1. Security: [Agenda (internal only)](https://docs.google.com/document/d/18a_q-g-l5RoUjwsMBp6rRHdvRT4wvD1_iBtwej8m4-M/edit?usp=sharing), [Slides (internal only)](https://docs.google.com/presentation/d/1ImP9KxwmMoZxUjYdoIz3pdPCbyUSTdhdn7JjWLK1tPE/edit?usp=drive_link), [Video (internal only)](https://drive.google.com/file/d/1qTQJZ3gEKTzEzhzb9yUygsqoy8WnQgM3/view?usp=drive_link)
1. Disaster Recovery: [Agenda (internal only)](https://docs.google.com/document/d/1eYFJAF3X_5kIgkBR-j3W_Ug3IMSK85vozCyrzF5gCao/edit?usp=sharing), [Slides (internal only)](https://docs.google.com/presentation/d/1JhWo_e6w_HYYwYCd2yN5vttntMS57aIDhPADEQD1aCw/edit?usp=sharing), [Video (internal only)](https://youtu.be/uDLDpwLYY3M)
1. Cells Mover and Isolation: [Agenda (internal only)](https://docs.google.com/document/d/1ySJDT2WQCsndCQikDFAN3VMDadvJwLg000qAI-u3M0I/edit?usp=sharing)
1. Scalability Headroom and Timeline: [Agenda (internal only)](https://docs.google.com/document/d/1XawTKX_MPM89Oyl_u3-9X1-A8QsOsZRlg8LB6ormP_8/edit?usp=sharing)

#### Decisions

1. No external customers on Cells 1.0, internal dogfooding only. Cells 1.x is the target to onboard new or existing external customers.

#### Artifacts

1. Day 1 recording: [Part 1 (internal only)](https://youtu.be/Y5mOBWqGCTQ), [Part 2 (internal only)](https://youtu.be/JtGoKK9NonE)
1. [Day 2 recording (internal only)](https://youtu.be/MM4Py3Ldnlg)
1. [Database breakout recording (internal only)](https://drive.google.com/drive/folders/13ZrWpPad_jg5ua7ocZvJ0b-XeWIp4uUy?usp=drive_link)
1. [Organizations breakout recording (internal only)](https://youtu.be/KqF1UARbMHA)
