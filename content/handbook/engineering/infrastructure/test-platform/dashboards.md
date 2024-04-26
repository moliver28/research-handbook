---
title: "Test Platform Dashboards"
description: "This handbook page serves as a central repository for all our Test Platform dashboard details"
---

> In pursuit of a resilient, efficient, and fortified platform, our Test Platform sub-department provides instrumental support through the creation and maintenance of an array of dashboards. These critical tools capture detailed test health across the environments, flag performance anomalies, and contribute to rigorous test infrastructure. 

## Dashboards

| Category                | Link                                 | Description                                                   | DRI              |
|-------------------------|--------------------------------------|---------------------------------------------------------------|------------------|
| Test Health             | [TBD](#)                             | Comprehensive overview of test suite health and status.       | [Test Engineering](test-engineering-team)       |
| Test Tooling            | [E2E Test Execution Time](https://10az.online.tableau.com/#/site/gitlab/views/E2ETestRuntimes_17111139395120/E2Etestruntimemetrics/58847ec0-78b4-4d7c-aa30-e1db9fe87e22/aac170e4-8270-4cf7-89b3-4b9a7d32e10d) | Metrics and trends on end-to-end test execution times.        | [Test and Tools Infrastructure](test-and-tools-infrastructure-team)      |
|                         | [Test Flakiness (E2E Test)](https://dashboards.quality.gitlab.net/d/tR_SmBDVk/main-runs?orgId=1&refresh=5m) | Analysis of flakiness in end-to-end tests with real-time data. |        [Test and Tools Infrastructure](test-and-tools-infrastructure-team)         |
|                         | [Test Flakiness (Feature & Unit Test)](https://10az.online.tableau.com/#/site/gitlab/workbooks/2283052/views) | Statistics on flakiness in feature and unit tests.            |    [Engineering Productivity](../engineering-productivity)             |
|                         | [Test Economy](https://10az.online.tableau.com/#/site/gitlab/views/DRAFTTestEconomyMetrics/TestEconomyMetricsDashboard?:iid=3) | Insights into the cost-effectiveness of testing processes.    | [Test and Tools Infrastructure](test-and-tools-infrastructure-team)                |
|                         | [Test Infra Availability (E2E Test)](https://dashboards.gitlab.net/d/ci-runners-incident-runner-manager/ci-runners3a-incident-support3a-runner-manager?orgId=1&var-PROMETHEUS_DS=PA258B30F88C30650&var-environment=gprd&var-stage=main&var-type=qa-runners&var-shard=All&var-runner_manager=All&var-project_jobs_running=All&var-runner_job_failure_reason=All&from=1713952860000&to=1713963719999&viewPanel=11) | Dashboard indicating the current availability of E2E test infrastructure. |      [Test and Tools Infrastructure](test-and-tools-infrastructure-team)            |
| Test Contribution       | [Developer Contribution To E2E Tests](https://10az.online.tableau.com/#/site/gitlab/views/TestPlatformDeveloperContributionDashboard/TestPlatformDeveloperContributionDashboard?:iid=2) | Tracking developer engagement and contributions to E2E tests. | [Test Engineering](test-engineering-team) <br> [Test and Tools Infrastructure](test-and-tools-infrastructure-team)  |
| Performance Testing     | [TBD](#)                             | Real-time and historical performance testing results.         | [Self-Managed Platform](self-managed-platform-team)   |
| Bug Tracking            | [Customer Bugs](https://10az.online.tableau.com/#/site/gitlab/views/OpenBugAgeOBA/CustomerBugsDashboard?:iid=1) | Dynamic tracking of Customer bugs            | [Test Engineering](test-engineering-team) |
|                         | [Bug Prioritization](https://10az.online.tableau.com/#/site/gitlab/views/OpenBugAgeOBA/BugPrioritizationDashboard?:iid=1) | Bug prioritization based on burndown trends | [Test Engineering](test-engineering-team) |


## Contributing to the Dashboards

If you have any questions or suggestions about the dashboard, please contact the respective DRI or submit an issue in our [tracking system](https://gitlab.com/gitlab-org/quality/quality-engineering/team-tasks/-/issues/new).
