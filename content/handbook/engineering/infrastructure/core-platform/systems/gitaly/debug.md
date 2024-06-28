---
title: "Debugging the Gitaly service"
---

## About this document

This document is intended for **Gitaly engineers**, to become familiar with GitLab's production layout and gain the ability to effectively debug production problems. While the focus is on SaaS, many of the skills transfer also to debugging self-managed instances.

## Generic GitLab background

Skim / read the following, focusing on an overview then on Gitaly:

- [Production Architecture](../../../infrastructure/production/architecture/)
- [Monitoring](../../../../engineering/monitoring/#monitoring)

Other useful links:

- [Product sections, stages, groups, and categories](../../../../../product/categories/)
- [Features by Group](../../../../../product/categories/features/)

### Gitaly specific background

- Familiarize yourself with Gitaly's [README](https://gitlab.com/gitlab-org/gitaly/-/blob/master/README.md?ref_type=heads)
- Take a look at [SRE's runbooks](https://gitlab.com/gitlab-com/runbooks/-/tree/master/docs/gitaly)

### Gitaly in Production

Both `gitlab.com` and Dedicated use Gitaly in "sharded" mode, that is, without Praefect (Gitaly Cluster).

#### Monitoring dashboards

TBD

#### Debugging and performance testing tools

TBD

#### Log analysis

TBD

#### Capacity management

TBD
