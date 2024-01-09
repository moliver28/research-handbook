---
title: "Create:Code Creation Group"
description: The Create:Code Creation Group is responsible for all product categories that fall under the Code Creation group of the Create stage.
---

## Team Vision

We envision a world where our innovations in AI-driven code creation not only enhance productivity but also inspire creativity, enabling developers to tackle more complex challenges and push the boundaries of what's possible in software development.

## Team Mission

Develop cutting-edge AI-powered tools that enhance the efficiency and creativity of software engineers. We are committed to providing intelligent code suggestions that not only streamline coding tasks but also elevate the quality of software products. We aim to empower developers worldwide, making complex coding more accessible, and accelerating the creation of exceptional software.

## Team Handles

| Category           | Handle              |
|--------------------|---------------------|
| GitLab Team Handle | @code-creation-team |
| Slack Channel      | #g_code_creation    |

## Commonly Monitored Issue Lists

- [Planning Issues](https://gitlab.com/gitlab-org/create-stage/-/issues/?sort=due_date&state=opened&label_name%5B%5D=group%3A%3Acode%20creation&label_name%5B%5D=Planning%20Issue&first_page_size=20)
- [OKRs](https://gitlab.com/gitlab-com/gitlab-OKRs/-/issues/?sort=title_asc&state=opened&label_name%5B%5D=devops%3A%3Acreate&label_name%5B%5D=group%3A%3Acode%20creation&first_page_size=20)
- [Workflow Board](https://gitlab.com/groups/gitlab-org/-/boards/5998095)
- [Reliability](https://gitlab.com/gitlab-org/gitlab/-/boards/4227439?not[label_name][]=type%3A%3Afeature&label_name[]=section%3A%3Adev&label_name[]=devops%3A%3Acreate&label_name[]=group%3A%3Acode%20creation)
- [Security](https://gitlab.com/gitlab-org/gitlab/-/issues/?sort=due_date&state=opened&label_name%5B%5D=security&label_name%5B%5D=devops%3A%3Acreate&label_name%5B%5D=group%3A%3Acode%20creation&not%5Blabel_name%5D%5B%5D=type%3A%3Afeature&first_page_size=20)
- [InfraDev Issues](https://gitlab.com/gitlab-org/gitlab/-/issues/?sort=due_date&state=opened&label_name%5B%5D=devops%3A%3Acreate&label_name%5B%5D=infradev&label_name%5B%5D=group%3A%3Acode%20creation&not%5Blabel_name%5D%5B%5D=type%3A%3Afeature&not%5Blabel_name%5D%5B%5D=severity%3A%3A4&first_page_size=200)

## Team Members

The following people are permanent members of the Code Creation Team:

{{% team-by-manager-role role="Backend(.*)Manager(.*)Create:Code Creation" team="Code Creation" %}}

You can reach the whole team on GitLab issues/MRs by using the `@code-creation-team` handle.

## Stable Counterparts

The following members of other functional teams are our stable counterparts:

{{% stable-counterparts manager-role="Backend(.*)Manager(.*)Create:Code Creation" role="Code Creation$" %}}

## Core Responsibilities

A lot of the terms we use in this area sound similiar and can be confusing at first. Here are the basic basic terms:

- **Code Creation**: The group name and a collection of features relating to providing AI generated code
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

## Projects

[Create:Code Creation Projects](/handbook/engineering/development/dev/create/code-creation/projects)

## Engineering Onboarding

To help get started as a developer with the Create:Code Creation team, we have created an
[onboarding issue template](https://gitlab.com/gitlab-com/create-stage/code-creation/team-tasks/-/issues/new?issuable_template=developer_onboarding).

## Other Related Pages

- Product Categories: [Code Creation](/handbook/product/categories/#code-creation-group)
- Direction: [Code Suggestion Direction](https://about.gitlab.com/direction/create/code_suggestions/)

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
