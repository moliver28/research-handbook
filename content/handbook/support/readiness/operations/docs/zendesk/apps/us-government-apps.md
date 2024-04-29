---
title: US Gov Apps
description: Support Operations documentation page for Zendesk US Government apps
canonical_path: "/handbook/support/readiness/operations/docs/zendesk/apps/us-government-apps"
---

Zendesk US Federal has some similar apps as Zendesk Global. The ones they have
in common are:

- [Advanced Search](../global-apps#advanced-search)
- [GitLab Reminders App](../global-apps#gitlab-reminders-app)
- [Out of Office](../global-apps#out-of-office)

### Architecture Diagrams

<sup>*Introduced via [support-ops-project#801](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/801)*</sup>

This app uses the Organization field `AM Project ID` to check for an existing
Account Management project. If it finds it, it will then link to that
project’s Architecture Diagram.

**NOTE**: The AM Project ID field is manually populated. To get that added in,
you would want to submit a Support Ops Project issue.

App information:

- Located in the ticket sidebar
- This application was developed in-house and can be found
  [GitLab Architecture project](https://gitlab.com/gitlab-support-readiness/zendesk-us-government/apps/gitlab-architecture).

### Due Date Picker

This is a GitLab built app that allows you to customize what the Due Date for a
Task ticket is set for. By default, Zendesk only allows setting the date. This
enables you to set the date, time, and timezone.

App information:

- Located in the ticket sidebar
- This application was developed in-house and can be found
  [Due Date Picker project](https://gitlab.com/gitlab-support-readiness/zendesk-us-government/apps/due-date-picker).

### Show Related Tickets

This uses the ticket subject to search for other tickets with a similar
subject. This helps to locate potentially related tickets you can check to see
how they were solved.

App information:

- Located in the ticket sidebar
- This application was developed by
  [Zendesk](https://www.zendesk.com/marketplace/partners/zendesk/) and is
  available in the
  [Zendesk Marketplace](https://www.zendesk.com/apps/support/show-related-tickets/).
