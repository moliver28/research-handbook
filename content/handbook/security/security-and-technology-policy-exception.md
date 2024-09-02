---
title: "Security and Technology Policy Exception Process"
---

## Exceptions

Exceptions to [Security and Technology Policies]({{< ref "security-and-technology-policies-management" >}}) must be tracked and approved by the policy approver(s) via an auditable format. An exception process should be defined in each policy.

Information security considerations such as regulatory, compliance, confidentiality, integrity and availability requirements are most easily met when companies employ centrally supported or recommended industry standards. Whereas GitLab operates under the principle of least privilege, we understand that centrally supported or recommended industry technologies are not always feasible for a specific job function or company need. Deviations from the aforementioned standard or recommended technologies is discouraged. However, it may be considered provided that there is a reasonable, justifiable business and/or research case for a security and technology policy exception; resources are sufficient to properly implement and maintain the alternative technology; the process outlined in this and other related documents is followed and other policies and standards are upheld.

In the event a team member requires a deviation from the standard course of business or otherwise allowed by policy, the requester must submit a [Policy Exception Request](https://gitlab.com/gitlab-com/gl-security/security-assurance/sec-compliance/exceptions/issues/new?issuable_template=exception_request) to the GitLab Security Compliance team, which contains, at a minimum, the following elements:

- Team member Name and contact
- Time period for the exception (deviations should not exceed 90 days unless the exception is related to a device exception, like using a Windows device)
- The exception being requested, i.e. which policy or procedure is affected by the proposed deviation
- Additional details as required by each template, to include evidence of security protections.

Exception request approval requirements are documented within the issue template. The requester should tag the appropriate individuals who are required to provide an approval per the approval matrix.

If the business wants to appeal an approval decision, such appeal will be sent to Legal at legal@gitlab.com. Legal will draft an opinion as to the proposed risks to the company if the deviation were to be granted. Legal’s opinion will be forwarded to the CEO and CFO for final disposition.

Any deviation approval must:

- Recommended compensating controls to reduce exposure and/or harm (i.e. admin rights to financially significant system may require audit logs and review of users activity within the system)
- Be captured in writing
