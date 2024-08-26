---
title: "Groove.co"
description: "Groove is a Salesforce native sales engagement platform which helps Sales and Sales Dev team members efficiently and effectively engage prospects and customers to drive more pipeline and increase deal closure."
---
## About Groove.co

Groove is a Salesforce native sales engagement platform which helps Sales and Sales Dev team members efficiently and effectively engage prospects and customers to drive more pipeline and increase deal closure.

## Support

Groove is a tool co-owned by the Marketing Operations and Sales Operations teams.

If you require further assistance outside of the contents of this handbook page, please reach out in the appropriate Slack channels based on your role:

- Marketing or Sales Development requests, please contact #mktgops on Slack.
- Sales requests, please contact #sales-tools-support on Slack.

## Access

Groove access is dependent on a Salesforce Groove permission set as well as a Groove license. All Salesforce users are assigned the permission set, while only roles who receive access to Groove as part of their Baseline Role-Based Entitlement, or are otherwise approved, will be provisioned a Groove license.

### Role-Based Entitlement

- Sales Development
- Business Development Representatives
- Managers, SDR or BDR
- Account Executives
- Area Sales Managers
- SMB Advocates
- Managers, SMB Advocates
- Renewals Managers
- Managers, Renewals Managers
- Customer Success Engineers
- Managers, CSE

Once you have access please take the following steps:

- Download and install the Groove Chrome extension.
- Connect your calendar and email.
  - Once you connect your calendar and email to Groove, your emails will begin to log to Salesforce records automatically. Emails sent to or from public domains are blocked from logging to Salesforce.
    - To prevent a specific email from being logged to Salesforce, uncheck the `Log` button in the Email Compose window (below the Subject line). This will ensure a specific email is not logged to Salesforce.
- Connect your LinkedIn Sales Navigator account (if applicable)

### Admin Users

To grant new users access- you need to do the following:

- Import SFDC Users
- Grant them a license:
  - Core - Reserved for those who need access to the platform but will not be using flows - e.g Managers
  - Flow Unlimited - Reserved for those who will be using flows as part of their role - e.g AEs, SMB Advocates, and SDRs
  - Dialer - Only for Sales Dev reps, AEs, and SMB Advocates
- Grant them a role:
  - Standard User - Allows standard access to the tool. Majority of ICs will be this role. 
  - Team Leads - All Managers will receive this access. 
  - Analysts - All Directors will receive this access.
  - Admin - Reserved for select operations roles only.
- IMPORTANT: Teams have been manually created in Groove. Please add them to their relevant teams. This part controls their flow access and if they are not added, they may not have the right permissions. 

## Flows

