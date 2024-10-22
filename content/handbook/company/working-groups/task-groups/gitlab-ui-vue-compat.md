---
title: "GitLab UI @vue/compat Compatibility Task Group"
description: "Learn more about the GitLab UI @vue/compat Compatibility Task Group's attributes, goals, roles and responsibilities."
---

## Attributes

| Property        | Value                                                                                                                                   |
| --------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| Date Created    | 2024-10-14                                                                                                                              |
| Target End Date | 2024-12-24                                                                                                                              |
| Slack           | [#tg_gitlab_ui_vue_compat](https://gitlab.enterprise.slack.com/archives/C07RN4H2CLV) (only accessible from within the company)          |

## Context

The scope of work to migrate everything in GitLab to Vue 3 is huge. As a result, the Vue 3 Working Group has [disbanded](https://gitlab.com/gitlab-com/content-sites/handbook/-/merge_requests/9156), in favour of more focussed task groups, like this one.

Since the GitLab UI library is used by various projects (GitLab, Switchboard, Editor Extensions), it is a major blocker for Vue 3 adoption. While a lot of work has already been done to make GitLab UI work with @vue/compat, much remains.

## Goals

- All components and directives of GitLab UI should be usable under @vue/compat.

## Non-goals

- We are *not* going to bring any components or directives closer to `MODE: 3` compatibility, since it doesn't block adoption of @vue/compat.

## Exit Criteria

- All [known issues](https://gitlab.com/groups/gitlab-org/-/epics/12386) with @vue/compat fixed, or work-arounds documented.
- All screenshot tests passing under @vue/compat

## Roles and Responsibilities

| Task Group Role | Person       | Title                                               |
| --------------- | ------------ | ----------------------------------------------------|
| DRI             | Mark Florian | Staff Frontend Engineer, Foundations::Design System |
