---
aliases: /handbook/engineering/infrastructure/team/reliability/foundations.html
title: "Production Engineering Foundations Team"
---

## Mission

The mission of the Production Engineering Foundations team at GitLab is to Build, Run and Own the lifecycle of the core infrastructure for GitLab Saas instances.

The team is focused on owning the reliability, scalability, and security of the core infrastructure. We seek to reduce the effort required to provide our core infrastructure services, and to enable other teams to self-serve core infrastructure that allows them to more efficiently and effectively run their services for GitLab.com.

Given the integral nature of the services we own, the team is committed to close collaboration with other teams - for example Delivery, Scalability, Dedicated, InfraSec and others - to ensure alignment and coordination of efforts.

We endeavor to contribute the lessons we learn from running at-scale production systems back to the product teams, and advocate for GitLab to contain features that would allow us to DogFood.

## Vision

The Foundations Team supports the rest of Infrastructure and Development by providing the resources that other teams build upon.

We envision providing services that are delightfully simple for other teams to understand and use, through opinionated and clear interfaces, automation and excellent documentation.

## Responsibilities

### Ownership

There are two primary areas can be considered our flagship services that we actively work to improve and expand:

- Networking (From edge, to ingress. Including, but not limited to: load balancing, WAF, DNS, VPC)
- Rate limiting

### Services

Foundations is responsible for several services related to GitLab SaaS Platforms. The Services that the Foundations team is responsible for fall into two general categories: Core and Edge.

#### Core

Core services are services that are within GitLab.com's ecosystem, generally not talking directly to incoming traffic.

