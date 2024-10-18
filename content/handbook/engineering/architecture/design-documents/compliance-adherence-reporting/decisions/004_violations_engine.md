---
title: "Compliance Frameworks ADR 004: Violations Engine"
toc_hide: true
---

## Context

While the adherence report states the current state of a project against the configured framework and requirements/controls,
it does not show a history of the state. Most importantly it does not show where the project might not have been adhering
and there was a violation of the requirement/control.

## Approach

The violation engine is similar to the configuration checks engine, at certain trigger points the system will audit that 
the event does not violate any configured complaince requirments/controls. 

For each control defined in GitLab there will be a event trigger point. When this event is triggered for a project the violation engine will check whether the project has a compliance framework configured with that requirement controls. If the project does have this configured then the event will be logged as a violation.

For example when a Merge Request is merged the system will trigger a potential violation event. The violations engine will check if there is a control defined for the project which states all Merge Requests requiring 2 approvers, if the Merge Request has less then 2 then a violation is created from the event.

Trigger points that would generate potential violation events:

1. Creating/Editing a Project
1. Creating/Merging an MR
1. Creating/Editing an Issue

## Design Details

```mermaid
classDiagram
class namespaces {
    id: bigint
    name: text
    path: text
    ...(more columns)
}
class projects {
    id: bigint
    name: text
    path: text
    description: text
    ...(more columns)
}
class compliance_management_frameworks {
    id: bigint
    name: text
    description: text
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
    check_type: smallint
    expression: jsonb
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

class project_compliance_adherence {
    id: bigint
    created_at: timestamp
    updated_at: timestamp
    project_id: bigint
    namespace_id: bigint
    compliance_requirement_id: bigint
    compliance_requirement_expression: jsonb
    compliance_requirement_result: smallint
    status: smallint
}

class project_compliance_violations {
    id: bigint
    created_at: timestamp
    updated_at: timestamp
    project_id: bigint
    namespace_id: bigint
    compliance_requirement_id: bigint
    compliance_requirement_expression: jsonb
    audit_event_id: bigint
}

compliance_management_frameworks --> compliance_requirements : has_many
compliance_management_frameworks <-- compliance_requirements : belongs_to
compliance_management_frameworks <--> projects : many_to_many
compliance_requirements <--> compliance_framework_security_policies : has_and_belongs_to_many
compliance_requirements <--> project_compliance_violations : has_and_belongs_to_many
projects <-- namespaces : has_many
projects --> namespaces : belongs_to
namespaces --> compliance_management_frameworks : has_many
namespaces <-- compliance_management_frameworks : belongs_to
projects --> project_compliance_status : has_many
projects <-- project_compliance_status : belongs_to
compliance_requirements --> project_compliance_status : has_one
compliance_requirements <-- project_compliance_status : belongs_to
```
