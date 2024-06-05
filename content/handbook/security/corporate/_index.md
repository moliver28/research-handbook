---
title: Corporate Security (CorpSec)
---

👋 Welcome to Corporate Security, we're glad you're here!

## Need Help?

Please try exploring the following pages to see if your question has been answered in the handbook pages. If not, please ask in the `#it_help` channel and one of our Support Analysts will reply as soon as possible.

- [Onboarding Security Self Service Guides](/handbook/security/guides)
- [CorpSec Support Guide](/handbook/security/corporate/support)
- [CorpSec Applications and Systems](/handbook/security/corporate/systems)
- Ask in the `#it_help` Slack channel

## Direction

### Mission

[Security Division Mission](https://handbook.gitlab.com/handbook/security/#i-classfas-fa-rocket-idbiz-tech-iconsi-security-vision-and-mission)

Our mission is to empower our employees, enable the business, protect our customers, and secure GitLab.

- Safeguard our organization's digital assets, ensuring the integrity, confidentiality, and availability of all data.
- Implement robust security measures, fostering a culture of awareness and compliance among employees, and continuously monitoring and enhancing our information technology systems to protect against evolving threats.
- Leverage the GitLab platform to assist us in the securing of GitLab.
- Through strategic planning, innovative solutions, and collaboration across departments, we aim to support the organization's goals by providing reliable, secure, and efficient IT Security services that adhere to Zero Trust principals.

### Scope

- Architecting next-generation automation and integration between security-related systems that provides data consistency, reliability, strong security, and audibility
- Building relationships with cross-department system owners and proposing solutions to ensure our tech stack applications conform to our latest security best practices
- Consolidating and refactoring legacy tech debt
- Designing processes and choosing software tools that improves back office automation or mitigates security risks
- Escalation engineering and crisis response for leadership teams
- Factor in cost, security, compatibility, maintainability and user experience when making decisions
- Growing other team members’ skill sets through mentorship to improve operational efficiency and encourage professional development
- Handbook documentation for processes and systems architecture
- Identity and access management (IAM)
- Joint collaboration with process and system owners across the company for improving automation efficiency, security posture, and vulnerability management
- Keeping leaders and stakeholders informed of next-gen initiatives and contributing to creating automated analytics for day-to-day IT and Security operations
- Leading innovation opportunities between several teams with a willingness to experiment and to boldly confront problems of large complexity and scope
- Making technical decisions on behalf of the department and organization while providing presentation support to leaders during technical discussions
- New tech stack (vendor) application onboarding and provisioning
- Onboarding provisioning, offboarding deprovisioning
- Policy and configuration management for organization-wide applications and systems that we manage
- Role-based access control (RBAC)
- Shipping laptops to new team members and refreshing older models
- Tech support for team members and temporary service providers
- User experience and productivity optimization for internal software and tools
- Vulnerability and malware risk mitigation
- Workflow automation for employee lifecycle
- X-Men, we are. Always be saving the day with a smile on your face!
- Yesterday's problems are tomorrow's opportunties for iteration
- Zero trust implementation

### Direction and Strategy

- (Internal) [CISO Multi-Year Information Security Goals and Priorities](https://internal.gitlab.com/handbook/security/information_security_goals_and_priorities/)
- (Internal) [CorpSec Strategy](https://docs.google.com/document/d/1-5QG5JCyQA4JYqb3XMYUbt__oyVqmP0IwBWkeyHdK40/edit)
- [CorpSec Direction](/handbook/security/corporate/direction)

### Project Planning

- [Security Division OKRs](https://handbook.gitlab.com/handbook/security/okr/)
- [Corporate Security Epics List](https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?state=opened&page=1&sort=start_date_desc)
- [Corporate Security Epics Gannt Chart](https://gitlab.com/groups/gitlab-com/gl-security/corp/-/roadmap?state=opened&sort=START_DATE_ASC&layout=QUARTERS&timeframe_range_type=THREE_YEARS&progress=WEIGHT&show_progress=true&show_milestones=false&milestones_type=ALL&show_labels=true)
- [How We Work](/handbook/security/corporate/how-we-work)

## Services

- 👀 **Please see [CorpSec Support](/handbook/security/corporate/support) if you are looking for help.**
- 📚 [Applications and Systems](/handbook/security/corporate/systems)
- 🛟 [Helpdesk Services](/handbook/security/corporate/services/helpdesk)
    - 🔐 [Access Requests](/handbook/security/corporate/services/access-requests)
    - 💻 [Laptop and Logistics Services](/handbook/security/corporate/services/laptops)
    - 🛬 [Onboarding](/handbook/security/corporate/services/onboarding)
    - 🛫 [Offboarding](/handbook/security/corporate/services/offboarding)
    - 🧑‍💻 [Tech Support (for Team Members)](/handbook/services/corporate/services/)
- ☁ [Infrastructure Services](/handbook/security/corporate/services/infrastructure)

## Engineering

- 💻 [Device Trust Engineering](/handbook/security/corporate/engineering/device-trust)
- 🔐 [Identity Engineering](/handbook/security/corporate/engineering/identity)
- ☁ [Infrastructure Engineering](/handbook/security/corporate/engineering/infrastructure)
- 🏗 [Platform Engineering](/handbook/security/corporate/engineering/platform)
- 👷 [SaaS Engineering](/handbook/security/corporate/engineering/saas)

## Team Functions

```mermaid
graph TB

CORPSEC_SVC["<b>Corporate Security (CorpSec)</b><br><i><b>Director:</b> Steve Manzuik</i>"]:::violet

CORPSEC_SVC_HELPDESK["<b>Helpdesk Services</b><br><i><b>Manager:</b> Michael Beltran</i><br><i><b>Analysts:</b> Alex Krusiec (AMER)<br>Bruno Ferreira (EMEA)<br>Eoghan Dunne (EMEA)<br>Jeff Ford (AMER)<br>Jenny Wong (AMER)<br>Max Hirata (JAPAC)<br>Mic Rohr (AMER)<br>Steve Ladgrove (JAPAC)"]:::emerald
CORPSEC_SVC_LOGISTICS["<b>Logistics Services (Laptops)</b><br><i><b>Manager:</b> Michael Beltran</i><br><i><b>Analysts:</b> Mic Rohr</i>"]:::emerald
CORPSEC_SVC_INFRA["<b>Infrastructure Services</b><br><i><b>Program Manager:</b> Jeff Martin</i><br><i><b>Engineers:</b> Mohammed Al Kobaisy (EMEA)<br>Vlad Stoianovici (EMEA)"]:::emerald

CORPSEC_ENG_SAAS["<b>(Corporate) SaaS Engineering</b><br><i><b>Eng Managers:</b> David, Eric</i><br><i><b>Program Manager:</b> Kim Waters</i><br><i><b>Staff Engineer:</b> Mark Loveless</i><br><i><b>Engineers:</b> Adam, Clayton, Erik,<br> Jacob, Justin, Marcus, Mohammed</i><br><br>1Password<br>GitLab.com IAM Policies<br>Google Drive<br>Google Workspace<br>Nira<br>Okta Configuration<br>Service Accounts<br>Slack<br>Zoom"]:::fuchsia
CORPSEC_ENG_DEVICE["<b>Device Trust Engineering</b><br><i><b>Eng Manager:</b> Eric Rubin</i><br><i><b>Program Manager:</b> Kim Waters</i><br><i><b>Staff Engineer:</b> Mark Loveless</i><br><i><b>Engineers:</b> Adam, Clayton, Justin</i><br><br>DriveStrike<br>Jamf MDM<br>Mobile Devices<br>NordLayer VPN<br>Okta Verify<br>SentinelOne EDR<br>Software Version Updates<br>YubiKey"]:::fuchsia
CORPSEC_ENG_IDENTITY["<b>Identity Engineering</b><br><i><b>Eng Manager:</b> David Zhu</i><br><i><b>Program Manager:</b> Kim Waters</i><br><i><b>Staff Engineer:</b> Jeff Martin</i><br><i><b>Engineers:</b> Erik, Jacob,<br>Marcus, Mohammed</i><br><br>ABAC and RBAC<br>AuthN and AuthZ Policies<br>Identity Governance (IGA)<br>No Code Automation<br>Onboarding<br>Offboarding<br>Role Entitlements"]:::fuchsia
CORPSEC_ENG_INFRA["<b>Infrastructure Engineering</b><br><i><b>Program Manager:</b> Jeff Martin</i><br><i><b>Engineers:</b> Mohammed, Vlad<br><br>ARs and IAM (AWS/GCP)<br>Amazon Web Services (AWS)<br>Azure<br>Billing and Cost Mgmt<br>Domains and DNS<br>Google Cloud (GCP)<br>Multi-Tenant Org Architecture<br>Sandbox Cloud<br>Secrets Mgmt Platform<br>Tech Debt Cleanup<br>Teleport Bastion"]:::fuchsia
CORPSEC_ENG_PLATFORM["<b>Platform Engineering</b><br><i><b>Program Manager:</b> David Zhu</i><br><i><b>Staff Engineer:</b> Jeff Martin</i><br><i>(+ contributors per project)</i><br><br>accesschk (IAM/RBAC)<br>accessctl (IAM/RBAC)<br>hackystack (Infra)<br>provisionesta (API/Auditlog)<br>Systems Handbook<br>trainingctl (Student IAM)<br>Terraform (Config Mgmt)"]:::fuchsia

CORPSEC_SVC --> CORPSEC_SVC_HELPDESK
CORPSEC_SVC --> CORPSEC_SVC_LOGISTICS
CORPSEC_SVC --> CORPSEC_SVC_INFRA
CORPSEC_SVC_HELPDESK <--> CORPSEC_ENG_SAAS
CORPSEC_SVC_HELPDESK <--> CORPSEC_ENG_DEVICE
CORPSEC_SVC_HELPDESK <--> CORPSEC_ENG_IDENTITY
CORPSEC_SVC_LOGISTICS <--> CORPSEC_SVC_HELPDESK
%% CORPSEC_ENG -.- CORPSEC_ENG_SAAS
%% CORPSEC_ENG -.- CORPSEC_ENG_DEVICE
%% CORPSEC_ENG -.- CORPSEC_ENG_IDENTITY
%% CORPSEC_ENG -.- CORPSEC_ENG_INFRA
%% CORPSEC_ENG -.- CORPSEC_ENG_PLATFORM
CORPSEC_SVC_INFRA -.- CORPSEC_ENG_PLATFORM
CORPSEC_ENG_PLATFORM -.- CORPSEC_ENG_IDENTITY
CORPSEC_ENG_PLATFORM -.- CORPSEC_ENG_INFRA
CORPSEC_SVC_INFRA <--> CORPSEC_ENG_INFRA
%% CORPSEC_ENG_IDENTITY -.- CORPSEC_ENG_PLATFORM
%% CORPSEC_ENG_INFRA -.- CORPSEC_ENG_PLATFORM

classDef slate fill:#cbd5e1,stroke:#475569,stroke-width:1px;
classDef red fill:#fca5a5,stroke:#dc2626,stroke-width:1px;
classDef orange fill:#fdba74,stroke:#ea580c,stroke-width:1px;
classDef yellow fill:#fcd34d,stroke:#ca8a04,stroke-width:1px;
classDef emerald fill:#6ee7b7,stroke:#059669,stroke-width:1px;
classDef cyan fill:#67e8f9,stroke:#0891b2,stroke-width:1px;
classDef sky fill:#7dd3fc,stroke:#0284c7,stroke-width:1px;
classDef violet fill:#c4b5fd,stroke:#7c3aed,stroke-width:1px;
classDef fuchsia fill:#f0abfc,stroke:#c026d3,stroke-width:1px;
```

## Team Directory

<table style="display: table;">
<thead>
<!-- Team Member -->
<tr>
<th>Team Member</th>
<th>Identity Roles</th>
<th>Group Tags</th>
</tr>
</thead>
<tbody>
<!-- Team Member -->
<tr>
<td>
<a href="/handbook/company/team/#adamhuss"><div style="display: inline-block; vertical-align: top;"><div style="display: inline-block; vertical-align: top;"><img class="avatar" src="https://about.gitlab.com/images/team/adamhuss-crop.jpg" style="max-width: 50px !important; width: 50px !important; max-height: 50px !important; height: 50px !important;" alt="Adam Huss"></div><div style="display: inline-block; vertical-align: top">Adam Huss</a><br>
<small>
<i class="fas fa-earth-americas" style="padding-right: 5px;"></i>AMER<br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>ahuss</code><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/adamhuss">@adamhuss</a>
</small>
</td>
<td><small>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_device_trust</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_saas</code>
</small></td>
<td><small>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/device-trust">@gitlab-com/gl-security/corp/team/device-trust</a><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/saas">@gitlab-com/gl-security/corp/team/saas</a><br>
</small></td>
</tr>
<!-- Team Member -->
<tr>
<td>
<a href="/handbook/company/team/#akrusiec"><div style="display: inline-block; vertical-align: top;"><img class="avatar" src="https://about.gitlab.com/images/gitlab-logo-extra-whitespace.png" style="max-width: 50px !important; width: 50px !important; max-height: 50px !important; height: 50px !important;" alt="Alex Krusiec"></div><div style="display: inline-block; vertical-align: top">Alex Krusiec</a><br>
<small>
<i class="fas fa-earth-americas" style="padding-right: 5px;"></i>AMER<br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>akrusiec</code><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/akrusiec">@akrusiec</a>
</small>
</td>
<td><small>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_svc_helpdesk</code>
</small></td>
<td><small>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/helpdesk">@gitlab-com/gl-security/corp/team/helpdesk</a><br>
</small></td>
</tr>
<!-- Team Member -->
<tr>
<td>
<a href="/handbook/company/team/#bferreira-ext"><div style="display: inline-block; vertical-align: top;"><img class="avatar" src="https://about.gitlab.com/images/gitlab-logo-extra-whitespace.png" style="max-width: 50px !important; width: 50px !important; max-height: 50px !important; height: 50px !important;" alt="Bruno Ferreira"></div><div style="display: inline-block; vertical-align: top">Bruno Ferreira</a><br>
<small>
<i class="fas fa-earth-europe" style="padding-right: 5px;"></i>EMEA<br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>bferreira</code><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/bruno.n.ferreira">@bruno.n.ferreira</a>
</small>
</td>
</td>
<td><small>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_svc_helpdesk</code>
</small></td>
<td><small>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/helpdesk">@gitlab-com/gl-security/corp/team/helpdesk</a><br>
</small></td>
</tr>
<!-- Team Member -->
<tr>
<td>
<a href="/handbook/company/team/#cshankgitlab"><div style="display: inline-block; vertical-align: top;"><img class="avatar" src="https://about.gitlab.com/images/team/claytonshank-crop.jpg" style="max-width: 50px !important; width: 50px !important; max-height: 50px !important; height: 50px !important;" alt="Clayton Shank"></div><div style="display: inline-block; vertical-align: top">Clayton Shank</a><br>
<small>
<i class="fas fa-earth-americas" style="padding-right: 5px;"></i>AMER<br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>cshank</code><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/cshankgitlab">@cshankgitlab</a>
</small>
</td>
<td><small>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_device_trust</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_saas</code>
</small></td>
<td><small>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/device-trust">@gitlab-com/gl-security/corp/team/device-trust</a><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/saas">@gitlab-com/gl-security/corp/team/saas</a><br>
</small></td>
</tr>
<!-- Team Member -->
<tr>
<td>
<a href="/handbook/company/team/#dzhu-gl"><div style="display: inline-block; vertical-align: top;"><img class="avatar" src="https://about.gitlab.com/images/gitlab-logo-extra-whitespace.png" style="max-width: 50px !important; width: 50px !important; max-height: 50px !important; height: 50px !important;" alt="David Zhu"></div><div style="display: inline-block; vertical-align: top">David Zhu</a><br>
<small>
<i class="fas fa-earth-americas" style="padding-right: 5px;"></i>AMER<br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>dzhu</code><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/dzhu-gl">@dzhu-gl</a>
</small>
</td>
<td><small>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_identity</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_platform</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_saas</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_mgr_eng</code>
</small></td>
<td><small>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/identity">@gitlab-com/gl-security/corp/team/identity</a><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/managers">@gitlab-com/gl-security/corp/team/managers</a><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/platform">@gitlab-com/gl-security/corp/team/platform</a><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/saas">@gitlab-com/gl-security/corp/team/saas</a><br>
</small></td>
</tr>
<!-- Team Member -->
<tr>
<td>
<a href="/handbook/company/team/#ericrubin"><div style="display: inline-block; vertical-align: top;"><img class="avatar" src="https://about.gitlab.com/images/team/ericrubin-crop.jpg" style="max-width: 50px !important; width: 50px !important; max-height: 50px !important; height: 50px !important;" alt="Eric Rubin"></div><div style="display: inline-block; vertical-align: top">Eric Rubin</a><br>
<small>
<i class="fas fa-earth-americas" style="padding-right: 5px;"></i>AMER<br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>erubin</code><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/ericrubin">@ericrubin</a>
</small>
</td>
<td><small>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_device_trust</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_saas</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_mgr_eng</code>
</small></td>
<td><small>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/device-trust">@gitlab-com/gl-security/corp/team/device-trust</a><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/managers">@gitlab-com/gl-security/corp/team/managers</a><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/saas">@gitlab-com/gl-security/corp/team/saas</a><br>
</small></td>
</tr>
<!-- Team Member -->
<tr>
<td>
<a href="/handbook/company/team/#eriklentz"><div style="display: inline-block; vertical-align: top;"><img class="avatar" src="https://about.gitlab.com/images/team/eriklentz-crop.jpg" style="max-width: 50px !important; width: 50px !important; max-height: 50px !important; height: 50px !important;" alt="Erik Lentz"></div><div style="display: inline-block; vertical-align: top">Erik Lentz</a><br>
<small>
<i class="fas fa-earth-americas" style="padding-right: 5px;"></i>AMER<br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>elentz</code><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/eriklentz">@eriklentz</a>
</small>
</td>
<td><small>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_identity</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_saas</code>
</small></td>
<td><small>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/identity">@gitlab-com/gl-security/corp/team/identity</a><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/saas">@gitlab-com/gl-security/corp/team/saas</a><br>
</small></td>
</tr>
<!-- Team Member -->
<tr>
<td>
<a href="/handbook/company/team/#edunne-ext"><div style="display: inline-block; vertical-align: top;"><img class="avatar" src="https://about.gitlab.com/images/gitlab-logo-extra-whitespace.png" style="max-width: 50px !important; width: 50px !important; max-height: 50px !important; height: 50px !important;" alt="Eoghan Dunne"></div><div style="display: inline-block; vertical-align: top">Eoghan Dunne</a><br>
<small>
<i class="fas fa-earth-europe" style="padding-right: 5px;"></i>EMEA<br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>edunne</code><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/edunne-gl">@edunne-gl</a>
</small>
</td>
<td><small>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_svc_helpdesk</code>
</small></td>
<td><small>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/helpdesk">@gitlab-com/gl-security/corp/team/helpdesk</a><br>
</small></td>
</tr>
<!-- Team Member -->
<tr>
<td>
<a href="/handbook/company/team/#jacobdwaters"><div style="display: inline-block; vertical-align: top;"><img class="avatar" src="https://about.gitlab.com/images/team/jacobdwaters-crop.jpg" style="max-width: 50px !important; width: 50px !important; max-height: 50px !important; height: 50px !important;" alt="Jacob Waters"></div><div style="display: inline-block; vertical-align: top">Jacob Waters</a><br>
<small>
<i class="fas fa-earth-americas" style="padding-right: 5px;"></i>AMER<br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>jwaters</code><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/jacobdwaters">@jacobdwaters</a>
</small>
</td>
<td><small>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_identity</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_platform</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_saas</code>
</small></td>
<td><small>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/identity">@gitlab-com/gl-security/corp/team/identity</a><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/platform">@gitlab-com/gl-security/corp/team/platform</a><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/saas">@gitlab-com/gl-security/corp/team/saas</a><br>
</small></td>
</tr>
<!-- Team Member -->
<tr>
<td>
<a href="/handbook/company/team/#jeffford_"><div style="display: inline-block; vertical-align: top;"><img class="avatar" src="https://about.gitlab.com/images/team/jeffford-crop.jpg" style="max-width: 50px !important; width: 50px !important; max-height: 50px !important; height: 50px !important;" alt="Jeff Ford"></div><div style="display: inline-block; vertical-align: top">Jeff Ford</a><br>
<small>
<i class="fas fa-earth-americas" style="padding-right: 5px;"></i>AMER<br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>jford</code><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/jeffford_">@jeffford_</a>
</small>
</td>
<td><small>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_svc_helpdesk</code>
</small></td>
<td><small>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/helpdesk">@gitlab-com/gl-security/corp/team/helpdesk</a><br>
</small></td>
</tr>
<!-- Team Member -->
<tr>
<td>
<a href="/handbook/company/team/#jeffersonmartin"><div style="display: inline-block; vertical-align: top;"><img class="avatar" src="https://about.gitlab.com/images/team/jeffmartin-crop.jpg" style="max-width: 50px !important; width: 50px !important; max-height: 50px !important; height: 50px !important;" alt="Jeff Martin"></div><div style="display: inline-block; vertical-align: top">Jeff Martin</a><br>
<small>
<i class="fas fa-earth-americas" style="padding-right: 5px;"></i>AMER<br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>jmartin</code><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/jeffersonmartin">@jeffersonmartin</a>
</small>
</td>
<td><small>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_identity</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_infra</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_platform</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_mgr_program</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_svc_infra</code>
</small></td>
<td><small>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/identity">@gitlab-com/gl-security/corp/team/identity</a><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/infra">@gitlab-com/gl-security/corp/team/infra</a><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/platform">@gitlab-com/gl-security/corp/team/platform</a><br>
</small></td>
</tr>
<!-- Team Member -->
<tr>
<td>
<a href="/handbook/company/team/#jwong6"><div style="display: inline-block; vertical-align: top;"><img class="avatar" src="https://about.gitlab.com/images/team/jennywong-crop.jpg" style="max-width: 50px !important; width: 50px !important; max-height: 50px !important; height: 50px !important;" alt="Jenny Wong"></div><div style="display: inline-block; vertical-align: top">Jenny Wong</a><br>
<small>
<i class="fas fa-earth-americas" style="padding-right: 5px;"></i>AMER<br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>jwong</code><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/jwong6">@jwong6</a>
</small>
</td>
<td><small>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_svc_helpdesk</code>
</small></td>
<td><small>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/helpdesk">@gitlab-com/gl-security/corp/team/helpdesk</a><br>
</small></td>
</tr>
<!-- Team Member -->
<tr>
<td>
<a href="/handbook/company/team/#kimwaters"><div style="display: inline-block; vertical-align: top;"><img class="avatar" src="https://about.gitlab.com/images/gitlab-logo-extra-whitespace.png" style="max-width: 50px !important; width: 50px !important; max-height: 50px !important; height: 50px !important;" alt="Kim Waters"></div><div style="display: inline-block; vertical-align: top">Kim Waters</a><br>
<small>
<i class="fas fa-earth-americas" style="padding-right: 5px;"></i>AMER<br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>kwaters</code><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/kimwaters">@kimwaters</a>
</small>
</td>
<td><small>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_mgr_program</code>
</small></td>
<td>
N/A
</td>
</tr>
<!-- Team Member -->
<tr>
<td>
<a href="/handbook/company/team/#mwhitaker"><div style="display: inline-block; vertical-align: top;"><img class="avatar" src="https://about.gitlab.com/images/team/marcuswhitaker-crop.jpg" style="max-width: 50px !important; width: 50px !important; max-height: 50px !important; height: 50px !important;" alt="Marcus Whitaker"></div><div style="display: inline-block; vertical-align: top">Marcus Whitaker</a><br>
<small>
<i class="fas fa-earth-americas" style="padding-right: 5px;"></i>AMER<br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>mwhitaker</code><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/mwhitaker">@mwhitaker</a>
</small>
</td>
<td><small>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_identity</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_saas</code>
</small></td>
<td><small>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/identity">@gitlab-com/gl-security/corp/team/identity</a><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/saas">@gitlab-com/gl-security/corp/team/saas</a><br>
</small></td>
</tr>
<!-- Team Member -->
<tr>
<td>
<a href="/handbook/company/team/#mloveless"><div style="display: inline-block; vertical-align: top;"><img class="avatar" src="https://about.gitlab.com/images/team/markloveless-crop.jpg" style="max-width: 50px !important; width: 50px !important; max-height: 50px !important; height: 50px !important;" alt="Mark Loveless"></div><div style="display: inline-block; vertical-align: top">Mark Loveless</a><br>
<small>
<i class="fas fa-earth-americas" style="padding-right: 5px;"></i>AMER<br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>mloveless</code><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/mloveless">@mloveless</a>
</small>
</td>
<td><small>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_device</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_saas</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_mgr_program</code>
</small></td>
<td><small>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/device-trust">@gitlab-com/gl-security/corp/team/device-trust</a><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/saas">@gitlab-com/gl-security/corp/team/saas</a><br>
</small></td>
</tr>
<!-- Team Member -->
<tr>
<td>
<a href="/handbook/company/team/#mhirata-gl"><div style="display: inline-block; vertical-align: top;"><img class="avatar" src="https://about.gitlab.com/images/team/maximilianhirata-crop.jpg" style="max-width: 50px !important; width: 50px !important; max-height: 50px !important; height: 50px !important;" alt="Maximillian Hirata"></div><div style="display: inline-block; vertical-align: top">Maximillian Hirata</a><br>
<small>
<i class="fas fa-earth-asia" style="padding-right: 5px;"></i>JAPAC<br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>mhirata</code><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/mhirata-gl">@mhirata-gl</a>
</small>
</td>
<td><small>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_svc_helpdesk</code>
</small></td>
<td><small>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/helpdesk">@gitlab-com/gl-security/corp/team/helpdesk</a><br>
</small></td>
</tr>
<!-- Team Member -->
<tr>
<td>
<a href="/handbook/company/team/#mrohr-ext"><div style="display: inline-block; vertical-align: top;"><img class="avatar" src="https://about.gitlab.com/images/gitlab-logo-extra-whitespace.png" style="max-width: 50px !important; width: 50px !important; max-height: 50px !important; height: 50px !important;" alt="Mic Rohr"></div><div style="display: inline-block; vertical-align: top">Mic Rohr</a><br>
<small>
<i class="fas fa-earth-americas" style="padding-right: 5px;"></i>AMER<br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>mrohr</code><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/mic_rohr">@mic_rohr</a>
</small>
</td>
<td><small>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_svc_helpdesk</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_svc_logistics</code>
</small></td>
<td><small>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/helpdesk">@gitlab-com/gl-security/corp/team/helpdesk</a><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/logistics">@gitlab-com/gl-security/corp/team/logistics</a><br>
</small></td>
</tr>
<!-- Team Member -->
<tr>
<td>
<a href="/handbook/company/team/#mbeee"><div style="display: inline-block; vertical-align: top;"><img class="avatar" src="https://about.gitlab.com/images/gitlab-logo-extra-whitespace.png" style="max-width: 50px !important; width: 50px !important; max-height: 50px !important; height: 50px !important;" alt="Michael Beltran"></div><div style="display: inline-block; vertical-align: top">Michael Beltran</a><br>
<small>
<i class="fas fa-earth-americas" style="padding-right: 5px;"></i>AMER<br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>mbeltran</code><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/mbeee">@mbeee</a>
</small>
</td>
<td><small>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_mgr_svc</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_svc_helpdesk</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_svc_logistics</code>
</small></td>
<td><small>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/helpdesk">@gitlab-com/gl-security/corp/team/helpdesk</a><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/logistics">@gitlab-com/gl-security/corp/team/logistics</a><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/managers">@gitlab-com/gl-security/corp/team/managers</a><br>
</small></td>
</tr>
<!-- Team Member -->
<tr>
<td>
<a href="/handbook/company/team/#malkobaisy"><div style="display: inline-block; vertical-align: top;"><img class="avatar" src="https://about.gitlab.com/images/team/mohammedalkobaisy-crop.jpg" style="max-width: 50px !important; width: 50px !important; max-height: 50px !important; height: 50px !important;" alt="Mohammed Al Kobaisy"></div><div style="display: inline-block; vertical-align: top">Mohammed Al Kobaisy</a><br>
<small>
<i class="fas fa-earth-europe" style="padding-right: 5px;"></i>EMEA<br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>malkobaisy</code><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/malkobaisy">@malkobaisy</a>
</small>
</td>
<td><small>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_identity</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_infra</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_platform</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_saas</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_svc_infra</code>
</small></td>
<td><small>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/identity">@gitlab-com/gl-security/corp/team/identity</a><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/infra">@gitlab-com/gl-security/corp/team/infra</a><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/platform">@gitlab-com/gl-security/corp/team/platform</a><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/saas">@gitlab-com/gl-security/corp/team/saas</a><br>
</small></td>
</tr>
<!-- Team Member -->
<tr>
<td>
<a href="/handbook/company/team/#sladgrove"><div style="display: inline-block; vertical-align: top;"><img class="avatar" src="https://about.gitlab.com/images/team/sladgrove-crop.jpg" style="max-width: 50px !important; width: 50px !important; max-height: 50px !important; height: 50px !important;" alt="Steve Ladgrove"></div><div style="display: inline-block; vertical-align: top">Steve Ladgrove</a><br>
<small>
<i class="fas fa-earth-asia" style="padding-right: 5px;"></i>JAPAC<br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>sladgrove</code><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/sladgrove">@sladgrove</a>
</small>
</td>
<td><small>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_svc_helpdesk</code>
</small></td>
<td><small>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/helpdesk">@gitlab-com/gl-security/corp/team/helpdesk</a><br>
</small></td>
</tr>
<!-- Team Member -->
<tr>
<td>
<a href="/handbook/company/team/#smanzuik"><div style="display: inline-block; vertical-align: top;"><img class="avatar" src="https://about.gitlab.com/images/team/stevemanzuik-crop.jpg" style="max-width: 50px !important; width: 50px !important; max-height: 50px !important; height: 50px !important;" alt="Steve Manzuik"></div><div style="display: inline-block; vertical-align: top">Steve Manzuik</a><br>
<small>
<i class="fas fa-earth-americas" style="padding-right: 5px;"></i>AMER<br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>smanzuik</code><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/smanzuik">@smanzuik</a>
</small>
</td>
<td><small>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_dir</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_mgr_program</code><br>
</small></td>
<td><small>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/managers">@gitlab-com/gl-security/corp/team/managers</a><br>
</small></td>
</tr>
<!-- Team Member -->
<tr>
<td>
<a href="/handbook/company/team/#vlad"><div style="display: inline-block; vertical-align: top;"><img class="avatar" src="https://about.gitlab.com/images/team/VladStoianovici-crop.jpg" style="max-width: 50px !important; width: 50px !important; max-height: 50px !important; height: 50px !important;" alt="Vlad Stoianovici"></div><div style="display: inline-block; vertical-align: top">Vlad Stoianovici</a><br>
<small>
<i class="fas fa-earth-europe" style="padding-right: 5px;"></i>EMEA<br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>vstoianovici</code><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/vlad">@vlad</a>
</small>
</td>
<td><small>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_infra</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_eng_platform</code><br>
<i class="fas fa-address-card" style="padding-right: 5px;"></i><code>corpsec_svc_infra</code>
</small></td>
<td><small>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/infra">@gitlab-com/gl-security/corp/team/infra</a><br>
<i class="fa-brands fa-gitlab" style="padding-right: 5px;"></i><a target="_blank" href="https://gitlab.com/groups/gitlab-com/gl-security/corp/team/platform">@gitlab-com/gl-security/corp/team/platform</a><br>
</small></td>
</tr>
</tbody>
</table>
