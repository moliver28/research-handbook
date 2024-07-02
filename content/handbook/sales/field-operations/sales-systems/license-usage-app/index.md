---
title: "License Utilization Salesforce App"
description: "This page outlines the License Utilization Salesforce App. It includes both information for the end user, answers frequently asked questions as well as highlights the location of the related techincal logic in the code."
---

## How to Use License Utilization Salesforce App

1. Navigate to any customer account in Salesforce.
1. Click on the License Utilization button at the top of the layout. ![License Utilization Button On Account Layout](/handbook/sales/field-operations/sales-systems/license-usage-app/buttonss_v2.png)
1. Review the current usage of Billable vs Entitled users on all Subscriptions related to the Account. ![License Utilization Button On Account Layout](/handbook/sales/field-operations/sales-systems/license-usage-app/appss.png)
1. To get a summary of License Utilization across all your accounts click "See License Utilization on all my Accounts"
1. To give feedback or ideas for the License Utilization app click "Give Feedback / Report Bug" and comment on the issue.

## Which Customers Does this Apply To?

Usage Data will be present in the License Utilization App in the following scenarios (assuming the sync is working as intended in each scenario):

1. The Customer is on Cloud Licensing.
1. The Customer is NOT on Cloud Licensing, but is on GitLab version 14.1+ and has Operational Metrics enabled.
1. The Customer is on Offline Cloud Licensing.

## Frequently Asked Questions (FAQ)

**Question: Billable Users is great, but when will I be able to see SMAU and other activity metrics?**<br />
Answer: The Product and Data teams are working to get these metrics at the subscription level, and when they do we will add to this dash! [Follow the progress here](https://docs.google.com/presentation/d/1_v4hxKdbL6--UjpjVdveGEGD_MjmUnBg0-OIU1R14m8/edit#slide=id.p) (GitLab internal only).

**Question: I viewed one of my Accounts, and some of the Subscription Data says "Not Available", what went wrong?**<br />
Answer: Billable User data is not yet available for some subscriptions based on the customer needing to send data (opted into Service Ping **or** is sending data via Cloud License) and be on version 14.1+. Some subscriptions will never receive their Billable User count because of air gapped hosting. In either scenario please [post on the Feedback issue](https://gitlab.com/gitlab-com/sales-team/field-operations/systems/-/issues/1149) if you think the customer's subscription data should be available.

**Question: I expected there to be more (or less) Subscriptions related to the Account then was is appearing, why is this?**<br />
Answer: Please confirm in the #Sales-Support slack room if you think viewing the app uncovered and issue with the customer's Subscriptions.

## Data Definitions

| Data Point              | Description                                     | Source              |
|-------------------------|-------------------------------------------------|---------------------|
| Plan Name               | Subscription GitLab Tier                        | Zuora 360           |
| Hosting Type            | GitLab.com vs Self Managed                      | Data Team Dashboard |
| Licensed Users          | Quantity of licenses sold                       | Zuora 360           |
| Billable Users          | Quantity of users who count toward being billed | Service Ping        |
| Seat Price              | MAX of Seat Price                               | Zuora 360           |
| Overage Value           | If Over: (Billable - Licensed) x Seat Price     | Calculated          |
| Subscription Start Date | Subscription Term Start                         | Zuora 360           |
| Subscription End Date   | Subscription Term End                           | Zuora 360           |
| Reported Date           | Date we last received billable user data        | Service Ping        |

## How Does This Work?

First, product usage data is uploaded into Salesforce as a .csv file attachment to a License Utilization Run record. When triggered, the Run calls classes which read the .csv and inserts License Utilization records. Each of these License Utilization records know which Zuora Subscription it relates to and through this, which Customer Subscription as well. Then, we run a process which collects information from Licese Usage and Zuora Subscription Product Charge records and stamps the related Customer Subscription. On each Account record page, a button has been added which brings you to another page. This page displays all Active Customer Subscriptions related to that Account that entitle the customer to licenses.

## Logic Locations

- [LicenseUsageRun.trigger](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/triggers/LicenseUsageRun.trigger)
  - Listens for the "Execute Run" checkbox to change values to begin the process of inserting new License Utilization records.
- [LicenseUsageBatcher.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/LicenseUsageBatcher.cls)
  - Called from `LicenseUsageRun.trigger`. Used to break up the insertion of License Utilization records into batches.
- [LicenseUsageCollector.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/LicenseUsageCollector.cls)
  - Converts the rows of the .csv file into License Utilization records and returns them so they can be inserted.
- [CustomerSubscriptionInfoGatherer.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/CustomerSubscriptionInfoGatherer.cls)
  - Collects information from the most up-to-date License Utilization records as well as Subscription Product Charges in batches. It stamps the info onto each related Customer Subscription. This class also does some basic data processing such as determining if there are multiple products and calculating total entitled seat count. This is done to make displaying this data simpler for `LicenseUsage.cls`.
- [LicenseUsage.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/LicenseUsage.cls)
  - The controller for `LicenseUsage.page`. Collects only the Customer Subscriptions related to the Account. Ensures the data will properly display the Seat Usage graph.
- [LicenseUsage.page](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/pages/LicenseUsage.page)
  - The page you are brought to by the button on the Account page. Displays all Customer Subscriptions with collected License Utilization data.
