---
title: "Product Security Contributions"
description: "Product Security Contributions to the product"
aliases:
- /handbook/security/product-security/product-security-contributions
---

One of the missions of the Product Security department is to contribute security features and capabilities into GitLab codebases. This page serves as a showcase of our successes in contributing to the product.

## Contributions

- DPoP: [cli implementation](https://gitlab.com/gitlab-org/cli/-/merge_requests/1389), [backend and UI implementation](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/148175)
- A [feature to block weak passwords](https://gitlab.com/groups/gitlab-org/-/epics/8139), which [matches 4,500+ weak, known, and breached passwords](https://docs.gitlab.com/ee/user/profile/user_passwords.html#block-weak-passwords) and rejects them. Historically this has blocked 50,000+ weak passwords a month.
- A [feature to allow enforcement of 2FA as a requirement on all GitLab Administrator user accounts](https://gitlab.com/gitlab-org/gitlab/-/issues/427549). This optional setting adds an extra layer of security for both GitLab itself and self-managed customers.
- A [defense in depth](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/149029) against [mass assignment](https://guides.rubyonrails.org/v3.2.9/security.html#mass-assignment) in authorization and authentication Rails controllers. This change adds unit tests to identify potential mass assignment vulnerabilities, as well as explicit type cases that help defend against them
- A [mechanism to enforce the prefixing of new authentication token types](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/142632). This helps ensure that newly created authentication tokens have a prefix, enabling easier detection and revocation of leaked tokens.
