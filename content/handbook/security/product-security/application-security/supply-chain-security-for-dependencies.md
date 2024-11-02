<!-- TODO: Integrate https://gitlab.com/gitlab-org/gitlab/-/merge_requests/60618/diffs-->

## Software Supply Chain Security Guidelines for Open Source Dependencies

This guide provides developers and security team members with best practices and considerations for evaluating and securing open source dependencies in their projects. By following these steps, one can minimize the risk of supply chain compromises and ensure the overall security of software.

### Supply Chain Security Considerations for Open Source Dependencies

- Is the project actively developed, maintained, and mature?
  - When was the code last updated?
  - When was the last release shipped?
  - How many releases are there?
  - How frequently are new releases shipped?
  - Is the software dependency version being evaluated a stable "release" version? (e.g. not an alpha, beta, 0.x or similar)
  - Is the project older than 90 days?
- Is the project well-known or widely adopted in the software industry and open source community?
- Given the complexity of the project, does the project have a sufficient number of maintainers and contributors?
- Does the project keep its dependencies updated?
- Does the project have sufficient test coverage?
  - Do the project's pipelines or tests include security checks or testing?
- Is the project well-documented and does the document include guidance on how to use or implement the software component securely?
- Does the project have an established and documented process for reporting vulnerabilities and are these vulnerabilities addressed in a timely manner?
- Is the dependency version being evaluated affected by known vulnerabilities or CVEs? If so, is there a fix available?
- Are commits to this project cryptographically signed?
- Does the project have a code review process for changes before code is merged into the main branch?
  - Does the project require approvals for merge/pull requests?
- Are releases signed or cryptographically verifiable?
- Are project maintainers using 2FA?
- Do project maintainers use accounts registered to personal custom email domains?

### Supply Chain Security Best Practices

- **Implement Security Scanning**: Implement automated vulnerability scanning in your GitLab CI/CD pipeline.
- **Verify the package source**: Always download packages from trusted sources. Stick to official package repositories or well-known sources that have a good reputation.
- **Double-check package names**: Pay close attention to the spelling and formatting of package names.
- **Verify package integrity**: Many package managers provide mechanisms to verify package integrity using checksums or digital signatures.
- **Pin dependencies**: Use a lockfile or similar mechanism to specify the exact version of a dependency that is used in a project. This can help to prevent the "dependency confusion" attack.
- **Plan for security compromise**: Consider developing a plan to quickly remove or replace a compromised dependency.
