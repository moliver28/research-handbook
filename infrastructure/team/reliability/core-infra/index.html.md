---
layout: handbook-page-toc
title: "Core Infra Team"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Who We Are

The Core Infra teams owns:
* core infrastructure tooling like:
  * [Terraform](https://gitlab.com/gitlab-com/gitlab-com-infrastructure)
  * [Chef](/handbook/engineering/infrastructure/production/architecture/#chef-architecture)
* network ingress/egress
  * [Networking](/handbook/engineering/infrastructure/production/architecture/#internal-networking-scheme)
* CDNs and DNS (/handbook/engineering/infrastructure/production/architecture/#dns--waf)
* [Secrets management](/handbook/engineering/infrastructure/production/architecture/#secrets-management) 
* Helping with Growth Stage assets like customers, license, and version.


Core Infra is:

| Person | Role |
| ------ | ------ |
|[David Smith](/company/team/#dawsmith)|[Engineering Manager, Reliability](/job-families/engineering/engineering-management-infrastructure/#engineering-manager-reliability)|
|[Alex Hanselka](/company/team/#ahanselka)|[Site Reliability Engineer](/job-families/engineering/site-reliability-engineer/)|
|[Devin Sylva](/company/team/#devin)|[Senior Site Reliability Engineer](/job-families/engineering/site-reliability-engineer/)|
|[Craig Barrett](/company/team/#craig)|[Senior Site Reliability Engineer](/job-families/engineering/site-reliability-engineer/)|
|[Cameron S McFarland](/company/team/#cmcfarland)|[Senior Site Reliability Engineer](/job-families/engineering/site-reliability-engineer/)|
|[Hendrik Meyer](/company/team/#T4cC0re)|[Site Reliability Engineer](/job-families/engineering/site-reliability-engineer/)|
|[Graeme Gillies](/company/team/#ggillies)|[Site Reliability Engineer](/job-families/engineering/site-reliability-engineer/)|

## Tenets
Our guiding principles center around implementing [boring solutions](https://about.gitlab.com/handbook/values/#boring-solutions) to infrastructure problems. We work to simplify interfaces and build robust workflows for other engineers within GitLab who utilize our platform to provide support for and deliver new features to the gitlab.com SaaS product. Over time this continues to expand to include additional/related applications, sites, and systems.

In practice, this means that we 
1. Manage all infrastructure resources via Infrastructure as Code or auditing tools
    * GCP [by Terraform](https://ops.gitlab.net/gitlab-com/gitlab-com-infrastructure)
    * Cloudflare / CDN [audited by a tool](https://ops.gitlab.net/gitlab-com/gl-infra/cloudflare-audit-log)
1. Develop automated workflows ensuring consistency, repeatability, predictability, and reliability
1. [Use GitLab to deploy and manage our infrastructure](https://about.gitlab.com/handbook/values/#dogfooding)
1. [Maintain a user-centric focus](https://about.gitlab.com/handbook/values/#customer-results), and [enable self-service functionality](https://about.gitlab.com/handbook/values/#self-service-and-self-learning) whenever possible
1. Work with other SRE teams to ensure common principles are upheld and services are maintained according to our [production readiness standards](https://gitlab.com/gitlab-com/gl-infra/readiness)
1. [Focus on small changes](https://about.gitlab.com/handbook/values/#iteration) and [embrace experimentation](https://about.gitlab.com/handbook/values/#accepting-uncertainty)


## Vision
* Move all Growth Stage apps to AutoDevops
* Help with moving compute to GKE
  * Smaller Chef footprint
  * More Autoscaling 
  * Secure and setup best practices for GKE cluster
* Create tools and processes for external teams to service requests themselves


## How we work:

#### Sprint Level
* We use a [Kanban board](https://gitlab.com/groups/gitlab-com/gl-infra/-/boards/1688496?milestone_title=%23started&label_name[]=team%3A%3ACore-Infra) to track work
* If you assign yourself to an issue, it goes in the Milestone, gets the team::CoreInfra label and then goes on the Board.
* We use a Geekbot standup daily to talk about what we are working on
* We do Core-Infra team retros monthly async via Geekbot put into the #sre_coreinfra channel

#### Planning / What's next?
* When external asks come in:
  * they can be commented on, but get a Workflow-Infra::triage Label to start
  * When added to the board, the should get labels ~unplanned, AssistType::x and AssistingTeam::x
* Planning: 
  * we have a [team radar](https://docs.google.com/drawings/d/1ohzs3lFCEGTDTg-cO0HNKvVHz1MCSIT54yAj4rr8gMc/edit).
  * The radar is not a roadmap, it is meant to be a guide of themes we are working on now and that we think we will be working on soon.

### Labels

The Core-Infra team routinely uses the following set of labels:

1. The team label, `team::Core-Infra`.
1. Priority labels  `Core-Infra::P1` through `Core-Infra::P4`.
1. Scoped `workflow-infra` labels.
1. Scoped `Service` labels.

The `team::Core-Infra` label is used in order to allow for easier filtering of
issues applicable to the team that have group level labels applied.

<a name="priority-labels">The priority labels</a> allow us to track the issues correctly and raise/lower priority of work based on both external and internal factors.

This means that the highest priority is given to working on issues that improve
Gitlab.com SLO's either immediately and directly, or by unblocking other issues
to achieve the same.

#### Workflow labels

The Core-Infra team leverages scoped workflow labels to track different stages of work.
They show the progression of work for each issue and allow us to remove blockers or change
focus more easily.

The standard progression of workflow is from top to bottom in the table below:

| State Label | Description |
| ----------- | ----------- |
| `workflow-infra::Triage` | Problem is identified and effort is needed to determine the correct action or work required. |
| `workflow-infra::Proposal` | Proposal is created and put forward for discussion and review. <br/>SRE looks for clarification and writes up a rough high-level execution plan if required. SRE highlights what they will check and along with soak/review time and developers can confirm. <br/>If there are no further questions or blockers, the issue can be moved into "Ready". |
| `workflow-infra::Ready` | Proposal is complete and the issue is waiting to be picked up for work. |
| `workflow-infra::In Progress` | Issue is assigned and work has started. <br/>While in progress, the issue should be updated to include steps for verification that will be followed at a later stage.|
| `workflow-infra::Under Review` | Issue has an MR in review. |
| `workflow-infra::Verify` | MR was merged and we are waiting to see the impact of the change to confirm that the initial problem is resolved. |
| `workflow-infra::Done` | Issue is updated with the latest graphs and measurements, this label is applied and issue can be closed. |

There are three other workflow labels of importance:

| State Label | Description |
| ----------- | ----------- |
| `workflow-infra::Cancelled` | Work in the issue is being abandoned due to external factors or decision to not resolve the issue. After applying this label, issue will be closed. |
| `workflow-infra::Stalled` | Work is not abandoned but other work has higher priority. After applying this label, team Engineering Manager is mentioned in the issue to either change the priority or find more help. |
| `workflow-infra::Blocked` | Work is blocked due external dependencies or other external factors. Where possible, a [blocking issue](https://docs.gitlab.com/ee/user/project/issues/related_issues.html) should also be set. After applying this label, issue will be regularly triaged by the team until the label can be removed. |


#### Priority labels

The Core-Infra team uses priority labels as a means to indicate order under which work is next to be picked up. Priorities are roughly defined as:

| Priority level  | Definition |
| --------------- | ---------- |
| `Core-Infra::P1` | Issue is blocking other team-members, or blocking other work.  As soon as possible after completing ongoing task unless directly communicated otherwise. |
| `Core-Infra::P2` | Issue has a large impact, or will create additional work. |
| `Core-Infra::P3` | Issue should be completed once other urgent work is done. |
| `Core-Infra::P4` | **Default priority**. A nice-to-have improvement, non-blocking technical debt, or a discussion issue. |


