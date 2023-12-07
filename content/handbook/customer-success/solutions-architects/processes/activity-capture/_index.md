---

title: Solutions Architecture Activity Capture
description: >-
  Solutions Architects record all customer and prospect activity to promote
  transparency and collaboration
---

# Activity Capture


Solutions Architects record all customer and prospect activity to promote **transparency** and **collaboration**. By consistently capturing our prospect or customer-facing activity, we can perform analysis for further reporting to establish **efficient** decision making for GitLab's business.

## Why Record Customer Activities?

1. **Transparency** Reporting on SA activity regularly provides an easy way for other team members to see summaries of all SA activity, allowing for questioning our actions and increasing our accountability. Transparency also promotes valuable collaboration through increased visibility of our prospect and customer interactions.
1. **Collaboration** Timely feedback can be provided by reading through customer/prospect activity summaries. Team members may have experienced similar customer situations and can offer an alternate perspective or guidance as an asynchronous comment. It's also easier to perform pattern matching across our plays by reviewing current activity. Finally, it's an excellent vehicle for team members to thank those who have helped them with their work and receive recognition for work well done.
1. **Efficiency** When team members have questions on how a specific account activity went, they can read activity updates instead of seeking out the account team members. Leadership can also make essential decisions on how to run our business through analysis of our prospect or customer-facing activity, ultimately driving desired business **results**.

## Recording Activity with Troops.ai

