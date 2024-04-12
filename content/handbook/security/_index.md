---
title: Security at GitLab
---


## <i class="fas fa-rocket" id="biz-tech-icons"></i> Security Vision and Mission

Our vision is to transparently lead the world to secure outcomes.

Our mission is to enable everyone to innovate and succeed on a safe, secure, and trusted DevSecOps platform. This will be achieved through 5 security operating principles:

1. Accelerate business success with a focus on:
   - Prioritize ‘boring’, iterative solutions that minimize risk
   - Find ways to say Yes
   - Understand goals before recommending solutions
   - Use GitLab first
1. Efficient operations with a focus on:
   - Technical controls over handbook rules
   - Leverage automation first (robots over humans)
   - Responsible decisions (Spending, Tooling, Staffing, etc) over low ROI (return on investment) decisions
   - Reusable or repeatable over singular solutions
1. Transparency with a focus on:
   - Responsible protection of MNPI (material non-public information)
   - Evangelize [dogfooding]({{< ref "values#dogfooding" >}}) of GitLab publicly
   - Lead with metrics
   - Balance security with usefulness
1. Risk Reduction with a focus on:
   - Secure by default
   - Preventative controls over detective controls
   - Solving root causes over treating symptoms
   - Visibility through Coverage, Discoverability, Observability
1. Collaborative Culture with a focus on:
   - Working together on common solutions
   - Solve shared problems with shared solutions
   - Simplifying language for everyone to understand
   - Avoiding security jargon
   - Seek opportunities to help others succeed

To help achieve the vision of transparently leading the world to secure outcomes, the Security Division has nominated a [Security Culture Committee]({{< ref "security-culture" >}}).

### Division Structure

The Security Division provides essential security operational services, is directly engaged in the development and release processes, and offers consultative and advisory services to better enable the business to function while minimising risk.

To reflect this, we have structured the Security Division around four key tenets, which drive the structure and the activities of our group. These are :

<table id="Sub-Departments">
  <tr>
    <th class="text-center">
        <i class="fas fa-bullseye i-bt"></i>
        <h5><a href="{{< ref "./product-security" >}}">Product Security</a></h5>
    </th>
    <th class="text-center">
        <i class="fas fa-shield-alt i-bt"></i>
        <h5><a href="{{< ref "./security-operations" >}}">Security Operations</a></h5>
    </th>
    <th class="text-center">
        <i class="fas fa-bullseye i-bt"></i>
        <h5><a href="{{< ref "./threat-management" >}}">Threat Management</a></h5>
    </th>
    <th class="text-center">
        <i class="fas fa-hands-helping i-bt"></i>
        <h5><a href="{{< ref "./security-assurance" >}}">Security Assurance</a></h5>
    </th>
  </tr>
  <tr>
      <td>
        <ul>
            <li><a href="{{< ref "./product-security/application-security" >}}">Application Security</a></li>
            <li><a href="{{< ref "./product-security/infrastructure-security" >}}">Infrastructure Security</a></li>
            <li><a href="{{< ref "./product-security/security-research" >}}">Security Research</a></li>
            <li><a href="{{< ref "./product-security/vulnerability-management" >}}">Security Threat & Vulnerability Management</a></li>
        </ul>
      </td>
      <td>
        <ul>
            <li><a href="{{< ref "./security-operations/sirt" >}}">Security Incident Response Team (SIRT)</a></li>
            <li><a href="{{< ref "./security-operations/trustandsafety" >}}">Trust and Safety</a></li>
            <li><a href="{{< ref "./security-operations/security-logging" >}}">Security Logging</a></li>
        </ul>
      </td>
      <td>
        <ul>
            <li><a href="{{< ref "./threat-management/identity" >}}">Identity Engineering, Infra, and Ops</a></li>
            <li><a href="{{< ref "./threat-management/red-team" >}}">Red Team</a></li>
        </ul>
      </td>
      <td>
        <ul>
            <li><a href="{{< ref "./security-assurance/field-security" >}}">Field Security</a></li>
            <li><a href="{{< ref "./security-assurance/security-compliance" >}}">Security Compliance, Commercial</a></li>
            <li><a href="{{< ref "./security-assurance/dedicated-compliance" >}}">Security Compliance, Dedicated Markets</a></li>
            <li><a href="{{< ref "./security-assurance/governance" >}}">Security Governance</a></li>
            <li><a href="{{< ref "./security-assurance/security-risk" >}}">Security Risk</a></li>
        </ul>
      </td>
  </tr>
