---
layout: handbook-page-toc
title: "Contributor Success Team"
description: "Contributor Success Team"
---

## On this page

{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

- - -

## Mission

The goal of the team is to increase the technical improvements and efficiency of
our contribution process to sustain our ambition of
[1000+ contributors with merged MRs per month to GitLab](/company/strategy/#2-build-on-our-open-core-strength).

## Strategy

- **Outstanding contributor experience** Smooth, effective and scalable contributor experience.
  - Improve Community Contributor Productivity
     - Streamline contributrion review and feedback process
     - Improve tooling efficiency
  - Improve Contributor Journey, making it easier and efficient to contribute
  - Gather feedback from Wider community contributors and product teams on contribution friction
- **Contributor inspiration, awareness and incentivization** Regular incentivization of content to inspire contributors. Testimonials from existing contributors
  - Contributor recognition. Harmonize, redesign, promote existing “Hall of Fame” pages (MVP, Heroes, Top annual contributors)
  - Active outreach to partners and customers. Partner with TAM team to launch certification and training resources
  - In collaboration with Marketing, awareness campaign around Open DevOps Platform and the GitLab stewardship model
  - Benefits program for contributors
    - GitLab Developer Certification 
    - GitLab Heroes 
- **Measure, optimize and iterate** 
  - Measure the Wider Community Contribution process to identify bottlenecks and optimize the process
  - Ensure accuracy of performance indicators and contributor tracking      
- **Partnerships**
  - Establish Engineering to Engineering liaisons and partnerships
  -  Engineering representative that can ride along with the evangelist and program manager. Full time presentation. 
  - Outreach to other OSS projects 
  - Work alongside Contributor Program Manager in outreach efforts
  - Cross coach Community Contribution teams on the technical aspects 

### Contribution Acceleration Timeline

We aim to increase the focus on our community contributions. Below is a timeline
on how we will measure and track this goal.

- **[Unique Wider Community Contributors per Month](/handbook/engineering/quality/performance-indicators/#unique-wider-community-contributors-per-month)**
    - Target to increase to be greater than 150 per month by EOFY22
    - Activities:
        - Partnership with Community Relations and Technical Marketing team.
        - Hold community office hours
        - Hold hackathons
        - Allow running of QA tests from forks
        - Shorten the CI runtime for community contributions (in forks)
- **[Community Coaches per Month](/handbook/engineering/quality/performance-indicators/#community-mr-coaches-per-month)**
    - Target to increase to be greater than 50 per month by EOFY22
    - Activities:
      - Work with Development Department (Christopher L, VP of Development) for volunteers.
      - Work with UX Department (Christie L, VP of UX) Christie for volunteers.
      - Refresh MR coaches as “Community coaches” so non-code review work can be encouraged (design, etc)
      - Launch training materials for coaches
- **[Community Contribution MRs as Features per Month](/handbook/engineering/quality/performance-indicators/#community-contribution-mrs-added-as-features-per-month)**
    - Target to increase by 30% by EOFY22
    - Activities:
        - Encourage features at Community relations hackathons.
        - Published list of feature issues with Marketing team.
- **[Community Contribution MTTM](/handbook/engineering/quality/performance-indicators/#community-contribution-mean-time-to-merge)**
    - Target to decrease to be lower than 10 days by EOFY22
    - Activities:
        - Shorten CI time
        - Improve Community Contribution automation
        - Enable running QA tests on forks
        - Increase number of coaches
        - Partner with Engineering Productivity to provide feedback to improve contribution tooling (currently GDK).
- **[MRARR](/handbook/engineering/quality/performance-indicators/#mrarr)**
    - Target to increase to 1B MR$ by EOFY23
    - Activities:
        - Reach out to top tier enterprise customers
        - Partner with TAMs to enlist and facilitate contribution from paid customers
        - Launch contribution materials targeting large enterprises
        - Partner with Community relations team (David P)
        - Maintain a list of known contributors with a mapping to their accounts and the accounts ARR contribution as input to this KPI

## Team Responsibilities

* Carry out Engineering open source outreach efforts.
* Improve GitLab's Contribution Efficiency and Merge Request Coaching process.
* Engineering representative that can ride along with the evangelist and program manager.
* Organize community contributors into [community teams](team-structure.html) and ensure their success.
* Provide guidance to community contributors on technical and non-technical aspects.
* Track [contribution](/community/contribute/) delivery of the Community Contributors and Cohorts.
* Improve community recognition system and awards in collaboration with Community Relations team.
* Nominate impactful community contributors and contributions for recognition.
* Contribute as an MR Coach in one or more MR Coach speciality.
* Provide guidance and coaching to team members on technical contributions, product architecture, and other areas.
* Be a point of escalation for community contributors and identify GitLab DRIs to resolve blockers
* Participate in GitLab's overall open source outreach events and processes.
* Collaborate closely with our Marketing counterparts and Core team.

## OKRs

Every quarter, the team commits to [Objectives and Key Results (OKRs)](/company/okrs/). The below shows current and previous quarter OKRs, it updates automatically as the quarter progresses.

### Current quarter

<iframe src="https://app.ally.io/public/TQRmKHpOC7NoZb7" class="dashboard-embed" height="1600" width="100%" style="border:none;"> </iframe>

### Previous quarter
<!-- uncomment after FY23Q2 starts
<iframe src="https://app.ally.io/public/e0izWt13OqmGHuO" class="dashboard-embed" height="1600" width="100%" style="border:none;"> </iframe>
--> 

## Project Management

This team has the following immediate work items planned.

* [Contribution Efficiency Improvements Epic](https://gitlab.com/groups/gitlab-com/-/epics/1619)
* [Increasing MRARR through internal partnerships](https://gitlab.com/groups/gitlab-com/-/epics/1225)

## Active Quarter OKRs


## Team Structure

This new team resides under the Quality Department operating as a team of
Full-stack engineers, led by an Engineering Manager reporting to the
Quality Department Leader.

```mermaid
graph TD
    A[Quality Department]
    A --> B[Contributor Success Team]
    B --> BA[Contributor Success Engineer]
    B --> BB[Contributor Success Engineer]
    A --> CA(Quality Engineering teams)
    CA --> CAA[Software Engineer in Test]
    CA --> CAB[Software Engineer in Test]
    CA --> CAC[Software Engineer in Test]
    A --> D[Engineering Productivity Team]
    D --> DA[Engineering Productivity Engineer]
    D --> DB[Engineering Productivity Engineer]
    style B fill:#bbf,stroke:#f66,stroke-width:2px, color:#fff
    style BA fill:#bbf,stroke:#f66,stroke-width:2px, color:#fff
    style BB fill:#bbf,stroke:#f66,stroke-width:2px, color:#fff
```

## Contributor Efficiency Working group

There's a working group with members from Quality and Community Relations that
aims to streamline and improve contributor efficiency. It implements key
business iterations that results in substantial and sustained increases to
community contributors & contributions.

- Handbook page - <https://about.gitlab.com/company/team/structure/working-groups/contribution-efficiency/>
- Agenda - <https://docs.google.com/document/d/1AOgqaslnq-WI1ICSZ1NzSnALf1Va4D5qAD191icAoSI/edit#>

## Code Contributor User Journey

The code contributor user journey is documented in the handbook - [User Journey](./user-journey.html)
