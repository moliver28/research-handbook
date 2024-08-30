---
title: SME Operations - Collaboration Project, Groups, Slack Channels 

description: Describe SME Collaboration Projects, Google Groups and Slack Channels necessary for SME Program Operations

---

## StackOverflow (TBD)

The preferred channel is our [StackOverFlow for Teams](/handbook/solutions-architects/tools-and-resources/#stack-overflow-for-teams) via #cs-questions.

* Maintain List of SMEs (also in StackOverFlow) and SME Associates

Make sure that whoever is designated as an SME is listed as such in Stack Overflow. This will ensure that questions tagged with those relevant topics get routed to the right folks.

It should be part of the regular rigor that SMEs review questions in Slack (specifically #cs-questions) and Stack Overflow to ensure the answers are upvoted and relevant as new changes/features get released.

We can also use Stack Overflow for FAQs and Articles related to those particular areas.

TODO: Need to detail what exactly is the process to add SMEs to StackOverFlow

## SME Google Groups

Each SA Area Lead should set up SA and CS SME Google Groups for calendars. Have also both SA program Leads owners also, as a backup in case SA Area Lead is OOO 

Use list of [SA SMEs](/handbook/solutions-architects/sa-practices/subject-matter-experts/#sme-list) and [CS SMEs](https://gitlab.com/gitlab-com/customer-success/subject-matter-experts/cs-subject-matter-experts/-/tree/main#who-are-the-current-smes-and-what-areas-are-they-focused-on) to form Groups

| SME Area                | SME Group                                                    |
|-------------------------|--------------------------------------------------------------|
| SME Area Leads Group    | cs-sme-leaders<br>sa-sme-leaders<br>     |
| AI                      | cs-sme-ai<br>sa-sme-ai<br>               |
| App Security            | cs-sme-appsec<br>sa-sme-appsec<br>       |
| Dedicated               | cs-sme-dedicated<br>sa-sme-dedicated<br> |
| Plan                    | cs-sme-plan<br>sa-sme-plan<br>           |
| CICD/Runner             | cs-sme-ci<br>sa-sme-ci<br>               |
| Metrics & Observability | cs-sme-metrics<br>sa-sme-metrics<br>     |
| Security                | cs-sme-security<br>sa-sme-security<br>   |
| Support                 | cs-sme-support<br>sa-sme-support<br>     |

## **SME Slack Channels** {#sme-slack}

To facilitate effective communication and collaboration between Subject Matter Experts (SMEs) and the field teams, the following Slack channel structure is recommended:

### SME Program Leadership Channel

Purpose: Async Coordination among SME Area Lead on any changes or decisions made concerning the SME program.

| SME Area                       | Slack Channel That Currently Exists            | Slack Channels Created to be used Going Forward |
|--------------------------------|------------------------------------------------|-------------------------------------------------|
| SME Program Leadership Channel |  #sme-program-launch-planning<br> |  #sme-program-leaders<br>          |

### Channel for all SMEs in All Areas

Purpose: This is the main channel for all SME-related discussions and announcements. It serves as a central hub for:

* General SME program updates
* Cross-domain collaboration
* Sharing best practices and success stories
* Coordinating SME activities across different areas of expertise

| SME Area | Slack Channel             |
|----------|---------------------------|
| All SMEs | cs-subject-matter-experts |

### SME Area Slack Channels

Purpose: These channels are mainly for SME Program Leads, SME Area Leads, SMEs and SME Associates. They are used for:

* Asynchronous meetings
* Discussions on architectural challenges
* Competitive analysis
* Identifying and addressing enablement needs

| SME Area                  | Slack Channel That Currently Exists                 | Slack Channels Created to be used Going Forward |
|---------------------------|-----------------------------------------------------|-------------------------------------------------|
| AI                        | #sa-ai-sme-team<br>#cs-sme-ai                       | #ai-sme-team                                    |
| App Security & Compliance | #appsec-sme-team<br>#cs-sme-security-compliance | #appsec-sme-team                                |
| Dedicated                 |                                                     | #dedicated-sme-team                             |
| Plan                      | #cs-sme-plan                                        | #plan-sme-team                                  |
| CICD/Runner               | #cs-sme-ci                                          | #cicd-runners-sme-team                          |
| Metrics & Observability   | #cs-sme-metrics                                     | #metrics-sme-team                               |

### SME Request Channels

Purpose: These channels are used for:

* Submitting SME requests for specific opportunities
* Coordinating SME involvement in customer engagements
* Tracking and managing SME requests

| SME Area                  | Slack Channel          |
|---------------------------|------------------------|
| AI                        | #ai-sme-request        |
| App Security & Compliance | #appsec-sme-request    |
| Dedicated                 | #dedicated-sme-request |
| Plan                      | #plan-sme-request      |
| CICD/Runner               |                        |
| Metrics & Observability   |                        |

### SME Field Technical Channels

Purpose: These channels are open to all SMEs, Product Managers (PMs), and interested Solutions Architects (SAs) and Account Executives (AEs). They serve to:

* A place for team members supporting customer evaluations of GitLab features.

| SME Area                  | Slack Channel That Currently Exists |
|---------------------------|-------------------------------------|
| AI                        | #ai-field-technical                 |
| App Security & Compliance | TBD                                 |
| Dedicated                 | TBD                                 |
| Plan                      | TBD                                 |
| CICD/Runner               | TBD                                 |
| Metrics & Observability   | TBD                                 |

## SME Collaboration Projects

Each SA Area Lead should set up SME Collaboration project (See [App Security Example)](https://gitlab.com/gitlab-com/customer-success/sa-sme-team-appsec-and-compliance)

| SME Area                | Collaboration Project Link                                                                                   |
|-------------------------|--------------------------------------------------------------------------------------------------------------|
| AI                      |                                                                                                              |
| App Security            | [App Security SME Project](https://gitlab.com/gitlab-com/customer-success/sa-sme-team-appsec-and-compliance) |
| Dedicated               |                                                                                                              |
| Plan                    |                                                                                                              |
| CICD/Runner             |                                                                                                              |
| Metrics & Observability | <br>                                                                                                         |

### SME Metrics (TBD)

To effectively measure the impact and success of the SME program, we will track the following metrics:

1. Technical Win Rate:
   * Metric: Percentage of wins in opportunities with SME involvement
   * Calculation: (Number of won opportunities with SME engagement / Total number of opportunities with SME engagement) * 100
   * Goal: Increase win rate by 10% compared to baseline within 12 months
2. Product Feedback Loop Effectiveness:
   * Metric: Number of actionable feedback items provided to and received from product teams
   * Calculation: Track feedback items submitted by SMEs and product updates based on SME input
   * Goal: Implement at least 5 product improvements based on SME feedback per quarter
3. Pipeline Growth:
   * Metric: Percentage increase in pipeline value for opportunities with SME involvement
   * Calculation: ((Current quarter pipeline with SME involvement - Previous quarter pipeline with SME involvement) / Previous quarter pipeline with SME involvement) * 100
   * Goal: 15% quarter-over-quarter growth in pipeline value
4. Opportunity Stage Progression:
   * Metric: Percentage of opportunities moving from Stage 2 to Stage 3 and Stage 3 to Stage 4 with SME involvement
   * Calculation: (Number of opportunities progressing to next stage / Total number of opportunities at current stage) * 100
   * Goal: 25% improvement in stage progression rate compared to non-SME involved opportunities
5. SME Engagement Efficiency:
   * Metric: Average time to SME assignment and initial engagement
   * Calculation: Sum of (SME assignment date - Request submission date) / Total number of SME requests
   * Goal: Reduce average time to SME engagement by 20% within 6 months
6. Customer Satisfaction:
   * Metric: Net Promoter Score (NPS) for opportunities with SME involvement
   * Calculation: Standard NPS calculation based on customer surveys
   * Goal: Achieve and maintain an NPS of 50 or higher for SME-involved opportunities
7. Knowledge Transfer Effectiveness:
   * Metric: Number of SME-led training sessions and knowledge base articles created
   * Calculation: Sum of training sessions conducted and articles published by SMEs
   * Goal: Minimum of 4 training sessions and 10 knowledge base articles per SME per quarter
8. Stack Overflow Engagement:
   * Metric: Response rate and quality of SME answers on Stack Overflow
   * Calculation: (Number of SME responses / Total number of relevant questions) * 100; Average upvotes per SME answer
   * Goal: 90% response rate to relevant questions; Average of 5 upvotes per SME answer

Reporting and Analysis:

* Generate monthly reports on these metrics to track progress and identify trends
* Conduct quarterly reviews to assess SME program effectiveness and make necessary adjustments
* Use data visualization tools to create dashboards for easy monitoring of key metrics

By consistently tracking and analyzing these metrics, we can ensure the SME program's continuous improvement and demonstrate its value to the organization.

## New SME Area of Expertise Process

TBD - Define the process to determine whether a SME Area of Expertise should be established or not.

These are the differences between SMEs Areas of Interest and Formal SME Programs

| <br><br> | SME Area of Interest | Formal SME Areas |
|---|---|---|
| <br><br> | 1. CICD/ Runners<br>2. Metrics & Observability<br>3. Embedded Systems | 1. AI<br>2. App Security<br>3. Dedicated<br>4. Plan |
| Leadership Structure | No official SME Area Leader, or SMEs.<br>Can be a pool of interested folks of SME Associates.<br>One person driving program | [x] SME Area Leads<br>[x] SMEs<br>[x] SME Associates |
| Operations | [ ] Formal List of SA and CS SMEs<br>[x] List of SME Associates or Interested Folks<br>[ ] SME Google Groups<br>[x] Slack Channels - General<br>[ ] Slack Channel - Request a SME<br>[ ] Collab Project<br>[ ] StackOverFlow | [x] Formal List of SA and CS SMEs<br>[x] List of SME Associates<br>[x] SME Google Groups<br>[x] Slack Channels - General<br>[x] Slack Channel - Request a SME<br>[x] Collab Project<br>[x] StackOverFlow |
| Cadences | [ ] ARR Driver<br>[ ] SME Area Leads Meetings<br>[x] SME Area Pod Cadences<br>[ ] PM/ SME Area Cadences<br>[x] PM Roadmaps<br>[x] Technical Skills Exchange<br>Meetings can be in the form of trainings, async, office hours etc<br> | [x] ARR Driver<br>[x] SME Area Leads Meetings<br>[x] SME Area Pod Cadences<br>[x] PM/ SME Area Cadences<br>[x] PM Roadmaps<br>[x] Technical Skills Exchange |
| Process to Request a SME | No | Yes |
| Customer Feedback Mechanisms | No | Yes (with Issue Boards etc) |
| Engagement with PM | Some | Yes |

Once a SMEs Ares of Interest becomes a formal SME Programs These are the tasks needed to complete setup:

* Selection of SME Area Leads, SMEs
* Who decides on new SME Area
* Rollout to SA and CS Community
* Enrolling PMs
* Maintain List of SA SME Participants - Confirm List of [SA SMEs](/handbook/solutions-architects/sa-practices/subject-matter-experts/#sme-list) and [CS SMEs](https://gitlab.com/gitlab-com/customer-success/subject-matter-experts/cs-subject-matter-experts/-/tree/main#who-are-the-current-smes-and-what-areas-are-they-focused-on)
* Maintain list of potential SMEs (SME Associates) as a pool for each area
* Create the necessary SME google groups for calendar purposes
* Set up Stack OverFlow with SMEs to answer questions.
* Set up SME Collaboration project
* Set up SME Google Groups
* Set up SME Slack Channels for all SME Areas
* Set up SME Slack Channels for SME Requests
* Update Handbook on SME Operations
