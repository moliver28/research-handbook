---
title: ZD-SFDC sync
description: Support Operations documentation page for our Zendesk<>Salesforce Sync
canonical_path: "/handbook/support/readiness/operations/docs/zendesk/zendesk_salesforce_sync"
---

## What is the Zendesk-Salesforce Sync?

The Zendesk-Salesforce Sync (ZD<>SFDC sync for short) is a set of scripts that
are run via GitLab CI/CD to handle the interaction between Zendesk and
Salesforce. What it does exactly depends on the project itself:

| Name                    | What it does |
|-------------------------|--------------|
| salesforce-cases        | Creates and updates Salesforce cases based on Zendesk tickets |
| zd-sfdc-sync-global     | Syncs Salesforce account data into Zendesk organizations      |
| zd-sfdc-sync-us-federal | Syncs Salesforce account data into Zendesk organizations      |
|                         | Syncs Salesforce contacts data into Zendesk users             |

## Zendesk Global organizations sync

This first gathers the data from Salesforce. This is done via the following SOQL
(Salesforce Object Query Language) query:

<details>
<summary>SOQL query used</summary>

```sql
SELECT
  Account.Account_ID_18__c,
  Account.Name,
  Account.CARR_This_Account__c,
  Account.Ultimate_Parent_Sales_Segment_Employees__c,
  Account.Account_Owner_Calc__c,
  Account.Number_of_Licenses_This_Account__c,
  Account.Type,
  Account.Technical_Account_Manager_Name__c,
  Account.Account_Demographics_Geo__c,
  Account.GS_Health_Score_Color__c,
  Account.Next_Renewal_Date__c,
  Account.Restricted_Account__c,
  Account.Partners_Partner_Status__c,
  Account.Partners_Partner_Type__c,
  Account.Partner_Track__c,
  (SELECT
     Current_Subscription_Status__c,
     Current_Term_End_Date__c,
     Current_Term_Start_Date__c,
     Entitled_Seats__c,
     Product_Tier_Name_Short__c,
     Plan_Name__c
   FROM Customer_Subscriptions__r
   WHERE Current_Subscription_Status__c = 'Active'),
  (SELECT
     Name,
     Zuora__Status__c,
     Zuora__SubscriptionEndDate__c,
     Zuora__SubscriptionStartDate__c,
     Support_Level__c,
     Zuora__OpportunityName__c,
     Zuora__SubscriptionNumber__c
   FROM Zuora__Subscriptions__r
   WHERE Zuora__Status__c = 'Active'),
  (SELECT
     Name,
     Zuora__SoldToWorkEmail__c
   FROM Zuora__R00N40000001kyLcEAI__r
   WHERE IsDeleted = false)
FROM Account
WHERE
  (Account.Type IN ('Customer', 'Former Customer') OR
   Account.Account_ID_18__c = '0014M00001sGJ8xQAG') OR
  (Account.Type = 'Partner' AND
   Account.Partners_Partner_Status__c IN ('Authorized', 'Former') AND
   Account.Partners_Partner_Type__c IN ('Alliance', 'Channel') AND
   Account.Partner_Track__c IN ('Open', 'Select', 'Technology')
  )
```

</details>

This data is then processed by the script to verify the account's subscriptions
(both Customer and Zuora). It also locates the sold-to emails of the
subscriptions to later attempt user creation (if it is a new organization in
Zendesk).

While doing this, it also locates accounts that are classified as "greatly
expired" (meaning they have been expired for 3 or more years). It puts these
into a separate object for use later.

From here, it then gathers all the organization data from Zendesk Global. This
does very little actual processing of the data, short of ignoring tags that
aren't related to the sync itself.

The scripts then compares the data from Salesforce and the data from Zendesk
Global. From this comparison, it locates Zendesk Global organizations that need
to be updated and ones that need to be created.

The scripts will then begin syncing this information to Zendesk Global, updating
organizations that need updating and creating the ones that need creation. For
organizations that need to be created, it will also attempt to create contacts
for them based off the information of the subscriptions (gathered earlier).

Once that is done, the scripts then remove all "greatly expired" organizations
from Zendesk Global in accordance with our data retention policy.

## Zendesk US Government organizations sync

