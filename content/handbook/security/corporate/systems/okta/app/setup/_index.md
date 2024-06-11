---
title: Okta Application Setup Guide
---

## Overview

All SaaS and vendor software needs to go through the [procurement process](/handbook/finance/procurement/new-software/) and added to the tech stack before we can go live in Okta.

As part of that procurement process, GitLab must verify that the application can be configured with Okta SSO using SAML or SCIM and has automatable user management for creation, updates, and deactivation.

- [Finance Procurement Process](/handbook/finance/procurement/new-software)
- [New Application Change Management Issue Template](https://gitlab.com/gitlab-com/business-technology/change-management/-/issues/new?issuable_template=okta_new_app_request)
- [Update Application Change Management Issue Template](https://gitlab.com/gitlab-com/business-technology/change-management/-/issues/new?issuable_template=okta_existing_app_update)

## Timeline Expectations

> The current SLA for new Okta applications is up to 4 weeks after the change management issue is created. Please create issues during the procurement process to get it in our queue for scheduling purposes.

The (future) tech stack application business owner or technical owner is responsible for creating the change management issue and providing approvals and technical review during the process.

- **Procurement Discovery and PoC**
  - **Verify Okta SAML/SCIM feature support:**  with vendor technical contact or in the product documentation.
  - **Complex Applications:** For complex or mission critical applications, it is recommended to start an email or Slack thread to discuss in collaboration with the Corporate Security Identity team. It is always better to engage us early instead of waiting until a few weeks before you want to go live.
  - **PoC or Sandbox Instance:** If you have a pre-procurement environment/instance, you can create a change management issue for a test application instance to be added. We do not have rushed timelines available, so please do not treat this as a blocker for your PoC to be completed.
- **Procurement Negotiations**
  - Create the change management issue to get it the first in, first out queue. We cannot begin implementation or go live for users until the procurement process is completed.
  - Add details about the expected Okta groups and users that should be assigned to the application.
  - For complex applications, add details about roles and permissions for users. This impacts how we assign and/or create Okta groups for each role. This is usually discussed in depth during the discovery call.
- **Vendor Onboarding**
  - Add the new application to the tech stack
  - Update the change management issue with the tech stack details and comment that the procurement process is complete.
  - The Corporate Security Identity Team will schedule a technical discovery call if it hasn't happened already.
- **Application Creation**
  - See the change management issue for the process. This process can take 1-2 weeks with approvals and testing.
  - The go live process is flexible and varies based on the application. Please comment in the change management issue with expectations and also discuss on the discovery call.

## Configuration Updates

All configuration updates are managed using a change management issue.

[Update Application Change Management Issue Template](https://gitlab.com/gitlab-com/business-technology/change-management/-/issues/new?issuable_template=okta_existing_app_update)

## Access Requests

All group and user updates are managed with access requests.

- [Okta Access Requests](/handbook/security/corporate/systems/okta/ar)
- [Okta Groups](/handbook/security/corporate/systems/okta/groups)
