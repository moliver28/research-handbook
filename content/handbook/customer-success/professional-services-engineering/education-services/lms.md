---
title: "Thought Industries LMS Tech Stack Guide"
description: "Tech Stack Guide for Thought Industries Learning Management System"
---

## Thought Industries LMS Tech Stack Guide

The Tech Stack single source of truth is the [Tech Stack YAML](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml) and contains more detail about this app.

{{% tech-stack "Thought Industries LMS" %}}

### Implementation

The LMS implementation for Professional Services is [organized into multiple phases](https://gitlab.com/groups/gitlab-com/business-technology/enterprise-apps/-/epics/390#project-scope).

### System Diagram

The Thought Industries LMS Implementation is a SaaS app and is not integrated with other GitLab systems.

```mermaid
graph TD
GC[GitLab Customer] -->|user authentication| LMS[LMS]
```

### Data Model

The Data Model is not available and LMS is a closed system.

### Integrations

The Thought Industries LMS Implementation is a stand-alone SaaS app and is not integrated with other GitLab apps.

### Key Reports / Dashboards

All Dashboards and Reports are a part of LMS itself. No separate Sisense reports are available or planned.
