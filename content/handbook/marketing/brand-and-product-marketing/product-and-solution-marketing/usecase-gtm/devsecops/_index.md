---
description: "How GitLab approaches the DevSecOps solution including messaging and key resources to help marketing and sales."

title: "DevOps Solution Resource: DevSecOps"
---








# Looking for a customer-facing overview of GitLab's DevSecOps capabilities? See the [DevSecOps Solution](https://about.gitlab.com/solutions/dev-sec-ops).

# GitLab field teams refer to this [Security and Governance highspot page](https://gitlab.highspot.com/items/61f415455b20d8eb224750a3) for latest information

The page below is intended to align GitLab sales and marketing efforts with a single source of truth for our go-to-market efforts around DevSecOps.

#### Who to contact

|     Product Marketing    |    Developer Advocate    |
| ------------------------ | ------------------------- |
| Brian Mason ( @BrianMason )  | Fernando Diaz ( @fjdiaz ) |

# The Market Viewpoint

## DevSecOps

The DevSecOps usecase is applicable for customers who are trying to "shift left" to find security vulnerabilities earlier within their DevOps methodology but have not been able to achieve expected results.

Application Security is hard when security is separated from your DevOps flow. Security has traditionally been the final hurdle in the development life cycle. Iterative development workflows can make security a release bottleneck. Customers don't have enough security people to test all of their code, and hiring more security analysts won't automatically reduce the friction between app sec and engineering teams. Only testing major releases, or limiting tests to certain apps, leaves weak spots hackers can exploit. They need a way to balance risk and business agility. Instead of waiting for security at the end of the development process, they want to include it within their DevOps workflow. Often this is referred to as DevSecOps.

DevSecOps integrates automated security scans and compliance controls within the CI pipeline. GitLab takes this approach further by seamlessly embedding security and compliance within the DevOps platform, providing simplicity, visibility, and control.

### Why is DevSecOps needed?

Security pros will always be outnumbered by developers. To scale application security efforts, developers must be enabled to find and fix software security vulnerabilities on their own, while they are working on their code. In addition, while the need for compliance and auditability has always been important, these requirements have greater attention following high-profile attacks on software supply chains and the related US President's [Executive Order to improve cyber security](https://www.whitehouse.gov/briefing-room/presidential-actions/2021/05/12/executive-order-on-improving-the-nations-cybersecurity/).

Application security testing is still foundational, while now visibility and control across the entire software factory is even more paramount. Think of this as DevSecOps 2.0. GitLab's platform approach to DevOps provides a clear advantage to meet these new, broader DevSecOps requirements.

### Desired business outcomes

- Shift left to find and fix vulnerabilities earlier when it's less costly to do so
- Already tried to shift left with incumbent tools - doesn't scale - looking for a simpler solution
- Reduce risk and technical debt by not introducing vulnerabilities into production
- More predictable cost of app sec in a DevOps, high velocity, iterative environment
- More secure software supply chain with better end-to-end governance to reduce security and compliance risks


### Personas

#### User Personas

Users include both the developer and the security pro. We pride ourselves on having a united view of the software vulnerabilities and their status toward resolution.

**The Developer** uses GitLab primarily within the MR pipeline report

The developer cares about security but does not want to become a security expert. Their primary driver to write secure code is to protect their personal/professional reputation. They don't want to be the one that brings their company down via vulnerable code that they wrote. At the same time, they are goaled mostly on quickly turning out code that meets their users' requirements. Often they are not measured on security flaws. Security can seem like a necessary nuisance. Tools that fit within their workflow, without context-switching are most acceptable. The clarity GitLab provides by reporting vulnerabilities at code commit is helpful.

