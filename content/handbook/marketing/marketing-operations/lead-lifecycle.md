---

title: "Lead Lifecycle Management"
description: "This page is a dedicated resource for information on how GitLab manages it's lead lifecycle"
---
# Lead Lifecycle

This page is a dedicated resource for all information on how we manage our lead lifecycle. We have two elements covering the lifecyle - The Lead / Contact Status in SFDC, and the Lifecycle Classifications Fields in SFDC. 

## Lead / Contact Status

We have nine Lead / Contact Statuses to represent where the lead currently sits within our sales cycle in Salesforce. Each `Status` that represents a situation where Sales Development is not actively engaging a lead or contact record has a corresponding queue that owns records until they meet the criteria to be assigned to Sales Development again for reengagement and qualification. This means there are currently "holding" queues for Lead / Contact Statuses with a queue indicated in the third column of the table below. (Note: The renaming or replacement of these queues with ones that match the updated Lead / Contact Statuses is ongoing and this handbook page will be updated with their new names as soon as the queues are created and actively being used in Salesforce.) 

| Status | Definition | Related Salesforce queue, if applicable |
|--------|--------|--------|
| Raw | Untouched prospect, default status | `Raw Queue` |
| Inquiry | Action was taken by the record to specifically give their contact information to GitLab | `Inquiry Queue` |
| MQL | Marketing Qualified through systematic means | N/A, `MQL`s are owned by the XDR responsible for engaging and qualifying them  |
| Accepted | Actively working to get in touch with the lead/contact | N/A, `Accepted` leads are owned by the XDR engaging and qualifying them |
| Qualifying | In 2-way conversation with lead/contact | N/A, `Qualifying` leads are owned by the XDR engaging and qualifying them |
| Qualified | SAO created & hand off to Sales team | N/A, `Qualified` leads represent leads that have been converted, most often to create an opportunity |
| Disqualified | Person has been disqualified from our sales cycle | `Disqualified Queue` |
| Recycle | Record is not ready for our services or buying conversation now, possibly later | `Recycle Queue` |
| Ineligible | All leads/contacts that are ineligible to go through the sales process after an initial review | `Ineligible Queue` | 

In addition to our statuses, there are substatus that are required for XDRs to use. The substates are in use for the following Statuses: Disqualified, Ineligilble, Recycle & Bad Data:

| Disqualified | 
|-----|
| Competitior |
| Consultant |
| No Authority |
| Personal Use |
| Unsubscribe |
| No longer at company |
| Interested in CE only |
| Interested in Gitlab.com only |
| Disqualified Account |
| Bad Data | 

|Ineligible |
|----|
| JIHU |
| Support |
| Remote Inquiries |
| Community Contributors |
| Student |
| ECCN |
| Open Source Program |
| GitLab Employee or Candidate |
| Customer Success |

| Recycle |
| ----- |
| Doesn't see value |
| Evaluating |
| In current GL contract |
| No Budget |
| No interest |
| No response |
| Product limitation |
| Staying with subversion option |
| No data collected |
| Recalled from Partner |
| No Action |
| Denied from Startups Program - Sales Dev to re-engage |


Bad Data Reason field on the lead and contact records if there is bad data on the lead/contact. If there is a bad phone number or email, please record as so in this field and reach out to the prospect using other methods. If there is both a bad phone number and a bad email, please move the prospect to `Disqualified - Bad Data`. 

| Bad Data Reasons |
|---- |
|Bad phone number |
|Bounced email |
|Invalid email |
|Spam |



## Lifecycle Classifications

We have 6 fields on the lead and contact that's purpose is to represent where the person is in their jouney with GitLab. 

| Field Name | Definition |
|-----|------|
| Unknown | This person has not matched with any accounts and is not a GitLab user |
| User | This person is a GitLab User |
| Prospect Hierarchy | This person has matched with an account that has first order available |
| Customer Hierarchy Account | This person has matched with an account that is a customer in their account hierarchy |
| Former Customer Account | This person has matched with an account that is a former customer |
| Partner Managed | This person is currently being managed by a partner |

The fields are formula fields and have three possible options - `True`, `False` or `-`, `-` means that we don't have enough information to say if the field is true or false so it will stay in `-` until the information becomes available. More information to come on how to leverage these fields. 


## What happens to a lead when the lead owner is offboarded?

In an effort to ensure that leads are not owned by inactive users in Salesforce, leads will be reassigned to either new owners or queues based on the lead's status. The following table describes where a lead is reassigned when it's owner moves into a new role or leaves the company.

| Lead Status | New Owner Assignment |
|----|----|
| Raw | Raw Queue |
| Inquiry | Inquiry Queue |
| Recycle | Recycle Queue |
| Disqualified | Disqualified Queue |
| Ineligible | Ineligible Queue |
| Qualifiying or Qualified | Inactive User Queue |
| Accepted | Lead status is updated to `Recycle`, `No Response` and moved to Recycle Queue |
| MQL (before 2023/02/01) | Lead status is updated to `Recycle`, `No Response` and moved to Recycle Queue |
| MQL (on or after 2023/02/01) | `BDR Assigned` if the matched account is Actively Working. Otherwise, the lead will route to the round robin pool based on Geo |
