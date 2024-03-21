---
title: "Business Impact Analysis"
description: "Information about the Business Impact Analysis performed by the Security Risk Team"
controlled_document: true
---

## Purpose

The Business Impact Analysis (BIA) helps determine the systems critical to serving GitLab's Customers. It also helps determine the prioritization of system restoration efforts in the event of a disruption.  The output of the BIA is the designation of a [Critical System Tier](https://handbook.gitlab.com/handbook/security/security-assurance/security-risk/storm-program/critical-systems/) for a system.

**Note:** In adjacent to the BIA, questions may be asked to satisfy [global privacy regulation requirements](/handbook/legal/privacy/privacy-laws.html#gdpr) pertaining to a system's [Personal Data]({{< ref "data-classification-standard#data-classification-definitions" >}}) processing.

## Scope

The BIA procedure covers all new systems to be added to GitLab's [Tech Stack](/handbook/business-technology/tech-stack-applications/).

## Roles and Responsibilities

|Role|Responsibility|
|----------|------------------------------|
|[Security Risk Team]({{< ref "../../security-risk" >}})|Responsible for executing and maintaining this procedure.|
|[Business/Technical Owner](/handbook/business-technology/tech-stack-applications/#tech-stack-definitions) of a System|Responsible for answering BIA questions during procurement and validating CST designation proposed by Security Risk.|
|Security Assurance Management (Code Owners)|Responsible for approving significant changes and exceptions to the BIA.|

## BIA Procedures

### New Systems (Ad-Hoc)

A BIA is initiated as the result of TPRM's process for net new systems (guided by our [report template](https://gitlab.com/gitlab-com/gl-security/security-assurance/security-risk-team/third-party-vendor-security-management/-/blob/master/.gitlab/issue_templates/TPRM%20Assessment%20Report%20Template.md)). An [associated Tracking Issue](https://gitlab.com/gitlab-com/gl-security/security-assurance/security-risk-team/third-party-vendor-security-management/-/issues/new?issue%5Btitle%5D=New%20System%20-%20%5BSystem%20Name%5D%20-%20TS%20Add%20and%20BIA%20Tracking&issuable_template=New%20System%20-%20TS%20Add%20and%20BIA%20Tracking) is created by the TPRM engineer to ensure that the new system has a BIA performed and is added to the Tech Stack.

A formal BIA questionnaire is distributed to the Business/Technical Owner for each system as listed in the [Tech Stack](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml) or Merge Request related to adding the system to the Tech Stack. Launch a new BIA Questionnaire from GitLab's GRC Application, ZenGRC, by following these steps:

1. Click [FY24 Business Impact Analysis - New Systems (9/7/2023 - 1/31/2024)](https://gitlab.zengrc.com/sor/info/Project/109/info).
1. Click the 3 dots on the top right-hand corner > 'Send New Questionnaire'.
1. Search for and select the **FY24 Business Impact Analysis (BIA) - Standard** Questionnaire template.
1. Advance and populate the Recipient Details section. The Recipient is "Internal" (input name and GitLab email of one Business/Technical Owner only).
1. Search for and select the **FY24 Business Impact Analysis (BIA) - Standard** Email template.
1. Populate the [New System's Name] inside the email before sending. Target completion of the BIA Questionnaire is two weeks.  CC To/Reply To "securityrisk@gitlab.com".
1. Click 'Review' > 'Submit' when finished.
1. Map the appropriate System Object to the BIA Questionnaire by clicking the pencil icon in the 'map:system' column.

### Existing Systems (Frequency based on Critical System Tier)

A BIA is performed or existing BIA data are validated once per fiscal year for each Tier 1 system listed on GitLab's [Tech Stack](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml). BIA data for Tier 2 and 3 systems will be refreshed or validated every 2 years. BIA data for existing Tier 4 systems will not be periodically refreshed or validated due to the low risk they represent to GitLab. In addition to BIA data/response validation, additional questions may be incorporated for the Business/Technical Owner to answer (e.g., questions regarding Technical Debt). The Security Risk Team is responsible for the periodic review and reconciliation of systems which require a BIA year over year. System BIAs will be performed in waves and prioritized by Tier and regulatory need.

### Quality Reviews

The Security Risk team will review the responses to the BIA questionnaires to support completeness and accuracy of the information based on the TPRM assessment performed for the system.

For blank/unknown/obscure responses, engage the Business/Technical Owner via comment functionality within the GRC system, Slack, or a GitLab Issue.

## Reporting

BIA results are reported via updates to GitLab's Tech Stack. Specific fields like `critical_systems_tier` and `collected_data` are updated accordingly at a system-level should the information from the BIA lead to changes.

## Exceptions

System Proof of Concepts (POC), Proof of Values (POV), and Pilots are exempt from BIA procedures. In the event Tier 1, Tier 2, or Tier 3 systems are added by actors other than Security Risk, these systems will be reviewed as part of the next periodic BIA.

## References

- [Critical System Tiering Methodology]({{< ref "critical-systems" >}})
- [Data Classification Standard]({{< ref "data-classification-standard" >}})
- [Business Continuity Plan](/handbook/business-technology/gitlab-business-continuity-plan/)
