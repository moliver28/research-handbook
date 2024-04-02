## Sales Development Inbound Process

This page is part of the Sales Development team's handbook [page](https://handbook.gitlab.com/handbook/marketing/sales-development/) and aims to break our inbound lead management process into small how-to sections.

While the contents below are meant to get you up to speed quickly, we also have a wealth of resources for team members that are looking to perfect their craft [here](https://handbook.gitlab.com/handbook/marketing/sales-development-knowledge-base/).


## Where to find your leads

Inbound leads get automatically imported to SFDC by the Sales Operations team, you can find links to their handbook pages on our [main page](https://handbook.gitlab.com/handbook/marketing/sales-development). 

To find and access your leads, please navigate to SFDC's homepage and click on the `Leads` tab. You will find the lead views below. These views are split per use-case for your convenience. The KPIs for managing these leads are thoroughly outlined in our [SLAs page](https://handbook.gitlab.com/handbook/marketing/roe-kpis-slas). 

### SDR Lead Views

| View   | Description                                                                                                        |
|--------|--------------------------------------------------------------------------------------------------------------------|
| S1 - High Priority View | These are leads that are marked as High Priority because of some high Propensity To Purchase indication. |
| S1 View | These are your net new leads that have scored high enough to reach MQL status.                                            |
| S2 View | This is a view of your existing leads that also have an associated phone call so you can easily reference your callable pipeline. |
| S3 View | Qualifying leads. These are leads that you are actively qualifying in a back and forth conversation either by email or through phone calls. Each lead needs to either be active in a follow-up sequence, have an active task, or have a future meeting scheduled which can be seen in a future “last activity” date. |

### Lead and Database Management

As part of your SDR responsibilities, you are expected to perform due diligence on each lead you receive. This includes checking the database for duplicate records, as well as referencing against our [RoE](https://handbook.gitlab.com/handbook/marketing/roe-kpis-slas).


| Step | Action                                                                                                                                  |
|------|-----------------------------------------------------------------------------------------------------------------------------------------|
| 1    | Begin with Enriching and using Find Duplicates on SFDC lead record.                                                                    |
| 2    | Click "LinkedIn" to enrich title or company info for correct search of duplicates.                                                      |
| 3    | Check “Matched Account” and ZoomInfo sections.                                                                                         |
| 4    | - For Commercial leads (SMB and MM), convert to Account if SFDC account type equals “Customer”.                                        |
|      | - If not a customer but contains an open opportunity, update Lead Status to Recycle and Recycle Reasons to Evaluating.                |
|      | - For Universities/Education leads (non-US Pub Sec), work as regular lead if technical contact.                                         |
|      | - Check for existing GitLab subscription before working lead.                                                                           |
| 5    | Read ZoomInfo description for USA PubSec indicators.                                                                                    |
| 6    | Press "Find Duplicates".                                                                                                               |
| 7    | - Check if matched account is “Actively Working” to reroute lead to BDR.                                                               |
|      | - If not actively working, check for duplicate leads or contacts. Merge if necessary, keeping oldest Initial Source.                   |
|      | - Check Matched Opportunities Section for active opportunities. Determine relevance and pass along lead if necessary.                  |
| 8    | If another lead at same company has MQL status, assign to owner with earliest MQL Date.                                                 |
|      | If another lead has Accepted or Qualifying status, assign MQL to owner of the accepted/qualifying lead.                                |
| 9    | BDRs receiving leads not associated with Actively Working accounts must assign back to SDR or chatter mktgops support if from Traction. |
| 10   | Qualified leads associated with “Actively Working” accounts are routed to BDR assigned to the Actively Working Account.                |

If you need to do edits to the database by merging leads together, please reference the videos below for an explanation. 

|                                   |
|-------------------------------------------------|
| [How to Merge Leads Together](https://www.youtube.com/watch?v=Q_EyDQdaLZw&ab_channel=GitLabUnfiltered)                     |
| [How to Merge a Lead and a Contact Together](https://www.youtube.com/watch?v=qHrCyKiNwDQ&ab_channel=GitLabUnfiltered)      |

If you'd like the assistance of another person or team, you can use SFDC chatter on the lead record. Please reference the guide below: 

| Problem                                                | Who to Chatter                                                                   |
|--------------------------------------------------------|----------------------------------------------------------------------------------|
| A SMB/MM Contact Request and the account is a customer | Chatter the Account Owner and inform them of the context of the message.          |                                                      
| A BDR receives an MQL Lead that is not from an Actively Working Account | Chatter @mktops                                                        |
| If you feel a lead has been misrouted                 | Chatter @mktops                                                                  |
| There is a Duplicate Account                           | Chatter Sales Support and ask them to merge the accounts.                         |
| An Opp has moved into Stage 1 but has Incorrect Data  | Chatter your manager who will then reach out to someone in Sales Dev Operations.   |
| Unclear Territory Assignment                           | Chatter an AE from each of the potential territories.                              |
| Requesting SAO Credit on an Opp                        | Chatter Sales Dev Ops or the Director of Commercial Sales Development.            |
| Account is in Restricted Status                        | Chatter the SAE and ask permission to reach out.                                   |

Lastly, Every so often you may be assigned a lead that has no value to GitLab and is not worth keeping within our database. Qualities that define these types of leads include:

| Step                                                    | Description                                                                                                                                                           |
|---------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Identify leads with no value to GitLab                  | Look for leads with characteristics such as incoherent or obviously forged information, or email addresses from temporary domains that self-terminate.            |
| Verify lead removal necessity                           | Ensure that the leads meet the criteria for removal and are unlikely to provide any value to GitLab.                                                                  |
| Add leads to the SPAM DELETION Salesforce campaign      | Add the identified leads to the SPAM DELETION campaign in Salesforce. Make sure to be 100% certain about the removal, as this process is irreversible.               |
| Note campaign membership, not status                    | Remember that only campaign membership matters for this process, so the campaign member status used when adding to the campaign does not affect the removal process. |
| Understand the permanence of lead removal               | Realize that leads removed through this process cannot be recovered by MktgOps, making the removal permanent. Exercise caution when initiating lead removals.         |
| Be aware of the removal schedule and exceptions         | Note that the removal process occurs daily at 12:05 am PDT via Marketo. For unscheduled removals, request assistance in the mktgops Slack channel but minimize requests. |
| Request email domain blocking if necessary              | If you observe multiple leads with the same domain, create an issue with Marketing Ops to add the domain to a block list, preventing future occurrences.           |

## Actioning your leads

**1. Determining High-touch or Low-touch sequence usage:**

| Step | Notes |
|------|--------------|
| 1    | Determine if the lead qualifies for a high touch or low touch sequence. High touch sequences are for higher-quality leads and require more personalization and touch points, including phone calls and LinkedIn Connect requests. Low touch sequences are typically automated and run for a shorter period of time. You can use Low-touch for leads where a phone number cannot be found online or in our databases, or where their contact information is incomplete and cannot be enriched by our tools, or through manual research. |
| 2    | Research the appropriate outreach collections for relevant collateral to be used. Most typically our [High-Touch](https://web.outreach.io/sequences?queryFilters=%5B%7B%22attribute%22%3A%22collection%22%2C%22operator%22%3A%22is%22%2C%22value%22%3A%5B%2269%22%5D%7D%5D&sortBy=recent&sortDirection=desc) or [Low-Touch](https://web.outreach.io/sequences?queryFilters=%5B%7B%22attribute%22%3A%22collection%22%2C%22operator%22%3A%22is%22%2C%22value%22%3A%5B%2271%22%5D%7D%5D&sortBy=recent&sortDirection=desc) collections. | 
| 


### How to enroll to outreach

| Step | Action |
|------|--------|
| 1 | Go to your SDR views on SFDC and select the lead you want to sequence. |
| 2 | Press "Import to Outreach". |
| 3 | Work from the Outreach extension on Chrome to then select the sequence you want to enroll the lead in. |
| 4 | If manual steps are required for the sequence that you chose, select "Edit Steps". Go through each step you want to edit, paying especial attention to manual variables. |
| 5 | Once the first step of an Outreach sequence is complete, the lead status will automatically change from MQL, Inquiry, or Raw to Accepted, marking that you are actively working on this lead. |
| 6 | When a lead responds to you via email, their status will again automatically change from Accepted to Qualifying. Manage these leads from your S3 and B5 lead views. |
| 7 | If you are not working on qualifying this lead further, manually change the status to Recycle so that this lead is back in Marketing recycle and isn’t stuck in your My Qualifying view. If you have spoken to the lead by phone and are qualifying them, manually change the status from Accepted to Qualifying. |
| 8 | When looking at your qualifying view, sequence leads that have no recent last activity + no active tasks + are not actively being sequenced into one of our follow up sequences that have the “Follow up Ruleset Sequences”. |
| 9.   | Tasks and your pipeline can be then managed via the Outreach [360 view.](https://support.outreach.io/hc/en-us/articles/214806328-Navigating-the-360-View-Dashboard) |
| 10.   | In the 360 View, review the list of inbound leads assigned to you by navigating to the bottom left of the screen and pressing Start tasks.                                             |   
| 19 | If a lead finishes an Outreach sequence without responding, the lead status will automatically change to unresponsive or recycle in seven days if there is still no response. |
| 20 | If a lead responds, schedule a call/meeting using Outreach’s meetings feature. |
| 21 | Manually change lead status if you don’t use an Outreach sequence to reach out to someone or if you need to unqualify a lead for bad data etc. |
| 22 | If you check the Inactive lead or Inactive contact checkbox, signifying that this person no longer works at the company, any running sequence will automatically be marked as finished. |
| 23 | If you notice your leads are being reassigned to Inquiry Queue, that’s due to a scheduled clean up job in Traction that updated Status = Inquiry to Inquiry Queue. To resolve this, add your leads to an Outreach sequence. Note: The scheduled clean up runs daily at 10:30 PM EST/EDT. | 

## SAO Credit

Qualification criteria is a minimum set of characteristics that a lead must have in order to be passed to sales and become a Sales Accepted Opportunity (SAO), these are split into [Inbound and Outbound Criteria.](https://handbook.gitlab.com/handbook/sales/field-operations/gtm-resources/#opportunities)

As an SDR or BDR, you will work to connect with inbound/outbound leads that you get a response from to obtain the applicable information required. This information is tracked on the qualification criteria on the LEAD, CONTACT, and OPPORTUNITY objects in Salesforce. In order to obtain an SAO, you will need to have the ‘required’ information filled out on the opportunity including documented 2-way communication on the Contacts in the Opportunity. Professional Services opportunities are not credited to sales development, these need to be passed straight to the account AEs for them to qualify.

**When do I create an Opportunity?**

1. **You have scheduled time with AE/SAE to speak with the prospect:**
If you are scheduling time with an AE/SAE to speak to the prospect based on a qualifying conversation you have had with the prospect, an opportunity needs to be created and placed in stage 0. On the opportunity, all “required qualification” fields need to be filled in.

2. **You have obtained a commitment/willigness from a prospect to discuss further.**
If you have a meaningful two-way communication with a prospect, but have not had the required qualification criteria to move to the Sales team, you can create an opportunity under your name so that you better track your warm conversations. These opportunities may also be used for better collaboration with your team, as they can be reviewed and brain-stormed upon during team meetings.

**Who owns the opportunity at this point?**

**1. You have scheduled time with AE/SAE to speak with the prospect.**
When you have entered the qualification criteria onto the opportunity, and have received calendar confirmation from all parties for the intro call with sales, you will change ownership to the AE/SAE. After you have saved opp owner, you will add yourself to the BDR/SDR field. The opportunity will remain in stage 0.

**2.You have obtained a commitment/willigness from a prospect to discuss further.**
At this point, the opportunity will be in your ownership but you can not have yourself listed in the Business Development Representative or Sales Development Representative field. There is a validation rule that will not allow the opp owner and the SDR/BDR representative field to be the same member.

**When will it be credited as an SAO?**

After the AE/SAL meets with the prospect to verify and supplement qualification criteria, they will move the opportunity into Stage 1 Discovery. The AE/SAL is expected to move the opportunity into the correct stage within 48 hours of the meeting reflected in the “Next Step” date field.

If an opportunity has incorrect data after it has moved into Stage 1 - Discovery, please Chatter your manager about the required changes, they will then Chatter someone from Sales Dev Operations (Ramona, Panos, Ed) once final changes are agreed upon. No one else from Sales Dev can edit opportunities once they are in Stage 1, so please try and ensure you have all the information on the opportunity before you ask the AE/SAL to accept it.

If the opportunity is for a new group of users in a Large account where sales is working on a large “central” opportunity, then your opportunity should be merged to that opportunity for you to get credit for the users you have brought to the deal. See under [Stage 8](https://handbook.gitlab.com/handbook/sales/field-operations/gtm-resources/#opportunity-stages) in the Sales Go To Market Handbook.

### Scheduling IQMs

| Step | Description |
| ---- | ----------- |
| **Creating Opportunities:** | |
| 1. Identify Communications | Identify relevant two-way communications with the prospect, such as email exchanges, call records, or LI messages. Ensure proper logging in SFDC associated with the person, company, and opportunity. |
| 2. Relate Activities | Select specific activity records highlighting your involvement and press "related to." Select the corresponding Opportunity and press save. |
| 3. Verify Sales Organization RoE | - On ZoomInfo or other sources, verify parent/child segmentation and HQ of the company or ultimate user.<br>- If discrepancies exist, communicate with the appropriate personnel for resolution. |
| 4. Overriding Incorrect Account Assignments | - Navigate to the Lead/Contact Review Admin section in Salesforce to input correct information.<br>- If unsuccessful, communicate with the Sales Dev Director for assistance in updating account records. |
| **AMER SDR - IQM Standards:** | |
| **Prior to the IQM** | |
| 1. Schedule IQM | Schedule IQM within 48 hours of the DC, giving at least 24 hours notice to the AE. Send calendar invite + Zoom link. |
| 2. AE Review | AE verifies they reviewed the opportunity beforehand. Review the specifics of the call, responsibilities, and send meeting reminders. |
| 3. Booking Meetings | For booking meetings, use Outreach and Google to get a detailed view. Ask lead to accept while on the phone. Send pre-meeting emails. |
| **IQM** | |
| 1. Attend IQM | AE and SDR show up on time or up to 5 minutes beforehand. Cameras on. Location is quiet and indoors for AE and SDR. |
| 2. Introduction | SDR introduces the call, then AE takes over. Cameras stay on. |
| **Post IQM** | 
| 1. Debrief | AE and SDR debrief within 24 hours regarding the opportunity flipping or being disqualified. Reasons are shared in writing via Slack/email and added to Salesforce by the AE. |
| 2. IQM Notes | SDR adds IQM notes to the Initiative section in the opportunity Title. Include Attendees, Raw Notes, Questions, Summary, and Next Steps. |
| 3. Opportunity Acceptance | AE must accept/"flip" within 48 hours of the IQM. |
| **No-show IQM** | |
| 1. Rebook | SDR’s responsibility to rebook using Outreach rebook sequence. Conduct outreach for 2 weeks. If IQM cannot be rescheduled, AE will unqualify the opportunity. |
| 2. Follow-up | Ongoing follow-up by SDR - 1x cycle/month. Follow-up plan includes email, voicemail, LI message, and invites to webinar/online workshop. |


### Filling CRM qualification questions

Lorem ipsum dolor sit amet, consectetur adipiscing elit. 

### Opportunity creation

Lorem ipsum dolor sit amet, consectetur adipiscing elit.  
