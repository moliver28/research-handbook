---
title: "Infrastructure Analyst Role"
description: "Defines role and responsibilities of infra analyst"
---

---

### Responsibilities

- Optimize infra spend through committed spend programs and supporting enterprise contract deals
- Ad Hoc Analysis of Infrastructure hosting spend
- Dashboard and chart creation to improve observability into infrastructure costs
- Teaching and partnering with PM's and others on how to understand the cost and usage of their services

### Working with an infrastructure analyst

There is no magic when reducing or analyzing infrastructure spend, it just requires a good understanding of what our own usage and architecture looks like and how we get billed for it.

Therefore, if requesting help or a review from an infrastructure analyst you should try to provide as much information as possible. Some of the most important pieces of information to provide are:

- description or link to architecture of affected services
- data Source of usage info and what metrics best relate to the cost if known
- Affected product and/or sku of service provider

If one or more of these is not known, then you should partner with the infrastructure analyst so you can define these together.

### Infra Analyst Board

The infrastructure analyst role is now part of the centralized engineering analytics team, and serves as a stable counterpart for Infrastructure Department. To open a request for infra analyst please open an issue under [engineering metrics board](https://gitlab.com/gitlab-com/www-gitlab-com/-/boards/1942495?label_name[]=Engineering%20Metrics)

### Learning Track

This section will go through the general skills that are needed to succeed as an infrastructure analyst. The skillset requires a mix of understanding that dips into three main areas: engineering, finance, and data.

- Understanding of major cloud vendors, how they bill, and how to analyze the bill.
  - Most cloud vendors will provide a granular billing report of your company's usage, so this is an important first step to understanding what the company is spending money on
  - Ability to quickly do ad-hoc analysis in any of the cloud vendor billing consoles
- Basic understanding of engineering concepts
  - An infrastructure analyst should know enough about how the applications your company uses to ask the right questions. This includes an understanding of general topics that affect resource utilization like multi-threading.
  - Can identify resource bottlenecks, areas of potential waste or excess usage, etc.
- Basic understanding of finance concepts
  - An infrastructure analyst needs to be comfortable with how finance departments work to be able to integrate with financial processes.
  - Familiar with forecast and cost allocation processes
- Understanding of data infrastructure
  - An infrastructure analyst should be able to work within whatever their company's current data architecture is, and enhance this with the unique data sources they have access to. This requires a greater level of maturity in the company and as a first step just using the cloud vendor billing consoles should suffice.
  - SQL expertise is baseline expectation, some experience with python/R as extra is preferred
