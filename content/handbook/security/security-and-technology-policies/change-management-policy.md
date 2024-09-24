---
title: "Change Management Policy"
---

## Purpose

This policy is intended to outline the change management controls implemented by GitLab.

## Scope

Changes, in the context of this policy, are defined as **modifications**, including, but not limited to:

- Creation/development/implementation of new systems, integrations, features, key reports, databases, etc.
- Changes to configurations
- Deployment of patches or vendor supplied changes not managed by the vendor
- Modifications to data schemas
- System deprecation
- New access or role creation
- Broadly speaking, any change that will impact how team members carry out their responsibilities

The policy applies to changes that are made to systems assigned a [Critical System Tier]({{< ref "critical-systems" >}}) of `Tier 1 Mission Critical`, `Tier 2 Business Critical`, and `Tier 3 Business Operational`.

{{% note %}}
While Tier 4 Administrative systems are not subject to the scope of this policy, team members are encouraged to proactively adopt the requirements established by this policy across all systems, especially if there is a good probability that a system may move from a `Tier 4 Administrative` system to a [higher system tier]({{< ref "critical-systems" >}}) handbook page.
{{% /note %}}

## Roles & Responsibilities

|Role|Responsibility|
|----------|---------------|
|Security Compliance Team|Responsible for the continuous monitoring of change management procedures across the relevant systems through security control testing to ascertain adherence to this policy|
|Technical System Owners<br><br>Business System Owners<br><br>System Administrators|Responsible for ensuring the minimum requirements established by this policy are implemented in procedure and executed consistently|
|Team Members|Responsible for following change management procedures in a way that aligns with this policy|
|Control Owners|Responsible for defining and implementing change management procedures that meet or exceed the minimum requirements that have been established by this policy|

## Policy

Changes are documented in accordance with the relevant procedures. (CM-3)

Changes may undergo testing in accordance with the relevant procedures. (CM-4)

Changes are reviewed by appropriate stakeholders. (CM-3, CM-4)

Changes are approved by appropriate stakeholders. (CM-3)

Changes are deployed in accordance with the relevant procedures. (CM-5)

## Standard

For further details, please review GitLab's [Change Management Standard](https://internal.gitlab.com/handbook/security/change-management-standard) and the procedures linked within.

## Exceptions

Exceptions to this policy will be tracked as per the [Security and Technology Policy Exception Management Process]({{< ref "security-and-technology-policy-exception" >}}).

## References

- [Infrastructure Change Management Procedure](/handbook/engineering/infrastructure/change-management/)
- [Business Technology Change Management Procedure](https://internal.gitlab.com/handbook/it/it-change-management/) (internal only)
- [Organizational Change Management Procedure](/handbook/people-group/organizational-change-management/)
- [Security Change Management Procedure]({{< ref "security-change-management-procedure" >}})
