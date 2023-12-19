---

title: "Create:Code Review BE Team"
description: The Create:Code Review BE team is responsible for all backend aspects of the product categories that fall under the Code Review group of the Create stage.
---







The Create:Code Review BE team is responsible for all backend aspects of the product categories that fall under the [Code Review group][group] of the [Create stage][stage] of the [DevOps lifecycle][lifecycle].

[group]: /handbook/product/categories/#code-review-group
[stage]: /handbook/product/categories/#create-stage
[lifecycle]: /handbook/product/categories/#devops-stages

We are currently focused on:

- [Code Review Workflow](https://about.gitlab.com/stages-devops-lifecycle/create/), mainly the [Merge Requests](https://docs.gitlab.com/ee/user/project/merge_requests/) features
- [GitLab CLI](https://gitlab.com/gitlab-org/cli)


## Group Members

The following people are permanent members of the Create:Code Review Group:

<%= direct_team(manager_role: 'Backend Engineering Manager, Create:Code Review', role_regexp: /Code Review/) %>

## Stable Counterparts

The following members of other functional teams are our stable counterparts:

<%= stable_counterparts(role_regexp: /Code Review/, direct_manager_role: 'Backend Engineering Manager, Create:Code Review') %>

## Metrics and KPIs

<%= partial("handbook/engineering/development/dev/create/code-review/backend/metrics.erb") %>

## Team OKRs

Objectives and Key Results (OKRs) help align our team towards what really matters. These happen quarterly, align up through the stage, and are based on [company OKRs](/company/okrs/) and the [engineering OKR process](/handbook/engineering/#engineering-okr-process). We check in on the status of our progress routinely throughout the quarter, at least on a monthly basis, to determine whether we are on track or need to pivot in order to accomplish or change these goals.

[For a list of current and past OKRs for our team, use this link.](https://gitlab.com/gitlab-com/gitlab-OKRs/-/issues/?sort=title_asc&state=opened&label_name%5B%5D=group%3A%3Acode%20review&first_page_size=20)

## How We Work

See the [work section](/handbook/engineering/development/dev/create/code-review/#work) of the main Code Review page.

### Working with our team

As stewards for some of the more high profile features - Merge Request pages, Approval Rules, etc - we receive a large number of inquires and requests for assistance or information about them, as well as the dependent features that it encompasses. We welcome them, as issues or Slack inquires, and we strive to be responsive to these, in the interest of [Collaboration](https://about.gitlab.com/handbook/values/#collaboration) and [Results](https://about.gitlab.com/handbook/values/#results), but we also must balance the value of [Efficiency](https://about.gitlab.com/handbook/values/#efficiency).

Our target is to respond to incoming requests within 2 working days, although we will frequently respond more quickly, depending on team member availability, experience, and workload.

To contact the Code Review BE team in GitLab, you can use the `@code-review-be` handle.

### Meeting Schedule

[Team members](/handbook/engineering/development/dev/create/code-review/backend/#team-members) meet monthly and are encouraged to join in order to to interact with peers, solve technical challenges, and discuss freely with each other. You can check for the next meeting on the [Code Review Group calendar](https://calendar.google.com/calendar/embed?src=c_bt3jpkj6afr7321vpg9ra1191s%40group.calendar.google.com&ctz=America%2FChicago).

#### Planning

> If you haven't read the code, you haven't investigated deeply enough
>
> -- <cite>Nick Thomas</cite>

To assign weights to issues in a future milestone, on every 4th of the development month (or the next working day if it falls on a holiday or weekend), BE engineers look at the list of issues that are set for next milestone. These are assigned by the engineering manager. To weight issues, before the 15th of the month, they should:

1. See if there is already a discussed backend solution/plan or none yet.
1. If the discussed backend solution/plan isn't that clear, clarify it.
1. If there's no solution/plan yet, devise one. Doesn't need to be a detailed solution/plan. Feel free to ask other people to pick their brains.
1. If there's a need to collaborate with a stable counterpart to devise a solution/plan, add a comment and tag relevant counterparts.
1. Give the issue a weight if there's none yet or update if the existing weight isn't appropriate anymore. Leave a comment about why a certain weight is given.
1. It's strongly encouraged to spend no more than 2 hours per issue. Give it your best guess and move on if you run out of time.
1. Label the issue as ~"workflow::ready for development".
1. Unassign yourself or keep it assigned if you want to work on the issue.

#### Follow-up issues

You will begin to collect follow-up issues when you've worked on something in a release but have tasks leftover, such as technical debt, feature flag rollouts or removals, or non-blocking work for the issue. For these, you can address them in at least 2 ways:
* Add an appropriate future milestone to the follow-up issue(s) with a weight and good description on the importance of working this issue
* Add the issue(s) to the relevant [planning issue](https://gitlab.com/gitlab-org/create-stage/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=group%3A%3Acode%20review&search=planning)

You should generally take on follow-up work that is part of our [definition of done](https://docs.gitlab.com/ee/development/contributing/merge_request_workflow.html#definition-of-done), preferably in the same milestone as the original work, or the one immediately following. If this represents a substantial amount of work, bring it to your manager's attention, as it may affect scheduling decisions.

If there are many follow-up issues, consider creating an epic.

#### Backend and Frontend issues

Many issues require work on both the backend and frontend, but the weight of that work may not be the same. Since an issue can only have a single weight set on it, we use scoped labels instead when this is the case: `~backend-weight::<number>` and `~frontend-weight::<number>`.

### What to work on

<%= partial("handbook/engineering/development/dev/create/what_to_work_on.erb", locals: { group: "Code Review", slack_channel: 'g_create_code-review' }) %>

[issue board]: https://gitlab.com/groups/gitlab-org/-/boards/412126?label_name[]=group::code%20review&label_name[]=backend
[assignment board]: https://gitlab.com/groups/gitlab-org/-/boards/2142016

### Deep Dives

<%= partial("handbook/engineering/development/dev/create/deep_dives.erb") %>

### Performance Monitoring

The Create:Code Review BE team is responsible for keeping some API endpoints and
controller actions performant (e.g. below our target speed index).

There are Grafana and Kibana dashboards available that the team can check to
ensure we are meeting these targets.

Here are the Kibana dashboards that give a quick overview on how they perform:

- [Create::Code Review Controller Actions](https://log.gprd.gitlab.net/app/visualize#/edit/f21d2820-8643-11eb-966b-2361593353f9?_g=(filters%3A!()%2CrefreshInterval%3A(pause%3A!t%2Cvalue%3A0)%2Ctime%3A(from%3Anow-7d%2Cto%3Anow))) (internal only)
- [Create::Code Review: API Endpoints](https://log.gprd.gitlab.net/app/visualize#/edit/89f9a6f0-8644-11eb-a990-d72c312ff8e9?_g=(filters%3A!()%2CrefreshInterval%3A(pause%3A!t%2Cvalue%3A0)%2Ctime%3A(from%3Anow-7d%2Cto%3Anow))) (internal only)
- [Create::Code Review: Sidekiq Workers](https://log.gprd.gitlab.net/goto/b73a4a65e136eeedfa00b404a009e31f) (internal only)

These tables are filtered by the endpoints and controller actions that the group
handles and sorted by P90 (slowest first) for the last 7 days by default.

The [Grafana dashboard](https://dashboards.gitlab.net/d/stage-groups-code_review/stage-groups-group-dashboard-create-code-review?orgId=1)
shows more specific details about each actions and endpoints.

To see the specific details for certain actions/endpoints, it can be filtered
by `action` and/or `controller`.

#### Issue identification process

1. Every week we check the kibana and grafana dashboards as per the calendar invite
2. If we identfiy an endpoint or worker that meets our severity criteria we create an issue (if not created already) and label it based on our severity and priority criteria
   * If an issue is already created, check whether the severity/priority needs to be updated
3. This issue should contain as much information on why it is the severity/priority as logs are often held for only 7 days
4. Using a [specific performance issue board](https://gitlab.com/gitlab-org/gitlab/-/boards/2621072) we can keep track of our current issues and they will be prioritized accordingly during planning

#### Priority and Severity

More details can be found in the handbook for [severity](/handbook/engineering/infrastructure/engineering-productivity/issue-triage/#severity) and [priority](/handbook/engineering/infrastructure/engineering-productivity/issue-triage/#priority)

#### Calendar Invites

There are calendar invites that act as a reminder for backend team members
to check these dashboards weekly on Monday:

- APAC: Check performance dashboards - set on Monday 12AM UTC
- AMER: Check performance dashboards - set on Monday 4PM UTC

All backend team members are invited to appropriate calendar invites. This
does not necessarily mean that we only need to take a look at them at those
specific times.

If a team member sees that an action or endpoint does not meet our target,
they should create a performance issue if there's no existing one. If there's
an existing one, team member can either update the issue, investigate or work
on the issue (if they have spare time).

#### Responsibilities of Issue Triage

- Do a weekly review of the triage board and make sure these issues are investigated by assigning them to developers or performing the investigation
- Coordinate with Product Manager to get those issues assigned to milestones so that they can be worked on in timely manner
- Check issues in each column in the order of severity. `~missed-SLO` -> `~approaching-SLO` -> `~severity::1` -> `~severity::2` -> `~severity::3` -> `~severity::4`
- Ensure the severity label is accurate based on the problem investigated
- Our aim is getting to 0 issues in `~missed-SLO` column eventually and handle issues well before they get labeled as `~missed-SLO` and `~approaching-SLO`

## Additional Resources

In addition to the information on this page, here is some additional information for our team members:

### Engineer Resources

For additional resources that may help the engineers on the Create:Code Review BE team, like team building and career development, see:

[Create:Code Review BE Engineer Resources](/handbook/engineering/development/dev/create/code-review/backend/engineers)

### Engineering Manager Resources

For additional resources relating to the enginineering manager on the Create:Code Review BE team, like milestone planning, talent assessments, and project managenet resources, see:

[Create:Code Review BE Engineering Manager Responsibilities](/handbook/engineering/development/dev/create/code-review/backend/manager)
