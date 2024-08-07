---
title: "Issues project management guidelines"
---

{{< include "includes/wip-notice.md" >}}

## Background

[Issues](https://docs.gitlab.com/ee/user/project/issues/) are a core building block in GitLab that enable collaboration, discussions, planning and tracking of work.

Issues are typically used to

- Support a Discussion on a specific topic
- Define requirements for a new feature
- Organize work on a specific deliverable
- Manage a specific workflow (i.e. requesting access to a system, getting commitment from another team, etc)
- Planning an aspect of an event or a campaign.

Because issues can serve so many purposes and roles in GitLab, understanding where they exist and how to best utilize them is incredibly important.

### Key things to know

#### Issues are defined in the scope of a Project.   NOT a Group

1. Issues ONLY exist in projects. While Groups have boards that manage issues and lists of issues, the issues ALWAYS are stored in a project that is subordinate to the group.
1. GitLab Groups do **NOT** have issues. Groups have **Epics**.

#### Issue Descriptions

The top section of an issue is the body of the issue - the "Description"   In the "Description", is where the core themes and topics of the issue is captured.  It is not uncommon to find lengthy issue descriptions, which are used to capture the most current status of the issue.

Because the issue discussions can be long and flowing, often a best practice is to update the description with the most current/ up to date content.

#### Issue Details

There are many detailed parts of an [issue](https://docs.gitlab.com/ee/user/project/issues/), such as:

- [Time tracking](https://docs.gitlab.com/ee/user/project/time_tracking.html)
- [Weight](https://docs.gitlab.com/ee/user/project/issues/issue_weight.html)
- [Participants and notifications](https://docs.gitlab.com/ee/user/profile/notifications.html)
- [Mentions](https://docs.gitlab.com/ee/user/discussions/index.html#mentions)
- [Related issues](https://docs.gitlab.com/ee/user/project/issues/related_issues.html)
- [Related merge Requests](https://docs.gitlab.com/ee/user/project/issues/crosslinking_issues.html#from-merge-requests)
- [Comments](https://docs.gitlab.com/ee/user/discussions/index.html)
- [Zoom meetings](https://docs.gitlab.com/ee/user/project/issues/associate_zoom_meeting.html)

#### Issue templates

In each project, a set of "Issue Templates" can be defined to make it easy to create common issues for different situations or problems. [Learn how to create an issue template](https://docs.gitlab.com/ee/user/project/description_templates.html#create-an-issue-template)

#### Designs and Design Discussions

Issues enable and support discussions on images and designs with [Design Management](https://docs.gitlab.com/ee/user/project/issues/design_management.html#overview).  Design management makes it very useful in reviewing graphics and design work asynchronously.

#### Quick Actions

Issues, Merge Requests and Epics all support the ability to use keyboard shortcuts trigger key actions in the issue, MR or epic.

[Quick Actions](https://docs.gitlab.com/ee/user/project/quick_actions.html) are effectively commands that make it easy and efficient to change an issue such as:

- `/label` followed by the label name will add a label.
- `/assign` followed by a user ID, will assign the issue to a person
- `/close` will close an issue
- `/duplicate` followed by an issue number will close the current issue as a duplicate and link to the given (open) issue
- `/epic` followed by an epic ID will assign the issue to an epic

and so on.

#### Confidential issues

Issues can be either open or confidential.

Default to public issues, and use the [guidance on non-public communication](/handbook/communication/confidentiality-levels/#not-public) to make a decision when in doubt.

#### Task lists

In the Markdown language that is used to write the description and comments in issues it is possible to [create lists of items that work as **checkboxes**](https://docs.gitlab.com/ee/user/markdown.html#task-lists) - a list of `tasks`

Realize that `task lists` are a relatively simple list of items that can be 'checked off'.

#### Related Issues and Blocking issues

In order to manage interdependency between issues, it is possible to create several types of relationships between issues:

1. Simple relationships.  Is where one issue is simply related to another issue and there is no interdependency.
1. Blocks.  Is where one issue prevents another issue from being completed.
1. Is Blocked By. is where an issue is dependent on another issue.

With issue relationships, it is possible to create a series of tasks/issues where there is a sequential requirement that one issue is completed before the following issues are completed.

### Known limitations

1. An issue cannot be added to more than one milestone.

## Guidelines

### Use issue templates

Define and use Issue Templates for any repetitive types of issues that a team/project will need.

The issue template can be accessed directly through a URL such as
`https://gitlab.com/gitlab-com/marketing/strategic-marketing/product-marketing/-/issues/new?issuable_template=A-SM-Support-Request`

Where the first half of the URL is the link to the project and then `new?issuable_template=` followed by the name of the template.

Use Quick Actions in the issue template to ensure that the issues have the appropriate `labels`, `epics`, and `milestones` associated with the issue.

### Indicate a single DRI

DRI stands for [Directly Responsible Individual](/handbook/people-group/directly-responsible-individuals/). As such, an issue should represent a clear deliverable to be completed by the DRI. If work is required from multiple team members, with certain tasks required at different time intervals, in most cases you should break the issue into multiple issues to clarify the deliverable from each team member.

For example, if copy is needed for a landing page, and a different team member will create the page, there should be an issue for the creation of the copy and an issue for creation of the page on about.gitlab so that dependencies are clearly indicated and milestones can be applied correctly with clear DRIs for each action (copy and separately landing page creation).

### Keep issue descriptions up-to-date

Issue discussions can be lengthy and exhaustive.  As a best practice, update issue descriptions with the most current status and information.  For example, if a discussion thread results in a better answer or improved part of the description - update the description.  Don't force everyone to read the entire thread and history in order to understand the current status of the issue.

Issues maintain a history of the changes to the descriptions, so update descriptions when it makes sense.

{{% alert color="info" %}}
<i class="fas fa-info-circle" aria-hidden="true" style="color: rgb(49, 112, 143)
;"></i> Tip! Using a header with a clear highlight on the "latest update" can be a quick and clear indication to any viewer what has been last agreed in conversations.
{{% /alert %}}

### Set issue weight

Issue weight can be made relative to the tasks within an issue. Issue weight is an estimate of how much time is required to complete the tasks in the issue.

| Time                     | Weight     |
|----------------------    |--------    |
| <4 hours                 | 0          |
| 4 hours / half a day     | 1          |
| 8 hours / 1 day          | 2          |
| 12 hours / 1.5 days      | 3          |
| 16 hours / 2 days        | 4          |

You can use the `/weight <value>` [quick action](#quick-actions) to define the weight.

### Use task lists sparingly

In general, avoid using markdown task lists within issues, unless they define very simple tasks, verification or approval steps. [Every non-trivial task should be an issue](#every-task-should-be-an-issue).

### Every task should be an issue

Every non-trivial task related to a Marketing program should be filed as an issue instead of a task list within the description of another issue.

When interpreted as a work unit, issues enable better planning and accountability. In particular, they can be added to milestones for scheduling purposes and to assess workload and capacity. In this regard, they also contribute to an iterative approach by having dedicated issues focused on completing a specific task only.

### Use descriptive, concise issue titles that describe tasks

At a glance, everyone should be able to have a basic understanding of the task at hand by reading an issue title, and then delve into the description when more context is needed. This can contribute to scan through issue lists on GitLab.com or on e-mail efficiently.

In general, most issue titles should describe a task as a unit of work to be completed:

- ✔ "Document existing behavior flows on about.gitlab.com" => clearly describes task and expected outcome
- ✘ "Ultimate users" => does not provide a clear indication on the task or expectations
