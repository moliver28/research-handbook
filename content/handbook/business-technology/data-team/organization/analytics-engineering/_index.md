---
title: "Analytics Engineering Handbook"
description: "GitLab Analytics Engineering Team Handbook"
---

**PURPOSE: This page is focused on the operations of GitLab's internal *Analytics Engineering Team*.**

`Last Updated At: 2024-05-30`

## The Analytics Engineering Team at GitLab

The mission of the Analytics Engineering Team is to...

## Handbook First

At GitLab we are [Handbook First](/handbook/about/handbook-usage/#why-handbook-first) and promote this concept by ensuring the analytices engineering team page remains updated with the most accurate information regarding objectives, and processes. We also strive to keep the handbook updated with useful resources and our toolset.

## Learning About Analytics Engineering

...

### Common Analytics Engineering Terms

- **Model** - a collection of SQL or python code and configuration that defiens how table or view is added to the database.
- **Data Model** - a set of princepels and guidelines that define the relationship between models

## Analytics Engineering Responsibilities

Of the [Data Team's Responsibilities](/handbook/business-technology/data-team/#responsibilities), the Analytics Engineering Team is **directly responsible** for:

- ...

Additionally, the Analytics Engineering Team **supports** the following responsibilities:

- With **Data Leadership**:
  - Scoping and executing a data science strategy that directly impacts business KPIs
  - Broadcasting regular updates about deliverables, ongoing initiatives, and roadmap
- With the [**Data Platform Team**](/handbook/business-technology/data-team/organization/engineering/):
  - Defining and championing data quality best practices and programs for GitLab data systems
  - Deploying data science models, ensuring data quality and integrity, shaping datasets to be compatible with machine learning, and brining new datasets online
  - Creating data science pipelines that work natively with the GitLab platform and the Data Team tech stack
- With the [**Data Analytics Team**](/handbook/business-technology/data-team/organization/analytics/):
  - Incorporating data science into analytics initiatives
  - Designing dashboard to enhance the value and impact of the data science models

## How We Work

As a Center of Excellence, the analytics engineeering team is focused on working collaboratively with other teams in the organization. This means our stakeholders and executive sponsors are usually in other parts of the business (e.g. Sales, Marketing). Working closely with these other teams, we craft a project plan that aligns to their business needs, objectives, and priorities. This usually involves working closely with functional analysts within those teams to understand the data, the insights from prior analyses, and implementation hurdles.

The analytics engineeering flywheel is focused...

## How to request an Analytics Engineering project?

To request a new Analytics Engineering project, please fill out the [Opportunity Canvas](https://gitlab.com/gitlab-data/analytics/-/issues/new). In the description choose `[New Request] Create Opportunity Canvas`. The `Problem Statement` and `Stakeholders` sections should be completed. During the quarterly planning process, requests will be reviewed and priortisied accordingly by the Data Leadership Forum.

## Contributing to the Data Warehouse

...

## Analytics Engineering Platform

Our current platform consists of:

- [Data Lake](/handbook/business-technology/data-team/platform/) for storing raw data from differant source systmes
- [Enterprise Data Warehouse](/handbook/business-technology/data-team/platform/) for stageing and preparing source data, storing the output of models for consumption by downstream consumers
- dbt for model developement and depoloyment
- [GitLab](https://gitlab.com/) for collaboration, project versioning, and score code managementand [CI/CD](https://docs.gitlab.com/ee/ci/)
- Airflow for automation and orchestration
- [Monte Carlo](https://getmontecarlo.com/) for...
- Tableau Cloud for model monitoring and on-going performance evaluation


### CI/CD Pipelines for Analytics Engineering

...

