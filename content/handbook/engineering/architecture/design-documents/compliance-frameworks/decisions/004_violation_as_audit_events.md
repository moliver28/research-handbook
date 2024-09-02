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
}

class compliance_checks {
    id: bigint
    created_at: timestamp
    updated_at: timestamp
    requirement_id: bigint
    namespace_id: bigint
    name: text
    description: text
    check_type: smallint
    expression: jsonb
}

class project_compliance_adherence {
    id: bigint
    created_at: timestamp
    updated_at: timestamp
    project_id: bigint
    namespace_id: bigint
    compliance_check_id: bigint
    status: smallint
}

class project_compliance_violations {
    id: bigint
    created_at: timestamp
    updated_at: timestamp
    project_id: bigint
    namespace_id: bigint
    compliance_check_id: bigint
    audit_event_id: bigint
}

class audit_events {
    id: bigint
    created_at: timestamp
    updated_at: timestamp
    author_id: bigint
    entity_id: string
    entity_type: bigint
    ...(more columns)
}

class security_policy_requirements {
    id: bigint
    created_at: timestamp
    updated_at: timestamp
    compliance_framework_security_policy_id bigint,
    compliance_requirement_id bigint,
    namespace_id bigint
}

security_policies {
    id: bigint,
    created_at: timestamp,
    updated_at: timestamp,
    ...(more columns)
}

compliance_requirements --> compliance_checks : has_many
compliance_requirements <-- compliance_checks : belongs_to
compliance_management_frameworks --> compliance_requirements : has_many
compliance_management_frameworks <-- compliance_requirements : belongs_to
compliance_management_frameworks <--> projects : many_to_many
projects <-- namespaces : has_many
projects --> namespaces : belongs_to
namespaces --> compliance_management_frameworks : has_many
namespaces <-- compliance_management_frameworks : belongs_to
projects --> project_compliance_adherence : has_many
projects <-- project_compliance_adherence : belongs_to
compliance_checks --> project_compliance_adherence : has_one
compliance_checks <-- project_compliance_adherence : belongs_to
projects --> project_compliance_violations : has_many
projects <-- project_compliance_violations : belongs_to
compliance_checks --> project_compliance_violations : has_one
compliance_checks <-- project_compliance_violations : belongs_to
audit_events <-- project_compliance_violations : has_one
security_policy_requirements <-- compliance_requirements : has_many
security_policy_requirements --> compliance_requirements : has_many
security_policies --> projects : has_many
security_policies --> compliance_management_frameworks : has_many
security_policies <-- security_policy_requirements : has_many
security_policies --> security_policy_requirements : has_many
