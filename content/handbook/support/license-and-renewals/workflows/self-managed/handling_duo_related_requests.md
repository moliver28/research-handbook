---
title: Handling Duo-related Requests
description: "How to handle Duo related requests for self-managed customers"
category: GitLab Self-Managed licenses
---

### Customer wants to start a Duo Pro trial

- Direct the customer to [this page](https://docs.gitlab.com/ee/subscriptions/subscription-add-ons.html#start-gitlab-duo-pro-trial)

### Account owner wants to extend a Duo trial

- Mechanizer does not support extending Duo trials and we do not have other tooling to enable extensions
- Instead, an account owner should reach out in the [#duo-pro-trial-requests Slack channel](https://gitlab.enterprise.slack.com/archives/C06JNL6C9BM) using the template in the channel description
- Duo extensions must be processed as $0 opportunities

### Customer is on an Ultimate-tier trial and wants to trial Duo

- Duo requires cloud licensing to be enabled and SM plan trials are issued via legacy licenses
- This means that customers cannot trial both at the same time - instead they will need to complete their Ultimate-tier trial before starting a Duo trial separately.

### A community programs customer wants to trial Duo

- SM Community program licenses are issued as legacy licenses, so community program customers are not eligible for trialing Duo

### Troubleshooting

#### Customer cannot use Duo on an instance that uses an offline or legacy license

- Duo requires a cloud activation code is applied to an instance
- If the customer does not require their instance to use a legacy/offline license, they can generate an activation code for their subscription in the Customers Portal (via their subscription card)

#### Duo trial does not immediately begin

- Duo trials are synced to self-managed instances via the daily sync, so it can take up to 24 hours for a Duo trial to apply to a self-managed instance

#### Duo Pro trial has not started even 24 hours later

- SM Duo Pro trials are created [via this form](https://about.gitlab.com/solutions/gitlab-duo-pro/sales/) and are processed by Sales via Marketo
- If a customer is from an embargoed country the form will submit, however the application will silently fail
- Reach out to  [#duo-pro-trial-requests](https://gitlab.enterprise.slack.com/archives/C06JNL6C9BM) for clarification
