---
title: "Zuora Billing Tech Stack Guide"
description: "Reference for how Zuora Billing is implemented."
---

> **Note:** Refer to the **[Tech Stack Index](https://about.gitlab.com/handbook/business-technology/tech-stack/)** to browse Apps and **[Tech Stack Applications](https://about.gitlab.com/handbook/business-technology/tech-stack-applications/)** to manage Apps.

{{% tech-stack "Zuora Billing" %}}

## Implementation

Zuora consists of several app modules built on the [Zuora Central Platform](https://www.zuora.com/products/zuora-central-platform/). [Zuora Billing](https://www.zuora.com/products/billing-software/) is one of these modules.

## System Diagrams

[Zuora Billing](https://www.zuora.com/products/billing-software/) is one of several modules within the larger [Zuora Central Platform](https://www.zuora.com/products/zuora-central-platform/).

```mermaid
graph TD
    Z[Zuora Central Platform] -->ZB[Zuora Billing]
    Z --> ZR[Zuora Revenue]
    Z --> ZCPQ[Zuora CPQ]
```

## Quote to Cash workflow

Zuora Billing is a central module within the **[Quote to Cash workflow](https://about.gitlab.com/handbook/business-technology/enterprise-applications/quote-to-cash/#quote-to-cash-introduction)** and interfaces with many other apps.

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

## Lead to Cash workflow

Zuora Billing is a key module within the **[Lead to Cash workflow](https://about.gitlab.com/handbook/business-technology/enterprise-applications/quote-to-cash/#lead-to-cash-flow)**.

![Lead to Cash Workflow](https://about.gitlab.com/handbook/business-technology/tech-stack-guide/2022-06-03_lead_to_cash_flow.png)

## Key Reports / Dashboards

For Zuora Billing, the team uses [Zuora Standard Reports](https://knowledgecenter.zuora.com/Billing/Reporting/AB_Reporting_Quick_Reference/C_Standard_Reports) and the most important reports are:
 - ELP Changes
 - Accounts with subscriptions to be canceled in the next 30 days
 - Credit memos over time

We also have a collection of Sisense Dashboards that include Zuora Data. These dashboards include data from other data sources such as Salesforce:

- [TD: Zuora Revenue Waterfall](https://about.gitlab.com/handbook/business-technology/data-team/data-catalog/zuora_revenue_waterfall/)
- [TD: Customer Segmentation](https://app.periscopedata.com/app/gitlab:safe-dashboard/919364/TD:-Customer-Segmentation)
- [Zuora ATR (Available to Renew)](https://app.periscopedata.com/app/gitlab:safe-dashboard/919223/Zuora-ATR-%7C-MYB---Live---v1.1)
- [FY22 Zuora ATR](https://app.periscopedata.com/app/gitlab:safe-dashboard/919260/FY22:-Zuora-ATR---Based-on-FY21-Exit-ARR,-Snapshot-Date---2021-02-04)

## Data Model

The [Zuora Billing business object model](https://knowledgecenter.zuora.com/BB_Introducing_Z_Business/A_Zuora_Billing_business_object_model) presents how Zuora is organized internally.

![Zuora Billing Data Model](https://about.gitlab.com/handbook/business-technology/tech-stack-guide/2020_08_01_Zuora_Billing_object_model.png)

## Key Data Objects

Zuora is the SSOT for these objects and the data can be viewed there. In addition, key objects can be viewed in Snowflake:

- **Raw Data:** [`zuora.*`](https://gitlab-data.gitlab.io/analytics/#!/source_list/zuora). Key objects include:
  - [`zuora.account`](https://gitlab-data.gitlab.io/analytics/#!/source/source.gitlab_snowflake.zuora.account)
  - [`zuora.invoice`](https://gitlab-data.gitlab.io/analytics/#!/source/source.gitlab_snowflake.zuora.invoice)
  - [`zuora.product`](https://gitlab-data.gitlab.io/analytics/#!/source/source.gitlab_snowflake.zuora.product)
  - [`zuora.subscription`](https://gitlab-data.gitlab.io/analytics/#!/source/source.gitlab_snowflake.zuora.subscription)
- **Modeled Data:** [Bus Matrix](https://docs.google.com/spreadsheets/d/1j3lHKR29AT1dH_jWeqEwjeO81RAXUfXauIfbZbX_2ME/edit#gid=430467333). Key objects include:
  - [`dim_billing_account`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_billing_account)
  - [`dim_invoice`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_invoice)
  - [`dim_product_detail`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_product_detail)
  - [`dim_subscription`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_subscription)

### Product catalog

The Zuora Enterprise App Guide contains a [Product Catalog to manage all of GitLab's SKUs](https://about.gitlab.com/handbook/business-technology/enterprise-applications/guides/zuora/#product-catalog).

## Integrations

```mermaid
graph TD

subgraph Zuora Revenue Integrations
    ZR[Zuora Revenue] --> |Platypus|N[NetSuite]
    N[NetSuite] --> |Workato|ZR
end

subgraph Zuora Billing Integrations
    ZB[Zuora Billing] --> |Zuora 360|S[Salesforce]
    ZB --> |stitch| EDW[Snowflake Enterprise Data Warehouse]
    ZB --> TS[Tesorio]
    CD[CustomersDot]-->ZB
end
```

### Zuora to Salesforce

Zuora Data to Salesforce via Zuora CPQ

### Customers Dot to Zuora Billing

CustomersDot data to Zuora via [IronBank GEM](https://gitlab.com/gitlab-org/customers-gitlab-com/-/tree/main/#ironbank) using the [Zuora Subscribe API](https://www.zuora.com/developer/api-reference/#tag/Subscriptions) and [Zuora Amend API](https://www.zuora.com/developer/api-reference/#tag/Amendments)
     * [Orders Harmonization plans to transition](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/intake/-/issues/616) to the [Zuora Orders API](https://www.zuora.com/developer/api-reference/#tag/Orders)

### Zuora to Snowflake

Zuora Data to [Snowflake Enterprise Data Warehouse](https://about.gitlab.com/handbook/business-technology/data-team/platform/#our-data-stack) with the [Stitch Zuora Integration](https://www.stitchdata.com/integrations/zuora)

### Zuora to NetSuite

Zuora Revenue data is synced to NetSuite using the [Zuora Revenue to NetSuite Integration](https://about.gitlab.com/handbook/business-technology/enterprise-applications/integrations/wiki/integrations-list/zuora-revenue-to-netsuite/).

### Zuora to Tesorio

Tesorio is the Collections Management Tool connected to Zuora and get most of the data it needs to manage running process.