Flows must be named by the following [naming conventions](https://docs.google.com/spreadsheets/d/1d70MOLN6ZNVUNXHNoK3AnQu2e_oecnLc-wl-zvpYp54/edit?usp=sharing).

## Flow Creation

The creation of net new flows need to be approved. Currently, that approval process lives outside of Groove. At the end of Q3, Groove is releasing functionality for flows to be approved directly within Groove. Once this is released, we plan to open up the ability to create flows more widely.

### Flow Approval Process

In the transition period from Outreach to Groove, if you have identified a sequence that didn’t come over from Outreach, please provide a link to the sequence for approval in the #groove-flow-approvals Slack channel. Sales Op and Sales Dev Ops will review, and if approved, the appropriate team will rebuild the sequence for you as a Groove flow.

### Sales Flows

For Sales, blank flows have been pre built for each team member to choose based on frequency of communication, and if you would like to majority call versus email, or a mix of both.

Below are a few options:

- [1 email a week](https://app.groove.co/flows/1107259)
- [1 email and 1 call a week](https://app.groove.co/flows/1107271)
- [2 emails a week](https://app.groove.co/flows/1107302)
- [2 emails and 2 calls a week](https://app.groove.co/flows/1107309)
- [1 email a month](https://app.groove.co/flows/1107281)

The email body is blank for you to personalize your message to your prospect or customer. Please note that you must add a lead to the flow before you are able to personalize. Once the lead is added, go to the Actions tab, click on the Play button of the specific flow you would like to personalize, and from there you can make updates.

You also have access to all Sales Dev sequences. Any of the High Touch sequences will allow you to customize the first email message. Subsequent email steps are a mix of automated and manual emails. 

### Adding to Flows Option

- CSV Upload: The CSV upload will only accept leads/contacts that already exist in SFDC. You can not upload anything that doesn’t exist in SFDC. 
- Search: You can search SFDC by using name, email, company, phone or job title. 
- SFDC List View: You can choose an object and then search your list view for that object to add people to flow. Example: B2 Lead View
- SFDC Reports: You can search and add people through your SFDC reports or publicly shared reports. 

### Signature

In the email body of some emails of flows, there are references to a meeting link in your signature. Please make sure you update your signature to include a meeting link. You can see a preview of your signature in your Groove Settings. 

- Sales Developement: Please do this using Terminus.com. 
- Sales: Please do this in your Gmail settings. 

### Labels and Searching for Flows

Labels are how Flows and Templates are organized in Groove. Currently there are no collections in Groove so we must use labels to search for the flows we are looking for. 

**Label Categories:**

- Industry: Flows targeted at a particular industry
- Lang: Language Flows 
- Motion: Different sales motions, ex: Competitive GitHub, Closed Lost, CI/CD, Event
- Persona: Targeted a particular buying persona
- SD: Sales Dev owned, this will be in front of all Sales Dev flows

Important Notes on Searching using Labels:

- When you filter by choosing multiple labels it creates an “and” statement between all of the labels you choose. For example, if you choose the labels “SD OB HT AMER” and “Motion: Competitive Atlassian” it will show every flow that has EITHER of those labels.
- Best practice is to only filter down by one label and then search for the key word in the flow you are looking for. For example, you can filter by “SD IB HT AMER” and then in the search bar you can search the word “trial” to narrow your search down to all of the HT AMER Trial flows.

## Email Sending Limits

There is a 1000 email limit per day. This resets every rolling 24 hours.

Email will be sent at 45 secs intervals. If an email is scheduled to be sent at 3pm and 60 emails are due to be sent. The 1st email will be sent at 3pm, then the next email will be sent 45 secs later, so in total the 60 emails will take just under an hour to send.

## Global Automated Actions

For every flow, Operations have defined a set of actions that will take place depending on different triggers happening in the flow. This is to ensure good data management practices.

- **On Complete:** When the contact is finished the flow, the SFDC lead or contact status will update to Recycle. 
- **On Reply:** If a contact replies to an email, the contact will be removed from the flow and the SFDC lead or contact status will be updated to Qualifying. 
- **On Days Overdue:** If a task in a flow becomes 30 days overdue, we will be removing the contact from the flow and updating the sfdc lead or contact status to Recycle. 
- **On Negative Signal:** If a call is marked as a negative signal (through the call dispositions), the contact will be removed from the flow. Depending on the call disposition selected, it will update the SFDC lead/contact status. See below for more detail. 
- **On Bounce:** If an email bounces, the contact will be removed from the flow. The lead will be marked as bounce in SFDC under the field Bad Data Reasons and the task related to the email will be marked as bounce and have the bounce code attached to it. 
- **On Meeting booked:** If a meeting is booked through the flow, the contact will be removed from the flow and the SFDC lead and contact status will be updated to Qualifying. 

## Phone Numbers

### SDRS

- All SDRs will receive a “base” number from which all calls will come from but local dial and international local dial will support calling into other state/countries. 
- If we have an entity in that country, and the SDR is calling into that country, Groove will call from a local number in that country, regardless of the SDRs base country number. 
- If we don’t have an entity, then Groove will use the SDRs assigned base number to call. 
- For example, if they have a UK base number, and call into Germany, since we have an entity in Germany, Groove will dial from a german number. If they try to dial into Hungary, where we don’t have an entity,  the number will call from UK. 

### BDRs

- All BDRs will receive a number from the territory they cover. It will work in a same way as SDRS if they dial into a state/country where we have an entity. 

## Call Dispositions

| Call Dispostion Name | Description  | Signal |
| ------ | ------ | -------| 
|    CC:Answered: Info Gathered: Potential Opp    |Some qualification questions were answered but more follow up is needed before an IQM is set| Positive signal|
|   CC: Answered: Info Gathered: Not Opp yet |Some qualification questions were answered but no current use case or not the right time| Positive signal |
| CC: Answered: Not Interested |Have stated on the call they are not interested| Negative signal |
| CC: Answered: Personal Use |They are using GitLab for personal reasons| Negative signal |
| CC: Answered: Asked for Call Back | Caught them at a bad moment and they asked for a call back OR they are still evaluating tool, call back in a few weeks | Positive signal |
| CC: Answered: Using Competition |They are using competition|Negative signal |
| Automated Switchboard |You reached the automated switchboard and there was no option forward |Neutral signal |
| Main Company Line - Can't Transfer Line |There's no way to contact your prospect through this company number | Neutral signal |
| IQM Set | You were able to schedule an IQM while on the phone call. Note that a trigger exists in SFDC to automatically change lead status to Qualifying when this option is selected| Positive signal |
| Correct Contact: Left Message |You were able to reach the voicemail for the correct contact and you left a message on their machine or with their Personal Assistant | Neutral signal |
| Correct Contact: Not Answered/Other |You were able to reach the correct contact through a company directory but it kept ringing. You reached the contacts voicemail but their voicemail was not set up so you could not leave a message|Neutral signal | 
| Incorrect Contact: Answered |The wrong person answered the phone number that you had for this contact and it is the wrong persons phone number (They were not a personal assistant). They didn’t take a message for the correct person or give helpful information |  Neutral signal |
| Incorrect Contact: Left Message |The wrong person answered the phone and it is the wrong persons phone number (They were not a personal assistant). They took a message for the correct person/gave you the correct number for the contact| Neutral signal |
| Incorrect Contact: Not Answered/Other |You got through to the voicemail but the voicemail was for someone other than the person who you were trying to contact. Or the person was not listed in the company directory and you were calling the companies main number |Neutral signal |
| Incorrect Contact: Answered: Gave Referral | It was the wrong person but they gave a referral to speak to. Please record in notes who the referral is. | Positive signal |
| Incorrect Contact: No Authority | The person who answered the phone number has no authority nor decision to move forward with a purchase.| Negative signal |
|Correct Contact: Discovery Call Set  | You were able to schedule a discovery call while on the phone call. Note that a trigger exists in SFDC to automatically change lead status to Qualifying when this option is selected | Positive Signal |

## Spaces 

Spaces allows users to build a spreadsheet within Groove by pulling in account or opportunity data. A Live Space can also be used by leveraging a Salesforce report to automatically import opportunities that match the report. This Live Space will dynamically update by scanning our Salesforce instance for new records and updating the Space appropriately.

This feature provides BDRs, AEs, and RMs a better opportunity to collaborate within Groove and maintain Salesforce fields updated through in-line editing. Additionally, Sales and Sales Dev can create notes and tasks for each other in these Spaces which will save over to Salesforce. Spaces is a great place to build account reports on BDR’s Actively Working and Pursuit 6QA Accounts.

**Note: You can share the space with any Groove user, but if you edit or delete the space, it will do so to everyone who the space is shared to.**

Additional resources regarding Spaces and how to use them can be found in the following Clari Knowledge Base articles:

- [Groove Spaces: Opportunity Management](https://clari.my.site.com/customer/s/article/Spaces-Opportunity-Management)
  - Includes details about Live Spaces towards the middle of the page.
- [Groove Spaces: Custom Account Lists](https://clari.my.site.com/customer/s/article/Spaces-Custom-Account-Lists)

## Groove Salesforce Fields

### Activity Object

|Field label | Field Name | Description |
| ------ | ------- | ------ |
| Times Opened | Times_Opened | How many times the email was opened by any of the recipients |
|Times Clicked |Times_Clicked |How many times any of the links contained in the email were clicked|
|Last Opened Date|Last_Opened_Date|Most recent email open by one of the recipents|
|Replied|Replied|A checkbox indiciating if the email was replied to.|

### Task Object

|Field label | Field Name | Description |
| ------ | ------- | ------ |
|Call Duration|CallDurationInSeconds|How many seconds a call was made using Groove Dialer was|
|Call Type|CallType|Inidcates if a Groove Dialer call was inbound or outbound |

### Activity Custom Fields

|Field label | Field Name | Field Type |Description |
| ------ | ------- | ------ |-----|
|Groove Sent from Flow|Groove_Sent_From_Flow|Checkbox|If checked, this email was sent from a flow. If not, it was sent from gmail|
|Flow Name|Flow_Name|Text(225)|If the email was sent from a flow, the ID and Name of the flow will show up here|
|Template Name|Template_Name|Text(225)|If a template was used when the email was sent(gmail or flow), the ID and name of the template will show up here|
|Groove Inbound Response Time Seconds|Groove_Inbound_Response_Time_Seconds|Number(18,0)|Response time to an inbound email in seconds|
|Groove email sent at|Groove_email_Sent_at|Date/time|The time at which an email was sent|
|Activity Overdue by Days|Groove_activity_overdue_by_days|Number(3,0)|This will display the amount of days an activity was overdue by the time it was complete|
|Step Type|Groove_Step_Type|Text(225)|What type of set was used to complete the task|
|Step Number|Groove_step_number|Number(3,0)|Which step within a flow was completed|

Note 1: the above Flow and Template Name fields will populate data back with the following format: [Id of the flow/template]:: [name of the flow/template]

Note 2: "Groove sent from flow," "Flow Name," and "Template Name" in the chart above apply to all step types so that you can report in Salesforce on the templates applied to all flow steps, and whether or not each activity was sent via Flow. "Groove inbound response time seconds" and "Groove email sent at" apply only to email steps in Flow.

Note 3: Groove will start populating this information back to newly created tasks within 24 hours after the fields have been created in Salesforce.

### Lead/Contact Fields

|Field label | Field Name | Field Type |Description |
| ------ | ------- | ------ |-----|
|Last Touch|Groove_last_touch|Date/time |Date and time when person was last contacted|
|Last Touch Type |Groove_last_touch_type|Text(50)|Type of last tocuh|
|Last Engagement|Groove_last_engagement|Date/time|Date of last engagement|
|Last Engagement Type|Groove_last_engagement_type|Text(50)|Type of last engagement|
|Last Step Completed|Groove_last_step_completed|Date/time|Last step was completed in the flows that the person was most recently added to|
|Last flow name|Groove_last_flow_name|Text(225)|Flow name for the fllow the person was most recently added to|
|Last Flow Status|Groove_Last_flow_Status|Text(50)|Status for the flow the person was most recently added to|
|Last Flow Step Number|Groove_Last_Flow_Step_Number|Number(3,0)|Step number this person is on the flow they were most recently added to|
|Last Flow Step Type|Groove_last_flow_Step_type|Text(200)|Step type the person is currently on for the flow they were most recently added to|
|Engagement Score|Groove_engagement_Score|Number(5,0)|Engagement score based on opens, replies and clicks|
|Next Step Due Date|Groove_next_Step_due_Date|Date|Date when the next step is due in the flow they were most recently added to|
|Added to Flow Date|Groove_Added_to_flow_Date|Date|Date of the flow the personwas most recently added to|
|Flow Completed Date|Groove_flow_Completed_date|Date|Date when the person completed the flow they were most recently added to|
|Removed from flow date|Groove_removed_from_flow_date|Date|Date when this person was removed from the flow they were most recently added to|
|Removed from flow Reason|Groove_removed_from_flow_Reasons|Text(50)|Reason why someone was removed from they flow they were most recently added to|
|Active Flows Count|Groove_Active_Flows_Count|Number(3,0)|Displays the amount of flows the person is active in|
|Last Step Skipped|Groove_Last_Step_skipped|Text(50)|Step # and Date the person was skipped in the flow they were most recently added to|

Note 1: For fields involving Flow activity, the information will be taken from the last flow to which the person was added.

### “Out-of-the-Box” Salesforce Reports & Dashboards

Dashboards

- Groove - Activity Dashboard
  - The top reports from Groove Insights focused on Activities that your team is carrying out. Click into each report for a deeper dive, or find the rest of the reports within the "Groove Insights - Reports" folder.
- Groove - Contacts and Leads Dashboard
  - The top reports from Groove Insights focused on Contacts and Leads your team is reaching out to. Click into each report for a deeper dive, or find the rest of the reports within the “Groove Insights - Reports” folder.
- Groove - Opportunity & Account Dashboard (QTR)
  - The top reports from Groove Insights focused on the Accounts being targeted and Opportunities that your team is working on. Click into each report for a deeper dive, or find the rest of the reports within the "Groove Insights - Reports" folder.
- Groove - Accounts by Inferred Status QTR
  - Accounts with activity this quarter broken out by Groove's Inferred Status. Filter out reps, each status type, and expand the activity window to see more details
- Groove - Accounts with Activity this QTR
  - Groove report of accounts with activity this quarter, broken down by Groove's Inferred Status and including Groove metrics, like: open/click rates, total meeting/call time, and more
- Groove - Active in Multiple Flows
  - Contact Report showing which Contacts are currently active in more than 1 flow. It's grouped by account and includes relevant account information from Groove
- Groove - Activities by Account
  - Shows a breakdown of activities per account over the past and current month
- Groove - Activities by Rep This Week
  - Shows each rep's overall activities this week and the corresponding engagement. Standard activities are separated from those completed inside a Groove Flow
- Groove - Activities Per Flow This Month
  - Shows Flow usage, performance, and a user breakdown for Master Flows. Chart breaks down usage of each Flow step type
- Groove - Activities per Opp QTR
  - Groove breakdown of activities by rep & type for opportunities closing or closed this Quarter. Includes open & closed opps
- Groove - Activities: Closed vs Won Opps
  - Groove report on activity differences between closed won vs lost opportunities this quarter, including Groove analytics on activities & engagement. Update the stage settings to match your org's status on closed/won
- Groove - Calls by Rep this Week
  - Shows calls made by each rep this week, broken down by Call Result/outcome. Details include call durations, recordings, and whether the call was made via Groove Flow or one-off.
- Groove - Email Template Performance
  - Shows the performance of each Groove template, in terms of their Open, Click, and Reply rates, broken out by subject
- Groove - Flow Overview (Contacts)
  - A breakdown of all Groove Flow activities (Step Number, Step Type, etc.) broken down by account.
- Groove - Flow Overview (Leads)
  - See the breakdown of all Groove Flow activities for Leads (Step Number, Step Type, etc), broken down by company and flow name
- Groove - Key Contacts by Owner
  - Find your company's key contacts, which accounts they are from, and which rep owns that account.
- Groove - Key Leads By Owner
  - Find your company's key leads, which accounts they are from, and which rep owns that account.
- Groove - Lead Email Response Time
  - Groove report on the average response time for inbound messages broken down by lead owner, status, and type. Includes Groove analytic data
- Groove - Leads Not Touched
  - Find Leads that have not been touched in the past and current quarter, grouped by Lead owner and Account
- Groove - Manual vs Groove Activities
  - Groove report of rep activities this quarter broken down by Groove created items and other activities
- Groove - Meetings Booked This Month
  - Shows all meetings that were created this month (by rep) and logged via Groove, where the rep who was invited to meeting "Assigned" to the Salesforce Event
- Groove - My Open Leads QTR
  - A Groove report of YOUR leads with an "open" status that have activity this & last quarter. Also includes a number of Groove analytic fields to help identify key people
- Groove - Open Leads
  - View open leads, grouped by lead owner and account.

## Available Integrations

### Highspot

- [Clari Knowledge Base Article - Groove Highspot Integration](https://clari.my.site.com/customer/s/article/Highspot-Integration)

### LinkedIn Sales Navigator

- Each Groove user can connect their LinkedIn Sales Navigator account to their Groove Omnibar.
- [Clari Knowledge Base Article - Groove LinkedIn Integration](https://clari.my.site.com/customer/s/article/LinkedIn-Integration)
