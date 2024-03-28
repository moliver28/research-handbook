---
aliases: /handbook/engineering/infrastructure/core-platform/systems/distribution/workflow.html

title: "Distribution Team Workflow"
description: "Overview of how work is performed by Distribution Engineers, for Omnibus, Helm and other Engineering projects."
---







## Common links

* [Engineering Team Workflow](/handbook/engineering/workflow/)

## Summary

Distribution team members are expected to:

* Be kind in their interaction with the rest of the community and other teams
* Ensure that fixing red master branch in projects takes the highest priority
* Pick items to work on from the project scheduled queues
* Define test plans for changes not covered by integration tests
* Label issues and merge requests to track [engineering metrics](/handbook/engineering/metrics/)

## Groups

The distribution team is comprised of two groups, Distribution:Build and Distribution:Deploy.

### Distribution Build tasks

- Maintain all team pipelines for all Distribution projects
- Research for the support of new clouds, platforms, architecture, and components
- Access controls, permissions, and CVE patches
- Team infrastructure/resource management
- Dependency updates
- License management
- Submissions to Partners for validations/certifications

### Distribution Deploy tasks

- Initial installation and composability
- Upgrades / Downgrades
- Scaling deployments
- Migration between platforms or providers
- Data lifecycle management
- Secure configuration & communication
- Research of clouds and platforms for integration to existing tools

## Work prioritization

