---
title: "Compliance Adherence Reporting"
status: ongoing
creation-date: "2024-07-08"
authors: [ "@nrosandich", "@huzaifaiftikhar1" ]
coach: "@theoretick"
approvers: [  ]
owning-stage: "~govern::compliance"
participating-stages: []
toc_hide: true
---

{{< design-document-header >}}

## Summary

This blueprint serves as living documentation of the technical considerations in the implementation of Compliance Adherence Reporting. This includes functionality in [Compliance Frameworks](https://docs.gitlab.com/ee/user/group/compliance_frameworks.html), the [Compliance Center](https://docs.gitlab.com/ee/user/compliance/compliance_center/) and the relationship with [Security Policies](https://docs.gitlab.com/ee/user/application_security/policies/).

### Proposal

Outline how compliance enforcement and visibility will be handled through Compliance Frameworks as an evolution from [Compliance Standards Adherence](https://docs.gitlab.com/ee/user/compliance/compliance_center/compliance_standards_adherence_dashboard.html).

### Motivation

There are three main parts to compliance posture of a customer [Enforcement](#enforcement), [Visibility](#visibility),
and [Audit History](#audit-history).

#### Enforcement

Enforcement within GitLab is currently done through [Security Policies](https://docs.gitlab.com/ee/user/application_security/policies/) and [Compliance Pipelines](https://docs.gitlab.com/ee/user/group/compliance_pipelines.html). This gives users two very different ways of implementing the same functionality, which has been described as confusing for users. Compliance pipelines also have some inherent technical limitation, see [epic](https://gitlab.com/groups/gitlab-org/-/epics/6241).

#### Visibility

Currently the Standards are hard coded in the Adherence report (renamed to Status report) and separate from Compliance Frameworks. This makes the system inflexible as we look to:

1. Use Compliance Frameworks to include certain projects in the Adherence Report and distinguish which requirements those projects are complaint with.
1. Add a Requirements level to the Adherence report
1. Add more Standards and Checks
1. Allow users to customise Standards
1. Allow users to create their own Standards
1. Allow users to create customisable Checks

#### Audit History

This is currently achieved through compliance events ([Audit events](https://docs.gitlab.com/ee/user/compliance/audit_events.html) and [Violations within MRs](https://docs.gitlab.com/ee/user/compliance/compliance_center/compliance_violations_report.html)).

### Background

#### Deprecate compliance pipelines

We deprecated [compliance pipelines](https://docs.gitlab.com/ee/user/group/compliance_pipelines.html) in favour of
[pipeline execution policy](https://docs.gitlab.com/ee/user/application_security/policies/pipeline_execution_policies.html)
in GitLab 17.3. This decision was taken to align with the future state of enforcing compliance through security policies.

#### Scope policies through compliance frameworks

We introduced the capability of scoping security policies allowing us to enforce policies against a specific set of
projects or against projects applied a given set of compliance frameworks. This helped us move towards the
goal of enforcing compliance through frameworks.

#### Multiple compliance frameworks

Before GitLab 17.3 it was not possible to apply more than one compliance framework to a project. To work towards the
future state of allowing users to customise the adherence dashboard, we created the ability to apply multiple
compliance frameworks in GitLab 17.3.

### Goals

1. Provide support need for multiple frameworks
1. Incongruence with compliance pipelines and security policies
1. Use Compliance Frameworks to include certain projects in the Adherence Report and distinguish which requirements those projects are complaint with.
1. Add a Requirements level to the Adherence report
1. Add more Standards and Controls
1. Allow users to customise Standards
1. Allow users to create their own Standards

### Non-Goals

1. Allow users to create customisable Controls
1. Compliance events
   1. [Violations within MRs](https://docs.gitlab.com/ee/user/compliance/compliance_center/compliance_violations_report.html)
   1. [Audit events](https://docs.gitlab.com/ee/user/compliance/audit_events.html)

### Terminology/Glossary

1. Framework
   1. A [Compliance Framework](https://docs.gitlab.com/ee/user/group/compliance_frameworks.html) is a user-modifiable capability within GitLab to identify projects that have certain compliance requirements or need additional oversight. Compliance Frameworks generally align with established industry compliance frameworks such as SOC2 or ISO 27001.
1. Standard - deprecated in favor of framework
   1. A standard groups together compliance checks in the Adherence report. Compliance standards align with established compliance frameworks/standards such as SOC2 or ISO 27001
1. Adherence
   1. Reports the percentage of a projects compliance posture against a compliance framework. For example if Project A is 50% complaint towards Framework A.
1. [Policy](https://docs.gitlab.com/ee/user/application_security/policies/)
1. Requirement
   1. A particular requirement from an industry standard compliance frameworks/standards such as SOC2 or ISO 27001. Usually a statement of intent for a particular part of the compliance framework. These are broken down into specific Controls.
1. Check
   1. A Check is a review of a project's settings, to confirm that it is in a particular position. Checks compose a percentage of a project's compliance posture against a Control.
1. Control
   1. A control is a specific compliance rule that needs to be met to meet a compliance requirement. Enforcement of this is achieved in GitLab through settings, Security Policies or Compliance Pipelines.

### Decisions

- [001: Triggering Checks](decisions/001_triggering_checks.md)
- [002: Custom Adherence Report](decisions/002_custom_adherence_report.md)
- [003: Custom Controls](decisions/003_custom_controls.md)

### Design Details

We decided to use [Sidekiq workers for creating checks](decisions/001_triggering_checks.md#use-sidekiq-workers-for-creating-and-updating-checks)
and [storing the adherence configuration in database as relational data](decisions/002_custom_adherence_report.md#storing-the-compliance-adherence-configuration-in-database-as-relational-data).
It was [decided](decisions/003_custom_controls.md#decision) to combine `compliance_checks` and
`compliance_requirements` tables to reduce redundancy.

The compliance requirements would be stored in a separate table with the following schema:

```mermaid
    classDiagram
    class namespaces {
        id: bigint
        name: text
        path: text
        ...(more columns)
    }
    class projects {
        id: bigint,
        name: text
        path: text
        description: text
        ...(more columns)
    }
    class compliance_management_frameworks {
        id: bigint,
        name: text,
        description: text,
        ...(more columns)
    }

    class compliance_requirements {
        id: bigint
        created_at: timestamp
        updated_at: timestamp
        namespace_id: bigint
        framework_id: bigint
        name: text
        description: text
        requirement_type: smallint
        external_url: text
        expression: jsonb
    }

    class project_compliance_status {
        id: bigint
        created_at: timestamp
        updated_at: timestamp
        project_id: bigint
        namespace_id: bigint
        compliance_requirement_id: bigint
        status: smallint
    }

    class compliance_framework_security_policies {
        id: bigint
        created_at: timestamp
        updated_at: timestamp
        framework_id: bigint
        policy_configuration_id: bigint
        policy_index: smallint
        project_id: bigint
        namespace_id: bigint
    }

    compliance_management_frameworks --> compliance_requirements : has_many
    compliance_management_frameworks <-- compliance_requirements : belongs_to
    compliance_management_frameworks <--> projects : many_to_many
    compliance_requirements <--> compliance_framework_security_policies : has_and_belongs_to_many
    projects <-- namespaces : has_many
    projects --> namespaces : belongs_to
    namespaces --> compliance_management_frameworks : has_many
    namespaces <-- compliance_management_frameworks : belongs_to
    projects --> project_compliance_status : has_many
    projects <-- project_compliance_status : belongs_to
    compliance_requirements --> project_compliance_status : has_one
    compliance_requirements <-- project_compliance_status : belongs_to
```

We created a new table `project_compliance_configuration_status` for storing the results of compliance requirements and
would drop the existing `project_compliance_standards_adherence` table later on. We don't have a `standard` column
anymore as we don't want to associate requirements with a standard anymore, therefore, allowing the users to customise
and group requirements as per their need.

Unlike the current implementation we would only store results for the projects that have compliance requirements
configured. Instead of an enum we would store the `compliance_requirement_id` in the
`project_compliance_configuration_status` table and would display these results at the compliance dashboard.

In the next iteration we would also allow importing and exporting the compliance requirement configurations.

### Implementation Details

| Issue | Milestone | MR | Status |
| ----- | --------- | -- | ------ |
|  |  |  |  |

### FAQ

-
