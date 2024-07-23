---
title: Support Pods
description: Flexible interest groups to focus on collaboration within Support and across functions
---

Support Pods is a flexible framework which any group of team members can use to set up
self-organizing interest-based groups to work on any set of problems people wish to take on.

GitLab's product feature set and our customer’s use-cases are getting large and complex enough that
it makes sense to introduce some elements of specialization, but our team size is not yet large
enough that it makes sense to restructure our work and team around specialization.

Support Pods introduces some form of specialization now, while being flexible enough to adapt to the
current operational challenges that the Support team faces as we scale to meet GitLab’s increasingly
complex business and customer needs.

## Starting a Support Pod

### Before starting

- Decide what activities your Support Pod will cover.
- Have at least three team members commit to participate in Support Pod activities.
- Determine who will be leading or co-leading the Support Pod.

### Starting it up

1. Duplicate the [Example Pod](example-pod.md) template page.
1. Rename your newly-created page to the name of your Support Pod.
1. Modify your Support Pod's page to include content relevant to your Support Pod.

### After starting

1. Have a read of the Running a Support Pod section for guidelines and recommendations on running a
   Support Pod.
1. Announce the creation of your Support Pod in the Support Week In Review.

## Running a Support Pod

### Responsibilities of Support Pod leads

Each Support Pod should have at least one lead, who will be responsible for defining its purpose,
and driving progress towards achieving that purpose.

The Support Pod lead or co-leads are responsible for the following, and more:

- Recruiting team members who can and are willing to help with Support Pod activities.
- Organizing collaboration within the Support Pod, and with team members in the wider GitLab
  organization.
- Getting any resources or tools needed for Support Pod activities.
- Disbanding the Support Pod if its purpose has been met or is no longer needed.

As each Support Pod is self-organizing, leaders are free to decide how each Support Pod should make
decisions. While doing so, please keep in mind the [GitLab Values](/handbook/values/) and the
following principles:

- GitLab Handbook: [Directly Responsible Individuals](/handbook/people-group/directly-responsible-individuals/).
- Working on tickets Support workflow: [Key Principles](/handbook/support/workflows/working-on-tickets.html#key-principles)
  and [Priorities & Impact](/handbook/support/workflows/working-on-tickets.html#priorities-and-impact).

### Collaboration mediums

Here’s a list of different options you can use to collaborate with members of
your Support Pod.

#### Zendesk

You may choose to create a personal view and share this configuration with Support Pod members so
that you can see the same view of tickets. Unfortunately, the best way to do this now is through
manual means, such as taking and sharing a screenshot.

An alternative approach of using Zendesk shared views is being explored in
[Support Team Meta Issue #6187](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/6187).

#### GitLab.com issues

You may choose to create a label and issue board to filter and show all GitLab.com issues in the
`gitlab-org` and `gitlab-com` groups relevant to your Support Pod.

#### Support Pods project

You may choose to store any relevant files or documentation in your Support Pods directory in the
[Support Pods project](https://gitlab.com/gitlab-com/support/support-pods).

#### Google Doc

You may choose to create a Google Doc to store and collaborate in text before final transfer to a
more permanent medium, such as a GitLab.com issue or Zendesk ticket. Make sure to set permissions
such that everyone in GitLab can view or edit.

#### Slack

If you choose to use Slack to collaborate, consider using an existing channel:

- If customer-focused, an customer account internal channel (`#a_XYZ-internal`) may be appropriate.
- If GitLab product-focused, a stage (`#s_`), group (`#g_`) or feature channel (`#f_`) may be
  appropriate.

If creating a new channel, consider prefixing your channel with `#spt-pod_`.

If you will be conducting pod specific pairing sessions in the channel, [Pairify](/handbook/support/workflows/pairify/)
support can be added to the new channel by requesting this in `[#pairify-app](https://gitlab.enterprise.slack.com/archives/C06LG9NBSUX)`.

## Historical context

### Iteration 1

[Iteration 1](https://gitlab.com/groups/gitlab-com/support/-/epics/192) was rolled out in August 2021
[in APAC](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/3663) and September 2021
[globally](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/3740). It was focused on
enabling learning and collaboration. It was designed to complement the
[Working on Tickets workflow](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/01bdd0b151efc881b13fdb9484669a6f76d0708a/sites/handbook/source/handbook/support/workflows/working-on-tickets.html.md),
so Support Pod views were worked on after all other Zendesk views.

Participants of the initial phase of Iteration 1 reported that there was not enough time to get to
the Support Pod views due to heavy workload in other views. To alleviate this problem, we trialed
[prioritising Support Pod views ahead of other Zendesk views](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/96152)
in February 2022.

#### Retrospective

**What went well:**

- Increases productivity when working on tickets and facilitates hands-on learning when training as
  Support Pod views are focused on one topic area.
- Easy to find and collaborate on tickets which might need a helping hand as tickets from all
  assignees and regions are visible

**What didn't go well:**

- Confusion around ticket handling priorities as fitting Support Pods into ticket workflows resulted
  in guidance conflicting with global and regional work priorities.
- Conflicting guidance also caused some Pilot participants to feel like they were doing something
  bad by deviating from global workflows.

**What can be improved:**

- Identify how members of a Support Pod can collaborate with each other  &mdash;  most collaboration
  was with those working the ticket rather than within a Support Pod.
- Make Support Pod content more focused  &mdash; some views, e.g. Instance Management, contained a
  set of problem types that were too broad to facilitate focus.

### Iteration 2

[Iteration 2](https://gitlab.com/groups/gitlab-com/support/-/epics/191) was rolled out in March 2022,
against the backdrop of [Support Global Groups (SGGs)](https://gitlab.com/groups/gitlab-com/support/-/epics/210)
being rolled out as the primary to organize work on tickets. It was evolved into a flexible
framework which any group of team members can use to set up self-organizing interest-based groups to
work on any set of problems the group chooses to take on. This allowed it to co-exist and complement
SGGs.