</table>

#### Secure the Product - The Product Security Department

The [Product Security Department]({{< ref "product-security" >}}) is primarily focused on Securing the Product. This reflects the Security Division's current efforts to be involved in the Application development and Release cycle for Security Releases, Infrastructure Security, and our HackerOne bug bounty program.

The term “Product” is interpreted broadly and includes the GitLab application itself and all other integrations and code that is developed internally to support the GitLab application for the multi-tenant SaaS. Our responsibility is to ensure all aspects of GitLab that are exposed to customers or that host customer data are held to the highest security standards, and to be proactive and responsive to ensure world-class security in anything GitLab offers.

#### Protect the Company - The Security Operations Department

[Security Operations Department]({{< ref "security-operations" >}}) teams are primarily focused on protecting GitLab the business and GitLab's platform. This encompasses protecting company property as well as to prevent, detect and respond to risks and events targeting the business and our platform. This department includes the Security Incident Response Team (SIRT) and the Trust and Safety team.

These functions have the responsibility of shoring up and maintaining the security posture of GitLab's platform to ensure enterprise-level security is in place to protect our new and existing customers.

#### Lead with Data - The Threat Management Department

[Threat Management Department]({{< ref "threat-management" >}}) teams are cross-functional. They are responsible for collaborating across the Security Division to identify, communicate, and remediate threats or vulnerabilities that may impact GitLab, our Team Members or our users and the community at large.

#### Assure the Customer - The Security Assurance Department

The [Security Assurance Department]({{< ref "security-assurance" >}}) is comprised of the teams noted above. They target Customer Assurance projects among their responsibilities. This reflects the need for us to provide resources to our customers to assure them of the security and safety of GitLab as an application to use within their organisation and as a enterprise-level SaaS. This also involves providing appropriate support, services and resources to customers so that they trust GitLab as a Secure Company, as a Secure Product, and Secure SaaS

#### Other groups and individuals

##### Security Program Management

Security Program Management is responsible for complete overview and driving security initiatives across Product, Engineering, and Business Enablement. This includes the tracking, monitoring, and influencing priority of significant security objectives, goals, and plans/roadmaps from all security sub-departments.  [Security Program Manager Job Family]({{< ref "security-program-manager" >}})

###### Security Program areas of focus

- Drive Accountability & Visibility for Program Objectives & Goals
- Drive, Gather, & Examine Program Needs & Opportunities through Intra & Inter Organizational Collaboration
- Provide Insights & Suggestions Impacting Program Strategy & Roadmap
- Assist in Gathering & Prioritizing Program Risks, Requirements, & Alignment to Influence Remediation
- Drive & Define Acceptance Criteria, Value Proposition, Milestones to Visualize and Communicate Program Effectiveness
- Develop Repeatable, Scalable, Efficient, Effective, Processes & Procedures

### Product development

In keeping with our [core values]({{< ref "values" >}}) and the belief that [everyone can contribute]({{< ref "mission#everyone-can-contribute" >}}), the Security Division is committed to [dogfooding]({{< ref "values#dogfooding" >}}) and contributing to the development of the GitLab product.

-----

### <i id="biz-tech-icons" class="fas fa-users"></i> Contacting the Team

#### Reporting vulnerabilities and security issues

