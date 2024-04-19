---
title: Engineering
---

## FY24 Direction

GitLab has a [Three-Year Strategy](/handbook/company/strategy/), and we're excited to see every member of the Engineering division contribute to achieving it. Whether you're creating something new or improving something that already exists, we want you to feel empowered to bring your best ideas for influencing the product direction through improved scalability, usability, resilience, and system architectures. And when you feel like you need to expand your knowledge in a particular area, know that you're supported in having the resources to learn and improve your skills.

Our focus on FY24 is to make sure that GitLab is enterprise grade in all its abilities and to support the AI efforts required to successfully launch Code Suggestions and GitLab Duo to General Availability.

Making sure that GitLab is enterprise grade involves several teams collaborating on improving our disaster recovery and support offerings through ongoing work with GitLab Dedicated, and Cells infrastructure.  Our goal here is improved availability and service recovery.

## Engineering Culture

Engineering culture at GitLab encompasses the processes, workflows, principles
and priorities that all stem from our [GitLab Values](/handbook/company/culture/all-remote/values).
All these things continuously strengthen our engineering craftsmanship and
allow engineers to achieve engineering excellence, while growing and having a
significant, positive impact on the product, people and the company as a whole.
Our engineering culture is primarily being carried, and evolves, through
knowledge sharing and collaboration. Everyone can be part of this process
because at GitLab everyone can contribute.

### Engineering Excellence

Engineering excellence can be defined as an intrinsic motivation to improve
engineering efficiency, software quality, and deliver better results while
building software products. Engineering excellence is being fueled by a strong
engineering culture combined with a mission: to build better software that
allows everyone to contribute.

## Engineering Initiatives

