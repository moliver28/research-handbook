---
title: Collaboration on work items framework
description: "Collaboration process and documentation for using and contributing to the work items framework"
---

## Background

A work item is a discrete task or unit of work that needs to be completed as part of a larger project or workflow. It represents a discrete piece of work that contributes to achieving a goal or delivering a desired outcome. Work items are part of many use cases like Agile Planning, ITSM, and Security Management.
Previously, GitLab had different implementations for work items. Examples include Epics, Issues, Requirements, Incidents, and Vulnerabilities. This approach led to frustration from users due to the inconsistent experience, and the Plan stage decided to build a framework to support all work items in GitLab. This guide describes the functionality available, how to use it, and the best approach to contribute to the framework.

## Why use the work items framework?

The work items framework provides a consistent approach to creating work item objects for teams to plan and organize their work in GitLab. Consumers of the framework will benefit from the efficiency of using a framework with comprehensive out of the box functionality that is easily extendable.

## What functionality is available?

The work items framework provides a [base work item object](https://docs.gitlab.com/ee/architecture/blueprints/work_items/#work-item-properties) with options to extend functionality using [widgets](https://docs.gitlab.com/ee/architecture/blueprints/work_items/#work-item-widgets). Additional work item data and functionality is encapsulated within a widget. For example, the [WorkItemWidgetAssignees](https://docs.gitlab.com/ee/api/graphql/reference/index.html#workitemwidgetassignees) enables user assignment.

You can see the list of available widgets [here](https://docs.gitlab.com/ee/architecture/blueprints/work_items/#work-item-widgets). Each widget, except for the core work item object, can be turned on or off for each work item type.

The work items framework also provides an out-of-the-box work item detail view and work items can be displayed in the Issues list if desired.

## Where is the work items framework used?

The work items framework is currently used in several features; including [Tasks](https://docs.gitlab.com/ee/user/tasks.html) and [OKRs](https://docs.gitlab.com/ee/user/okrs.html).

Work is ongoing to convert existing objects to Work Item Types, and implement new ones; for example [Issues](https://gitlab.com/groups/gitlab-org/-/epics/9584) and [Epics](https://gitlab.com/groups/gitlab-org/-/epics/9290).

A comprehensive list of Work Item Types currently implemented and being implemented is available in the [Architecture Blueprint](https://docs.gitlab.com/ee/architecture/blueprints/work_items/#work-item-types).

## What functionality is on the roadmap for the work items framework?

You can see new functionality planned in the [Plan stage direction page](https://about.gitlab.com/direction/plan/) and in our [GitLab issue tracker](https://gitlab.com/gitlab-org/gitlab/-/issues/?sort=popularity_asc&state=opened&label_name%5B%5D=work%20items&first_page_size=100).

## What is out of scope for the work items framework?

- Our goal is to increase the consistency in GitLab, so all work items should use the same work item detail view.
- We want to encourage teams to contribute to the framework directly instead of building separate views or extensions.

## Getting started

First, you will need to consider whether the work items framework is right for your feature, including your users and the experience they require. You can read about that process [here](/handbook/product/ux/stage-group-ux-strategy/plan/plan.html#problem-validation).

All contributions begin with the _Validation backlog_ and _Problem validation_ phases. During these phases, the Plan stage PMs should be **Informed** of upcoming validation activities and **Consulted** during problem validation. These are critical opportunities to collaborate with us and ensure that your ask is not overlapping with future roadmap items and is not against the guiding principles.

What do R, A, C, and I mean?

| Phase | Your group | Plan Stage | Description |
| ----- | ---------- | ----------------- | ----------- |
| Validation backlog | R, A | I | Your group has the appropriate freedom as **Responsible** and **Accountable**, as it's too early to know if a problem is worth solving through the work items framework. But, in the cases where your group _assumes_ that the work items framework _could be_ the right avenue to address the problem at hand, we only ask to be **Informed**, so one-way communication. |
| Problem validation | R, A | C | We're **Consulted**, meaning that we can point you to existing research, similar problems, and more. We care about this phase because it's our chance to influence how much of the work items framework could be affected by potential solutions. Depending on the nature of the functionality being built, one GM/PM from the Plan stage will be selected as DRI for collaboration.|

At the end of this phase, we will work with your group to determine a contribution model.

## Contribution models

If you decide to use the work items framework this will usually mean that you're creating a new work item type and/or creating new widgets. Sometimes, all functionality you need will already be in the framework. Hooray! If not, you can contribute to the framework to [extend it for your use case](/handbook/product/ux/stage-group-ux-strategy/plan/plan.html#solution-validation).

| Phase | Your group | Plan Stage | Description |
| ----- | ---------- | ----------------- | ----------- |
| Solution validation | R, A | C |  We're **Consulted**, meaning that we want to involved in shaping the solution. Plan team members have a broader view of the problems and use cases that the work items framework is solving. The PM and UX team can help shape the solution so that it is as generic as possible and can provide value to more than one use case. |
| Build track | R, A | I | We strive to build a framework that can easily be built upon and we only need to be **Informed** during this phase. However, we are here to help with implementation if your team needs support. |

### Creating a new work item type

If your group would like a particular work item type to describe your user's work, you can create a new work item type. Creating a new work item type sets the foundation for adding widgets that are specific to data and behavior for your use case. For example, OKRs have a [progress widget](https://docs.gitlab.com/ee/user/okrs.html#set-objective-progress) that is not present in other work item types.

You can see an example of the solution validation and build planning process in [this epic](https://gitlab.com/groups/gitlab-org/-/epics/7864). Here the PM defined the data elements and behavior desired in the Objective and Key Result work item type.

For details on the technical implementation process, please refer to our [documentation](https://docs.gitlab.com/ee/development/work_items.html#creating-a-new-work-item-type-in-the-database). You can see an example of the implementation in the introduction of OKRs:

- [Backend Work to add Objective and Key Result Work Item Types](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/101324)
- [Backend work to support creation of objectives behind feature flag](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/103355)
- [Frontend work to support creation of Objectives & include them in Issue lists](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/102721)

#### Definition of Done for adding a new widget or data element

When adding a new widget or data element to a work item type, follow the guidelines below to ensure a consistent, high-quality user experience and seamless integration across GitLab's features:


### Definition of Done (DoD) for contributing to the Work Items framework

1. **Feature completeness**
   - **Widget functionality**: Ensure the widget performs the intended task without errors and integrates with the platform as expected.
   - **User acceptance criteria**: Ensure all user stories and acceptance criteria related to the widget, including usability requirements defined by the UX team, are satisfied.
   - **Cross-browser and responsive design**: Verify that the widget works seamlessly across all supported browsers, devices, and viewports (e.g., desktop, tablet, and mobile screens).
1. **Search integration**
   - **Inclusion in global search**: Ensure the new widget can be discovered using GitLab's global search functionality.
   - **Inclusion in filter options across Plan stage features**: Where relevant, ensure there is a filter option for the new widget in boards, lists and roadmap.
   - **Inclusion in glql**: Ensure the new widget can be used as a filter option in GitLab Query Language (GLQL) searches.
   - **Indexing**: Confirm that the widget is indexed appropriately, enabling quick retrieval in search results.
1. **Inclusion within views**
   - **Lists**: Where recommended by the UX team, ensure the widget data appears in list views (epic and/or issue), ensuring it’s correctly formatted and accessible.
   - **Boards**: Where recommended by the UX team, on (epic and/or issue) boards, ensure visibility of the new widget on board cards, ability to edit the widget value from the sidebar, and ability to create a new list based on widget as scope. 
   - **Roadmaps**: Where recommended by the UX team, ensure the widget is included in work item cards on the roadmap view.
   - **Detail pages**: Where recommended by the UX team, consider adding the new widget to existing work item detail pages in the applicable section as well as displaying on child and linked items as appropriate.
1. **Rollup considerations**
   - **Hierarchical rollup behavior**: Define whether the widget should contribute to parent/child work item rollups (e.g., weight, progress).
   - **Aggregation rules**: Determine by GitLab (license) plan, how/if to handle rollup calculations (e.g., summing, averaging, or other operations based on widget data).
   - **Display in summary views**: Ensure any relevant rollup data is clearly visible in summaries or dashboards that reflect aggregate data (e.g., child hierarchy widget, roadmaps, boards).
1. **Conditional behavior**
   - **Interaction with other widgets**: Define how the widget interacts with other widgets within the work item and its parent/child items. Determine whether the behavior of this widget can affect others or be affected by them, and ensure this behavior is clearly defined and tested.
   - **Behavior on work item closure**: Specify what happens to the widget when the associated work item is marked as completed or closed. For example, determine if the widget remains editable or if it should be locked from further modifications after closure.
   - **Data retention on cloning and moving**: Clarify whether the widget’s data should be retained when the work item is cloned or moved. Ensure that cloning and moving rules are explicitly defined, including whether the widget's state or data should be carried over to the new work item.
1. **Data interactions**
   - **Quick actions support**: Ensure that the widget can be executed or updated via quick actions. Review [quick actions documentation](https://docs.gitlab.com/ee/user/project/quick_actions.html) and define how users can interact with the widget using text-based commands for efficient updates and management without relying on the UI.
   - **GraphQL API integration**: Ensure the widget is integrated with the [GitLab GraphQL API](https://docs.gitlab.com/ee/api/graphql/). Define the necessary queries and mutations to enable programmatic access and updates to the widget’s data, supporting automation, external integrations, and advanced use cases.
   - **Bulk editing support**: Ensure the widget can be included in bulk editing operations on listing pages, such as in the [bulk issue editing functionality](https://docs.gitlab.com/ee/user/project/issues/managing_issues.html#bulk-edit-issues-from-a-project). Define how users can update multiple instances of the widget across several work items simultaneously and ensure consistent behavior.
   - **Rules and value constraints**: Define the allowed values for the widget, specifying:
      - **Allowed/disallowed values**: Clarify what values can be set, whether users can create custom values, and what values are disallowed.
      - **Naming conventions**: Specify any applicable naming rules (e.g., snake_case, camelCase) to ensure consistency.
      - **Validation rules**: Ensure appropriate validation is in place to prevent invalid data entries and enforce formatting rules, both in UI-based interactions and through API endpoints.
1. **System notes logging**
   - **System notes integration**: Ensure that all changes related to the widget (e.g., when its value is set, changed, or removed) are written to system notes on the work item detail pages (such as epics, issues, tasks, objectives, and key results). Review GitLab’s system notes documentation to verify proper logging of widget events.
1. **Import and export considerations**
   - **Support for imports and exports**: Determine how the widget’s data should be handled during various import and export processes. Review the different types of imports (e.g., group, project, transfer, issue) and decide in which contexts the widget should be included. Ensure that the widget is correctly mapped during both import and export operations.
1. **Real-time updates**
   - **Data synchronization**: Ensure that any updates to the widget are reflected in real time across all relevant views, including work item detail pages, lists, boards, and roadmaps. Changes should be immediately visible without requiring manual refreshes or page reloads.
1. **Permissions and role management**
   - **Define permissions and role-based access**: Specify the required permissions and role levels needed to interact with the widget. Ensure that the widget follows GitLab’s [permissions and role management system](https://docs.gitlab.com/ee/user/permissions.html) and consider restrictions for different roles such as Guest, Reporter, Developer, Maintainer, and Owner.
1. **Plan and licensing considerations**
   - **Plan availability**: Determine the availability of the widget across subscription tiers: Free, Premium, and Ultimate. Specify which features and capabilities of the widget will be restricted or enhanced based on the user's subscription level.
1. **Testing and validation**
   - **Unit tests**: Ensure that sufficient unit tests are written for the widget/data element to verify individual functions and components.
   - **Integration tests**: Check the widget’s interaction with existing features and systems to ensure there are no regressions.
   - **End-to-end tests**: Conduct end-to-end tests to validate the entire workflow involving the widget/data element.
1. **User experience (UX) and design considerations**
   - **Consistency with design system**: Ensure that the widget adheres to the platform’s design system, including styling, spacing, and behavior patterns.
   - **Accessibility (a11y)**: Check that the widget is fully accessible, meeting any a11y requirements (e.g., screen reader compatibility, keyboard navigation).
   - **User feedback**: Gather feedback from end-users and internal stakeholders, and refine the widget/data element as necessary before release.
1. **Performance and scalability**
   - **Load testing**: Conduct performance tests to ensure the widget does not degrade the platform’s performance under expected user load.
   - **Scalability**: Ensure the widget can handle increases in usage without issues.
   - **Error budgets**: Consult applicable error budgets post release to ensure the new widget hasn't caused unexpected error budget concerns.
1. **Metrics and tracking**
   - **Tracking and analytics**: Ensure that proper instrumentation is in place to track the usage and performance of the new widget/data element.
   - **KPIs and success metrics**: Define success metrics to evaluate the impact of the widget on overall work item management (e.g., time saved, user engagement).
1. **Architecture alignment**
   - **Adherence to architecture best practices**: Ensure the widget is developed following GitLab’s architecture vision and best practices for work items as outlined in the [GitLab Engineering Handbook](https://handbook.gitlab.com/handbook/engineering/architecture/design-documents/work_items/). Review and ensure compliance with design documents, architecture decisions, and future-proofing guidelines.
   - **Widget availability**:Ensure the widget is enabled by default for the corresponding work item types.
1. **Documentation and deployment**
   - **User-facing documentation**: Ensure that GitLab docs is updated to reflect the addition of the new widget/data element.
   - **Release Post announcement**: Include the new widget in GitLab’s monthly Release Post. Clearly outline the widget’s capabilities, benefits, and any limitations to inform users of the feature in the upcoming release.
   - **Feature toggles**: If the widget is behind a feature toggle, ensure there’s a plan for gradual rollout or deactivation if necessary.

### Creating or modifying widgets

Widgets encompass the specific data and behaviors that differentiate work items from each other. If you need to modify or add a new work item widget, refer to [this page](https://docs.gitlab.com/ee/development/work_items_widgets.html) for the technical details on how to achieve this.
You can see an example of the implementation in the [introduction of the dates widget](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/93204). Note that this widget is planned to be used across several work item types.

### Ideas only

Sometimes, your team will not have the capacity or expertise to contribute to the framework. That is OK! We still want to hear from you. Please create an issue describing your needs and tag the @mushakov, @gweaver, and @amandarueda.
