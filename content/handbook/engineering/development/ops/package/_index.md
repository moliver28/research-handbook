---
title: Package Stage
---

## 🎯 Mission and Vision

The Package stage integrates with [GitLab's CI/CD product](https://about.gitlab.com/direction/ops/).

Our mission is to create a secure environment where both source code and dependencies can live by
allowing you to publish, consume, and discover packages of a large variety of languages and platforms
all in one place.

For more details about the vision for this product area, see the [product vision] page.

## Who We Are

The Package stage is made up of two groups:

1. [Package:Container Registry](/handbook/engineering/development/ops/package/container-registry/)
1. [Package:Package Registry](/handbook/engineering/development/ops/package/package-registry/)

### Package:Container Registry

{{< team-by-manager-slug manager="crystalpoole" team="Container Registry" >}}

### Package:Package Registry

{{< team-by-manager-slug manager="crystalpoole" team="Package Registry" >}}


## 📈 Measuring results

In order to better align our effort with our customer's needs we will use the following methodology to measure our results. We believe that our best measure of success and progress is our [product category maturity plan](https://about.gitlab.com/direction/maturity/#package). Progress towards these goals will be measured as follows:

1. The long term product category maturity goals will be split into each stage: [minimal, viable, complete and, loveable](https://about.gitlab.com/direction/maturity/)
1. For each category's next maturity stage, we'll break down each feature into small iterations and give them [issue weights](/handbook/engineering/development/ops/package/#issue-weighting)
1. These weighted issues will have the `Package:P1` label applied then be scheduled in upcoming milestones
1. We'll measure our delivery by the percentage of committed product issues that were completed within a given development phase. Our goal is 100% completion. We track this measurement with a [Say Do Ratio](/handbook/engineering/development/performance-indicators/#say-do-ratios).
1. We will resolve security vulnerabilities in a timely manner, based on severity.
1. We will reevaluate our ability to deliver on our long term goals in each iteration.

### Product maturity goals

The below epics detail the work required to move each respective category to the next maturity level.

* [Epic with links to all current maturity targets](https://gitlab.com/groups/gitlab-org/-/epics/2972)
* [Container Registry](https://gitlab.com/groups/gitlab-org/-/epics/2899)
* [Package Registry](https://gitlab.com/groups/gitlab-org/-/epics/2891)
* [Dependency Proxy](https://gitlab.com/groups/gitlab-org/-/epics/2920)

### OKRs

We use quarterly Objectives and Key Results as a tool to help us plan and measure how to achieve Key Performance Indicators (KPIs).

Here is the [standard, company-wide process for OKRs](/handbook/company/okrs/)

<iframe src="https://app.ally.io/public/e4b5sDXtc8Ru0zm" class="dashboard-embed" height="800" width="100%" style="border:none;"> </iframe>

### Performance indicators

We measure the value we contribute by using [performance indicator metrics](/handbook/product/performance-indicators/). The primary metric used for the Package group is the number of monthly active users or GMAU. For more details, please check out the [Ops section's performance indicators](/handbook/product/performance-indicators/).


### Dashboards

We monitor our features using different dashboards. It is recommended to check them weekly.

These dashboards are all internal and can be only accessed by GitLab Team members.

- [Package Registry Dashboard](https://dashboards.gitlab.net/d/stage-groups-package_registry/stage-groups-package-registry-group-dashboard) (Grafana)
- [Container Registry Dashboard](https://dashboards.gitlab.net/d/stage-groups-container_registry/stage-groups-container-registry-group-dashboard?orgId=1 (Grafana)
- [Package Registry Error Budgets (7 days)](https://dashboards.gitlab.net/d/stage-groups-detail-package_registry/stage-groups-package-registry-group-error-budget-detail?from=now-7d&to=now&orgId=1) (Grafana)
- [Container Registry Error Budgets (7 days)](https://dashboards.gitlab.net/d/stage-groups-detail-container_registry/stage-groups-container-registry-group-error-budget-detail?from=now-7d&to=now&orgId=1) (Grafana)
- [Container Registry](https://log.gprd.gitlab.net/goto/e7b62a23a5a9cdc88aa1de3cdb392758) (Kibana)
- [Container Registry garbage collection details](https://dashboards.gitlab.net/d/registry-gc/registry-garbage-collection-detail?orgId=1&from=now-30d&to=now&var-PROMETHEUS_DS=Global&var-environment=pre&var-cluster=pre-gitlab-gke&var-stage=main&var-namespace=gitlab&var-Deployment=gitlab-registry) (Grafana)
- [Cleanup policies for Container Images](https://log.gprd.gitlab.net/goto/b03da1dcaf2ac281994f72687347f40a) (Kibana)
- [Dependency Proxy](https://log.gprd.gitlab.net/goto/3d363d13eaf8133a4216149e335ab1b9) (Kibana)
- [Package: Costs](https://10az.online.tableau.com/#/site/gitlab/workbooks/2269240/views) (Tableau)

### Error Budget

[Error Budgets](/handbook/engineering/error-budgets/) for stage groups have been established in order to help groups identify and prioritize issues that are impacting customers and infrastructure performance. The [Error Budget dashboard](https://dashboards.gitlab.net/d/stage-groups-package/stage-groups-group-dashboard-package-package?orgId=1) is used to identify issues that are contributing to the Package group's error budget spend.

The [Package::Package error budget peformance indicator](/handbook/product/performance-indicators/#packagepackage---error-budget-for-gitlabcom) is tracked and updated weekly.

The engineering manager will review the error budget dashboard weekly to determine whether we're exceeding our budget, determine what (if anything) is contributing to our error budget spend, and create issues addressing root cause for product manager prioritization. Issues created to address error budget spend should be created using appropriate labels as well as the label `Error Budget Improvement` in order to facilitate tracking and measurement.

### Usage Funnels

We expect to track the journey of users through the following funnel.

[![](https://mermaid.ink/img/eyJjb2RlIjoiY2xhc3NEaWFncmFtXG4gIEFjcXVpc3Rpb24gLS18PiBBY3RpdmF0aW9uXG5cdEFjcXVpc3Rpb24gOiBBcmUgdXNlcnMgYXdhcmUgb2YgdGhlIHByb2R1Y3Qgb3IgZmVhdHVyZSBzZXQ_ICAgIFxuXHRBY3F1aXN0aW9uOiBNZWFzdXJlbWVudCAoVG90YWwgIyBvZiBwcm9qZWN0cyB3aXRoIGF0IGxlYXN0IG9uZSBwYWNrYWdlIGluIHRoZSByZWdpc3RyeSkgXG4gIEFjdGl2YXRpb24gLS18PiBSZXRlbnRpb25cblx0QWN0aXZhdGlvbiA6IEFyZSB1c2VycyBhcHBseWluZyB0aGUgZmVhdHVyZT9cblx0QWN0aXZhdGlvbjogTWVhc3VyZW1lbnQgKCMgb2YgdXNlcnMgcHVibGlzaGluZyBhbmQgaW5zdGFsbGluZyBwYWNrYWdlcyBwZXIgZGF5KSBcdFx0XHRcdFxuICBSZXRlbnRpb24gLS18PiBSZXZlbnVlXG5cdFJldGVudGlvbiA6IEFyZSB1c2VycyBhcHBseWluZyB0aGUgZmVhdHVyZSBvdmVyIHRpbWU_XG5cdFJldGVudGlvbjogTWVhc3VyZW1lbnQgKCMgb2YgcHJvamVjdHMgdGhhdCBoYXZlIHB1Ymxpc2hlZC9pbnN0YWxsZWQgYSBwYWNrYWdlIHZpYSBDSS9DRCBwZXIgZGF5KSBcbiAgUmV2ZW51ZSAtLXw-IFJlZmVycmFsXG5cdFJldmVudWUgOiBBcmUgdXNlcnMgcGF5aW5nIGZvciB0aGUgZmVhdHVyZXM_XG5cdFJldmVudWU6IE1lYXN1cmVtZW50ICgjIHVzZXJzIHB1bGxpbmcgcGFja2FnZXMgdGhyb3VnaCBhIERlcGVuZGVuY3kgUHJveHkpIFxuICBSZWZlcnJhbCAtLXw-IEFjcXVpc3Rpb25cblx0UmVmZXJyYWwgOiBBcmUgdXNlcnMgZW5jb3VyYWdpbmcgb3RoZXJzIHRvIHVzZSB0aGUgZmVhdHVyZT9cblx0UmVmZXJyYWw6IE1lYXN1cmVtZW50ICgjIHByb2plY3RzIHRoYXQgcHVibGlzaCBtb3JlIHRoYW4gMTAgcGFja2FnZXMgcGVyIHdlZWsuKSIsIm1lcm1haWQiOnsidGhlbWUiOiJkZWZhdWx0IiwidGhlbWVWYXJpYWJsZXMiOnsiYmFja2dyb3VuZCI6IndoaXRlIiwicHJpbWFyeUNvbG9yIjoiI0VDRUNGRiIsInNlY29uZGFyeUNvbG9yIjoiI2ZmZmZkZSIsInRlcnRpYXJ5Q29sb3IiOiJoc2woODAsIDEwMCUsIDk2LjI3NDUwOTgwMzklKSIsInByaW1hcnlCb3JkZXJDb2xvciI6ImhzbCgyNDAsIDYwJSwgODYuMjc0NTA5ODAzOSUpIiwic2Vjb25kYXJ5Qm9yZGVyQ29sb3IiOiJoc2woNjAsIDYwJSwgODMuNTI5NDExNzY0NyUpIiwidGVydGlhcnlCb3JkZXJDb2xvciI6ImhzbCg4MCwgNjAlLCA4Ni4yNzQ1MDk4MDM5JSkiLCJwcmltYXJ5VGV4dENvbG9yIjoiIzEzMTMwMCIsInNlY29uZGFyeVRleHRDb2xvciI6IiMwMDAwMjEiLCJ0ZXJ0aWFyeVRleHRDb2xvciI6InJnYig5LjUwMDAwMDAwMDEsIDkuNTAwMDAwMDAwMSwgOS41MDAwMDAwMDAxKSIsImxpbmVDb2xvciI6IiMzMzMzMzMiLCJ0ZXh0Q29sb3IiOiIjMzMzIiwibWFpbkJrZyI6IiNFQ0VDRkYiLCJzZWNvbmRCa2ciOiIjZmZmZmRlIiwiYm9yZGVyMSI6IiM5MzcwREIiLCJib3JkZXIyIjoiI2FhYWEzMyIsImFycm93aGVhZENvbG9yIjoiIzMzMzMzMyIsImZvbnRGYW1pbHkiOiJcInRyZWJ1Y2hldCBtc1wiLCB2ZXJkYW5hLCBhcmlhbCIsImZvbnRTaXplIjoiMTZweCIsImxhYmVsQmFja2dyb3VuZCI6IiNlOGU4ZTgiLCJub2RlQmtnIjoiI0VDRUNGRiIsIm5vZGVCb3JkZXIiOiIjOTM3MERCIiwiY2x1c3RlckJrZyI6IiNmZmZmZGUiLCJjbHVzdGVyQm9yZGVyIjoiI2FhYWEzMyIsImRlZmF1bHRMaW5rQ29sb3IiOiIjMzMzMzMzIiwidGl0bGVDb2xvciI6IiMzMzMiLCJlZGdlTGFiZWxCYWNrZ3JvdW5kIjoiI2U4ZThlOCIsImFjdG9yQm9yZGVyIjoiaHNsKDI1OS42MjYxNjgyMjQzLCA1OS43NzY1MzYzMTI4JSwgODcuOTAxOTYwNzg0MyUpIiwiYWN0b3JCa2ciOiIjRUNFQ0ZGIiwiYWN0b3JUZXh0Q29sb3IiOiJibGFjayIsImFjdG9yTGluZUNvbG9yIjoiZ3JleSIsInNpZ25hbENvbG9yIjoiIzMzMyIsInNpZ25hbFRleHRDb2xvciI6IiMzMzMiLCJsYWJlbEJveEJrZ0NvbG9yIjoiI0VDRUNGRiIsImxhYmVsQm94Qm9yZGVyQ29sb3IiOiJoc2woMjU5LjYyNjE2ODIyNDMsIDU5Ljc3NjUzNjMxMjglLCA4Ny45MDE5NjA3ODQzJSkiLCJsYWJlbFRleHRDb2xvciI6ImJsYWNrIiwibG9vcFRleHRDb2xvciI6ImJsYWNrIiwibm90ZUJvcmRlckNvbG9yIjoiI2FhYWEzMyIsIm5vdGVCa2dDb2xvciI6IiNmZmY1YWQiLCJub3RlVGV4dENvbG9yIjoiYmxhY2siLCJhY3RpdmF0aW9uQm9yZGVyQ29sb3IiOiIjNjY2IiwiYWN0aXZhdGlvbkJrZ0NvbG9yIjoiI2Y0ZjRmNCIsInNlcXVlbmNlTnVtYmVyQ29sb3IiOiJ3aGl0ZSIsInNlY3Rpb25Ca2dDb2xvciI6InJnYmEoMTAyLCAxMDIsIDI1NSwgMC40OSkiLCJhbHRTZWN0aW9uQmtnQ29sb3IiOiJ3aGl0ZSIsInNlY3Rpb25Ca2dDb2xvcjIiOiIjZmZmNDAwIiwidGFza0JvcmRlckNvbG9yIjoiIzUzNGZiYyIsInRhc2tCa2dDb2xvciI6IiM4YTkwZGQiLCJ0YXNrVGV4dExpZ2h0Q29sb3IiOiJ3aGl0ZSIsInRhc2tUZXh0Q29sb3IiOiJ3aGl0ZSIsInRhc2tUZXh0RGFya0NvbG9yIjoiYmxhY2siLCJ0YXNrVGV4dE91dHNpZGVDb2xvciI6ImJsYWNrIiwidGFza1RleHRDbGlja2FibGVDb2xvciI6IiMwMDMxNjMiLCJhY3RpdmVUYXNrQm9yZGVyQ29sb3IiOiIjNTM0ZmJjIiwiYWN0aXZlVGFza0JrZ0NvbG9yIjoiI2JmYzdmZiIsImdyaWRDb2xvciI6ImxpZ2h0Z3JleSIsImRvbmVUYXNrQmtnQ29sb3IiOiJsaWdodGdyZXkiLCJkb25lVGFza0JvcmRlckNvbG9yIjoiZ3JleSIsImNyaXRCb3JkZXJDb2xvciI6IiNmZjg4ODgiLCJjcml0QmtnQ29sb3IiOiJyZWQiLCJ0b2RheUxpbmVDb2xvciI6InJlZCIsImxhYmVsQ29sb3IiOiJibGFjayIsImVycm9yQmtnQ29sb3IiOiIjNTUyMjIyIiwiZXJyb3JUZXh0Q29sb3IiOiIjNTUyMjIyIiwiY2xhc3NUZXh0IjoiIzEzMTMwMCIsImZpbGxUeXBlMCI6IiNFQ0VDRkYiLCJmaWxsVHlwZTEiOiIjZmZmZmRlIiwiZmlsbFR5cGUyIjoiaHNsKDMwNCwgMTAwJSwgOTYuMjc0NTA5ODAzOSUpIiwiZmlsbFR5cGUzIjoiaHNsKDEyNCwgMTAwJSwgOTMuNTI5NDExNzY0NyUpIiwiZmlsbFR5cGU0IjoiaHNsKDE3NiwgMTAwJSwgOTYuMjc0NTA5ODAzOSUpIiwiZmlsbFR5cGU1IjoiaHNsKC00LCAxMDAlLCA5My41Mjk0MTE3NjQ3JSkiLCJmaWxsVHlwZTYiOiJoc2woOCwgMTAwJSwgOTYuMjc0NTA5ODAzOSUpIiwiZmlsbFR5cGU3IjoiaHNsKDE4OCwgMTAwJSwgOTMuNTI5NDExNzY0NyUpIn19LCJ1cGRhdGVFZGl0b3IiOmZhbHNlfQ)](https://mermaid-js.github.io/mermaid-live-editor/#/edit/eyJjb2RlIjoiY2xhc3NEaWFncmFtXG4gIEFjcXVpc3Rpb24gLS18PiBBY3RpdmF0aW9uXG5cdEFjcXVpc3Rpb24gOiBBcmUgdXNlcnMgYXdhcmUgb2YgdGhlIHByb2R1Y3Qgb3IgZmVhdHVyZSBzZXQ_ICAgIFxuXHRBY3F1aXN0aW9uOiBNZWFzdXJlbWVudCAoVG90YWwgIyBvZiBwcm9qZWN0cyB3aXRoIGF0IGxlYXN0IG9uZSBwYWNrYWdlIGluIHRoZSByZWdpc3RyeSkgXG4gIEFjdGl2YXRpb24gLS18PiBSZXRlbnRpb25cblx0QWN0aXZhdGlvbiA6IEFyZSB1c2VycyBhcHBseWluZyB0aGUgZmVhdHVyZT9cblx0QWN0aXZhdGlvbjogTWVhc3VyZW1lbnQgKCMgb2YgdXNlcnMgcHVibGlzaGluZyBhbmQgaW5zdGFsbGluZyBwYWNrYWdlcyBwZXIgZGF5KSBcdFx0XHRcdFxuICBSZXRlbnRpb24gLS18PiBSZXZlbnVlXG5cdFJldGVudGlvbiA6IEFyZSB1c2VycyBhcHBseWluZyB0aGUgZmVhdHVyZSBvdmVyIHRpbWU_XG5cdFJldGVudGlvbjogTWVhc3VyZW1lbnQgKCMgb2YgcHJvamVjdHMgdGhhdCBoYXZlIHB1Ymxpc2hlZC9pbnN0YWxsZWQgYSBwYWNrYWdlIHZpYSBDSS9DRCBwZXIgZGF5KSBcbiAgUmV2ZW51ZSAtLXw-IFJlZmVycmFsXG5cdFJldmVudWUgOiBBcmUgdXNlcnMgcGF5aW5nIGZvciB0aGUgZmVhdHVyZXM_XG5cdFJldmVudWU6IE1lYXN1cmVtZW50ICgjIHVzZXJzIHB1bGxpbmcgcGFja2FnZXMgdGhyb3VnaCBhIERlcGVuZGVuY3kgUHJveHkpIFxuICBSZWZlcnJhbCAtLXw-IEFjcXVpc3Rpb25cblx0UmVmZXJyYWwgOiBBcmUgdXNlcnMgZW5jb3VyYWdpbmcgb3RoZXJzIHRvIHVzZSB0aGUgZmVhdHVyZT9cblx0UmVmZXJyYWw6IE1lYXN1cmVtZW50ICgjIHByb2plY3RzIHRoYXQgcHVibGlzaCBtb3JlIHRoYW4gMTAgcGFja2FnZXMgcGVyIHdlZWsuKSIsIm1lcm1haWQiOnsidGhlbWUiOiJkZWZhdWx0IiwidGhlbWVWYXJpYWJsZXMiOnsiYmFja2dyb3VuZCI6IndoaXRlIiwicHJpbWFyeUNvbG9yIjoiI0VDRUNGRiIsInNlY29uZGFyeUNvbG9yIjoiI2ZmZmZkZSIsInRlcnRpYXJ5Q29sb3IiOiJoc2woODAsIDEwMCUsIDk2LjI3NDUwOTgwMzklKSIsInByaW1hcnlCb3JkZXJDb2xvciI6ImhzbCgyNDAsIDYwJSwgODYuMjc0NTA5ODAzOSUpIiwic2Vjb25kYXJ5Qm9yZGVyQ29sb3IiOiJoc2woNjAsIDYwJSwgODMuNTI5NDExNzY0NyUpIiwidGVydGlhcnlCb3JkZXJDb2xvciI6ImhzbCg4MCwgNjAlLCA4Ni4yNzQ1MDk4MDM5JSkiLCJwcmltYXJ5VGV4dENvbG9yIjoiIzEzMTMwMCIsInNlY29uZGFyeVRleHRDb2xvciI6IiMwMDAwMjEiLCJ0ZXJ0aWFyeVRleHRDb2xvciI6InJnYig5LjUwMDAwMDAwMDEsIDkuNTAwMDAwMDAwMSwgOS41MDAwMDAwMDAxKSIsImxpbmVDb2xvciI6IiMzMzMzMzMiLCJ0ZXh0Q29sb3IiOiIjMzMzIiwibWFpbkJrZyI6IiNFQ0VDRkYiLCJzZWNvbmRCa2ciOiIjZmZmZmRlIiwiYm9yZGVyMSI6IiM5MzcwREIiLCJib3JkZXIyIjoiI2FhYWEzMyIsImFycm93aGVhZENvbG9yIjoiIzMzMzMzMyIsImZvbnRGYW1pbHkiOiJcInRyZWJ1Y2hldCBtc1wiLCB2ZXJkYW5hLCBhcmlhbCIsImZvbnRTaXplIjoiMTZweCIsImxhYmVsQmFja2dyb3VuZCI6IiNlOGU4ZTgiLCJub2RlQmtnIjoiI0VDRUNGRiIsIm5vZGVCb3JkZXIiOiIjOTM3MERCIiwiY2x1c3RlckJrZyI6IiNmZmZmZGUiLCJjbHVzdGVyQm9yZGVyIjoiI2FhYWEzMyIsImRlZmF1bHRMaW5rQ29sb3IiOiIjMzMzMzMzIiwidGl0bGVDb2xvciI6IiMzMzMiLCJlZGdlTGFiZWxCYWNrZ3JvdW5kIjoiI2U4ZThlOCIsImFjdG9yQm9yZGVyIjoiaHNsKDI1OS42MjYxNjgyMjQzLCA1OS43NzY1MzYzMTI4JSwgODcuOTAxOTYwNzg0MyUpIiwiYWN0b3JCa2ciOiIjRUNFQ0ZGIiwiYWN0b3JUZXh0Q29sb3IiOiJibGFjayIsImFjdG9yTGluZUNvbG9yIjoiZ3JleSIsInNpZ25hbENvbG9yIjoiIzMzMyIsInNpZ25hbFRleHRDb2xvciI6IiMzMzMiLCJsYWJlbEJveEJrZ0NvbG9yIjoiI0VDRUNGRiIsImxhYmVsQm94Qm9yZGVyQ29sb3IiOiJoc2woMjU5LjYyNjE2ODIyNDMsIDU5Ljc3NjUzNjMxMjglLCA4Ny45MDE5NjA3ODQzJSkiLCJsYWJlbFRleHRDb2xvciI6ImJsYWNrIiwibG9vcFRleHRDb2xvciI6ImJsYWNrIiwibm90ZUJvcmRlckNvbG9yIjoiI2FhYWEzMyIsIm5vdGVCa2dDb2xvciI6IiNmZmY1YWQiLCJub3RlVGV4dENvbG9yIjoiYmxhY2siLCJhY3RpdmF0aW9uQm9yZGVyQ29sb3IiOiIjNjY2IiwiYWN0aXZhdGlvbkJrZ0NvbG9yIjoiI2Y0ZjRmNCIsInNlcXVlbmNlTnVtYmVyQ29sb3IiOiJ3aGl0ZSIsInNlY3Rpb25Ca2dDb2xvciI6InJnYmEoMTAyLCAxMDIsIDI1NSwgMC40OSkiLCJhbHRTZWN0aW9uQmtnQ29sb3IiOiJ3aGl0ZSIsInNlY3Rpb25Ca2dDb2xvcjIiOiIjZmZmNDAwIiwidGFza0JvcmRlckNvbG9yIjoiIzUzNGZiYyIsInRhc2tCa2dDb2xvciI6IiM4YTkwZGQiLCJ0YXNrVGV4dExpZ2h0Q29sb3IiOiJ3aGl0ZSIsInRhc2tUZXh0Q29sb3IiOiJ3aGl0ZSIsInRhc2tUZXh0RGFya0NvbG9yIjoiYmxhY2siLCJ0YXNrVGV4dE91dHNpZGVDb2xvciI6ImJsYWNrIiwidGFza1RleHRDbGlja2FibGVDb2xvciI6IiMwMDMxNjMiLCJhY3RpdmVUYXNrQm9yZGVyQ29sb3IiOiIjNTM0ZmJjIiwiYWN0aXZlVGFza0JrZ0NvbG9yIjoiI2JmYzdmZiIsImdyaWRDb2xvciI6ImxpZ2h0Z3JleSIsImRvbmVUYXNrQmtnQ29sb3IiOiJsaWdodGdyZXkiLCJkb25lVGFza0JvcmRlckNvbG9yIjoiZ3JleSIsImNyaXRCb3JkZXJDb2xvciI6IiNmZjg4ODgiLCJjcml0QmtnQ29sb3IiOiJyZWQiLCJ0b2RheUxpbmVDb2xvciI6InJlZCIsImxhYmVsQ29sb3IiOiJibGFjayIsImVycm9yQmtnQ29sb3IiOiIjNTUyMjIyIiwiZXJyb3JUZXh0Q29sb3IiOiIjNTUyMjIyIiwiY2xhc3NUZXh0IjoiIzEzMTMwMCIsImZpbGxUeXBlMCI6IiNFQ0VDRkYiLCJmaWxsVHlwZTEiOiIjZmZmZmRlIiwiZmlsbFR5cGUyIjoiaHNsKDMwNCwgMTAwJSwgOTYuMjc0NTA5ODAzOSUpIiwiZmlsbFR5cGUzIjoiaHNsKDEyNCwgMTAwJSwgOTMuNTI5NDExNzY0NyUpIiwiZmlsbFR5cGU0IjoiaHNsKDE3NiwgMTAwJSwgOTYuMjc0NTA5ODAzOSUpIiwiZmlsbFR5cGU1IjoiaHNsKC00LCAxMDAlLCA5My41Mjk0MTE3NjQ3JSkiLCJmaWxsVHlwZTYiOiJoc2woOCwgMTAwJSwgOTYuMjc0NTA5ODAzOSUpIiwiZmlsbFR5cGU3IjoiaHNsKDE4OCwgMTAwJSwgOTMuNTI5NDExNzY0NyUpIn19LCJ1cGRhdGVFZGl0b3IiOmZhbHNlfQ)

Follow along our instrumentation and measurement of Package-related metrics in [gitlab-#2289](https://gitlab.com/groups/gitlab-org/-/epics/2289).

## Understanding our users

As a team, we are committed to understanding our users needs. We believe the best way to do that is by understanding the reason they hired GitLab, and how those motivations translate into our area of the product. For that, we apply a research-driven approach to [Jobs to Be Done (JTBD)](/handbook/product/ux/jobs-to-be-done/) framework of innovation. This method aims to understand why a customer uses and buys a given solution. We apply the [job statement](/handbook/product/ux/jobs-to-be-done/#how-to-write-jtbd) to identify a list of specific, contextual user needs to fulfill their JTBD.  In addition, we regularly evaluate the overall user experience of each JTBD, with [UX Scorecards](/handbook/product/ux/ux-scorecards/), to ensure that we are meeting the needs of our users.

### JTBD

You can view and contribute to our current list of JTBD and job statements [here](/handbook/engineering/development/ops/package/jtbd/).

### Onboarding Enterprise customers

The GitLab Container and Package Registry currently handle hundreds of millions of events per week. However, when onboarding a large, enterprise customer it will be helpful for GitLab and the customer to understand their expected use case and workflows to ensure that the product scales reliably. When onboarding a new, large customer, it's helpful to follow the below steps:

1. Identify customer use cases and usage patterns;
2. Estimate the expected number of events based on the above, broken down by type and action;
3. Determine the percentage increase that the estimate above represents when looking at our current API request rate;
4. Discuss with Infrastructure and Package engineers whether the expected increase might be problematic or not.

## ⏱ How we work

### Roles and responsibilities

Our team emphasises ownership by people who have the information required. This means, for example, in the event of some discussion about UX considerations, our Product Designer will have ownership. When we're building features, the Product Manager owns the decision on whether this is a feature that meets our customer needs. Our Engineers own the technical solutions being implemented.

The process of making sure that there are issues to evaluate and break down is the responsibility of our Product Manager. It is the responsibility of the engineering team to evaluate each issue and make sure it's ready for development (using the `workflow::ready for development` label). It is the responsibility of our Product Designer to evaluate user experience and score our product maturity based on user research. This process will take some time to complete each time we achieve a new maturity stage. [MR Rate](/handbook/engineering/development/performance-indicators/#development-department-mr-rate) will be used as an objective measure of our efficiency, not of alignment with our customer's needs or our organizational goals.

### Issue boards and projects

Issues for Package group can be found in the following projects:

- [gitlab-org/gitlab](https://gitlab.com/gitlab-org/gitlab/-/issues?label_name[]=group%3A%3Apackage) - any issues for GitLab the product, this means all work and category issues.
- [gitlab-com/www-gitlab-com](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues?scope=all&state=opened&label_name[]=group%3A%3Apackage) - issues for any changes in handbook or blog
- Inside gitlab-org [package-stage/package](https://gitlab.com/gitlab-org/ci-cd/package-stage/package/-/issues) - any issues related to team organization, team styles, how we work, etc.
- [package-combined-team/team](https://gitlab.com/package-combined-team/team/-/issues) (private) - any issues that don't fit in the previous ones, and for major reasons, example, psychologically safe environment, we want to keep private to just the Package team members. Examples could be issues similar to retrospectives

To plan, visualize and organize better our work, we use the following [issue boards](https://docs.gitlab.com/ee/user/project/issue_board.html#issue-boards):

* [Package:Milestones](https://gitlab.com/groups/gitlab-org/-/boards/1196366?&label_name[]=devops%3A%3Apackage&label_name[]=group%3A%3Apackage) - Issue board showing milestone planning for current and future milestones.
* [Package:Assignments](https://gitlab.com/groups/gitlab-org/-/boards/1200765?&label_name[]=group%3A%3Apackage) - Issue board organized by assignee to give a snapshot of who is working on what.
* [Package:Cross-Group Assignments](https://gitlab.com/groups/gitlab-org/-/boards/2470946?label_name[]=package%3Across-group-dependency) - Similar to `Package:Assignments` but for [Cross-Group Dependencies](#cross-group-dependencies).
* [Package:Bugs](https://gitlab.com/groups/gitlab-org/-/boards/1200744?&label_name[]=type::bug&label_name[]=devops%3A%3Apackage) - Issue board displaying priority and severity of package related bugs.
* [Package: Validation Track](https://gitlab.com/groups/gitlab-org/-/boards/1397751?&label_name[]=group%3A%3Apackage)
* [Package:Scheduling](https://gitlab.com/groups/gitlab-org/-/boards/1382732?&label_name[]=devops%3A%3Apackage&label_name[]=group%3A%3Apackage)
* [Package:Workflow](https://gitlab.com/groups/gitlab-org/-/boards/1284221?label_name[]=group%3A%3Apackage) - Issue board broken down by workflow label to give a snapshot of the status of in-progress issues.

### Tips and Tricks

We have created a collection of Tips and Tricks for folks working with/around the Package Stage. You can view them on our [Wiki Page](https://gitlab.com/gitlab-org/ci-cd/package-stage/package/-/wikis/Packages-Tips-&-Tricks).

### Recurring meetings

| Meeting | Purpose |
| :-------- | :---- |
| Biweekly sync (rotate EMEA/APAC) | Share news and information and provide an opportunity for people on the team to escalate concerns. |
| Retrospective (weekly) | Discuss not only what went well or not but also how we did things and what we can do to improve for next week. |
| Think BIG (monthly) | Discuss the vision, product roadmap, user research, design, and delivery around the Package solution. |

### Retrospectives

The monthly Package retrospective takes place at the end of the milestone, following the process described in
the [group retrospectives handbook page](../../../management/group-retrospectives/).

#### Follow-up and action items

Often times during a retrospective (monthly or weekly), there are suggestions on how to improve a given process. However, there are times
where suggestions are lost and no action is taken. Consider the following possible action items that can be created so that the issues are eventually addressed:

- [Everything starts with a Merge Request](/handbook/communication/#start-with-a-merge-request)! No matter if it is a small or big change, in the MR, you will have the opportunity to discuss the things you are suggesting with the rest of the team. Add the label `~Retrospective follow-up` and relate the MR to the retrospective issue.
- For any other follow-up that cannot be resolved through an MR, open an issue in the [Package retrospective issue tracker](https://gitlab.com/gl-retrospectives/package/-/issues) and apply the `~follow-up` label. Assign a due-date to the next month. Link the issue back to the retrospective that prompted the action.
- Consider bringing some of the [follow-up issues](https://gitlab.com/gl-retrospectives/package/-/issues/?label_name%5B%5D=follow-up) into the weekly retrospective for discussion.
- Follow the same process for issues raised during the weekly retrospective.

#### Missed deliverables retrospectives

When issues that we commit to delivering (have the `Deliverable` label) are not delivered in the milestone we commit to, we will hold an asynchronous retrospective on the miss to determine the root cause following the [guidelines outlined in the handbook](/handbook/engineering/root-cause-analysis/). In instances of a single issue, these retrospectives may be quite brief, in scenarios where we miss a larger effort, the root cause analysis will be more detailed. These should be conducted within the first week following the determination that we'll miss the deliverable.

### Standups

#### Async Daily Standups

The purpose of the daily standup is to allow team members to have visibility into what everyone else is doing, allow a platform for asking for and offering help, and provide a starting point for some social conversations. We use [geekbot](https://geekbot.com/) integrated with Slack.

While it is encouraged to participate in the full variety of daily questions, it is completely acceptable to skip questions by entering `-`.

The Geekbot asynchronous standup will be reserved for blocking items and merge announcements (merge parrot!).

#### Async Issue Updates

The purpose of daily updates is to inspect progress and adapt upcoming planned work as necessary. In an all-remote culture, we keep the updates asynchronous and put them directly in the issues.

The async daily update communicates the progress and confidence using an issue comment and the milestone health status using the Health Status field in the issue. A daily update may be skipped if there was no progress. It's preferable to update the issue rather than the related merge requests, as those do not provide a view of the overall progress.

When communicating the health status, the options are:
- `on track` - when the issue is progressing as planned
- `needs attention` - when the issue requires attention or intervention to keep it on schedule
- `at risk` - when there is a risk the issue will not be completed according to schedule

The async update comment should include:
- what percentage complete the work is, in other words, how much work is done to put all the required MRs in review
- the confidence of the person that their estimate is correct
- notes on what was done and/or if review has started
- it could be good to include whether this is a front end or back end update if there are multiple people working on it

Example:
```
Complete: 80%
Confidence: 90%
Notes: expecting to go into review tomorrow
Concern: ~frontend
```

Include one entry for each associated MR

Example:
```
Issue status: 20% complete, 75% confident

MR statuses:
!11111 - 80% complete, 99% confident - docs update - need to add one more section
!21212 - 10% complete, 70% confident - api update - database migrations created, working on creating the rest of the functionality next
```

##### How to measure confidence?

Ask yourself, how confident am I that my % of completeness is correct?.

For things like bugs or issues with many unknowns, the confidence can help communicate the level of unknowns. For example, if you start a bug with a lot of unknowns on the first day of the milestone you might have low confidence that you understand what your level of progress is.

#### Epic weekly updates

A weekly async update should be added to epics related to quarter goals and to epics actively being worked on. The update should provide an overview of the progress across the feature. Consider adding an update if epic is blocked, if there are competing priorities, and even when not in progress, what is the confidence level to deliver by the end of the milestone/quarter. A weekly update may then be skipped until the situation changes. Anyone working on issues assigned to an epic can post weekly updates. At the beginning of the quarter, we look for a DRI for a feature, and they should be responsible for the parent epic updates.

Slackbot has been configured to send reminders to `#s_package`

The epic updates communicate a high level view of progress and status for quarterly goals using an epic comment. It does not need to have issue or MR level granularity because that is part of each issue updates.

The weekly update comment should include:
- Status: ok, so-so, bad? Is there something blocked in the general effort?
- How much of the total work is done? How much is remaining? Do we have an ETA?
- What's your confidence level on the completion percentage?
- What is next?
- Is there something that needs help/support? (tag specific individuals so they know ahead of time)

##### Examples

Some good examples of epic updates that cover the above aspects:
- https://gitlab.com/groups/gitlab-org/-/epics/8628#note_1090732793
- https://gitlab.com/groups/gitlab-org/-/epics/5152#note_1029337901

### Workflow

We generally follow the [Product Development Flow](/handbook/product-development-flow/#workflow-summary):

1. `workflow::problem validation` - needs clarity on the problem to solve. Our Product Manager owns the problem validation backlog and problem validation process as outlined in the [Product Development Workflow](/handbook/product-development-flow/).
1. `workflow::design` - needs a clear proposal (and mockups for any visual aspects).
1. `workflow::solution validation` - designs need to be evaluated by customers, and/or other GitLab team members for usability and feasibility. Our Product Designer then owns the [solution validation](/handbook/product-development-flow/#validation-phase-3-solution-validation) process. You can view all items and their current state in the [Package: Validation Track](https://gitlab.com/groups/gitlab-org/-/boards/1397751?&label_name[]=group%3A%3Apackage) issue board.
1. `workflow::refinement` - needs a weight estimate and clarification to ensure an issue is ready for development. At the end of this process, the issues will be ready for the [build track](/handbook/product-development-flow/#build-track) which is owned by the Engineers and lives in the [Package:Workflow](https://gitlab.com/groups/gitlab-org/-/boards/1284221?label_name[]=group%3A%3Apackage) issue board.
1. `workflow::ready for development`
1. `workflow::in dev`
1. `workflow::in review`
1. `workflow::verification` - code is merged and pending verification by the DRI engineer.
1. `workflow::staging` - code is in staging and has been verified.
1. `workflow::complete` - the work is in production and has been verified. The issue is closed.

The Product Manager owns the process of populating the current milestone work following the [prioritization guidelines](/handbook/product/product-processes/#prioritization). Engineers are empowered, once the planned work has been exhausted, to prioritize issues that will deliver customer value preferring smaller issues over larger ones.

Issues that we're expecting to work on in the milestone will have the `workflow::ready for development` label added to them. Once labeled, they'll appear in the [Package:Workflow board](https://gitlab.com/groups/gitlab-org/-/boards/1284221?label_name[]=group%3A%3Apackage). As engineers begin working on the issue, they'll assign the `workflow::in dev` label.

#### Milestone Planning

- Our Product Manager, Product Designer, and Engineering Manager develop a plan for upcoming milestones.
- The PM creates an issue for milestone planning that includes the goals, priorities and work for the milestone. The milestone planning issues can be found in our [Milestone Planning Epic](https://gitlab.com/groups/gitlab-org/-/epics/3591).
- Everyone can contribute and collaborate in the milestone issue to propose work, raise concerns and clarify topics.
- To identify work and their priority, issues are assigned to the milestone and labelled as `Package:P1` or `Package:P2` according to their priority. Our prioritization model can be found below in the section [Priorities](/handbook/engineering/development/ops/package/#milestone-priorities).
- Before commiting to the work for the milestone, engineers perform [refinement](/handbook/engineering/development/ops/package/#refinement) and confirm all issues are ready for development.
- We commit to the `Package:P1` work in the milestone by having an engineer add the `workflow::ready for development` label and then having the engineering manager add the `Deliverable` label. We measure our predictability and commitments with Say/Do ratios.

#### Refinement

We follow the [Product Development Flow](/handbook/product-development-flow/). After [problem](/handbook/product-development-flow/#validation-phase-2-problem-validation) and [solution validation](/handbook/product-development-flow/#build-track) are complete, the next step is refinement, where engineers break down requirements and present a high-level MVC and feasible estimated solution.

Any issues needing refinement are labeled `workflow::refinement`. This label can be added by anyone throughout the issue lifecycle.

Issues that will likely be scheduled for implementation in the current quarter must have both the quarter label (e.g. `FY23::Q3`) and `workflow::refinement`. Having both labels makes issues that will soon be refined by engineers discoverable for the product designer. The product designer ensures the issue is still relevant, the issue description is complete, and the designs are up-to-date.

The product manager will determine issues that need to be refined by the engineers in the upcoming milestone and apply the label `workflow::refinement`. The expectation is by the end of the milestone, all of those issues have been refined by the engineers and move to `workflow::ready for development`.

To drive refinement, we use a randomly assigned refinement [DRI](/handbook/people-group/directly-responsible-individuals/). The refinement DRI is not necessarily the person completing the refinement tasks, but is responsible for ensuring they are completed within the assigned milestone.

Before the milestone starts:
* The product manager determines which issues need to be refined by engineers and applies the `workflow::refinement` label
* Issues needing to be refined are listed on the [milestone planning issue](https://gitlab.com/groups/gitlab-org/-/epics/3591)

When the milestone starts:
* The product manager, engineering manager, or product designer randomly assigns refinement issues to DRIs.

Before the milestone is finished:
* The engineers refine each issue with the label `workflow::refinement` from the milestone planning issue
* When refinement is complete, each issue is moved to `workflow::ready for development`

Refinement guidelines:

- Identify and resolve outstanding questions or discussions.
    - Does the issue has a clear, updated, and confirmed design associated?
    - Does the issue contains all the data necessary to start implementation?
- Identify missing dependencies.
    - Is the issue dependent on any other issue in the milestone, or the dependency is explicitly communicated, noted in the description and the issue is linked?
    - The GraphQL API or the REST API contains all the data necessary to implement the UI?
    - The GraphQL API or the REST API implements all the necessary filters, sorting, and pagination to implement the UX?
    - The GraphQL API or the REST API contains all the necessary mutation/actions to implement the UX?
- Raise any questions, concerns, or alternative approaches.
    - Could this issue be resolved in different ways?
    - What is the biggest risk?
- Involve stable counterparts.
    - The impact on QA and Feature tests of this issue is clear and, if necessary, the SET stable counterpart is involved in reviewing them?
    - The impact on security of this issue is clear, and if necessary, a stable counterpart is involved?
- Outline an implementation plan.
    - What is the smallest thing possible to do?
    - Should we use a feature flag?
- Assign labels.
- Assign a weight to the issue according to [weighting guidelines](/handbook/engineering/development/ops/package/#issue-weighting).
- Create any follow-up issues that come out of refinement


#### Milestone Priorities

Throughout the [workflow](/handbook/engineering/development/ops/package/#workflow), issues should be addressed in the following priority order:

1. Sustaining work: Based on the [product prioritization framework](/handbook/product/product-processes/#prioritization), `bug::vulnerability`, `availability`, `infradev`, `Corrective Action`, and `ci-decomposition::phase*` issues will be at the top of our [Package:Milestones Board](https://gitlab.com/groups/gitlab-org/-/boards/1196366?label_name[]=devops%3A%3Apackage&label_name[]=group%3A%3Apackage).
1. `Package:P1` label: Used to identify high priority issues that should be committed to in a given milestone or scheduled in an upcoming milestone.
1. `Community Contribution` label: When in the milestone planning, this identifies community contributions we committed to delivering in a given milestone.
1. `Package:P2` label: Used to stretch goals for a given milestone.
1. `workflow::refinement` label: These are issues that require [weighting](#issue-weighting), feedback, and scheduling before being moved to `workflow::ready for development`.

##### Issue Weighting

| Weight | Description  |
| --- | --- |
| 1: Trivial | The problem is very well understood, no extra investigation is required, the exact solution is already known and just needs to be implemented, no surprises are expected, and no coordination with other teams or people is required.<br><br>Examples are documentation updates, simple regressions, and other bugs that have already been investigated and discussed and can be fixed with a few lines of code, or technical debt that we know exactly how to address, but just haven't found time for yet.<br><br>This will map to a confidence greater or equal to 90%. |
| 2: Small | The problem is well understood and a solution is outlined, but a little bit of extra investigation will probably still be required to realize the solution. Few surprises are expected, if any, and no coordination with other teams or people is required.<br><br>Examples are simple features, like a new API endpoint to expose existing data or functionality, or regular bugs or performance issues where some investigation has already taken place.<br><br>This will map to a confidence greater than or equal to 75%. |
| 3: Medium | Features that are well understood and relatively straightforward. A solution will be outlined, and most edge cases will be considered, but some extra investigation will be required to realize the solution. Some surprises are expected, and coordination with other teams or people may be required.<br><br>Bugs that are relatively poorly understood and may not yet have a suggested solution. Significant investigation will definitely be required, but the expectation is that once the problem is found, a solution should be relatively straightforward.<br><br>Examples are regular features, potentially with a backend and frontend component, or most bugs or performance issues.<br><br>This will map to a confidence greater than or equal to 60%. |
| **Larger: resize** | Features that are well understood, but known to be hard. A solution will be outlined, and major edge cases will be considered, but extra investigation will definitely be required to realize the solution. Many surprises are expected, and coordination with other teams or people is likely required.<br><br>Bugs that are very poorly understood, and will not have a suggested solution. Significant investigation will be required, and once the problem is found, a solution may not be straightforward.<br><br>Examples are large features with a backend and frontend component, or bugs or performance issues that have seen some initial investigation but have not yet been reproduced or otherwise "figured out".<br><br>This will map to a confidence greater than or equal to 50%. |

###### Issue size

Anything larger than 3 should be broken down. Anything with a confidence percentage lower than 50% should be investigated prior to finalising the issue weight.

Our intention is to break up issues that have a weight greater than 3, either by converting the issue to an epic with sub issues or just separating the work into related issues. An issue weight of 3 should describe something that would take **no more** than 2 weeks to complete.

When starting work on an MR that involves unfamiliar tools/libraries, be sure to update the estimated weight depending on who picks up the issue to reflect the additional time that may be spent learning. For example, a developer who has never worked with GraphQL before may need to spend some additional time learning the library versus a developer who has experience with GraphQL. If the first developer picks up the issue, they should consider raising the weight so it is reflected that it may take longer for them to deliver it.


### Refactoring

When working on an MR for a Deliverable, don't lose track of the aim: release the Deliverable in time. That doesn't mean that refactorings can't happen or that we can't take time to investigate side subjects. It means that we need to limit the time allocated for this type of work.

When considering a refactoring or a heavy refactoring, consider working [iteratively](/handbook/values/#iteration). A refactoring can be implemented and refined many times but consider releasing a good enough first version so that depending work is not delayed or blocked. For an example of how we can work iteratively, please see [how we worked through lifting the npm naming conventioon](https://gitlab.com/gitlab-org/gitlab/-/issues/33685#note_512942088).

### Bug Triaging

#### Investigation

A bug investigation is a two part process:

1. Reproduce the bug locally with the same conditions as described in bug issue.
1. Analyze the possible fix and its complexity.

At the end of this process, the engineer should be able to [weight](/handbook/engineering/development/ops/package/#issue-weighting) the issue.

The whole process can take a few minutes to several hours (or even days). The assigned engineer should timebox this process to avoid investing too much time in it, without communicating and coordinating with EM and PM, and thus hindering the milestone planning. We suggest that anything that goes above half a day should be coordinated with the team.

If a bug investigation takes more time than intended, it's better to:

- Stop the investigation.
- Post the current situation in the issue.
- Inform the Engineering Manager and the Product Manager that will plan more time for the investigation.

### Bug detection

When a bug is detected on staging, engineers should evaluate its severity will be on production. You can use kibana or other tools to evaluate the number of requests impacted. If the severity is high, [appropriate actions](/handbook/engineering/releases/#deployment-blockers) should be taken.

In particular, when the most used package registries (npm, Maven) are impacted negatively, consider the bug a higher severity. If the bug disrupts the expected behavior of those package registries, consider blocking the next production deployment with the appropriate actions above.

### Testing

To best understand how users use the GitLab package registry, when building and testing features, it is beneficial to test using projects that resemble real use-case scenarios. A Hello-World package is not going to simulate the same functionality that a large open source library or enterprise customer is going to experience. Depending on the feature that is being built, it is recommended during the development phase to test locally using a real package. Additionally, consider reviewing existing data to determine a good range of test cases. The package group has created an [ad-hoc test projects group](https://gitlab.com/gitlab-org/ci-cd/package-stage/ad-hoc-test-projects) to store larger projects that can be used to test against. This group may contain copies of open source projects or projects specifically designed to test certain aspects of the GitLab package registry. It is not meant to be a static collection of projects, so the projects may be replaced, updated, or removed as seen fit.

#### File uploads

Package's features regularly deal with file uploads. When testing these features locally using an environment like GDK, it is recommended to test changes using the default local storage configuration, but also using a cloud service for object storage. GCP is recommended when trying to best recreate the environment GitLab.com is running. For highest confidence in features working with uploads, testing using local storage, Minio, GCP, AWS S3, and Azure is recommended. The GDK docs have [instructions on how to configure for each of these providers](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/master/doc/configuration.md#object-storage-config).

#### End to End Testing

The Package team uses [GitLab QA](https://gitlab.com/gitlab-org/gitlab-qa) for End-to-End testing. We have [guidelines](/handbook/engineering/development/ops/package/quality) for how our team is leveraging these tests.

#### HackyStack

[HackyStack](https://gitlab.com/gitlab-com/business-technology/engineering/tools/hackystack) is an open source cloud infrastructure management and orchestration platform for ephemeral demo, sandbox, testing, and training environments.

The [GitLab Sandbox Cloud](/handbook/infrastructure-standards/realms/sandbox) is GitLab's deployment of HackyStack that is used by GitLab team members. See the handbook page for more details.

The Package team uses this platform to set up its epehemeral demo sandbox environment that launches an Omnibus instance with an active Container Registry and a project that can trigger multiple images/tags leveraging our CI capabilities.
Instructions on how to use it can be found [here](/handbook/engineering/development/ops/package/quality).

#### Seeding Utilities

We have two utilities we make use of when seeding Container Registries for testing purposes:
* [Container Factory](https://gitlab.com/nmezzopera/container-factory)
* [Container Registry Cloud Seeder](https://gitlab.com/gitlab-org/ci-cd/package-stage/container-registry-seeder)

### Code Review

Code reviews follow the standard process of using the [reviewer roulette](https://docs.gitlab.com/ee/development/code_review.html#reviewer-roulette) to choose a reviewer and a maintainer. The roulette is optional, so if a merge request contains changes that someone outside our group may not fully understand in depth, people are encouraged to ask for a preliminary review from members of the package group to focus on correctly solving the problem. The intent is to leave this choice to the discretion of the engineer but raise the idea that fellow package group members will sometimes be best able to understand the implications of the features we are implementing. The maintainer review will then be more focused on quality and code standards.

This tactic also creates an environment to ask for early review on a WIP merge request where the solution might be better refined through collaboration and also allows us to share knowledge across the team.

### UI or Technical Writing Review

When a merge request needs to be reviewed for the experience or for the copy in the user interface, there are a few suggestions to ensure that the review process is quick and effecient:
- When the MR has a UX or copy review, we suggest initating that part of the review process first to avoid experience changes in the middle of code reviews.
- A Product Designer will review the UX and UI text, following the [MR review guidelines](/handbook/product/ux/product-designer/mr-reviews/). If there is substantial change, the Product Designer may bring in a Technical Writer for a more thorough copy/content related review.
- If the Technical Writer is unavailable and the MR is being slowed down, it is possible to [create a follow up issue](https://docs.gitlab.com/ee/development/documentation/workflow.html#post-merge-reviews) for the copy or documentation to be reviewed post-merge. This should be avoided when possible.

### Quality

The Package team has a goal of shipping enterprise grade software with a focus on Quality. The team accomplishes this goal with the following practices:

* Following GitLab's [Culture of Quality](/handbook/engineering/quality/#culture-of-quality_) with a focus on being champions for better software design.

* Partnering with our [Software Engineer in Test](/job-families/engineering/software-engineer-in-test/) stable counterparts.

* Frequently [reviewing the code coverage](https://gitlab.com/gitlab-org/gitlab/-/issues/284185) across our functional areas (GoLang, Ruby, Frontend) and addressing low scoring areas as needed.

* Actively reviewing [Triage reports](/handbook/engineering/infrastructure/engineering-productivity/triage-operations/#triage-reports) and working with our Product Manager to prioritize bugs or regressions.

### Community Contributions

#### Picking up an issue

If a community contributor wants to pick up an issue, or create an issue and a follow up merge request for it, please ping `@gitlab-org/ci-cd/package-stage` or an individual [team member](https://gitlab.com/groups/gitlab-org/ci-cd/package-stage/-/group_members?with_inherited_permissions=exclude) on the issue itself before starting the work, this ensures that:

- The issue will not conflict with other work of the team
- The issue will have feedback and advice from a team member
- The issue is well defined enough to be used as a validation of the merge request

Additionally, the Package team can help set realistic review/merge times based on the scope of the work.

Ultimately the aim is to enable community contributor to deliver meaningful work with the least amount of back and forth and minimising the risk of stumbling on a show stopper.

#### Definition

A merge request with the following properties:
1. It impacts features or issues managed by the Package group. This means it has the `devops::package` label
2. Contributed by anyone in the wider community or at GitLab who isn't part of the Package group
3. Contributed by a team member who doesn't work in the same functional area (Frontend engineer contributing to Backend code)

#### Handling community contributions

A Package group member will adopt the community contribution with the following tasks:

* Confirm the community merge request (MR) is properly [triaged](/handbook/engineering/infrastructure/engineering-productivity/merge-request-triage/). This step includes important labeling for [work type classification](/handbook/engineering/metrics/#work-type-classification), stage and group and the `Community Contribution` label.
* If the MR addresses an open issue, ensure that the issue is still valid and the description is up to date. Consider [closing the issue](/handbook/engineering/infrastructure/engineering-productivity/issue-triage/#lean-toward-closing) and [closing the MR](https://docs.gitlab.com/ee/development/contributing/merge_request_workflow.html#merge-request-ownership) if it is outdated.
* Evaluate the review effort and assign it using `package-review-weight::x` labels.
* Consider reaching out to MR coaches or using the reviewer roulette to leverage support and provide contributors with a smoother and quicker experience.
* Assign themselves to the issue. This helps to identify a DRI for that issue in the milestone planning.
* Assign the community contributor to the issue. Note that this can only be done with quick actions `/assign @contributor`.
* Assign the current milestone to the issue. This facilitates milestone planning and tracking.
* Assign the current milestone to the merge request.
* Make sure that the issue has the proper labels including work type, categories, etc. Do not forget to apply `workflow::in dev` to signal that the issue is already in development.
* Make sure that the merge request has the proper labels. You can use `/copy_metadata` quick action to copy the labels from the issue.
* Set aside some time per week to assist and coach the community contributor.
* Make sure that the effort is reviewed by the product manager and the product designer.
* Make sure that the reviews are happening. The team member can even suggest reviewers.

#### Prioritisation
* Effort to support community contributions can range from weekly check ins to active contribution. As an organisation, GitLab values our community and the idea that everyone can contribute. As such, effort contributed to community contributions can range from simply checking in with the author to contributing actively. While this effort doesn't prevent us from delivering on our `Package:P1` issues, we should invest the time necessary to make sure the author is able to contribute.

#### Scheduling

Given the number of community contributions submitted (thank you!), the Package team will include them in [Milestone Planning issues](https://gitlab.com/groups/gitlab-org/-/epics/3591). We'll schedule time for team members to assist with the various community contributions as part of our milestone plan. You can view  guidelines for merge requests and a definition of done [here](https://docs.gitlab.com/ee/development/contributing/merge_request_workflow.html#definition-of-done).

The Package team will add review weight labels to community contributions to try to help understand the required effort and plan capacity. The intention is to help the team better plan for the support of community contributions among other priorities. We'll start with labels for weights of 1, 2, 3, and 5 similar to the weights we use for our issues. The only difference is that a `package-review-weight::5` won't be replaced with an investigation.

Other points to consider for the Package group member:
* The coaching can range from commenting/reviewing the merge request to pair programming through Zoom.
* Contributing to features managed by the Package group can mean having to use the Enterprise Edition (EE) version of GitLab. This [guideline](/handbook/marketing/developer-relations/contributor-success/community-contributors-workflows.html#contributing-to-the-gitlab-enterprise-edition-ee) will help with this aspect.
* Make sure that the merge request size and complexity stay at a reasonable level to ensure a [smooth review process](https://docs.gitlab.com/ee/development/contributing/merge_request_workflow.html#contribution-acceptance-criteria).
* If the merge request grows to an unexpected size or tries to solve too many issues at once, consider suggesting to the community contributor to split it into smaller ones and use a [feature flag](https://docs.gitlab.com/ee/development/feature_flags/) if necessary.
* If a merge request gets stalled for a long time, consider suggesting that you will finish the merge request. Check the proper section in [Merge Request Coach responsibilities](/job-families/expert/merge-request-coach/#finishing-merge-requests).
  * Do not forget to credit the community contributor.
* If some aspects of the merge request become a high priority task (for example, a bug fix) and the work from the community contributor is less active or stalled, consider suggesting that you will extract this part to a small merge request to get it implemented as quickly as possible.
  * The other aspects with less priority can still be worked out by the community contributor.

##### Deliverable issues

An issue that has the `~Deliverable` label is expected to be completed within the assigned milestone. However, if a community member wants to work on that issue, it may seem unfair to assign the issue to them and expect them to deliver the changes by a given date.
In this scenario, the team member co-assigned to the issue will be responsible for working with the community contributor to try to deliver the changes needed in time.
If at any point in time the MR is stale or the contributor is unresponsive, the team member will follow the [taking over a community merge request](https://docs.gitlab.com/ee/development/code_review.html#taking-over-a-community-merge-request) process outlined in the contributing guidelines.

If a community member acknowledges that they still want to work on a `~Deliverable` issue
in the current or next milestone, the team will discuss and decide
whether or not this will effect the ability to ship the issue in the scheduled milestone.
To prevent these situations, the best action we can take is to proactively remove the
`~Accepting contributions` label when we schedule an issue as a deliverable.

Three actions could be taken:

1. We kindly let the community contributor know that this issue needs to be
   completed by internal team members.
2. We allow the community contributor to work on the issue but let them know
   that an internal team member may need to take over the MR at some point to
   ensure it ships on time.
3. We decide it is ok for this issue to slip, allow the community contributor
   to work on the issue, and remove the `~Deliverable` label.

If a community member has been working on a previously unscheduled issue that we would
like to schedule, we should do our best to make option (2.) work. If either option (1.)
or (2.) is taken, we should ensure the community contributor receives recognition for their
work.

For issues that are not scheduled as deliverables, we may still schedule reviews
and support for the community contributor in the given milestone, but without
committing to delivering it in a specific time frame.

### Returning from PTO

It can be overwhelming to come back to work after taking time off. Remember to review the [returning from PTO](/handbook/paid-time-off/#returning-from-pto)
section of our time-off policy, especially the key points:

- It is OK to take your time to catch up. You can consider blocking your calendar to do so.
- Taking time off doesn't mean that you need to work extra hours before or after your vacation.
- It is [impossible to know everything](/handbook/values/#its-impossible-to-know-everything) (AKA some things can be ignored).
- Consider scheduling a coffee chat or sync with other team members to help ease your way back.
- Consider asking in [#s_package](https://gitlab.slack.com/archives/CAGEWDLPQ) for a summary of what happened while you were gone.

### Technical Knowledge Sharing Sessions

Team members are encouraged to organize periodic sessions where a volunteer member hosts a meeting to demonstrate, describe, or brainstorm various technical aspects. Topics may include development tools and techniques, tours of specific parts or functionalities of the GitLab applications, or discussions about problems and the thought process behind implementation decisions.

These sessions aim to facilitate the sharing of valuable insights and experiences among team members, strengthen team bonds, engage participants in thoughtful discussions, and encourage collective problem-solving.

#### Target Audience

These sessions are applicable to all development specialties (backend, frontend, Go, and Rails) across [Package:Container Registry](/handbook/engineering/development/ops/package/container-registry/) and [Package:Package Registry](/handbook/engineering/development/ops/package/package-registry/). By making these sessions visible and open to engineers across all functional areas, the goal is to boost awareness and knowledge sharing across a wider audience. Members with non-development roles are also more than welcome to attend.

#### Process

- While there is no strict frequency requirement, team members are encouraged to hold at least one session per month for the entire team.
- To ensure efficiency and engagement, each session should be timeboxed to 30 minutes.
- Any team member can volunteer to present on a topic of their choice.

When hosting a session, the team member should:

1. Create an issue under the [Technical Knowledge Sharing Sessions](https://gitlab.com/groups/gitlab-org/ci-cd/package-stage/-/epics/14) epic. The issue should provide a brief description of the topic to be presented.
2. Add an event for the session to the [Package Stage Calendar](https://calendar.google.com/calendar/u/0?cid=Y181a2JnNTIydTRuOTlsZTZqNmoxZWVqZzJhNEBncm91cC5jYWxlbmRhci5nb29nbGUuY29t), along with a link to the issue above to make other team members aware of the event.
3. Host the session and ensure it is recorded.
4. If any potentially sensitive information is mentioned or revealed during the session (such as demonstrating the debugging of a customer-reported issue), the recording should be kept private.
5. At the end of the session, add the link to the recording to the session issue and close it.
6. Any follow-up issues created out of the session should be related to the session issue for traceability and additional context.
7. If possible, make the recording publicly available and list it under [Demos & Speedruns](#demos--speedruns).

## 🤝 Collaboration

### Cross-Group Dependencies

Cross-group dependencies may exist as pre-requisites to deliver Package features or bug fixes. Issues to deliver such dependencies are owned by groups that Package depends on, such as [Delivery](/handbook/engineering/infrastructure/team/delivery/) or [Distribution](/handbook/engineering/infrastructure/core-platform/systems/distribution/).

For discoverability, issues that represent cross-group dependencies should be labeled with `package:cross-group-dependency`. If working on one of these issues, Package engineers should ensure that they are labeled correctly. For visibility, these issues are shown in the [Package:Cross-Group Assignments](https://gitlab.com/groups/gitlab-org/-/boards/2470946?label_name[]=package%3Across-group-dependency) issue board.

The product manager should include cross-group dependencies in the milestone planning issue for review, discussion and prioritization.

### Communication

We're an all-remote group, [effective](/handbook/communication/#effective--responsible-communication-guidelines) and [asynchronous communication](/handbook/company/culture/all-remote/asynchronous/) is key for success.

When requiring attention from all the team members, use any of the following options or mix them.

* Ping the team using `@package-combined-team` only once in an issue - When there will be multiple interactions and actions required. Consider this as the way to bring the issue to team members' attention. For example, when a milestone planning issue is ready for team members to review and give feedback, and multiple actions could come up later in the conversations.
* Include a checklist for each team member in the description of the issue - When there is an action required for each team member and is required to track when the action is completed. For example, in training issues.
* Assign team members to the issue - When there is an action required for each team member. The expectation is that team members will unassign themselves when they complete the action requested, for example, in retrospective or training issues.
* For announcements (FYI), we prefer to share the message on Slack. For purposes of searching and historical information, we include the announcement also in the weekly sync agenda. For example, when new Production Change Lock (PCL) dates are announced.

For any other communication tailored to only certain members, we ping them individually on issues.

### Partnering with Infrastructure

There are times during the development lifecycle that changes need to be communicated to the [Infrastructure teams](/handbook/engineering/infrastructure/#teams). For example:

- If your work will impact rate-limits as in [GitLab-#778](https://gitlab.com/gitlab-com/gl-infra/scalability/-/issues/778)
- If you are considering adjusting the existing [Package limits](https://docs.gitlab.com/ee/administration/instance_limits.html#package-registry-limits)




## Feature Category Details

* [Container Registry](/handbook/engineering/development/ops/package/container-registry)

## 🔗 Other Useful Links

* [Package backend board]
* [#s_package] in Slack
* [Recorded meetings][youtube] - This is where we post all of our team meetings and discussions.
* [Recorded user research (internal only)](https://www.youtube.com/watch?v=2A-VGtP-RJg&list=PL05JrBw4t0KoPiSySNHTfvxC20i0LppMf&index=1)
* [Monthly Retrospectives][retros]
* [Timezones][timezones]
* [Package Registry processes](/handbook/engineering/development/ops/package/product/package-registry/)
* [Package use case](/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/usecase-gtm/package/)
* [Package risk map](/handbook/engineering/development/ops/package/risk-map/)
* [Validation board](https://gitlab.com/groups/gitlab-org/-/boards/1397751?&label_name[]=group%3A%3Apackage) - This is a board with issues in workflow validation, which means, issues for which ones we are doing discovering and validation of the need, feature or solution
* [User Interviews](https://www.youtube.com/playlist?list=PL05JrBw4t0KpxCv3B5S-6LFCpBB6NCnga) - Private videos, you must be logged into the `GitLab Unfiltered` to view
* [Community office hours videos](https://www.youtube.com/playlist?list=PL05JrBw4t0KoUyDaIiCFiHYcW7q2HeNKC)
* [Community office hours epic](https://gitlab.com/groups/gitlab-org/-/epics/2957)
* [Package Registry documentation](https://docs.gitlab.com/ee/user/packages/package_registry/)
* [Container Registry documentation](https://docs.gitlab.com/ee/user/packages/container_registry/)
* [Dependency Proxy documentation](https://docs.gitlab.com/ee/user/packages/dependency_proxy/)


### Roadmap
- [Package roadmap review - March 2022](https://youtu.be/gsSWEqX4dOA)
- [Package roadmap review - January 2023](https://youtu.be/O-4kMmQBb34)

### Demos & Speedruns

#### Package Registry
- [npm registry walk through](https://youtu.be/yvLxtkvsFDA)
- [Helm Chart repository demo](https://youtu.be/B6K373-pAgw)
- [GitLab Package Registry + Usage quotas Speedrun](https://youtu.be/5FYMSl-QYg4)
- [Conan Repository Demo](https://youtu.be/7NYgJWg-w5w)
- [Remote hierarchy for the Package Registry (project vs. group vs. instance level)](https://youtu.be/lVXfMKerZnQ)
- [How to host all your packages in a single project](https://youtu.be/ui2nNBwN35c)
- [How to add and remove tags to the GitLab NPM Registry](https://www.youtube.com/watch?v=8FMZ9J9WPk0&feature=youtu.be)
- [Use GitLab metadata to verify and troubleshoot packages](https://youtu.be/Af3T_QEXrls)
- [Fetch packages from npmjs.org when the package is not available in the GitLab NPM Registry](https://youtu.be/Do-5bmgvHOU)
- [Display more robust build data in the Package Registry](https://youtu.be/mo6q7mWmlfA)
- [Publish and share Composer dependencies](https://youtu.be/e_HqOOWuRoI)
- [Package details list view](https://youtu.be/9xUvQoANA-E)
- [Delete packages from your group](https://youtu.be/B6cAtch1xSU)
- [Quickly find and view generic packages](https://youtu.be/XwMtzWf9DKw)
- [Testing the Packages API with deploy tokens](https://youtu.be/43iHv6tbOec)
- [Package Registry cleanup policies](https://youtu.be/uAWnlA7BLS4)
- [Import npm packages from Artifactory](https://www.youtube.com/watch?v=IEQmc7nqnwc)
- [Import NuGet packages from Artifactory](https://www.youtube.com/watch?v=kgUVjbudfv4)
- [Import Maven packages from Artifactory](https://www.youtube.com/watch?v=Br3TO0dMYAY)
- [Pull npm packages from your group or sub-group](https://youtu.be/-5Wm61x4Y5k)

#### Container Registry
- [Control access to the container registry](https://youtu.be/UyGEOLp_4E4)
- [How to remove Docker images using CI/CD (speedrun)](https://youtu.be/jDlFCrH9H7g)
- [Use the API to delete all tags except *](https://youtu.be/Hi19bKe_xsg)
- [How to view all of the images and tags in your group](https://youtu.be/9IxoGYnTIaI)

#### Dependency Proxy
- [Maven dependency proxy demo](https://www.youtube.com/watch?v=9NPTXObsSrE)
- [Enable TTL policies from within the UI](https://youtu.be/gX2npIF9gCY)
- [View a list of tags in the cache in the UI](https://youtu.be/uYEY75qz7Jg)
- [How to use GraphQL to set TTL policies](https://www.youtube.com/watch?v=ujzicvPt8i8)
- [Authenticate with deploy tokens when using the dependency proxy](https://youtu.be/uPNpa6BDs6A)
- [Use the GitLab Dependency Proxy to proxy and cache images from DockeHub](https://youtu.be/fNTfL55fh5c)
- [Automatically authenticate using pre-defined environment variables](https://youtu.be/8qhT55e780g)

#### Dependency Firewall
- [POC: Pipelines for packages](https://youtu.be/KCtOC8kLDRQ)

#### Nexus Repository OSS (competitor product)
- [Introduction](https://youtu.be/QOMF2EWC5B8)
- [Installation](https://youtu.be/lhBJWDLO_IM)
- [UI overview](https://youtu.be/3Z-TgTrrXDU)
- [Proxy a repository](https://youtu.be/sumoWwqKoik)
- [Group repositories](https://youtu.be/js4ibAL7kyk)
- [Publish to a private repository](https://youtu.be/NNMQ8d-68es)
- [Closing remarks](https://youtu.be/W8X1eain51c)


[product vision]: /direction/package/
[Package stage]: /handbook/product/categories/#package-stage
[package-infradev-board]: https://gitlab.com/gitlab-org/gitlab/-/boards/3143028?label_name[]=group%3A%3Apackage&label_name[]=infradev
[Package backend board]: https://gitlab.com/groups/gitlab-org/-/boards/892745
[#s_package]: https://gitlab.slack.com/archives/s_package
[youtube]: https://www.youtube.com/playlist?list=PL05JrBw4t0KoPiSySNHTfvxC20i0LppMf
[retros]: https://gitlab.com/gl-retrospectives/package/issues?scope=all&utf8=%E2%9C%93&state=all&label_name[]=retrospective
[timezones]: https://timezone.io/team/gitlab-package-team
