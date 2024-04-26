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


## Direction

In FY25, teams in the Platforms Section of the Infrastructure Department have collaborated on [the "North Star"](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/1097), which is then used to set [the SaaS Platforms Strategy](https://gitlab.com/groups/gitlab-com/-/epics/2243).

Initiatives driven within the Platforms section, often spanning multiple quarters, are represented on the [SaaS Platforms section epic](https://gitlab.com/groups/gitlab-com/-/epics/2115).

## How we work

### Communication

We collaborate on the section level items in the [#s_platforms](https://gitlab.slack.com/archives/C02D1HQRTKQ) Slack channel. This channel is used to share important information with the wider team, but also serves to align all teams in Platfroms with the common topic.

For communication between managers, we have [#g_saas_platforms_leads](https://gitlab.slack.com/archives/C010QV6RRB3) channel. Everyone interested is welcome to join this channel if they find the topics interesting. We also have [a confidential managers channel](https://gitlab.slack.com/archives/G010N73CXJ6) that is used to discuss staffing issues affecting all teams that require additional coordination.

Queries to Infrastructure team can be directed to a dedicated Slack channel [#infrastructure_lounge](https://gitlab.slack.com/archives/CB3LSMEJV). The Infrastructure department actively engages with these queries or Slack messages here, which are then converted into issues in a separate [GitLab project tracker](https://gitlab.com/gitlab-com/gl-infra/infrastructure-lounge-slack-issue-tracker) for efficient tracking and resolution. 

Once per week, we hold a `Platforms leads call` to align on action items related to career development, general direction or answer any ongoing questions that have not been addressed async. The call is cancelled when there are no topics added on the morning of the call.

In addition to the `Platforms leads call`, we have some recurring events and reminders that can be viewed in the [SaaS Platforms Leadership Calendar](https://calendar.google.com/calendar/embed?src=c_8a81f7acc76d72b8e4189a61f7a259b9d722e3fe1e05693236f592e7dd52e83b%40group.calendar.google.com). Please add this to your Calendars to stay up-to-date with the various events.

The Director of Product and Director of Infrastructure for SaaS Platforms conduct weekly progress reviews. During `Platforms Grand Review`, they review [progress across all groups](https://gitlab.com/groups/gitlab-com/-/epics/2115) with the goals of being informed of progress made, learning about existing blockers, and supporting the team. The review is private streamed to the GitLab Unfiltered channel because the review covers confidential issues. All recordings are made available in the [Platforms Grand Review YouTube Playlist](https://www.youtube.com/playlist?list=PL05JrBw4t0KqDXSHdlUvPWHOj_Hw8JdQ1).

### Slack to GitLab Issue Tracker Integration

In an effort to enhance the tracking and resolution of requests directed to the Infrastructure team, we are evaluating a bot that converts Slack messages in [#infrastructure_lounge](https://gitlab.slack.com/archives/CB3LSMEJV) channel into GitLab issues.

#### Workflow Overview

- **Acknowledgement**: An agent responds with the `acknowledged_emoji` (👀 in our case) to acknowledge a Slack message in the Infrastructure Lounge channel.
- **Issue Creation**: The Slack bot then creates an issue with the acknowledging agent assigned to it.
- **Thread Attachment**: The Slack thread corresponding to the message is also posted on the created GitLab issue.
- **Label Assignment**: Agents can further categorize issues by adding label emojis (`ops`, `foundations`, `scalability-observability` or `scalability-practices`) in the Slack message. This action automatically assigns the issue to the respective team: Ops, Foundations, Scalability-Observability or Scalability-Practices.
- **Project Tracking**: These converted issues are tracked under a dedicated project hosted at [Infrastructure Lounge Slack Issue Tracker](https://gitlab.com/gitlab-com/gl-infra/infrastructure-lounge-slack-issue-tracker).
- **Issue Closure**: Agents/Requester can close the issue when resolved by adding any of the `resolved_emojis` (`green-circle-check`,`white_check_mark`or `checked`in our case)

#### Configuration

Agents responsible for handling these issues are defined in a JSON file, which serves as a [CI/CD variable](https://ops.gitlab.net/gitlab-com/gl-infra/infrastructure-lounge-slack-issue-creator/-/settings/ci_cd). Currently, this file contains a static list of all members of the infrastructure department.


### Project and Backlog Management

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

### Hiring

[Our hiring process](/handbook/engineering/infrastructure/platforms/hiring/) is shared between all teams in SaaS Plaforms.

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
