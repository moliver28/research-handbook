---
title: "Using Salesforce within Customer Success"
---

- Using Salesforce within Customer Success *(Current)*
- [Account Onboarding](/handbook/customer-success/csm/onboarding/)
- [Customer Success Manager Summary](/handbook/customer-success/csm/)
- [Account Triage](/handbook/customer-success/csm/health-score-triage/)
- [Account Engagement](/handbook/customer-success/csm/engagement/)

On an account view in Salesforce, there is a Customer Success section, with the following fields:

- Health Score - A field to record the overall customer health
CSM Sentiment - A field to list the CSM's sense of the [customer's health](/handbook/customer-success/csm/health-score-triage/)
- GitLab Customer Success Project - Where you enter the URL of the project created using the template described above
- Customer Slack Channel - A field to record Slack channel(s) used for internal and external customer collaboration. If a channel is internal, make sure it follows the naming convention `#a_<customer-name>-internal` per [Communication Chat](/handbook/communication/chat/#account-channels-a_)
- Solutions Architect - The Solutions Architect aligned with the account
- Customer Success Manager - The Customer Success Manager aligned with the account

## Salesforce Objects

Salesforce operates using a series of objects. Standard objects are objects that are included with Salesforce. Common business objects like Account, Contact, Lead, and Opportunity are all standard objects.

Custom objects are objects that you create to store information that's specific to your company or industry. For GitLab, we have created four custom objects that are specific to Customer Success. These are POV's and PS Engagements (PSE's). We can link these custom objects to accounts and opportunities, and create automations such as allowing us to auto-populate specific fields and notify users when a task needs to be completed.

### Professional Services Engagements (PSE) objects

PSE objects in Salesforce are used to track the progress of our PSE's that are agreed upon with our customers. These PSE's describe the professional services that GitLab will deliver to our client. As this is related to a billable service that we are extending to our clients all PSE's must be related to an appropriate Opportunity and an Account. For a walkthrough, see the GitLab Unfiltered [PS Engagement Object video](https://www.youtube.com/watch?v=IDvfHYLk7_Y&feature=youtu.be)

The Opportunity that each PSE is associated with will contain information relevant to the Opportunity (Amount, IACV etc.) while the PSE itself will house notes, details and monitor the progress of the PSE (Go Live Date, Kick Off Date etc.). If a client would like to move forward with many professional services at once then all of these services would be encapsulated and related through one Opportunity and one PSE.

If an existing client, who previously purchased professional services from GitLab, would like to purchase addition professional services, then a new Opportunity and PSE would be created in Salesforce. Review our section in the [handbook](/handbook/sales/#when-to-create-an-opportunity) about creating new opportunities if you have any questions around the Opportunity creation process.

In order to track the contacts that are associated with a PSE, we utilize the PSE-Contact Association list. This can be accessed by navigating to the PSE page layout and locating the PSE-Contact Association related list. From there you can create a new association by looking up the contact that is associated with this PSE. Multiple contacts can be associated with a single PSE.

#### Fields

**PS Team**

- Owner - the owner or overseer of the project
- Project Team - the planned team for the project

**PS Info**

- PS Engagement Name - the unique identifier for the project
- Engagement Type - whether the project is fixed, time based, etc.
- Opportunity - link to the related PS Opportunity
- Opportunity Amount - the booked amount (from the PS Opportunity)
- Success Criteria - the pre-defined criteria for what success will look like at the end of this engagement
- Sertifi EContract - link to the Sertifi contract
- Status - the current project status
  - Backlog - new booking, project initiation has not started
  - On Hold - project is on hold due to the customer
  - Initiation - in kick off or planning stages
  - In Progress - the project is being worked on
  - Closure - waiting for customer signature or finalizing paperwork but the services have been rendered
  - Completed - the project is 100%, all items have been signed-off, and this PS Engagement object is complete
  - Cancelled - the project has been cancelled
- SOW Link - link to the SOW
- Collaboration Project - link to the GitLab collaboration project
- % Complete - the PS engineer's estimate on the project's completion
- General Notes - free-form text for notes about the project

**Project Tracking**

- Scoped Hours - hours scoped during the SOW
- Hours Consumed - billable hours consumed to date
- Remaining Project Hours - Remaining hours of the project
- Hours Updated Date - the date when Hours Consumed was last updated

**PSE Approval**

- Approved - PS management has signed off that the project can begin
- Approver - the Salesforce user who ticked the `Approved` box
- Passive acceptance language in SOW? - does the SOW contain passive acceptance language to complete the SOW?
- Signed Acceptance from Customer - confirmation GitLab has signed approval from the customer to begin the project
- Passive acceptance used for sign off? - did we use passive acceptance to complete the SOW?
- Sign Off Date - the sign off date, whether accepted via email or by executing passive acceptance

**Project Timeline**

- Kick Off Date - the date the project planning and scheduling began
- Expected Start Date - the anticipated date when the technical portion of the project should begin
- Expected Completion Date - the anticipated date when the project should be completed
- Expected Project Length - anticipated project length, `Expected Start Date` - `Expected Completion Date`
- Actual Project Start Date - when work actually began for the customer
- Completed Date - the actual completed date
- Actual Project Length - actual project length, `Actual Start Date` - `Completed Date`

#### Kicking Off the PS Engagement Object

When starting the PS Engagement, the following fields must be filled out:

- Approved By
- Actual Project Start Date
- Expected Completion Date
- Opportunity (automatically populated)
- Scoped Hours
- Success Criteria
- Sertifi Contract
- PS Engagement Link
- Collaboration Project
- Signed Acceptance from Customer

##### Approved By

When the PSE object has been approved, the following are reviewed to ensure accuracy and proper execution of the SOW:

- PS management team has reviewed the SOW
- GitLab Legal has reviewed the contract, if applicable
- The SOW contract explicitly states if the customer does not sign off within 5 days, it is automatically assumed completed

#### Updating the PS Engagement Object

The PS Engagement Object should be updated on a frequent basis. When it is updated, the following fields should be updated for the benefit of various stakeholders:

- Status
- Hours Consumed
- Hours Updated Date
- % Complete
- If applicable, update General Notes and/or other areas

#### Completing the PS Engagement Object

When completing the PS Engagement Object, review all fields in the PS Engagement to ensure accuracy and completeness. Salesforce validation rules are set up to ensure the fields are complete before marking Status as `Complete`. As a general rule, ask the following questions:

- Are the dates accurate?
- Did we achieve the Success Criteria?
- Are all links (PS Engagement Link, Collaboration Project, etc.) correct?
- Are all required docs signed off by GitLab and the customer?
- Are all remaining fields completed and ready for review by Professional Services, Finance, and Leadership?

Once the above questions have been reviewed, the PS Engagement can be marked `Completed` which will trigger certain events in Salesforce for the various stakeholders.

### Proof of Value (POV) objects

Please visit [this page](/handbook/solutions-architects/tools-and-resources/pov) for POV documentation.

## Salesforce - Customer Success Automations

### New Zendesk Ticket Notifications

For all new Zendesk tickets that are created, the Customer Success Manager and Account Owner for the account that the ticket is associated with will receive an email notification alerting them of a new ticket. This currently is a one time notification that only occurs when the Zendesk ticket is first created in Salesforce.

### Tracking Emails within Salesforce

Anyone communicating with a customer via email should ensure their emails are being tracked within Salesforce in the account's activity history. Even with the roll-out of [Gainsight](/handbook/customer-success/csm/gainsight/), we still log our emails to Salesforce because the emails within Gainsight's timeline can create more noise than value.

To log an email in Salesforce:

1. Log in to [Salesforce](https://gitlab.my.salesforce.com/home/home.jsp)
1. Click your name at the top right
1. Click "My Settings"
1. Click "Email" on the left sidebar
1. Click "My Email to Salesforce"
1. Save the email address it provides next to "Your Email to Salesforce address"

Any time you email a customer, bcc your "email to Salesforce address" on the email so that it is tracked within Salesforce.

These alternatives exist:

1. If you have an [Outreach](/handbook/business-technology/tech-stack/#outreachio) account which is linked to your GitLab email address and your Salesforce account, your emails will automatically sync with Salesforce
1. If you do not have outreach, then consider the [Salesforce Chrome plugin](/handbook/sales/prospect-engagement-best-practices) to easily log customer-related emails

### Building Reports in Salesforce

It's best practice to use an existing report rather than to create a new one, keeping it clean. If you're unsure, ask your Operations team. Building Salesforce reports can feel daunting, but here are a few tips. If you'd rather, you can watch a video on [Report Builder](https://www.youtube.com/watch?v=7_LkmrhKf2g).

1. Go to Reports in Salesforce
1. Click "New Report"
1. Choose a "Report Type"
   1. Tip: Typically, you'll want to choose Account (if you want to examine Salesforce Accounts) or Opportunity (if you want to report on open/closed Opportunities)
   1. Tip: "Report Type" is selecting the group of fields you want to use (e.g., Opportunity: all data related to the Opportunity)
1. Report structure:
   1. Show: choose which Accounts/Opportunities to show (typically you want to select "all")
   2. Date field: choose a date to filter results. You can always choose "All Time"
   3. Add filters (white box): you can filter using any fields on the left side
   4. Preview: You can drag any fields as a new column. For instance, you can add Account Name, Account Owner, and Customer Success Manager/Solutions Architect
1. Once complete, either hit "Save" or "Run Report" to preview your report. If you run it, you can hit Save on the next page.
1. No matter what, make sure you save it in a folder that others can also access for transparency
1. Congrats! You're done.
