---
title: US Gov Apps
description: Support Operations documentation page for Zendesk US Government apps
canonical_path: "/handbook/support/readiness/operations/docs/zendesk/apps/us-government-apps"
---

## Advanced Search

Advanced Search is an app that provides a simple visual interface for
constructing complex search queries against tickets, users, and organizations
(orgs). It also enables you to export the search results in a CSV format.

App information:

- Located in the navbar
- This application was developed by
  [Zendesk](https://www.zendesk.com/marketplace/partners/zendesk/) and is
  available in the
  [Zendesk Marketplace](https://www.zendesk.com/apps/support/advanced-search/).

## Architecture Diagrams

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

## GitLab Reminders App

<sup>*Introduced via [support-team-meta#3036](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/3036)*</sup>

The Reminders App appears in the navbar and allows the agent a more specialized
view of tickets they are involved in. It currently shows:

- Tickets assigned to you with a pending/overdue task that are not in a Closed
  state
- Recent tickets you have viewed
- Tickets assigned to you that are not in a Closed state
- Tickets you are CC'd on that are not in a Closed state

It also allows you to quickly manage your tasks by seeing the notes you have
left for said task, when it is due, and a button to quickly mark the task as
done (remove the notes and due date).

App information:

- Located in the navbar
- This application was developed in-house and can be found
  [GitLab Reminders App project](https://gitlab.com/gitlab-support-readiness/zendesk-us-government/apps/reminders-app).

## Out of Office

<sup>*Introduced via [support-team-meta#4303](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/4303)*</sup>

This will enable an agent to mark when they are out of office in Zendesk, which
then updates tickets and makes it visible in the views.

Managers are also able to do this for their reports.

App information:

- Located in the navbar
- Restricted by Group:
  - Support
  - Support Managers
  - Support Operations
- This application was developed in-house and can be found
  [Out of Office project](https://gitlab.com/gitlab-support-readiness/zendesk-us-government/apps/out-of-office)

## Show Related Tickets

This uses the ticket subject to search for other tickets with a similar
subject. This helps to locate potentially related tickets you can check to see
how they were solved.

App information:

- Located in the ticket sidebar
- This application was developed by
  [Zendesk](https://www.zendesk.com/marketplace/partners/zendesk/) and is
  available in the
  [Zendesk Marketplace](https://www.zendesk.com/apps/support/show-related-tickets/).

## Zendesk Super App

<sup>*Introduced via [support-ops-project#801](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/801)*</sup>

A plugin controlled app that can do several things Zendesk related

The current plugins are:

- **Create new ticket**
  > Allows an agent to create a new ticket using the same user as the ticket they are currently on.
- **Due date picker**
  > This allows you to customize what the Due Date for a Task ticket is set for. By default, Zendesk only allows setting the date. This enables you to set the date, time, and timezone.
  >
  > You can also set the Due Date Note and disable (or enable) task notifications using this app.
- **Escalated tickets**
  > This searches for tickets under the organization that have been escalated within the last 6 months.
- **Related tickets**
  > This looks for tickets related to the current one based off the category (or subcategory) the ticket is currently using. It then displays up to 5 of them (sorted by the update_at value of the ticket, descending).
- **Attachments**
  > Displays attachments present on the ticket.

App information:

- Located in the ticket sidebar
- Restricted by Group:
  - Support
  - Support Managers
  - Support Operations
- This application was developed in-house and can be found
  [Zendesk Super App project](https://gitlab.com/gitlab-support-readiness/zendesk-us-government/apps/zendesk-super-app).