| Service | Description | Co-Ownership? |
| ------- | ----------- | --------- |
| K8s | [K8S workloads deployments](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/onboarding/gitlab.com_on_k8s.md), Cluster addons | Autodeploy remains with Delivery, and anything Delivery related is co-owned with Delivery |
| Config | [Terraform](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/uncategorized/terraform-broken-master.md), [Chef](https://gitlab.com/gitlab-com/runbooks/-/tree/master/docs/config_management), Image Builds | The core TF repos are owned by Foundations, while specific modules may be maintained by the teams that use them |
| Service discovery | [Consul](https://gitlab.com/gitlab-com/runbooks/-/tree/master/docs/consul) | |
| Secrets Management | [Vault](https://gitlab.com/gitlab-com/runbooks/-/tree/master/docs/vault) | Vault is offered as a service to enable teams to manage their own secrets |
| Ops | [Ops.gitlab.net](https://gitlab.com/gitlab-com/runbooks/-/tree/master/docs/ops), [Ops Runners](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/uncategorized/subnet-allocations.md) | |

#### Edge

Edge services are services that sit at the [network edge](https://www.cloudflare.com/learning/serverless/glossary/what-is-edge-computing/), or more generally, services that process inbound traffic.

| Service | Description | Co-Ownership? |
| ------- | ----------- | --------- |
| CDN | [Cloudflare](https://gitlab.com/gitlab-com/runbooks/-/tree/master/docs/cloudflare) | |
| DNS | [AWS Route 53](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/uncategorized/manage-dns-entries.md), [Cloudflare](https://gitlab.com/gitlab-com/runbooks/-/tree/master/docs/cloudflare) | |
| Load Balancing | [HAProxy](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/frontend/haproxy.md), Ingress | |
| Networking | [Cloud VPCs](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/uncategorized/subnet-allocations.md), [Cloudflare](https://gitlab.com/gitlab-com/runbooks/-/tree/master/docs/cloudflare) | |
| Rate Limiting | [Rate limiting](https://gitlab.com/gitlab-com/runbooks/-/tree/master/docs/rate-limiting) | shared ownership with development teams for specific endpoints and with abuse |
| RBAC/IAM | [Teleport](https://gitlab.com/gitlab-com/runbooks/-/tree/master/docs/teleport), GCP IAM permissions and project creation | |

## Getting Assistance

Should you require assistance from the Foundations team, please open an issue in the [Production engineering tracker](https://gitlab.com/gitlab-com/gl-infra/production-engineering/-/issues)

Apply one of the following templates:

- For issues pertaining to Teleport connections, use the [teleport-troubleshooting template](https://gitlab.com/gitlab-com/gl-infra/production-engineering/-/issues/new?issuable_template=teleport-troubleshooting)
- For issues pertaining to Cloudflare, use the [Cloudflare Troubleshooting template](https://gitlab.com/gitlab-com/gl-infra/production-engineering/-/issues/new?issuable_template=Cloudflare%20Troubleshooting)
- For anything else, use the [request-foundations template](https://gitlab.com/gitlab-com/gl-infra/production-engineering/-/issues/new?issuable_template=request-foundations)

- We also have team handles that ping the full team
  - Slack: `@infra-foundations`
  - GitLab: `@gitlab-org/production-engineering/foundations`

We rotate triage duties weekly between team members as part of our [interrupt rotation](#interrupt-rotation). 

### Priority Levels for Requests

| Priority | Description | Engagement SLA |
| ------- | ----------- | --------- |
| Priority::1 | Very urgent, blocking significant other work | Engage within 24 hours |
| Priority::2 | A blocker, but we have workarounds | Engage within 3 business days |
| Priority::3 | Not currently a blocker but will be soon | Engage within a week |
| Priority::4 | Not likely to be a blocker, this is a nice-to-have improvement or suggestion | Engage within a month |

**Note:** Due to the complexity of our systems, we cannot commit to a resolution-based SLA when you open an issue with a given priority level, because we don't know how long something will take to resolve, and there is often more information we need from the stakeholder or external customer, which takes time to obtain. Therefore, we can only commit to an SLA for how quickly we will engage with an issue and prioritize the work.

We endeavor to triage incoming requests twice per week. If you have an issue that is very urgent and requires immediate attention (i.e. Priority 1), please also send us a link to the request issue in our Slack channel: [#g_infra_foundations](https://gitlab.slack.com/archives/C0313V3L5T6).

## Considerations for tooling and maintaining our services.

- We support [dogfooding](/handbook/engineering/development/principles/#dogfooding) when it makes sense to do so.
  - We consider the scale at which we run gitlab.com and the additional engineering effort required to dogfood, weighed against the capacity and other priorities of the team.
- When considering external tooling, we look first to other open source projects that are part of [CNCF](https://www.cncf.io/)
- Further evaluation criteria include:
  - Technical Fit - How well does it solve the problem we need it to solve?
  - Service Maturity - How well developed is the tool, does it have a proven track record of being used at scale?
  - Maintainability - Does it have strong community engagement, which will ensure it is well maintained for the foreseeable future? Complexity of keeping it up to date?
  - Cost - Licensing costs when applicable, weighed against the cost of building and maintaining the tooling ourselves. Engineering time required to implement new tooling and maintain it, weighed against the benefit it brings.
  - License - Identify the specific license under which the open-source project is distributed (*GNU*, *MIT*, *ISC*, etc.). This allows us to ensure compatibility with other tools' licensing, contribute to the project if needed in the future, and understand the restrictions and risks associated with a specific license.

## Key Performance Indicators

KPIs for the team are currently under development in https://gitlab.com/gitlab-com/gl-infra/production-engineering/-/issues/24928.

We also internally track team and internal customer satisfaction with regular surveys.

### Internal survey results

- Team Satisfaction - current status: green
- Customer Satisfaction - current status: green (4.25/5.00)

For more context, see the related [discussion issue](https://gitlab.com/gitlab-com/gl-infra/production-engineering/-/issues/19167).

## Team Members

{{< team-by-manager-slug "sabrams" >}}

## Key Technical Skills

The Foundations Team must maintain a broad and diverse set of technical skills while also maintaining the ability to switch contexts frequently.  Some of these technical skills include:

 - Cloudnative Engineering - Proficiency in Kubernetes and the associated ecosystem of running cloudnative services.
 - Infrastructure as Code - Proficiency in Chef and Terraform
 - Network Systems - Understanding of network concepts and experience with our Edge stack (see Edge services above)

## Common Links

 - [Foundations Top Level Epic](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/1175)
 - [Foundations team meeting agenda](https://docs.google.com/document/d/1T5LIBt3RZR5TBLzkmRd08oMwfwiNFAr5ImPD5NP7lOw/edit?usp=sharing)
 - [Foundations OKRs](https://gitlab.com/gitlab-com/gitlab-OKRs/-/issues/?sort=updated_desc&state=opened&label_name%5B%5D=team%3A%3AFoundations&first_page_size=20)
 - GitLab Issues capture smaller, concrete pieces of work, and those labeled `~workflow-infra::In Progress` should be updated weekly or whenever a portion of work has been completed.
 - [#g_infra_foundations](https://gitlab.slack.com/archives/C0313V3L5T6) - work related discussions, external requests, etc
 - [#g_infra_foundations_social](https://gitlab.slack.com/archives/C04QVEXBVL3) - socializing and standups
 - [#g_infra_foundations_notifications](https://gitlab.slack.com/archives/C04RZC5TPPD) - automated MR notifications
 - [#g_infra_foundations_alerts](https://gitlab.enterprise.slack.com/archives/C04Q7RQC7FF) - pipeline failures and service alerts

## How We Work

### Team Sync meetings

- We have weekly synchronous meetings in two different time zones to encourage discussion, give status updates, triage incoming requests, and connect as a team.
  - [Agenda](https://docs.google.com/document/d/1T5LIBt3RZR5TBLzkmRd08oMwfwiNFAr5ImPD5NP7lOw/edit?usp=sharing)
  - [Youtube playlist](https://www.youtube.com/playlist?list=PL05JrBw4t0KqWfqy6IhKlVDUbk-f9NnmR).
- We have monthly retrospective meetings in two different time zones.
  - We celebrate our wins and look for ways we can improve team processes.
  - These meetings are not recorded to create a safe space for sharing transparently.
  - We use an online tool, teleretro.com, which allows for running retros across multiple time zones, enabling brainstorming without being able to see others responses, merging of related topics, and voting for what to discuss in more depth.
  - Action items for iterative improvements on processes are brought back to the team syncs following the monthly retro meetings.

### Standup

We have Geekbot automated checkins on Mondays and Fridays in the [#g_infra_foundations](https://gitlab.enterprise.slack.com/archives/C0313V3L5T6) channel. 
  - Monday questions include: 
    - What are your top priorities this week?
    - What did you accomplish last week?
    - What else is on your todo list for the week?
    - Any blockers or requests for pairing?
  - Friday questions include:
    - How did your week go?
    - What were your wins this week?

### Prioritization of work

We use priority labels to prioritize our work. OKR work is updated to `priority::2` when it is ready to be worked on. As such it is given higher priority than most other work. This means that external requests will be worked in based on their own priority and impact, where only P1 and P2 issues will regularly interrupt OKR work.

### Interrupt Rotation

The goal of the team member on interrupt rotation is to purposely plan to have interrupt work for a week so that the rest of the team can have less interrupt work. The [schedule is available in pager duty](https://gitlab.pagerduty.com/schedules#P7Y8O0E).

If a team member is unavailable for more than 2 days of the week they are on triage, they should seek to trade weeks or find coverage for the days they are out.

The team member on rotation is responsible for:

- Checking the [Production Engineering issue tracker](https://gitlab.com/gitlab-com/gl-infra/production-engineering/-/issues/?sort=created_date&state=opened&first_page_size=20) throughout the week and ensuring new issues related to Foundations:
  - Have the correct labels (team, priority, workflow, any other applicable category labels)
  - Have a [weight](#issue-weighting).
  - Are assigned to an [appropriate epic](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics?state=opened&page=1&sort=start_date_desc&label_name[]=team::Foundations) if applicable.
- Asking issue authors for more information when needed to understand the scope of work.
- Raising any `priority::1` or `priority::2` issues and ensuring they have a DRI and are being actively worked on.
- Completing any issues that come up that can be completed during the week. Weight 5 issues can be considered depending on the priority.
   - Anything weight 8 or larger (more than 1 week of work) should be made clear that it will need to be scheduled around other work.
- Responding to alerts in [`#g_infra_foundations_alerts`](https://gitlab.enterprise.slack.com/archives/C04Q7RQC7FF).
- Working on Renovate MRs posted in [`#g_infra_foundations_notifications`](https://gitlab.enterprise.slack.com/archives/C04RZC5TPPD).
   - Patch updates with passing pipelines should be merged.
   - Minor updates should have their changelogs be reviewed before merging.
   - Major updates should be looked at closely to understand breaking changes before considering merging.
- Responding to Terraform drifts related to Foundations services posted in [`#infra-terraform-alerts`](https://gitlab.enterprise.slack.com/archives/C06PZQCRUJH).
- Respond to any Access Requests that need Foundations provisioning.

### Project Management

The Foundations team top level Epic can be found [here](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/1175)
We follow Platforms Project Management practices as outlined in the [Handbook](/handbook/engineering/infrastructure/platforms/project-management/).
Below builds on top of those guidelines.

#### OKRs

- For Objectives and Key Results, we align with [Platforms guidance](/handbook/engineering/infrastructure/platforms/#okr) for creation and structure.

#### Epics

In addition to the format described in the [platforms project management page](/handbook/engineering/infrastructure/platforms/project-management/#epics), these sections may be helpful

```markdown

## Administrative

<!-- A copy paste section for creating child epics/issues, ensuring that they relate to the current epic and have the correct labels -->

\`\`\`
/epic [current epic]
/labels ~"group::Production Engineering" ~"Sub-Department::SaaS Platforms" ~"team::Foundations" ~"workflow-infra::Triage" ~"Reliability::P2" 
\`\`\`

## References

<!-- Links to related OKRs, Epics or issues, external resources etc -->

## Demos

| Demo Date | Demo Link | Highlights |
|-----------|-----------|------------|

## Decision log
<!-- A collapsible section to aggregate any decisions made along the way. Be sure to include "why" in addition to "what". -->

{{% details summary="Log" %}}
{{% details summary="date" %}}
[decision taken and why]
{{% /details %}}
{{% /details %}}

```

- Apply any applicable service labels.
- When changing the health status to anything other than "On track", give context for why in the weekly status update, including the plan to get back on track when possible.

#### Issues

Open planned work for our team is located in the [Production Engineering](https://gitlab.com/gitlab-com/gl-infra/production-engineering/) project. Issues should be updated whenever significant work occurs. New issues are expected to:

- Link to a related Epic.
- Include the following Labels (update the priority as needed):

   ```
   /labels ~"group::Production Engineering" ~"Sub-Department::SaaS Platforms" ~"team::Foundations" ~"workflow-infra::Triage" ~"Reliability::P4"
   ```

- If there is a service label that is applicable, also apply that.

##### Issue weighting

We dogfood the [weight feature](https://docs.gitlab.com/ee/user/project/issues/issue_weight.html) in issues. We use a modified Fibonacci sequence (the numbers match roughly with the number of days) and align our weights to t-shirt sizes to make them easy to talk about:

- Fib 1 (XS) - A few hours of work. Consider if the work should just be completed now depending on competing priorities.
- Fib 2 (S) - A day or two of work.
- Fib 5 (M) - Up to a week of work.
- Fib 8 (L) - Over a week of work. This issue should likely be broken down into smaller pieces.
- Fib 13 (XL) - Several weeks or more of work. This issue will need to be broken down into smaller pieces or promoted to an epic.
