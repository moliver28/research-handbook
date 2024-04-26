---
aliases: /handbook/engineering/development/sec/secure/static-analysis/code_review.html

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

#### How to become a maintainer

See company guidelines and how to become a maintainer in the [Engineering Review Workflow](/handbook/engineering/workflow/code-review/#how-to-become-a-project-maintainer).

Becoming a maintainer involves consistent contributions to the codebase, a high degree of "mantainer-level" merge requests, and an understanding of the specific [gotchas](#gotchas) involved with both the Secure stage as well as Static Analysis projects themselves.

##### Reviewer mentorship program

We follow the same reviewer mentorship program as documented in the [Engineering Review Workflow](/handbook/engineering/workflow/code-review/#reviewer-mentorship-program).

### Gotchas

There are certain aspects to maintaining our Secure projects that require a critical eye. These are responsibilities that every reviewer within the team should be cognizant of and are expectations on the part of our maintainers. Some examples include:

1. Execution of downstream pipelines prior to merge: this should occur automatically for members of `gitlab-org` but require manual triggering for community contributions
1. Failing pipelines must be fixed prior to tagging releases, see [versioning and release process](https://gitlab.com/gitlab-org/security-products/analyzers/common#versioning-and-release-process)
1. Analyzers must be kept in sync with our CI templates. In certain cases the analyzer versions must be kept in sync, such as mobsf