**[Amy the Application Security Engineer](/handbook/product/personas/#amy-application-security-engineer)** uses GitLab primarily in the Security Dashboard and vulnerability reports

The security pro cares most about managing risk to the enterprise/agency. They take a broad view of process looking for process improvement areas to reduce risk and avoid repeat mistakes. Because they care about risk, they want to identify unresolved vulnerabilities, their severity, and their remediation status. They care about trends over time and aggregate improvements. Often their metrics are mean time to remediation. It is rare that the security person themselves is able to remediate a software security flaw; they depend upon the developer to do this. This goal misalignment is often a reason for contention between the groups. In traditional app sec environments, where testing is done at the end of the SDLC, they may spend a lot of their time tracking and reporting vulnerability statuses, vetting findings, and triaging to dev teams. Where development is more automated, they may be able to focus more on setting policies and allowing the tools to enforce them. They often want to avoid moving any new critical/high vulnerabilities into production and favor breaking the build to enforce this.

While developers and DevOps teams like to use GitLab for security, the security pro is often skeptical, comparing it to their favorite incumbent scanner. They may have built up a complex dashboard of their own and have a career invested in their favorite scanner. They are often reluctant to replace it, even if it can simplify their work as well as that of the developer.

#### Buyer Personas

**The Security Manager or CISO (Sam's boss) is usually the buyer for the Ultimate tier**

The security leader may have bet their career on justifying a very expensive scanner like Fortify or Veracode and are often reluctant to replace it, even if it can simplify work for dev and sec.

The key to winning their hearts is to focus on **Simplicity and control**
- Complexity is one of the CISO's chief complaints. Using one tool to provide a breadth of scan results in one place, without ongoing integration/maintenance, can greatly simplify their efforts.
- CISOs likely feel out of control, or at least pressured to be secure amidst evolving threats, high-profile cyber attacks, new compliance concerns, and development tool sprawl. It's hard to manage these software risks.  Take control of your software development with a single platform that provides end-to-end simplicity, visibility, and control for all of your software development needs - choose GitLab.

## Industry Analyst Coverage


[2021 Gartner Magic Quadrant for Application Security Testing](https://about.gitlab.com/analysts/gartner-ast21/)


## Market Requirements (in priority order)

| Market Requirements | Description | Typical capability-enabling features | Value/ROI |
| ------ | ------ | ------ | ------ |
| Common compliance controls |  Controls necessary to protect the integrity of the software development and deployment process | Role-based access, MR approvals, and many others | Simplify audit and compliance and reduce risk of noncompliance. |
| Scan results for the Developer | For developers to find and fix vulnerabilities while they are coding, vulnerability scan results must be made available to the developer within their native workflow. Findings that can be automatically corrected should use automation to apply a fix and test the results. | Incremental scanning for rapid, iterative scans. Integrate scan results into the CI pipeline. Auto Remediation to automatically create a fix, eliminating developer effort.  | Allows security flaws to be fixed early, when less expensive, removes context-switching, and minimizes risk by preventing vulnerabilities from reaching production. |
| Application Security Testing of code and components | Often referred to as Software Composition Analysis (SCA), it tests all code components (custom code and open source), wherever it resides (e.g. within containers). The GitLab survey shows Dependency scanning is most frequently used scan type. | SAST, Dependency Scanning, Container scanning, Secrets Detection, and (optionally) License Compliance | Reduces security and compliance risks.|
| Application Security Testing of running app | Scans that look for vulnerable code behavior as the code executes.| DAST, IAST, Input Fuzzing, UEBA/Threat modeling, Mobile app sec testing | Reduces security and compliance risks. |
| Security Governance | The solution automatically applies security policies against code to ensure that only appropriate risks are taken. Application vulnerabilities, representing risk, are tracked, managed, and reported. The solution enables routine assessments of security practices to evaluate for risk, compliance, audit and process improvement opportunities (usually for education purposes). |  Security policy automation, Risk and compliance reporting, Audit reporting, Variety of security metrics and process reporting, Vulnerability database and management | Efficiently monitor, manage and mitigate risk. Ability to identify exceptions and refine policies over time. |
| Security guardrails (Preventative - Pre CI/CD) | Preventative Application Security uses guardrails to help teams consistently build things that are secure from the start. | Spell-check-like functionality that identifies insecure phrases as the developer types, bill of materials that limit developer choices to pre-approved code libraries, and auto-discovery that catalogs all third party code. | Prevents creating new vulnerabilities. |
| Works with existing and diverse tools| Security scanners must integrate into an existing environment that may use third party CI and/or security scanners. | APIs and Plug-ins | Allows continued use of existing investments and avoids a rip-n-replace scenario. |


# The GitLab Solution

## How GitLab Meets the Market Requirements

GitLab DevSecOps use case overview
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/XnYstHObqlA" frameborder="0" allow="accelerometer; autoplay;  encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>


| Market Requirements | How GitLab Delivers | GitLab Category | Demos |
| ------ | ------ | ------ | ------ |
| Common compliance controls |  GitLab provides [many common controls](https://docs.gitlab.com/ee/administration/compliance.html) throughtout the SDLC | Access and Compliance within the Manage stage | [![Compliance pipelines](../../images/youtube_social_icon_red-32x23.png) Compliance pipelines](https://www.youtube.com/watch?v=jKA_e_jimoI) |
| Scan results for the Developer | Incremental scanning for rapid, iterative scans. Integrate scan results into the CI pipeline. Auto Remediation to automatically create a fix. | CI (for [MR pipeline](https://docs.gitlab.com/ee/user/application_security/)), [Auto remediation](https://docs.gitlab.com/ee/user/application_security/#solutions-for-vulnerabilities-auto-remediation) | [![Adding Security to your CICD Pipeline](../../images/youtube_social_icon_red-32x23.png) Adding Security to your CICD Pipeline](https://youtu.be/Fd5DhebtScg) |
| Application Security Testing of code and components | SAST, Dependency Scanning, Container scanning, Secrets Detection, and License Compliance | [SAST](https://docs.gitlab.com/ee/user/application_security/sast/), [Dependency Scanning](https://docs.gitlab.com/ee/user/application_security/dependency_scanning/), [Container scanning](https://docs.gitlab.com/ee/user/application_security/container_scanning/), [Secrets Detection](https://docs.gitlab.com/ee/user/application_security/secret_detection/#:~:text=GitLab%2011.9%20includes%20a%20new,Security%20Dashboard), and [License Compliance](https://docs.gitlab.com/ee/user/compliance/license_scanning_of_cyclonedx_files/) | [![SAST and Secret Detection](../../images/youtube_social_icon_red-32x23.png) SAST and Secret Detection](https://youtu.be/8sOjvlkl8QY)<BR>[![Dependency scanning](../../images/youtube_social_icon_red-32x23.png) Dependency scanning](https://youtu.be/39RvTMLDszc)<BR>[![Container scanning](../../images/youtube_social_icon_red-32x23.png) Container scanning](https://youtu.be/wIcaSerMfFQ)<BR>[![License compliance](../../images/youtube_social_icon_red-32x23.png) License compliance](https://youtu.be/42f9LiP5J_4)<BR>[![Mobile SAST](../../images/youtube_social_icon_red-32x23.png) Mobile SAST](https://youtu.be/v0GhEHZWtdw)|
| Application Security Testing of running app | GitLab uses its review app, spun up during CI, to run dynamic application security tests. Recent acquisitions will provide multi-dimensional fuzz testing, useful for API scanning. Mobile app sec testing can be performed on any app within our language scanning capabilities | [DAST](https://docs.gitlab.com/ee/user/application_security/dast/), [Input Fuzzing](https://about.gitlab.com/direction/secure/dynamic-analysis/fuzz-testing/), Mobile app sec testing (partners needed) | [![DAST](../../images/youtube_social_icon_red-32x23.png) DAST](https://youtu.be/9tIrrByOum4) |
| Security Governance | Security Policy Automation, Compliance Assessment, Security Risk Assessment, Audit Assessment, Security Process Improvement/ Assessment, Vulnerability Management, Advisory Database  | [Security Dashboards](https://docs.gitlab.com/ee/user/application_security/security_dashboard/), [Vulnerability Management](/handbook/security/threat-management/vulnerability-management/), [Audit events](https://docs.gitlab.com/ee/administration/audit_events.html) [Compliance Management](https://about.gitlab.com/direction/govern/compliance/compliance-management/) | [![Accelerate AppSec Efficiency with the GitLab Security Dashboard](../../images/youtube_social_icon_red-32x23.png) Accelerate AppSec Efficiency with the GitLab Security Dashboard](https://youtu.be/p3qt2z1rQk8) |
| Security guardrails (Preventative - Pre CI/CD) | GitLab provides bill of materials showing dependencies. We do not yet use this to limit developers to use only pre-approved dependencies | [bill of materials feature](https://docs.gitlab.com/ee/user/application_security/dependency_list/) | [![Manage your Application Dependencies with GitLab](../../images/youtube_social_icon_red-32x23.png) Manage your Application Dependencies with GitLab](https://youtu.be/scNS4UuPvLI)|
| Works with existing and diverse tools | GitLab allows the integration of external CI tools to run alongside GitLab's CI enabling Jenkins users to also use GitLab Secure capabilities. Similarly, users may have invested in third party security scanners or may require another scanner for a language not covered by GitLab. We have made it easier for third party scanners to integrate into the GitLab MR and the security dashboards. | CI (for [MR pipeline](https://docs.gitlab.com/ee/user/application_security/)), [Security Dashboards](https://docs.gitlab.com/ee/user/application_security/security_dashboard/) | [![Using GitLab Application Security Capabilities with Jenkins](../../images/youtube_social_icon_red-32x23.png) Using GitLab Application Security Capabilities with Jenkins](https://youtu.be/8VoxulxxM4Y)<BR>[![Creating Jira issues from GitLab vulns](../../images/youtube_social_icon_red-32x23.png) Creating Jira issues from GitLab vulns](https://youtu.be/fTELCoSkBiY) |



## Top Differentiators

| Differentiator | Value | Proof Point  | Demos |
| ----------------- | ------------- | --------------- |
| **Detailed and Actionable Scan Results Displayed in MR created from Feature Branch** | GitLab performs security scans like SAST, license compliance, dependency scanning before the code is merged - giving Developers opportunity to identify and fix security vulnerabilities before they context switch to other activities. This improves cycle time and development costs as the time and cost to resolve defects and vulnerabilities exponentially increase the later it is detected in the development cycle | [Gartner - Integrating Security Into the DevSecOps Toolchain](https://www.gartner.com/doc/3975263) explains how Security should be included in the DevSecOps lifecycle in small actionable steps that developers can take action on quickly & integrating into defect tracking workflow to match the pace of security fixes to the pace of development. | [![Security Scans as Displayed in DevSecOps Overview](../../images/youtube_social_icon_red-32x23.png) Security Scans as Displayed in DevSecOps Overview](https://youtu.be/XnYstHObqlA?t=218) |
| **Block MR based on Security Policy** | Bring Development and Security Teams closer by allowing security teams to apply organizational security policies before hand and review/approve security exceptions before the code is merged | **-**  | [![Merge-Request Approvals as Displayed in DevSecOps Overview](../../images/youtube_social_icon_red-32x23.png) Merge-Request Approvals as Displayed in DevSecOps Overview](https://youtu.be/XnYstHObqlA?t=174) |
| **Compliance Management** | GitLab makes compliance easier by providing a single source of truth for Dev, Sec and Ops through a single data-store. Everything is audited and for every change, there is a single thread that contains the full audit log of every decision and action - making audit compliance a breeze | The auditor for [Glympse](https://about.gitlab.com/customers/glympse/) observed that the company had remediated security issues faster than any other company that he had worked with before in his 20-year career. Within one sprint, just 2 weeks, Glympse was able to implement security jobs across all of their repositories using GitLab’s CI templates | [![Manage Compliance with GitLab](../../images/youtube_social_icon_red-32x23.png) Manage Compliance with GitLab](https://youtu.be/QV2dIocn-hk) |
| **Coverage-Guided Fuzz Testing** | GitLab provides using contextual information from source code to better inform fuzz tests as well as to help correlate the results of a fuzz testing crash directly to the region of code that was vulnerable. This dramatically improves the cycle time to go from an initial fuzz test to a crash to an update to vulnerable areas. | **-** | [![Finding Bugs with Coverage Guided Fuzz Testing](../../images/youtube_social_icon_red-32x23.png) Finding Bugs with Coverage Guided Fuzz Testing](https://youtu.be/4ROYvNfRZVU) |
| **Offline Environments** | GitLab provides a variety of scanners to run in offline or limited connectivity environments. This feature enables security vulnerabilities to be detected in code that lies in offline environments. | **-** | [![Running GitLab Security Scans in Limited Connectivity and Offline Environments](../../images/youtube_social_icon_red-32x23.png) Running GitLab Security Scans in Limited Connectivity and Offline Environments](https://youtu.be/FoLmRvTcOAY) |

### How the GitLab DevOps platform helps achieve DevSecOps

**Simplicity/efficiency**
- Every piece of code is tested upon commit for security threats, without incremental cost, providing clear accountability for remediation.
- The developer can remediate now, while they are still working in that code, or create an issue with one click.
- Vulnerabilities are captured as a by-product of software development, and can be managed by security, with a single source of truth for better collaboration.
- A single platform avoids cost and effort to buy, integrate and maintain point solutions throughout the DevOps pipeline.

**Visibility**
- The dashboard for the security pro provides early insight to vulnerabilities not resolved upon merge.
- A single platform improves allows the organization to see who changed what, where, and when across the entire SDLC.

**Control**
- Security policies can be automatically applied to all pipelines for consistency, compliance, and simplified audits
- [Role-based access controls](https://docs.gitlab.com/ee/user/permissions.html) provide seperation of duties and protect against malicious insider threats and accidental events
- A breadth of additional [compliance controls](https://docs.gitlab.com/ee/administration/compliance.html) provide superior governance over software development, delivery, and use.

### What Are The GitLab Advantages?

**Platform approach**. With a single platform for the entire SDLC, GitLab enables simplicity of embedded security scanning along with end-to-end visibility and control not possible with point solutions. Vulnerabilities can become issues for follow up with one click. Remediation status is always evident. Changes to the code and to the cloud native environment upon which it depends is tracked. When using GitLab, no additional integration is needed between app sec and ticketing, CI/CD, etc.

**Congruent with DevOps processes**. Unlike traditional application security tools primarily intended for use by security pros, GitLab's security scanning is built into the CI/CD workflows where the developers live. We empower developers to identify vulnerabilities and remove them early in the development cycles. At the same time, we provide security professionals the ability to evaluate, triage, and manage vulnerabilities not resolved by the developer, across projects and groups.

**Comprehensive for modern applications**. GitLab Ultimate includes not only SAST, DAST, and dependency scanning (which are table stakes for any software security program), but also comprehensive scanning critical for today's cloud native applications. Scanning includes Infrastructure-as-code (IaC), APIs, containers, Kubernetes cluster images, and fuzz testing. All of these represent new attack surfaces that must be secured as part of your software supply chain.

**Consistency and control**. In addition to automated scans, it's important to automate policies to provide guardrails that allow developers to run fast but run safely. Common controls for compliance, along with approval rules, and compliant pipeline workflows that are centrally administered all work together to help you protect your software supply chain.


## Message House

The [message house](./message-house/) for DevSecOps provides a structure to describe and discuss the value and differentiators for the use case.

## Competitive Comparison

See how we [compare against other Security tools](https://about.gitlab.com/competition/)

How our governance compares:
1. Role-based access control (RBAC) for separation of duties. Competitive products's roles are broader and when a person changes roles, his/her permissions must be changed manually. Why is this important? If someone has access to push to prod and is demoted or moves to another group, you'd want the permissions to change automatically to avoid insider threats.
1. Our workflows include compliance within MR approvals. No manual checks that impact velocity. (In essence, we shift left compliance also.)
1. [External status checks](https://docs.gitlab.com/ee/user/project/merge_requests/status_checks.html) is an important feature for regulated industries. Changes are approved and must be pushed to production within a given timeframe. Delays can cause the approval process to start over.
1. With GitLab we have projects and groups where projects inherit policies from the group. Competitors cannot structure policies as flexibly as GitLab, an important feature for enterprise users. Examples include group level runners.
1. Compliant pipelines allow GitLab users to select their compliance framework (e.g. PCI, HIPPA, etc) and those policies are used - and the developer cannot disable it (due to RBAC)

## Key Value by tier

### Free and Premium

**Why choose GitLab free or Premium for DevSecOps?** Security matters to everyone, and we're committed to lowering the barriers to a fully secure, compliant SDLC. That's why we've migrated Brakeman SAST scanning and secrets detectio to Free, developers at every product tier—to scan their source code for known vulnerabilities.

**Key DevSecOps features with Free/Premium:**
- [Static Application Security Testing](https://docs.gitlab.com/ee/user/application_security/sast/) - check for potential security issues by evaluating static code.
- [Secrets Detection](https://docs.gitlab.com/ee/user/application_security/secret_detection/) - avoid exposing secrets and credentials for potential exploit.

### Ultimate

**Why choose GitLab Ultimate for DevSecOps?** Achieve advanced DevOps maturity with enterprise-level application security capabilities.
- Vulnerability management via vulnerability reports and Security dashboards at the project, group, and instance level provide visibility into application risks earlier in the SDLC, as well as visibility into their remediation status.
- [Security Approvals in Merge Requests](https://docs.gitlab.com/ee/user/project/merge_requests/approvals/settings.html#security-approvals-in-merge-requests)
- [GitLab Secure](https://docs.gitlab.com/ee/user/application_security/) helps you shift left to enable developers to find and fix vulnerabilities early. Multi-faceted scanning includes SAST, DAST, Container and Dependency scanning, Secrets Detection, coverage-guided fuzz testing, API fuzzing, and License Compliance checks, all within the GitLab Merge Request CI Pipeline with results provided to the developer at the point of code commit. Vulnerability findings are actionable and provide remediation advice while the developer is still working on the code.
- More enterprise-level compliance controls

In addition, enjoy these benefits of Ultimate:
- Enterprise-grade priority support, including 24/7 uptime support, a named Customer Success Manager (CSM), and upgrade assistance are all still included with Ultimate.
- Embed security and compliance into your CI Pipelines.
- Protect your IP and get access to free guest users.

**Key DevSecOps features with Ultimate:**

- [Dynamic Application Security Testing](https://docs.gitlab.com/ee/user/application_security/dast/) - analyze review applications to identify potential security issues.
- [Dependency Scanning](https://docs.gitlab.com/ee/user/application_security/dependency_scanning/) - evaluate third-party dependencies to identify potential security issues.
- [Container Scanning](https://docs.gitlab.com/ee/user/application_security/container_scanning/) - analyze Docker images and check for potential security issues.
- [Security Dashboard](https://docs.gitlab.com/ee/user/application_security/security_dashboard/) - visualize security status for projects.
- [Vulnerability Management](/handbook/security/threat-management/vulnerability-management/)
- [License Compliance](https://docs.gitlab.com/ee/user/compliance/license_scanning_of_cyclonedx_files/) - identify the presence of new software licenses included in your project and track project dependencies. Approve or deny the inclusion of a specific license.
- [Compliance Dashboard](https://docs.gitlab.com/ee/user/compliance/compliance_dashboard/index.html) - See if merge requests were approved, and by whom.


## Technology Partnerships

We partner with key industry vendors to extend GitLab's ability to address customer needs and fulfil the market requirements.

One of the first partners to [integrate their scan results](https://docs.gitlab.com/ee/development/integrations/secure.html) into the GitLab Security Dashboard and the GitLab CI pipeline is [WhiteSource](https://www.whitesourcesoftware.com).

- They extend scanning language support to [nearly 200 additional languages](https://www.whitesourcesoftware.com/whitesource-languages/) and provide deeper dependency insight.
- Learn more about [how to use WhiteSource within GitLab](https://www.whitesourcesoftware.com/gitlab/) and [more](https://about.gitlab.com/blog/2020/01/14/whitesource-gitlab-security-integration/);
- Watch [![Dependency Scanning with GitLab and WhiteSource](../../images/youtube_social_icon_red-32x23.png) Dependency Scanning with GitLab and WhiteSource](https://www.youtube.com/watch?v=yJpE_ACt9og) to get started.

A more complete list of technology partners can be found on our [security partners page](https://about.gitlab.com/partners/technology-partners/#security).

If you or your customer has a third party they'd like to see integrated into GitLab, send them to the [partner integration page](https://about.gitlab.com/partners/technology-partners/integrate/) for instructions.


# Selling the DevSecOps Solution

## Customer Facing Slides
- [Security customer presentation](https://docs.google.com/presentation/d/1WHTyUDOMuSVK9uK7hhSIQ_JbeUbo7k5AW3D6WwBReOg/edit?usp=sharing)

## Discovery Questions

The suggested discovery questions below are meant to help you uncover opportunities when speaking with prospects or customers who are not currently using GitLab for Secure/Protect. They are grouped by topic or entry point. **Don’t try to use them all, just those most relevant to your customer.**  The deeper you can dig into their processes, the more benefits you are likely to show of using GitLab. Feel free to contribute!

**Initial probe for direction. Where’s the pain?**

Integrating application security testing into Agile DevOps software development is difficult with many potential challenges. Use these 6 questions to probe a bit to see which areas are of most concern, then go deeper on those topics further below.

1. Finding security vulnerabilities -  Can your security scans keep up with your iterative coding velocity? How often are projects stopped waiting for a security scan?
2. Collaboration /visibility - Is there friction between dev and sec? Can you see security risks at any point in the SDLC?
3. Remediation - How much time is wasted translating what was found by sec to what needs to be done by dev and tracking if it was done? Can you quickly see the status of security remediations?
4. Managing Risk in a DevOps environment -  What percentage of code are you currently scanning? Are there holes where an attacker could more easily enter and then traverse laterally? How much more would it cost you to scan all of your code?
5. Policy Automation - Are Security policies automated with security requirements built into the development process? Or are most projects secured a bit differently every time?
6. Tools - Is your organization investing to improve application security in the short term or long term? Is there a clearly defined strategy or timeline? Are you working to integrate app sec tools into the DevOps tool chain?

When speaking with C-levels, ask them about Governance and control challenges.

**1. Finding security vulnerabilities**

- How often do you rely on pen testing as your primary means of finding vulnerabilities? (indicates little automation; our out-of-the-box scanning can get them started quickly)
- Have you automated app sec testing within your DevOps process? Can you tell me more about this?
- What application security scans are most important to you? (SAST, DAST, IAST, dependency scanning, container scanning, secrets detection, license compliance? Mobile app testing? Fuzz testing?) Would you like to be able to run multiple types of scans for defense in depth? If you are not today, what prevents it?
- What steps have you taken to enable developers to find and fix vulnerabilities themselves? Are the scan results in the CI pipeline?
- How valuable would it be if your developers could find and fix more vulnerabilities themselves before the code ever leaves their hands?
- If you are using a security ‘spell-checker’ to aid developers, how effective is it? Are you still finding vulns with static testing after the code is merged? (the point is this alone is not enough)

**2. Collaboration /visibility**

- Are projects delayed due to inefficient handoff between teams, lack of visibility across systems, or lack of planning and consideration?
- Is time lost translating or reconciling between security tool findings, planning/development tools and issue tracking?
- Is there tension between responsibility for security and ability to improve it?
- How might your process be simplified if there were a single source of truth for both security and development to find and manage vulnerabilities?
- Can vulnerabilities be easily tracked by both developers and security to see where they reside in the code, who created them, action taken (issue created, dismissed, unresolved), and their remediation status? How time consuming is it to get this information?

**3. Efficiency of remediation**

- How many steps are required before vulns get to a developer who can remediate? How much time is wasted on these steps between development and security?
- What percentage of vulnerabilities do you think could be remediated by the developer right away if found while they were still working on the code? If it were more, would it save you time and money?

**4. Managing Risk**

- Are you mostly concerned about the OWASP Top 10. What if you could find the OWASP Top 10 for every code change and free your development workflow by decluttering their tasks to focus on vulns they just created and not technical debt from past efforts to avoid creating new technical debt? Would that help you avoid new technical debt and reduce risk?
- Do you focus on remediation of critical and high vulnerabilities? How much of your remediation is for medium and low vulns? Did you know that most exploits are against medium risk vulnerabilities? What if you could help developers find and fix each vuln as they are created?
- What percentage of code are you currently scanning? Are there holes where an attacker could more easily enter and then traverse laterally? How much more would it cost you to scan all of your code?
- If you are using containers, orchestrators, and/or microservices/API’s, how are you scanning them for vulnerabilities and monitoring them during production?
- What percentage of vulns found that require remediation are actually remediated? How quickly? (Mean time to remediation)
- Can you see how developers handled vulnerabilities that were found? Would it be valuable to have visibility into vulnerabilities and their risk earlier in the lifecycle? Would this help you with security audits?
- How much of the security team’s time is spent tracking vulnerabilities, triaging them, and following up to see that they were remediated?

**5. Policy Automation**

- Does automation enforce security standards? Are Security policies automated with security requirements built into the development process? Or are most projects secured a bit differently every time? How much manual intervention is needed?
- How difficult is it to evaluate compliance with policies and drift/exceptions?
- Compliance should be regularly evaluated and exceptions reviewed. Automating overly rigorous policies may prove detrimental to business objectives and may not be realistically achieved, so it is important to find a balance between compliance and efficiency.
   - Do you have Visibility into access control, reporting, and change logs?
   - Do you know how often policy exceptions are granted?

**6. Tools**

- How many different security tools are you using (which ones?)
- Have you integrated your security tools into your CI pipeline so that security scans run automatically or are they kicked off manually? Are the integrations fragile? Complex? Time consuming? How often does that process need to be updated? How much effort is required to set up for a new project? How do you ensure the scans are applied consistently? How often is your planned work interrupted to fix or maintain your security integrations?
- Which of your security scans are able to provide vulnerability findings directly to the developer? Can you scan a feature branch? (before code is merged) Are you able to see the line of code and which developer created the vulnerability? Do vulnerabilities automatically initiate a work ticket/issue creation?
- Have your teams run into roadblocks or hurdles automating security tests within the CI pipelines at scale?
- How predictable is the cost of your app sec tools? If you find more vulnerabilities, or test more apps, does it cost you more?

## Potential Objections

**I have an incumbent tool. How does your scanning compare?**

 GitLab scanners use a combination of proven open source scanners and proprietary scanners.

Finding vulnerabilities is important, but what you do with the results is equally important. Consider:
- Are your developers able to see vulnerabilities he/she created with every code commit or at least before merging their code with others?
- Are the scan findings actionable for the developer, within their native workflow?
- Is plugin management and compatibility an ongoing concern?

Also, how predictable is the cost of these tools? If you find more vulnerabilities, or test more apps, does it cost you more? Are you essentially penalized for more testing? How does that work with DevOps breaking apps into [microservices](https://about.gitlab.com/topics/microservices/) and running more frequent pipelines? In fact, Gartner even called us out in a report on how to set up an AppSec program inexpensively ([7 Tips to Set Up an Application Security Program Without Breaking the Bank](https://www.gartner.com/document/3986206)).

**If using Fortify, Veracode or Synopsys**
- Do your scan times keep up with or inhibit software iteration?
- Are you able to scan every code change?
- Are you overwhelmed by the number of findings? Do they all get remediated? If not, how do you prioritize and how much time/effort is required? What if the developer could prioritize, using the same guidelines as security, and fix vulns as he/she created them?
- Are you able to afford scanning all of your code?

**If using Snyk, WhiteSource or other point solutions**
- How are you scanning API’s and containers? Are you able to monitor them in production?
- Are you scanning all of your code? At every commit? Does the developer have all of the information they need for remediation?

**If using GitHub Actions and/or Azure DevOps**
- How much effort is required to set up your security scans for every project?
- How difficult is it to enforce policies/standards for security scanning in every project/pipeline?
- How difficult is it to manage role-based permissions?
- Are governance controls as granular as you need them to be?
- Do you have visibility across all of the tools used in the marketplace to see who changed what, where, and when?


**I can’t justify the cost difference for Ultimate.**

NIST [demonstrated the cost savings](https://www.nist.gov/document/report02-3pdf) from shifting security left back in 2002. How far left are you currently? Hypothetically, if 50% of your vulnerabilities could have been found by the developer and if half those could hypothetically be fixed before the code ever leaves the developer’s hands, what value would that have for your cost and your risk exposure? Let's consider the potential benefit of:
- fewer vulns to prioritize, vet, triage, and track
- fewer vulns with their associated risk exposure
- less need to stop business innovation to fix security flaws after-the-fact

How predictable is the cost of other app sec tools? If you find more vulnerabilities, or test more apps, does it cost you more? Are you essentially penalized for more testing? How does that work with DevOps breaking apps into microservices and running more frequent pipelines? What is the value of scanning every code change going forward? What is the impact on your technical debt over time? What would it cost you with your other tools to scan every software change?



## Proof Points - customers

### Quotes and reviews

GitLab customer, HERE, [shares their experience](https://developer.here.com/blog/shifting-security-left-in-the-here-platform) with using GitLab to Shift Left and also spoke at [GitLab Commit 2021](https://learn.gitlab.com/commit-2021/teaching-old-cicd-ne?lx=UqDHIY).

GitLab customer, Arctic Engine, [shares their experience](https://about.gitlab.com/blog/2020/08/19/arctic-engine-fuzz-testing-blog/) with using GitLab's fuzz testing to find unknown vulnerabilities.

#### Gartner Peer Insights

*Gartner Peer Insights reviews constitute the subjective opinions of individual end users based on their own experiences, and do not represent the views of Gartner or its affiliates. Obvious typos have been amended.*

"GitLab Application Security Testing helps to analyze our source code for vulnerabilities, listed in GitLab Security Dashboard. It is easily configurable with Docker setup. It shows the complete vulnerabilities report immediately after a new merge request is created within a project. With listing potential risks in code, it also prioritizes vulnerabilities in terms of critical, high, low, medium which helps team to plan and focus on what first."
> - Sr. Software Engineer, [Gartner Peer Insights Review](https://www.gartner.com/reviews/market/application-security-testing/vendor/gitlab/product/gitlab/review/view/1307149)

"The Application testing feature of [GitLab] is very useful in scanning for vulnerabilities in the applications. There are multiple test[s] available. We mostly use the tools to scan the docker containers, dependencies, source code and web application for the vulnerabilities."
> - Native Android Application Developer, [Gartner Peer Insights Review](https://www.gartner.com/reviews/market/application-security-testing/vendor/gitlab/product/gitlab/review/view/1320427)

#### G2

- GitLab is a leader on the G2 Grid® for Static Application Security Testing (SAST)

<div style="width: 300px;"><iframe src="https://www.g2.com/categories/static-application-security-testing-sast/grids.embed?wid=1613497323" id='g2-crowd-widget-default' width='300px' height='300px' frameborder='0' scrolling='no' style='border: solid 1px #eaeaea;  width:100%;min-height:100%;overflow:hidden;'></iframe> <a href="https://www.g2.com/categories/static-application-security-testing-sast" style='font-size: 12px; color: #515159; font-weight: 600'> G2 Grid® for <span class='fw-semibold'>Static Application Security Testing (SAST) Software</span> </a> </div>

- GitLab is a leader on the G2 Grid® for Dynamic Application Security Testing (DAST)

<div style="width: 300px;"><iframe src="https://www.g2.com/categories/dynamic-application-security-testing-dast/grids.embed?wid=1613497323" id='g2-crowd-widget-default' width='300px' height='300px' frameborder='0' scrolling='no' style='border: solid 1px #eaeaea;  width:100%;min-height:100%;overflow:hidden;'></iframe> <a href="https://www.g2.com/categories/dynamic-application-security-testing-dast" style='font-size: 12px; color: #515159; font-weight: 600'> G2 Grid® for <span class='fw-semibold'>Dynamic Application Security Testing (DAST) Software</span> </a> </div>


### Customer Case Studies

**[HackerOne](https://about.gitlab.com/customers/hackerone/)**
- **Problem:** Velocity with security
- **Solution:** GitLab Ultimate
- **Results:** 5x deployment speed with GitLab security

**[Glympse](https://about.gitlab.com/customers/glympse/)**
- **Problem** A complex developer tech stack with over 20 distinct tools that was hard to maintain and manage. Teams spent several hours a week keeping tools running rather than shipping innovation to their app.
- **Solution:** GitLab Ultimate (SCM, CI, DevSecOps)
- **Results: ~20 tools consolidated into GitLab and remediated security issues faster than any other company in their Security Auditor's experience.
- **Sales Segment:** SMB

**[BI Worldwide](https://about.gitlab.com/customers/bi_worldwide/)**
- **Problem:** Had a large legacy codebase that was created years ago. Looking to eliminate (or at least significantly reduce) manual testing and manual deployments to their on-premise infrastructure.
- **Solution:** GitLab Ultimate (SCM, CI, DevSecOps)
- **Results:** **10x daily deployments** Simplified their toolchain and migrated from their previous Git tools to GitLab. Saw an immediate improvement of collaboration and release pace as a result of their move to GitLab.
- **Sales Segment:** Mid-Market

**[Chorus](https://about.gitlab.com/customers/chorus/)**
- **Problem:** The founders of Chorus built the tool from the beginning using GitLab.
- **Solution:** GitLab Ultimate (SCM, CI, DevSecOps)
- **Results:** **6 week production cycles reduced to 1 week** During a recent audit for SOC2 compliance, the auditors said that Chorus had the fastest auditing process they have seen and most of that is due to the capabilities of GitLab.
- **Sales Segment:** SMB

### References to help you close

[SFDC report of referenceable secure customers](https://gitlab.my.salesforce.com/a6l4M000000kDw2) Note: Sales team members should have access to this report. If you do not have access, reach out to the [customer reference team](/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/customer-advocacy/#which-customer-reference-team-member-should-i-contact) for assistance.

## Adoption Guide

The following section provides resources to help CSMs lead capabilities adoption, but can also be used for prospects or customers interested in adopting GitLab stages and categories.

### Playbook Steps

- Start with the first 6 Discover Questions to identify which area to drill into further.

### Adoption Recommendation

There are multiple pathways to adoptiong GitLab's DevSecOps workflow, depending on the current state of the customers' current state. The following diagram shows the adoption sequence and relationship between scenarios.

![Secure Adoption path](/images/handbook/customer-success/adoption-path-secure.png "Secure Adoption Path")

This table shows the recommended use cases to adopt, links to product documentation, the respective subscription tier for the use case.

| Feature / Scenario                                  |    Free   |    Premium  | Ultimate | Product Analytics | Notes                      |
| --------------------------------------------------- | :-------: | :-------: | :------: | :---------------: | :------------------------- |
| Adopt GitLab Flow                                   |     X     |      X    |    X     |                   |                            |
| Try / Utilize Auto DevOps                           | *Partial* | *Partial* |    X     |                   |                            |
| Automated Testing with CI                           |     X     |     X     |    X     |                   |    Only SAST at all tiers                        |
| Review app                                          |     X     |     X     |    X     |                   | Needed to run DAST in CI/CD pipeline |
| [Merge Request Approval Flow / Rules](https://docs.gitlab.com/ee/user/project/merge_requests/approvals/index.html)                 |           |     X     |    X     |   counts.merged_merge_requests_using_approval_rules            |                            |
| Protected Environments                              |           |     X     |    X     |                   |                            |
| [Container Registry](https://docs.gitlab.com/ee/user/packages/container_registry/) |     X     |     X     |    X     |  container_registry_enabled |                            |
| [Package Registry](https://docs.gitlab.com/ee/user/packages/package_registry/) |     X     |     X     |    X     | counts_monthly.packages |                            |
| [SAST (Static Application Security Testing)](https://docs.gitlab.com/ee/user/application_security/sast/)                              |     X     |     X     |    X     | user_sast_jobs                | |
| [Secret Detection](https://docs.gitlab.com/ee/user/application_security/secret_detection/)                                            |     X     |     X     |    X     | user_secret_detection_jobs    | |
| [DAST (Dynamic Application Security Testing)](https://docs.gitlab.com/ee/user/application_security/dast/)                             |           |           |    X     | user_dast_jobs                | |
| [Container Scanning](https://docs.gitlab.com/ee/user/application_security/container_scanning/)                                        |           |           |    X     | user_container_scanning_jobs  | |
| [Dependency Scanning](https://docs.gitlab.com/ee/user/application_security/dependency_scanning/)                                      |           |           |    X     | user_dependency_scanning_jobs | |
| [License Compliance](https://docs.gitlab.com/ee/user/compliance/license_scanning_of_cyclonedx_files/)                                                  |           |           |    X     | user_license_management_jobs  | |
| [API Fuzzing](https://docs.gitlab.com/ee/user/application_security/api_fuzzing/)                                                      |           |           |    X     | user_api_fuzzing_jobs, user_api_fuzzing_dnd_jobs on self-managed | |
| [Coverage Fuzzing](https://docs.gitlab.com/ee/user/application_security/coverage_fuzzing/)                                            |          |        |    X     | user_coverage_fuzzing_jobs    | |
| [Security Approvals](https://docs.gitlab.com/ee/user/application_security/#security-approvals-in-merge-requests)                      |           |           |    X     |                   |                            |

The table includes free/community and paid tiers associated with GitLab's self-managed and cloud offering.

- F/C = Free
- S/P = Premium
- G/U = Ultimate

### Additional Documentation Links

- [From SCM and CI to Security](https://docs.google.com/presentation/d/1Oq8znDkHrgGK5Xe5D23SdiRLt33OIJZ30OWCHNNDV14/edit?usp=sharing) *(GitLab internal only)*
- [GitLab Security Compliance Controls](/handbook/security/security-assurance/security-compliance/sec-controls.html)
- [GitLab Security Practices](/handbook/security/)
- [Security Planning](/handbook/security/planning/)

### Enablement and Training

The following will link to enablement and training videos and content.

- [Handling Security Audits](https://www.youtube.com/watch?v=ziIJIec4w0g)
- [Application Security at High Velocity](https://www.youtube.com/watch?v=VN6Z6qtlMjg)
- [Adding Security to your pipelines](https://www.youtube.com/watch?v=Fd5DhebtScg&t=3s)

### Professional Service Offers

GitLab offers a [variety of pre-packaged and custom services](https://about.gitlab.com/services/) for our customers and partners. The following are service offers specific to this solution. For additional services, see the [full service catalog](https://about.gitlab.com/services/catalog/).

- [DevOps Fundamentals Training](https://about.gitlab.com/services/education/devops-fundamentals/) (all stages of the DevOps lifecycle)
- [GitLab CI/CD Training](https://about.gitlab.com/services/education/gitlab-ci/)
- [Integration Services](https://about.gitlab.com/services/implementation/integration/ )


## Resources

### White paper
- [A Seismic Shift Left](https://about.gitlab.com/resources/downloads/gitlab-seismic-shift-in-application-security-whitepaper.pdf)

### eBook: Ten Steps Every CISO Should Take to Secure Next-gen Applications
- [Gated](https://lnkd.in/er8tjQg)
- [Ungated](https://drive.google.com/file/d/0B-ZpQfvLs-2AVFI5VmNybTBvWWttRWxENWpGVnlNbVBFODNZ/view?usp=sharing)

### Integration with third party commercial scanners
- [WhiteSource](/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/enablement/security-integrations-whitesource/)

### Blogs
- [How application security engineers can use GitLab to secure their projects](https://about.gitlab.com/blog/2020/07/07/secure-stage-for-appsec/)
- [How to capitalize on GitLab Security tools with external CI](https://docs.gitlab.com/ee/integration/jenkins.html)

### Other DevSecOps Videos
- [Deep Dive into a Security demo](https://youtu.be/k4vEJnGYy84)
- See how [integration is the key to successful DevSecOps](https://about.gitlab.com/blog/2018/09/11/what-south-africa-taught-me-about-cybersecurity/)

### Clickthrough & Live Demos
- [All Marketing Click Through Demos](/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/demo/#click-throughs)
- [All Marketing Live Demos](/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/demo/#live-instructions)

### Roadmap
- [Secure and Govern Roadmap](https://docs.google.com/presentation/d/1XcOmwUvaSEYhj87dvHj05l3t-JuBEcLaFdhSEDvX4EY/edit#slide=id.g1364cbe562a_0_269)

## Technical Resources for Solution Architects

Sometimes customers and prospects have unique requirements, often around using an preferred scanning tool to integrating with some other part of their tool chain. If you or your customer has a third party they'd like to see integrated into GitLab, send them to the [partner integration page](https://about.gitlab.com/partners/technology-partners/integrate/) for instructions. While GitLab can be a single platform to meet all of their needs, often they need an on-ramp to help them transition or proof of the integration before purchasing GitLab. The resources below may help.
**NOTE:** Please do not use these to put GitLab in the position where users expect us to support a 3rdparty product integration that we do not [officially recognize](https://about.gitlab.com/partners/technology-partners/).
- [Using OSS Review as your default License scanner](https://youtu.be/dNmH_kYJ34g)
- [Integrating GitLab with Sonarqube](https://www.youtube.com/watch?time_continue=1&v=OItsDDzIP8g)

## Buyer's Journey

[Inventory of key assets](https://docs.google.com/spreadsheets/d/15-yai90Ol7k4D2exHXqHXtFastR6FcE6HABD_GisAl8/edit#gid=0) in the buyer's Journey
