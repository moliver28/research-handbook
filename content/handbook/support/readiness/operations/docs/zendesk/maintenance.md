---
title: Maintenance Tasks
description: Support Operations documentation page for Zendesk maintenance tasks
canonical_path: "/handbook/support/readiness/operations/docs/zendesk/maintenance"
---

To maintain healthy environments, there are several maintenance tasks we must
do. While the aim is to always automate these, some cannot be automated and
must be done manually from time to time.

## Fix bad task ticket

This locates Task type tickets that have a Due Date set before the current time.
Any tickets found in this state have their due date removed and are set to the
type of Question.

This is currently done via automation using the Maintenance Tasks projects.
It runs every hour at the 30 minute mark.

Applicable instance:

- Zendesk Global
- Zendesk US Government

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