Engineering is the primary advocate for the performance, availability, and security of the GitLab project. Product Management prioritizes 60% of engineering time, so everyone in the engineering function should participate in the Product Management [prioritization process](/handbook/product/product-processes/#how-we-prioritize-work) to ensure that our project stays ahead in these areas. Engineering prioritizes 40% of time on initiatives that improve the product, underlying platform and foundational technologies we use.

Work in the 40% time budget should be coordinated and prioritized by the engineering manager of a team. Use the label "Engineering Time" for issues and MRs that are done as part of it so we can follow the work and the results across the engineering division.

- Work on engineering wide initiatives, working group related work
- Review fixes from our support team. These merge requests are tagged with the `Support Team Contributions` label.  You can [filter on open MRs](https://gitlab.com/gitlab-org/gitlab/-/merge_requests?label_name%5B%5D=Support%20Team%20Contributions).
- Working on high priority issues as a result of [issue triaging](/handbook/engineering/infrastructure/engineering-productivity/issue-triage/). This is our commitment to the community and we need to include some capacity to review MRs or work on defects raised by the community.
- Improvements to the performance, stability and scalability of a feature.  Again, the Product team should be involved in the definition of these issues but Engineering may lead here by clearly defining the recommended improvements.
- Improvements and upgrades to our toolchain in order to boost efficiency.
- Codebase improvements: Tech Debt removal, Updating or replacing dependencies, improvements to logging, monitoring
- Building POCs for better exploration of new technologies, improvements and potentially new features

### Community Contributions

We have a 3-year goal of [reaching 1,000 monthly contributors](/handbook/company/strategy/#2-build-on-our-open-core-strength) as a way to mature new stages, add customer-desired features that aren’t on our roadmap, and even translate our product into multiple languages.

### Diversity

[Diverse teams perform better.](https://www.cio.com/article/189194/5-ways-diversity-and-inclusion-help-teams-perform-better.html#:~:text=With%20diversity%20comes%20multiple%20perspectives,better%20decisions%20based%20on%20facts.) They provide a sense of belonging that leads to higher levels of trust, better decision making, and a larger talent pool. [They also focus more on facts, process facts more carefully, and are more innovative.](https://hbr.org/2016/11/why-diverse-teams-are-smarter) By hiring globally and increasing the numbers of women and ethnic minorities in the Engineering division, we’re helping everyone bring their best selves to work.

### Growing our team

Hiring is still a top priority in FY24, and we're excited to continue hiring people who are passionate about our product and have the skills to make it the best DevSecOps tool in the market. Our current focus areas include reducing the amount of time between offer and start dates and hiring a diverse team (see above). We're also implementing industry-standard approaches like structured, behavioral, and situational interviewing to help ensure a consistent interview process that helps to identify the best candidate for every role. We’re excited to have a recruiting org to partner with as we balance the time that managers spend recruiting against the time they spend investing in their current team members.

### Expand customer focus through depth, and stability

As expected, a large part of our focus in FY24 is on improving our product.

For **Enterprise customers**, we’re refining our product to meet the levels of security and reliability that customers rightfully demand from SaaS platforms _(SaaS Reliability)_. We’re also providing more robust utilization metrics to help them discover features relevant to their own DevOps transformations _(Usage Reporting)_ and offering the ability to purchase and manage licenses without spending time contacting Sales or Support _(E-Commerce and Cloud Licensing)_. Lastly, in response to Enterprise customer requests, we're adding features to support Suggested Reviewers, better portfolio management through Work Items, and Audit Events that provide additional visibility into user passive actions.

For **Free Users**, we’re becoming more efficient with our open core offering, so that we can continue to support and give back to students, startups, educational institutions, open source projects, GitLab contributors, and nonprofits

For **Federal Agencies**, we’re obtaining FedRAMP certification to strengthen confidence in the security standards required on our SaaS offering. This is a mandated prerequisite for United States federal agencies to use our product.

For **Hosted Customers**, we're supporting feature parity between Self-Managed and GitLab Hosted environments through the Workspace initiative. We're also launching GitLab Dedicated for customers who want the flexibility of cloud with the security and performance of a single-tenant environment.

For customers using **CI/CD**, we're expanding the available types of Runners to include macOS, Linux/Docker, and Windows, and we're autoscaling build agents.

## Engineering Departments

There are four departments within the Engineering Division:

- [Core Development Department](/handbook/engineering/core-development/)
- [Expansion Development Department](/handbook/engineering/expansion-development/)
- [Infrastructure & Quality Department](/handbook/engineering/infrastructure-quality/)
- [Support Engineering Department](/handbook/support/)

## Other Related Pages

- [CTO Staff](/handbook/engineering/cto-staff/)
- [Communication](/handbook/engineering/communication/)
- [Database Engineering](/handbook/engineering/development/database/)
- [Development Principles](/handbook/engineering/development/principles/)
- [Engineering Automation](/handbook/engineering/automation/)
- [Engineering Metrics](/handbook/engineering/metrics/)
- [Engineering OKRs](/handbook/engineering/okrs/)
- [Engineering READMEs](/handbook/engineering/readmes/)
- [Frequently Used Projects](/handbook/engineering/projects/)
- [GitLab Innovation Program](/handbook/legal/patent-program/), managed by the GitLab Legal Team
- [Hiring](/handbook/engineering/hiring/)
- [Mentorship](/handbook/engineering/mentorship/)
- [Pajamas Design System](/handbook/product/ux/pajamas-design-system/)
- [R&D Tax Credit Applications](/handbook/engineering/tax-credits)

### Workflows

- [Developer onboarding](/handbook/developer-onboarding/)
- [Engineering Demo Process](/handbook/engineering/demos/)
- [Engineering Workflow](/handbook/engineering/workflow/)
    - [Code Review](/handbook/engineering/workflow/code-review/)
    - [Security Issues](/handbook/engineering/workflow/#security-issues)
    - [Architecture Design](/handbook/engineering/architecture/workflow/)
- [GitLab Repositories](/handbook/engineering/gitlab-repositories/)
- [Issue Triage Policies](/handbook/engineering/infrastructure/engineering-productivity/issue-triage/)
- [Contributing to Go projects](https://docs.gitlab.com/ee/development/go_guide/index.html)
- [Wider Community Merge Request Triage Policies](/handbook/engineering/infrastructure/engineering-productivity/merge-request-triage/)
- [Root Cause Analysis](/handbook/engineering/root-cause-analysis/)
- [Critical Security Releases](https://gitlab.com/gitlab-org/release/docs/blob/master/general/security/process.md#critical-security-releases)
- [Incident Management](/handbook/engineering/infrastructure/incident-management/)

### GitLab in Production

- [Workflow Diagram](/handbook/engineering/workflow/related-workflows.html)
- [Error Budgets](/handbook/engineering/error-budgets/)
- [Performance of GitLab](/handbook/engineering/performance/)
- [Monitoring of GitLab.com](/handbook/engineering/monitoring/)
- [Production Readiness Guide](https://gitlab.com/gitlab-com/infrastructure/blob/master/.gitlab/issue_templates/production_readiness.md)

### People Management

- [Engineering Compensation Roadmaps](/handbook/engineering/compensation-roadmaps/)
- [Engineering Career Development](/handbook/engineering/careers/)
- [Engineering Career Mobility Principles](/handbook/engineering/careers/#mobility-principles)
- [Engineering Internship](/handbook/engineering/internships/)
- [Engineering Secondments](/handbook/engineering/secondments/)
- [Engineering Management](/handbook/engineering/management/)
- [Volunteer Coaching program for URGs](/handbook/engineering/volunteer-coaches-for-urgs/)
- [Starting New Teams](/handbook/engineering/starting-new-teams/)

### Cross-Functional Prioritization

See the [Cross-Functional Prioritization page](/handbook/engineering/cross-functional-prioritization) for more information.

### SaaS Availability Weekly Standup

To maintain high availability, Engineering runs a weekly SaaS Availability standup to:

- Review high severity (S1/S2) public facing incidents
- Review important SaaS metrics
- Track progress of Corrective Actions
- Track progress of Feature Change Locks

#### Infrastructure Items

Each week the Infrastructure team reports on incidents and key metrics. Updating these items at the top of the
[Engineering Allocation Meeting Agenda](https://docs.google.com/document/d/1Zk3qgbn8iDyJRq0i5C5LPBgEopY6o1tpYEKfdNfA9Bg/edit#heading=h.5t67v3au7sd4)
is the responsibility of the Engineering Manager for the [General Squad](/handbook/engineering/infrastructure/team/reliability/#general-squad) in Reliability.

1. Incident Review
   - Include any [S1 incidents](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/?sort=created_date&state=all&label_name%5B%5D=incident&label_name%5B%5D=severity%3A%3A1&first_page_size=100) that have occurred since the previous meeting.
   - Include any incidents that required a [status page](https://status.gitlab.com/) update.
1. SaaS Metrics Review
   1. Include screenshots of the following graphs in the [agenda](https://docs.google.com/document/d/164hNObllaLWosG110-A0UouYlcaqOxbPpHATFD38_Gw/edit#heading=h.59wtcja0o8t7).
     - [Alert Volume Review](https://nonprod-log.gitlab.net/app/dashboards#/view/cca06cf0-cd56-11ec-b3a6-472d0398dd6e?_g=(filters:!(('$state':(store:globalState),meta:(alias:!n,disabled:!f,index:b35d9ca0-6c67-11eb-968b-c18082d502f4,key:type,negate:!f,params:(query:pagerduty),type:phrase),query:(match_phrase:(type:pagerduty))),('$state':(store:globalState),meta:(alias:!n,disabled:!f,index:b35d9ca0-6c67-11eb-968b-c18082d502f4,key:status,negate:!f,params:(query:acknowledged),type:phrase),query:(match_phrase:(status:acknowledged)))),refreshInterval:(pause:!t,value:0),time:(from:now-2M,to:now-1h)))
     - [Corrective Actions](https://10az.online.tableau.com/t/gitlab/views/DraftInfrastructureEmbeddedDashboard/CAOverviewDashboard)

#### Development Items

For the core and expansion development departments, updates on current status of:

1. Error budgets
1. Reliability issues (infradev)
1. Security issues

Groups under Feature Change Locks should update progress synchronously or asynchronously in the weekly agenda.
The intention of this meeting is to communicate progress and to evaluate and prioritise escalations from infrastructure.

Feature Change Locks progress reports should appear in the following format in the weekly agenda:

FCL xxxx - [team name]

- FCL planning issue: `<issue link>`
- Incident Issue: `<issue link>`
- Incident Review Issue: `<issue link>`
- Incident Timeline: `<link to Timeline tab of the Incident issue>`
   - e.g. time to detection, time to initiate/complete rollback (as applicable), time to mitigation
- Cause of Incident
- Mitigation
- Status of Planned/completed work associated with FCL

{{% include "includes/feature-change-locks.md" %}}

## Engineering Performance Indicator process

The [Quality Department](/handbook/engineering/quality) is the DRI for Engineering Performance Indicators. Work regarding KPI / RPI is tracked on the [engineering metrics board and task process](/handbook/engineering/quality#engineering-metrics-task-process).

## Manual verification

We manually verify that our code works as expected.
Automated test coverage is essential,
but manual verification provides a higher level of confidence that features behave as intended and bugs are fixed.

We manually verify issues when they are in the `workflow::verification` state.
Generally, after you have manually verified something, you can close the associated issue.
See the [Product Development Flow](../product-development-flow/) to learn more about this issue state.

We manually verify in the staging environment whenever possible.
In certain cases we may need to manually verify in the production environment.

If you need to test features that are built for GitLab Ultimate then you can get added to the [issue-reproduce](https://gitlab.com/issue-reproduce)
group on production and staging environments by asking in the [#development](https://gitlab.slack.com/archives/C02PF508L) Slack channel.
These groups are are on an Ultimate plan.

## Critical Customer Escalations

We follow the below process when existing [critical customer escalations](/handbook/customer-success/csm/escalations)
requires immediate scheduling of bug fixes or development effort.

### Requirements for critical escalation

- Customer is in [critical escalation](/handbook/customer-success/csm/escalations/#critical-and-high-level-escalations) state
- The issues escalated have critical business impact to the customer, determined by Customer Success and Support Engineering leadership
  - Failure to expedite scheduling may have cascading business impact to GitLab
- Approval from a VP from Customer Success AND a Director of Support Engineering are required to expedite scheduling
  - Customer Success: approval from either [Sherrod Patching](https://gitlab.com/spatching) or [David Sakamoto](https://gitlab.com/dsakamoto)
  - Support Engineering: approval from either [Lee Matos](https://gitlab.com/lbot) or [Lyle Kozloff](https://gitlab.com/lyle) or [Shaun McCann](https://gitlab.com/shaunmccann) or [Val Parsons](https://gitlab.com/vparsons)

### Process

- The issue priority is set to `~"priority::1"` regardless of severity
- The label `~"critical-customer-escalation"` is applied to the issue
- The issue is scheduled within 1 business day
  - For issues of type features, approval from the Product DRI is needed.
- The DRI or their delegate provides daily process updates in the escalated customer slack channel

### DRI

- If issue is type bug DRI is the Director of Development
- If issue is type feature DRI is the Director of Product
- If issue requires Infrastructure work the DRI is the Engineering Manager in Infrastructure

The DRI can use the [customer critical merge requests](https://docs.gitlab.com/ee/development/code_review.html#customer-critical-merge-requests) process to expedite code review & merge.

## Pairing Engineers on priority::1/severity::1 Issues

In most cases, a single engineer and maintainer review are adequate to handle a priority::1/severity::1 issue. However, some issues are highly difficult or complicated. Engineers should treat these issues with a high sense of urgency. For a complicated priority::1/severity::1 issue, multiple engineers should be assigned based on the level of complexity. The issue description should include the team member and their responsibilities.

| Team Member | Responsibility |
| ----------- | -------------- |
| `Team Member 1` | `Reproduce the Problem` |
| `Team Member 2` | `Audit Code Base for other places where this may occur` |

If we have cases where three or five or X people are needed, Engineering Managers should feel the freedom to execute on a plan quickly.

Following this procedure will:

- Decrease the time it takes to resolve priority::1/severity::1 issues
- Allow for a smooth handover of the issue in case of OOO or End of the Work Day
- Provide support for Engineers if they are stuck on a problem
- Provide another set of eyes on topics with high urgency or securing security-related fixes

## Canary Testing

Information on canary testing has been moved to dedicated page [covering the
canary stage and how to use it](/handbook/engineering/infrastructure/environments/canary-stage)

## Engineering private handbook

There are some engineering handbook topics that we cannot be publicly transparent about.  These topics can be viewed by GitLab team members in the [engineering section of the private handbook](https://internal.gitlab.com/handbook/engineering/).

If you experience a page not found (404) error when attempting to access the internal handbook, you may need to register to use it via first browsing to the [internal handbook authorization page](https://gitlab.com/internal-handbook/internal-handbook.gitlab.io/).
