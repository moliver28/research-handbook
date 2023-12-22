---
title: "Create:Code Creation Group"
description: The Create:Code Creation Group is responsible for all product categories that fall under the Code Creation group of the Create stage.
---

## Mission

Redefine code creation using artificial intelligence.
Our goal is to empower developers with intelligent code suggestions,
enhancing their efficiency and enabling them to craft outstanding software.

## Team Members

The following people are permanent members of the Code Creation Team:

{{% team-by-manager-role role="Backend(.*)Manager(.*)Create:Code Creation" team="Code Creation" %}}

You can reach the whole team on GitLab issues/MRs by using the `@code-creation-team` handle.

## Stable Counterparts

The following members of other functional teams are our stable counterparts:

{{% stable-counterparts manager-role="Backend(.*)Manager(.*)Create:Code Creation" role="Code Creation$" %}}

## Definitions

A lot of the terms we use in this area sound similiar and can be confusing at first. Here are the basic basic terms:

- **Code Creation**: The group name and a collection of features realating to providing AI generated code
- **Code Suggestions**: A feature within Code Creation that provides AI-generated code within an IDE
   - **Code Completion**: A short AI-generated suggestion intended to complete an existing line or block of code
   - **Code Generation**: A longer AI-generated suggestion intended to create entire functions, classes, code blocks, etc.
- **Duo Chat**: Another feature that interacts with GitLab Duo Chat to write new code, refactor existing code, or scan code for vulnerabilities

If it helps, here are these terms in a diagram:

```mermaid
stateDiagram
    direction LR
    
    state "Code Creation" as creation
    state "Code Suggestions" as suggestions
    state "Code Completion" as completion
    state "Code Generation" as generation
    state "Duo Chat Features" as duo

    creation --> suggestions
    creation --> duo
    suggestions --> completion
    suggestions --> generation
```

## Issues and Priorities

Our current focus is on releasing Code Suggestions to a wider audience and making it [GA](/handbook/product/gitlab-the-product/#experiment-beta-ga).
To prepare for that we use the following labels:

- `CodeSuggestions::P1`: **Must-have** items for GA
- `CodeSuggestions::P2`: Items we **should have** for GA
- `CodeSuggestions::P3`: **Nice-to-have** items

You can find this on our [Kanban board](https://gitlab.com/groups/gitlab-org/-/boards/7089113)

## Hiring

Check out our [jobs page](/jobs/) for current openings.

## Code Creation Onboarding

To help get started as a developer with the Create:Code Creation team, we have created an
[onboarding issue template](https://gitlab.com/gitlab-com/create-stage/code-creation/team-tasks/-/issues/new?issuable_template=developer_onboarding).

## Common Links

- Product Categories: [Code Creation](/handbook/product/categories/#code-creation-group)
- Direction: [Code Suggestion Direction](https://about.gitlab.com/direction/create/code_suggestions/)
- Issue Tracker: [GitLab Issue Search](https://gitlab.com/groups/gitlab-org/-/issues/?sort=due_date&state=opened&label_name%5B%5D=group%3A%3Acode%20creation&first_page_size=20)
- Epics: [Accelerate Code Suggestions Epic](https://gitlab.com/groups/gitlab-org/-/epics/9814) and [general GitLab Epic Search](https://gitlab.com/groups/gitlab-org/-/epics?state=opened&page=1&sort=start_date_desc&label_name[]=group::code+creation)
- Slack Channel: [#g_code_suggestions](https://gitlab.slack.com/archives/C048Z2DHWGP)

## Code Suggestion Dashboards

1. [Usage](https://app.periscopedata.com/app/gitlab/1143612/Code-Suggestions-Usage)
1. [Trends in Errors / Failed suggestion requests or authentication attempts](https://log.gprd.gitlab.net/app/dashboards#/view/6c947f80-7c07-11ed-9f43-e3784d7fe3ca?_g=(refreshInterval:(pause:!t,value:0),time:(from:now-6h,to:now)))
1. [Acceptance Rate](https://log.gprd.gitlab.net/app/dashboards#/view/6c947f80-7c07-11ed-9f43-e3784d7fe3ca?_g=h@2294574) (working on getting this into Sisense)
1. Cost tracking
1. [Language information](https://dashboards.gitlab.net/d/code_suggestions-language/code-suggestions-language?orgId=1)
1. [SLIs](https://dashboards.gitlab.net/d/code_suggestions-main/code-suggestions-overview?orgId=1)
1. [Triton requests](https://dashboards.gitlab.net/d/code_suggestions-triton/code-suggestions-triton?orgId=1)
1. [Rails API Latency for Tokens](https://dashboards.gitlab.net/d/api-rails-controller/api-rails-controller?orgId=1&var-PROMETHEUS_DS=Global&var-environment=gprd&var-stage=main&var-controller=Grape&var-action=POST%20%2Fapi%2Fcode_suggestions%2Fcompletions&from=now-15m&to=now)
1. [Rails API Latency for Completions](https://dashboards.gitlab.net/d/ai-assisted-main/ai-assisted-overview?orgId=1)
