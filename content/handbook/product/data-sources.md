---
title: Data Sources in GitLab
description: ""
---

## Overview

This page describes the major sources that are used within GitLab the product and provides guidance on how to think about them as well as build features against them.

## Postgres

_fill in / link to existing Psql positioning_

## ClickHouse

[ClickHouse](https://clickhouse.com/) is a relatively new technology, as of 2024, that is being used more throughout GitLab.
It is a column-oriented database, as opposed to a row-oriented database, which makes it good for different use cases compared to Postgres, such as [OLAP](https://en.wikipedia.org/wiki/Online_analytical_processing) and big data processing.

### Deployment

GitLab.com uses the managed ClickHouse hosting, [ClickHouse Cloud](https://clickhouse.com/cloud), to enable ClickHouse-backed features.

ClickHouse is currently not included in the GitLab installation packages. This means self-managed customers do not get an installation of ClickHouse by default when installing GitLab.
We intentionally omit ClickHouse from the installation packages for several reasons:
- *Preserve customer deployment flexibility.* Customers have diverse deployments of GitLab, depending on on their business's scale, region, and resiliance requirements. Packaging ClickHouse would require us to understand and meet all these, which is not the best use of our resources as opposed to letting customers, who understand their own requirements, implement it as they need.
- *Keep installers small.* ClickHouse is a relatively large piece of software and requires configuration and maintenance to run. Many smaller GitLab users are unlikely to use many of the ClickHouse-powered features and so will not want to take on this additional maintenance requirement.

Instead of including ClickHouse in the installer packages, we will provide an instance-level configuration option for an admin to point GitLab to the ClickHouse cluster to use.

### Feature development

Teams should consider ClickHouse as a fully supported technology to build features on top of, for both GitLab.com, GitLab Dedicated, and self-managed.
Since ClickHouse is an optional requirement for running with GitLab, features should be designed in a way that they are disabled or fail gracefully when ClickHouse is not available.