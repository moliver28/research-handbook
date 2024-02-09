---
title: "Tech Stack Guide Reference"
description: "Reference for how to create and maintain Tech Stack Guides."
---

## What Is A Tech Stack Guide?

> **Note:** Use the **[Tech Stack Index](/handbook/business-technology/tech-stack/)** to browse Tech Stack Apps.

Every application should have a dedicated `Tech Stack Guide` handbook page to help everyone understand how the app is used, administered, and integrated with other systems. The audience of the Tech Stack Guide is anyone who needs to use the app, extend it, work with it, or understand how it fits into the rest of the GitLab Tech Stack ecosystem. Creation and maintenance of each Guide is a team effort and requires collaboration between the business system owner, technical owner, and others involved in implementation and operations. Each Tech Stack Guide lives within the Business Owner's Functional section of the handbook, along with other Function-based handbook content.

## Approach

The goal of this page is to describe how to document an application's `Tech Stack Guide`. **An apps Tech Stack Guide should live with the Functional Business Owner of the technology**. Our SSOT for all apps will be the [Tech Stack YAML](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml) and the YAML will populate key portions of the page. However, other sections of the page can be populated that are not included in the YAML file as needed to ensure that the documentation is complete such as Data Model, Integrations, Key Reports/Dashboards.

Here's how to think about the relationship between the Tech Stack YAML nd the Tech Stack Guide:
- The Tech Stack YAML is a registry of all apps GitLab owns or operates (the What)
- A Tech Stack Guide covers the business and technical workflows (the Why and How) of each Tech Stack app
- The `handbook_link` key/property in the YAML links to the corresponding Tech Stack Guide(s)

We also plan to have a second YAML file for our security applications called the Security Stack YAML that lives in the internal handbook. We will use the same template approach for these applications.

{{% alert color="warning" %}}
Tech Stack Guide Template
{{% /alert %}}

## Tech Stack Application Name

The Tech Stack single source of truth is the [Tech Stack YAML](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml) and contains more detail about this app.

```markdown
{{%/* tech-stack "Application Name" */%}}
```

### Implementation

Information about how the app was implemented, including links to GitLab epics and issues to help people understand where we started and how we arrived at this solution.

### System Diagram

