---
title: "Test and Tools Infrastructure Team"
description: "Test and Tools Infrastructure Team in Test Platform sub-department"
---

## Common Links

| **Category**            | **Handle** |
|-------------------------|-------------|
| **GitLab Team Handle**  | [`@gl-quality/tp-test-tools-infrastructure`](https://gitlab.com/gl-quality/tp-test-tools-infrastructure) |
| **Slack Channel**               | [`#test-tools-infrastructure-team`](https://gitlab.slack.com/archives/C064M4D2V37) |
| **Slack Handle**               | `@test-tools-infrastructure` |
| **Team Boards**         | [`Milestone Planning Board`](https://gitlab.com/groups/gitlab-org/-/boards/7369197?not%5Blabel_name%5D%5B%5D=tti::support-request&not%5Blabel_name%5D%5B%5D=failure::*&not%5Blabel_name%5D%5B%5D=type::maintenance&label_name%5B%5D=team::Test%20and%20Tools%20Infrastructure)  [`Support & Maintenance Board`](https://gitlab.com/groups/gitlab-org/-/boards/7369206?not%5Blabel_name%5D%5B%5D=type::feature&label_name%5B%5D=team::Test%20and%20Tools%20Infrastructure&label_name%5B%5D=type::*)  |
| **Issue Tracker**       | [`quality/team-tasks`](https://gitlab.com/gitlab-org/quality/team-tasks/issues/) |

## Vision

The Test & Tools Infrastructure team, under the [Test Platform sub-department](../_index.md) at GitLab, aspires to be a pioneering force in the innovation and maintenance of advanced testing frameworks and test infrastructure to support Gitlab's principle of [Quality is everyone's responsibility](https://about.gitlab.com/handbook/engineering/quality/#our-principles).

As an integral part of our vision, we aim to:
- Build a highly performant team of engineers, combining operational and software development experience to implement and support the best-in-class reliable testing processes & infrastructure.
- Work publicly in accordance with GitLab's [`transparency`](https://about.gitlab.com/handbook/values/#transparency) value.
- Leverage [`dogfooding`](https://about.gitlab.com/handbook/engineering/infrastructure/#dogfooding) to prepare, build, deliver test tooling that improves the product itself.
- Align our strategy with the industry trends, company direction, and customer needs.

## Mission

The key components of our mission are to:
- **Make testing simple** to enable easy contribution from everyone in the testing process, including test creation, execution, and debugging. This approach democratizes testing and fosters a culture of collective responsibility for quality.
- **Make testing efficient** to minimize time and resources while maximizing output, ensuring that testing is a facilitator, not a bottleneck, in the software development lifecycle.
- **Make testing reliable** to consistently deliver accurate and dependable results, ensuring trust in the test system & building confidence in every release.
- **Foster innovation** to explore, integrate, and build the latest technologies and methodologies in testing to keep GitLab at the forefront of software development innovation.

## Team members

{{< team-by-manager-slug "ghosh-abhinaba" >}}

## Core Responsibilities

```mermaid
graph LR
    A[Test & Tools Infrastructure Team]
    
    A --> B[Test Frameworks & Efficiency]
    B --> B1[Test Distribution Strategy<br>Optimizing testing across the testing pyramid]
    B --> B2[Test Framework Enhancements<br>Upgrading testing frameworks to meet evolving needs]

    A --> C[Test Reliability & Execution]
    C --> C1[Faster Test Feedback<br>Reducing continuous testing execution time]
    C --> C2[Reduce Test Flakiness<br>Tackling test instability to ensure predictable results]
    C --> C3[Reliable Test Environment<br>Collaborate with the Delivery team to support reliable test environment needs for realistic production simulation]

    A --> D[Test Innovation & Optimization]
    D --> D1[Generative & Predictive Test Analysis<br>Employing AI for enhanced testing accuracy]
    D --> D2[Cost Effective Test Operation<br>Optimizing test infrastructure utilization]
    D --> D3[Test Advocacy<br>Promoting best testing practices and process improvement]
```



## Current Roadmap and OKR 
Every quarter, the team reviews its Roadmap and [Objectives and Key Results (OKRs)](https://handbook.gitlab.com/company/okrs/). 
  - [FY25 Roadmap - Test and Tools Infrastructure](https://gitlab.com/gitlab-org/quality/quality-engineering/team-tasks/-/issues/2315)
  - [FY25 Q1 OKR - Test and Tools Infrastructure](https://gitlab.com/gitlab-org/quality/quality-engineering/team-tasks/-/issues/2317#note_1730107488)

## How we work

- We prioritize asynchronous communication and a handbook-first approach, in line with GitLab's all-remote, timezone-distributed structure.
- We emphasize the [Maker’s Schedule](http://www.paulgraham.com/makersschedule.html), focusing on productive, uninterrupted work.
- Most mandatory recurring meetings are scheduled on Tuesdays and Thursdays.
- We reserve approximately 3-4 hours per week of focus time for learning new technologies and conducting research work, ensuring our team stays abreast of industry trends and fosters innovation in our projects. This time is dedicated to exploring emerging tools, deep-diving into subjects relevant to our work, engaging in self-directed learning, and experimenting with new ideas or proof-of-concepts. Team members have their calendars marked with this dedicated learning time. Any new meeting requests during these hours should be communicated beforehand, respecting this essential personal and professional development period.
- All meeting agendas could be found in the [Team Shared Drive](https://drive.google.com/drive/folders/1uZg0J5hYsOUu3WMNR-PoAcmrhhmDxxoA?usp=drive_link) as well as in the meeting invite.

### Work related rituals

| Event                           | Cadence                              | Agenda                                                                                                                                                                                                                                        |
|---------------------------------|--------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Standup notes                   | Once a week (Tuesday)  | Share progress/blockers in `#test-tools-infrastructure-team` via Geekbot updates                                         (                                                                                                                      |
| End-of-Week progress update     | Once a week (Thursday) | Summarize status, progress, ETA, and areas needing support in the weekly update in each OKR issue. Examples: [FY25-Q1 Test Platform OKR 2.2](https://gitlab.com/gitlab-com/gitlab-OKRs/-/work_items/5916#note_1763638654), [FY25-Q1 TTI OKR 6](https://gitlab.com/gitlab-com/gitlab-OKRs/-/work_items/6079#note_1764535829)        |
| Team meetings and demos         | Bi-weekly on Tuesday <br> 2:30 pm UTC               | [Agenda](https://docs.google.com/document/d/1gtghZCYeg42cMbQ8mWnjBcsu4maMO4OFA0xcQ8MfRHE/edit?usp=sharing)|
| Monthly retrospective           | Monthly                              | Contribute to [retrospectives](https://gitlab.com/gl-retrospectives/quality)                                                                                                                                                               |
| Quarterly Business Report       | Quarterly                            | Contribute to [team's success, learnings, innovations and improvement opportunities for each business quarter](https://gitlab.com/groups/gitlab-org/quality/quality-engineering/-/epics/61)                                               |
| Social hours                    | Quarterly                            | [Virtual team building](/handbook/finance/expenses/#team-building)                                                                                                                                                                |
| 1:1 with Engineering Manager    | Weekly                               | Discuss development goals (see the [1:1 guidelines](/handbook/leadership/1-1/))                                                                                                                                                         |



### Project management

#### Feature work
  - Each financial year, we develop a clear roadmap for the team to enhance visibility and alignment.
  - Our roadmap preparation is an intensive month long exercise (usually last month of Q4), led by a [DRI](https://handbook.gitlab.com/handbook/people-group/directly-responsible-individuals/). During this phase, DRIs take the lead in drafting the roadmap using [the roadmap prep-work template](https://gitlab.com/gitlab-org/quality/work-log/-/blob/main/templates/roadmap-pre-work-template.md?ref_type=heads) for necessary project tracks. This involves gathering inputs from the team, various stakeholders, assessing past performance, and aligning with the strategic goals of the Test and Tools Infrastructure Team. 
  - We utilize and plan [OKRs](https://handbook.gitlab.com/handbook/company/okrs/) to prioritize the roadmap items. 
  - Adhering to our team's [bi-weekly ritual](#work-related-rituals), we conduct reviews to assess progress, address challenges, and recalibrate goals if necessary.
  - We maintain a [Team Board](https://gitlab.com/groups/gitlab-org/-/boards/7369197?not%5Blabel_name%5D%5B%5D=tti%3A%3Asupport-request&not%5Blabel_name%5D%5B%5D=failure%3A%3A*&label_name%5B%5D=team%3A%3ATest%20and%20Tools%20Infrastructure) to visualise the current state of the feature work. 

#### Working with us
We estimate ~20% of weekly time for support tasks, and balancing our roadmap work with emerging support needs. Please note this estimate varies depending upon ongoing priorities. 
  - For individual questions please reach out to the team via our slack channels: `#test-platform`, `#test-tools-infrastructure-team`.
  - Raise support requests as [issues in the team-tasks project](https://gitlab.com/gitlab-org/quality/quality-engineering/team-tasks/-/issues). Add `~"team::Test and Tools Infrastructure"` and `~"tti::support-request"` labels in the issues to track them in the [team's support request board](https://gitlab.com/groups/gitlab-org/-/boards/7369206?label_name%5B%5D=team%3A%3ATest%20and%20Tools%20Infrastructure&label_name%5B%5D=tti%3A%3Asupport-request). 
  - Ensure each issue is tagged with one of `~"type::feature"`, `~"type::bug`, `~"type::maintenance` following [workflow classification guidelines](handbook/engineering/metrics/#work-type-classification).
  - Team members analyze the issue and add a priority based on the [Reliability Department's prioritization framework](https://handbook.gitlab.com/handbook/engineering/infrastructure/team/reliability/issues/#priority). P1 issues will be taken up on an urgent basis the same week based on the availability of the relevant team members. Lower-priority issues are scheduled for review and discussion in our next bi-weekly meeting for capacity planning.
  - The issues should be following the [workflow label guidelines](../project-management/index.md#workflow-labels).

### Borrow requests

Depending on the business needs, skillsets, timelines, and workload on SETs in other teams, members of the Test Tools and Infrastructure team could be requested to assist in other areas. In such case, the following process should be adhered to:

1. Initiate a [borrow request issue](https://gitlab.com/gitlab-com/Product/-/issues/new?issuable_template=Borrow-Request-Lite) with the `~SET Borrow` label.
2. Submit requests at least two weeks in advance for adequate preparation and resource planning.
3. The leadership team of the Test Platform will triage and determine the appropriate team for each request. Once decided, they will signify this by adding a specific team label to the request. For Test and Tools Infrastructure team, the team label is ~"team::Test and Tools Infrastructure". 
4. Borrow requests are prioritized based on urgency and the potential impact on product development.

### On-call activities

Test and Tools Infrastructure team follows the Test Platform on-call rotations: pipeline triage (SET-led) and incident management (QEM-led). These are scheduled in advance to share the responsibilities of debugging pipeline failures and representing Quality in incident responses.
For more information, please visit our [on-call rotation page](oncall-rotation).

## Tooling
The team currently works cross-functionally, and our task ownership spans multiple tools and projects. 

| Tool | Description |
|------|-------------|
| [`gitlab/qa`](https://gitlab.com/gitlab-org/gitlab/-/tree/master/qa) | GitLab's Capybara-based end-to-end (E2E) testing framework |
| [`gitlab-qa orchestrator`](https://gitlab.com/gitlab-org/gitlab-qa) | An orchestration tool that enables running various end-to-end scenarios against any GitLab instance |
| [`GitLab Data Seeder`](https://docs.gitlab.com/ee/topics/data_seeder.html) | Data seeding harness that can seed customized data directly into a user or group namespace using low-level ORM calls |
| [`customers-dot/qa`](https://gitlab.com/gitlab-org/customers-gitlab-com/-/tree/main/qa) | E2E testing framework for The [CustomersDot App](https://customers.gitlab.com/) |
| [`quality-pipeline-common`](https://gitlab.com/gitlab-org/quality/pipeline-common) | Reusable pipeline configurations for multiple testing projects within GitLab |
| [`dri`](https://gitlab.com/gitlab-org/quality/dri) | Tool that assists Pipeline Triage engineers to triage and report GitLab's E2E pipeline test failures |
| [`chemlab`](https://gitlab.com/gitlab-org/ruby/gems/chemlab) | A Watir wrapper, a design scaffold and a CLI designed to join the existing testing practices at GitLab from two separate frameworks, the GitLab Capybara Framework, and the CustomersDot Watir framework into one |
| [`gitlab_quality-test_tooling`](https://gitlab.com/gitlab-org/ruby/gems/gitlab_quality-test_tooling) | A Ruby gem for test-related GitLab automation/reporting |
| [`quality/toolbox`](https://gitlab.com/gitlab-org/quality/toolbox) | A collection of scripts for pipeline automation and analysis. Co-owned by the Engineering Productivity team |
| [`gitlab-qa-resources`](https://gitlab.com/gitlab-org/quality/engineering-productivity-infrastructure) | Collection of terraform resources for Test Platform related infrastructure management. Co-owned by the Engineering Productivity team |
| [`gitlab-junior-toy-app`](https://gitlab.com/gitlab-org/quality/technical-interviews/gitlab-junior-toy-app) | A toy app used for technical interviews while recruiting for the Software Engineer in Test (SET) position. Internal to the Test Platform sub department |

## Performance Indicators
TBD
