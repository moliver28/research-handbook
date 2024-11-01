---
title: "Bounded Contexts Working Group"
description: "Identify backend bounded contexts composing the GitLab Rails monolith. Prepare work for modularization of the monolith."
---

## Attributes

| Property        | Value           |
|-----------------|-----------------|
| Date Created    | 2023-11-28 |
| Target End Date | 2024-03-31 |
| Actual End Date | 2024-05-20 |
| Slack           | [#wg_bounded_contexts](https://gitlab.enterprise.slack.com/archives/C069VRRN70S) (only accessible from within the company) |
| Google Doc      | [Agenda doc](https://docs.google.com/document/d/1Ss2lvZHm1ID5CTVQJS3ivM7Nc1FgLaPCBCSm2RDawKI/edit) (only accessible from within the company) |

### Summary

Today code is namespaced using Ruby namespaces but we don't have explicit rules or guidelines on how to organize code.
New namespaces are constantly being created and often there is no need to since new concepts could be nested inside
existing namespaces to better represent [bounded contexts](https://docs.gitlab.com/ee/architecture/blueprints/modular_monolith/bounded_contexts.html#1-what-makes-a-bounded-context).
Having consistently namespaced code is the pre-requisite for a [modularized codebase](https://docs.gitlab.com/ee/architecture/blueprints/modular_monolith/).

With this working group we want to:

- Identify the bounded contexts that compose the GitLab Rails codebase
- Stop the proliferation of new top-level namespaces without explicit reason.
- Have modules with rich domain logic that are aligned to the engineering organization.

### Context

The [proposal to split GitLab Rails monolith into a modular monolith](https://gitlab.com/gitlab-org/gitlab/-/issues/365293)
describes in details why modularization is important for the current stage of the GitLab codebase.
In order to make progress towards a modularized monolith we first need to understand what are the modules and bounded-context
that are present today in GitLab Rails monolith.

### Activity

Members of the working group will:

- Classify the files related to their [bounded context](https://docs.gitlab.com/ee/architecture/blueprints/modular_monolith/bounded_contexts.html#1-what-makes-a-bounded-context).
- Participate to sync meetings, bring questions and communicate progress.
- Provide feedback on the process and the guidelines to identify bounded contexts.
- Act as modularization evangelist for their respective stage/domain.
- Help review the final list of bounded contexts to ensure it's comprehensive.

### Communication

- The working group would meet weekly initially alternating between a APAC and AMER friendly timezone.
  Then we can make it bi-weekly.
- A `#wg_bounded_contexts` slack channel would be created for anyone to ask questions and communicate async.
- After the initial meeting we expect the work to be carried out asynchronously.
  Each team member can work off their own list of files to categorize.
- Working on a spreadsheet (or alternatives) will make it easy to track progress on categorized files and remaining work to do.
- DRI to facilitate the meetings and communicate weekly status updates will be `@fabiopitino` and anyone else who wants to contribute.
- Eventual issues and follow-up ideas would be created using `~modular_monolith` label.

### Exit Criteria

The working group can be disbanded when:

| Exit criteria | Resulting artifact |
| ------------- | ------------------ |
| We have a published list of identified bounded contexts that acts as a documentation for developers. | [`config/bounded_contexts.yml`](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/bounded_contexts.yml) |
| We have a simple process for creating, deleting and renaming bounded contexts, to allow the codebase evolve over time. | [Docs updated](https://docs.gitlab.com/ee/development/software_design.html#bounded-contexts) |
| Bonus: Create a Rubocop Cop to enforce top-level namespaces using the list of identified bounded contexts. | [Rubocop static analyzer added](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/151984) |

### Details

The working group would map the Ruby codebase, in particular the domain code into `app/` and `lib/` folder and come up
with a list of bounded contexts. This may exclude `app/controllers` and `app/views` initially since we want to focus primarily
on the domain layer (the core) of the [Hexagonal Architecture](https://docs.gitlab.com/ee/architecture/blueprints/modular_monolith/hexagonal_monolith/index.html).

During the process of mapping the codebase we would need to do:

- List all the Ruby files in a spreadsheet and categorize them into components following the
  [defined guidelines](https://docs.gitlab.com/ee/architecture/blueprints/modular_monolith/bounded_contexts.html#1-what-makes-a-bounded-context).
  Files under the same directory can generally be categorized in bulk, so this should not take a lot of time.
- Inside the `lib` directory, distinguish between generic code that should be extracted as gem and domain code that should be namespaced
  the same as code in app. All code related to the same domain should have the exact same namespace. For example, we should not have
  `Ci::` (from app) and `Gitlab::Ci::` (from `lib`).
  - We will have a special [`platform` category](https://gitlab.com/gitlab-org/gitlab/-/issues/365293#proposal) for code that should be
      extracted as gems and cross-cutting concerns in `app` and `lib` (generic base classes, utility, loggers, framework code, etc.).
- It's important to focus only on the top-level bounded contexts without getting carried away with renaming nested classes.
  This can be a refactoring activity at the discretion of the team owning this feature, but not in scope of the working group.
- Identify similar namespaces and the merging strategy. It could be any of the below:
  - Create a new namespace that represents a larger domain and move the classes in there.
  - Identify a representative namespace for the bounded context and move all other classes in there.
- Distinguish ambiguous namespaces by putting them into separate bounded context.
  When 2 namespaces seem similar but they operate in completely different contexts, move them under the respective bounded context.
- Identify namespaces that have multiple responsibilities and should be split. In this case classes could go into other namespaces
  that better represent their domain.
- Try to reuse existing top-level namespaces whenever possible.
- Ignore everything else (non Ruby code, config, specs, controllers, views, rake tasks, Grape API, GraphQL).

The list of bounded-context doesn't have to be perfect. It should be a good enough representation of the domains at play in the GitLab Rails
codebase where each class has only 1 namespaces where it can exist and there is no ambiguity.
We will iterate on this list and will need to have a process in place for creating, deleting, renaming bounded contexts.

### Roles and Responsibilities

The Working Group should be composed of representative of all the various GitLab stages.
Each representative would be in a functional lead role representing their domain as a backend expert for their given GitLab DevOps stage.

Participants would ideally be interested in driving results related to modularization and Domain-Driven Design.
We will communicate the creation of the working group in `#development`, `#backend` and `#engineering-fyi` slack channels.
For stages still missing participants we will seek support from Engineering leaders who work in the given DevOps stage.

| Working Group Role    | Person                | Title                          |
|-----------------------|-----------------------|--------------------------------|
| Executive Sponsor     | Sam Goldstein         | Director of Engineering, Ops   |
| Facilitator           | Fabio Pitino          | Principal Engineer, Verify     |
| Member                | Chad Woolley          | Senior Backend Engineer, Create::Remote Development (Workspaces) |
| Member                | Thong Kuah            | Principal Engineer, Data Stores  |
| Member                | Lucas Charles         | Principal Engineer, Secure & Govern |
| Member                | Furkan Ayhan          | Senior Backend Engineer, Verify:Pipeline Authoring |
| Member                | Smriti Garg           | Senior Backend Engineer, Govern:Authentication |
| Member                | Aboobacker MK         | Senior Backend Engineer, Govern:Authentication |
| Member                | Sean Carroll          | Engineering Manager, Create:Source Code |
| Member                | Ahmed Hemdan          | Senior Backend Engineer, Secure:Static Analysis |
| Member                | Ethan Urie            | Staff Backend Engineer, Secure:Secret Detection |
| Member                | Gabriel Mazetto       | Senior Backend Engineer, Systems:Geo |
| Member                | Vitali Tatarintev     | Senior Backend Engineer, Create:Code Creation |
| Member                | Sashi Kumar Kumaresan | Staff Backend Engineer, Govern:Security Policies |
| Member                | Vasilii Iakliushin    | Staff Backend Engineer, Create::Source Code |
| Member                | Remy Coutable         | Principal Engineer, Quality |
| Member                | Eduardo Bonet         | Staff Incubation Engineer, MLOps |
| Member                | Vij Hawoldar          | Senior Backend Engineer, Fulfillment::Utilization |
| Member                | Suraj Tripathi        | Senior Backend Engineer, Fulfillment::Utilization |
| Member                | Kassio Borges         | Staff Backend Engineer, Plan::Knowledge |
| Member                | Aakriti Gupta         | Senior Backend Engineer, Systems:Geo |
| Member                | Peter Leitzen         | Staff Backend Engineer, Engineering Productivity |
| Member                | Abhinaba Ghosh        | Engineering Manager, Test & Tools Infrastructure |
| Member                | Mohamed Hamda         | Backend Engineer, Fulfillment::Provision |
| Member                | Andrei Zubov          | Senior Frontend Engineer, Environments |
| Member                | Fabien Catteau        | Staff Backend Engineer, Secure::Composition Analysis |
