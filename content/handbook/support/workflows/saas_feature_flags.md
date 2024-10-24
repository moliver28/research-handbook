---
title: Enabling feature flags for projects or groups on GitLab.com
category: GitLab.com
description: "Workflow to follow when customers request for feature flags to be enabled on theire GitLab.com projects or groups"
---

## Overview

This workflow covers cases where a customer requests support to enable [feature flags](https://docs.gitlab.com/ee/development/feature_flags/controls.html) on their GitLab.com groups, projects, or users.

Enabling feature flags can be done via ChatOps. Before you can use ChatOps, you will need to [request access](https://docs.gitlab.com/ee/development/chatops_on_gitlabcom.html#requesting-access).

## Process

Once the request has been received via a support ticket:

1. If the feature flag issue does not already say it can be enabled for customers, comment on the feature flag issue to confirm that the product and development teams are comfortable with Support turning on the feature flag for customers.
1. Add the customer's Account Owner/Customer Success Manager found in ZendDesk as a CC on the ticket so that they are aware of the request.
1. Run the appropriate [ChatOps command](#chatops) to enable it.
1. Once enabled, add an internal comment with:

- A screenshot of the chatops response on the feature flag issue. This should include the group, project, or user that the feature flag is scoped to.
- The relevant zendesk ticket.

## ChatOps

To enable a feature flag using ChatOps, follow [the process](https://docs.gitlab.com/ee/development/feature_flags/controls.html#process) described in the Feature Flags documentation.

Typically you will want to set the Feature Flag by actor and run one of the following in the #production Slack channel. Be sure to replace the placeholders.

- For project-actor: `/chatops run feature set --project=<path/to/project_1,path/to/project_2> feature_flag_to_be_enabled true`
- For group-actor: `/chatops run feature set --group=<group_namespace> feature_flag_to_be_enabled true`
- For user-actor: `/chatops run feature set --user=<username> feature_flag_to_be_enabled true`

If you are unsure how it should be applied, reach out to the appropriate owner or team on the Feature Flag issue. You can also test against your own group, project, or user but should ensure to disable the feature flag once you are done testing.
