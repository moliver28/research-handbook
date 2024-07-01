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

Grafana Gitaly Overview Dashboards

- [gstg](https://dashboards.gitlab.net/d/gitaly-main/gitaly3a-overview?orgId=1&var-PROMETHEUS_DS=PA258B30F88C30650&var-environment=gstg&var-stage=main)
- [gprd](https://dashboards.gitlab.net/d/gitaly-main/gitaly3a-overview?orgId=1&var-PROMETHEUS_DS=PA258B30F88C30650&var-environment=gprd&var-stage=main)

#### Debugging and performance testing tools

- [gprcurl](https://github.com/fullstorydev/grpcurl): `curl` like tool but for gPRC
- [grpcui](https://github.com/fullstorydev/grpcui): lightweight `postman` like tool for gPRC
- [hyperfine](https://github.com/sharkdp/hyperfine): a performance tool that can benchmarks over time
  - hyperfine can be used together with grpcurl to check the response time of a gPRC call

#### Log analysis

Kibana (Elastic) Dashboards

- [gstg](https://nonprod-log.gitlab.net/app/r/s/J0jWx)
- [gprd](https://log.gprd.gitlab.net/app/r/s/XuXAI)

#### Capacity management

TBD
