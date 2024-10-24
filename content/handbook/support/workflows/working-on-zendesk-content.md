---
title: Working on Zendesk automations, triggers, macros, views, etc.
description: "How to collaborate on Zendesk automations, triggers, macros, views, etc."
category: Zendesk
---

## General process

To make it easier for Support Engineers to contribute to things that are managed by Support Operations, data and code have been separated for some items. A more detailed, technical explanation is available [in the Readiness handbook](/handbook/support/readiness/operations/docs/change_management/sync_repos/#v2). This approach removes the need for Support Operations to review every change proposed for Zendesk views, macros, triggers and automations.

For any **changes** to the content of Zendesk views, macros, triggers and automations consider their impact first. If your changes go beyond something like fixing a typo or updating a link and have broader repercussions for the team, consider the [Change Management in GitLab Support](/handbook/support/managers/change-management/) handbook page. Otherwise you can suggest your changes directly via a merge request in the relevant managed content project.

**For creating new content or renaming existing content** (e.g. a new macro, or renaming a view), an STM issue is required as Support Operations has to handle these actions. The managed content projects only allow *managing content* of existing items.

### Managed content projects

The [tables in the Readiness handbook](/handbook/support/readiness/operations/docs/change_management/sync_repos/#zendesk-global) are the SSOT, see the `Support Project` column to find the corresponding project where we can easily change contents.

Refer to the corresponding projects and create a merge request with your changes:

- [gitlab-com/support/zendesk-global/automations](https://gitlab.com/gitlab-com/support/zendesk-global/automations)
- [gitlab-com/support/zendesk-global/macros](https://gitlab.com/gitlab-com/support/zendesk-global/macros)
- [gitlab-com/support/zendesk-global/triggers](https://gitlab.com/gitlab-com/support/zendesk-global/triggers)
- [gitlab-com/support/zendesk-global/views](https://gitlab.com/gitlab-com/support/zendesk-global/views)
- [gitlab-com/support/support-pages](https://gitlab.com/gitlab-com/support/support-pages) (also known as articles)

Whether you're proposing minor changes directly or something bigger following an RFC discussion, tag a Support Manager for review and ask them to merge the changes. Once changes have been merged in one of these projects, you'll notice that the `Sync Stage` badge says `Awaiting Deployment` on the project overview page. This indicates that there's changes in the project that will be rolled out during the next [regular deployment](/handbook/support/readiness/operations/docs/change_management/#standard-change-management).

#### Macros

Macros are [deployed immediately](/handbook/support/readiness/operations/docs/change_management/##ad-hoc-deployments). For information on macros, please see [Zendesk Global Macros](/handbook/support/readiness/operations/docs/zendesk/macros/).

- If you want to edit the wording of a macro, make an MR to the repo (Zendesk Global or Zendesk US Government).
- If you want to make non-wording changes (renaming it, add/removing options, etc.), use the [Support Super Form](https://support-super-form-gitlab-com-support-support-op-651f22e90ce6d7.gitlab.io/) 'Edit a Zendesk macro' option.
  - **NOTE** If a managed content file is needed (as you selected a `Public` or `Private` comment would be used), the Support Super Form will create a placeholder file for you (if said file does not exist). For the quickest resolution, it is best to *not* create the managed content file before your submission of the Support Super Form.
- If you want to create a new macro, use the [Support Super Form](https://support-super-form-gitlab-com-support-support-op-651f22e90ce6d7.gitlab.io/) 'Create a Zendesk macro' option.
  - **NOTE** If a managed content file is needed (as you selected a `Public` or `Private` comment would be used), the Support Super Form will create a placeholder file for you (if said file does not exist). For the quickest resolution, it is best to *not* create the managed content file before your submission of the Support Super Form.
- To discuss a macro (but not actually action on anything), use a support-team-meta issue.

#### Articles

Articles (also called pages) are [deployed immediately](/handbook/support/readiness/operations/docs/change_management/#ad-hoc-deployments). For information on articles, please see [Zendesk Articles](/handbook/support/readiness/operations/docs/zendesk/articles/).

- If you want to edit the wording of an article, make an MR to the repo.
- If you want to create a new article, use the [Support Super Form](https://support-super-form-gitlab-com-support-support-op-651f22e90ce6d7.gitlab.io/) 'Create a Zendesk article' option.
- To discuss an article (but not actually action on anything), use a support-team-meta issue.

## Previewing variable replacement

When using [variables](/handbook/support/readiness/operations/docs/zendesk/liquid/#common-variables) it can be useful to verify that they will be working as you expect them to. A simple way to do this is to create a test ticket, pasting the content of your automation, trigger, or macro in there and observing the outcome.
