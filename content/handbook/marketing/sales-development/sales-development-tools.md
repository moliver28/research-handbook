---

title: "Sales Development Tools and Manager Resources"
description: "This page outlines all the tools we use in the Sale Dev org."

---
# Sales Development Tools

This page is to act as your guide to the many tools and best practices that the Sales Development Organization uitlizes.

## Salesforce

[Salesforce](https://www.salesforce.com/) is our CRM of record. It integrates with all of the other applications in our business tech stack. Salesforce stores prospect, customer, and partner information. This includes contact information, products purchased, bookings, support tickets, and invoices, among other information.

### Salesforce Training Resources

### Lead and Contact Views

#### SDR Lead Views

* **S1 View** - [MQL’s](/handbook/marketing/marketing-operations/marketo/#mql-and-lead-scoring) and Hot leads that require quick follow up (i.e event)s, and Drift conversation leads for tenured SDRs
* **S2 View** - Only leads that are active in a HT touch sequence and have a phone number
* **S3 View** - Qualifying leads. These are leads that you are actively qualifying in a back and forth conversation either by email or through phone calls.  Each lead needs to either be active in a follow-up sequence, have an active task, or have a future meeting scheduled which can be seen in a future “last activity” date.

#### BDR Lead Views

* **FY25 B1 - My Leads, Action Neeeded** - Includes any leads that we have committed to follow up on ASAP. These are our highest converting leads and are a mix between High Priority and[MQL’s](/handbook/marketing/marketing-operations/marketo/#mql-and-lead-scoring) PTP is now part of our scoring so there may be leads in there that have MQLd due to PTP so you'll have to click into the lead to see more. High Priority leads belong to a High Priority campaign - you can find which one at the bottom of the page in the campaigns section.
* **FY25 B2 - AWA leads w/ LIM** - Includes leads in your name and that match to your Actively Working Accounts. It's best to sort these by Last Interesting Moment Date and consider the Lead Classification Score when deciding which to sequence. We do not surface leads that were sequenced in the last 14 days.
* **FY25 B3 - Change Owner AWA's (Clone)** - These leads are now in your name automatically (not leads you've necessarily chosen and moved into your name, the old B3 view had to be cloned which is no longer needed). This view however allows you to see leads that may not have been moved into your name because at the time, they did not meet criteria. These could be bc: the leads were in lead statuses of: Accepted, MQL, or Qualifying when you moved the account into Actively Working since leads with those statuses should stay with the owner. Leads that were in disqualified or ineligible are also not moved into your name. This view will allow you to get eyes on any leads that are not in your name. You then can review any LIM dates and decide to put leads into your name if no one is reaching out. Keep sorted by LIM Date.
* **FY25 B4 - My HT Leads W/ Phone** - This view should be used when either you do not have enough daily call tasks in Outreach to hit your daily KPI or when your team wants to do a call blitz etc. It allows you to easily pull into Outreach and create additional call tasks for your leads currently in high touch sequences.
* **FY25 B5 - My Qualifying Leads** - These are leads in qualifying status which means some sort of two way engagement happened between you two. Please review this section of our handbook for best converting follow up practices.
* **FY25 B6 - 6QA imported leads** -  You can find any leads in your ownership related to accounts that have just hit 6QA status in this view. 6QA means the account has been shown to have high intent signals and has similar signs to other accounts that have purchased from us. We have brought in appropriate titles from ZoomInfo so that when you move the 6QA account into Actively Working, you have some leads all ready for sequencing.
* **FY25 B7 - BDR Prospecting Last 7 Days** - This view will surface leads that you created or refreshed from ZoomInfo or Cognism. (Please note that there is also a contacts view you will need to check should the person already be a contact in our system)


#### BDR Contact Views

**Contact ownership is based on the BDR Assigned and Account owner fields. If you are the BDR Assigned on the account, you will be the owner of all contacts associated with that account. If there is no BDR Assigned, the account owner will be the owner of the contacts.**

* **B1 View** - Includes MQL’s, Hot contacts that require quick follow up
* **B2 View** - Contacts related to Actively working accounts that you can choose to sequence - *give 48 hrs
* **B3 View** - Active HT sequenced leads that have a phone number - to help with call downs
* **B4 View** - Qualifying leads. Contacts that you are actively qualifying in a back and forth conversation either on email or through phone calls. Each contact in this status needs to either be active in a follow up sequence, have an active task or have a future meeting scheduled which can be seen in a future “last activity” date.

## Outreach

[Outreach.io](https://www.outreach.io/) is a tool used to automate emails in the form of sequences. Users can track open rates, click-through rates, response rates for various templates, and update sequences based on these metrics. Outreach.io also helps to track sales activities such as calls. All emails/calls/tasks that are made through Outreach.io are automatically logged in Salesforce with a corresponding disposition. See below for a list of current call dispositions, what they mean, and scenarios on when to use each of them.

### Outreach Training Resources

* [Intro Slide Deck](https://docs.google.com/presentation/d/1IpTVE4-Nkblfuiu6f1OUnFbi8IpjRPK7UDSx4eSfQCg/edit#slide=id.g5a343b482a_2_10) and [Training Video](https://gitlab.edcast.com/journey/weeks/cards/7257647)
    * password should be in onboarding issue or ask your manager
* GitLab Edcast: [Advanced Outreach Training](https://gitlab.edcast.com/journey/weeks)
* Best Practices: [Our Outreach Handbook Page](/handbook/marketing/marketing-operations/outreach/)

### Outreach Sequences

 A user created series of touchpoints (calls, emails, LinkedIn) in order to communicate with a prospect and automate the user's workflow

* **Primary Sequence:** a sequence created by SDR leadership that should be used by all reps to follow up with inbound leads
* High touch and low touch sequences: a high touch sequence should be used for higher-quality leads. High touch sequences require you to add in more personalization and have more touch points across a longer period of time, including phone calls and LinkedIn Connect requests. Low touch sequences are typically automated and run for a shorter period of time. We define higher quality leads based on the volume of inbound you have to manage as well as whether the lead has has 1-2 of the following for MM/Large accounts:
    * Valid company email domain or company name
    * Phone number
    * Title related to our buying/influencer personas
    * 6Sense intent
    * Set up for company/team use checkbox equals true
    * Account has X # of Developers (MM/Large nuances)
    * LinkedIn profile
        * SMB lead may need to have 2-3 of the above1-2 of the above
        * Different teams may have nuances so please check in with your manager for their feedback.

### Outreach Collections

Ways to organize similar sequences and snippets

* **Common Collections**
    * [FY24 Global Inbound High Touch Collection](https://app1a.outreach.io/sequences?queryFilters=%5B%7B%22attribute%22%3A%22collection%22%2C%22operator%22%3A%22is%22%2C%22value%22%3A%5B%2269%22%5D%7D%5D&sortBy=recent&sortDirection=desc)
    * [FY24 Global Inbound Low Touch Collection](https://app1a.outreach.io/sequences?queryFilters=%5B%7B%22attribute%22%3A%22collection%22%2C%22operator%22%3A%22is%22%2C%22value%22%3A%5B%2271%22%5D%7D%5D&sortBy=recent&sortDirection=desc)
    * [FY24 Inbound Languages Collection](https://app1a.outreach.io/sequences?queryFilters=%5B%7B%22attribute%22%3A%22collection%22%2C%22operator%22%3A%22is%22%2C%22value%22%3A%5B%2270%22%5D%7D%5D&sortBy=recent&sortDirection=desc)
    * [Events Collection](https://app1a.outreach.io/sequences?queryFilters=%5B%7B%22attribute%22%3A%22collection%22%2C%22operator%22%3A%22is%22%2C%22value%22%3A%5B%2266%22%5D%7D%5D&sortBy=recent&sortDirection=desc)
    * [Good Outbound Collection](https://web.outreach.io/sequences?queryFilters=%5B%7B%22attribute%22%3A%22collection%22%2C%22operator%22%3A%22is%22%2C%22value%22%3A%5B%2276%22%5D%7D%5D&sortBy=recent&sortDirection=desc)
    * [Testing Outbound Collection](https://web.outreach.io/sequences?queryFilters=%5B%7B%22attribute%22%3A%22collection%22%2C%22operator%22%3A%22is%22%2C%22value%22%3A%5B%2275%22%5D%7D%5D&sortBy=recent&sortDirection=desc)

### Outreach Tags

A method of distinguishing sequences and snippets from others. Use tags to help narrow down which sequences you should be using in a particular situation

#### Common Tag Examples:

* **Primary-** a sequence created by SDR leadership that should be used by all reps to follow up with inbound leads
* **High Touch/Low Touch-** Distinguish if the sequence is high or low touch
* **Region-** Can be used to show which region the sequence
* **GTM-** The message trying to be delivered. Ex. Security, CI/CD ect.
* **Inbound/Outbound-** Whether the sequence is meant for inbound or outbound prospecting
* **Language-** What language the sequence is written in

### Outreach Snippets

Content created for BDRS and SDRs to use to create hyper-personalized sequences, one-off emails, or to use for reaching out to prospects via LinkedIn.

* **Common Snippet Examples**
     - [Objection Snippets](https://app1a.outreach.io/snippets?direction=asc&order=owner&tags%5B%5D=objection)
     - [Support Snippets](https://app1a.outreach.io/snippets?direction=asc&order=owner&tags%5B%5D=Support)

### Outreach Sequence Creation Process

#### Prior to Building a New Sequence

Please review the BDR or SDR process and conceptualize what iteration does a new sequence bring to our existing library, from the moment you have clarified your intent please [follow the steps here](/handbook/marketing/sales-development/#new-outreach-sequenceworkflow-creation) to request a new sequence, we'll work with you to develop the best possible iteration we can.

#### Building a New Sequence, Prior to Setting it Live
As you begin building your new sequence, make sure you are following the proper guidelines:

* **Naming Convention** - all sequences should use the approved naming convention:
    -   **Year** (FY24)
    -   **Team** (IB)
    -   **Region** (Worldwide - WW, AMER, APAC, EMEA, LATAM)
    -   **Segment** (SMB SDR, LARGE MM SDR)
    -   **Target/Reason for Sequence** (Trial, Contact Request, Event, etc)
    -   **Touch Level** (High Touch - HT, Low Touch - LT)
    -   **Language** (English - EN, Spanish - SP, Portuguese - POR, French - FR, German - GER, Dutch - DUT, Russian - RUS, Korean - KOR, Japanese - JP)

**Example** - FY24 IB WW SMB SDR Free to Paid HT EN

* **Sequence Settings**:
    - **Sequence Type** - Steps by day interval
	- **Delivery Schedule** - Weekday Business Hours
	- **Interval Type** - Schedule Days
	- **Tags** - always add “SDR” or "BDR" and “Inbound” or "Outbound" along with any other applicable tags such as the Region, Team, and Touch Level
	- **Collections** - choose the appropriate collection based on team and purpose
	- **Shared with Org?** - Others can see it and use it
	- **When the primary prospect replies** - Finish sequence
	- **When non-primary prospects reply** - Finish sequence
	- **Prospect Throttling** - Enabled
	- **Max active prospects per user** - 1000
	- **Auto-activate prospects** - Yes - activate based on throttles
	- **Max adds per user every 24 hours** - 100
	- **Sequence Ruleset**:
        - **Default** - Does not make tasks on your behalf. Prospects can be added to these sequences more than once, if not already active. prospects are not able to be added to other exclusive sequences, but can be added to a non-exclusive sequence. Updates prospects to appropriate stages. Resumes out of office prospects after 5 days.
        - **Campaign** - Follows the same rules as the default settings except out of office are resumed 1 day after.
        - **Create Call Task** - Follows same rules as the default except it will create call tasks on opened emails. Minimum email opens needed: 2
        - **Event** - Prospects can only be added to this sequence once. They are not exclusive to this sequence. Out of office are resumed 1 day after.
        - **Follow Up Sequences** - This ruleset is specifically designed for prospects who are already in qualifying stage as once you add them, their lead status will stay in qualifying rather than going back to accepted.
        - **Saas Trial** - for following up with trial leads

* **Email Settings**:
    - **Click Tracking** on all emails
    - **Open Tracking** on all emails
    - Appropriate variable template syntax

* **Email Messaging**:
    - For each email step in your sequence, send yourself a test email to ensure formatting is appropriate and all variables are set correctly.

Once you have set your sequence up with the proper name, structure, settings and email messaging, return to the issue and tag your manager and sales development operations manager for approval. **If your sequence is rejected, you will need to make the necessary changes to gain approval. If your sequence is approved, you are cleared to move forward with setting your sequence live. A decision on approval will be made within 48 hours of the request.**

#### Setting a Sequence Live
Go into the sequence settings and toggle the bar in the upper left from gray (paused) to green (active). You are now ready to use your sequence.

#### _For Managers_

#### Approving the Build of a New Sequence
* When deciding whether to approve or deny the creation of a new sequence, use your best judgment to decide whether this sequence really needs to be built, or if what the rep is looking for can be accomplished with an A/B test or by utilizing one of the existing ops-approved sequences. Is the sequence/step that is being replaced actually underperforming?
* If creation of the new sequence meets with your approval, go to the issue and add your approval. If you don’t approve, leave a comment explaining why the sequence has been denied.

#### Approving the Activation of a New Sequence
When deciding whether to approve or deny the activation of a new sequence, make sure the sequence follows all proper guidelines, including:
* Naming Convention
* Structure
* Sequence Settings
* Email Settings
    - Click/Open Tracking
    - Variable template syntax
* Sequence messaging is appropriate and acceptable

If all of these conditions are met, go back to the issue and add your approval. If the rep needs to revise anything before they can set it live, leave a comment explaining what they still need to do before they can begin using their sequence.

Managers then need to add a tag of “manager approved” on the sequence in Outreach


#### Post Sequence Live
30 day check - is the sequence meeting performance benchmarks?



## ZoomInfo

[Zoominfo](https://www.zoominfo.com/) provides our Sales Development Representatives and Account Executives with access to hundreds of thousands of prospects and their contact information, company information, tech stack, revenue, and other relevant data. Individual records or bulk exports can be imported into Salesforce using extensive search criteria such as job function, title, industry, location, tech stack, employee count, and company revenue. More information can be found on the Marketing Operations [Zoominfo handbook page.](/handbook/marketing/marketing-operations/zoominfo/)

### ZoomInfo Training Resources

* ZoomInfo University: [40 Minute Introduction Video](https://university.zoominfo.com/learn/course/101-introduction-to-zoominfo-on-demand/training-session/101-introduction-to-zoominfo)
* GitLab Edcast: [ZoomInfo Introduction Training](https://gitlab.edcast.com/journey/week)
* GitLab Edcast: [ZoomInfo Advanced Training](https://gitlab.edcast.com/journey/week-note)
* ZI 101 Video: [Quick Saved Searches](https://www.youtube.com/watch?v=OpTgvoOQ1jM)
* ZI 101 Video: [Leveraging List Match](https://www.youtube.com/watch?v=vl1kpsNa874)
* ZI 101 Video: [Tagging Prospects in LinkedIn](https://www.youtube.com/watch?v=GQWTZWbMgg8)
* GitLab Handbook: [Zoominfo handbook page](/handbook/marketing/marketing-operations/zoominfo/)

## LinkedIn Sales Navigator

[LinkedIn Sales Navigator](https://www.linkedin.com/sales/login) is a prospecting tool & extended reach into LinkedIn Connections.

### LinkedIn Training Resources

* LinkedIn Intro: [70 Minute Navigator Tutorial](https://www.linkedin.com/learning/learn-linkedin-sales-navigator-3/welcome-to-sales-navigator)
* GitLab Edcast: [LinkedIn Navigator Training](https://gitlab.edcast.com/journey/week-note)
* GitLab Video: [Peer Tips](https://drive.google.com/file/d/1xzz8cEiSFqZ7bOw-dpqoNlHjSDwrIFE4/view)
* GitLab Video: [LinkedIn Personalization](https://www.youtube.com/watch?v=7vEVB-WgDPA)
* GitLab Video: [Loading Accounts from Salesforce into LinkedIn](https://www.youtube.com/watch?v=_D8walmmOAU)

## 6Sense

6Sense is a targeting and personalization platform that we use to reach our different audiences based on intent data and our ideal customer profiles. [6Sense Handbook Page](/handbook/marketing/marketing-operations/6sense/)

### 6Sense Training Resources

* [General 6Sense Resources](https://6sense.com/resource-library/)
* [6Sense for BDRs Video](https://6sense.com/resources/videos/inside-sales-persona-demo)
* [6Sense Account Identification Guide](https://6sense.com/platform/account-matching/the-guide-to-account-identification/)
* [6Sense Persona Identification Guide](https://6sense.com/guides/how-to-identify-and-influence-the-entire-buying-team/)

### 6Sense 6QA Automations

We currently have in place an automation that will automatically move accounts that reach 6QA status from 6Sense to SFDC. 

Specifically:

- We have three segments (SMB, MM, ENTG) saved on folder 9a of 6Sense. Each of these segments tries to identify the top accounts we currently have on SFDC that are not being worked by our team.
- Through 6Sense Orchestrations, we will automatically update these accounts weekly.
     - We aim for 200 records to be enriched every week.
     - We aim for a 90 day buffer period between records being enriched.
     - The SFDC field `Sales Dev Automation` will be enriched with the value of the respective segment (SMB, MM, ENTG)
- From the moment these accounts get enriched by 6Sense, they will automatically show up on our pre-saved searches on ZoomInfo, one for each segment. 

     - [SMB Saved Search](https://app.zoominfo.com/#/apps/searchV2/v2/results/person?query=eyJmaWx0ZXJzIjp7InBhZ2UiOjEsImNvbXBhbnlQYXN0T3JQcmVzZW50IjoiMSIsImlzQ2VydGlmaWVkIjoiaW5jbHVkZSIsInNvcnRCeSI6IlJlbGV2YW5jZSIsInNvcnRPcmRlciI6ImRlc2MiLCJleGNsdWRlRGVmdW5jdENvbXBhbmllcyI6dHJ1ZSwiY29uZmlkZW5jZVNjb3JlTWluIjo4NSwiY29uZmlkZW5jZVNjb3JlTWF4Ijo5OSwib3V0cHV0Q3VycmVuY3lDb2RlIjoiVVNEIiwiaW5wdXRDdXJyZW5jeUNvZGUiOiJVU0QiLCJleGNsdWRlTm9Db21wYW55IjoidHJ1ZSIsInJldHVybk9ubHlCb2FyZE1lbWJlcnMiOmZhbHNlLCJleGNsdWRlQm9hcmRNZW1iZXJzIjp0cnVlLCJzY29yaW5nT3B0aW9ucyI6IntcImlkXCI6XCJaUmhSeWJtUHIxMGU2cEVQVDVBcVwiLFwib25seUNvbnRhY3RGaWx0ZXJzXCI6ZmFsc2V9Iiwic291cmNlSWQiOiJBTlVSQSIsInRpdGxlU2VuaW9yaXR5IjoiQ19FWEVDVVRJVkVTLFZQX0VYRUNVVElWRVMsRElSRUNUT1IiLCJycHAiOjI1LCJkZXBhcnRtZW50cyI6IkluZm9ybWF0aW9uIFRlY2hub2xvZ3ksRW5naW5lZXJpbmcgJiBUZWNobmljYWwsQy1TdWl0ZSIsImhhc01vYmlsZVBob25lIjoiaW5jbHVkZSIsIkNGLXNhbGVzZm9yY2UtYWNjb3VudC0xMDEiOnsiaW5jbHVkZSI6eyJwbGF0Zm9ybSI6InNhbGVzZm9yY2UiLCJlbnRpdHkiOiJhY2NvdW50IiwiZmllbGROYW1lIjoiMTAxIiwiaWRMaXN0IjpbIjQwNTk5eDN6bHRmeDliNWoiXSwiaXNJbmNsdWRlIjp0cnVlfX19LCJzZWFyY2hUeXBlIjowfQ%3D%3D)
     - [MM Saved Search](https://app.zoominfo.com/#/apps/searchV2/v2/results/person?query=eyJmaWx0ZXJzIjp7InBhZ2UiOjEsImNvbXBhbnlQYXN0T3JQcmVzZW50IjoiMSIsImlzQ2VydGlmaWVkIjoiaW5jbHVkZSIsInNvcnRCeSI6IlJlbGV2YW5jZSIsInNvcnRPcmRlciI6ImRlc2MiLCJleGNsdWRlRGVmdW5jdENvbXBhbmllcyI6dHJ1ZSwiY29uZmlkZW5jZVNjb3JlTWluIjo4NSwiY29uZmlkZW5jZVNjb3JlTWF4Ijo5OSwib3V0cHV0Q3VycmVuY3lDb2RlIjoiVVNEIiwiaW5wdXRDdXJyZW5jeUNvZGUiOiJVU0QiLCJleGNsdWRlTm9Db21wYW55IjoidHJ1ZSIsInJldHVybk9ubHlCb2FyZE1lbWJlcnMiOmZhbHNlLCJleGNsdWRlQm9hcmRNZW1iZXJzIjp0cnVlLCJzY29yaW5nT3B0aW9ucyI6IntcImlkXCI6XCJaUmhSeWJtUHIxMGU2cEVQVDVBcVwiLFwib25seUNvbnRhY3RGaWx0ZXJzXCI6ZmFsc2V9Iiwic291cmNlSWQiOiJBTlVSQSIsInRpdGxlU2VuaW9yaXR5IjoiQ19FWEVDVVRJVkVTLFZQX0VYRUNVVElWRVMsRElSRUNUT1IiLCJycHAiOjI1LCJkZXBhcnRtZW50cyI6IkluZm9ybWF0aW9uIFRlY2hub2xvZ3ksRW5naW5lZXJpbmcgJiBUZWNobmljYWwsQy1TdWl0ZSIsImhhc01vYmlsZVBob25lIjoiaW5jbHVkZSIsIkNGLXNhbGVzZm9yY2UtYWNjb3VudC0xMDEiOnsiaW5jbHVkZSI6eyJwbGF0Zm9ybSI6InNhbGVzZm9yY2UiLCJlbnRpdHkiOiJhY2NvdW50IiwiZmllbGROYW1lIjoiMTAxIiwiaWRMaXN0IjpbIjQwNTk5eDN6bHRmeDliNWkiXSwiaXNJbmNsdWRlIjp0cnVlfX19LCJzZWFyY2hUeXBlIjowfQ%3D%3D)
     - [ENTG](https://app.zoominfo.com/#/apps/searchV2/v2/results/person?query=eyJmaWx0ZXJzIjp7InBhZ2UiOjEsImNvbXBhbnlQYXN0T3JQcmVzZW50IjoiMSIsImlzQ2VydGlmaWVkIjoiaW5jbHVkZSIsInNvcnRCeSI6IlJlbGV2YW5jZSIsInNvcnRPcmRlciI6ImRlc2MiLCJleGNsdWRlRGVmdW5jdENvbXBhbmllcyI6dHJ1ZSwiY29uZmlkZW5jZVNjb3JlTWluIjo4NSwiY29uZmlkZW5jZVNjb3JlTWF4Ijo5OSwib3V0cHV0Q3VycmVuY3lDb2RlIjoiVVNEIiwiaW5wdXRDdXJyZW5jeUNvZGUiOiJVU0QiLCJleGNsdWRlTm9Db21wYW55IjoidHJ1ZSIsInJldHVybk9ubHlCb2FyZE1lbWJlcnMiOmZhbHNlLCJleGNsdWRlQm9hcmRNZW1iZXJzIjp0cnVlLCJzY29yaW5nT3B0aW9ucyI6IntcImlkXCI6XCJaUmhSeWJtUHIxMGU2cEVQVDVBcVwiLFwib25seUNvbnRhY3RGaWx0ZXJzXCI6ZmFsc2V9Iiwic291cmNlSWQiOiJBTlVSQSIsInRpdGxlU2VuaW9yaXR5IjoiVlBfRVhFQ1VUSVZFUyxESVJFQ1RPUiIsInJwcCI6MjUsImRlcGFydG1lbnRzIjoiSW5mb3JtYXRpb24gVGVjaG5vbG9neSxFbmdpbmVlcmluZyAmIFRlY2huaWNhbCIsImhhc01vYmlsZVBob25lIjoiaW5jbHVkZSIsIkNGLXNhbGVzZm9yY2UtYWNjb3VudC0xMDEiOnsiaW5jbHVkZSI6eyJwbGF0Zm9ybSI6InNhbGVzZm9yY2UiLCJlbnRpdHkiOiJhY2NvdW50IiwiZmllbGROYW1lIjoiMTAxIiwiaWRMaXN0IjpbIjQwNTk5eDN6bHRmeDliNWMiXSwiaXNJbmNsdWRlIjp0cnVlfX19LCJzZWFyY2hUeXBlIjowfQ%3D%3D)

- These saved searches will pull the relevant decision-makers per segment, and through ZoomInfo workflows do the following:

     - Automatically enroll SMB leads to the fully automated sequence [here](https://web.outreach.io/sequences/13896/overview)
     - Automatically add MM/ENTG accounts to the [SFDC dashboard here.] (https://gitlab.my.salesforce.com/01ZPL000000kAPN)
     - Automatically add a sample size of prospects from each 6QA'd account to the SFDC view titled `B6 - My 6QA Leads.`
         
## Qualified 

[Qualified](https://www.qualified.com/) is the Sales Dev Org's tool we use to chat with visitors on the GitLab website. Currently the SDR teams primarily respond to inbound chats and visitors using Qualified. The BDRs also have the ability to initiate chats with known leads from their actively working accounts. 

## Chorus

Call and demo recording software. [Chorus](https://www.chorus.ai/) tracks keywords, provides analytics, and transcribes calls into both Salesforce and Outreach. Chorus will be used to onboard new team members, provide ongoing training and development for existing team members, provide non-sales employees with access to sales calls, and allow sales reps to recall certain points of a call or demo. At this time, US Sales, US Customer Success, US SDRs will be considered recorders. Non-US Commercial and Non-US SDRs can request recorder access once they have completed the GDPR training course. Non-US recorders will also need access to the EMEZ Zoom Group. Everyone else can access the tool as a listener if they wish.

### Chorus Training Resources

* Chorus: [Tips for Getting Start](https://docs.chorus.ai/hc/en-us/articles/115009183547-Tips-on-Getting-Started-with-Chorus)
* GitLab Edcast: [Chorus Overview](https://gitlab.edcast.com/journey/week)
* GitLab Edcast: [Sample Chorus IQM Calls](https://gitlab.edcast.com/insights/sample-chorus)

## Crayon Competitive Messaging Resources

[Crayon](https://app.crayon.co/intel/gitlab/battlecards/) hosts competitive messaging resources that are maintained by GitLab's product marketing team. 

# Sales Dev Manager Resources

## FY24Q3 Manager Tool Certification

We have an end-to-end process and tool walkthrough that walks manager through all the knowledge and information they need to know to be able to use our tech stack, both for inbound and outbound processes. The full walkthrough of this training is [documented on the issue here](https://gitlab.com/gitlab-com/marketing/sales-development/-/issues/401). Moreover, abbreviated notes of the training can be [found here](https://docs.google.com/document/d/1chOoHvwk-dSsAwoloZhdGiJJoFz0yjjq07kOYmzQUvQ/edit).

## General leadership principles
This page will serve as a training resource and operational guide for current and future managers. All Sales Development Managers should follow the [general leadership
principles](/handbook/leadership/) set out in the handbook.

- [1-1s](/handbook/leadership/1-1/)
- [Providing regular feedback](/handbook/leadership/#giving-feedback)
- [Dealing with underperformance](/handbook/leadership/underperformance/)

## Manager Onboarding
Onboarding is essential for all Sales Development Managers at GitLab. As part of onboarding, a [Becoming a GitLab Manager](https://gitlab.com/gitlab-com/people-group/Training/blob/master/.gitlab/issue_templates/becoming-a-gitlab-manager.md) issue will be created for each manager when they join, or are promoted. This issue is intended to connect new managers with the crucial information they need, and ensure they have access to all the resources and training available.

### Outbound BDR Process Manager Onboarding

The BDR process that we have defined here in GitLab is meant to provide a repeatable set of steps that an outbound BDR can follow to achieve results. It is very important for an onboarding manager to align themselves as quickly as possible to this process as it is a proven method that will help them manage their team in a efficient and data-driven way.

The BDR Process is explained step-by-step in the [main SDR handbook page here](/handbook/marketing/revenue-marketing/sdr/#bdr-outbound-process)

For a newcoming manager, we provide the [Manager attention needed baords](/handbook/marketing/sales-development/sales-development-tools/#tracking--monitoring-resources) that will be your main tool in understanding where your team is aligned to our BDR process, and where they need assistance.

To help structure your usage of the above, you can follow the steps below during your first month at GitLab while [the document here will be your main go-to resource](https://docs.google.com/document/d/18k1_jDHVgNzy2SzcPZ7GAOdJ6zb9i37Z4-V1-dEFKiU/edit#)

| Action | Benefit |
| ------ | ------- |
| Clone the W&H Dashboard and edit each report to be exclusive to your team's names | Gives you a SSoT that you and your team can easily reference |
| Review the dashboard with your team, and discuss how the data on it connect to the [BDR KPIs](/handbook/marketing/revenue-marketing/sdr/#sdrbdr-roe-and-inbound-lead-management) | Allows you to understand your team's level of maturity and each team member's current level of alignment to existing processes |
| Take note of any discrepancies or points of feedback from the team, either transcribe them to 1:1s for individual conversations or to the SDR Issue board for org-wide improvements | Enables you to filter between discrepancies that are caused because of a team member's lack of diligence that should be improved upon by the individual OR for discrepancies that were caused by an org-wide operational shortcoming that should be improved upon on a global scale. |
| Set realistic expectations with the team about adherance to org KPIs and set a review mechanism to go over them on a reccuring basis | Helps maintain a repeatable structure of accountability for your entire team |

## General Sales Development Leadership Resources

| Resource | Purpose |
| :----: | :----: |
|  [Leadership Handbook](/handbook/leadership/) | Tools and resources to assist people managers in effectively leading and developing team members at GitLab |
|  [Compensation Review Cycle (Compa Review)](/handbook/total-rewards/compensation/compensation-review-cycle/) | How to review our Compensation Calculator and carry out the Compensation Review Cycle |
|  [Sales Dev Manager Onboarding Checklist](https://docs.google.com/spreadsheets/d/1cnKc757SWenlJRoa_zqPhFyekp4mq56oSMFXPSDW-CU/edit#gid=0) | Make a copy and complete this checklist to ensure you know your team's tools and processes |
|  [360 Feedback](/handbook/people-group/360-feedback/) | Opporunity for managers, direct reports, and cross functional team members to give feedback to each other. Schedule and all information on this page.|
|  [Workday](/handbook/people-group/360-feedback/) | All team member HR information |
|  [Transitioning to a Manager Role at GitLab](/handbook/people-group/learning-and-development/manager-development/) | New manager resources and what to expect |

## Lead Routing & Alignment Resources

| Resource | Purpose |   
| :----: | :-----: | 
|  SSoT Sales > Sales Development Territory Alignment Sheet  | Can be found in Manager Home Base sheet. Single source of truth document for Sales Development to AE/SAE/Territory Alignment | 
|  [Territory Change Request Issue Board](https://gitlab.com/gitlab-com/marketing/sales-development/-/boards/5569691) | Use the territory Change Request Issue Board and the BDR_Territory_Change Sales Development Issue Template in order to request a territory change for your rep.  |
|  [Sales Dev Internal Onboarding and Transition issue template](https://gitlab.com/gitlab-com/marketing/sales-development/-/blob/main/.gitlab/issue_templates/Internal_Onboarding_and_Transition_Template.md) | This issue template is to be used when a new teamember is joining the Sales Development Org for the first time or they are transitioning from SDR to BDR or vice versa. 
|  [BDR Territory Change Request issue template](https://gitlab.com/gitlab-com/marketing/sales-development/-/blob/main/.gitlab/issue_templates/BDR_Territory_Change.md) | Use this issue template when you would like to request territory changes for your BDRs. |
|  [Sales Dev Exit Handover Template](https://gitlab.com/gitlab-com/marketing/sales-development/-/blob/main/.gitlab/issue_templates/BDR_Territory_Change.md) | This template is meant to be used for team members that are departing from a team to hand off their pending tasks to their peers. |

##  GitLab Resources

|                                                                                             Resource                                                                                             | Purpose |
|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:| :-----: |
|                                         [Adding yourself or someone else to the team page](/handbook/editing-handbook/#add-yourself-to-the-team-page)                                          | Video to assist new hires with updating their blank team page placeholder |
|                                                                             Update manager or SDR role in Salesforce                                                                             | To update a manager or Sales Development role in Salesforce, submit a [single person access request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=Individual_Bulk_Access_Request) or [bulk access request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=Bulk_Access_Request) depending on the number of roles that need to be updated.
|                                                                          Create or update members of a Slack user group                                                                          | A user group is a group of members in a workspace who often need to be notified at once — for example, @managers. To update who is in one of the Sales Development groups, submit a [single person access request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=Individual_Bulk_Access_Request) or [bulk access request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=Bulk_Access_Request) depending on the number of people that need to be added. Fill out the requested info and delete any remaining info that isn't needed. Under 'Account Creation' put Slack User Group: @ Name (i.e. @Managers). You can also use the bulk AR to request the creation of a user group and list the users who should be in it.  |
|                                                                                Add someone to the Sales Development Gmail alias                                                                                | Submit a [single person access request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=Individual_Bulk_Access_Request) or [bulk access request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=Bulk_Access_Request) depending on the number of people that need to be added. Fill out the appropriate info and delete any remaining info that isn't needed. Under 'Account Creation' put the Sales Development email alias |
|                                                         [Make an edit to the handbook](/handbook/editing-handbook/)                                                          | Guide for how to edit the handbook. *Note: all new hires must do this as part of their onboarding |
|                                                          [Add a new page to the handbook](https://www.youtube.com/watch?v=9NcJG9Bv6sQ)                                                           | This GitLab Unfiltered video will walk you through how to create a new handbook page |
|                                            [Create a new job family](/handbook/hiring/job-families/#job-family-creation-using-web-version-of-gitlab)                                             | For each job at GitLab, the job family is the single source of truth for the expectations of that role. If you need information about when to create a new job family vs when to use an existing one watch [this video](https://www.youtube.com/watch?v=5EcFz1qNj2E&feature=emb_title) |
|                                           [Resolve failed pipeline when creating an MR](https://www.youtube.com/watch?v=WlgH-6cX1k8&feature=youtu.be)                                            | Quick overview of how to go about identifying why a pipeline might be failing for a merge request to the handbook page |
| [Sales Development Onboarding Job Specific Task Section](https://gitlab.com/gitlab-com/people-group/employment-templates/-/blob/main/.gitlab/issue_templates/onboarding_tasks/department_sales_development.md) | This task section will automatically be added to the general onboarding issue for new SDRs based on their role when hired. |

##  Tracking & Monitoring Resources

| Resource | Purpose |
| :----: | :-----: |
|  [SDR Issue Board](https://gitlab.com/gitlab-com/marketing/sales-development/-/boards/5569691)  | Used to track GitLab issues involving the SDR team. This is a global issue board. |
|  [SDR Event Tracker Issue Board](https://gitlab.com/groups/gitlab-com/-/boards/1718115) | Used to follow upcoming events globally |
|  [SDR Sisense Dashboard](https://10az.online.tableau.com/#/site/gitlab/views/DraftSalesDevAnalyticsHub/Overview?:iid=1) | SalesDev Analytics Hub Dashboard  |

|  [Lead View Descriptions](/handbook/marketing/sales-development/#lead-and-contact-views) | There are Manager Lead views in SFDC mirroring the SDR and BDR views which are described on the linked Handbook page on the left. These views need to be checked regularly by managers to ensure all necessary leads are being worked.

## Action Needed Boards

| Teams | Boards |
| :----: | :-----: |
|  **AMER BDR TEAMS**  | [AMER BDR Action Needed](https://gitlab.my.salesforce.com/01ZPL00000069v3) -  [AMER BDR Manager Attention Needed](https://gitlab.my.salesforce.com/01ZPL00000069VF) |
|  **EMEA BDR TEAMS**  | [EMEA BDR Action Needed](https://gitlab.my.salesforce.com/01Z4M000000soBO) -  [EMEA BDR Manager Attention Needed](https://gitlab.my.salesforce.com/01ZPL0000006ABB) |
|  **APAC BDR TEAMS**  | [APAC BDR Action Needed](https://gitlab.my.salesforce.com/01ZPL000000bkbl) -  [APAC BDR Manager Attention Needed](https://gitlab.my.salesforce.com/01ZPL000000cUJd) |
|  **Global SDR Inbound Teams**  | [SDR Global Action Needed](https://gitlab.my.salesforce.com/01Z4M000000soBT) |

## Sales_Dev_fyi Channel Information

### Post Naming Convention
* Posts in #Sales_Dev_fyi should have a header that lets the Reps know who the post is for, what type of post it is, and the urgency of the post.
* It is requested  when a post in the Sales Dev FYI channel pertains to you that you leave a 👀  emoji on the post to let management know that you read it


Format: **Audience | Type | Urgency**
Example:

* **Audience**
     * All of Sales Development
     * All SDRs
     * All BDRS
     * Specific Teams/Positions
          * Ex. AMER Large Land East

* **Type**
     * Enablement - (Mandatory, Optional)
     * Operations -  (Process Change, Tools, Sequences, Reports, System Changes/System Updates )
     * New Event/Initiative/Resource
     * Survey
     * Org Wide Announcement

* **Urgency**
     * 🚨 Action Required - urgent, action required with a due date
          * Example: Mandatory enablement launch
     * 🧠 Need to Know - urgent, update directly impacts audiences' workflows/processes
          * Example: Sales Dev process change
     * 📊 Feedback Requested - less urgent, action requested (with or without long-lead due date) but not required
          * Example: Survey from Product Group
     * 👀 Review - less urgent, does not directly or materially impact audiences' workflows/processes
          * Example: New customer story or new competitive resource

* **Example Sales_Dev_fyi channel post titles**
     * `[All of Sales Development] | [Enablement - Mandatory] | [🚨 Action Required]`

     * `[All BDRs] | [Operations - Outreach Process Cleanup] | [🧠 Need to Know ]`

     * `[EMEA Enterprise Land] | [Operations - New Outreach Event Sequence] | [🚨 Action Required ]`

     * `[All of Sales Development] | [Survey - People Group Survey Reminder] | [📊 Feedback Requested ]`


## Field Marketing <> BDR Collaboration Process

Our FM/BDR collaboration process is a method that we follow in the spirit of maximizing cross-functional collaboration. We have created an issue template for Field Marketers to populate, which in turns gets managed from the [Kanban Board here.](https://gitlab.com/gitlab-com/marketing/sales-development/-/boards/5665082). The premise of the [issue template](https://gitlab.com/gitlab-com/marketing/sales-development/-/blob/main/.gitlab/issue_templates/FM_BDR_Collaboration_Template.md) and board is to streamline communication between our teams. The issue template very clearly articulates all next steps required of this process while it also tries to leave space for us much AdHoc collaboration as required for each specific event.

As a BDR Director you will be tagged first in this issue as the primary DRI, while as a BDR Manager you will be involved in this issue on a case-by-case basis by your regional Director. All next steps of this process are clearly mentioned in the template for the issue so please follow each step in turn. The Sales Dev Operations team is also tagged and will be there to monitor progress and offer help if requested.

## Status Related 6Sense Reports

On folder #5 in the [6Sense segments list](https://gitlab.abm.6sense.com/segments/manage), you'll find the templates for the main three categories of accounts that we have. These templates are meant to be cloned and edited for your teams as per the guidelines below and will assist with coaching on 1:1s and team calls, as well as driving more predictable pipeline building.

**[Currently Actively Working Accounts Template](https://gitlab.abm.6sense.com/segments/segment/495284/accounts/?mode=edit&segment_type=6sense_network)**

* This report will cross-reference your team's currently AWAs against 6Sense intent data, and will highlight the best ICP accounts currently on your team's pipeline.

**[CE/SFDC Accounts not in Actively Working Status](https://gitlab.abm.6sense.com/segments/segment/495296/accounts/?mode=edit&segment_type=6sense_network)**

* This report will highlight the best ICP accounts on our existing database, that are not actively being pursued by your team.

**[Greenfield Accounts not in Actively Workin](https://gitlab.abm.6sense.com/segments/segment/495295/accounts/?mode=edit&segment_type=6sense_network)**

* This report will highlight the best ICP accounts that are NOt currently on our existing database. Please note that due to the complexity of our sales territories, there may be edits required on filter #8 (Address). There are multiple variants for City, Country or Region that can be used to accurately display each team's territory. Please feel free to reach out to the Ops team to help you determine these and generate the best reports possible.

## Sales Dev Territory and Role Reports

**[Sales Dev by Salesforce Profile and Role - ](https://gitlab.my.salesforce.com/00O8X000008gonx)**

* Sales Dev Ops profile is the only profile with the ability to help add a member to opps beyond stage 0 (we can't add SDR/BDR to closed won opps however)
* Certain roles have certain permissions ie. Team Lead roles are able to transfer leads. Director level roles are able to help when account assignments are incorrect by updating account address and employee size information.
* Roles determine visibility based on the region (AMER, APAC, EMEA). Example: a BDR with EMEA in their role, will be able to see all accounts where the account territory owner has EMEA in their territory role name.

**[Sales Dev Territories by Team role/member associated with each territory - ](https://gitlab.my.salesforce.com/00O8X000008gpBL)**

* This allows you to see what members/roles are associated with each territory. When you need a change in BDR assignment to a territory, please sharethe territory name with Sales Dev Ops, not the name of the account. Search for the account owner name and tell Sales Dev Ops which territory/territories require that BDR to be assigned.

## Onboarding
GitLab People Connect Team members will [create the onboarding issue](https://internal.gitlab.com/handbook/people-group/people-operations/people-connect/onboarding_process/#timing) and start completing the onboarding tasks, no later than one week before the new team member joins. People Connect Team members require a minimum of 4 business days (with the new hire timezone as the basis) before the new hire's start date to complete all onboarding tasks. This issue will be automatically assigned to you. As a manager, you will [also have tasks](/handbook/people-group/general-onboarding/#managers-of-new-team-members) that need to be completed prior to the new team member's start date.

The general onboarding issue will also automatically add a ['Sales Development' section](https://gitlab.com/gitlab-com/people-group/employment-templates/-/blob/main/.gitlab/issue_templates/onboarding_tasks/department_sales_development.md) under 'Job Specific Tasks' based on the role of the new SDR. Both you and your new hire will have tasks to complete in this section.

With the creation of this issue, an [access request (AR) will also be automatically created](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/tree/master/.gitlab/issue_templates/role_baseline_access_request_tasks/department_sales_development) for a new team member on their second day at GitLab. This AR lists the role based entitlements (pre-defined groups and system-level access that are granted automatically to team members depending on their role) your new hire will need.
     *See what is being auto provisioned on this AR [here](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/tree/master/.gitlab/issue_templates/role_baseline_access_request_tasks/department_demand_generation).

### New Hire's First Day
On your new hire's first day, the assigned People Connect Team member will [schedule a welcome email](https://internal.gitlab.com/handbook/people-group/people-operations/people-connect/onboarding_process/#day-1-onboarding-tasks) to arrive at 7:30am (local time of the new team member) on their start date detailing how your new hire can access GitLab and begin their onboarding process.

### Manager Onboarding Checklist
##### Prior to Day 1
* Complete ‘Manager’ tasks on the onboarding issue *Note: there are tasks to complete prior to your new hire starting
* Schedule a welcome call at the start of your new hire’s first day to discuss:
     * Main focus should be completing as much of your onboarding as possible.
     * When you have available time feel free to move ahead as some onboarding task lists for the day won't take you all day.
     * How to manage meeting invites in your inbox (there are a ton!)
     * You will receive numerous emails in their first two weeks asking you to register or activate your license to a specific tool we use, please go ahead and do all of this.
     * What you can expect in regards to [onboarding at GitLab as an SDR](/handbook/marketing/sales-development/sdr-playbook-onboarding/)

##### After new hire has started

* Complete remaining ‘Manager’ tasks on the onboarding issue
* Set up [1:1s](/handbook/leadership/1-1/)


## Career Mobility Issues

A career mobility issue should be opened 2 weeks before the transition date by the people connect team. If the aligned manager does not see that issue created 2 days before the scheduled transition date, the manager should reach out to the People Connect Team via the [#people-connect Slack Channel](https://gitlab.slack.com/archives/C02360SQQFR).

**People connect opens mobility issue if any of the following are true:**

1. If there is a change in department.  Ex. SDR/BDR moves to the SMB Sales Team
2. Someone changes from Individual Contributor to Manager
3. Someone changes from Individual Contributor to Team Lead
4. Someone Changes from Manager to Individual Contributor
5. Someone Changes Teams

## Leave of Absence
If an SDR will be out for a prolonged period of time, please follow the proper processes and complete the SDR leave checklist.
- [Parental Leave](/handbook/total-rewards/benefits/general-and-entity-benefits/#parental-leave)
- [Emergency Situations](/handbook/paid-time-off/#communicating-time-off-for-emergency-situations)
- [Unpaid leave](/handbook/paid-time-off/#unpaid-leave-of-absence)

### Manager Sales Development Leave Checklist
-

## Offboarding
The full process for offboarding at GitLab differs based on whether it is voluntary or involuntary. These processes can be found on the [offboarding handbook page](/handbook/people-group/offboarding/#offboarding).

### Manager Offboarding Checklist

* The people team will create an [offboarding issue](/handbook/people-group/offboarding/#offboarding), complete all ‘Manager’ tasks on the issue. If you have any questions use the #managers #people-connect slack channels. You can also reach out to the assigned people ops team member on the issue.

### Sales Dev Handover Issue

* When a teamember is either leaving GitLab, leaving the Sales Dev Org, or transferring to another BDR team the departing team's manager must created a [Sales Dev Handover Issue](https://gitlab.com/gitlab-com/marketing/sales-development/-/blob/main/.gitlab/issue_templates/Exit_handover_template.md?ref_type=heads)

## Sequence Creation

* We follow the process outlined [here](https://handbook.gitlab.com/handbook/marketing/sales-development/#new-outreach-sequenceworkflow-creation) for creating new content, when it comes to reviewing this content, the Sales Dev Ops team will follow a quarterly cadence of reviewing the sequences/campaigns that are on the In-flight column on the board [here](https://gitlab.com/gitlab-com/marketing/sales-development/-/boards/5540104). We use the criteria below:

### Sequence needs to be a globally applicable

- Only sequences that could be used by any team member globally can be added to the Good Collection. 
- If a regionalized sequence can be translated to English, then the English copy of it will be added to the GC while the local variant will be added to the Team Collection.
- Field Marketing event sequences and any other similar type will not be considered for the Good Collection.

### Sequence needs to have completed the requirements set out on the issue descrption.

- At least 200 people enrolled and/or having completed the sequence on a timely manner. 
- ( Sequence has over 5% reply rate AND No less than 50% negative sentiment rate. ) OR Sequence has over 5% meeting set rate.

## Monthly Audit Process

In an effort to increase transparency as well as consistency in terms of credit attribution for opportunities sourced by the Sales Development organization, we will conduct on a monthly basis a full audit of all opportunities giving credit to either a Sales Development or a Business Development Representative. Please do note that SDRs/BDRs that are on their ramping quarter are exempt from being auditors.

Participating and completing the audit on time is mandatory.

Guiding principles: 

1. All activities must be logged and documented in Salesforce. <br>
2. Timestamps for such activities will be audited and cannot be modified after the fact
Sourcing cases must be clearly documented. <br>
3. All opportunities associated with a Sales Development team member must have meaningful engagement for Web Directs and full qualifications criteria for Direct Deals.

**Mandatory SLA:** Audit and XDR response must be completed by the first day of the following month. Rulings will be completed by the management team by the end of the second day.  Invitations and pairing will be sent to the entire Sales Dev team the first week of the month. It is the responsibility of the team member to find a backfill to do their audit if they are unable to complete the audit within set timelines.

### XDR'S RESPONSIBILITY:

1. All activities must be logged in Salesforce. 
Pro-actively flag opportunities with questions or created outside the standard process in the monthly [Audit Doc.](https://docs.google.com/spreadsheets/d/1IBSfKuK6QcvsAIPvW7uYYCjeMtqPmpeDv2swsPAZShc/edit#gid=0). Please note that there's a separate audit worksheet specific to the PubSec team that is shared separately for compliance reasons.

Examples: web directs. AE-created. Partner generated (for now), Opp w/no value, duplicate opp

### AUDITOR'S RESPONSIBILITY:

1. Auditor needs to review all notes and time stamps related to the opportunity
2. Auditor needs to log an activity #Audited on the activity record of the opportunity as mentioned below, this way we can track completion of monthly audit.
3. Ensure that relevant activity & products are attached.
4. Ensure that Products match up to Qualification info in Call Connect and/or Meeting
5. For BDRs, ensure account was in AWA status
ensuring that the [RoE](https://handbook.gitlab.com/handbook/marketing/sales-development/#rules-of-engagement-quick-guide) was followed
6. Flag in the monthly [Audit Doc](https://docs.google.com/spreadsheets/d/1IBSfKuK6QcvsAIPvW7uYYCjeMtqPmpeDv2swsPAZShc/edit#gid=0), any questions related to the audited opportunities.

### AUDIT PROCESS:

Each month you will be assigned one of your peers to Audit. We will share a report with all the S1 opportunities created that month. SDRs will audit SDRs and BDRs will audit BDRs. We will do our best to pair people from the same segment however it is possible that you end up auditing someone from another segment. 

Once you’ve audited an opp, you will create a task by logging a call, choose “other” as type, and write “#Audited” in the subject line. If an opp needs more research, write “#Audited - Pending Review” and add this opp into the Audit Review spreadsheet. 

[**Audit Process Video Walkthrough**](https://www.youtube.com/watch?v=ef8gFx0lR48)

### AUDIT REVIEW (what to look for): 

| Action | Rationale | Coaching Opportunity | 
| ------ | ------ | ------ |
| Opp creator    |    Our standard is to get to credited for creating opportunities that meet the qualification criteria.    |   When you set up a conversation with an AE, you should create the opportunity. If we see that an opp was created by an AE but has the SQS = Sales Dev Generated, there will need to be evidence of meaningful engagement by the Sales Dev rep prior to the opp being created.   |
| For Web Direct opportunities, check timestamp and for two way meaningful engagement prior to the purchase       | Web Direct opportunities are people that bought directly from the store themselves without necessarily having being influenced by us.       |  Explain that our role in this company is to directly influence purchasing decisions through positive and purposeful interactions with prospects. Requesting credit when we have not added specific value to a prospect's journey diminishes the credibility of our team. | 
| Check to see whether opportunity qualification fields are populated. | Marketing and Sales are expected to collaborate to move prospects down the funnel based on specific qualifiers. When it comes to Stage-0 opportunities these are the opportunity qualification fields. | It's common that individuals do not fill these fields in the name of agility. This however does not create accountability in progressing these prospects down the funnel in a predictable manner. |
| Check the date of opportunity creation. | Creation of the opportunity should occur when you're engaged with the prospect and have begun the qualification process. There will sometimes be a child or related opp that needs to  be created based on needs discovered during the IQM with AE. Should that be the case, the created child/related opp should have the IQM activity as a related task on it. | Explain that creating opps as soon as engagement occurs will lead to better management of a BDRs/SDRs pipeline. | 
| Check to see if there is a contact associated to the opp and that there's meaningful engagement prior to the opp being created. | Our standard process requires that we work specific leads and that we convert the main contact person to a contact/opportunity upon qualification. | Explain that this best practice will help with measuring and moving an opportunity further down the pipeline because of accurately being able to communicate the decision-making team from the prospect's side. |
| If activity shows up on the record, and the activity is a connected call with notes, verify that the activity matches in Outreach. | Activities on SFDC can be edited freely and therefore questioned by our audit team. | Explain that Outreach is a SSoT that can be used as irrefutable proof of outreach. Even if other systems fail, Outreach is always used as the last back-up. |
| If activity matches, check that activity happened in accordance with our Actively Working Rules Of Engagement (RoE). | Team members from both Sales and Marketing are expected to contribute pipeline only within their assigned territory. | Explain that making sure that being aligned to the RoE will not create any contigencies when measuring pipeline. |

#### Typical Red Flags:

1. Opportunity Source: Sales Qualified Source should be SDR generated if not validate that there is a sourcing case documented. 
2. Created by: The XDR should create the opportunity, if not, there should be a written explanation 
3. Did the XDR set and complete a meeting on the same day without previous activity?
4. Are there duplicate opportunities?
5. Is NetARR missing?

_Directors, Ops and JB will select random opps each month to audit and ensure audit process is being followed_

#### Best practices to ensure credit for SAO:

1. Sequence all leads if you’re reaching out
2. Make sure your activity is logged that shows how you drove the meaningful engagement that led to the opportunity.
3. Populate all qualification fields
4. If activity was a phone call or a zoom call, log notes at the time of call
5. If a meeting was set, make sure you create a stage 0 opportunity prior to the meeting, populate fields during/afterwards. If person will likely web direct, keep opp in your name and update next steps
6. If engagement is in LinkedIn or Whatsapp, take a picture and attach to chatter/opp
7. If activity happened at an event, make sure that immediately following the event, you create a stage 0 opportunity and  send follow up email that recaps the conversation that took place

### Reports

[1. SAO Report for SDRs](https://gitlab.my.salesforce.com/00O8X000008QeFh?sdtd=1)

[2. SAO Report BDRs](https://gitlab.my.salesforce.com/00O8X000008QdwB)
