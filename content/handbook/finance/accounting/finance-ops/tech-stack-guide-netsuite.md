---
title: "NetSuite Tech Stack Guide"
description: "Reference for how NetSuite is implemented."
---

> **Note:** Refer to the **[Tech Stack Index](https://about.gitlab.com/handbook/business-technology/tech-stack/)** to browse Apps and **[Tech Stack Applications](https://about.gitlab.com/handbook/business-technology/tech-stack-applications/)** to manage Apps.

{{% tech-stack "Netsuite" %}}

## Implementation

NetSuite is the company Enterprise Resource Planning (ERP) system, which is primarily managed by the Finance team. The platform allows enhanced dimensional reporting as well as multi-currency and multi-entity reporting. This is where the General Ledger resides and all financial activity is ultimately recorded, which is critical to reporting the financial health of the company.

## System Diagrams

TBD

## Integrations

### Zuora Billing to NetSuite

This integration is used a the end of each month to [synchronise Zuora Billing journal entries to Netsuite](https://about.gitlab.com/handbook/business-technology/enterprise-applications/integrations/wiki/integrations-list/zuora-billing-netsuite/).

### NetSuite to Coupa

Two-way sync from NetSuite to Coupa.

### Workday to NetSuite

One-way sync from Workday to NetSuite.

### NetSuite to Expensify

Two-way sync from NetSuite to Expensify.

## Key Reports / Dashboards

NetSuite Key Reports are indicated with the `KR:` prefix. *The following Key Reports need to be updated depending on the nature of the change request e.g. new department, new mapping, etc.*

- [KR: Balance Sheet](https://4477499.app.netsuite.com/app/reporting/reportrunner.nl?&cr=698&whence=)
- [KR: Balance Sheet by SUB in USD](https://4477499.app.netsuite.com/app/reporting/reportrunner.nl?&cr=811&whence=)
- [KR: Condensed Income Statement (External)](https://4477499.app.netsuite.com/app/reporting/reportrunner.nl?&cr=652&whence=)
- [KR: COS ALLOCATION](https://4477499.app.netsuite.com/app/reporting/reportrunner.nl?&cr=651&whence=)

