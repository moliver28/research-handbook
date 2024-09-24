---
title: "Static Analysis Group Code Review Process"
---

## Overview

This page documents the code review process utilized by the Static Analysis team.

### Reviewer

All Static Analysis group members are expected to regularly participate in code reviews. This includes contributions from both GitLab Team Members and the wider community, as done as a part of our MR coach rotation.

While all team members are encouraged to review merge requests, the ability to merge MRs and release changes is restricted to project maintainers.

### Maintainer

To quote from the [Engineering Review Workflow](/handbook/engineering/workflow/code-review/#how-to-become-a-project-maintainer):

> Great engineers are often also great reviewers, but code review is a skill in and of itself and not every engineer, no matter their seniority, will have had the same opportunities to hone that skill. It's also important to note that a big part of being a good maintainer comes from knowing the existing product and codebase extremely well, which lets them spot inconsistencies, edge cases, or non-obvious interactions with other features that would otherwise be missed easily.
>
> To protect and ensure the quality of the codebase and the product as a whole, people become maintainers only once they have convincingly demonstrated that their reviewing skills are at a comparable level to those of existing maintainers.

As with regular reviewers, maintainers can be found on the team page, or on the list of [GitLab Engineering Projects](/handbook/engineering/projects/).

#### Path to maintainership

##### Becoming a reviewer

All SAST BE Engineering team members are expected to review changes to the SAST analyzers. As part of the final steps of the onboarding process, the team member page should be updated to add the team member as a reviewer for each SAST analyzer.

```yaml
  secure-SAST-kics: reviewer
  secure-SAST-kubesec: reviewer
  secure-SAST-pmd-apex: reviewer
  secure-SAST-security-code-scan: reviewer
  secure-SAST-semgrep: reviewer
  secure-SAST-sobelow: reviewer
  secure-SAST-spotbugs: reviewer
  secure-SAST-tracking-calculator: reviewer
  secure-common-command: reviewer
  secure-common-report: reviewer
  secure-common-ruleset: reviewer
```

##### Path to maintainership

All senior (and above) Backend engineers who contribute to any of the SAST analyzers are expected to pursue maintainership of all SAST analyzers, but becoming a maintainer is encouraged for all SAST engineers.
All maintainership approvals should be given by at least two existing maintainers.
There are two tiers of maintainership within SAST.

###### Tier 1

Some analyzers are rarely updated; These include:

[kics](https://gitlab.com/gitlab-org/security-products/analyzers/kics)
[kubesec](https://gitlab.com/gitlab-org/security-products/analyzers/kubesec)
[pmd-apex](https://gitlab.com/gitlab-org/security-products/analyzers/pmd-apex)
[security-code-scan](https://gitlab.com/gitlab-org/security-products/analyzers/security-code-scan)
[sobelow](https://gitlab.com/gitlab-org/security-products/analyzers/sobelow)
[spotbugs](https://gitlab.com/gitlab-org/security-products/analyzers/spotbugs)

Becoming a maintainer on a project that is rarely updated can be tough since there are limited opportunities to contribute or review. In this case, contributions to other GitLab analyzers should be considered and granting of maintainership should be left to the existing maintainer's discretion. The existing maintainer should document the reasons for approval, or if maintainership is denied, suggestions on which projects to contribute to should be given. When reviewing contributions, consideration should be given to contributions to issues within section-sec-request-for-help should also be included, even if these contributions did not result in an MR.

###### Tier 2

This tier of maintainership includes:

[Semgrep](https://gitlab.com/gitlab-org/security-products/analyzers/semgrep)
[sast-rules](https://gitlab.com/gitlab-org/security-products/sast-rules)
[tracking-calculator](https://gitlab.com/gitlab-org/security-products/post-analyzers/tracking-calculator/)
[ruleset](https://gitlab.com/gitlab-org/security-products/analyzers/ruleset)

The granting of maintainership is down to the discretion of the two current maintainers approving the request, but an applicant must have a track record of contributions to the project. These contributions should demonstrate an understanding of the project and how changes to it could affect the monolith.

##### Reviewer mentorship program

We follow the same reviewer mentorship program as documented in the [Engineering Review Workflow](/handbook/engineering/workflow/code-review/#reviewer-mentorship-program).

### Gotchas

There are certain aspects to maintaining our Secure projects that require a critical eye. These are responsibilities that every reviewer within the team should be cognizant of and are expectations on the part of our maintainers. Some examples include:

1. Execution of downstream pipelines prior to merge: this should occur automatically for members of `gitlab-org` but require manual triggering for community contributions
1. Failing pipelines must be fixed prior to tagging releases, see [versioning and release process](https://gitlab.com/gitlab-org/security-products/analyzers/common#versioning-and-release-process)
1. Analyzers must be kept in sync with our CI templates. In certain cases the analyzer versions must be kept in sync, such as mobsf
