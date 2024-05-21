---
title: 'Getting Help'
---

As GitLab has grown organically, several departments and functional groups have their own System Administrators ("System Owners") that handle day-to-day management of the tech stack applications that are specific to that department or functional group, within the framework of organization-wide compliance, infrastructure, and security best practices.

The Corporate Security team provides "genius bar" style IT related helpdesk and configuration management services for team members and temporary service providers for the company-wide [systems that we manage](/handbook/security/corporate/systems).

For "shadow IT" systems that we don't manage, [each tech stack application](/handbook/business-technology/tech-stack-applications/) has a System Owner that is the DRI for handling the implementation and day-to-day operational support for the team members that utilize that application (in their department or functional group). This has an added benefit of preventing the traditional IT department from being a bottleneck and allows each department to self-service as part of GitLab's [efficiency for the right group](/handbook/values/#efficiency-for-the-right-group) subvalue.

## Corporate Security Support

### Tier 1. Self Service

As part of our [self-service and self-learning](https://handbook.gitlab.com/handbook/values/#self-service-and-self-learning) efficiency value, we encourage you to check out the security self-service guides and runbooks documentation to see if you can find the answer to your question.

- [Public Handbook Security Guides](/handbook/security/guides)
- [Internal Handbook Security Guides](https://internal.gitlab.com/handbook/security/guides)
- [Systems Runbooks](https://runbooks.gitlab.systems)

### Tier 2. Helpdesk Support

We have 24x5 coverage provided by Support Analysts that can help you with access requests, account lockouts, laptop hardware or configuration problems, and any [Corporate Security Systems](/handbook/security/corporate/systems).

**Please ask for assistance in the `#it_help` Slack channel.**

Our team members have scheduled on-call shifts, so we kindly ask that you ask in the channel and not send Slack direct messages to specific individuals.

For systems not managed by Corporate Security, you can locate the owner in the [tech stack](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml). If you're not sure where to ask, please ask in `#it_help` and we will redirect you to the right person or place.

### Tier 3. Escalation and Systems Engineering

Our Support Analysts are trained to provide user support. If there is a problem that the Support Analysts cannot answer, they will escalate it to the Corporate Security Engineers.

Our Security Engineers and Systems Engineers are the technical owners for our [Corporate Security Systems](/handbook/security/corporate/systems) and handle configuration management and engineering work for optimizing and supporting our business requirements and mitigating any security risks.

For team member support requests, please ask for assistance in the `#it_help` Slack channel.

For advanced requests or change/configuration management, please open a GitLab issue in the [Corporate Security Issue Tracker](https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues) and choose the appropriate issue template that will automatically add the appropriate labels and assign it to the respective system owners.

| System (Handbook Page)           | Access Request | Engineering Issue  | Label | GitLab.com Mention | Slack Group |
|----------------------------------|----------------|--------------------|-------|--------------------|-------------|
| [1Password](#)                   | [Access Request](#)      | [Issue Template](#)  | `corpsys::1password` | [@gitlab-com/gl-security/corp/sys/1password]() | `@sysowners-1password` |
| [Access Control](#)              | [Access Request](#)      | [Issue Template](#)  | `corpsys::accessctl` | [@gitlab-com/gl-security/corp/sys/accessctl]() | `@sysowners-accessctl` |
| [Amazon Web Services (AWS)](#)   | [Access Request](#)      | [Issue Template](#)  | `corpsys::aws`       | [@gitlab-com/gl-security/corp/sys/aws]() | `@sysowners-aws` |
| [Azure](#)                       | [Access Request](#)      | [Issue Template](#)  | `corpsys::azure`     | [@gitlab-com/gl-security/corp/sys/azure]() | `@sysowners-azure` |
| [Domain Names and DNS](#)        | [Access Request](#)      | [Issue Template](#)  | `corpsys::dns`       | [@gitlab-com/gl-security/corp/sys/dns]()       | `@sysowners-dns` |
| [DriveStrike](#)                 | [Access Request](#)      | [Issue Template](#)  | `corpsys::drivestrike` | [@gitlab-com/gl-security/corp/sys/drivestrike]() | `@sysowners-drivestrike` |
| [GitLab](#)                      | [Access Request](#)      | [Issue Template](#)  | `corpsys::gitlab`    | [@gitlab-com/gl-security/corp/sys/gitlab]() | `@sysowners-gitlab` |
| [Google Cloud Platform (GCP)](#) | [Access Request](#)      | [Issue Template](#)  | `corpsys::gcp`       | [@gitlab-com/gl-security/corp/sys/gcp]()       | `@sysowners-gcp` |
| [Google Workspace (Apps)](#)     | [Access Request](#)      | [Issue Template](#)  | `corpsys::goog-apps`   | [@gitlab-com/gl-security/corp/sys/goog-apps]()   | `@sysowners-goog-apps` |
| [Google Workspace (Org/Platform)](#) | [Access Request](#)  | [Issue Template](#)  | `corpsys::goog-org`    | [@gitlab-com/gl-security/corp/sys/goog-org]()    | `@sysowners-goog-org` |
| [Google Workspace (Groups)](#)   | [Access Request](#)      | [Issue Template](#)  | `corpsys::goog-groups` | [@gitlab-com/gl-security/corp/sys/goog-groups]() | `@sysowners-goog-groups` |
| [Jamf MDM](#)                    | [Access Request](#)      | [Issue Template](#)  | `corpsys::jamf`      | [@gitlab-com/gl-security/corp/sys/jamf]()      | `@sysowners-jamf` |
| [Nira](#)                        | [Access Request](#)      | [Issue Template](#)  | `corpsys::nira`      | [@gitlab-com/gl-security/corp/sys/nira]()      | `@sysowners-nira` |
| [NordLayer VPN](#)               | [Access Request](#)      | [Issue Template](#)  | `corpsys::nordlayer` | [@gitlab-com/gl-security/corp/sys/nordlayer]() | `@sysowners-nordlayer` |
| [Okta SSO](#)                    | [Access Request](#)      | [Issue Template](#)  | `corpsys::okta-sso`  | [@gitlab-com/gl-security/corp/sys/okta]()      | `@sysowners-okta-sso` |
| [Okta Workflows](#)              | [Access Request](#)      | [Issue Template](#)  | `corpsys::okta-flow` | [@gitlab-com/gl-security/corp/sys/okta]()      | `@sysowners-okta-flow` |
| [Sandbox Cloud](#)               | [Access Request](#)      | [Issue Template](#)  | `corpsys::sandbox-cloud` | [@gitlab-com/gl-security/corp/sys/sandbox-cloud]() | `@sysowners-sandbox-cloud` |
| [SentinelOne EDR](#)             | [Access Request](#)      | [Issue Template](#)  | `corpsys::sentinelone` | [@gitlab-com/gl-security/corp/sys/sentinelone]() | `@sysowners-sentinelone` |
| [Slack](#)                       | [Access Request](#)      | [Issue Template](#)  | `corpsys::slack`     | [@gitlab-com/gl-security/corp/sys/slack]()     | `@sysowners-slack` |
| [Zoom](#)                        | [Access Request](#)      | [Issue Template](#)  | `corpsys::zoom`      | [@gitlab-com/gl-security/corp/sys/zoom]()      | `@sysowners-zoom` |

### Tier 4. Automation Engineering

As any company or team evolves and scales, it is important to automate and streamline processes. Most tech companies improve automation and processes using some form of scripting.

At GitLab, each of our departments solves their automation problems independently (organic evolution of our values and solving your own niche problems).

As time allows, our Security Engineers and Systems Engineers work on automation projects to streamline our processes and systems configuration, usually aligned with our security strategy, compliance observations, and/or mitigating identified security risks.

See our [automation handbook page](/handbook/security/corporate/automation) to learn more.

### Tier 5. Architecture and Crisis Management

Our Staff Engineers and Managers are focused on driving the meta-level direction and improved automation and efficiency of the Corporate Security team and our cross-functional stakeholders that provide a strong security posture in alignment with the security vision while providing great internal customer experience. We also provide swarm-style guidance and engineering for cross-functional or leadership-level crisis and incident mitigation.

- Architecting next-generation automation and integration between security-related systems that provides data consistency, reliability, strong security, and audibility.
- Building relationships with cross-department system owners and proposing solutions to ensure our tech stack applications conform to our latest security best practices.
- Consolidating and refactoring legacy tech debt.
- Designing processes and choosing software tools that improves back office automation or mitigates security risks.
- Escalation engineering and crisis response for leadership teams
- Factor in cost, security, compatibility, maintainability and user experience when making decisions.
- Growing other team members’ skill sets through mentorship to improve operational efficiency and encourage professional development.
- Handbook documentation for processes and systems architecture.
- Improving onboarding and offboarding holistic and fine-grained processes and automation, also referred to as Identity Management.
- Joint collaboration with process and system owners across the company for improving automation efficiency, security posture, and vulnerability management.
- Keeping leaders and stakeholders informed of next-gen initiatives and contributing to creating automated analytics for day-to-day IT operations.
- Leading innovation opportunities between several teams with a willingness to experiment and to boldly confront problems of large complexity and scope.
- Making technical decisions on behalf of the department and organization while providing presentation support to leaders during technical discussions.
