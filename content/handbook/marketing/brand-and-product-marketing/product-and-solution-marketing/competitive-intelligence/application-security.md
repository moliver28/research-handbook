---
title: "Application Security Market Analysis"
---

## Security Lexicon

A uniform lexicon is important to distinguish the use of 'security' in various contexts.

GitLab helps our customers **Secure and Govern** all of the phases of the SDLC Create, Plan, etc.). To deliver secure applications, customers use GitLab Security Controls throughout the SDLC and Security Testing in validation. Eventually, GitLab will enable vulnerability prioritization for planning and Security Monitoring in production.

1. **Security Controls** are capabilities of GitLab that altogether provide GitLab customers auditability of code throughout the SDLC. (This is not SAST/DAST.) For example, see [GitHub security](https://docs.google.com/document/d/1s5RIE8hFaMdoBqrnLVlnbuxDUQfZd1kYjduVOZCWIKE/edit?usp=sharing). These controls help customers in their efforts to comply with various industry regulations that require policies for auditability and access control. Examples include:
    - Enforce security policies without interrupting your workflow
    - Complete change log for auditing
    - Two-factor authentication (2FA) for added access control
    - Automated security scanning during verification
Check out the [compliance page](https://about.gitlab.com/solutions/compliance/) for a more thorough view.

2. **Application Security Testing** is a capability or feature of GitLab, used in the Verify phase. It includes SAST and DAST, container scanning and dependency scanning. GitLab also includes license compliance in our software composition analysis.

3. GitLab is a **Secure Application** (used as an adjective like GitLab is scalable, open, etc.) The security team, under the Director of Security, manages people, processes and technology to secure the GitLab software that may include SAST & DAST but also includes security policies (like using Macs), our own Security Controls, configurations, monitoring of GitLab in production, vulnerability management, etc. Learn more about how we secure the GitLab app at [about.gitlab.com/security](/security). If a customer or prospect needs GitLab to respond to a questionnaire about how the GitLab app is secure, follow [these instructions](/handbook/security/security-assurance/field-security/customer-security-assessment-process/).

## Application Security Market Overview

Cyber Security is on a dynamic trajectory. It has been traditionally focused on guarding the perimeter in a defensive approach. Enterprises would start with simple endpoint protection and network security and layer on tools for "Defense in Depth". Today's security is much more proactive and predictive combining internal and external data from a variety of sources and applying user behavior analytics and machine learning to identify suspicious activity.

Security investments followed a similar trajectory. Traditionally the bulk of the spending has been to protect infrastructure. In 2015, Gartner Analyst, Joseph Feiman, estimated for every $1 spent on application security, $23 was spent in other security. Application Security has only been a mainstream concern for recent years - but that's changing! There are several dynamics making application security a bigger priority including:

- Well known and significant application-focused attacks such as Heartbleed.
- GDPR requires that enterprises assume the risk of the vendors they use. Vulnerabilities that might be present in purchased applications become of more concern.
- Open source code is becoming a norm. This [451 article](https://drive.google.com/file/d/1T75K9qjBtdRkFdgVy--mrKmFrWXe8cTy/view) explains how one small piece of code can have vast implications when it has a vulnerability that is exploited.
- With cloud computing, the infrastructure's security becomes the responsibility of the cloud provider. Enterprises have less perimeter to protect and are focusing more on endpoints and applications.
- DevOps velocity requires rapid CI/CD. Traditional gated security does not fit this model forcing tradeoffs with security and more agile security processes. This has led to DevSecOps but it is still early.

Enterprises with advanced DevOps and/or Application Security programs are looking for remediation advice as the developer types the code as a means of not only reducing vulnerabilities, but also educating developers by teaching them security best practices real-time.  Fortify and a few other advanced app sec vendors provide this.

## Compliance

Compliance is always the lowest common denominator - think of it as the MVC for security. Enterprises that depend upon software and technology to run their business seldom rely on compliance alone to guide their security efforts.

That said, compliance is taking on more importance, not only in the traditional sense of scanning apps, but now in the sense of securing the code through the development processes. Compliance relies upon auditability to show who changed what code, when. GitLab offers audit features, Two-factor Authentication (2FA) and more to help enterprises comply with their industry regulations.

Compliance is not a product, but rather features embedded along the SDLC in the software factory. Some competitors may provide **compliance reports** that collect information useful to a given regulation and pull it together for simplification. GitLab has hired a compliance team to focus on GitLab's own compliance in preparation for IPO. This knowledgeable team may also guide the product team to create compliance reports for GitLab users.

## Competitors

The focus of our competitive view is on **application security testing** (App Sec) and our other **software composition analysis capabilities** (SCA).

The term Application Security Testing includes Static Application Security Testing (SAST), Dynamic Application Security Testing (DAST), Dependency Scanning, and Container Scanning. It also includes Interactive Application Security Testing (IAST) and Runtime Application Security Protection (RASP) which GitLab does not yet offer.

The term Software Composition Analysis includes Static Application Security Testing (SAST), Dependency Scanning, Container Scanning, License Compliance, and Code Quality Testing. It often includes a Bill of Materials capability, though that is typically a feature of these others, not a product of its own. Industry analysts, such as Forrester, use SCA to group capabilities. As defined in our [Solutions](/handbook/product/categories/#solutions) we are [intentional in not including SAST and Code Quality](https://gitlab.com/gitlab-com/www-gitlab-com/merge_requests/26897#note_198503054) in Software Composition Analysis.

## Competitor Scope

|Vendor/Scope|SAST        |DAST        |Dep Scanning|Cont Scanning|License Mgmt|
|:-----------|:----------:|:----------:|:----------:|:----------:|:----------:|
|GitLab      |X           |X           |X           |X           |X           |
|BlackDuck   |            |            |X           |X           |X           |
|CA Veracode |X           |X           |X           |            |            |
|IBM AppScan |X           |X           |X           |            |            |
|Fortify     |X           |X           |X           |            |            |
|SonarQube   |X           |            |X           |            |            |
|Sonatype    |            |            |X           |X           |X           |
|WhiteSource |            |            |X           |            |X           |
|Snyk        |            |            |X           |X           |            |
|Synopsys    |X           |            |X           |X           |X           |
|Checkmarx   |X           |            |X           |            |            |
|TwistLock   |            |            |            |X           |            |
|Aqua        |            |            |            |X           |            |

## Who uses GitLab secure capabilities?

**Within the MR pipeline report - the Developer**

- delivered immediately to responsible individual
- clear impact of his or her code changes (not mixed with changes made by others or pre-existing vulns)
- can fix the security flaw without context change

**Within the Security Dashboard - the Security team**

- project or group view of unresolved vulnerabilities
- already merged with other code
- primary responsibility is to manage risk
- broader view of processes and process improvement to reduce risk and avoid repeat mistakes
- long term view
- cares about mean time to remediation, trends

## Market Segment Overview

Application Security is difficult. It is one of the smallest market segments of cyber security with lowest adoption. This is because it relies on a combination of people, processes and technology much more than network security, endpoint protection, etc. You will find sophisticated programs mostly in enterprises that depend upon custom software for their core business.

### Companies with sophisticated Application Security programs

**Characteristics**

- Mostly large, Fortune 2000 companies
- Already invested in tools like Veracode or Fortify ($100k-1m+). May have bet career on them.
- Have dedicated application security professionals - Application Security Engineers
- Probably also engage in threat hunting via Threat Intelligence Analysts and security researchers
- Custom code is key to their business
- Often in the financial services industry and for-profit health care providers and insurers
- Large Security budget
- Often application security is funded after a breach, a penetration test or a failed audit.

**Challenges**

- Time to market
- Efficient SDLC balanced with security to protect reputation from risk of data breach

**Value proposition**

- Compliment existing app security tool with GitLab embedded in the developers workflow in order to speed time to market and reduce cost.
- Improve security by finding more security bugs earlier, clearing some of the noise from security analysts.
- GitLab security will likely not immediately displace other App Sec tools that are already entrenched.
- Opportunity to better integrate security methods and knowledge with a development team.

### Companies with established Security Programs

**Characteristics**

- Just starting to focus on Application Security (sweet spot)
- All sizes of companies - even large F2000's may lack application security focus
- May have a Security Operations Center (SOC) with Security Operations Engineers
- Most security budget is on endpoint security and network security
- Rely on penetration testing for compliance and app sec
- Most advanced may have a web application firewall (WAF)
- Maybe more focused on compliance than threat detection - Compliance Analyst, Risk Management
- May not have substantial in-house code
- Developers likely focus more on integrations and web front-ends

**Challenges**

- Resource constrained
- Application security expertise.

**Value Proposition**

- A low cost and a way of integrating app sec into development with tools they're already using to build and deploy and avoiding the integration cost and effort. They may be concerned about the product being lightweight but may try it as an alternative to costlier dedicated app sec tools.

### Companies with minimal security focus

**Characteristics**

- SMB, start-ups
- Likely to have one or two security generalists, or IT Operations folks
- No application security program, priority is endpoint security and network (if they are not cloud-focused)
- Rely on penetration testing for compliance and app sec
- Focused on MVC to meet comply with regulatory requirements (GDPR for personally identifiable data, PCI for credit cards, HIPAA for healthcare, etc.)
- Want to check the box and say that they are doing application security testing
- Don't plan to invest in improving secure coding and a process improvement.
- May not understand the security findings and need help width prioritization and Remediation.

**Challenges**

- Resource constrained
- Lack of security expertise

**Value Proposition**

- GitLab can help you check the compliance box for security testing and because it's integrated with your development processes, there is no incremental effort to do so.
