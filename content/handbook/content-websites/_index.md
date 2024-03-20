---
title: "Content Websites"
---

## Overview

This area has traditionally been referred to as *"the handbook"*, but over time has grown in scope to include multiple sites, projects, repos, and types of content.

Therefore, we are using the term "content websites" here to avoid ambiguity and properly frame discussions around this scope of responsibility.

See our [direction page](/handbook/content-websites/direction/) for more.

If you need help, please see the [editing handbook section](../editing-handbook/_index.md#need-help), or [escalation information](../about/on-call.md) if it's urgent.

## Team Structure

The maintainer of this page (as indicated in the sidebar) is considered the [DRI](/handbook/people-group/directly-responsible-individuals/) for GitLab's "content websites". At present, the roles and responsibilities are as follows:

| Role | Owner | Current Individual(s) | Responsibilities
| ------ | ------ | ------ | ------ |
| Issue triager | Office of the CEO | Cynthia (Arty) Ng | Triage and prioritize issues, Schedule work in consultation with Technical DRI |
| Technical DRI | Incubation (Engineering) | Marshall Cottrell | Development work as needed, Code reviews/approvals |
| Content DRI | Office of the CEO | Stella Treas, Cynthia (Arty) Ng | Make decisions on handbook operations, Coordinate any major changes |
| Keep pipeline green | Group of volunteers  | See [Escalation page](on-call.md#keep-main-green-group) | Help fix the pipeline if jobs are failing as needed  |
| Code Maintainer | Group of volunteers | Technical DRI, plus [`@gitlab-com/content-sites/handbook-backend`](https://gitlab.com/gitlab-com/content-sites/handbook-backend/-/project_members?with_inherited_permissions=exclude) | Code reviews, escalation point for "Keep pipeline green" group, and as time allows, development work |

This page further documents the scope and responsibilities of the DRI and their engineering reports.

## What are the content websites?

1. The public [`handbook.gitlab.com`](/) website:
    1. While often referred to as "the handbook", this website also serves a wide variety of other content including the [job families](/job-families), and the [teamops](/teamops) pages.
    1. `handbook.gitlab.com` is primarily backed by the [`gitlab-com/content-sites/handbook`](https://gitlab.com/gitlab-com/content-sites/handbook/)  project and repo.
    1. Data (yml) files currently resides in the [`gitlab-com/www-gitlab-com`](https://gitlab.com/gitlab-com/www-gitlab-com) repository.
1. The ["Internal Handbook" at `internal-handbook.gitlab.io`](https://internal-handbook.gitlab.io/):
    1. This website contains content that falls into the [not public](/handbook/communication/confidentiality-levels/#not-public) category. More details are available in [the Internal Handbook usage page](/handbook/handbook-usage#the-internal-handbook)
    1. The Internal Handbook is backed by the [`gitlab-com/content-sites/internal-handbook`](https://gitlab.com/gitlab-com/content-sites/internal-handbook) project and repo.
1. The theme for the handbook sites is in the [`gitlab-com/content-sites/docsy-gitlab`](https://gitlab.com/gitlab-com/content-sites/docsy-gitlab) project.

### What are NOT content websites?

1. The [`about.gitlab.com`](https://about.gitlab.com) marketing website.
1. The [`gitlab.com`](https://gitlab.com) site.
1. The [`docs.gitlab.com`](https://docs.gitlab.com) product documentation site.
1. Any other GitLab-managed or GitLab-owned website other than what is described above.
