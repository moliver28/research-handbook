---

title: Fulfillment Guide
description: "The Fulfillment Sub-department is responsible for the infrastructure between the systems which affect the user purchasing process."
---






## Key Fulfillment Documentation links

| Resource  | Areas Covered |
| --------  | ------------- |
| [Fulfillment Direction](https://about.gitlab.com/direction/fulfillment/) | Fulfillment vision and what we are working on next. |
| [docs.gitlab.com Subscription](https://docs.gitlab.com/ee/subscriptions/) | Customer-facing documentation around GitLab subscriptions, including Customer Portal (customers.gitlab.com) information. |
| Fulfillment Guide (this page) | Documentation around CustomersDot Admin tools and process documentation that is not part of the docs.gitlab.com Subscription documentation above. |
| [Fulfillment Development Sub-Department](/handbook/engineering/development/fulfillment/) | Team members, stable counterparts (PM, UX, Quality, Security, EntApps, Field Ops, Sales, Billing, Customer Success, Support Engineering), project management processes, and more. |
| [Internal Handbook - Fulfillment](https://internal.gitlab.com/handbook/product/fulfillment/) | Documentation that can't be in the public handbook. Minimize this to only [Not Public](/handbook/communication/confidentiality-levels/#not-public) information. |
| [Cloud Licesing Overview (External)](https://about.gitlab.com/pricing/licensing-faq/cloud-licensing/) | Why Cloud Licensing, data collected, customer pre-requisites |
| [Cloud Licensing (Internal)](https://internal.gitlab.com/handbook/product/fulfillment/cloudlicensing/cloud-licensing/) | Internal handbook information about Cloud Licensing |
| [Deal Desk Handbook](/handbook/sales/field-operations/sales-operations/deal-desk/) | Standard Quote Configuration (new subscription, amend subscription, add-on quote creation, upgrade or product switch during subscription term, renewal, channel deals, true-ups, co-terms, Starter/Bronze End of Availability, SuperSonics, Professional Services), Non-Standard Quotes (Contract Resets, Concurrent Subscriptions, Multi-year Deals, Ramp deals), Alliance Marketplace Private Offers, and more.  |
| [Sales Order Processing](/handbook/sales/field-operations/order-processing/) | Account and opportunity creation, quote configuration, approvals process, opportunity booking requirements, closing an opportunity. |
| [Internal Support](/handbook/support/internal-support/) | Submitting all requests around licensing, subscription, trials, and grace periods. |
| [Licensing FAQ](https://about.gitlab.com/pricing/licensing-faq/) | Common questions around purchasing, licensing, billing, contacting sales, and more |
| [Finance and Legal Authorization Matrix](/handbook/finance/authorization-matrix/) | |
| [Trade Compliance](/handbook/legal/trade-compliance/) | |
| [Billing, invoice and payment requests](/handbook/support/license-and-renewals/workflows/billing_contact_change_payments/) | Zuora contact change, Zuora entity change and effects on SM/SaaS subscriptions, cancellations, downgrades, refunds, invoices, payments, credit card removals, renewal reversals, split payment requests |
| [Troubleshooting: True Ups, licenses + EULAs](/handbook/business-technology/enterprise-applications/quote-to-cash/troubleshooting/) | |
| [Quote-to-Cash systems documentation (EntApps)](/handbook/business-technology/enterprise-applications/quote-to-cash/) | Overview of systems, EntApps Architecture, Process Flow Diagrams, Entity Relationship Diagrams |
| [Quote-to-Cash process](/handbook/business-technology/enterprise-applications/quote-to-cash/#quote-to-cash-introduction) | EntApps documentation including systems and process diagrams. |

## How to connect with us

If your question is not answered by the key links above or this guide:

- For help with a license error, resending a license or other support requests, [create an internal issue for the support team](/handbook/support/internal-support).
- For general product questions, try the [#Questions](https://gitlab.slack.com/archives/C0AR2KW4B) Slack channel.
- Reach out to [#s_fulfillment](https://gitlab.slack.com/archives/CMJ8JR0RH) with non-customer specific purchasing or provisioning questions, or to escalate an outage in our purchasing workflow.

## Fulfillment Feature Availability

Not all Fulfillment features are available at the time for all types of customers, please refer to the availability matrix below.

### Cloud Licensing, Auto-Renewal, Quarterly Subscription Reconciliation, and Operational Data availability

| Customer Type | Cloud Licensing (Y/N) | Auto-Renewals (Y/N) | Quarterly Subscription Reconciliation (Y/N) | Operational Data (Y/N) |
| ------------- | --------------------- | ------------------- | ------------------------------------------- | ----------------------- |
| Customers with credit card on file | Yes | Yes | Yes | Yes |
| Customers paying with invoice | Yes | Yes | Yes | Yes |
| Customers requiring a PO | Yes | No | No | Yes |
| Customers with an MSA | Yes | No | No | No |
| Customers with multi-year deals | Yes | No | No | Yes |
| Customers purchasing through a GitLab Reseller or other Channel/Alliance Partner | Yes | No | No | Yes |
| Public Sector Customers | Yes | No | No | Yes |
| Customers with offline/airgapped environments | Yes<br>*([Offline cloud license](https://about.gitlab.com/pricing/licensing-faq/cloud-licensing/#offline-cloud-licenses) released in GitLab 15.0)* | No | No | No |
| GitLab for Education, Open Source and Startups Customers | No | No | No | No |
| Free Tier Users | No | No | No | No |

## Initial Purchase Flows

- [Screenshots](https://gitlab.com/gitlab-org/fulfillment-meta/-/issues/1430) of initial purchase flows

## Storage Enforcement

### Notifications

*last updated: April 2023*

#### Project Storage Enforcement

**Purpose**: document what notifications customers see as part of today's existing [repository/project 10GB enforcement](https://docs.gitlab.com/ee/user/usage_quotas.html#project-storage-limit).

| Question | Banner Notification | CLI |
| ------------- | --------------------- | ------------------- |
| **What are we showing?** | In-app banner notifications that can be seen throughout the GitLab product, on pages related to the affected top-level group and projects.  | Command line interface notifications about storage usage when git commands occur. If the push will send the project over the storage limit, a notification will appear and the command will be rejected. |
| **What type of enforcement scenario is this applicable?** | Project storage enforcement.  | Project storage enforcement. |
| **Is this live and being shown to customers today (as of Apr 20 2023)?** | Yes | Yes |
| **When will we stop showing these notifications?** | When we roll out `Group Namespace Storage Enforcement` for the `Free` and then later `Paid` tiers | When we roll out `Group Namespace Storage Enforcement` for the `Free` and then later `Paid` tiers  |
| **Who is seeing this?** | [All members](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/114960/diffs#a9df026a7fe481b045321b58a363ebfa963e284f_104_107) of the impacted [project](https://gitlab.com/gitlab-org/gitlab/-/issues/451888#note_1881224243).  | Anyone using the CLI.  |
| **When are we showing this?** | Customers who have used `75%+` of their allotted storage, will receive warning messages. When a customer has gone above their allotted storage amount `100%+` (> 100%, not >=),, they will receive a notification that their project is in a read-only state. | Customers who have used `95%-100%` of their of their [allotted storage](https://gitlab.com/fulfillment-group/utilization-group/team-project/-/issues/52#note_1378071499), will receive warning messages. When a customer has gone above their allotted storage amount `100%+` (> 100%, not >=),, they will receive a notification that their MR has been rejected.  |
| **How is this notification controlled?** | We first check if we're enforcing via `automatic_purchased_storage_allocation` application setting ([code](https://gitlab.com/gitlab-org/gitlab/-/blob/e9c674c8/ee/app/models/namespaces/storage/root_excess_size.rb#L42)) and then we check if the criteria is met. The Application Setting used to determine the limit is `repository_size_limit` ([code](https://gitlab.com/gitlab-org/gitlab/-/blob/e9c674c8/ee/app/models/ee/namespace.rb#L251)). Currently the [limit is `10 GB`](https://docs.gitlab.com/ee/user/usage_quotas#project-storage-limit) and can only be set to the whole GitLab instance. | Same. See [issue](https://gitlab.com/fulfillment-group/utilization-group/team-project/-/issues/52#note_1388515713) |
| **Links** | See [issue](https://gitlab.com/gitlab-org/gitlab/-/issues/371674) and [MR](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/112079) <br><br> [Screenshots](https://gitlab.com/gitlab-org/fulfillment-meta/-/issues/1099#banner-notification) | See [MR](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/112079) <br><br> [Screenshots](https://gitlab.com/gitlab-org/fulfillment-meta/-/issues/1099#cli)  |

#### Group Namespace Storage Enforcement

**Purpose**: document what notifications customers can expect to see as part of the group namespace storage enforcement project. [FAQ](https://about.gitlab.com/pricing/faq-paid-storage-transfer/) / [docs](https://docs.gitlab.com/ee/user/usage_quotas#namespace-storage-limit).


| Question | Pre-Enforcement Banner Notification | Banner Notification | CLI | Emails |
| -------------| ------------- | --------------------- | ------------------- |------------------- |
| **What are we showing?** | In-app banner notifications that can be seen throughout the GitLab product that let customers know that we will start enforcing storage limits soon. [They follow](https://gitlab.com/gitlab-org/gitlab/-/issues/387958#note_1322125225) customers around in all pages under `group`, `project`, and `user`. | In-app banner notifications that can be seen throughout the GitLab product that let customers know they are nearing their storage limits. [They follow](https://gitlab.com/gitlab-org/gitlab/-/issues/387958#note_1322125225) customers around in all pages under `group`, `project`, and `user`.   | Command line interface notifications about storage usage when git commands occur. If the push will send the group over the storage limit, a notification will appear.  |  E-mails when customers are nearing group namespace storage limits and when they are over storage limits. |
| **What type of enforcement scenario is this applicable?** | Group Namespace Storage Enforcement. | Group Namespace Storage Enforcement.  | Group Namespace Storage Enforcement. | Group Namespace Storage Enforcement.   |
| **Is this live and being shown to customers today (as of Apr 20 2023)?**| No | No | No | No  |
| **When will we stop showing these notifications?**| These will stop after we have rolled out storage enforcement to the `Free` tier. Note: we will then deploy them again when we do storage enforcement for the `Paid` Tier. | Never | Never | Never  |
| **Who is seeing this?** | [Owners and non-owners](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/120434) | [Owners and non-owners](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/114960#note_1361204113)  | Anyone using the CLI.  | Namespace group owners.  |
| **When are we showing this?** | We are showing these starting 60 days in advance of `Free` tier storage enforcement. | When group namespace storage enforcement begins, customers who have used `75%+` of their allotted storage, will receive warning banners. When a customer reaches or goes over their allotted storage amount `100%+` (> 100%, not >=),, they will receive a banner informing them that their group is now in a read-only state. Note: we haven't enabled the feature flags on production, once we do all users should start see banners once the usage criteria is met.  | Customers who have used `95%-100%` of their [allotted storage](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/112079#note_1378162404), will receive warning messages. When a customer reaches or goes over their allotted storage amount `100%+` (> 100%, not >=), they will receive a notification that their git command has been rejected.  | When group namespace storage enforcement begins, customers who have used `70%`, `85%`, `95%` of their allotted storage, will receive warning e-mails. When a customer reaches or goes over their allotted storage amount `100%+` (> 100%, not >=),, they will receive an e-mail informing of them that their group is now in a read-only state and to purchase storage and/or decrease storage usage.  |
| **How is this notification controlled?** | We check if the group has no subscription ([code](https://gitlab.com/gitlab-org/gitlab/-/blob/e9c674c8/ee/app/models/namespaces/storage/enforcement.rb#L23)). Then we check if the group has not been marked for `storage_limit_exclusion` ([code](https://gitlab.com/gitlab-org/gitlab/-/blob/e9c674c8/ee/app/models/namespaces/storage/enforcement.rb#L33)), then we check if their plan has a `notification_limit` ([code](https://gitlab.com/gitlab-org/gitlab/-/blob/e9c674c8/ee/app/models/namespaces/storage/enforcement.rb#L36)) and if so we check if their consumed storage reaches or goes over the notification limit ([code](https://gitlab.com/gitlab-org/gitlab/-/blob/e9c674c8/ee/app/models/namespaces/storage/enforcement.rb#L41)). The `notification_limit` will start high and will be gradually decreased until we get to the dashboard limit, controlled by the `storage_size_limit` application setting. | We first check if we're enforcing ([code](https://gitlab.com/gitlab-org/gitlab/-/blob/e9c674c8/ee/app/components/namespaces/storage/limit_alert_component.rb#L24)), then if the criteria is met either for warning or error banners ([code](https://gitlab.com/gitlab-org/gitlab/-/blob/e9c674c8/ee/app/components/namespaces/storage/limit_alert_component.rb#L25)). We use [application settings](https://gitlab.com/gitlab-org/gitlab/-/issues/385515#note_1388969550) to enable the enforcement and the [Plan Limit](https://docs.gitlab.com/ee/api/plan_limits.html) named `storage_size_limit` to check what's the storage quota included in the plan ([code](https://gitlab.com/gitlab-org/gitlab/-/blob/e9c674c8/ee/app/models/namespaces/storage/root_size.rb#L34)). Each plan will have a [different limits](https://about.gitlab.com/pricing/faq-paid-storage-transfer/#q-what-is-changing-with-storage-and-transfer-limits)  | Same. See [issue](https://gitlab.com/fulfillment-group/utilization-group/team-project/-/issues/52#note_1388515713)  | The controls are the same but the email trigger needs to be verified |
| **Special Notes** | [For dismissal](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/113523#note_1323268332): <br> - For now: can we allow for dismissal but have it re-appear ever 14 days <br> - For later / closer to enforcement: we make the banner [re-appear every day if dismissed](https://gitlab.com/gitlab-org/gitlab/-/issues/398620#note_1362053624). | For dismissal: <br> - Customer can dismiss banner but it will re-appear if they change thresholds (eg they jump from 70% of usage to 95% of usage) <br> - The banner will become [non-dismissable when usage is above 95%](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/122494).  |  |   |
| **Links** | See [MR](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/97807) <br><br> [Screenshots](https://gitlab.com/gitlab-org/fulfillment-meta/-/issues/1099#pre-enforcement-banner-notification) | See [issue](https://gitlab.com/gitlab-org/gitlab/-/issues/387958) <br><br> [Screenshots](https://gitlab.com/gitlab-org/fulfillment-meta/-/issues/1099#banner-notification-1) | See [MR](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/112079) <br><br> [Screenshots](https://gitlab.com/gitlab-org/fulfillment-meta/-/issues/1099#cli-1) |  See [MR](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/114325) and [issue](https://gitlab.com/gitlab-org/gitlab/-/issues/383393) <br><br> [Screenshots](https://gitlab.com/gitlab-org/fulfillment-meta/-/issues/1099#emails)  |

## User cap for groups on SaaS

On GitLab.com, this feature is now available for all groups. For more information, see [User cap for groups](https://docs.gitlab.com/ee/user/group/manage.html#user-cap-for-groups).

## Experience for customers that purchased through a reseller

As of 2023-06-28, customers who have purchased a GitLab subscription through an authorized reseller (including GCP and AWS marketplaces) have access to the Customers Portal.

- [Customer documentation in GitLab Docs](https://docs.gitlab.com/ee/subscriptions/customers_portal.html#customers-that-purchased-through-a-reseller)
- [Internal video demo](https://youtu.be/LVhG8JzD8oY)
- [Related epic](https://gitlab.com/groups/gitlab-org/-/epics/8941)

Please keep in mind:
- Customers do not have access to the invoices, because those are owned by the reseller.
- Resellers do not have access to the Customers Portal or to their customers' accounts.

## Temporary renewal extensions

*Last updated on 2024-03-22.*

Temporary extensions for **Self-Managed** & **SaaS** renewals are now generally available for eligible renewal opportunities

In the event that a renewal process takes longer then intended (e.g. customer takes longer than average to sign renewal deal), customers run into a problem when their license expires at the subscription term end and they lose complete access to their GitLab instance (Self-managed or SaaS).

Temporary Renewal Extension is an internal feature built in SFDC, and is accessible from a Renewal Opportunity. It enables any Sales Rep to generate the extension on their own, without contacting Support. Extension can be generated 1-15 days before subscription end date or 1-13 days after subscription end date, with a default expiration date of 21 days after subscription end date (followed by the [grace period of 14 days](https://docs.gitlab.com/ee/subscriptions/self_managed/#subscription-expiry)).

Additional context about this feature can be found [here](https://gitlab.com/groups/gitlab-org/-/epics/10173), including a [visual timeline](https://gitlab.com/groups/gitlab-org/-/epics/10173#timeline-of-events) of subscription events related to the temporary renewal extensions.

Please share your feedback about this feature in [this issue](https://gitlab.com/gitlab-org/fulfillment/meta/-/issues/1728).


### Creating an extension (from SDFC)

Please watch SM demo [SM demo video](https://www.youtube.com/watch?v=ENRtOQ0DbkM) or [Gitlab.com/Saas video](https://drive.google.com/file/d/1HGGf8IH5fRt4ftB0pKZfHpb7owECItjX/view) for an overview of creating an extension.

The process of creating the temporary renewal extension from SDFC is also described below

1. Go to the SFDC Renewal Opportunity that needs additional processing time.
1. Click on `Request Temporary Extension` button.
1. Temporary Renewal Extension form will load, and display the related OpportunityID and ZuoraSubscriptionID.
1. Select `Reason` from the drop down, specify number of `Users` for the license, add optional `Notes`, then click `Next`.
   1. If creating a temporary renewal extension for SaaS subscription, the number of `Users` is irrelevant - extension will be created for the same number of users as the current subscription.
1. Once the extension is created, you will see a success message. Otherwise, you will see an [error message](add-link).
1. Several updates happen for a successfully created temporary extension:
   1. Several fields on the SFDC Renewal Opportunity are updated:
      1. `Temporary License Extension End Date` is updated with a date (equal to subscription end date + 21 days).
      1. `Exempt Late Renewal Automation` is set to true.
      1. `Late Renewal Exception Expiration Date` is updated with the same value as `Temporary License Extension End Date`.
   1. Temporary extension record appears on [CustomersDot Admin > Temporary Extensions page](https://customers.gitlab.com/admin/temporary_extension_history).
   1. For self-managed, a legacy trial license is created and can be accessed from the Temporary extension record in CustomersDot Admin.
   1. For SaaS, the new temporary extension (once effective) is visible on the gitlab.com group billing page.
   1. An email is sent to the customer with the subject line `[GitLab Transactions] GitLab Temporary Renewal Extension`. For self-managed, a license key is included in the email.
      - This email is also sent to the Revenue Team, as well as copied to SFDC and displayed under Contact Activity.
   1. `Access temporarily extended until YYYY-MM-DD` badge is displayed on the related subscription in the [Customers Portal](https://docs.gitlab.com/ee/subscriptions/customers_portal.html).

### Viewing and using the extension

Once the temporary renewal extension is created, the evidence of it can be seen in a few places.

- SFDC Renewal Opportunity has `Temporary License Extension End Date` field populated with a date when the extension expires.
- [CustomersDot Admin > Temporary Extensions](https://customers.gitlab.com/admin/temporary_extension_history) page lists all of the temporary extensions.
- Customer can see the `Access temporarily extended until YYYY-MM-DD` badge on the related subscription in the [Customers Portal](https://docs.gitlab.com/ee/subscriptions/customers_portal.html).
   - For self-managed, customer can download the license key and apply it to their instance.
   - For SaaS, the new expiration date is automatically synced to gitlab.com.

Once subscription is renewed, the `Access temporarily extended until YYYY-MM-DD` badge is removed. [This video](https://www.youtube.com/watch?v=cR6odsThHNY) shows what happens when the grace period of the temporary extension has elapsed, and subscription is renewed.

### Possible errors when creating an extension

| Error | Description |
|---------|-----------|
| Temporary extension can be requested 15 days prior to subscription expiry up until 13 days after subscription expiry | Temporary extension must be created 15 days before subscription end date or up to 13 days after subscription end date. |
| Subscription has already availed an extension in the current renewal term | There can only be one 21-day temporary extension per renewal. No additional extensions are allowed. |
| Subscription has an upcoming extension starting on YYYY-MM-DD | There is an existing temporary extension for the renewal, which hasn't started yet. |
| Customer account labeled as having bad debt | Billing team has identified this account as having bad debt. You will see either of these fields populated on the Zuora Billing Account: `Support hold`, `Credit hold`. |
| Customer account belongs to a trade restricted country | Customers with the SoldTo address in [these countries](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/6431#proposal) are not eligible for a temporary extension. |

All technical problems should be shared with Fulfillment according to [these instructions](https://gitlab.com/gitlab-org/fulfillment/meta/-/issues/1514#instructions-please-read-before-posting). Once the problem has been reported, please follow the existing process of submitting an [Internal Request](https://support-super-form-gitlab-com-support-support-op-651f22e90ce6d7.gitlab.io/) to Support so that your customer can receive a subscription extension. Use either the **GitLab Support Internal Requests for Global customers** or **GitLab Support Internal Requests for Federal customers** request option, then select the appropriate internal request type, either for SaaS or Self-Managed.

### Accessing GCP logs

Logs related to the Temporary Renewals Extension functionality can be accessed via GCP using this filter: `jsonPayload.functionality="temporary_extension"` ([example](https://cloudlogging.app.goo.gl/YH939WC5G5H56hbm6)).

Logs can be narrowed down by workflow:

| Worfklow | Filter | Example |
|--------------|-------------- |------------------|
| API request | `jsonPayload.workflow="api_request"` | [link to example](https://cloudlogging.app.goo.gl/KYHFRHAitHVnVFsL9) |
| Guardrail | `jsonPayload.workflow="guardrail_check"` | [link to example](https://cloudlogging.app.goo.gl/A41vZPYJSM8RwdpP6) |
| Self-managed extension | `jsonPayload.workflow="create_sm_extension"` | [link to example](https://cloudlogging.app.goo.gl/UsWNtG3HPS8XaHqu9) |

Additional attributes can be applied:

| Attribute | Filter | Example |
|--------------|-------------- |------------------|
| `subscription_id` | `jsonPayload.zuora_subscription_id="8a8aa0008aff6981018b0619305f4d1d"` | [link to example](https://cloudlogging.app.goo.gl/JvfMNogyuA1HyGA59) |
| `salesforce_opportunity_id` | `jsonPayload.salesforce_opportunity_id="8a8aa0008aff6981018b0619305f4d1d"` | [link to example](https://cloudlogging.app.goo.gl/LZTuShAukfHwAEU87) |

## Subscription Management Features

List of features managed by the [subscription management group](https://about.gitlab.com/direction/fulfillment/subscription-management/) within the [Fulfillment section](https://about.gitlab.com/direction/fulfillment/).

#### Subscription Renewal and Auto-Renewal

Customers can renew their SaaS or Self-managed subscriptions using either auto-renewal or manual renewal. By default, subscriptions are set to auto-renew. Customers who are not eligible for auto-renew or do not want to auto-renew their subscription can manually renew their subscription through the `Renew` button on the subscription card in the [Customers Portal](https://customers.gitlab.com/).

##### Auto-Renewal eligibility

As of 2023-01-21, almost all of the subscriptions enrolled in auto-renewal (identified in Zuora as `Subscription.TurnOnAutoRenew = Yes`) will be scheduled for auto-renewal and processed. Certain exceptions exist:

We will not attempt to auto-renew if:

- Self-Managed customer is not on Cloud Licensing
- Customer is not on QSR
- Customer is on QSR, but QSR failed and there’s overage
- Customer’s credit card is expired

Auto-renewal will fail if:

- Credit card payment failed
- EoA subscription has more than 25 users
- Another system error that wasn’t accounted for previously

Accounts and Subscriptions excluded from auto-renewal:

1. Subscriptions purchased via a Reseller or another Channel partner (where the customer didn’t transact with GitLab directly).
2. Subscriptions for Education, OSS, or Startup (i.e. Community Programs).
3. Subscriptions with non-standard term (not in 12 month term increments).
4. Multi-year subscriptions (with term greater than 12 months). This is a temporary measure until [this epic](https://gitlab.com/groups/gitlab-org/-/epics/9591) is done.
5. Accounts with the following settings in Zuora:
   1. `Account.PO Required = Yes` (customer notifies GitLab they have a “no PO, no Pay policy”, booking requirement and pre-billing).
   2. `Account.Portal Required = Yes` (customer notifies GitLab that they require invoices to be manually uploaded to a billing portal, and includes non-PO, PO, contract, or SOW).
   3. `Account.Support Hold = Yes` (customers are placed on support hold when accounts become >90 days past due without payment commitment).
   4. `Account.Credit Hold = Yes` (customers are placed on credit hold when any balance is written off to bad debt)

There’s an automated process (Zuora Workflow) that sets `Subscription.TurnOnAutoRenew__c` to `No` for the use cases listed above.

##### GitLab Docs for SaaS (public)

- [Preparing for renewal](https://docs.gitlab.com/ee/subscriptions/gitlab_com/index.html#prepare-for-renewal-by-reviewing-your-account)
- [Renewing a subscription](https://docs.gitlab.com/ee/subscriptions/gitlab_com/index.html#renew-or-change-a-gitlab-saas-subscription)
- [Automatic subscription renewal](https://docs.gitlab.com/ee/subscriptions/gitlab_com/#automatic-subscription-renewal)

##### GitLab Docs for Self-managed (public)

- [Preparing for renewal](https://docs.gitlab.com/ee/subscriptions/self_managed/#prepare-for-renewal-by-reviewing-your-account)
- [Renewing a subscription](https://docs.gitlab.com/ee/subscriptions/self_managed/#renew-subscription-manually)
- [Automatic subscription renewal](https://docs.gitlab.com/ee/subscriptions/self_managed/#automatic-subscription-renewal)

##### Other public docs

- [Auto-renewals FAQ](https://about.gitlab.com/pricing/faq-improved-billing-and-subscription-management/#auto-renewals)
- [Community programs renewal workflow](/handbook/marketing/developer-relations/community-programs/automated-community-programs/#renewal)

##### Developer docs

- [Renewal: UX Scorecard](https://gitlab.com/gitlab-org/gitlab-design/-/issues/2160)
- [Creating a subscription in Zuora to renew it in a local environment](https://gitlab.com/gitlab-org/customers-gitlab-com/-/blob/main/doc/zuora/zuora_tips_and_tricks.md#create-a-subscription)
- [Auto-Renew: Custom auto-renew feature](https://gitlab.com/gitlab-org/customers-gitlab-com/-/blob/main/doc/flows/custom_auto_renew/index.md)
- [Auto-Renew: Experience Flowchart (password protected)](https://www.figma.com/file/4IAnGWRKIxIKqMLUDxWf1A/Autorenew-experience-flowchart?node-id=0%3A1&t=x31XThz7dVzhhIaK-0)
- [Generating coupon codes for community programs renewals](https://gitlab.com/gitlab-org/customers-gitlab-com/-/blob/main/doc/community_programs/coupons.md#coupons)

##### Related terminology

- [QSR](https://docs.gitlab.com/ee/subscriptions/quarterly_reconciliation.html)
- [True-up](https://docs.gitlab.com/ee/subscriptions/quarterly_reconciliation.html)
- [Seat usage](https://docs.gitlab.com/ee/subscriptions/gitlab_com/index.html#how-seat-usage-is-determined)
- [Seats owed](https://docs.gitlab.com/ee/subscriptions/gitlab_com/index.html#seats-owed)

#### Quarterly Subscription Reconciliation (QSR)

With QSR, paying for the seat overages is easy to understand, saves precious time, and results in a fairer billing model for our customers. SaaS and Self-Managed customers have their seat usage reviewed on quarterly basis, and receive an invoice for any overages. Some customers may choose to opt out of QSR (via Contract amendment), in which case they will default to the existing Annual true-up process. Using operational data around seat utilization, we aim to automate as much as possible for the seat overage billing process. This allow us to:

1. Drive sales efficiency at renewal: minimize the friction at renewal of dealing with seat overages. For smaller accounts, this is the foundation for fully automated renewals, which completely frees up sales capacity to focus on larger accounts.
2. Improved customer satisfaction: quarterly reconciliation reduces customer billing surprises and also helps reduce customer costs for users added later into the annual term.

##### QSR eligibility

Accounts and Subscriptions excluded from QSR:

1. Subscriptions purchased via a Reseller or another Channel partner (where the customer didn’t transact with GitLab directly).
2. Subscriptions for Education, OSS, or Startup (i.e. Community Programs).
3. Subscriptions with non-standard term (not in 12 month term increments).
4. Multi-year subscriptions (with term greater than 12 months). This is a temporary measure until [this epic](https://gitlab.com/groups/gitlab-org/-/epics/9591) is done.
5. Accounts with the following settings in Zuora:
   1. `Account.PO Required = Yes` (customer notifies GitLab they have a “no PO, no Pay policy”, booking requirement and pre-billing).
   2. `Account.Portal Required = Yes` (customer notifies GitLab that they require invoices to be manually uploaded to a billing portal, and includes non-PO, PO, contract, or SOW).
   3. `Account.Support Hold = Yes` (customers are placed on support hold when accounts become >90 days past due without payment commitment).
   4. `Account.Credit Hold = Yes` (customers are placed on credit hold when any balance is written off to bad debt)

There’s an automated process (Zuora Workflow) that sets `Subscription.TurnOnSeatReconciliation__c` to No for the use cases listed above.

##### QSR Process

1. When a new subscription is purchased or an existing subscription renewed, it is opted into Quarterly Reconciliation.
   1. `Subscription.TurnOnSeatReconciliation__c` variable is set to Yes.
   2. `Subscription.ContractSeatReconciliation__c` variable is set to Yes.
2. Usage data is gathered daily
   1. SaaS: Usage data is collected directly from GitLab.com using the namespace API.
   2. Self-Managed: Data is gathered via Cloud Licensing.
3. Seven days prior to reconciliation, an alert displayed to the customer informing them of the overage and a process to be taken place ([SaaS](https://gitlab.com/gitlab-org/gitlab/-/issues/215187/), [Self-Managed](https://gitlab.com/gitlab-org/gitlab/-/issues/332041)).
4. 3 / 6 / 9 months after Subscription Start Date, an automated reconciliation occurs. Any overage incurred during Q4 is forgiven.
5. 12 months after Subscription Start Date - [renewal occurs](#subscription-renewal-and-auto-renewal).

**How individual automated reconciliation works:**

This functionality lives in Customers Portal and runs daily at midnight UTC. Please note that this process is shifted by 6 days for Self-Managed subscriptions, so that we have enough time to collect seat usage data from the instance.

1. Find all subscriptions where `TurnOnSeatReconciliation__c` is equal to Yes.
2. Calculate overage by checking what the Max User count was over the previous quarter.
3. Store the seat overage, preview and store the invoice amount against Zuora.
   1. Send an email to the customer with the exact overage quantity and invoice amount they can expect to pay (subject: "Important information about your GitLab subscription").
   2. Copy this email to SFDC, and display under the Contact Activity.
4. Create an Open SFDC Opportunity, store that OpportunityId on the Reconciliation record.
5. 7 days later, create an amendment in Zuora to add additional seats at Effective Price. The new seat count is effective at the end of the quarter and through the end of Subscription Term (no historical chargeback for overage).
   1. Amendment Name is set to `Automated seat reconciliation`.
6. Generate an invoice and apply payment.
   1. If payment fails, or no payment method is on file, reconciliation doesn’t happen. Email is sent (subject: “Your GitLab subscription failed to reconcile”). Copy this email to SFDC, and display under the Contact Activity.
   2. For Sales Assisted customers, an invoice is generated and sent for payment (from Zuora). Account specific payment terms apply.
7. Send an email with the Receipt from Zuora (via a scheduled Zuora Workflow).
8. Send an email that reconciliation has occurred, include provisioning instructions (subject: “Your GitLab subscription has been reconciled”). This email is copied to SFDC and displayed under Contact Activity.
9. Additional seats are provisioned.
   1. For SaaS customers, provision additional seats immediately.
   2. For Self-managed customers, provision additional seats in the next instance sync (24 hrs), or customer can trigger the update from within their instance.
10. Update SFDC Opportunity to Closed Won, and created related SFDC Quote and Quote objects.
1. If reconciliation fails for any reason, SFDC Opportunity remains open.

##### QSR and SFDC Opportunities

As of 2023-05-22, SFDC Opportunities created for QSR have 2 new fields populated: `QSR Status` and `QSR Notes`. Here's a summary of what you can expect to see in these fields and suggested action for Sales Reps.

| QSR Status | QSR Notes | Stage | Suggestion Action | Additional Notes |
| :-------- | :-------- |:-------- |:-------- |:-------- |
| Pending | Reconciliation record link (e.g.cust....gitlab.com/admin/r../12345) | 6-Awaiting Signature | No action | The QSR will be auto reconciled within 7 days. |
| Processed | Reconciliation record link (e.g.cust....gitlab.com/admin/r../12345) | Closed Won | No action |  |
| Failed | Failed to amend subscription/ amount does not match latest preview | 6-Awaiting Signature | AE to set to Closed Lost. | The QSR has become redundant, since the customer purchased additional seats after the QSR has already been created. |
| Failed | multiple_rate_plans | 6-Awaiting Signature | AE to contact customer, advising that extra seats must be purchased. | QSR cannot be processed as the customer has multiple rate plans on the subscription. |
| Failed | - card was declined<br/>- card does not support this type of purchase<br/>- card number is incorrect<br/>- expiration year is invalid<br/>- expiration month is invalid<br/>- has insufficient funds, or any other payment_declined/ transaction declined error. | 6-Awaiting Signature | Optional: AE to contact customer. | Customer will receive a notification that their card was declined, together with the steps they need to take to resolve. Once the customer updates their payment method, QSR will be re-processed. |

##### FAQs

1. **How do I see the status of QSRs?**
   1. Log in to [Customers Portal Admin](https://customers.gitlab.com/admin), and navigate to [Reconciliations](https://customers.gitlab.com/admin/reconciliation) section.
   2. Input subscription name (i.e. "A-S00039268") in the filter box, and do a search.
   3. This will display all of the reconciliation records for that subscription, and you'll be able to see each of their statuses.
2. **Customer is enrolled in QSR, but no reconciliations have been performed.**.
   1. QSR could have been skipped for various reasons, including declined payment. Please follow the instructions in point `1` for looking up the QSR status.
3. **Customer is enrolled in QSR, but reconciliation has been skipped with `reconciliations_disabled` reason code.**
   1. Customer’s Self-Managed instance must be activated with Cloud License. This will enable seat usage collection, so that we can perform the reconciliation.
4. **Customer is on EOA or another plan at a discounted per-seat price. Will their QSR amendment be based on the discounted/effective or list price?**
   1. QSR Amendment for additional seats will be based on the effective price.
5. **Does QSR respect the EOA business rule of 25 maximum seats at a discounted price?**
   1. Kind of - we will skip the QSR if we try to amend EOA-type subscription for more than 25 seats. [Click here](https://customers.gitlab.com/admin/reconciliation?&f%5Berror_message%5D%5B98073%5D%5Bo%5D=like&f%5Berror_message%5D%5B98073%5D%5Bv%5D=MaxAdditionalSeatsExceededError&model_name=reconciliation&sort=reconcile_on&sort_reverse=true) to see a list of all QSRs that errored because of this rule.

##### Additional documentation

- [Customer-facing documentation](https://docs.gitlab.com/ee/subscriptions/quarterly_reconciliation.html)
- [Finance team’s documentation about QSR refunds and escalations](https://gitlab.com/gitlab-com/Finance-Division/finance/-/wikis/WIP%20Quarterly%20Subscription%20Reconciliation%20Escalation#quarterly-subscription-reconciliation-process-post-billing)
- [Process illustrations](https://gitlab.com/groups/gitlab-org/-/epics/5560#illustration)

#### Subscription Display

1. For sales assisted subscriptions, there could be cases wherein a single subscription term has multiple plans (e.g. premium, ultimate). This could be because the subscription was sold with a plan and mid-term the plan was changed to another one. In our new subscription card design, in such cases only the latest version of the subscription will be shown and the details of the old plan will not be shown. The start date of the new plan should be shown correctly as starting from the date from which the new plan is active. More details in this [issue](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/6103) (internal).

## CustomersDot Admin Panel

The target audience is the internal GitLab team, and covers the [admin panel](https://customers.gitlab.com/admin/) of the [Customers Portal](https://customers.gitlab.com). Customers or subscription managers should refer to the [Customers](https://docs.gitlab.com/ee/subscriptions/) section of GitLab's user documentation for help in using the portal, or the [licensing FAQ](https://about.gitlab.com/pricing/licensing-faq/) for questions on subscriptions such as how users are counted.

### Log in

File an access request for [customers.gitlab.com/admin/](https://customers.gitlab.com/admin/sign_in) ([example access request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/14359)) to get access.

Once access is granted, either go to [customers.gitlab.com/admin/](https://customers.gitlab.com/admin/sign_in) and click “Sign in with Okta” or go to your Okta App and look for the Customers Portal App.

### Searching

When using the admin panel search, be aware that results will be based on searching only one field at a time. For example, entering a person's full name will likely provide no results because the system will not search first and last name at the same time, only one or the other.

We recommend searching by email address, partial email address (e.g. company domain), or company name. When searching by name, enter only first *or* last name.

After your initial search, you can further filter the search results.

In the search results, any account which has a subscription tied to it will have a "Subscription" badge next to their name.

### Customers

#### Search for a customer

1. Navigate to `Customers` in the admin panel.
1. Enter details of a customer to search for in the empty text box. (E.g. email address or domain of the customer).
1. Click on `Refresh` or hit `Enter` on your keyboard to initiate the search.
1. You can refine your current search by clicking on `Add filter`.
1. Select one or more additional filters that should be applied.
1. Click on `Refresh` again.

#### Update customer details

**Note:** The updated customer details are synced to the matching Zuora BillTo/SoldTo contact.

1. Select the correct customer by clicking on the ✎ icon in the `Customers` section.
1. You can now update `First name`, `Last name`, and `Email`.
1. Click on `Save`.

Deactivate login for Customer

If you want to update the physical address of the customer or other details, you need to impersonate the customer.

1. In the  desired customer's detail view, click on `Impersonate`.
1. You are now get redirected to impersonate the user.
1. Follow the [user documentation on updating details](https://docs.gitlab.com/ee/subscriptions/#change-your-personal-details).

#### Deactivate login for a customer

1. Select the correct customer by clicking on the ✎ icon in the `Customers` section.
1. Untick `Login activated`
1. Click on `Save`.

The customer is now blocked from accessing their Customers Portal account.

**Note:** That does not affect the ability to access their GitLab.com account.

#### See all Zuora subscriptions of a customer

1. In the desired customer's detail view, click on `Zuora Subscriptions`.
1. You will see a list of all Zuora subscriptions for this customer including:
   - Name of the subscription
   - Type (SaaS or SM)
   - Start date
   - End date
   - Owed seats
   - Cloud Licensing turned on or off
   - Operational Metrics turned on or off
   - Quaterly Coterms turned on or off
   - Auto Renew turned on or off

**Note:** Owed seat = Max seats used - seats in subscription.

#### View history of customer account changes

1. In the desired customer's detail view, click on `History`.
1. You will see a list of all events and logs that happened to the customer record.

**Note:** If a user is `admin:xyz@gitlab.com` in a log line, that indicates a change on the customer's record that was done via the admin panel.

#### One-time sign-in url

With the `one-time sign in url` a customer is able to directly sign in to their Customers Portal account. This works for customers that have or don't have a GitLab.com account linked to their Customers Portal account.

1. Select the correct customer by clicking on the ℹ️ icon in the `Customers` section.
1. Scroll down and copy the link under `One time sign in url`.
1. Share the link with the authorized customer.

**Note:** A new one-time sign-in link will be generated after the previous one has been used. The `one-time sign in url` does not log the customer into their GitLab.com account, only their Customers Portal account.

#### GitLab Groups

If a customer has a connected GitLab.com user account, then a list of namespaces will show with relevant information including current plan.

**Note:** This only works as long as the customer's `access_token` is valid.

The list of namespaces are:

- personal namespace
- top level group namespaces where user is `Owner`

### Billing Accounts

The billing account is the representation of a billing entity which is mostly connected to an organization. The billing account has data associated to Zuora, SFDC, important company information and all billing account memberships.

#### Search for a billing account

1. Navigate to `Billing accounts` in the admin panel.
1. Enter details of a billing account to search for in the empty text box. (E.g. name).
1. Click on `Refresh` or hit `Enter` on your keyboard to initiate the search.
1. You can refine your current search by clicking on `Add filter`.
1. Select one or more additional filters that should be applied.
1. Click on `Refresh` again.

#### View history of billing account changes

1. In the desired billing account's detail view, click on `History`.
1. You will see a list of all events and logs that happened to the billing account.

#### See the Bill_To and Sold_To contact of a billing account

1. Navigate to the desired billing account's detail view.
1. Under ℹ️ `Show` you will find the `Bill_To` and `Sold_To` contact.
1. Click on the desired contact if you want to find more information about it.

**Note:** There can only be one `Bill_To` and one `Sold_To` contact associated to a billing account. They can be the same contact.

#### See all invoices of a billing account

1. In the desired billing account's detail view, click on `List Invoices`.
1. You will see a list of all invoices for that billing account including:
   - ID
   - Date
   - Amount
   - Payment status
   - Balance
   - Due date

**Note:** This view is also accessible for CDot admins with `read only` permissions.

#### See all payment methods on file for a billing account

1. In the desired billing account's detail view, click on `List Payment Methods`.
1. You will see a list of all payment methods on file for that billing account including:
   - Credit card:
     - Ending in
     - Card type
     - Name on card
     - Expiration date

   - ACH:
     - Routing Number
     - Account Number
     - Account Type
     - Bank Name
     - Account Name

**Note:** This view is also accessible for CDot admins with `read only` permissions.

#### See all Zuora subscriptions of a billing account

1. In the desired billing account's detail view, click on `Zuora Subscriptions`.
1. You will see a list of all Zuora subscriptions for this billing account including:
   - Name of the subscription
   - Type (SaaS or SM)
   - Start date
   - End date
   - Owed seats
   - Cloud Licensing turned on or off
   - Operational Metrics turned on or off
   - Quaterly Coterms turned on or off
   - Auto Renew turned on or off

**Note:** Owed seat = Max seats used - seats in subscription.

### Billing Account Contacts

The billing account contact represents the billing account's contact details that are used to send invoices, notices, etc. Other information such as location based data is used for tax related calculations. A contact can be a `Bill_To` or a `Sold_To` contact (or the same if applied that way).

There can only be one `Bill_To` and one `Sold_To` contact for a billing account. It is possible to use the same contact information (e.g. email address) over multiple billing accounts.

#### Search for a billing account contact

1. Navigate to `Billing account contacts` in the admin panel.
1. Enter details of a billing account contact to search for in the empty text box. (E.g. name, email).
1. Click on `Refresh` or hit `Enter` on your keyboard to initiate the search.
1. You can refine your current search by clicking on `Add filter`.
1. Select one or more additional filters that should be applied.
1. Click on `Refresh` again.

#### Update an existing billing account contact

1. Navigate to the `Billing account contacts` section.
1. Search for the needed billing account contact (e.g. using `email address`).
1. Select the proper billing account contact and click on `Edit`.
1. You can now choose to update:
   - First name
   - Last name
   - Work email
   - Address 1
   - Address 2
   - Country
   - State
   - City
   - Postal code
1. Click `Save`.
1. The changes will be synced back to the corresponding Zuora contact immediately.

#### Add new billing account contact to CustomersDot

If a Zuora contact is not available in CustomersDot, but in Zuora, the contact can be added through the admin panel.

1. Navigate to the `Billing account contacts` section.
1. Click on `+ Add New`.
1. Provide the `Zuora contact ID`.
1. Click on `Save`.

This will create a contact record in CustomersDot that is in sync with Zuora. This directly assigns all the billing account contact attributes from Zuora to the created contact.

**Note:** It is possible that a contact doesn't have a `Billing account` attached in CustomersDot (e.g. if it does not exist in Customers Portal).

#### View history of billing account contact changes

1. In the desired billing account contact's detail view, click on `History`.
1. You will see a list of all events and logs that happened to the billing account contact.

### Billing Acccount Memberships

The billing account membership defines the relation between a customer and a billing account. The customer will be able to see the subscription in their Customers Portal account if there is a billing account membership with an active subscription.

Currently a customer can only have one billing account membership.

#### Add a new billing account membership

Adding a new billing account membership between a customer and a billing account results in the customer becoming a [subscription management contact](/handbook/support/license-and-renewals/workflows/customersdot/associating_purchases/#add-subscription-management-contact-workflow).

1. Navigate to the `Billing account memberships` section.
1. Select the `+ Add new` action.
1. Select the proper customer and CustomersDot billing account for the new subscription management request.
1. Click `Save`.

**Note:** We display the `Zuora account name` and `Zuora account ID (in brackets)` in the list of billing accounts.

#### Delete the billing account membership of a customer

1. Navigate to the `Billing account memberships` section.
1. Open the desired billing account membership and select `x Delete` action.
1. Confirm the correct billing account membership was selected.
1. Select `Yes, I'm sure`.
1. See the `Billing account membership successfully deleted` success notification.

### Trials

#### Check, change, or extend trial expiry date

1. Find the customer who initiated the trial.
1. Click on the `GitLab Groups`.
1. If the trial is expired and needs to be extended, click on the `Renew Trial` button.
1. Change the trial date as necessary and click on `Update`. **Warning:** Do not change the date to a date prior to today's date in UTC timezone.

### Licenses

1. Navigate to the `Licenses` section.
1. From this page, you can:
   - View the list of most recently generated licenses
   - Search for a license by name
1. Scroll to the right and click on ℹ️ icon to show details of a license.

The details of a license contains the following information:
- Type: Cloud, offline cloud or legacy license.
- Trial: Displays if it's a trial license or not.
- Name
- Company
- Email
- Issued at, starts at and expires at
- User count
- Zuora subscription name and link
- GitLab plan

#### Find Usage Data For a Customer By License Lookup

The following process allows you to view Service Ping usage data for all servers with a given license installed.

1. Navigate to the `Licenses` section.
1. Search for the customer using the search box (Make sure you are searching for the name as it is in Salesforce).
1. All licenses for the customer will be returned, use the issued and expiry dates to determine which is the active license.
1. Scroll to the right and click on ℹ️ icon to show details of a license
1. Click on `Lookup hostnames` under `Hostnames with this license` at the bottom of the screen. This will open version.gitlab.com
 - version.gitlab.com does not yet support Okta so you will login with your GitLab account.
1. You will see one row for each server that has returned usage data and has this license installed. Look at the `Usage Ping Last Checked On` column to determine which entries contain recent usage ping data.
1. Click on the server name to load the usage ping details.

This [video tutorial](https://gitlab.edcast.com/insights/card-e7589a95-0229-4d20-9c54-ee84750020df) walks through an example of how to find the license details for a particular customer.

### License Seat Links

The `License seat links` page in CustomersDot provides visibility into current usage and version data for Self Managed customers on [Cloud Licensing](https://about.gitlab.com/pricing/licensing-faq/cloud-licensing/) or [Offline Cloud Licensing](https://about.gitlab.com/pricing/licensing-faq/cloud-licensing/#offline-cloud-licensing). One record is created for each data sync, representing point-in-time data that can help to show changes in usage over time or the date that a customer exceeded a certain seat count. For Cloud License enabled customers, a record will be created once per day as part of [License Sync](https://docs.gitlab.com/ee/subscriptions/self_managed/#subscription-data-synchronization). For Offline License enabled customers, a record is created whenever the customer manually submits their usage data to GitLab, which is requested at a cadence of once per month.

On this page, you can search by `Company`, `Subscription name`, or `Hostname` to see all license usage for a specific customer. The following metrics are reported with each sync:

1. `License user count` - the number of seats purchased as part of the customer's subscription
1. `Billlable user count` - the current count of active, billable users at the time of the sync
1. `Max historical user count` - the highest value of billable users recorded during the current subscription term
1. `GitLab version` - the version of GitLab at time the customer is on at time of sync

### Orders

1. Navigate to the `Orders` section.
1. Search for the order using the search box. You can use the following parameter for your search:
   - Order ID
   - Billing account
   - Subscription name
   - Gl namespace
   - Gl namespace name
1. Click on the ℹ️ icon on the right to show all details of an order.
1. Click on the 📕 icon on the right to see the history of an order.

### Reconciliations

1. Navigate to the `Reconciliations` section.
1. Search for the customer using the search box (Make sure you are searching for the name as it is in Salesforce).
1. Any reconciliations for the customer will be returned, and the following information:
   - Customer name
   - Subscription name with link to Zuora
   - Reconciliation status
   - Reconciliation date
   - Reconciliation finished/done date
   - Skip reason (if applicable)
   - User count (after reconciliation)
   - Invoiced amount
   - Error message (if applicable)

### Sales use cases of CustomersDot Admin panel

#### Lookup all issued licenses for a customer/prospect

It provides an understanding of who and how many trials they have requested, when, and for how many users. [Self-Requested Trials](https://about.gitlab.com/free-trial/) are not easily reported.

#### Cross-reference a license with version.gitlab.com

It's the only way to search for usage ping data if the server name is not known. For example a customer acmeinc.com uses acmeinc.ninja. There is no straightforward way to find this.

#### Quickly find which email address was used to deliver a license

It is important to know who received the license for further troubleshooting as CustomersDot is the SSOT for license information.

##### References

- [Troubleshooting: Licenses](/handbook/business-technology/enterprise-applications/quote-to-cash/troubleshooting/#licenses)
- [Changing License Owner (Contact Support)](/handbook/business-technology/enterprise-applications/quote-to-cash/troubleshooting/#how-do-i-change-the-license-owner-for-self-managed-instances-with-licensegitlab)

## Action plan for Fulfillment-impacting bugs

If a bug is discovered that impacts Fulfillment, including provisioning, purchasing, billing, subscription data, etc., please do the following:

**Reporting the issue**

1. Open a new [Fulfillment Meta bug intake issue](https://gitlab.com/gitlab-org/fulfillment-meta/-/issues/new) (select the bug_intake template) outlining what is known about the bug.
   1. Tag [Fulfillment Product Management](/handbook/engineering/development/fulfillment/#fulfillment-product-management) by mentioning the `@fulfillment-group/leadership/fulfillment-pm` group.
   1. Assign the issue to `ofernandez2` for review and action.
1. Post the link to the issue on Slack in #s_fulfillment and in #business-fulfillment-sync for broad awareness and review.

**Notifying appropriate DRIs**

The following individuals should be looped into the issue, depending on the impact of the bug:
1. For billing and revenue-impacting issues: `Sarah McCauley - Director, Billing & AR`
1. To determine impacted subscriptions and/or automation of Zuora solutions: `Jessica Salcido - Finance Systems Administrator`
1. For bookings impact, and/or to assess and coordinate Salesforce solution needs: `Jesse Rabbits - Sr. Manager, Deal Desk`
1. If customer outreach is needed, PM should work with: `Lyle Kozloff - Director of Support, Global Readiness`
1. For product monetization decisions needed: `Justin Farris - Sr. Dir, Product Monetization`

## Fulfillment debugging and FAQ

### License Activation issues

**License won't activate due to a true-up or seat overage mismatch**

1. For customers on 14.3+ we allow activating a license even if there's a 10% seat overage [issue #333851](https://gitlab.com/gitlab-org/gitlab/-/issues/333851). You can learn more about this [here](https://gitlab.com/gitlab-org/gitlab/-/blob/master/doc/administration/license.md#users-exceed-license-limit-upon-renewal) and see the associated [MR #67507](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/67507) and [MR #67508](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/67508)
1. With Cloud Licensing, we won't block activation due to mismatch seats. If a customer applies a license with less seats than their currently active users, we will reconcile it in their following QSR or true-up event.

**What type of connection does the GitLab instance require to activate Cloud Licensing?**

The instance would need to have a 443 port connection to customers.gitlab.com in order to activate. This is also used for license synchronization as outlined in [our documentation here](https://docs.gitlab.com/ee/subscriptions/self_managed/#subscription-data-synchronization).

### Data collection

**Can customers opt out of telemetry or sharing license sync data?**

The data transmitted with Cloud License is covered in [this documentation](https://docs.gitlab.com/ee/subscriptions/self_managed/#license-sync). In short, it's aggregate user counts and some license metadata. This data is required for Cloud Licensing. It's intended to only include necessary data to support our needs for administering a license, supporting future renewals, supporting add-ons, and any seat reconciliations.

You can look at sample code that generates the counts by searching for `subscription` events in [metrics.gitlab.com](https://metrics.gitlab.com/).

**What is Operational vs Optional Data?**

Our [service usage data](/handbook/legal/privacy/customer-product-usage-information/) primarily aggregate counts from your instance (e.g. counts of issues or MRs) and is sent to GitLab on a weekly (or slower) cadence.

1. Operational Data: This is the data that is tied to your subscription account/license. Our goal with this data is to capture aggregate counts to help the GitLab Customer Success and Sales teams help customers better adopt GitLab and get value out of their investment. Those counters can be viewed on metrics.gitlab.com by searching for "operational" and looking for the operational category. These operational events are agnostic of how you've activated your instance.
2. Optional Data: [Optional Data](https://metrics.gitlab.com/?q=optional) is a similar type of metric (aggregate counts) but a much larger set than the Operational metrics. This is configured/opted-out by you, in your instance, and has nothing to do with your subscription. If you choose to share that data our Product teams would appreciate the insights to understand where to invest R&D resources to continue to mature our platform. Otherwise, you can ignore for your renewal and follow the opt-out steps documented [here](https://docs.gitlab.com/ee/development/service_ping/index.html#disable-service-ping).

**Can a customer send subscription data ad-hoc, while keeping their GitLab instance airgapped/not connected to the internet?**

Please see [Offline Cloud Licensing](https://about.gitlab.com/pricing/licensing-faq/cloud-licensing/#offline-cloud-licensing) for more information.


## Fulfillment Roadmap Prioritization

### Principles

Across our stable counterparts, we follow four key principles to keep us focused on delivering the right results. These principles are not absolute, the intent is for them to guide our decision-making.

**Make conducting business with GitLab seamless**

When customers choose to purchase GitLab they've already decided to unlock additional value by accessing the features or services enabled by a transaction. We strive to make the transaction experiences fade into the background, helping customers unlock this additional value as easily as possible. This creates a better customer experience and results in accelerated growth for GitLab.

This means that in every initiative we question the need for complexity. We strive to build functionality that is easy to understand and use, and make sure it works flawlessly for customers of all types. As much as we can, we won't require a customer to speak to a sales representative and will allow them to choose whether to transact via online self-service tools.

**Build a strong foundation so GitLab can scale**

Fulfillment systems are the foundational layer for many commerce activities within GitLab. Our systems provision licenses for customers, are the source of data for multiple KPIs and data models, and interact directly with [Zuora](/handbook/business-technology/enterprise-applications/guides/zuora/) and Salesforce. These systems need to be reliable, scale with demand, and allow other teams to collaborate.

We regularly invest in our foundations and will continue to pause new feature development in favor of foundations whenever we feel that our foundational systems aren't robust enough. We established a Fulfillment Platform group in FY23 for focused efforts in this area.

**Use data to make decisions and measure impact**

We have many sensing mechanisms at our disposal: feedback routed via our GTM teams, meetings with business counterparts, customer feedback from user research, and improvement suggestions raised by GitLab team members and members of the wider community in our issue tracker.

We're also improving how we use data as a sensing mechanism to set direction and prioritization. Understanding our funnel is paramount in building a seamless commerce experience for our customers. Fulfillment teams in collaboration with Growth are instrumenting each point in our transaction funnels so we can use data to inform our strategy and direction.

**Iterate, especially when the impact of a change is sizeable**

Iteration is one of the most challenging values to follow, especially within Fulfillment. Oftentimes our work needs to be bundled and aligned closely with external announcements or communications. Even so, we strive to break work down as much as possible and decouple functionality releases from broader announcements. Doing this expedites delivering value to our customers and the business.

**Minimize and remove business logic from the GitLab application code**

In the past, we have embedded significant business logic into the GitLab instance code directly. For example, we have logic in our licensing system that checks at the instance level whether the customer license should be activated based on licenses paid for, etc. This causes significant issues as we evolve our business policies, which we can't then reflect in past GitLab versions that we support.

We will minimize such logic and remove it from the application code whenever possible, seeking alternative solutions.

### Prioritization Process

Our roadmap is prioritized and scheduled following our [Project management process](/handbook/engineering/development/fulfillment/#project-management-process). We aim to update this roadmap every month as a part of our milestone [planning process](/handbook/engineering/development/fulfillment/#planning).

To request work to be added to the Fulfillment roadmap, please follow our [intake request process](/handbook/engineering/development/fulfillment/#intake-request). Changes in priorities of this roadmap follow our [prioritization process](/handbook/engineering/development/fulfillment/#prioritization).

The source of truth for all Fulfillment projects is our **[in-product Fulfillment Roadmap](https://gitlab.com/groups/gitlab-org/-/roadmap?state=all&sort=end_date_asc&layout=QUARTERS&timeframe_range_type=THREE_YEARS&label_name%5B%5D=Fulfillment+Roadmap&progress=COUNT&show_progress=true&show_milestones=false&milestones_type=GROUP)**.

By nature of our [direction](https://about.gitlab.com/direction/fulfillment/), Fulfillment works mostly on highly cross-functional projects where either or both of the following are true:
1. Many cross-team dependencies: project execution relies on collaboration with other teams, with significant coordination of time and resources required.
1. Downstream impacts: projects may change how other teams operate (e.g., Field Operations, Enterprise Apps, Billing) and may also impact the success of their efforts (e.g., achieving sales efficiency targets, accomplishing e-commerce conversion goals)

To focus on the most impactful work, Fulfillment’s prioritization process seeks to:
1. Prioritize the highest ROI initiatives as measured by long-term impact on GitLab, Inc’s value. (Note: “cost to build” is a key consideration in the I of the ROI calculation)
1. Provide future visibility into priorities to adequately plan cross-team and cross-functional resource needs.
1. Minimize waste and churn due to re-prioritization mid-execution.

#### Prioritization Criteria

A project will be prioritized in the Fulfillment roadmap based on the considerations below.
1. Revenue impact potential
   1. Value of unlocking new sales channels
   1. Sales efficiency improvements and reduction in time spent by a field team member to close a deal, this includes eliminating sales team involvement on most transactions
   1. Conversion improvements
   1. Risks and compliance issues (negative revenue potential)
1. Operational cost reduction
   1. Reduction in support costs
   1. Seamless transactions with GitLab, efficiency gains, and improved customer satisfaction.
1. Foundations to unlock opportunities
   1. Value of new or improved data to inform future opportunities
   1. System robustness to support 10x customers
   1. Value of the foundational work to unlock other opportunities
   1. Number of GitLab team members able to contribute towards e-commerce improvements
   1. Work that will help us scale (support more customers, improve operations, simplify business processes, etc.)
1. Confidence level around the impact and solution
   1. Low for initiatives that haven’t been properly scoped or researched. PM/UX/Eng and cross-functional partners will increase the confidence by scoping the initiative.
1. Ease of implementation
   1. Consider the time and resources required to complete the initiative.
   1. Consider a solution that is long-term sustainable, and corresponds to the revenue/cost impact estimated.
   1. For efforts that are not well understood, we will start by assuming a larger effort to account for unknowns. As we do some scoping, we can refine the cost/complexity.

All initiatives, regardless of who requests them, will be evaluated based on this same criteria.

Some initiatives will have a direct impact on these criteria, but others will have an indirect impact. We will consider indirect impact as part of the prioritization.

When scoping new solutions we will prefer those that best allow GitLab to scale and accelerate future work. These solutions often require more upfront foundational work, which we will include in the initial scope. In cases when we decide to accelerate a solution by skipping on some foundational work, we will add this foundational work as a separate line item to the roadmap.

**A note on Customer Satisfaction**: to understand the impact of efforts aimed at improving customer satisfaction, we should estimate the indirect impact of improving CSAT on revenue and cost. For example, by reducing the number of steps or improving the steps required to purchase we will see an increase in conversion rate and thus revenue.

#### Scheduling new work

Prioritization based on the established criteria will drive the order in which work is scheduled to be completed. The product team will review overall prioritization regularly. Before changing priorities, will consider:
1. Efficiency and morale impact of disrupting ongoing efforts
1. Impact of changes to existing customer and partner commitments
1. Feedback from cross-functional partners

To minimize impact and give more predictability to partner teams, we will minimize changes to initiatives that we’ve already agreed with cross-functional partners to do within the ongoing quarter.

Anyone can request new items to be added to the roadmap via an [intake request](/handbook/engineering/development/fulfillment/#intake-request).

#### Quarterly cross-functional review

One of our prioritization goals is to maximize overall team output across Fulfillment and cross-functional partners. We want to give transparency to all GitLab team members about the work that Fulfillment and its partner teams plan to deliver.

To enable this, we will do a roadmap review with our [stable counterparts](/handbook/engineering/development/fulfillment/#stable-counterparts) before the beginning of a new fiscal quarter. As part of this review, we gather feedback on roadmap priorities, update the roadmap based on the feedback, and agree with partners on the scope and delivery milestones for the upcoming 3-6 months.

During these quarterly reviews we will aim to commit up to 70% of Fulfillment’s engineering capacity for the upcoming quarter, and no more than 30% of capacity for the quarter after. This is meant to provide enough visibility into upcoming activities for cross-functional partners to plan for them while leaving room for reprioritization and changes as needed.

#### Communicating roadmap changes

Any proposed changes to the roadmap will be first communicated to cross-functional partners async in a relevant Slack channel with the relevant context and rationale, and ask for feedback. As needed, a synchronous meeting will be scheduled to discuss. All feedback will be considered by the product team and a final decision will be made and communicated once made.

### Fulfillment Prioritization Escalations

If you have an urgent Fulfillment need that is not being prioritized by Fulfillment's regular prioritization process due to competing priorities, and it is both important and urgent, please work with your division's leadership for escalation. The first step can be an async discussion involving Fulfillment leadership (as of now include [ofernandez2](https://gitlab.com/ofernandez2)). Situations in which competing company-priority projects would need to be reprioritized to accommodate your request may require escalation to GitLab's [e-group](/handbook/company/structure/#executives).

Team members in our Sales and Customer Success groups should escalate first via the [Top ARR Drivers meeting](/handbook/product/product-processes/#top-arr-drivers) for cross-team leadership visibility and prioritization. Simply add your item to the list of asks (link in the meeting agenda) for discussion.
