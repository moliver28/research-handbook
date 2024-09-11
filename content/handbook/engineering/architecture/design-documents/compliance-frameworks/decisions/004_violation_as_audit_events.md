---
title: "Compliance Frameworks ADR 004: Violations as Audit Events"
toc_hide: true
---

## Context

While the adherence report states the current state of a project against the configured framework and requirements,
it does not show a history of the state. Most importantly it does not show where the project might not have been adhering
and there was a violation of the requirement.

## Approach

The decision has been made to use audit events and store if at the time of the audit event the project was in violation
of the requirement.

Audit events will be created for all the possible compliance checks in GitLab. When an audit event for a project is
triggered the system will assess all the configured checks for that project and if there is a requirement for that
audit event it will store a connection between the compliance check and the audit event.

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

class audit_events {
    id: bigint
    created_at: timestamp
    updated_at: timestamp
    author_id: bigint
    entity_id: bigint
    entity_type: string
    ...(more columns)
}

class security_policies {
    id: bigint
    created_at: timestamp
    updated_at: timestamp
    ...(more columns)
}

compliance_requirements <--> compliance_framework_security_policies : has_and_belongs_to_many
compliance_management_frameworks --> compliance_requirements : has_many
compliance_management_frameworks <--> projects : has_and_belongs_to_many
namespaces --> projects : has_many
namespaces --> compliance_management_frameworks : has_many
projects --> project_compliance_adherence : has_many
compliance_requirements --> project_compliance_adherence : has_one
projects --> project_compliance_violations : has_many
compliance_requirements --> project_compliance_violations : has_many
project_compliance_violations --> audit_events : has_one
security_policies --> projects : many_to_many
security_policies --> compliance_management_frameworks : many_to_many
security_policies <-- compliance_framework_security_policies : has_one
```