Work to be completed by the Distribution team members who are not currently
acting as the [Distribution DRI](#distribution-dri) is prioritized as follows:

Priority level | Work item
-|-
1 | Unblock in-review `~priority::1` Merge Requests
1 | Pick up `~priority::1` [Merge Requests for review][MR dashboard]
1 | Work on in-progress `~priority::1` [Deliverable Issues][Deliverable board]
1 | Pick up available `~priority::1` [Deliverable Issues][Deliverable board]
2 | Unblock remaining in-review Merge Requests
3 | Work on in-progress `~priority::2` [Deliverable Issues][Deliverable board]
3 | Pick up [SLO-breaching][SLO] [Merge Requests for review][MR dashboard]
4 | Pick up [SLO-near-breaching][SLO] [Merge Requests for review][MR dashboard]
5 | Pick up available `~priority::2` [Deliverable Issues][Deliverable board]
6 | Work on in-progress `~priority::3` [Deliverable Issues][Deliverable board]
6 | Pick up available `~priority::3` [Deliverable Issues][Deliverable board]
6 | Pick up [SLO-non-breaching][SLO] [Merge Requests for review][MR dashboard]
7 | Work on in-progress `~priority::4` [Deliverable Issues][Deliverable board]
7 | Pick up available `~priority::4` [Deliverable Issues][Deliverable board]

Use this prioritization outline as a general guide when determining what to do each day. This list helps direct
work toward overall team priorities and goals laid out by the team managers.

## Scheduled work

Engineering manager and Product manager are responsible for scheduling
work that is a direct responsibility of the Distribution team.

Work can be (very) roughly divided as:

* Work in [the omnibus-gitlab](https://gitlab.com/gitlab-org/omnibus-gitlab/) project
* Work in [the GitLab Helm chart](https://gitlab.com/gitlab-org/charts/gitlab) project
* Other work (in [projects owned by the team](/handbook/engineering/infrastructure/core-platform/systems/distribution/#projects))

All scheduled work for omnibus-gitlab, Helm charts and team projects is shown on the [Deliverable board](https://gitlab.com/groups/gitlab-org/-/boards/1282058?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Deliverable&label_name[]=group%3A%3Adistribution). Use additional filters to see specific milestones, etc.

### Label definitions

There are a number of labels applied at any time to Epics, issues and merge requests (items),
but there is a priority, first being the highest:

* `Deliverable` - Issues with this label are agreed between team EM and the PM and have the highest overall priority. If you are looking for new work to pick up,
unassigned issues should be tackled in order of priority label. Deliverable issues not closed in a given milestone are auto forwarded
via [milestone cleanup](/handbook/engineering/workflow/#milestone-cleanup) workflow.
* `group::distribution` - Items specific to, or authored by Distribution team. It is a [scoped label](https://docs.gitlab.com/ee/user/project/labels.html#scoped-labels) to be applied to all Distribution subgroups items until further guidance.
* `group::distribution::*` - Items specific to, or authored by one of Distribution subgroups. They are [nested scope labels](https://docs.gitlab.com/ee/user/project/labels.html#nested-scopes), and mutually exclusive, but can be used with `group::distribution` scoped label together.
  * `group::distribution::build` - Items specific to, or authored by [build](/handbook/engineering/infrastructure/core-platform/systems/distribution/#distributionbuild-charter) group.
  * `group::distribution::deploy` - Items specific to, or authored by [deployment](/handbook/engineering/infrastructure/core-platform/systems/distribution/#distributiondeploy-charter) group.
* `Stretch` - Items with this label are scheduled for work similar like
the items with `Deliverable` label but with lower priority. If items with this label are not delivered in the current cycle, they will become `Deliverable` in the next release.
* `Distribution OBJ::*` (1-4) - Items relate to a Distribution objective, usually combine with quarterly label. It is a [scoped label](https://docs.gitlab.com/ee/user/project/labels.html#scoped-labels). i.e. `Distribution OBJ::1`. The number (*) associates with a [OKR](https://gitlab.com/gitlab-com/gitlab-OKRs/-/issues/?sort=created_date&state=opened&label_name%5B%5D=group%3A%3Adistribution&first_page_size=50) item prefix number in a given quarter.
* `Distribution KR::*` (1-4) - Items relate to a Distribution key result, usually combine with objective and quarterly label. It is a [scoped label](https://docs.gitlab.com/ee/user/project/labels.html#scoped-labels). i.e. `Distribution KR::3`. The number (*) associates with a [OKR](https://gitlab.com/gitlab-com/gitlab-OKRs/-/issues/?sort=created_date&state=opened&label_name%5B%5D=group%3A%3Adistribution&first_page_size=50) item prefix number in a given quarter.
* `FY(Year in two digitals)::*` (1-4) - [scoped label](https://docs.gitlab.com/ee/user/project/labels.html#scoped-labels) to indicate efforts targeted for release within a quarter. i.e. `FY24::Q2`.
* `Unscheduled` - Items with this label are being worked on in this release but have not been previously scheduled by the EM and PM. Work on this items is
usually event driven - another team requires help, regression affecting users, or technical debt that is causing inefficiency in the team.
* `Internal` - Items with this label contain work that is not directly user facing, work such as technical debt, refactoring and workflow improvements. This label is a direct measurement of team effectiveness. If there are too many
items in this list, project is in danger of being overwhelmed with bugs caused by technical debt.
* `Maintenance` - Items with this label are related to regular maintenance. Items include tasks such as: upgrading versions of libraries that are shipped,
follow ups from review to improve some part of the code and similar.
* `For Scheduling` - Items with this label have been discussed between the team and the item creator,
and they require some work before they are resolved. Items with this label are triaged and will be
picked up by EM and PM for scheduling in the regular process.
* `Blocked` - Items with this label are blocked by other work. When adding this label, always include a comment referencing blocking issues or MRs.
* `spike` - Issues which primarily involve research to understand options and the breakdown of future deliverables. [Spikes](/handbook/product/product-processes/#spikes) are often the first issue in a new Epic where the output defines additional issues and order of serial/parallel work.
* `workflow::In dev` - When an engineer is ready to start on active development, this label should be added. This allows EM and PM to understand which issues are being worked and not just assigned.

In addition to the labels outlined above, see also [workflow labels used during merge request review](merge_requests.html#workflow) and [labels used during issue triage](triage.html#label-glossary).

Any unassigned issue is available for anyone to work on. You can show your interest in working on a specific task by leaving a comment in the issue.
To do so, comment must contain the *date* on which you will commence the work. If the comment does not contain the date, or the date has passed, the item is free to be picked up by anyone again.

All merge requests created by the team must include the `group::distribution` label, and issues to be worked on by the team should also have `group::distribution`.

### omnibus-gitlab project

The omnibus-gitlab project is a long running packaging project for GitLab and
as such it has had a number of years of development behind it. Since it is used to create our bread and butter installation method, the work is carried out
within the regular monthly release cycle to align with the rest of GitLab
development.

The contribution process is defined in the [Contribute to GitLab development](https://docs.gitlab.com/ee/development/contributing/) docs.

### GitLab Helm charts

GitLab Helm charts are the newest installation method maintained by the Distribution team. Even though the project is generally available, the project is very fast paced to match the fast pace of communities around Kubernetes and Helm.

Due to the above, the project has a slightly different workflow compared to the omnibus-gitlab project.

The labels described above apply to this project as well, but there is an additional set of labels being
applied to each item.

All tasks are assigned to a weekly label. Labels are tied to a week of a specific milestone in the projects history:

* Labels in `0.0.X` range show the number of weeks that the project was worked on in pre, Alpha and Beta phases. Last label in that range was `0.0.42` which means that 42 weeks were used to get the project to  generally available status
* Labels in `0.1.X` range show the number of weeks since GA but before the next big milestone.
* Next change in label will be `0.2.X`, and it will describe the moment Chart reaches zero-downtime upgrades.

The label is used as a measure in how much time it is taking to work on one issue from the moment the item has been assigned to a milestone.
This allows us to estimate the priority of an issue or recognise if an issue needs to be split.
This measure is very important for making future decisions as items that seem
very urgent can be safely reprioritised due to previous experiences.

### Other projects

Any of the other projects in teams responsibility do not have a specific process assigned. The items not directly in any of the two above projects
will be assigned directly and deadlines set by the EM.

## Distribution DRI

In order to minimize disruption and context switching for team members, Distribution designates one engineer on a weekly rotation basis (DRI, Directly Responsible Individual), who will be responsible for the following duties during their normal office hours. For urgent requests outside of those hours, it will be handled via the [on call process](/handbook/on-call/).

### Expectation

Similar to [Development Escalation Process](/handbook/engineering/development/processes/Infra-Dev-Escalation/process.html#expectation), the DRI is not solely responsible for a resolution of any requests, they should engage any SME and escalate to engineering manager and/or product manager whenever requires. In addition to that, there is also no expectation that the DRI can complete the same amount of `Deliverable` work during the week.

### Duties

The Distribution DRI works on the following areas per the order of the list.

#### During the week

1. Support production incident
1. [Support customer request and call](/handbook/engineering/infrastructure/core-platform/systems/distribution/#engaging-distribution-for-expertise-in-support) ([Issue list](https://gitlab.com/gitlab-org/distribution/team-tasks/-/issues/?sort=created_date&state=opened&label_name%5B%5D=support%20request&or%5Blabel_name%5D%5B%5D=Help%20group%3A%3ADistribution%20Build&or%5Blabel_name%5D%5B%5D=Help%20group%3A%3ADistribution%20Deploy&first_page_size=20))
1. Answer or redirect questions in Slack channel [#g_distribution](https://gitlab.slack.com/archives/C1FCTU4BE)
1. [Triage issues](/handbook/engineering/infrastructure/core-platform/systems/distribution/triage.html)
1. Response `@gitlab-org/distribution` group mention in GitLab
1. ***Optional***: work on `Deliverable`
1. Work on any Distribution topic inspiring you the most

#### Handover

If any request is still on going by the end of the week, the DRI should consider one of the following with their best judgement:

1. Close the request with mitigation and open a follow-up issue to be triaged by our regular triage process.
1. Update the request with a comment to hand it over to the next week's DRI.
1. It might be the most efficient way to continue with the request as a SME, however, it is still highly encouraged to hand it over with documentation for knowledge sharing if feasible.
1. Discuss anything else with the upcoming DRI.

### Other team members

When you are not on DRI duty, please consider the following when the request is not [Stuff that should Just Work](https://gitlab.com/groups/gitlab-org/-/labels?subscribed=&search=Stuff+that+should+Just+Work):

1. Redirect any [active incident](/handbook/engineering/infrastructure/incident-management/) and [deployment blocker](/handbook/engineering/deployments-and-releases/deployments/#deployment-blockers) request to the Distribution DRI during their normal office hours, or take the request if you are the first available team member
1. Redirect any Slack DM to the channel [#g_distribution](https://gitlab.slack.com/archives/C1FCTU4BE)
1. Redirect any GitLab direct mention to `@gitlab-org/distribution` group
1. Redirect any other requests to [How to work with Distribution](/handbook/engineering/infrastructure/core-platform/systems/distribution/#how-to-work-with-distribution)

## Iteration

Use iteration to better control scope and deliver measurable value in each release. A timebox measurement process would ensure that if expected progress isn’t achieved, there’s a procedure to follow.

* If a project goes more than 2 milestones without delivering on the success criteria within the defined MVC/issue, a detailed evaluation/retrospective should be performed.
* If the project goes 3 milestones without meeting success criteria, then a larger evaluation should be performed with the section leaders.

The goal is to catch scope creep, ensure we are iterating in ways that deliver measurable value, and establish circuit breakers to address earlier as needed.

## Distribution dependency maintenance policy

Distribution team follows below dependency maintenance policy in order to achieve our [technology vision](/handbook/engineering/infrastructure/core-platform/systems/distribution/#vision).

Distribution aims to add support to newer release of Distribution managed dependencies within 3 to 5 milestones after their original release unless specified below otherwise.

## Kubernetes release support policy

Distribution team follows [kubernetes release support policy](k8s-release-support-policy.html) for supporting Kubernetes releases.

Distribution aims to add support for newer releases of Kubernetes within 3 months of their release.

### OS

All the operating systems supported by GitLab and their EOL policy are listed in the [Supported OS doc page](https://docs.gitlab.com/ee/administration/package_information/supported_os.html) and [installation page](https://about.gitlab.com/install/).

For new OS release, Distribution team aims to provide Linux package support per the below timeline:

| OS | Expected to be supported by |
| ------ | ------ |
| Ubuntu LTS release | within 2 milestones after OS release date |
| RHEL(& RHEL Clones) major and minor release | within 3 milestones after OS release date |
| Debian LTS and minor release | within 3 milestones after OS release date |
| All others minor release | within 3 milestones after OS release date |
| All others major release | within 4 milestones after OS release date |

## Interviews

See the [`hiring-process`](https://gitlab.com/gitlab-com/people-group/hiring-processes/-/tree/master/Engineering/Infrastructure/Platforms/Distribution)
project for information on conducting interviews for positions on the Distribution team.

[SLO]: https://about.gitlab.com/handbook/engineering/infrastructure/core-platform/systems/distribution/merge_requests.html#service-level-objective
[MR dashboard]: https://gitlab-org.gitlab.io/distribution/monitoring/mrs/
[Deliverable board]: https://gitlab.com/groups/gitlab-org/-/boards/2415614?label_name[]=Deliverable&label_name[]=group%3A%3Adistribution&assignee_id=None&milestone_title=Upcoming
