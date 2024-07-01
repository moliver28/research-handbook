---
title: "Gainsight: Go-To-Market Technical Documentation"
description: "This page is the key GitLab Handbook page for all technical documentation relating to Gainsight, including the different functions of the tool as well as how we utilize each function to accomplish our integration and automation needs."
---

## Gainsight

Gainsight is a system that our CSMs use in order to support our customers and to manage their workflow. The integration between Salesforce and Gainsight is documented on this page. The applicable rules that sync the data between the systems, as well as system processes that have been set up within the system itself.

### Gainsight Rules Engine

The Rules engine is a business automation tool build within Gainsight that allows for automation to be built within Gainsight but also to sync out to other systems. It is used in a variety of ways in our instance from enriching data that we bring in from Salesforce (i.e. Company Hierarchies) to Call To Action automatiosn and even syncing data back from Gainsight to Salesforce. More info can be found on the [Rules Engine on Gainsights Website](https://support.gainsight.com/SFDC_Edition/Rules_Engine/About/Rules_Engine_Overview).

## Bi-Directional syncs: Salesforce <> Gainsight

- Bi-Directional syncs between Salesfroce and Gainsight have to be coordinated on a schedule in order to preserve the data integrity between the two systems. In order to acchomplish this we only pull in updated information into salesforce by leveraging date stamps of when our bi-directional fields are updated. After this is complete we push back all of the data to Salesforce so that any information that was updated within Gainsight makes it back to Salesforce. This ensure that both systems have the updated information.

### Bi-Directional rules

- Bi-Directional Builds
  - Pull/Push CSM changes: This rule maintains the Customer Success Manager on the account between the two systems.

### Syncing data from Salesforce to Gainsight

#### Connectors 2.0

The `Connectors 2.0` is used as one of the main ingestion methods of data from Salesforce to Gainsight and is a native built integration that exists between the two systems. The connector is authenticated using a Gainsight Integration user in our Salesforce Instance. More information in regards to the connector and how to set it up [in Gainsights Knowledge Base](https://support.gainsight.com/Gainsight_NXT/01Onboarding_and_Implementation/Onboarding_for_Gainsight_NXT_in_Salesforce/Salesforce_Connector/Salesforce_Connector_Overview).

The `Connectors 2.0` is used between our Salesforce instance and Gainsight instance to mainly sync three objects:

- Accounts
- Contacts
  - The Upsert key for contacts is their email address. This is useful when it comes to the bi-directional sync of contacts that are created in Gainsight.
- Salesforce users

For a list of fields that are ingested from Salesforce through the Connector 2.0, see [Gainsight GTM Technical Documentation](https://docs.google.com/spreadsheets/d/15ppKZ164nRWbDm4LDm0FQBslxS5d8A6S2UJLWFDgzUA/edit#gid=0).

## Rules Engine

While the `Connectors 2.0` are very powerful, we also have to supplement the data that is brought in through the connector to correctly display it within Gainsight and to coordinate bi-directional data syncs. The rules that exist in Gainsight are highlighted and shared in a manner that reflects their use in various Rule Chains in Gainsight.

- Admin Daily - Load to Company

- Admin - Load Ultimate Parent Accounts

- Admin - Load Non-Customer Child Accounts

- Admin - Load Prospect Details to Company

    These rules are built out in order to correctly associate our accounts to one another in a manner that matches our account hierarchy in Salesforce.

*This is on hold as we work with the CSMs on the final outcome*.

- Admin - Set Company Status (Active/Inactive)

    This is an admin rule that controls which accounts are active in Gainsight. This helps ensure we are not billed extra for accounts that are not customers.

- Admin - Load Public Sector Flag

    Flags accounts in Gainsight as Public Sector. This is important for our sharing settings.

- Admin - Load Inactive Users (Permission Set Based)

    This rule maintains users status in Gainsight as active or inactive. User access and status in Gainsight is controlled by whether or not they are assigned the `Gainsight NXT` permission set in Salesforce and are also an active user in Salesforce.

- Admin - Load Onboarding Start Date to Company

- Admin - Load Onboarding End Date to Company

- Admin - Load First Engagement Date to Company

- Admin - Load Last Activity Date to Company

    These rules act as rollups for data that exists within Gainsight, that are native Gainsight objects.

- Admin - Load Open Zendesk Ticket Count to Company

    This rule acts as a rollup calculation used for ZenDesk tickets within Gainsight.

- Admin - License Utilization Calculation

    This updates a calculation field on the account nightly.

- Admin - Delete UnMatch Records

    This flags accounts that have been deleted from Salesforce since they were merged or deleted, and that need to be deleted from Gainsight.

- Admin - Load GS Contacts to SFDC

    This is the second half of the bi-directional sync of contacts between Gainsight and Salesforce. Gainsight pushes contacts back to Salesforce that do not have an External Contact Id and that have a unique email address that does not already exist within Salesforce, in order to avoid duplicates. This External Id is then appended by the Connector 2.0 on the next scheduled sync.

- SFDC RefEdge Reference Status

    This pushes to our Reference Profile in SFDC what a Gainsight directed Reference Status would be. The goal is to get better alignment between the Reference Team and the Customer Success Team. It also helps decrease the amount of time it takes for the Reference Team to learn of any improvements or problems with our reference accounts.

## Admin Daily - Stage Adoption

- Admin - Load Stage Counts to Company
- Admin - Load Aggregated Stage Adoption Data to MDA

    These rules act as field rollups to calculate fields within Gainsight.

- Admin - Load Usage Ping Data to Company

    This rule associates the latest usage ping with Accounts in Gainsight.

## CTAs - Daily

- CTA - New Account CSM Assignment v2
- CTA - Onboarding v2
- CTA - Success Planning v2
- CTA - Post Onboarding Check-ins

    These rules trigger the various Calls To Action to be created, and each have their own criteria.

## Scorecard rules

- Set Score - Support Issues
- Set Score - Load Sentiment Scores from Timeline

    These rules assist updating and maintaining various health scores in  Gainsight. They do not control the overall health score within Gainsight but rather the individual sub-score that is used in the overall rollup of the account's health score.

## Syncing data from Gainsight to Salesforce

Data is synced back to Salesforce a few different ways - depending on the object. While Gainsight does have some objects that can automatically sync back to Salesforce through their base integration other objects and data points have to be synced back via the Rules Engine

### Connector 2.0

Activity Timeline is automatically synced back from Gainsight to Salesforce

### Push to SFDC

A variety of data points are pushed back from Gainsight to Salesforce. To see the complete list of fields and objects that are synced back from Gainsight to Salesforce, see [Using Gainsight Data in SFDC](/handbook/customer-success/product-usage-data/using-gainsight-data-in-sfdc/).

This rule also pushes back to contacts in Salesforce in the event that anyone in Gainsight marks them as someone who has opted out of marketing communication, as well as any contacts that were created in Gainsight and that do not exist in Salesforce.

## Gainsight sync timing

Gainsight syncs any updates, new customer accounts, and more up into Gainsight first before pushing information back to Salesforce.

| Rule | Rule Type | Time | Day Type |
|---|---|---|---|
| User, Company, and Company Person sync | Connector 2.0 | 12:00AM PST | Daily |
| Admin Daily - Load to Company | Gainsight Rules Engine | 3:00AM PST | Daily |
| Admin Daily - Stage Adoption | Gainsight Rules Engine | 3:30AM PST | Daily |
| Scorecard Rules | Gainsight Rules Engine | 4:00AM PST | Daily |
| CTAs - Daily | Gainsight Rules Engine | 4:30AM PST | Daily |
| Bi-directional Builds - Weekday | Gainsight Rules Engine | 5:00AM PST | Weekday |
| Push to SFDC - Weekday | Gainsight Rules Engine | 5:30AM PST | Weekday |
| Push to SFDC - Weekend | Weekend | 9:00AM PST | Weekend |
| Bi-directional Builds - Weekend | Weekend | 8:00AM PST | Weekend |

<br>

## Syncing data from Zendesk to Gainsight

Zendesk is synced directly into Gainsight via `Connectors`. This is different from the `Connectors 2.0` within Gainsight.

Due to limitations of the integrations between Zendesk, Gainsight and Salesforce it is possible that the sync of tickets may be disrupted.

Zendesk does not push the Zendesk Organization ID over to Salesforce. To address this, a one-time upload of Zendesk Organization IDs was completed in Salesforce ([Zendesk Organization ID (ADMIN)](https://gitlab.my.salesforce.com/00N4M00000Ib2z1?setupid=AccountFields)). This field is then imported to Gainsight via the Salesforce `Connectors 2.0`. Gainsight then uses this Organization ID to match tickets that are synced over from Zendesk with accounts that are synced over from Salesforce.

There is an [open issue](https://gitlab.com/gitlab-com/sales-team/field-operations/systems/-/issues/761) to address this shortcoming and we are exploring solutions to this. If you find that this limitation impacts your flow, re-import Zendesk IDs into Salesforce so that as many accounts have Zendesk Organization IDs associated with them as possible.

The tickets that are seen on the company view within Gainsight are shown there by selecting one report from the dropdown list. As a specific report is selected the Zendesk tickets that are associated with that company and that meet the reports filter criteria are shown. This means it is relatively easy to create different views of the Zendesk tickets associated with the account, similar to list views in Salesforce, but that are specific only to one company.

## Gainsight roles (bundles)

Below are the Gainsight bundles (permission sets) and relevant access categories.

| Area                                  | Capability                                                   | `Default Bundle` (Admin role) | `SAL_Users` | `View_Group` | `CSM Journey Orchestrator` | `TAM_Users` | `GS Admin sans provisioning` |
| ------------------------------------- | ------------------------------------------------------------ | ----------------------------- | ----------- | ------------ | -------------------------- | ----------- | ----------- |
| Home                                  | Dashboard view access                                        | ✓                             | ✓           |              | ✓                          | ✓           | ✓           |
| Timeline                              | End user account Timeline history view                       | ✓                             | ✓           | ✓            |                            | ✓           | ✓           |
| Cockpit                               | View and execute Calls to Action (CTAs)                      | ✓                             | ✓           | ✓            |                            | ✓           | ✓           |
| C360 Account                          | View and edit customer Account data                          | ✓                             | ✓           |              | ✓                          | ✓           | ✓           |
| Surveys                               | Access to create surveys                                     | ✓                             |             |              | ✓                          |             | ✓           |
| Surveys                               | Access to analyze surveys and view NPS results                                     | ✓                             | ✓            | ✓             | ✓                          | ✓            | ✓           |
| Admin: Journey Orchestrator           | Administrative access to creating and deploying one-to-many email campaigns | ✓              |             |              | ✓                          |             | ✓           |
| Admin: Data / Integrations Operations | Administrative access for Gainsight customer data and integrations | ✓                       |             |              |                            |             | ✓           |
| Admin: Email Configuration            | Admin access for backend of email domain, including CNAME setup | ✓                          |             |              |                            |             | ✓           |
| Admin: Reporting                      | Admin access to build, share, and modify reports and dashboards | ✓                          |             |              |                            |             | ✓           |
| Admin: Rules Engine                   | Admin access to create rules (workflows) to run CTAs and other operations | ✓                |             |              |                            |             | ✓           |
| Admin: User Provisioning              | Admin access: user provisioning and deprovisioning access    | ✓                             |             |              |                            |             |             |
