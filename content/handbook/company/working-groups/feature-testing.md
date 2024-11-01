---
title: "Feature Testing Working Group"
description: "Establish the credibility of a permanent alternative to RSpec and Capybara for Feature Testing."
status: active
---

## Attributes

| Property          | Value                                                                                                                                |
| ----------------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| Date Created      | 2024-11-01                                                                                                                           |
| Target End Date   | 2025-02-01                                                                                                                           |
| Slack             |                                                                          |
| Google Doc        |  |
| Epic              |                                                                 |
| Overview & Status | See [Exit Criteria](#exit-criteria)               |

### Context

The current approach to feature testing, using RSpec and Capybara, has a number of drawbacks:

* Due to lack of coverage or quantity of quarantined specs, the feature suite provides limited confidence in code changes and fails to catch regressions.
* Low level of stability leads to high frequency of broken master.
* Limited debugging tools make it difficult to create stable tests and debug flaky ones.
* Maintenance of tests written in Ruby is the responsibility of Frontend engineers, who may or may not have skill in this language.

### Goals

This Working Group has the following goals:

1. Establish the credibility of an alternative JavaScript-based testing system, [Playwright](https://playwright.dev/), as an alternative to RSpec / Capybara.
2. Create a proof of concept using Playwright with a part of the GitLab platform.
3. Create an architecture blueprint with a strategy on how to migrate to Playwright.

#### Exit Criteria

| Criteria          | Start Date | Completion Date | Progress | DRI |
| ----------------- | ---------- | --------------- | -------- | --- |
| Data Management   |            |                 |          |     |
| Authentication    |            |                 |          |     |
| CI/CD             |            |                 |          |     |
| Environment Setup |            |                 |          |     |
| Migration Plan    |            |                 |          |     |

#### Details

**Data Management**

RSpec includes numerous tools to create objects in Rails without database access. We need to determine a solution for this in Playwright. This will include ways to set up/tear down test data, database seeding, and managing of fixtures and factories.

**Authentication**

We'll need to determine how to simulate user authentication.

**CI/CD**

Need to set up CI pipelines running Node.js. Look into how to parallelize the running of tests, with a goal of quicker pipelines than the current RSpec solution.

**Environment Setup**

Ensure system can be installed with the GDK, and the test suite can be run with minimal setup.

**Migration Plan**

Strategy to take to gradually migrate to Playwright.


### Roles and Responsibilities

| Working Group Role | Person              | Title                                               |
| ------------------ | ------------------- | --------------------------------------------------- |
| Executive Sponsor  | Tim Zallmann        | VP of Engineering, Core Development                      |
| Facilitator        | Donald Cook        | Engineering Manager, Plan:Project Management             |
| Functional Lead    | Natalia Tepluhina        | Principal Engineer, Plan         |
| Functional Lead    | Ksenia Kolpakova         | Engineering Manager, Test Engineering |
| Member             | Désirée Chevalier        | Senior Software Engineer in Test, Plan |
