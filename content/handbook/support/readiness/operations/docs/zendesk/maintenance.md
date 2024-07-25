---
title: Maintenance Tasks
description: Support Operations documentation page for Zendesk maintenance tasks
canonical_path: "/handbook/support/readiness/operations/docs/zendesk/maintenance"
---

To maintain healthy environments, there are several maintenance tasks we must
do. While the aim is to always automate these, some cannot be automated and
must be done manually from time to time.

## Fix tickets stuck in the void

When tickets find themselves in a void, they will not show up properly within
our views. As these have fallen into an unroutable state, we need to fix this.

This is currently done via automation using the Maintenance Tasks projects.
It runs every hour at the 30 minute mark.

Applicable instance:

- Zendesk Global

## Permanently delete deleted users

Deleting a user removes them from the Zendesk workspace, however it does not
actually _fully_ remove the user. As such, we need to routinely remove these
deleted users from Zendesk.

This is currently done via automation using the Maintenance Tasks projects.
It runs twice daily via Pipeline Schedules at 0045 and 1245.

Applicable instance:

- Zendesk Global
- Zendesk US Government

## Maintenance Tasks project locations

The Maintenance Tasks projects are located at:

- [Zendesk Global](https://gitlab.com/gitlab-support-readiness/zendesk-global/maintenance-tasks)
- [Zendesk US Government](https://gitlab.com/gitlab-support-readiness/zendesk-us-government/maintenance-tasks)
