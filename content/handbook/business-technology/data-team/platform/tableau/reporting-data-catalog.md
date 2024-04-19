---

title: "Reporting Data Catalog"
description: "Giltab's Reporting Data Catalog"
---







---


## Introduction

This is GitLab's catalog of published Tableau Datasources and Dashboards.  While it is possible to search for and discover datasources and dashboards directly in the Tableau site (see `Tableau Default Landing Page` section below), this catalog acts as the documentation for what content is available for reporting and use.

Each entry in the catalog will have the following information:

- Name
- Description
- Link: A link to the item on the internal Tableau site.
- Owner: Team responsible to maintain
- Keywords: Common terms used for searching
- Certification: The level at which the published item has been certified by the enterprise data team.
- Lineage: Links to database tables, sources, and published datasources used in the creation of the item.


## Tableau Default Landing Page

In addition to the documentation on this page, the Enterprise Data Team maintains a default landing page in Tableau to facilitate easy exploration of trusted dashboards and reports. This page is visible to users when they log in to Tableau and is easy to navigate to by clicking on the GitLab logo at the top of the left-hand navigation bar:


### How the Landing Page is Structured

The landing page has a simple layout using text boxes & image links, organized into sections by business domain. We are organizing the page by business domain rather than by division / department because we want to promote single source of truth reporting, and prevent scenarios where Division A has a report for a core business question (say, Discounts) and Division B has a separate report that answers the same question. By organizing the landing page by business domain rather than by division, we:
- **Make it easier for end users to navigate.** As a user, I would not need to know that Discounts reports live under the Division A folder, or the Division B folder, or both. The domains and naming conventions should be intuitive enough for me to get there on my own, and the fact that there is only 1 report to look for will make it easier to find.
- **Co-mingle dashboards from different divisions.** The focus should be on the development & maintenance of one dashboard that answers a common business question (i.e. Discounts), and it does not matter which division created the dashboard, since it would have been reviewed & approved by all necessary stakeholders during the Publication to Production governance process.

### How the Landing Page is Populated & Maintained

The overall Landing Page is a dashboard owned and maintained by the Enterprise Data Team. The DRIs for maintaining & updating the layout of this page and the sections included are the Tableau Administrators.

Each tile on the Landing Page links to a Tableau Collection, and each Collection is owned by a sub-project lead in the Tableau project. Not every sub-project lead will own a Collection on this page, since the goal is to keep the Landing Page as minimal as possible for usability. 

The benefits of using Collections:
- Dashboard permissions are enforced through
- It is easy to contribute to

The Collection owners for each of the Landing Page sections are as follows:

- Financial Reporting: 	@Vikas Agrawal
- Customer Intelligence 
- GTM Funnel: 
- Product Usage
- People Analytics



## Datasources

### Mart ARR

A data source to explore ARR.  Designed directly from the [`mart_arr`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_arr) table in the data warehouse.

- Link: https://10az.online.tableau.com/#/site/gitlab/datasources/49022247
- Owner: Enterprise Data Team
- Keywords: ARR
- Certification: Certified
- Lineage: [restricted_safe_common_mart_sales.mart_arr](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_arr)

### Mart CRM Opportunity

A data source to explore sales and marketing metrics.  Designed directly from the [`mart_crm_opportunity`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_crm_opportunity) table in the data warehouse.

- Link: https://10az.online.tableau.com/#/site/gitlab/datasources/49059356
- Owner: Enterprise Data Team
- Keywords: Opportunity
- Certification: Certified
- Lineage: [restricted_safe_common_mart_sales.mart_crm_opportunity](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_crm_opportunity)

### Report Ping Metric Totals with Estimates (Monthly)

Total, recorded, and estimated usage for Self-Managed and SaaS Service Ping metrics. Designed directly from the [`rpt_ping_metric_totals_w_estimates_monthly`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.rpt_ping_metric_totals_w_estimates_monthly) table in the data warehouse.

- Link: https://10az.online.tableau.com/#/site/gitlab/datasources/50320253
- Owner: Enterprise Data Team
- Keywords: Service Ping
- Certification: Certified
- Lineage: [common_mart_product.rpt_ping_metric_totals_w_estimates_monthly](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.rpt_ping_metric_totals_w_estimates_monthly)

## Dashboards

