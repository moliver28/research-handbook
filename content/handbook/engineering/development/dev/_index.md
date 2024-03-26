---
title: Dev Sub-department
---

## Vision

Enable engineers across the world by having top notch planning and issue tools for managing their work, awesome tools to organize their code and evolve their codebase through the best code review and online editing experience.
Support organizations to have an easy entrance level to use GitLab by having great import capabilities, a great documentation experience and administration tools.

We thrive for ownership of the things that we built by having a clear view on its performance and stability in production. We constantly challenge ourselves to build a better, faster and more robust application.

## Mission

The Dev sub-department is taking care of the first part of the DevSecOps Lifecycle with the following stages and the specific groups:

1. [Manage](/handbook/product/categories/#manage-stage)
    - [Manage:Foundations](/handbook/engineering/development/dev/manage/foundations/)
    - [Manage:Import and Integrate](/handbook/engineering/development/dev/manage/import-and-integrate)
1. [Plan](/handbook/product/categories/#plan-stage)
    - [Plan:Project Management](/handbook/engineering/development/dev/plan-project-management/)
    - [Plan:Product Planning](/handbook/engineering/development/dev/plan/product-planning/)
    - [Plan:Optimize](/handbook/engineering/development/dev/plan/optimize)
    - [Plan:Editor](/handbook/engineering/development/dev/plan/editor/)
1. [Create](/handbook/product/categories/#create-stage)
    - [Create: Source Code BE](/handbook/engineering/development/dev/create/source-code-be/)
    - [Create: Source Code FE](/handbook/engineering/development/dev/create/code-review/frontend/)
    - [Create: Code Review BE](/handbook/engineering/development/dev/create/code-review/backend/)
    - [Create: Code Review FE](/handbook/engineering/development/dev/create/code-review/frontend/)
    - [Create: IDE](/handbook/engineering/development/dev/create/ide/)
    - [Create: Code Creation](/handbook/engineering/development/dev/create/code-creation/)
    - [Create: Editor Extensions](/handbook/engineering/development/dev/create/editor-extensions/)
    - [Create Frontend](/handbook/engineering/frontend/create/)

## Who we are

### Manage

#### Manage:Foundations

{{< team-by-manager-role "Engineering Manager(.*)Manage:Foundations" >}}

#### Manage:Import and Integrate

{{< team-by-manager-role "Engineering Manager(.*)Manage:Import and Integrate" >}}

### Plan

#### Plan:Project Management

{{< team-by-manager-role "Engineering Manager(.*)Plan:Project Management" >}}

#### Plan:Product Planning

{{< team-by-manager-role "Engineering Manager(.*)Plan:Product Planning" >}}

#### Plan:Optimize

{{< team-by-manager-role "Engineering Manager(.*)Plan:Optimize" >}}

#### Plan:Knowledge


{{< team-by-manager-role role="Senior Manager, Engineering(.*)Plan" team="[,&] (Plan:Knowledge)" >}}

### Create

#### Create:Code Review

{{< team-by-manager-role "Backend Engineering Manager(.*)Create:Code Review" >}}

#### Create:Code Review Frontend

{{< team-by-manager-role role="Frontend Engineering Manager(.*)Create:Source Code" team="Create:Code Review" >}}

#### Create:Code Creation

{{% team-by-manager-role role="Backend(.*)Manager(.*)Create:Code Creation" %}}

#### Create:Editor Extensions

{{% team-by-manager-role role="(.*)Manager(.*)Create:Editor Extensions" %}}

#### Create:IDE

{{< team-by-manager-slug "adebayo_a" >}}

#### Create:Source Code

{{< team-by-manager-role "Backend Engineering Manager(.*)Create:Source Code" >}}

#### Create:Source Code Frontend

{{< team-by-manager-role role="Frontend Engineering Manager(.*)Create:Source Code" team="Create:Source Code" >}}

## Stable Counterparts

The following members of other functional teams are our stable counterparts:

{{< stable-counterparts manager-role="Director of Engineering, Dev" role="[,&] Dev" >}}

## How we work

### Error Budgets

[Error budgets](/handbook/engineering/error-budgets/) are one of the Dev sub-department/section's performance indicators. They're vital in determining how reliable services within Dev are over any given timeframe. The budget is spent any time user-facing services experience a percentage of errors or latency breaching their defined thresholds. We track our error budgets using [Grafana dashboards](https://dashboards.gitlab.net/d/stage-groups-detail-compliance/stage-groups-compliance-group-error-budget-detail?orgId=1&from=now-7d&to=now&search=open&folder=current).

Engineering Managers in Dev focus on the **7-day timeframe** of their error budget. An example dashboard can be found [here](https://dashboards.gitlab.net/d/stage-groups-detail-compliance/stage-groups-compliance-group-error-budget-detail?orgId=1&from=now-7d&to=now).

#### Reporting your groups error budget, reliability, and security status

Every week, engineering leaders meet to discuss topics including the error budgets across the entire Engineering Division.

Dev engineering leaders use [this Google document](https://docs.google.com/document/d/1Bef644PX8C5zq1CrbNwcg7SoAxUY2WyOKyXVwXlbMmk/edit) to track our error budget status week-over-week, which are then reported on in these meetings by senior leadership.

Engineering Managers are advised to report up to their managers, or self-report the status of their group on Monday's using the above document to ensure we have an accurate weekly snapshot of the sub-department's error budget status, outstanding reliability issue status, and past due security issues.

#### Automating a weekly check-in on your error budget

One way that groups can keep error budgets in mind is by automating a weekly reminder in Slack to check on their error budget.

A [Slack workflow](https://gitlab.com/gitlab-com/gl-infra/scalability/-/snippets/2299544) can be created that allows any member of the team to provide a quick update on the current error budget status.

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "SECTION_LABEL"="dev" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
  {{< tableau/filters "SECTION_LABEL"="dev" >}}
{{< /tableau >}}

## Common Links

- Issue Tracker
- Slack Channels
    - #sd_dev_engineering
    - #s_manage
    - #s_plan
    - #s_create
