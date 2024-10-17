---
title: "Controlled Document Procedure"
description: "GitLab deploys control activities through policies and standards that establish what is expected and procedures that put policies and standards into action."
controlled_document: true
---

## Purpose

GitLab deploys control activities through policies and standards that establish what is expected and procedures that put policies and standards into action.

The purpose of this procedure is to ensure that there is consistency in developing and maintaining controlled documents at GitLab utilizing a hierarchal approach for managing legal and regulatory requirements.

There are two types of documentation at GitLab:

1. Controlled Documents: Formal policies, standards and procedures.
1. Uncontrolled Documents: Informal runbooks, certain handbook pages, guidelines, blog posts, templates, etc.

Everyone at GitLab is welcomed and encouraged to submit an MR to create or suggest changes to controlled documents at any time.

## Scope

This procedure applies to all [controlled documents](#list-of-controlled-documents) developed in support of GitLab's statutory, regulatory and contractual requirements. Uncontrolled documents are dynamic in nature and not in scope of this procedure.

## Roles & Responsibilities

| Role  | Responsibility |
|-----------|-----------|
| Security Compliance Team | Responsible for implementing and maintaining Security Policies and oversight of supporting standards and procedures as part of ongoing continuous control monitoring |
| Security Governance Team | Responsible for conducting annual controlled documents review |
| Security Assurance Management (Code Owners) | Responsible for approving changes to this procedure |
| Control Owners | Responsible for defining and implementing procedures to support Security policies and standards |

## Procedure

### Definitions by Hierarchy

![CD Pyramid](/handbook/security/security-assurance/images/CDPyramidv2.png)

- Policy: A policy is a high-level statement of intent and defines GitLab's goals, objectives and culture. Statutory, regulatory, or contractual obligations are commonly the root cause for a policy's existence. Policies are designed to be centrally managed at the organizational level (e.g. Security Compliance Team or Legal & Ethics Compliance Team).
- Standard: Standards are mandatory actions or rules that give formal policies support and direction by providing specific details that enable policies to be implemented. Standards may take the form of technical diagrams.
- Procedure: Procedures are detailed instructions to achieve a given policy and, if applicable, supporting standard and provid step-by-step instructions to follow. Procedures are decentralized and managed by process/control owners where a security control is translated into a business process.

### Creation

At minimum, controlled documents should cover the following key topic areas:

- Purpose: Overview of why the controlled document is being implemented.
- Scope: Who or what does the controlled document apply to.
- Roles & Responsibilities: Who is responsible for doing what. This should refer to departments or roles instead of specific individuals.
- Policy Statements, Standard or Procedure: The details.
- Exceptions: Define how exceptions to the controlled document will be tracked.
- References:  Procedure documents should map back to a governing policy or standard, and may relate to one or more procedures or other uncontrolled documentation.

### Publishing

Creation of, or changes to, controlled documents must be approved by management or a formally designated representative of the owning department as defined in the Code Owners file prior to publishing.

Most controlled documents will be published to our public facing [handbook](/). However, if there is [non public data]({{< ref "data-classification-standard" >}}) included in the controlled document, it should be published via an *internal facing only* mechanism (e.g. an internal GitLab project or an internal only handbook page). Controlled documents should be accessible to all internal team members.

#### Handbook header

Controlled documents require a [handbook frontmatter attribute for controlled documents](/docs/frontmatter/) to classify them. This attribute also renders a warning header.

### Review

Controlled documents are required to be reviewed and approved on at least an annual basis. Controlled documents may be updated ad-hoc as required by business operations. Changes must be approved by a code owner of the controlled document prior to merge.

Reviewers of controlled documents are required to

1. Ensure that ["say why not just what" transparency](/handbook/values/#say-why-not-just-what) is easily understood in the description. The title should be concise but clear on the what.
1. Ensure that announcements for team members are scheduled ([Slack, company newsletter](/handbook/people-group/employment-branding/people-communications/)), and tick off the [MR template task](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Default.md).

#### List of Controlled Documents

An accurate list of current controlled documents can be found [here](https://codeowners-report-schedule-gitlab-com-gl-securit-4422acedb936dd.gitlab.io/).

## Exceptions

Exceptions to controlled documents must be tracked and approved by the controlled document approver(s) via an auditable format. An exception process should be defined in each controlled document.

Information security considerations such as regulatory, compliance, confidentiality, integrity and availability requirements are most easily met when companies employ centrally supported or recommended industry standards. Whereas GitLab operates under [the principle of least privilege]({{< ref "access-management-policy#principle-of-least-privilege" >}}), we understand that centrally supported or recommended industry technologies are not always feasible for a specific job function or company need. Deviations from the aforementioned standard or recommended technologies is discouraged.  However, it may be considered provided that there is a reasonable, justifiable business and/or research case for an information security policy exception; resources are sufficient to properly implement and maintain the alternative technology; the process outlined in this and other related documents is followed and other policies and standards are upheld.

In the event a team member requires a deviation from the standard course of business or otherwise allowed by policy, the Requestor must submit a [Policy Exception Request](https://gitlab.com/gitlab-com/gl-security/security-assurance/sec-compliance/exceptions/issues/new?issuable_template=exception_request) to the GitLab Security Compliance team, which contains, at a minimum, the following elements:

- Team member Name and contact
- Time period for the exception (deviations should not exceed 90 days unless the exception is related to a device exception, like using a Windows device)
- The exception being requested, i.e. which policy or procedure is affected by the proposed deviation
- Additional details as required by each template, to include evidence of security protections.

Exception request approval requirements are documented within the issue template. The requester should tag the appropriate individuals who are required to provide an approval per the approval matrix.

If the business wants to appeal an approval decision, such appeal will be sent to Legal at legal@gitlab.com. Legal will draft an opinion as to the proposed risks to the company if the deviation were to be granted. Legal's opinion will be forwarded to the CEO and CFO for final disposition.

Any deviation approval must:

- Recommended compensating controls to reduce exposure and/or harm (i.e. admin rights to financially significant system may require audit logs and review of users activity within the system)
- Be captured in writing

## References

- Parent Policy: [Information Security Policy]({{< ref "_index.md" >}})
- [GCF Compliance Controls]({{< ref "sec-controls" >}})
- [Data Classifiation Standard]({{< ref "data-classification-standard" >}})
- [Controlled Documents Work Instruction](https://gitlab.com/gitlab-com/gl-security/security-assurance/governance/controlled-documents-program/-/blob/main/runbooks/controlled_document_annual_review_work_instruction.md)


#### Adding new Project or Namespace IDs to the allowlist

Internal analysis data is sourced only from projects and namespaces listed in specific CSV files. If a project or group isn't listed, its data isn't extracted for `internal_only` columns.

New additions to the allowlist must follow the [data minimisation](https://handbook.gitlab.com/handbook/enterprise-data/how-we-work/new-data-source/#data-minimisation) principle. Functional analysts and business stakeholders are responsible for maintaining this list and ensuring added projects/namespaces contain only internal, non-sensitive information.

Important notes:
- Each group/namespace ID requiring data analysis must be explicitly added.
- Child groups/projects aren't automatically included.
- After merging, data extraction begins immediately, but only from that point forward.

To add new projects/groups:
1. Create an MR to update `internal_gitlab_projects.csv` or `internal_gitlab_namespaces.csv`.
2. Include `project_id`/`namespace_id` and `path` (found in GitLab UI).
3. Add information at the file bottom, comma-separated. 
   Example: `gitlab-data/analytics, 4409640` (project) or `gitlab-data, 4347861` (namespace).
4. Assign the MR to a code owner for review.

<img src="project_id.png" width="800" alt=""/>

{{% alert color="danger" %}}

Monthly scheduled backfills capture historical data for newly added projects or namespaces, typically occurring in the last week of the current month or the first week of the next. While data extraction starts immediately after an item is added to the allowlist, historical data is backfilled during the next scheduled window. Regardless of whether a backfill is required, a full refresh of the source tables is necessary for the data to flow into the models after extraction.

{{% /alert %}}