Include some form of a diagram to illustrate how the system is deployed and what other apps it may be connected to. A [Mermaid Diagram(s)](https://mermaid-js.github.io/docs/mermaid-live-editor-beta/#/edit/) is ideal, but any diagram is better than none.

### Data Model

Include some form of an ER Diagram to illustrate the key data objects and their relationships with each other. You can create one with (ideally) [Mermaid ER diagram](https://mermaid-js.github.io/docs/mermaid-live-editor-beta/), LucidChart, or any other diagramming tool.

### Integrations

List the integrations between this app and other tech stack apps or systems. Include links to additional material if available, including the development project, code, diagrams, and issues.

### Key Reports / Dashboards

List the important reports and dashboards used to operate the application, including links where available.

## Tech Stack Guide Example #1: [Thought Industries LMS Tech Stack Guide](/handbook/customer-success/professional-services-engineering/education-services/lms/)

Important Notes:
1. This Tech Stack Guide lives in the [GitLab Professional Education Services](/handbook/customer-success/professional-services-engineering/education-services) handbook because Professional Services are the business owners of the app
2. The `handbook_link` key in the [Tech Stack YAML](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml) for Thought Industries Learning Management System references the Tech Stack Guide

## Tech Stack Guide Example #2: Zuora Billing

### Code

```markdown
The Tech Stack single source of truth is the [Tech Stack YAML](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml) and contains more detail about this app.

{{%/* tech-stack "Zuora Billing" */%}}
```

### Result

The Tech Stack single source of truth is the [Tech Stack YAML](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml) and contains more detail about this app.

{{% tech-stack "Zuora Billing" %}}

### Implementation

Zuora consists of several app modules built on the [Zuora Central Platform](https://www.zuora.com/products/zuora-central-platform/). [Zuora Billing](https://www.zuora.com/products/billing-software/) is one of these modules.


### System Diagrams

[Zuora Billing](https://www.zuora.com/products/billing-software/) is one of several modules within the larger [Zuora Central Platform](https://www.zuora.com/products/zuora-central-platform/).

```mermaid
graph TD
    Z[Zuora Central Platform] -->ZB[Zuora Billing]
    Z --> ZR[Zuora Revenue]
    Z --> ZC[Zuora Collect]
    Z --> ZCPQ[Zuora CPQ]
```

### Quote to Cash workflow

Zuora Billing is a central module within the **[Quote to Cash workflow](/handbook/business-technology/enterprise-applications/quote-to-cash/#quote-to-cash-introduction)** and interfaces with many other apps.

```mermaid
graph TD
    subgraph Z[ZUORA]
        ZCPQ[ZUORA-CPQ]
        ZB[ZUORA-Billing]
        ZR[ZUORA-Revenue]
    end
    N[NETSUITE]
    T[TESORIO]
    S[STRIPE]
    A[AVALARA]
    SFDC[Salesforce]
    CD[CustomersDot]
    SFDC <---> |Zuora360|ZB
    ZB <---> |Zuora360|ZCPQ
    CD ---> |eCommerce|ZB
    ZB ---> ZR
    ZB ----> |CC Payment & Processing|S
    ZB ----> |Tax Calculations & Remittance|A
    ZB ----> |Dunning & Receivables|T
    ZR ---> |Platypus|N
    ZB ---> |Platypus|N
```

### Lead to Cash workflow

Zuora Billing is a key module within the **[Lead to Cash workflow](/handbook/business-technology/enterprise-applications/quote-to-cash/#lead-to-cash-flow)**.

![Lead to Cash Workflow](/handbook/business-technology/tech-stack-guide/2022-06-03_lead_to_cash_flow.png)

### Key Reports / Dashboards

For Zuora Billing, the team uses [Zuora Standard Reports](https://knowledgecenter.zuora.com/Billing/Reporting/AB_Reporting_Quick_Reference/C_Standard_Reports) and the most important reports are:
 - ELP Changes
 - Accounts with subscriptions to be canceled in the next 30 days
 - Credit memos over time

We also have a collection of Tableau dashboards that include Zuora Data. These dashboards include data from other data sources such as Salesforce.

### Data Model

The [Zuora Billing business object model](https://knowledgecenter.zuora.com/BB_Introducing_Z_Business/A_Zuora_Billing_business_object_model) presents how Zuora is organized internally.

![Zuora Billing Data Model](/handbook/business-technology/tech-stack-guide/2020_08_01_Zuora_Billing_object_model.png)

### Key Data Objects

Zuora is the SSOT for these objects and the data can be viewed there. In addition, key objects can be viewed in Snowflake:
* **Raw Data:** [`zuora.*`](https://gitlab-data.gitlab.io/analytics/#!/source_list/zuora). Key objects include:
  * [`zuora.account`](https://gitlab-data.gitlab.io/analytics/#!/source/source.gitlab_snowflake.zuora.account)
  * [`zuora.invoice`](https://gitlab-data.gitlab.io/analytics/#!/source/source.gitlab_snowflake.zuora.invoice)
  * [`zuora.product`](https://gitlab-data.gitlab.io/analytics/#!/source/source.gitlab_snowflake.zuora.product)
  * [`zuora.subscription`](https://gitlab-data.gitlab.io/analytics/#!/source/source.gitlab_snowflake.zuora.subscription)
* **Modeled Data:** [Bus Matrix](https://docs.google.com/spreadsheets/d/1j3lHKR29AT1dH_jWeqEwjeO81RAXUfXauIfbZbX_2ME/edit#gid=430467333). Key objects include:
  * [`dim_billing_account`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_billing_account)
  * [`dim_invoice`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_invoice)
  * [`dim_product_detail`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_product_detail)
  * [`dim_subscription`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_subscription)

#### Product catalog

The Zuora Enterprise App Guide contains a [Product Catalog to manage all of GitLab's SKUs](/handbook/business-technology/enterprise-applications/guides/zuora/#product-catalog).

### Integrations

```mermaid
graph TD

subgraph Zuora Revenue Integrations
    ZR[Zuora Revenue] --> |Platypus|N[NetSuite]
    N[NetSuite] --> |Workato|ZR
end

subgraph Zuora Billing Integrations
    ZB[Zuora Billing] --> |Zuora 360|S[Salesforce]
    ZB --> |stitch| EDW[Snowflake Enterprise Data Warehouse]
    CD[CustomersDot]-->ZB
end
```

#### Zuora to Salesforce

Zuora Data to [Salesforce](#salesforce-sales-cloud) via [Zuora CPQ](#zuora-cpq)

#### Customers Dot to Zuora Billing

CustomersDot data to Zuora via [IronBank GEM](https://gitlab.com/gitlab-org/customers-gitlab-com/-/tree/main/#ironbank) using the [Zuora Subscribe API](https://www.zuora.com/developer/api-reference/#tag/Subscriptions) and [Zuora Amend API](https://www.zuora.com/developer/api-reference/#tag/Amendments)
     * [Orders Harmonization plans to transition](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/intake/-/issues/616) to the [Zuora Orders API](https://www.zuora.com/developer/api-reference/#tag/Orders)

#### Zuora to Snowflake

Zuora Data to [Snowflake Enterprise Data Warehouse](/handbook/business-technology/data-team/platform/#our-data-stack) with the [Stitch Zuora Integration](https://www.stitchdata.com/integrations/zuora)

#### Zuora to NetSuite

Zuora Revenue data is synced to NetSuite using the [Zuora Revenue to NetSuite Integration](/handbook/business-technology/enterprise-applications/integrations/wiki/integrations-list/zuora-revenue-to-netsuite/).
