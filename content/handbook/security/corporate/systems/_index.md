---
title: Corporate Security (CorpSec) Systems
---

As GitLab has grown organically, several departments and functional groups have their own System Administrators ("System Owners") that handle day-to-day management of the tech stack applications that are specific to that department or functional group, within the framework of organization-wide compliance, infrastructure, and security best practices. Each [tech stack application](/handbook/business-technology/tech-stack-applications/) at GitLab has a System Owner that is the DRI for handling the implementation and day-to-day operational support for the team members that utilize that application (in their department or functional group). This has an added benefit of preventing the traditional IT department from being a bottleneck and allows each department to self-service as part of GitLab's [efficiency for the right group](/handbook/values/#efficiency-for-the-right-group) subvalue.

The Corporate Security department provides tech support helpdesk services for team members and temporary service providers (aka contractors, vendors, etc.), and configuration management engineering for the company-wide systems that we manage.

<table>
<thead>
<tr>
<th>System (Handbook Page)</th>
<th>Issue Templates</th>
<th>Issues</th>
<th>System Owners</th>
</tr>
</thead>
<tbody>
<!-- 1Password -->
<tr>
<td><a href="https://handbook.gitlab.systems/1password">1Password</a></td>
<td>
<i class="fas fa-key mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=1password_default">Create Vault</a><br>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=1password_default">Add User to Vault</a><br>
<i class="fas fa-user-minus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=1password_default">Remove User from Vault</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=1password_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-1password">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-1password">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-1password">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-1password</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #eab308; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER PASS</span>
<span style="background-color: #d97706; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN PASS</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/1password">@gitlab-com/gl-security/corp/sys/1password</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-1password</code><br>
</td>
</tr>
<!-- Access Control -->
<tr>
<td><a href="https://handbook.gitlab.systems/accessctl">Access Control (accessctl)</a><br><code>access.gitlab.systems</code><br><small>Available in FY25-Q3</small></td>
<td>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=accessctl_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-accessctl">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-accessctl">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-accessctl">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-accessctl</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #0284c7; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER SSO</span>
<span style="background-color: #16a34a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER APP ROLE</span>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/accessctl">@gitlab-com/gl-security/corp/sys/accessctl</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-accessctl</code><br>
</td>
</tr>
<!-- AWS (billing) -->
<tr>
<td>
<a href="https://handbook.gitlab.systems/aws/billing">Amazon Web Services (billing)</a><br>
<small>Cost Explorer and invoices across all orgs</small>
</td>
<td>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=aws_billing_default">Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=aws_billing_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-aws-billing">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-aws-billing">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-aws-billing">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-aws-billing</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #0284c7; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER SSO</span>
<span style="background-color: #16a34a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER APP ROLE</span>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/aws-billing">@gitlab-com/gl-security/corp/sys/aws-billing</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-aws-billing</code></td>
</tr>
<!-- Amazon Web Services Organization (services) -->
<tr>
<td>
<a href="https://handbook.gitlab.systems/aws/services">Amazon Web Services (services)</a><br>
<code>x6953</code> Organization
<small>
<ul>
<li><code>x0347 legacy-top</code></li>
<li><code>x4183 legacy-prod</code></li>
<li><code>x8738 sirt</code></li>
<li>See handbook page for all accounts</li>
</ul>
</small>
</td>
<td>
<i class="fas fa-cloud-arrow-up mr-2"></i><a href="/handbook/security/corporate/systems/aws/services/guides/create-project">Create Account for Service/Workload</a><br>
<i class="fas fa-users mr-2"></i><a href="/handbook/security/corporate/systems/aws/services/guides/manage-users">User and Role Management</a><br>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=aws_services_default">Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=aws_services_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-aws-services">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-aws-services">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-aws-services">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-aws-services</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #0284c7; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER SSO</span>
<span style="background-color: #16a34a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER APP ROLE</span>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/aws-services">@gitlab-com/gl-security/corp/sys/aws-services</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-aws-services</code></td>
</tr>
<!-- AWS (sandbox) -->
<tr>
<td><a href="https://handbook.gitlab.systems/gcp/sandbox">Amazon Web Services (sandbox)</a><br><code>x3027</code> Organization</td>
<td>
<i class="fas fa-cloud-arrow-up mr-2"></i><a href="/handbook/security/corporate/systems/aws/sandbox/guides/create-project">Create My AWS Account</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=aws_sandbox_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-aws-sandbox">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-aws-sandbox">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-aws-sandbox">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-aws-sandbox</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #eab308; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER 1PASS</span>
<span style="background-color: #16a34a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER APP ROLE</span>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/aws-sandbox">@gitlab-com/gl-security/corp/sys/aws-sandbox</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-aws-sandbox</code></td>
</tr>
<!-- AWS (systems) -->
<tr>
<td><a href="https://handbook.gitlab.systems/gcp/systems">Amazon Web Services (systems)</a><br><code>x6658</code> Organization<br><small>Secure Accounts for CorpSec, InfraSec, SIRT</small></td>
<td>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=aws_systems_sysadmin">Sysadmin Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=aws_systems_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-aws-systems">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-aws-systems">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-aws-systems">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-aws-systems</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/aws-systems">@gitlab-com/gl-security/corp/sys/aws-systems</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-aws-systems</code></td>
</tr>
<!-- AWS (dedicated-dev) -->
<tr>
<td><a href="https://handbook.gitlab.systems/aws/dedicated-dev">Amazon Web Services (dedicated-dev)</a><br><code>x3675</code> Organization</td>
<td>
<i class="fas fa-cloud-arrow-up mr-2"></i><a href="/handbook/security/corporate/systems/aws/dedicated-dev/guides/create-project">Create My AWS Account</a><br>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=aws_dedicated_dev_default">Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=aws_dedicated_dev_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-aws-dedicated-dev">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-aws-dedicated-dev">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-aws-dedicated-dev">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-aws-dedicated-dev</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #eab308; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER 1PASS</span>
<span style="background-color: #16a34a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER APP ROLE</span>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/aws/gcp-dedicated-dev">@gitlab-com/gl-security/corp/aws-dedicated-dev</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-aws-dedicated-dev</code></td>
</tr>
<!-- AWS (dedicated-prd) -->
<tr>
<td><a href="https://handbook.gitlab.systems/aws/dedicated-prd">Amazon Web Services (dedicated-prd)</a><br><code>x0475</code> Organization</td>
<td>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=aws_dedicated_prd_default">Sysadmin Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=aws_dedicated_prd_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-aws-dedicated-prd">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-aws-dedicated-prd">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-aws-dedicated-prd">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-aws-dedicated-prd</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/aws-dedicated-prd">@gitlab-com/gl-security/corp/sys/aws-dedicated-prd</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-aws-dedicated-prd</code></td>
</tr>
<!-- AWS (dedicated-pubsec) -->
<tr>
<td><a href="https://handbook.gitlab.systems/aws/dedicated-pubsec">Amazon Web Services (dedicated-pubsec)</a><br><code>x9885</code> Organization</td>
<td>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=aws_dedicated_pubsec_default">Sysadmin Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=aws_dedicated_pubsec_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-aws-dedicated-pubsec">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-aws-dedicated-pubsec">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-aws-dedicated-pubsec">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-aws-dedicated-pubsec</code><br>
<i class="fas fa-shield-halved mr-2"></i>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">PUBSEC ADMIN SSO</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/aws-dedicated-pubsec">@gitlab-com/gl-security/corp/sys/aws-dedicated-pubsec</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-aws-dedicated-pubsec</code></td>
</tr>
<!-- Azure -->
<tr>
<td><a href="https://handbook.gitlab.systems/azure">Azure (Sandbox)</a></td>
<td>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=azure_default">Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=azure_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-azure">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-azure">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-azure">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-azure</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #eab308; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER 1PASS</span>
<span style="background-color: #d97706; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN 1PASS</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/azure">@gitlab-com/gl-security/corp/sys/azure</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-azure</code></td>
</tr>
<!-- Domain Names -->
<tr>
<td><a href="https://handbook.gitlab.systems/domains">Domain Names</a></td>
<td>
<i class="fas fa-cart-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=domains_purchase">Purchase Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=domains_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-domains">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-domains">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-domains">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-domains</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/domains">@gitlab-com/gl-security/corp/sys/domains</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-domains</code></td>
</tr>
<!-- DNS Records -->
<tr>
<td><a href="https://handbook.gitlab.systems/dns">DNS Records</a></td>
<td>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=dns_update">Update Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=dns_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-dns">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-dns">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-dns">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-dns</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #6d28d9; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER MR</span>
<span style="background-color: #6d28d9; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN MR</span>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/dns">@gitlab-com/gl-security/corp/sys/dns</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-dns</code></td>
</tr>
<!-- Drive Strike -->
<tr>
<td><a href="https://handbook.gitlab.systems/drivestrike">DriveStrike</a></td>
<td><i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=drivestrike_default">Engineering Issue</a></td>
<td>
<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-drivestrike">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-drivestrike">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-drivestrike</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/drivestrike">@gitlab-com/gl-security/corp/sys/drivestrike</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-drivestrike</code></td>
</tr>
<!-- GitLab (com) -->
<tr>
<td><a href="https://handbook.gitlab.systems/gitlab/saas">GitLab (com)<br><code>gitlab.com</code></a></td>
<td>
<i class="fas fa-folder-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=gitlab_com_group_create">Create Group</a><br>
<i class="fas fa-folder-open mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=gitlab_com_group_update">Update Group</a><br>
<i class="fas fa-folder-minus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=gitlab_com_group_deprecate">Deprecate Group</a><br>
<i class="fas fa-code-branch mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=gitlab_com_project_create">Create Project</a><br>
<i class="fas fa-code-compare mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=gitlab_com_project_update">Update Project</a><br>
<i class="fas fa-code-merge mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=gitlab_com_project_deprecate">Deprecate Project</a><br>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=gitlab_com_user_grant">Add User to Group/Project</a><br>
<i class="fas fa-users-slash mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=gitlab_com_user_revoke">Remove User from Group/Project</a><br>
<i class="fas fa-user-secret mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=gitlab_com_svc">Service Account Request</a><br>
<i class="fas fa-ticket mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=gitlab_com_license_work">License for My Work Account</a><br>
<i class="fas fa-ticket mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=gitlab_com_license_personal">License for My Personal Account</a><br>
<i class="fas fa-ticket mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=gitlab_com_license_group">License for Demo/Internal Group</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=gitlab_com_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-gitlab-com">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-gitlab-com">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-gitlab-com">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-gitlab-com</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #eab308; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER 1PASS/SSO</span>
<span style="background-color: #d97706; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN 1PASS/SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/gitlab-com">@gitlab-com/gl-security/corp/sys/gitlab-com</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-gitlab-com</code></td>
</tr>
<!-- GitLab (ops) -->
<tr>
<td><a href="https://handbook.gitlab.systems/gitlab/ops">GitLab (ops)<br><code>ops.gitlab.net</code></a></td>
<td>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=gitlab_ops_default">Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=gitlab_ops_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-gitlab-ops">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-gitlab-ops">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-gitlab-ops">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-gitlab-ops</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #eab308; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER 1PASS/SSO</span>
<span style="background-color: #d97706; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN 1PASS/SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/gitlab-ops">@gitlab-com/gl-security/corp/sys/gitlab-ops</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-gitlab-ops</code></td>
</tr>
<!-- GitLab (dev) -->
<tr>
<td><a href="https://handbook.gitlab.systems/gitlab/dev">GitLab (dev)<br><code>dev.gitlab.org</code></a></td>
<td>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=gitlab_dev_default">Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=gitlab_dev_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-gitlab-dev">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-gitlab-dev">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-gitlab-dev">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-gitlab-dev</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #eab308; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER 1PASS/SSO</span>
<span style="background-color: #d97706; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN 1PASS/SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/gitlab-dev">@gitlab-com/gl-security/corp/sys/gitlab-dev</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-gitlab-dev</code></td>
</tr>
<!-- GitLab (stg) -->
<tr>
<td><a href="https://handbook.gitlab.systems/gitlab/stg">GitLab (stg)<br><code>staging.gitlab.com</code></a></td>
<td>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=gitlab_stg_default">Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=gitlab_stg_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-gitlab-stg">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-gitlab-stg">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-gitlab-stg">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-gitlab-stg</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #eab308; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER 1PASS/SSO</span>
<span style="background-color: #d97706; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN 1PASS/SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/gitlab-stg">@gitlab-com/gl-security/corp/sys/gitlab-stg</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-gitlab-stg</code></td>
</tr>
<!-- GitLab (cfg) -->
<tr>
<td><a href="https://handbook.gitlab.systems/gitlab/cfg">GitLab (cfg)<br><code>cfg.gitlab.systems</code></a></td>
<td>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=gitlab_cfg_default">Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=gitlab_cfg_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-gitlab-cfg">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-gitlab-cfg">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-gitlab-cfg">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-gitlab-cfg</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #0284c7; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER SSO</span>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/gitlab-cfg">@gitlab-com/gl-security/corp/sys/gitlab-cfg</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-gitlab-cfg</code></td>
</tr>
<!-- GCP (billing) -->
<tr>
<td><a href="https://handbook.gitlab.systems/gcp/billing">Google Cloud Platform (Billing)</td>
<td>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=gcp_billing_default">Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=gcp_billing_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-gcp-billing">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-gcp-billing">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-gcp-billing">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-gcp-billing</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #0284c7; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER SSO</span>
<span style="background-color: #16a34a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER APP ROLE</span>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/gcp-billing">@gitlab-com/gl-security/corp/sys/gcp-billing</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-gcp-billing</code></td>
</tr>
<!-- GCP (com) -->
<tr>
<td><a href="https://handbook.gitlab.systems/gcp/com">Google Cloud Platform (com)<br><code>gitlab.com</code></a></td>
<td>
<i class="fas fa-cloud-arrow-up mr-2"></i><a href="/handbook/security/corporate/systems/gcp/com/guides/create-project">Create Project for Service/Workload</a><br>
<i class="fas fa-users mr-2"></i><a href="/handbook/security/corporate/systems/gcp/com/guides/manage-users">User and Role Management</a><br>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=gcp_com_default">Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=gcp_com_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-gcp-com">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-gcp-com">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-gcp-com">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-gcp-com</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #0284c7; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER SSO</span>
<span style="background-color: #16a34a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER APP ROLE</span>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/gcp-com">@gitlab-com/gl-security/corp/sys/gcp-com</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-gcp-com</code></td>
</tr>
<!-- GCP (sandbox) -->
<tr>
<td><a href="https://handbook.gitlab.systems/gcp/sandbox">Google Cloud Platform (sandbox)<br><code>gitlabsandbox.cloud</code></a></td>
<td>
<i class="fas fa-cloud-arrow-up mr-2"></i><a href="/handbook/security/corporate/systems/gcp/sandbox/guides/create-project">Create My GCP Project</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=gcp_sandbox_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-gcp-sandbox">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-gcp-sandbox">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-gcp-sandbox">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-gcp-sandbox</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #0284c7; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER SSO</span>
<span style="background-color: #16a34a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER APP ROLE</span>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/gcp-sandbox">@gitlab-com/gl-security/corp/sys/gcp-sandbox</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-gcp-sandbox</code></td>
</tr>
<!-- GCP (systems) -->
<tr>
<td><a href="https://handbook.gitlab.systems/gcp/systems">Google Cloud Platform (systems)<br><code>gitlab.systems</code></a></td>
<td>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=gcp_systems_sysadmin">Sysadmin Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=gcp_systems_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-gcp-systems">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-gcp-systems">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-gcp-systems">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-gcp-systems</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/gcp-systems">@gitlab-com/gl-security/corp/sys/gcp-systems</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-gcp-systems</code></td>
</tr>
<!-- GCP (cells-dev) -->
<tr>
<td><a href="https://handbook.gitlab.systems/gcp/cells-dev">Google Cloud Platform (cells-dev)<br><code>gitlab-cells.dev</code></a></td>
<td>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=gcp_cells_dev_default">Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=gcp_cells_dev_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-gcp-cells-dev">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-gcp-cells-dev">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-gcp-cells-dev">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-gcp-cells-dev</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #0284c7; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER SSO</span>
<span style="background-color: #16a34a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER APP ROLE</span>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/gcp-cells-dev">@gitlab-com/gl-security/corp/sys/gcp-cells-dev</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-gcp-cells-dev</code></td>
</tr>
<!-- GCP (cells-prd) -->
<tr>
<td><a href="https://handbook.gitlab.systems/gcp/cells-prd">Google Cloud Platform (cells-prd)<br><code>gitlab-cells.com</code></a></td>
<td>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=gcp_cells_prd_default">Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=gcp_cells_prd_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-gcp-cells-prd">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-gcp-cells-prd">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-gcp-cells-prd">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-gcp-cells-prd</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #0284c7; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER SSO</span>
<span style="background-color: #16a34a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER APP ROLE</span>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/gcp-cells-prd">@gitlab-com/gl-security/corp/sys/gcp-cells-prd</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-gcp-cells-prd</code></td>
</tr>
<!-- GCP (dedicated-dev) -->
<tr>
<td><a href="https://handbook.gitlab.systems/gcp/dedicated-dev">Google Cloud Platform (dedicated-dev)<br><code>gitlab-private.org</code></a></td>
<td>
<i class="fas fa-cloud-arrow-up mr-2"></i><a href="/handbook/security/corporate/systems/gcp/dedicated-dev/guides/create-project">Create My GCP Project</a><br>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=gcp_dedicated_dev_default">Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=gcp_dedicated_dev_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-gcp-dedicated-dev">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-gcp-dedicated-dev">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-gcp-dedicated-dev">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-gcp-dedicated-dev</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #0284c7; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER SSO</span>
<span style="background-color: #16a34a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER APP ROLE</span>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/gcp-dedicated-dev">@gitlab-com/gl-security/corp/sys/gcp-dedicated-dev</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-gcp-dedicated-dev</code></td>
</tr>
<!-- GCP (dedicated-prd) -->
<tr>
<td><a href="https://handbook.gitlab.systems/gcp/dedicated-prd">Google Cloud Platform (dedicated-prd)<br><code>gitlab-dedicated.com</code></a></td>
<td>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=gcp_dedicated_prd_default">Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=gcp_dedicated_prd_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-gcp-dedicated-prd">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-gcp-dedicated-prd">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-gcp-dedicated-prd">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-gcp-dedicated-prd</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #0284c7; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER SSO</span>
<span style="background-color: #16a34a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER APP ROLE</span>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/gcp-dedicated-prd">@gitlab-com/gl-security/corp/sys/gcp-dedicated-prd</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-gcp-dedicated-prd</code></td>
</tr>
<!-- Google Workspace Apps -->
<tr>
<td><a href="https://handbook.gitlab.systems/google-apps">Google Workspace Apps</a></td>
<td>
<i class="fas fa-window-restore mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=google_app_create">Authorize/Create App</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=google_app_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-google-app">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-google-app">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-google-app">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-google-app</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/google-app">@gitlab-com/gl-security/corp/sys/google-app</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-google-app</code></td>
</tr>
<!-- Google Workspace Drive -->
<tr>
<td><a href="https://handbook.gitlab.systems/google-drive/com">Google Workspace Drive (Docs, Sheets, Slides)</a></td>
<td>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=google_drive_manage">Create or Update Drive</a><br>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=google_drive_users">Add or Remove Users</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=google_drive_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-google-drive">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-google-drive">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-google-drive">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-google-drive</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #0284c7; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER SSO</span>
<span style="background-color: #16a34a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER APP GROUP</span>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/google-drive">@gitlab-com/gl-security/corp/sys/google-drive</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-google-drive</code></td>
</tr>
<!-- Google Workspace Groups -->
<tr>
<td><a href="https://handbook.gitlab.systems/google-groups/com">Google Workspace Groups (Mailing Lists)</a></td>
<td>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=google_group_manage">Create or Update Group</a><br>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=google_group_users">Add or Remove Users</a><br>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-google-group">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-google-group">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-google-group">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-google-group</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #0284c7; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER SSO</span>
<span style="background-color: #16a34a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER APP GROUP</span>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/google-group">@gitlab-com/gl-security/corp/sys/google-group</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-google-group</code></td>
</tr>
<!-- Google Workspace Org -->
<tr>
<td><a href="https://handbook.gitlab.systems/google-org">Google Workspace Org Config</a></td>
<td>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=google_org_change">Change Management Issue</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=google_org_default">Engineering Issue</a><br>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=google_org_svc">Service Account Request</a><br>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=google_org_sysadmin">Sysadmin Access Request</a><br>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-google-org">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-google-org">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-google-org">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-google-org</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/google-org">@gitlab-com/gl-security/corp/sys/google-org</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-google-org</code></td>
</tr>
<!-- Jamf -->
<tr>
<td><a href="https://handbook.gitlab.systems/jamf">Jamf MDM</a><br><code>gitlab.jamfcloud.com</code></td>
<td>
<i class="fas fa-laptop-medical mr-2"></i><a href="/handbook/security/corporate/systems/jamf/guides/enrollment">Enrollment Instructions</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=jamf_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-jamf">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-jamf">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-jamf">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-jamf</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/jamf">@gitlab-com/gl-security/corp/sys/jamf</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-jamf</code></td>
</tr>
<!-- Nira -->
<tr>
<td><a href="https://handbook.gitlab.systems/nira">Nira (Google Drive)</a></td>
<td>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=nira_default">Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=nira_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-nira">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-nira">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-nira">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-nira</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #0284c7; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER SSO</span>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/nira">@gitlab-com/gl-security/corp/sys/nira</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-nira</code></td>
</tr>
<!-- NordLayer -->
<tr>
<td>
<a href="https://handbook.gitlab.systems/vpn">NordLayer VPN</a>
</td>
<td>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=vpn_default">Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=vpn_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-vpn">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-vpn">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-vpn">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-vpn</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #0284c7; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER SSO</span>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/vpn">@gitlab-com/gl-security/corp/sys/vpn</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-vpn</code></td>
</tr>
<!-- Okta Apps -->
<tr>
<td>
<a href="https://handbook.gitlab.systems/okta/prod/apps">Okta Applications</a><br>
<code>gitlab.okta.com</code><br>
</td>
<td>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=okta_app">Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=okta_app_default">Engineering Issue</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=okta_app_create">New Application Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=okta_app_update">Update Application Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=okta_app_deprecate">Deprecate Application Request</a><br>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-okta-app">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-okta-app">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-okta-app">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-okta-app</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #0284c7; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER SSO</span>
<span style="background-color: #16a34a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER SSO GROUP</span>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/svc/access-requests">@gitlab-com/gl-security/corp/svc/access-requests</a><br>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/okta-apps">@gitlab-com/gl-security/corp/sys/okta-apps</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-okta-apps</code></td>
</tr>
<!-- Okta Groups -->
<tr>
<td>
<a href="https://handbook.gitlab.systems/okta/prod/groups">Okta Groups (for App Assignment)</a><br>
<code>gitlab.okta.com</code><br>
</td>
<td>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=okta_group">Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=okta_group_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-okta-group">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-okta-group">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-okta-group">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-okta-group</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #16a34a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER SSO GROUP</span>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/svc/access-requests">@gitlab-com/gl-security/corp/svc/access-requests</a><br>
<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/okta-groups">@gitlab-com/gl-security/corp/sys/okta-groups</a>
<br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-okta-groups</code></td>
</tr>
<!-- Okta Org -->
<tr>
<td>
<a href="https://handbook.gitlab.systems/okta/prod/org">Okta Org Configuration and Policies</a><br>
<code>gitlab.okta.com</code><br>
</td>
<td>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=okta_org_change">Change Management Issue</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=okta_org_default">Engineering Issue</a><br>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=okta_org_svc">Service Account Request</a><br>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=okta_org_sysadmin">Sysadmin Access Request</a><br>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-okta-org">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-okta-org">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-okta-org">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-okta-org</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #0284c7; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER SSO</span>
<span style="background-color: #16a34a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER SSO GROUP</span>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/okta-org">@gitlab-com/gl-security/corp/sys/okta-org</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-okta-org</code></td>
</tr>
<!-- Okta Users -->
<tr>
<td>
<a href="https://handbook.gitlab.systems/okta/prod/users">Okta SSO and Users</a><br>
<code>gitlab.okta.com</code><br>
</td>
<td>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=okta_user_default">Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=okta_user_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-okta-user">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-okta-user">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-okta-user">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-okta-user</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #0284c7; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER SSO</span>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/okta-users">@gitlab-com/gl-security/corp/sys/okta-users</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-okta-users</code></td>
</tr>
<!-- Okta Workflows -->
<tr>
<td>
<a href="https://handbook.gitlab.systems/okta/prod/workflows">Okta Workflows</a><br>
<code>gitlab.okta.com</code><br>
</td>
<td>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=okta_workflow_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-okta-flow">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-okta-flow">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-okta-flow">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-okta-flow</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/okta-flows">@gitlab-com/gl-security/corp/sys/okta-flows</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-okta-flows</code></td>
</tr>
<!-- Sandbox Cloud -->
<tr>
<td>
<a href="https://handbook.gitlab.systems/sandbox-cloud">Sandbox Cloud (HackyStack)</a><br>
<code>gitlabsandbox.cloud</code><br>
</td>
<td>
<i class="fas fa-book mr-2"></i><a href="/handbook/security/corporate/systems/sandbox-cloud/guides">Self Service Guide</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=sandbox_cloud_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-sandbox-cloud">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-sandbox-cloud">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-sandbox-cloud</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #0284c7; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER SSO</span>
<span style="background-color: #6d28d9; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSH</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/sandbox-cloud">@gitlab-com/gl-security/corp/sys/sandbox-cloud</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-sandbox-cloud</code><br>
<i class="fa-brands fa-slack mr-2"></i><code>#sandbox-cloud-questions</code>
</td>
</tr>
<!-- SentinelOne EDR -->
<tr>
<td>
<a href="https://handbook.gitlab.systems/sentinelone">SentinelOne</a><br>
</td>
<td>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=sentinelone_sysadmin">Sysadmin Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=sentinelone_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-sentinelone">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-sentinelone">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-sentinelone">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-sentinelone</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #b91c1c; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">ADMIN APP ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/sentinelone">@gitlab-com/gl-security/corp/sys/sentinelone</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-sentinelone</code></td>
</tr>
<!-- Slack -->
<tr>
<td>
<a href="https://handbook.gitlab.systems/slack">Slack</a><br>
<code>gitlab.enterprise.slack.com</code><br>
</td>
<td>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=slack_default">Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=slack_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-slack">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-slack">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-slack">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-slack</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #0284c7; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER APP ADMIN ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/slack">@gitlab-com/gl-security/corp/sys/slack</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-slack</code></td>
</tr>
<!-- Zoom -->
<tr>
<td>
<a href="https://handbook.gitlab.systems/zoom">Zoom</a><br>
<code>gitlab.zoom.us</code><br>
</td>
<td>
<i class="fas fa-user-plus mr-2"></i><a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=zoom_default">Access Request</a><br>
<i class="fas fa-gear mr-2"></i><a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=zoom_default">Engineering Issue</a>
</td>
<td>
<a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/?label_name%5B%5D=corpsec-sys-zoom">ARs</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/?label_name%5B%5D=corpsec-sys-zoom">Issues</a>
&nbsp;/&nbsp;<a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/-/epics?label_name[]=corpsec-sys-zoom">Epics</a>
<br>
<i class="fas fa-tag mr-2"></i><code>corpsec-sys-zoom</code><br>
<i class="fas fa-tag mr-2"></i>
<span style="background-color: #0284c7; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER SSO</span>
<span style="background-color: #71717a; color: #ffffff; font-weight: normal; padding: 2px 4px; border-radius: 0.25rem; letter-spacing: 0.05em; font-size: 10px;">USER APP ADMIN ROLE</span>
</td>
<td>
<i class="fa-brands fa-gitlab mr-2"></i><a href="https://gitlab.com/groups/gitlab-com/gl-security/corp/sys/zoom">@gitlab-com/gl-security/corp/sys/zoom</a><br>
<i class="fa-brands fa-slack mr-2"></i><code>@sysowners-zoom</code></td>
</tr>
</tbody>
</table>
