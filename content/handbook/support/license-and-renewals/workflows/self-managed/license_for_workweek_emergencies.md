---
title: Emergencies During the Week - Self-Managed License Request
description: "Support process for Self-managed license emergencies during the week"
category: GitLab Self-Managed licenses
---

## Overview

When a customer submits an emergency support request for an expired license, it's essential to assess whether the issue can be handled by the on-call engineer or requires the expertise of an L&R SME.

This workflow outlines steps for Support to determine if expert intervention from an L&R SME is necessary.

**NOTE:** This workflow is applicable even if the customer has previously received a
[Sales-generated temporary extension](/handbook/support/license-and-renewals/workflows/self-managed/trials/#how-to-extend-an-expired-or-soon-to-expire-license).

This workflow does not cover SaaS Subscription Emergencies, see [Customer Emergencies Workflow - SaaS License Emergencies](/handbook/support/workflows/customer_emergencies_workflows#saas-subscription-emergencies).

## Scope

License requests for a Self-managed customer with a **paid** plan, where the license's "grace period" (14 days after expiration) ended within the last 3 days from the current emergency's date.

## Out of Scope

1. Organizations without a **paid** plan.
1. Prospects.

---

## Workflow

**Emergency License Replacement Workflow**

To ensure timely resolution for emergency support requests involving licensing problems, follow this step-by-step process:

```mermaid
flowchart TB
    title[<b>The Customer Is Reporting Their Self-Managed License Expired</b>]
    cdot(Does the Person Who Opened the Ticket Have An Account in CDot?)
    sub(Does the CDot Account Have Access to the Subscription Information?)
    l&r(Engage the Assistance of an L&R SME)
    license("Look for the License Subscription Number on the Appropriate CDot Account (https://customers.gitlab.com/admin/customer)")
    seat_link("Enter the subscription name in the page for Seat Link present in CDot (https://customers.gitlab.com/admin/license_seat_link)")
    sub_status(Is there an entry with the current date on the page that is displayed?)
    all_good(Likely the issue has resolved itself and no intervention is needed. Confirm this with the customer to be sure.)

    title
    cdot --> yes1[Yes]
    cdot --> no1[No]
    no1 --> l&r
    yes1 --> sub
    sub --> yes2[Yes]
    sub --> no2[No]
    yes2 --> license
    no2 --> l&r
    license --> seat_link
    seat_link --> sub_status
    sub_status --> yes3[Yes]
    sub_status --> no3[No]
    yes3 --> all_good
    no3 --> l&r
```

This workflow is designed to provide a clear guide for Support to determine whether an L&R SME's expertise is necessary to assist with the customer's request.