For information regarding GitLab's [HackerOne bug bounty program]({{< ref "hackerone-process" >}}), and creating and scheduling security issues, please see our [engaging with security]({{< ref "engaging-with-security" >}}) page and our [Responsible Disclosure Policy](https://about.gitlab.com/security/disclosure/).

#### Reporting an Incident

If an urgent security incident has been identified or you suspect an incident may have occurred, please refer to [Engaging the Security Engineer On-Call]({{< ref "engaging-security-on-call" >}}).  Examples include, but are not limited to:
 - Lost or stolen devices
 - Leaked credentials
 - Endpoint compromise or infection
 - Exposure of sensitive GitLab data

GitLab provides a `panic@gitlab.com` email address for team members to use in situations when Slack is inaccessible and immediate security response is required.

This email address is only accessible to GitLab team members and can be reached from their gitlab.com or personal email address as listed in Workday. Using this address provides an excellent way to limit the damage caused by a loss of one of these devices.

Additionally if a GitLab team member experiences a personal emergency the People Group also provides an [emergency contact email](/handbook/people-group/#in-case-of-emergency).

#### Sub-groups and projects

Many teams follow a convention of having a GitLab group `team-name-team` with a primary project used for issue tracking underneath `team-name` or similar.
- [@gitlab-com/gl-security](https://gitlab.com/gitlab-com/gl-security/) is used for @'mentioning the entire Security Division
- [@gitlab-com/gl-security/security-managers](https://gitlab.com/gitlab-com/gl-security/security-managers) is used for @'mentioning all managers in the Security Division
- [Security Department Meta](https://gitlab.com/gitlab-com/gl-security/security-department-meta/) is for Security Division initiatives, `~meta` and backend tasks, and catch all for anything not covered by other projects
- [Security Assurance (@gitlab-com/gl-security/security-assurance)](https://gitlab.com/gitlab-com/gl-security/security-assurance)
    - [@gitlab-com/gl-security/security-assurance/sec-compliance](https://gitlab.com/gitlab-com/gl-security/compliance)
    - [@gitlab-com/gl-security/security-assurance/field-security-team](https://gitlab.com/gitlab-com/gl-security/security-assurance/field-security-team)
    - [@gitlab-com/gl-security/security-assurance/security-risk-team](https://gitlab.com/gitlab-com/gl-security/security-assurance/security-risk-team)
    - [@gitlab-com/gl-security/security-assurance/governance](https://gitlab.com/gitlab-com/gl-security/security-assurance/governance)
- [Product Security (@gitlab-com/gl-security/product-security)](https://gitlab.com/gitlab-com/gl-security/product-security/product-security-meta)
    - [gitlab-com/gl-security/engineering-and-research-meta](https://gitlab.com/gitlab-com/gl-security/engineering-and-research-meta) For department wide management and planning issues.
    - [gitlab-com/gl-security/engineering-and-research/automation-team/automation](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/automation-team/automation)
    - [@gitlab-com/gl-security/product-security/appsec](https://gitlab.com/gitlab-com/gl-security/product-security/appsec) is the primary group for @'mentioning the Application Security team.
- [Security Operations (@gitlab-com/gl-security/security-operations)](https://gitlab.com/gitlab-com/gl-security/security-operations) Security Operations Department
    - [@gitlab-com/gl-security/security-operations/sirt](https://gitlab.com/gitlab-com/gl-security/security-operations/sirt) is the primary group for @'mentioning the Security Incident Response Team (SIRT).
        - [SIRT (private)](https://gitlab.com/gitlab-com/gl-security/security-operations/sirt/operations) for SIRT issues.
    - [@gitlab-com/gl-security/security-operations/trust-and-safety](https://gitlab.com/gitlab-com/gl-security/security-operations/trust-and-safety) is the primary group for @'mentioning the Trust & Safety team.
- Security Threat Management
    - Identity and Access Management
        - [@gitlab-com/gl-security/identity/infra](https://gitlab.com/gitlab-com/gl-security/identity/infra)
        - [@gitlab-com/gl-security/identity/ops](https://gitlab.com/gitlab-com/gl-security/identity/ops)
    - [@gitlab-com/gl-security/threatmanagement/redteam](https://gitlab.com/gitlab-com/gl-security/threatmanagement/redteam)
    - [@gitlab-com/gl-security/security-research](https://gitlab.com/gitlab-com/gl-security/security-research)
    - [@gitlab-com/gl-security/threatmanagement/vulnerability-management](https://gitlab.com/gitlab-com/gl-security/threatmanagement/vulnerability-management)


#### Slack Channels

- [#security](https://gitlab.slack.com/archives/security); Used for general security questions and posting of external links for the great discussions. Company wide security relevant announcements are announced in #whats-happening-at-gitlab and may be copied here.
- [#security-department](https://gitlab.slack.com/archives/security-department) - Daily questions and discussions focused on work internal to the Security Division. Can be used for
reporting when unsure of where to go.
- [#abuse](https://gitlab.slack.com/archives/abuse) - Used for reporting suspected abusive activity/content (*GitLab Internal*) as well as general discussions regarding anti-abuse efforts. Use `@trust-and-safety` in the channel to alert the team to anything urgent.
- `#security-department-standup` - Private channel for daily standups.
- `#incident-management` and [other infrastructure department channels](/handbook/engineering/infrastructure/#common-links)
- `#security-alert-manual` - New reports for the Security Division from various intake sources, including ZenDesk and new HackerOne reports.
- `#hackerone-feed` - Feed of most activity from our HackerOne program.
- Other `#security-alert-*` and `#abuse*` - Multiple channels for different notifications
handled by the Security Division.
- Use the **@sirt-members** mention in any Slack channel to tag the members of the Security Incident Response Team (SIRT).
- Use the **@sec-assurance-team** mention in any Slack channel to tag the members of the Security Compliance, Risk, and Governance & Field Security teams.
- Use the **@field-security** mention in any Slack channel to tag the members of the Field Security team.
- Use the **@appsec-team** mention in any Slack channel to tag the members of the Application Security team.
- Use the **@trust-and-safety** mention in any Slack channel to tag the members of the Trust & Safety team.
- Use the **@security-identity** mention in any Slack channel (or `#security-identity-ops`) to tag members of the Identity team.

#### Ransomware

For an overview of the communication and response process for a suspected ransomware attack, please see our [Responding to Ransomware]({{< ref "responding-to-ransomware" >}}) page.

-----

### Important topics

#### Tokens

The following best practices will help ensure tokens are handled appropriately at GitLab. For detailed requirements regarding the use of tokens at GitLab, please see our [token management standard]({{< ref "token-management-standard" >}}).

1. When creating a [Personal Access Token](https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html), be sure to choose the appropriate [scopes](/handbook/security/security-operations/sirt/engaging-security-on-call.html) that only have the permissions that are absolutely necessary.
1. Oftentimes a [Project Access Token](https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html) might be sufficient instead of a Personal Access Token. Project Access Tokens have a much more limited scope and should be preferred over Personal Access Tokens whenever possible.
1. Always set an expiration for your tokens when creating them. Tokens should preferably expire in a matter of hours or a day.
1. Be mindful to keep these personal access tokens secret. Be particularly careful not to accidentally commit them in configuration files, paste them into issue or merge request comments, or otherwise expose them.
1. Please consider periodically reviewing your currently active Personal Access Tokens and revoking any that are no longer needed.
1. Personal Access Tokens will be highly discouraged within the GitLab production environment, and disallowed/disabled wherever possible. Existing tokens shall remain, but additional issuance will not be permissible/possible.
1. If you believe a personal access token has been leaked, revoke it immediately (if possible) and [contact the security team](/handbook/security/security-operations/sirt/engaging-security-on-call.html) using the `/security` Slack command.

#### Receive notification of security releases

- To receive security release blog notifications delivered to your inbox, visit our [contact us](/handbook/company/contact/) page.
- To receive release notifications via RSS, subscribe to our [security release RSS feed](https://about.gitlab.com/security-releases.xml) or our [RSS feed for all releases](https://about.gitlab.com/all-releases.xml).
- For additional information regarding security releases, please visit the Delivery Team's [security releases](https://about.gitlab.com/handbook/engineering/releases/security-releases/) page.

### <i class="fas fa-book" style="color:rgb(110,73,203)" aria-hidden="true"></i> Resources




#### Tools

- [Incident-Tools (private)](https://gitlab.com/gitlab-com/gl-security/incident-tools)
for working scripts and other code during or while remediating an incident.
If the tool is applicable outside of the `GitLab.com` environment, consider
if it's possible to release when the `~security` issue becomes
non-confidential. This group can also be used for private demonstration projects for
security issues.
- [security-tools (mostly private)](https://gitlab.com/gitlab-com/security-tools/) contains some
operational tools used by the security teams. Contents and/or configurations
require that most of these projects remain private.

#### Calendar

We welcome GitLab team members to join meetings that are on our shared [Security Calendar](https://calendar.google.com/calendar?cid=c_iou94moo2dfleqh610khmis27g%40group.calendar.google.com).

#### Other Frequently Used GitLab.com Projects

Security crosses many teams in the company, so you will find `~security` labelled
issues across all GitLab projects, especially:

- [gitlab-foss](https://gitlab.com/gitlab-org/gitlab-foss/issues/)
- [gitlab](https://gitlab.com/gitlab-org/gitlab/issues/)
- [infrastructure](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/)
- [production](https://gitlab.com/gitlab-com/gl-infra/production/issues/)

When opening issues, please follow the [Creating New Security Issues]({{% ref "engaging-with-security#creating-new-security-issues" %}}) process for using labels and the confidential flag.

#### Other Resources for GitLab Team Members

- [Security Best Practices]({{< ref "." >}}), using 1Password and similar tools, are documented
  on their own [security best practices page]({{< ref "." >}}).
- [Secure Coding Training]({{< ref "secure-coding-training" >}}).
- GitLab.com [data breach notification policy](https://about.gitlab.com/security/#data-breach-notification-policy).
- GitLab Internal Acceptable Use [Policy](/handbook/people-group/acceptable-use-policy/).
- For GitLab.com, we have developed a [Google Cloud Platform (GCP) Security Guidelines Policy](https://docs.google.com/document/d/1BBTWC5OpIqrva7DqH4nkjYUmNZ3UFbc6erqV89P_N-o/edit?usp=sharing) document, which outlines recommended best practices, and is enforced through
our security automation initiatives.
- GitLab Security Tanuki for use on security release blogs, social media and security related swag as appropriate:
    - [Web-RGB](https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing/-/tree/master/design/_deprecated/gitlab-brand-assets/gitlab-logo-files/gitlab-security-logo/web-rgb)
    - [Print-CMYK](https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing/-/tree/master/design/_deprecated/gitlab-brand-assets/gitlab-logo-files/gitlab-security-logo/print-cmyk)
    - and one [exclusively for stickers](https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing/-/blob/master/design/_deprecated/gitlab-brand-assets/gitlab-logo-files/gitlab-security-logo/print-cmyk/pdf/sticker/gitlab-security-icon-diecut-sticker-3x2_78in.pdf).
- [Security READMEs](/handbook/security/readmes/)
- [Working in Security](/handbook/security/working-in-security.md)
- [Contributing to GitLab the product as a Security team member]({{< ref "contributing-to-gitlab-the-product" >}})
- [Threat Modeling]({{< ref "./product-security/application-security/threat-modeling" >}})

#### AI in Security Learning Group

This group is setup to help interested Security team members get up to speed with AI technologies and how to secure them. For more information, see the [AI in Security Learning Group page]({{< ref "learning-group-ai" >}}).
