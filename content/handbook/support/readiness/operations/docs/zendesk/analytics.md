---
title: Zendesk Analytics
description: Support Operations documentation page for Zendesk Analytics
canonical_path: "/handbook/support/readiness/operations/docs/zendesk/analytics"
---

## What is Zendesk Analytics?

Zendesk Analytics is data sourced from the various sources we used to monitor and
analyze the function of Support Team. It helps in performance measurement, decision
making and increasing customer satisfaction and experience.

## Tools used in Zendesk Analytics

We use two basic tools for Support Team Analytics:

1. Explore
1. Tableau

### Explore

As per Zendesk, Zendesk Explore is designed to help you analyze, understand, and share
your business information. Explore provides powerful, prebuilt reports that help you
view and analyze key information about your customers, support resources, and more.

In GitLab, Explore is SSOT for all reporting and analysis required for support team.
Following are the pages for in-depth knowledge of Zendesk Explore:

1. Introduction
1. Interface
1. Datasets
1. Dashboards
1. Reports
1. Admin Area

### Tableau

Tableau is our new Enterprise Business Intelligence tool. Our Support Performance
Indicators, Key Reviews, SWIR are transitioning to Tableau as part of overall GitLab
deployment.

Zendesk Data is uploaded [daily](https://gitlab.com/gitlab-data/gitlab-data-meltano/-/blob/main/meltano.yml#L326)
to Snowflake via Meltano at 04:00 AM UTC. The list of tables which are extracted can
be found [here.](https://gitlab.com/gitlab-data/gitlab-data-meltano/-/blob/main/meltano.yml#L65)
For further information on how the data is extracted, please follow this [link.](https://internal.gitlab.com/handbook/enterprise-data/platform/pipelines/#zendesk) Snowflake is our data storage solution.

If you find any issues in Zendesk Data quality or scheduling inside Snowflake, you
can open an issue [here](https://gitlab.com/gitlab-data/analytics/-/issues/new) using `Data Quality Problem`
issue template or contact Data team on slack via #data.

## Disclaimer Note

Support uses Zendesk Explore for SSOT instead of Tableau. We do that because of the following reasons:

1. Zendesk Explore refresh data on Hourly basis unlike Tableau which refreshes only at 04:00 AM UTC so no data lag.
1. Zendesk Explore has some built-in metrics which are unavailable in Tableau.
1. Zendesk Explore reflects Data on event based updates. For example, priority switching is almost directly reportable in Zendesk Explore.

Due to aforementioned reasons, if you need a report based on Support Metrics or based on real-time support analytics, please contact #support_operations on Slack.