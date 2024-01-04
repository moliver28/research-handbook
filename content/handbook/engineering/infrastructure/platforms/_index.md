---

title: "The Infrastructure Platforms Section"
---








## Mission

The Infrastructure Platforms section enables GitLab Engineering to build and deliver **safe**, **scalable** and **efficient** features for multi-tenant and single-tenant GitLab SaaS platforms (GitLab.com and GitLab Dedicated).

## Vision

To deliver on the mission, we are in the process of formalising the building blocks we need to work on.

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/Vui6_iULzPw" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

This vision has been partially discussed by the team members of the Infrastructure Platforms section while setting the [direction for FY23](https://gitlab.com/gitlab-com/gl-infra/mstaff/-/issues/101).

## FY24 Direction

In FY24, teams in the Platforms Section of the Infrastructure Department will continue to focus on expanding their role as an enabler across the Engineering function. With the growth of this section, it is becoming imperative that the Platforms section teams collaborate more closely, and use the influence they have built individually to take our engineering processes to the next stage.

Initiatives driven within the Platforms section, often spanning multiple quarters, are represented on the [SaaS Platforms section epic](https://gitlab.com/groups/gitlab-com/-/epics/2115).

In FY24, the focus is on:

### 1. Achieve 50% growth year-on-year in engagement surveys results compared to FY23

With the team growth in FY23 and the approved headcount for FY24, the general focus will be on hiring and setting teams up for success. However, we must ensure that the existing team members are happy and that action is taken based on their feedback. We will focus on how to:

* Make hiring processes more efficient. (Platform, link to be added)
* Support career goals of individual team members with the section. (Platform, link to be added)
* Introduce an effective way to regularly gather feedback from team members, outside of company-level engagement surveys. Use the feedback to ensure continual team improvements.

### 2. Prepare self-servicing for stage group teams to enable end-to-end development

The Platforms Section is well positioned to continue working on process, tooling, and systems changes which allow us to continue supporting the company growth. With a number of highly ambitious, and highly impactful projects we are looking to:

* Create a roadmap for new frameworks that will enable individual stage groups to manage their features' lifecycle and ensure that they are reliable and performant. (Delivery and Scalability teams, link to be added)
* Expand Delivery metrics to provide stage groups with visibility into the frequency, and reliability of deploying and releasing changes to GitLab users (Delivery, link to be added)
* Ensure the preciseness of Error Budgets as a measure of a business desire for GitLab.com reliability and performance. ([Create Performance Indicator for Error Budgets](https://gitlab.com/gitlab-com/gl-infra/scalability/-/issues/1997))

### 3. Increase use and accuracy of Platform team metrics, and feed them into enablement processes

Individual teams in the Platforms Section have a number of metrics, and measures they use to guide their work. Furthermore, we are involved in a number of processes that span the whole Engineering function. We need to get better at:

* Having a common understanding of how different team metrics impact each other. (Platform, link to be added)
* Streamlining and increasing involvement in processes that better our application reliability and performance (e.g. InfraDev, capacity planning). (Scalability, link to be added)
* Understanding every component of MTTP on GitLab.com, measuring turnaround time for a self-managed releases, and similar. (Delivery, link to be added)

### 4. Increase GitLab's resilience to planned and unplanned growth, while keeping the cost of running the platform in check

With the work we've been doing in previous years, we are all in alignment that as a group we are focused on scaling horizontally and vertically, whether we are talking about GitLab (the application), GitLab.com (the infrastructure), or processes that support serving our users. In FY23, we added one more dimension, the cost. In FY24 we will continue to focus on:

* Ensuring that non-horizontally scalable services (such as Redis, Sidekiq) can continue supporting growth. (Delivery and Scalability teams, link to be added)
* Increasing Kubernetes cluster utilization and resilience. (Delivery and Scalability teams, link to be added)
* Reducing the time to recover from unexpected usage, and increase application resilience to all types of growth on GitLab.com. (Delivery and Scalability, link to be added)

## How we work

### Communication

We collaborate on the section level items in the [#s_platforms](https://gitlab.slack.com/archives/C02D1HQRTKQ) Slack channel. This channel is used to share important information with the wider team, but also serves to align all teams in Platfroms with the common topic.

For communication between managers, we have [#g_saas_platforms_leads](https://gitlab.slack.com/archives/C010QV6RRB3) channel. Everyone interested is welcome to join this channel if they find the topics interesting. We also have [a confidential managers channel](https://gitlab.slack.com/archives/G010N73CXJ6) that is used to discuss staffing issues affecting all teams that require additional coordination.

Once per week, we hold a `Platforms leads call` to align on action items related to career development, general direction or answer any ongoing questions that have not been addressed async. The call is cancelled when there are no topics added on the morning of the call.

In addition to the `Platforms leads call`, we have some recurring events and reminders that can be viewed in the [SaaS Platforms Leadership Calendar](https://calendar.google.com/calendar/u/0?cid=Y184YTgxZjdhY2M3NmQ3MmI4ZTQxODlhNjFmN2EyN[…]MzIzNmY1OTJlN2RkNTJlODNiQGdyb3VwLmNhbGVuZGFyLmdvb2dsZS5jb20). Please add this to your Calendars to stay up-to-date with the various events.

The Director of Product and Director of Infrastructure for SaaS Platforms conduct weekly progress reviews. During `Platforms Grand Review`, they review [progress across all groups](https://gitlab.com/groups/gitlab-com/-/epics/2115) with the goals of being informed of progress made, learning about existing blockers, and supporting the team. The review is private streamed to the GitLab Unfiltered channel because the review covers confidential issues. All recordings are made available in the [Platforms Grand Review YouTube Playlist](https://www.youtube.com/playlist?list=PL05JrBw4t0KqDXSHdlUvPWHOj_Hw8JdQ1).

### Project Management

We use epics and issues to manage our work. [Our project management process](/handbook/engineering/infrastructure/platforms/project-management/) is shared between all teams in SaaS Plaforms.

### Tools

The Platforms section builds and maintains various tools to help deploy, operate and monitor our SaaS platforms. You can view a list of these tools in the [Platforms Tools Index](/handbook/engineering/infrastructure/platforms/tools/).

### OKR

[OKRs](/handbook/company/okrs/) (or other items outside of projects) that require progress tracking should be updated **every Wednesday**.


When writing OKRs, the guidance is that:

* Objective is defined as “**What** do you want to achieve?”
* Key Results is defined as “How will you know **when** you’ve achieved the objective?”
* As part of a KR, you can also have a sub point - which will likely tie to an epic. This would be an “Initiative”, defined as “**How** are you going to achieve your key result?”

The OKR Description should have the following format:

```
### Context

<context about the Objective and the problem it is trying to solve>

### Linked Epics

| Epic Title | Epic Link |
| ---------- | --------- |
| <title>    | <link>    |

### Scoring Criteria

<This section should list the Scoring Criteria of each Key Results part of the Objective. Different KRs could contribute with different weights to the Objective completion>
```

If an Objective description also needs other sections, these can be added after the block above.

All the statuses of the Epics linked to the OKR (`Linked Epics` table) should be updated each Wednesday, to prevent drift between OKR's and linked epics.

#### OKR Retrospective

At the end of the quarter, each OKR should have a retrospective section at the top of the Description field,
with the format below:

```
### Retro

#### Good

<2-3 bullet points summarising what went well during this OKR>

#### Bad

<2-3 bullet points summarising what didn't go well during this OKR>

#### Try

<2-3 bullet points summarising what we should try to do differently next time>

```

After the Retro section is finalized, the OKR can be closed.

## Platforms Learning Path

All team members are encouraged to schedule time for personal development. The following links may help you get started with Platforms-relevant learning. Please add your own contributions to this list to help others with their personal development.

### Learn about Platforms, and the Platforms Groups

| Group | Topic |
|-------|-------|
| SaaS Platforms | [Product direction](https://about.gitlab.com/direction/saas-platforms/) |
| [Delivery Group](/handbook/engineering/infrastructure/team/delivery) | [Mission](/handbook/engineering/infrastructure/team/delivery/#mission), [Strategy](/handbook/engineering/infrastructure/team/delivery/#strategy), [Team history](/handbook/engineering/infrastructure/team/delivery/#history) |
| [Scalability Group](/handbook/engineering/infrastructure/team/scalability/) | [Mission](/handbook/engineering/infrastructure/team/scalability/#mission), [Strategy](/handbook/engineering/infrastructure/team/scalability/#strategy), [Team history](/handbook/engineering/infrastructure/team/scalability/#history) |
| [Dedicated Group](/handbook/engineering/infrastructure/team/gitlab-dedicated/) | [Mission](/handbook/engineering/infrastructure/team/gitlab-dedicated/#mission) |

### Learn about tools and technologies used within Platforms

1. [Jsonnet tutorial](https://jsonnet.org/learning/tutorial.html)
2. [GitLab.com running on the Kubernetes platform](/handbook/engineering/infrastructure/production/kubernetes/gitlab-com/)

## Pages under team/reliability are being moved to engineering/infrastructure

Note that links to `engineering/infrastructure/reliability` have been moved or deleted.
If you are seeing this due to accessing a page under that path, we have probably deleted or relocated the content.

If you believe the content you are trying to access should still be in the handbook, please post a message in the [`#production_engineering`](https://gitlab.enterprise.slack.com/archives/C03QC5KNW5N) Slack channel so we can see if the content is still relevant.
