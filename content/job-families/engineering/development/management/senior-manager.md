---
title: Senior Engineering Manager
extra_js:
- libs/mermaid.min.js
---

Engineering Managers at GitLab see their team as their product.
While they are technically credible and know the details of what engineers work on,
their time is spent safeguarding their team's health, hiring a world-class team,
and putting them in the best position to succeed. They own the delivery of product commitments and are always looking to improve productivity.
They must also coordinate across departments to accomplish collaborative goals.
Engineering Leadership at GitLab is cross-discipline.
A [Senior Engineering Manager](/job-families/engineering/development/management/senior-manager)
manages [Engineering Managers](/job-families/engineering/development/management/engineering-manager/)
with fullstack teams (frontend, backend, and fullstack engineers), and/or Engineering Individual Contributors (frontend, backend, and fullstack engineers)

## Responsibilities

- Build a globally-distributed, sustainable, and [high-performing](/handbook/people-group/learning-and-development/manager-development/high-performing-teams/) team through hiring, retention, and strategic organizational design 
- Plan and execute long term strategies that move your team and the product stage(s) toward business objectives. This includes decision-making, alignment, staffing, prioritization, leading through change, and working through ambiguity.
- Understand [Engineering KPIs](/handbook/engineering/performance-indicators/#key-performance-indicators) and seek to improve them
- Lead and drive significant results for multiple teams that have a direct impact on the broader mission they contribute to. Examples include, but are not limited to:
  - Managing multiple [engineering teams](/handbook/engineering/#engineering-departments-sub-departments--teams) with engineering manager direct reports, covering a significant product/program scope.
  - Managing [engineering teams](/handbook/engineering/#engineering-departments-sub-departments--teams) with a complex product/program scope.
  - Leading business critical cross-functional initiatives in addition to managing a team.
- Conduct managerial interviews for candidates, and train engineering managers to do managerial interviews
- Develop and execute process enhancements while strategically influencing leadership decisions across multiple organizational levels.
- Hold regular [1:1s](/handbook/leadership/1-1/) with team members and [skip-level](/handbook/leadership/skip-levels/) 1:1s with indirect reports
- Grow and develop engineering leadership (ICs or people managers) through mentorship, coaching, and learning and development opportunities
- Enable [quad planning team](/handbook/product/product-processes/#pm-em-ux-and-set-quad-dris) [collaboration](/handbook/values/#collaboration) within [product groups](/handbook/company/structure/#product-groups)
- Enable [Product](https://internal.gitlab.com/handbook/company/performance-indicators/product/), [Quality](/handbook/engineering/infrastructure/performance-indicators/), and [UX](/handbook/product/ux/performance-indicators/) performance via solid [stable-counterpart](/handbook/leadership/#stable-counterparts) partnership
- Contribute to the sense of psychological safety of multiple teams.
- Give regular and clear feedback around the [individual's performance](/handbook/leadership/1-1/suggested-agenda-format/)
- Draft quarterly [OKRs](/handbook/company/okrs/) and [Engineering KPIs](/handbook/engineering/performance-indicators/#key-performance-indicators)
- Improve product quality, security, and performance
- Participate in the [Incident Management on-call rotation](/handbook/engineering/infrastructure/incident-management/#incident-manager-responsibilities) to help ensure the availability goals for GitLab.com and GitLab Dedicated are met, by working with reliability engineers and development team members
- Identify and resolve problems proactively, even in ambiguous situations or where negotiations are necessary, through advanced thinking, partnership and foresight

## Requirements

- Exquisite brokering skills: regularly achieve consensus amongst stakeholders
- [Collaborate](/handbook/values/#collaboration) effectively with others
- Excellent written and verbal communication skills
- Share [our values](/handbook/values/), and work in accordance with those values
- Build teams that excel through our values. Recognize when to course-correct or restructure a team to improve performance or alignment with our mission.
- Professional experience as an engineer in at least one primary language or framework of the organization, or a closely related language or framework.
- Ability to discuss architectural concepts and systems design, and to broker technical decisions at a high-level between individual contributors.
- Experience across the devops lifecycle, with deep understanding of at least one area.
- Exposure to automation through CI/CD pipelines.
- An understanding of multiple delivery and distribution strategies, including an ability to maintain velocity within GitLab's dual cadence of continuous deployment and a monthly release cycle.
- Understanding of a variety of security principles and best practices including the ability to ensure a secure development process.
- Understands how to maintain and enforce Quality Assurance through testing frameworks and code review standards. 
- Ability to communicate technical concepts to non-technical stakeholders.
- Past experience (3 to 5 years) as an engineering manager.
- Proven track record of execution that demonstrates an understanding of the software development lifecycle.
- Ability to understand, communicate and improve the quality of multiple teams
- Demonstrate longevity at, at least, one recent job
- Ability to be successful managing at a remote-only company
- Demonstrated successful partnership with stable counterparts
- Exemplify [diversity, inclusion, and belonging](/handbook/values/#diversity-inclusion) in leadership
- Humble, servant leader
- Ability to use GitLab

## Nice-to-haves

- Experience in a peak performance organization
- Enterprise software company experience
- Computer science education or equivalent experience
- Passionate about open source and developer tools
- Experience contributing to open source software
- Experience working with modern frontend frameworks (for example React, Vue.js)
- Working knowledge of Ruby on Rails and/or Golang
- Domain knowledge relevant to the product stage in which you are looking to join (for example someone with CI/CD experience applying for the Verify and Release team)
- Be a user of GitLab, or familiar with our company
- Prior Developer Platform or Tool industry experience
- Prior high-growth startup experience
- Experience working on systems at massive, consumer scale
- Deep open source experience
- Experience working with global teams
- Be inquisitive: Ask great questions

## Job Grade

The Senior Engineering Manager is a [grade 9](/handbook/total-rewards/compensation/compensation-calculator/#gitlab-job-grades).

## Performance Indicators

- [Development Hiring Actual vs. Plan](/handbook/engineering/development/performance-indicators/#development-hiring-actual-vs-plan)
- [Team/Group MR Rate](/handbook/engineering/development/performance-indicators/#development-department-member-mr-rate)
- [Development Handbook Update Frequency](/handbook/engineering/development/performance-indicators/#development-handbook-update-frequency)

## Career Ladder

```mermaid
  graph LR;
  manager:backend(Backend Engineering Manager)
  manager:frontend(Frontend Engineering Manager)
  manager:fullstack(Fullstack Engineering Manager)

  %% engineer:distinguished(Distinguished Engineer)
  manager:senior(Senior Engineering Manager)

  director(Director, Engineering)

  manager:frontend --> manager:senior
  manager:backend --> manager:senior
  manager:fullstack --> manager:senior
  %% engineer:distinguished --- manager:senior
  manager:senior --> director

  %% engineer:distinguished
  manager:senior

  click manager:frontend "/job-families/engineering/development/frontend/manager/";
  click manager:backend "/job-families/engineering/development/backend/manager/";
  click manager:fullstack "/job-families/engineering/development/management/fullstack-manager/";

  %% click engineer:distinguished "/job-families/engineering/development/management/distinguished/"

  click director "/job-families/engineering/development/management/director/";

  classDef selected stroke:#333,stroke-width:1px;
  class manager:senior selected
```

## Hiring Process

Candidates for this position can generally expect the hiring process to follow the order below. Note that as candidates indicate preference or aptitude for one or more specialties, the hiring process will be adjusted to suit. Please keep in mind that candidates can be declined from the position at any stage of the process. To learn more about someone who may be conducting the interview, find their job title on our [team page](/handbook/company/team/).

1. Selected candidates will be invited to schedule a 30 minute [screening call](/handbook/hiring/#screening-call) with one of our Technical Recruiters
1. Candidates will be invited to schedule a 60 minute first interview with a VP of Development
1. Candidates will be invited to schedule a 45 minute second interview with a Director of Engineering
1. Candidates will be invited to schedule a 45 minute third interview with another member of the Engineering team
1. Candidates will be invited to schedule a 45 minute fourth interview with a member of the Product team
1. Candidates will be invited to schedule a 45 minute fifth interview with a VP of Engineering
1. Candidates may be asked to schedule a 50 minute final interview with our CEO
1. Successful candidates will subsequently be made an offer via email

Additional details about our process can be found on our [hiring page](/handbook/hiring/).
