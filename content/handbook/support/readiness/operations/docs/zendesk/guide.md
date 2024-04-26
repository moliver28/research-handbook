---
title: Guide
description: Support Operations documentation page for Zendesk Guide
canonical_path: "/handbook/support/readiness/operations/docs/zendesk/guide"
---

## What is Zendesk Guide?

Zendesk Guide is the system that generates the support portal and related
matters, such as:

- Help articles
- General appearance
- Built-in integrations

A more general way to think of it is that it is the Help Center.

## Accessing Zendesk Guide

The main way to access Zendesk Guide is to click the 4 squares in the top-right
of the page and then select Guide. This will open up the Zendesk Guide in a new
tab.

From there, you can click on Guide admin in the top-right of the page to get to
the admin page for Zendesk Guide.

**Note**: If you do not see the `Guide admin` link, you are likely in preview
mode. At the top of the screen, this should be indicated, along with a link you
can click to leave preview mode.

## Components of Zendesk Guide

On the admin page for Zendesk Guide, you will find several icons on the
left-hand side of the page:

| Position | Icon Description | Meaning          |
|:--------:|------------------|------------------|
| 1        | Open book        | Manage articles  |
| 2        | Text bubble      | Moderate content |
| 3        | 3 lines          | Arrange content  |
| 4        | Eyeball          | Customize design |
| 5        | User with lock   | User permissions |
| 6        | Gear             | Settings         |

#### Manage articles

This section is where you manage articles that are used in Zendesk Guide. From
here you could publish/unpublish articles, modify labels/author/permissions,
archive/unarchive articles, and delete articles.

As we manage our articles via sync mechanisms, please see out documentation on
[Zendesk articles](../articles).

#### Moderate content

This section is where you would do moderation on content. As we do not use user
content (comments, articles, etc.), this section can be ignored.

#### Arrange content

This section let's you rearrange and import content.

As we manage our articles via sync mechanisms, please see out documentation on
[Zendesk articles](../articles).

#### Customize design

This section lets you manage the appearance of the support portal.

As we manage our theme via sync mechanisms, please see out documentation on
[Zendesk theme](../theme).

#### User permissions

This page lets you configure the user permissions for the support portal. This
section is separated into 2 more sections:

##### User segments

This section let's you configure user groupings. With our setup, there should
only be two (and these are built into Zendesk Guide):

- Agents and admins (user type: Staff)
- Sign-in users (user type: Signed-in users)

You should not need to change this section as it is largely unused.

##### Management permissions

This section let's you manage permissions based on user segments. You should not
need to change this section as it is also largely unused.

#### Settings

This page lets you configure the settings for Zendesk Guide. This section is
separated into 3 more sections:

##### Guide settings

Here you handle content management, security, requests, and integrations
settings for the help center. These settings should not normally be changed
without extensive communication and testing, as they can greatly impact the user
experience.

- Content management
  - Anonymous voting on aritcle - unchecked
  - Spam filter
    - Content moderation - checked
    - Moderate all content
  - User profiles - unchecked
- Security
  - Display unsafe content - checked
  - Require sign in - unchecked
- Requests
  - Sort by oldest comment to newest
  - Enable agents to manage requests from Help Center - unchecked
- Integrations
  - Google Analytics - checked
  - Tracking ID is filled out (do not change this)
- Powered by Zendesk logo - unchecked

##### Language settings

Here you can enable multiple languages for the support portal. We currently do
not use any other language than `English (United States)` at this time. The
Help Center name for this language should be `GitLab, Inc.`.

##### Gather settings

This lets you handle how users can provide ideas and ask questions. Generally
speaking, we do not use this section, as we prefer to keep all documentation
on the GitLab side instead of within Zendesk. You should not need to modify
these settings, which should have all of the checkboxes unchecked.