SA prospect/customer activity is recorded into `Task` objects within Salesforce based on the `Log a Call` action on an `Opportunity`. However, [Troops.ai](https://www.troops.ai/) is leveraged to simplify the capture of required and optional fields via Slack to alleviate the SA from navigating through Salesforce.

### Troops Setup

- Setup your Troops.ai account and connect it to Slack, Salesforce, and your Google Calendar.
    - [Troops Setup Video](https://vimeo.com/401363212)
    - [Sign up form](https://app.troops.ai/dashboard/account)
    - To generate a Troops invitation from Slack, use a `/troops` quick action. If it does not recognize your account, it will generate an invitation link to create an account. From there, link your Salesforce and Google Calendar accounts.

### Logging an Activity

- There are multiple ways to log your activity with Troops ([Log an Activity Video](https://www.youtube.com/watch?v=zRxUJSjujUk&feature=youtu.be))
    - After meetings with a prospect/customers, you will be prompted in the Slack Troops application to `Log a Call` for the activity (easiest method)
    - On-demand, type `/troops-action` in Slack and click on the `Log Activity` button
    - On-demand, type `/troops <name of account>` and choose the appropriate **opportunity**. Click `Log Activity` (NOT the `Log a Call` button)
      - It is required to log the activity against the associated **opportunity** versus at the account level.  This is to ensure accurate reporting and analysis of our engagement models.
- There is a minimal set of fields that are required to be populated, _regardless if Troops.ai marks them as optional_.
    - **Related To** - Search for and set this to the Salesforce `Opportunity` associated with the activity.
    - **Name**  - Please search for and populate the `Name` field with a prospect/customer contact existing in Salesforce that was part of the activity.   <i>`Name` is currently a single select field. Choose any contact that was part of the meeting, if possible. In the future, we may have the ability to select multiple contacts.</i>
    - **Subject**  - High-level description of the activity. Usually, the subject of the calendar event for this activity is appropriate.
    - **[SA] Activity Type** - Choose the type(s) of activity for this customer/prospect interaction  (ie. Demo, POV Related, Presentation/Pitch). For description of each activity type, refer to [this page](/handbook/customer-success/solutions-architects/processes/activity-capture/activity-desc). 
    - **Persona Levels** (Optional if unknown) - Select the customer/prospect participants' levels in this activity. Current options include: `Individual Contributor, Manager/Director, Executive` _Note: Executive should be used for any VP, C-level or the Economic Buyer_
    - **Persona Functions** (Optional if unknown) - Select the customer/prospect functions represented during the activity (ie. Development, Security, DevOps)
    - **Description** - Enter a summary of the interaction. Two to three sentences are usually sufficient, but more detail is ok. Try to capture the meeting's intent, how it went (the outcome or customer/prospect sentiment), and any prospect/customer perceived next steps. It is highly encouraged that you provide a link to more detailed notes of your meeting. You can use [Google Docs Bookmarks](https://support.google.com/docs/answer/45893) to do so.
    - **Customer Interaction Sentiment** - Choose how you feel this meeting went, indenpendently from any other meeting and independently off the status of the overall opportunity sentiment. Options for this field are strictly 'Positive', 'Neutral', and 'Negative'

#### Activity type description

All activities should fall into one of the categories described in the [activity type descriptions](/handbook/customer-success/solutions-architects/processes/activity-capture/activity-desc)

#### Example Activity Description

```
We provided a SCM and CI/CD demo for the head of application development, Homer Simpson, that was well-received.  His team is responsible for building a suite of catalog services and API for their partner merchants.  They are using Spring Boot to develop microservices and struggling with deployment consistency and complexity.  As a next step, we are scheduling a review of their current path to production.
More detailed notes are here: <link to detailed notes>
```

### Collaborating on an Update

When anyone logs an activity, Troops.ai will provide the update in a team Slack channel. It is highly encouraged that all members of the SA organization, as well as any GitLab team member, take time to review the updates to understand our business better, but also to exercise our value of **collaboration**. When reviewing updates, look for opportunities to provide a team member with some **efficiency** by sharing related work or knowledge you have that could assist with an opportunity. Also, it's a great way to understand what your team members do so that you can leverage their experience in the future. Words of encouragement and congratulations are also encouraged.

#### Team Activity Slack Channels

All troops activity updates channels are of the format `#troops-activities-<region or segment name>`:

- `#troops-activities-apj-cs`
- `#troops-activities-channels-and-alliances-sa`
- `#troops-activities-commercial-sa`
- `#troops-activities-east-sa`
- `#troops-activities-emea-sa`
- `#troops-activities-pubsec-sa`
- `#troops-activities-west-sa`

_Tip:_ You can create a dedicated slack section for all of your Troops related channels. This will allow you easy access to updates for cross-team collaboration.

### SA Specific Opportunity Fields

An **SA Validated Tech Evaluation** is a set of SA-assisted activities a prospect or a customer undertakes to make a decision on whether or not a GitLab solution will provide the value they expect. These activities include and are not limited to a guided trial, POV, value stream assessment, workshops, and strategy roadmap planning. An SA Validated Tech Evaluation does not start until a prospect or customer explicitly engages in an evaluation of value and involves meaningful engagement with a GitLab SA. As part of an SA Validated Tech Evaluation, the GitLab SA should create a [Technical Close Plan](/handbook/customer-success/solutions-architects/sa-practices/technical-close-plan/).  **If the GitLab SA does not know the next actions to progress the evaluation towards closure, it's an indication that there is NOT an SA Validated Tech Evaluation that the SA is meaningfully engaged on.**  

To assist with the analysis of SA guided technical evaluations by our prospects and customer, the SA team maintains four opportunity fields in Salesforce. These four fields can be updated through Troops.ai or within the opportunity in Salesforce:

- **Primary SA** - The primary SA assigned to and working on the opportunity.
- **SA Validated Tech Evaluation Start Date** - The date the SA started engaging with a prospect or customer on an **explicit solution evaluation** as described above. This date should mark the first time the SA engages with the customer after the customer explicitly starts an evaluation of value.  When the SA joins an initial meeting and the prospect does not seriously engage until months later, the start date should reflect when they seriously engaged. This date should not be set if the SA activity, regardless of the type of activity (e.g., demos, workshops, etc.), is for the purpose of discovery, creating interest in GitLab, education, or anything other than the serious evaluation of a GitLab to address an agreed upon problem and / or drive a specific outcome. 
  * In **Commercial**, the start date is to reflect the start of the trial when an SA is engaged with the account, even when the trial started prior to the SA engaging.
- **SA Validated Tech Evaluation End Date** - The date the SA stopped engaging with a prospect or customer from an evaluation standpoint and the technical evaluation is deemed closed as a technical win, loss, or a stalled evaluation. This has no connection to whether or not the deal closes with a win or loss, as there may be non-technical variables that may impact the success of a deal after a technical evaluation.
  * In **Commercial**, the end date is to reflect the end of the trial when an SA is engaged with the account.
- **SA Validated Tech Evaluation Close Status** - The close status of the technical evaluation:
There are two ways to update these fields in Troops.ai:
While all of these fields can be updated and changed anytime as an opportunity evolves, the end date and close status should not be populated as a forecast.
    - On the Troops `You just had a meeting` notification - select the opportunity by searching in the `Search Salesforce` box. Click the `Update Opportunity` button.
    - By searching for the opportunity first using `/troops <opportunity name>` in Slack and clicking on the `Update Opportunity` button.
    - **Win** - The technical evaluation has ended, and the prospect or customer agrees the GitLab solution meets their requirements.
    - **Loss** - The technical evaluation has completed, but the prospect or customer is choosing an alternative solution or not changing their current process due to deficiencies with the evaluated GitLab solution.
    - **Stalled** - The technical evaluation has not completed, but the customer or prospect is not actively evaluating any solution. As a guideline, this usually means the SA is not working with the prospect or customer on evaluation-related activities for at least two weeks.
- **SA Validated Tech Evaluation Close Details** - The close details are to include a short 1-2 line description of the Close Status

Whenever an SA engages a prospect/customer who has a specific problem to be addressed or goal to be achieved, and that prospect/customer needs validation that GitLab has the solution, you are encouraged to capture that as a technical evaluation. Similar to how there are some deals without a corresponding SA, there may be deals where a technical evaluation is not performed, and SA involvement is minimal.

In case that the opportunity has been closed in Salesforce, and you did not have the chance to complete all the information for your SA activities previously described, do the following:
- Go to the opportunity you need to update, and click on Show Feed and the left hand side of the topics bar.
- In the post text area, enter `@Sales-Support` and then a brief description of the fields you wish to fill. Example: 
    ```
    @[Sales-Support] please update the SA Validated Tech Evaluation Close Status field to Won, and SA Validated Tech Evaluation End Date to 10/14/2021
    ```
- Make sure you manually type the `@Sales-support` part of your message, as Salesforce will not recognize the `@` call to notify the sales support group. 

### Proof of Value (POV) Updates

Proof of Values are [tracked in salesforce](/handbook/customer-success/solutions-architects/tools-and-resources/pov/#tracking-a-pov-in-salesforce) but can be created or updated through Troops by:

- **Create POV**: Clicking on the `Add a Proof of Value` button
    - on the Troops `You just had a meeting` notification in slack
    - after searching for and selecting an opportunity or account first using `/troops <search>` in Slack
    - after using `/troops-action`
- **Update POV**: Clicking on the `Update a Proof of Value` button
    - after searching for and selecting a POV first using `/troops <name of POV>` in Slack

### Updating Activity Summaries

You can update activity that was previously logged in Salesforce or through troops.ai by clicking the `Update Activity` button on the update notification posted by troops.ai to your team activity channel.

### Creating a Contact

If a contact you'd like to associate your activity updates with does not yet exist on the account in Salesforce, you can create the contact through troops.ai:

- Use `/troops-actions` in Slack and click the `Create Contact` button. The contact will now appear in the `Name` field when logging an activity through troops.ai. ([Create a Contact Video](https://www.youtube.com/watch?v=OzNH927Y7wM&feature=youtu.be))

### Reports & Dashboards

- [Solutions Architecture Sisense Dashboard](https://app.periscopedata.com/app/gitlab:safe-dashboard/919341/Solutions-Architecture-v1.0)
- [SA Activity - Salesforce Report](https://gitlab.my.salesforce.com/00O4M000004aR83)
- [Current FQ Technical Evaluations - Salesforce Report](https://gitlab.my.salesforce.com/00O4M000004aRyn)
- [Proof of Values - Salesforce Dashboard](https://gitlab.my.salesforce.com/01Z61000000BSYo)
- [SA - APJ - Salesforce Dashboard](https://gitlab.my.salesforce.com/01Z4M000000slKr)
- [SA - Commercial - Salesforce Dashboard](https://gitlab.my.salesforce.com/01Z4M000000sl6L)
- [SA - EMEA - Salesforce Dashboard](https://gitlab.my.salesforce.com/01Z4M000000slKm)
- [SA - US East - Salesforce Dashboard](https://gitlab.my.salesforce.com/01Z4M000000skz5)
- [SA - US West - Salesforce Dashboard](https://gitlab.my.salesforce.com/01Z4M000000slKc)
- [Solutions Architect Salesforce Dashboard](https://gitlab.my.salesforce.com/01Z4M000000sky2)

### Setting up Troops alerts

Troops alerts are messages sent from the Troops application on slack that inform whenever an opportunity has changed stages. 
It helps SAs follow the progress of their opportunities through the SalesForce stages.

This [tutorial](https://www.youtube.com/watch?v=BhkaI-Sl4nc) explains how to set it up. 


### Training Resources

- Troops.ai all-hands recordings
    - [SA All-Hands Call for Troops.ai kickoff (EMEA Friendly)](https://youtu.be/OMD-cjaTYuE)
    - [SA All-Hands Call for Troops.ai kickoff (APJ Friendly)](https://youtu.be/7R0qy8t5d10)
- [Log an Activity](https://www.youtube.com/watch?v=zRxUJSjujUk&feature=youtu.be)
- [Create a Contact](https://www.youtube.com/watch?v=OzNH927Y7wM&feature=youtu.be)
- [Updating Tech Eval Dates and Status](https://www.youtube.com/watch?v=ifRYJhHzyzo&feature=youtu.be)

### Feedback and Questions Process

- In order to provide feedback on our activity capture process, tools, or reports, please create an issue in the Customer Success, [Solutions Architecture Activity Capture project](https://gitlab.com/gitlab-com/customer-success/solutions-architecture-activity-capture/-/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=) using the `Feedback` template.
- `#troops-users` slack channel - Discuss and ask questions related to Troops.ai and SA activity capture
- `#troops-gitlab` slack channel - Discuss and ask questions related to Troops.ai with the Troops account team covering GitLab

## Recording Email Activity with Salesforce

Email communication with customers can be recorded in Salesforce within the account's activity history. There are two options to track this activity:

1. BCC your "email to Salesforce address". Instructions to obtain this address are found on this [page](/handbook/customer-success/using-salesforce-within-customer-success/#tracking-emails-within-salesforce).
2. Or, download the [Salesforce Chrome plugin](/handbook/sales/prospect-engagement-best-practices) to easily log customer-related emails.

Email communication that is collected and stored in Salesforce is not measured or reported on at this time. It can be useful to collect for sharing information with the broader sales team.

## Troops Workflows

For transparency and awareness, the Troops activities specific to Solution Architects are listed below.





| Name                                                         | Description                                                  | Slack Notification                                           | Recipient                                         | Reference |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------- | --------- |
| Log a meeting                                                | Reminder notification for SA to log their customer call      | `You just had a meeting - Please provide us with information on this activity. (wf-1)` | Troops DM                                         | `wf-01`   |
| New call logged (wf-2) (region)                              | Troops will post the SA's call summary to their regional channel | `Task: Assigned To just logged an activity regarding Task: Related To.  (wf-2)` | Troops regional team activity channels            | `wf-02`   |
| Tech Eval Start Date Changed                                 | When the SA updates the Tech Evaluation's Start Date, the Opp info will post to the channel | `Opportunity: Primary Solution Architect just updated the Tech Evaluation Start Date (wf-3)` | #sa-tech-eval-start                               | `wf-03`   |
| Tech Eval End Date Changed                                   | When the SA updates the Tech Eval's End Date, the Opp info will post to the channel | `Opportunity: Primary Solution Architect just updated the Tech Evaluation End Date and/or Close Status (wf-4)` | #sa-tech-eval-end                                 | `wf-04`   |
| Missing End Date                                             | When an Opp has (1) moved past Stage 3, (2) has a tech eval start date, and (3) has no tech eval end date, it will alert the Primary SA to complete it | These opportunities are missing a Tech Evaluation End Date and have moved past Stage 3 -- Please add an End Date and work with your counterpart (wf-06) | Troops DM                                         | `wf-06`   |
| Alert Primary SA - Opp Stage 3 seven days ago and no SA Start Date | This is to notify the Solution Architect if a Oppty has moved to "Stage 3" seven days ago, is 20k+ IACV, and the Tech Eval has not formally started (`SA Tech Eval Start Date`) | This is to notify the SA Manager in the regional channel if a Oppty has moved to "Stage 3" seven days ago, has no `Primary SA`, is 20k+ IACV, and the Tech Eval has not formally started (`SA Tech Eval Start Date`) | Troops DM                                         | `wf-07`   |
| Opp is in Stage 2                                            | When an Oppty is moved to Stage 2 and has more than 20k IACV, it will post to the `stage move 2` channel to alert the team of an upcoming Oppty | Opportunity: Owner just moved  Opportunity: Name to  Opportunity: Stage | #stage-move-02                                    | `wf-08`   |
| Chorus call                                                  | Post Chorus call recordings to channel. Note: because these could be a duplicate of an SA logged activity, these are excluded from reporting | Task: `Assigned To` had a Chorus Call with  Task: `Related To` (wf-09) | #troops-chorus-calls                              | `wf-09`   |
| PS Opp without Primary SA                                    | If a PS Oppty is in Stage 3+ and has no `Primary SA`, Troops will post a notice to the regional team's channel to ensure the `Primary SA` field is populated | Opportunity: Primary Solution Architect field is blank. Don't miss out on a potential PS SPIFF! (wf-10) | Troops regional team activity channels            | `wf-10`   |
| Task Due (wf-11)                                             | If a Troops task is not complete, Troops will DM the individual at 4pm local time to complete their task(s) | Hi 👋- Here are your tasks that are due today. Please review if any need more information (wf-11) | Troops DM                                         | `wf-11`   |
| Oppty Stage 3 seven days ago and no SA Start Date            | This is to notify the SA Manager in the regional channel if a Oppty has moved to "Stage 3" seven days ago, has no `Primary SA`, is 20k+ IACV, and the Tech Eval has not formally started (`SA Tech Eval Start Date`) | `Opportunity Name` was moved to Stage 3 on  `Opportunity: 3-Technical Evaluation Date` and does not have an SA Validated Start Date. If there is meaningful SA activity on a technical evaluation, please populate this field. (wf-12) | Troops regional team activity channels; daily 8am | `wf-12`   |
| IACV Opps without Primary SA                                 | This is to notify the SA Manager that an Oppty has no `Primary SA` for any Oppty in Stage 3+ and has 10k+ IACV | `Opportunity: Primary Solution Architect` field is blank. Please update (wf-13) | Troops regional team activity channels            | `wf-13`   |
| Primary SA Field Has Changed                                 | This is to notify SA Managers when the `Primary SA` field has changed during Stages 2 or 3 | The Primary Solution Architect has changed on  Opportunity: Name (wf-14) | #troops-primary-sa-change                         | `wf-14`   |
| Missing Close Status and Stage 4                             | When an Oppty has moved to stages 4-7, the `SA Validated Tech Eval Start Date` is set, the `End Date` **or** `Close Status`is blank, Troops will DM the Primary SA as a reminder to complete the Oppty data | `Opportunity: Name` has moved to stage  `Opportunity: Stage` and is missing Tech Eval close data (wf-15) | Troops DM                                         | `wf-15`   |



## Frequently Asked Questions

- Question: Should I also be adding calls to Salesforce using the Salesforce specific Google calendar plugin as we've done in the past or should we only be using the Troops.ai integration.
- Answer: It is not required to automatically log your calls via the Salesforce-Google calendar plugin and we aren't currently planning to analyze that information.

### Troubleshooting steps (with Troops)

**Troops didn't send me a notification after the call, what may have been the cause?**

It can take 0-8 minutes for the system to ping you. After that, here are several QA steps:
- Zero external persons listed as invitees on the calendar; the invite was sent by the customer, but the attendee list only has internal GitLab employees
- Invitees do no exist in Salesforce (e.g., the call cannot be logged against anything in SFDC)
- The invitees are listed in SFDC, but under a different email address (e.g., email does not match)
- While we have a primary Email field and another field called something like Email #2, Troops only looks to the primary Email field.

**Error message when logging a call to a Lead and Opportunity**

Because Leads are a separate object and unrelated to Opportunities, you cannot log a call to a Lead and Opportunity. Instead, best practice is to log it to the Contact and Opportunity. You may need to convert the Lead to a Contact first. In that case, check with your SDR.

**I just added a Contact or converted a Lead—>Contact and now Troops cannot find the Contact**

Troops syncs the Salesforce schema every 15 minutes. So when you initially convert a Lead—>Contact **OR** you add a Contact (via Troops or directly in SFDC), it will take roughly 15 minutes for the new schema to load.

**Error message: "CannotUpdateConvertedLead"**

This error message occurs when the call happened, the Lead was converted to a Contact, and then the call was logged. In this case, it is a caching issue. Run the `/troops` command to manually log the call.






