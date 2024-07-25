---
title: Pipeline Execution Group - Risk Map
---

## Overview

The goal of this page is to create, share and iterate on the Risk Map for the Pipeline Execution group.

### Goals

Utilise the Risk Map as a tool to:

- Understand the risks the team faces
- Increase transparency on mitigation plans
- Effectively allocate limited resources
- Collaborate strategically in improving Quality

### General Risk Map

#### Map key

- Impact - what happens if the risk is not mitigated or eliminated
- Impact level - Rate 1 (LOW) to 5 (HIGH)
- Probability - Rate 1 (LOW) to 5 (HIGH)
- Priority - Impact x Probability. Address highest score first.
- Mitigation - what could be done to lower the impact or probability

| Risk Area | Risk Description | Impact | Impact level (1 LOW  to 5 HIGH) | Probability (1 LOW to 5 HIGH) | Priority | Mitigation |
| --- | --- | --- | --- | --- | --- | --- |
| Team/Capacity | We have 6 BE engineers and 2 FE engineers on Pipeline Execution and have a large (and growing) backlog | Burn out, missed SLO/SLA, lowers team productivity | 5 | 3 | 15 |[Make BE headcount more available](https://gitlab.com/gitlab-com/Product/-/issues/2178) |
| Team/Capacity | Unpredictable throughput | Low Say/Do, Missed SLO/SLA |  |  |  |  |
| Team/Capacity | We no longer have a stable counterpart for UX| Risk to usability and increase SUS bugs. Potential burn out for EM/PM who take over the responsibilities. | 5 | 3 | 12 | Consider scaling other counterparts if the size of the engineering team grows |
| Team/Capacity | We have a shared (30%) stable counterpart for SET | Escape regession bugs | 4 | 4 | 16 |  |
| Team/Escalations | Escalations like Rapid Actions, Engineering Allocations are disrupting the ability to focus on team priorities | Burn out, low level of autonomy, lowers team productivity | 5 | 4 | 20 | Find ways to proactively mitigate urgent issues with gitlab.com, work on GraphQL to unblock FE, find a dedicated SRE for CI |
| Product/Backlog | Bug and Technical Debt backlog has been accruing over the years | missed SLO/SLA, prioritzation is harder | 5 | 3 | 15 | Revisit ownership of domains to better share the gaps |
| Infrastructure availability | [Pipelines get stuck due to stuck sidekiq shard](https://gitlab.com/gitlab-org/gitlab/-/issues/328055) | Mass failure in E2E test suites and/or customer usage impacted | 4 | 3 | 12 |  |
| Quality/Testability | Hard to replicate production traffic to account for performance testing |  | 4 | 4 | 16 |  |
| Quality/Test coverage | This is a mature product, there are many features and feature sets have yet to have test coverages (historical test gaps) | Escape regession bugs | 4 | 4 | 16 |  |
| Product/Cost | CI pipeline inefficiencies | CI Minute usage that could potentially be avoided | 5 | 5 | 25 | Develop features to optimize pipeline runtime |
| Feature/Performance | Unperformant database queries | Adding load to gitlab.com database, slow page and feature load times | 3 | 3 | 9 | Recent rapid actions has helped, and there's continual effort to address this to ensure we don't regress |
| Team/Efficiency | Migrating more REST to GraphQL to help unblock FE | FE productivity and delivery | 5 | 3 | 15 |  |
| Feature/Dependencies | Depends on runner response and processing time<br>- https://gitlab.com/gitlab-org/gitlab/-/issues/326113 <br>- https://gitlab.com/gitlab-com/gl-infra/production/-/issues/3631  | If runners fail to process, jobs are not executed, pipeline is stuck | 5 | 3 | 15 |  |
| Infrastructure availability | CI/CD Data model scaling | CI/CD Data model scaling | 5 | 2 | 10 | Actively being worked on in CI/CD Data Model Blueprint MR  |
