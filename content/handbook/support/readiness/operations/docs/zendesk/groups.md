---
title: Groups
description: Support Operations documentation page for Zendesk groups
canonical_path: "/handbook/support/readiness/operations/docs/zendesk/groups"
---

## What are Zendesk groups?

As per
[Zendesk](https://support.zendesk.com/hc/en-us/articles/4408886146842-About-organizations-and-groups#topic_iny_3jg_sz):

> Groups collect team members together based on criteria those team members have
> in common. Groups can only contain team members; no end users can be included.
> All agents must be assigned to at least one group, but they can be members of
> more than one. Groups can be used to support organizations. You can designate
> one group as the default group for your account and you can also designate a
> default group for each team member. All new team members you create will be
> added to the default group.

## Change management

Keep in mind, all change management should be stemming from an issue, first and
foremost.

We manage group membership via Zendesk itself (on user profiles), so the only
management of groups itself comes down to creation and deletion.

#### Creating a group

You will start by creating the group itself in Zendesk. To do this, open up the
admin page of your corresponding Zendesk instance
([Global](https://gitlab.zendesk.com/admin) or
[US Government](https://gitlab-federal-support.zendesk.com/admin)) clicking
`People` on the left-hand side, and then click `Groups`. On this page, click the
blue `Add group` button at the top-right of the page.

You will then enter the group's name and description. Do not fill out anything
else (including members). After doing so, click the blue `Save` button at the
bottom-right of the page.

After doing so, you will need to get the ID value for it (if you click it, you
can see it in the URL).

From here, create the merge request in the sync repo project.

#### Deleting a group

To delete a group, you need to purge it from multiple locations:

- Sync repo project
- Zendesk itself

The first can be done via merge requests, but the last one has to be done in the
the Zendesk instance itself. To do this, open up the admin page of your
corresponding Zendesk instance ([Global](https://gitlab.zendesk.com/admin) or
[US Government](https://gitlab-federal-support.zendesk.com/admin)) `People` on
the left-hand side, and then click `Groups`. On this page you will locate the
group in question, click the three vertical dots at the right-hand side of the
group, and click `Delete`. This will cause a pop-up modal to appear asking you
to confirm the action. Click red `Delete` button to do so.

## Troubleshooting

#### Pipeline error "Blank ID"

This means the script detected a YAML file within `data` that has an `id` value
of blank (or nil). You will need to locate the file mentioned in the error and
correct that.

#### Pipeline error "Blank name"

This means the script detected a YAML file within `data` that has an `name`
value of blank (or nil). You will need to locate the file mentioned in the error
and correct that.

#### Pipeline error "GitLab errors"

This is a generic error message that will detail some error that occurred when
trying to either create or update the tag used on the source project. The exact
steps to fix this will vary based on the nature of the error itself. You will
need to review the error and determine the next steps from there.

If you are unsure how to proceed, it is best to seek assistance from the wider
team.

## Source Projects

#### Zendesk Global

- [Sync repo project](https://gitlab.com/gitlab-support-readiness/zendesk-global/groups)

#### Zendesk US Government

- [Sync repo project](https://gitlab.com/gitlab-support-readiness/zendesk-us-government/groups)
