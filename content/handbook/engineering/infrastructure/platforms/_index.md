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

#### Slack

Our main method of communication is Slack.

If you need assistance with a production issue or incident, please see the section on [getting assistance](/handbook/engineering/infrastructure/#getting-assistance).

**SaaS Platforms**

| **Channel** | **Purpose** |
|-----------|-----------|
| [#s_platforms](https://gitlab.slack.com/archives/C02D1HQRTKQ) | We collaborate on section level items here. This channel is used to share important information with the wider team, but also serves to align all teams in Platfroms with the common topic. |
| [#g_saas_platforms_leads](https://gitlab.slack.com/archives/C010QV6RRB3) | Communication for managers. Everyone interested is welcome to join this channel if they find the topics interesting. |
| [confidential managers channel](https://gitlab.slack.com/archives/G010N73CXJ6) | Used to discuss staffing issues affecting all teams that require additional coordination. We default to using the public channel as far as possible.|
| [#s_platforms_social](https://gitlab.enterprise.slack.com/archives/C062T669RFD) | Our social channel. |

**Dedicated**

| **Channel** | **Purpose** |
|-----------|-----------|
| [#g_dedicated-team](https://gitlab.enterprise.slack.com/archives/C025LECQY0M)| Dedicated Group discussion channel. Please use this channel for discussions relevant to engineers across the Dedicated group |
| [#f_gitlab_dedicated](https://gitlab.enterprise.slack.com/archives/C01S0QNSYJ2)| Dedicated function channel. Please use this channel to ask questions about features or ways of using the Dedicated product. Dedicated group will use this channel to make announcements relevant to wider groups |
| [#g_dedicated-us-pubsec](https://gitlab.enterprise.slack.com/archives/C03R5837WCV)| Dedicated USPubSec team channel. Used to discuss topics that affect PubSec team only. For broader engineering discussions please use [#g_dedicated-team](https://gitlab.enterprise.slack.com/archives/C025LECQY0M) |
| [#g_dedicated-switchboard-team](https://gitlab.enterprise.slack.com/archives/C04DG7DR1LG)| Dedicated Switchboard team channel. Used to discuss topics that affect Switchboard team only. For broader engineering discussions please use [#g_dedicated-team](https://gitlab.enterprise.slack.com/archives/C025LECQY0M)|
| [#g_dedicated-environment-automation-team](https://gitlab.enterprise.slack.com/archives/C074L0W77V0)|Dedicated Environment Automation team channel. Used to discuss topics that affect Switchboard team only. For broader engineering discussions please use [#g_dedicated-team](https://gitlab.enterprise.slack.com/archives/C025LECQY0M)|
| [#g_dedicated-team-social](https://gitlab.enterprise.slack.com/archives/C03QBGQ3K5W)| Dedicated social channel|
| [#dedicated-mr-review-stream](https://gitlab.enterprise.slack.com/archives/C065DDKPL21)| Visibility of new merge requests on Dedicated repos |

**Delivery**

| **Channel** | **Purpose** |
|-----------|-----------|
|[#g_delivery](https://gitlab.enterprise.slack.com/archives/CCFV016SV)| Delivery Group channel|
|[#g_delivery_standups](https://gitlab.enterprise.slack.com/archives/C05KS71438B)| |
|[#delivery_social](https://gitlab.enterprise.slack.com/archives/C01QX84J6UR)| Social channel for the group. |
|[#releases](https://gitlab.enterprise.slack.com/archives/C0XM5UU6B)| General communication about the current Release/Patch|
|[#f_upcoming_release](https://gitlab.enterprise.slack.com/archives/C0139MAV672)| Detailed Release status / Release Manager channel |
|[#announcements](https://gitlab.enterprise.slack.com/archives/C8PKBH3M5)|Release-Tools automation posts related to deployment activity|

**Production Engineering**

| **Channel** | **Purpose** |
|-----------|-----------|
| [#production_engineering](https://gitlab.enterprise.slack.com/archives/C03QC5KNW5N)| Place for the Production Eng team to have internal work discussions and ask for MR reviews etc. |
| [#g_production_engineering_leads](https://gitlab.enterprise.slack.com/archives/C06LDGA7Z9S)| Channel for Production Engineering leads (staff+ and management) |
| [#g_infra_ops](https://gitlab.enterprise.slack.com/archives/C04MH2L07JS)| Team channel for Production Engineering Ops  |
| [#g_infra_social](https://gitlab.enterprise.slack.com/archives/CQYDEJE13)| Social channel for Production Engineering |
| [#g_infra_foundations](https://gitlab.enterprise.slack.com/archives/C0313V3L5T6)| Team channel for Production Engineering Foundations |
| [#g_infra_foundations_social](https://gitlab.enterprise.slack.com/archives/C04QVEXBVL3)| Social channel for the Foundations team |
| [#g_infra_foundations_alerts](https://gitlab.enterprise.slack.com/archives/C04Q7RQC7FF) | Non-urgent service alerts for Foundations owned services |
| [#g_infra_foundation_notifications](https://gitlab.enterprise.slack.com/archives/C04RZC5TPPD) | Renovate notifications for Foundations owned projects |
| [#infra-terraform-alerts](https://gitlab.enterprise.slack.com/archives/C06PZQCRUJH) | Terraform state drift alerts for SaaS infrastructure |

**Scalability**

| **Channel** | **Purpose** |
|-----------|-----------|
|[#g_scalability](https://gitlab.enterprise.slack.com/archives/CMMF8TKR9)| General conversation for Scalability and requests coming in from other team members. |
|[confidential managers channel](https://gitlab.enterprise.slack.com/archives/C034V5P1725) | Used for specific communication. We default to public channels. |
|[#g_scalability-observability](https://gitlab.enterprise.slack.com/archives/C065RLJB8HK)| Team channel for general work in Observability. |
|[#g_scalability-practices](https://gitlab.enterprise.slack.com/archives/C04M6HVAY49)| Team channel for general work in Practices. |
|[#scalability-social](https://gitlab.enterprise.slack.com/archives/C0108V9SQHY)| Our social channel. |
| #scalability-id-project-name() | We use project specific channels to keep make it easier to follow specific topics. Channel names follow this format. |

Queries to the Infrastructure team can be directed to a dedicated Slack channel [#infrastructure_lounge](https://gitlab.slack.com/archives/CB3LSMEJV). The Infrastructure department actively engages with these queries or Slack messages here, which are then converted into issues in a separate [GitLab project tracker](https://gitlab.com/gitlab-com/gl-infra/infrastructure-lounge-slack-issue-tracker) for efficient tracking and resolution.

#### Meetings

Once per week, we hold a `Platforms leads call` to align on action items related to career development, general direction or answer any ongoing questions that have not been addressed async. The call is cancelled when there are no topics added on the morning of the call.

In addition to the `Platforms leads call`, we have some recurring events and reminders that can be viewed in the [SaaS Platforms Leadership Calendar](https://calendar.google.com/calendar/embed?src=c_8a81f7acc76d72b8e4189a61f7a259b9d722e3fe1e05693236f592e7dd52e83b%40group.calendar.google.com). Please add this to your Calendars to stay up-to-date with the various events.

The Director of Product and Director of Infrastructure for SaaS Platforms conduct weekly progress reviews. During `Platforms Grand Review`, they review [progress across all groups](https://gitlab.com/groups/gitlab-com/-/epics/2115) with the goals of being informed of progress made, learning about existing blockers, and supporting the team. The review is private streamed to the GitLab Unfiltered channel because the review covers confidential issues. All recordings are made available in the [Platforms Grand Review YouTube Playlist](https://www.youtube.com/playlist?list=PL05JrBw4t0KqDXSHdlUvPWHOj_Hw8JdQ1).

##### Infrastructure Platforms Leads Demo

The Infrastructure Platforms Leads Demo is an opportunity for sync discussions between Staff+ IC across the Infrastructure Platforms Group to highlight current ongoing efforts underway in the teams they support.
All team members are welcome to join the call, but the emphasis is on Staff+ ICs to present and discuss the work they're focused on, the problems they're experiencing, and solutions they're considering.

The call is recorded to the [Infrastructure Platforms Leads Demo Unfiltered Playlist](https://www.youtube.com/playlist?list=PL05JrBw4t0KpI98ZtrhYrA_gJgYJjnOgl). The agenda can be found in [Google Docs](https://docs.google.com/document/d/1MX__hMUcxEUv2JlRiXySNvFnOPHv7-Uul1_VbzImbKw/edit).

While the intention is for the call to be made public on GitLab Unfiltered, the default is for it to be published as private.
At the end of the call, a quick vote is held between the attendees and if all agree that the content is #SAFE, it can be published as public.

### Inbound Support Requests

We provide support to internal teams regarding the production platforms.

Any team member outside of SaaS Platforms who requires support can add a message to the [#saas-platforms-help](https://gitlab.slack.com/archives/CB3LSMEJV) Slack channel.

This channel is triaged by the person currently listed in the Pager Duty Schedule called [SaaS Platforms Help](https://gitlab.pagerduty.com/schedules/PIECG9N).

The Pager Duty Schedule lists each Engineering Manager in Production Engineering and Scalability. Delivery have been excluded because of their Release Manager duties. Dedicated are not included as they have their own triage mechanisms. The Engineering Manager in the schedule should create overrides to rotate the responsibility for triage between each member of their teams, including the EM themselves.

When on triage rotation, the expectation is to respond to each message in the Slack channel within 24 hours up until the close of that team members working day on the Friday. When the triage rotation changes on Monday, the incoming team member should handle questions that have come in from Friday evening through the weekend.

This person is expected to look at every message and perform one of the following actions:

1. For quick questions that they can answer, they should provide the answer.
2. For questions they cannot answer, or questions that will cause a larger conversation, they should ping the Engineering Manager from the appropriate SaaS Platforms team, and it becomes the EMs responsibility to find the answer. The EM can also choose to use the Issue Tracker Integration to create an issue from the request.

### Slack to GitLab Issue Tracker Integration

In an effort to enhance the tracking and resolution of requests directed to the Infrastructure team, we are evaluating a bot that converts Slack messages in [#saas-platforms-help](https://gitlab.slack.com/archives/CB3LSMEJV) channel into GitLab issues.

#### Workflow Overview

- **Acknowledgement**: An agent responds with the `acknowledged_emoji` (👀 in our case) to acknowledge a Slack message in the Infrastructure Lounge channel.
- **Issue Creation**: The Slack bot then creates an issue with the acknowledging agent assigned to it.
- **Thread Attachment**: The Slack thread corresponding to the message is also posted on the created GitLab issue.
- **Label Assignment**: Agents can further categorize issues by adding label emojis (`ops`, `foundations`, `scalability-observability` or `scalability-practices`) in the Slack message. This action automatically assigns the issue to the respective team: Ops, Foundations, Scalability-Observability or Scalability-Practices.
- **Project Tracking**: These converted issues are tracked under a dedicated project hosted at [SaaS Platforms Help Slack Issue Tracker](https://gitlab.com/gitlab-com/gl-infra/saas-platforms-help-slack-issue-tracker).
- **Issue Closure**: Agents/Requester can close the issue when resolved by adding any of the `resolved_emojis` (`green-circle-check`,`white_check_mark`or `checked`in our case)

#### Configuration

Agents responsible for handling these issues are defined in a JSON file, which serves as a [CI/CD variable](https://ops.gitlab.net/gitlab-com/gl-infra/infrastructure-lounge-slack-issue-creator/-/settings/ci_cd). Currently, this file contains a static list of all members of the infrastructure department.

### Project and Backlog Management

We use epics and issues to manage our work. [Our project management process](/handbook/engineering/infrastructure/platforms/project-management/) is shared between all teams in SaaS Plaforms.

### Tools

The Platforms section builds and maintains various tools to help deploy, operate and monitor our SaaS platforms. You can view a list of these tools in the [Platforms Tools Index](/handbook/engineering/infrastructure/platforms/tools/).

### OKR

We use objective and key results to set goals in alignment with [OKRs at GitLab](/handbook/company/okrs/).
[Our OKR process](/handbook/engineering/infrastructure/platforms/okrs/) is shared between all teams in Saas Platforms.

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
