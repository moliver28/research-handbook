---

title: "Acquisition Process: Technical Due Diligence"
---

The technical diligence is part of our [acquisition process](/handbook/acquisitions/acquisition-process/).

1. Code and architecture diligence - your team will provide access for key engineering contacts at GitLab to code repositories, products, and development/test environments. The early technical diligence conducted before the term sheet is signed will be an abbreviated form of the diligence noted below. We will:
    - Perform a [code review](#code-review-guidance)
    - Analyze the technology stack and how it fits in the GitLab tech stack.  Evaluate efforts and approaches for integration including milestones.
    - Conduct a [license review](https://docs.gitlab.com/ee/user/application_security/#quick-start) analyzing the licenses of the repositories owned by the target as well as of any open source packages which are in use to see which ones are acceptable per [company policy](/handbook/engineering/open-source/#acceptable-licenses)
    - Conduct a [security review](https://docs.gitlab.com/ee/user/application_security/#quick-start).  Analyze what security vulnerabilities are known to exist in the product(s) and the process for determining this (static/dynamic security scanning, independent penetration testing, etc.).
    - Provide the results of any third-party security testing results.
    - Analyze any commercial software/services that are required for the product(s) to operate.
    - Evaluate development practices and standards
    - Analyze test suite coverage, framework, and automation
1. Employee evaluations - each engineer will undergo two rounds of interviews comprised of:
    - Technical assessment - a live coding session, solving a technical exercise or review a merge request with live followup session.
    - Manager interview
    - Evaluate potential team structure post-acquisition
1. In case of acquisitions with over 10 engineers the employee evaluation stage will happen in phased approach for 5 employees at a time.
1. In case where there aren't sufficient open recs matching the acquired team, the acquisition team can put a request to the executive team to approve new recs required.

## Code Review Guidance

1. IP infringement prevention best practices
    - Designate a Clean Team: Code reviewers should not be the same individuals who would code similar features in the event the acquisition fails to be completed.
        - In the event that designating a clean team is not possible, limit the count of reviewers, especially those who might actually build the product if no deal is completed.
    - Consider a manager who understands the code but wouldn’t build the product necessarily to be part of the code review team.
    - Team looking at code and subject matter access can communicate but avoiding the direct look at code is what is valuable to protect GitLab. More intermediation between the clean team and sponsoring team de-risks IP infringement cases.
    - Having a documented product roadmap is important to proving intent to build and can offer defensive value in the event a target contests that GitLab is infringing on its IP.
1. Code review areas of focus
    - Development
        - Development process and fit
            - Is there a well-defined and consistent development process?
        - Development process maturity
            - Are there mature processes in place for planning, development, defect tracking, build, testing, maintenance? Are they documented?
    - Tools
        - What tools are being used to support development? Will they continue to be used?
    - Contributors
        - Who are the main contributors to the most relevant application components? How are there contributions distributed?
    - Compliance
        - Open source policy and inventory
            - Is there a documented policy on open source usage and supporting processes? Can the target produce an accurate open source and third-party code inventory and demonstrate that they are complying with license obligations?
        - Third-party licenses (commercial and open source)
            - Are all licenses for third-party software (OSS and commercial) identified and are their obligations met?
        - Web services/APIs
            - Does the software rely on any third-party APIs that could pose legal or data privacy concerns?
    - Security
        - Compliance certifications
            - Does the target company have compliance certifications for any products (i.e., SOC2, PCI, ISO, and so on)?
        - Encryption
            - Does any exported code contain strong encryption? Is the proper paperwork in place?
        - Security controls and processes
            - Are there defined processes for writing secure code? Are there key security controls in place to control for potential weaknesses in password storage, identity/access management, and the like?
        - Vulnerability assessment
            - How secure is the software currently? Does it contain security bugs or utilize components with known security vulnerabilities?
        - Penetration testing
            - Has there been a recent penetration test to ensure the robustness of software security in its running state?
        - Authentication
            - How is authentication and authorization handled?  Is it using standards based security (JWT, oauth, etc), or is it custom made?  Consider the complexity of integrating or replacing with GitLab’s Authentication systems.
    - Quality
        - Code Quality
            - Is the code buggy or poorly written? Are there weaknesses in the code and/or large amounts of technical debt?
            What is the level of test coverage? Are tests well thought out and cover key workflows?
        - Duplication
            - Is the code repetitive either within or between files?
        - Complexity
            - Is the code over-engineered, difficult to comprehend, or architecturally opaque?
        - Documentation
            - Are there sufficient inline comments, both tactical (documenting segments) and strategic (high level), to make the coding clear to new eyes? Does the code owner preserve offline documentation for coding standards and enforce them?
    - Design
        - Architectural Definition
            - Is the architecture documented and does the reality conform to the documentation?
        - Organization and Structure
            - Is the architecture well-designed to be modular and hierarchical?
        - Maintainability
            - Is the architecture a drag on development, and will the software need to be refactored?
        - Scalability
          - Is the architecture scalable or will it need to be refactored? Are infrastructure and frameworks fit to purpose and future purpose?
        - External dependencies
            - Is the application relying on third party functionality/services we would not want to adopt or have trouble finding an alternative service to?