**Note** This set of scripts also handles the
[Zendesk US Government users sync](#zendesk-us-government-users-sync). We have
separated it into its own section for ease of readability.

This first gathers the data from Salesforce. This is done via the following SOQL
(Salesforce Object Query Language) query:

<details>
<summary>SOQL query used</summary>

```sql
SELECT
  Account_ID_18__c,
  Name,
  Ultimate_Parent_Sales_Segment_Employees__c,
  Account_Owner_Calc__c,
  Technical_Account_Manager_Name__c,
  GS_Health_Score_Color__c,
  Restricted_Account__c,
  Solutions_Architect_Lookup__r.Name,
  (
    SELECT
      Id,
      Name,
      Zuora__ProductName__c,
      Zuora__EffectiveEndDate__c,
      Zuora__Quantity__c,
      Zuora__TotalContractValue__c,
      Subscription_Status__c
    FROM Zuora__R00N40000001lGjTEAU__r
  )
FROM Account
WHERE
  (
    Account_Demographics_Territory__c LIKE 'PUBSEC%' AND
    Account_Demographics_Territory__c != 'PUBSEC_' AND
    (
      NOT Account_Demographics_Territory__c LIKE '%SLED%'
    )
  ) OR
  Support_Instance__c = 'federal-support'
```

</details>

This data is then processed by the script to verify the account's subscriptions
(both Customer and Zuora).

From here, it then gathers all the organization data from Zendesk US Government.

The scripts then compares the data from Salesforce and the data from Zendesk
US Government. From this comparison, it locates Zendesk US Government
organizations that need to be updated and ones that need to be created.

The scripts will then begin syncing this information to Zendesk US Government,
updating organizations that need updating and creating the ones that need
creation.

## Zendesk US Government users sync

**Note** This set of scripts also handles the
[Zendesk US Government organizations sync](#zendesk-us-government-organizations-sync).
We have separated it into its own section for ease of readability.

This first gathers the data from Salesforce. This is done via the following SOQL
(Salesforce Object Query Language) query:

<details>
<summary>SOQL query used</summary>

```sql
SELECT
  Name,
  Email,
  Account.Account_ID_18__c,
  Account.Name
FROM Contact
WHERE
  Inactive_Contact__c = false AND
  Name != '' AND
  Email != '' AND
  (
    NOT Email LIKE '%gitlab.com'
  ) AND
  (
    (
      Account.Account_Demographics_Territory__c LIKE 'PUBSEC%' AND
      Account.Account_Demographics_Territory__c != 'PUBSEC_' AND
      (
        NOT Account.Account_Demographics_Territory__c LIKE '%SLED%'
      )
    ) OR
    Account.Support_Instance__c = 'federal-support'
  )
```

</details>

This data is then processed to remove any contacts with duplicate emails or
missing data.

From here, it then gathers all the user data from Zendesk US Government.

The scripts then compare the data from Salesforce and the data from Zendesk US
Government. From this comparison, it locates Zendesk US Government users that
need to be updated and ones that need to be created. It will use the
organization data from the
[Zendesk US Government organizations sync](#zendesk-us-government-organizations-sync)
to determine the organization ID.

The scripts will then begin syncing this information to Zendesk US Government,
updating users that need updating and creating the ones that need creation.

## Zendesk Salesforce cases sync

This is runs at two periods of time:

- whenever a ticket with an organization associated is created
- whenever a ticket with a matching Salesforce case is closed

For when a ticket is created, it will create a Salesforce case based off the
Zendesk Global ticket data.

For when a ticket is closed, it will update the corresponding case to indicate
it has been closed.

#### Pipeline error '1: No case ID to update'

This is a silent error, meaning that while it did occur, the code exits with a
code of 0 (and thus, the pipeline does not actually fail).

This error occurs when there was not a SFDC case to update, as the corresponding
field on the Zendesk ticket was blank.

As there was no actual case to update, no action is needed here and this can be
safely ignored.

#### Pipeline error '2: Restforce::ErrorCode::InsufficientAccessOnCrossReferenceEntity'

This is a silent error, meaning that while it did occur, the code exits with a
code of 0 (and thus, the pipeline does not actually fail).

This error indicates that when the script tried to create/update a case, SFDC
stated that there was not sufficient permission on the object (reference) to do
it. While this could be permission base, the error is a bit of a misnomer and in
the sync's case actually means that the parent reference (i.e. the SFDC account)
did not exist.

As the actual SFDC account does not exist, no action is needed here and this can
be safely ignored.

#### Pipeline error '3: Restforce::ErrorCode::UnableToLockRow'

This will cause an actual pipeline failure.

This error indicates that when trying to do a create/update, which requires
locking a row in SFDC, it was was unable to do so. This usually means something
in either the specific reference (i.e. the case) or the parent reference (i.e
the SFDC account) already had a lock in place that conflicts with the newly
needed lock.

When this error occurs, the sync is set to retry the attempt 3 times (with 5
second back-off timers in-between attempts). If it continues to hit the same
error after those attempts, the script ultimately reports the error and exits
with a status code of 1.

To rectify this, you should wait about 10 minutes or so and retry the pipeline
itself. If the results are the same after your manual retrying of the pipeline,
it is best to create an issue in our
[issue tracker](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new)
to have this investigated further by the team. Make sure to link to the failed
pipeline!

#### Pipeline error '4: Faraday::ConnectionFailed'

This will cause an actual pipeline failure.

This means the Faraday connection attempt failed to fully connect. There can be
a plethora of reasons for this to occur.

When this error occurs, the sync is set to retry the attempt 3 times (with 5
second back-off timers in-between attempts). If it continues to hit the same
error after those attempts, the script ultimately reports the error and exits
with a status code of 1.

To rectify this, you should wait about 10 minutes or so and retry the pipeline
itself. If the results are the same after your manual retrying of the pipeline,
it is best to create an issue in our
[issue tracker](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new)
to have this investigated further by the team. Make sure to link to the failed
pipeline!

#### Pipeline error '5: Net::OpenTimeout'

This will cause an actual pipeline failure.

This means the Faraday connection never got a response back from the host (SFDC)
in an acceptable time frame. There can be a plethora of reasons for this to
occur.

When this error occurs, the sync is set to retry the attempt 3 times (with 5
second back-off timers in-between attempts). If it continues to hit the same
error after those attempts, the script ultimately reports the error and exits
with a status code of 1.

To rectify this, you should wait about 10 minutes or so and retry the pipeline
itself. If the results are the same after your manual retrying of the pipeline,
it is best to create an issue in our
[issue tracker](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new)
to have this investigated further by the team. Make sure to link to the failed
pipeline!

## Change management

As these are maintained via sync repositories, our standard change management
process applies to all Zendesk-Salesforce Sync. See
[standard change management](/handbook/support/readiness/operations/docs/change_management#standard-change-management)
for more information.

#### Change criticality

Due to the nature and impact adding/editing/deleting the Zendesk-Salesforce Sync
imposes, all issues/MRs related to the Zendesk-Salesforce Sync will be
classified as either
[criticality 1](/handbook/support/readiness/operations/docs/change_criticalities#criticality-1)
or
[criticality 2](/handbook/support/readiness/operations/docs/change_criticalities#criticality-2)
