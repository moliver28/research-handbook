---
title: "Candidate Experience Specialist Responsibilities"
description: "This page is an overview of the processes, and systems that the Candidate Experience Team is responsible for."
---

The CES team utilizes [GitLab Service Desk](https://about.gitlab.com/stages-devops-lifecycle/service-desk/) to track all incoming requests to the CES team. If you are a GitLab team member and you have a request or question for the Candidate Experience team, email `ces@gitlab.com` and a ticket will automatically be created within the CES Service Desk. Please see the [alignment page]({{< ref "recruiting-alignment#recruiter-coordinator-and-sourcer-alignment-by-department" >}}) to learn more about which CES team member will be working on your requests.

### Best Practices

- The CES team focuses their attention on incoming requests in the following order: CES Service Desk, individual emails, `@ces` Slack pings, and lastly Slack direct messages.
- You can find the priority list based on the type of request below:
   - 0 - Contracts
   - 1 - Candidate emails
   - 2 - Reschedules
   - 3 - Schedule Interviews
   - 4 - Offboarding
- The CES team utilizes a program called [Guide]({{< ref "./coordinator#using-the-candidate-guide" >}}) to enhance the candidate experience and create a more transparent view into the talent acquisition processes. This program also allows us to rename interview subject lines to make them more candidate-friendly and succinct.

#### How the CES Team will run the Service Desk

1. Under this [CES Service Desk Project](https://gitlab.com/gl-talent-acquisition/ces-service-desk) set up the proper notifications
   - Click on the bell icon on the top right next to Star and Clone
   - Go to Custom Settings
   - Check "New issue"
   - Close out the window
1. On the left-side menu bar click Issues
   - This is where all our incoming CES emails will create an issue. You'll get an alert when someone sends an email to the CES email alias. Any "emails" that need to be addressed will be an open issue listed within this project.
1. Each CES will begin their workday by triaging issues within the Service Desk based on the [identified priority list]({{< ref "./coordinator#best-practices" >}}) by adding the appropriate label to the issue and then will begin working on Level 0 priority requests and so on.
   1. Click on the new Issue
   1. Assign it to yourself on the right-side toolbar
   1. Read the Issue message
   1. If you need to respond to the "email" by adding comments to the issue, be sure to enter comments as you would an email to the candidate. Always assume that a candidate could be included in any email.
   1. If no action is needed and the issue has been solved, you may close it. Do not close issues until you have resolved the problem you are solving.

### Screening

No action is needed by the CES team on this step. For additional information:
- Once a candidate is moved into the Screening stage, the candidate is automatically sent the GSIS.
- When scheduling a candidate for a screening call with a recruiter, the Calendly link is to be used. We will no longer use the "Request Availability" option for screening calls as this creates unnecessary manual work
   - If the candidate is sourced, the sourcer should send the Calendly
   - If it's an agency candidate or a referral where the recruiter may see the candidate first, the recruiter should send their Calendly link

### Team Interviews

- When a candidate is ready for a team interview, the recruiter will request availability in Greenhouse using the email address of the CES team member [they partner with]({{< ref "recruiting-alignment#recruiter-coordinator-and-sourcer-alignment-by-department" >}}). They will then click "Email the Team" on the right side of the candidate's Greenhouse page and send CES* the "CES Scheduling Request form".
   - If there are shorter timelines for roles as defined by the hiring team, CES needs to be made aware of those timelines for when interviews need to be scheduled. We will default to scheduling interviews at a minimum of [48 hours]({{< ref "interviewing#moving-candidates-through-the-process" >}}) out to leave time for interviewer prep.
   - Reminder: When tagging `@ces` in Greenhouse, do not tag anyone other than the team in the same ping as it will add those users to the Service Desk project.
- If no response is received within 24 hours, CES will send a follow up request for availability and set the due date of the issue to 24 hours after the next email to check for availability again.
   - After the 2nd email to the candidate with no response, the CES will make the Recruiter aware of the no response and no longer attempt to receive availability. They can close the issue temporarily, and reopen if the Recruiter receives a response from the candidate. The issue may remain open if CES leaves detailed notes on their attempts to reach out to candidate.
- After availability is received, CES will schedule interviews based on the interview plans in Greenhouse and will track preferences within the CES Service Desk [repo](https://gitlab.com/gl-talent-acquisition/ces-service-desk/-/tree/master).
   - CES will be using the Zoom integration with [Prelude]({{< ref "prelude" >}}) for interviews
   - After the candidate has provided the availability, as an optional step the CES team members can send the Candidate First Touch Email from Greenhouse if there are scheduling challenges and are pausing on sending the Guide for 24 hours.
- This email is sent to inform the candidates that their interview scheduling is in the process and to ensure better engagement with the candidates.
- If CES sees an alert to merge applicant profiles, and those profiles are a match (candidates' email address, phone number, or resume matches), they will merge the applicant profiles. Visit [the Candidate Hygiene section of the home page](/handbook/hiring#interview-stages) for instructions.
- CES will [send interview confirmations via Guide]({{< ref "./coordinator#using-the-candidate-guide" >}})
- CES will not automatically schedule next interviews based off of scorecards
   - The Recruiter or Hiring Manager will need to follow the same scheduling procedures as above in Greenhouse to request scheduling assistance on the next round of interviews.
   - Any candidates who receive a no or definitely not scorecard should be discussed with the Recruiter and the Hiring Manager before declining.

#### Technical Interview Scheduling

Certain positions require technical interviews (i.e. Ruby on Rails, Golang, Frontend, etc) where candidates are asked to demonstrate their knowledge and skills. Technical interview requests can be identified within the schedule request ticket as recruiters will utilize the following format: "Technical Interview, type of interview - 90 minutes".

**Important to Note:**

- These interviews are 90 minutes in duration
- Candidates must submit a GitLab username *before* CES can schedule their interview
- Interviewers and candidates need time to prepare prior to the interview, therefore interviews will be scheduled 4-5 business days out as the merge request will be sent by the interviewer 2-3 business days out.

To schedule a technical interview, CES should follow the process outlined below:

- When a candidate successfully reaches the Team Interview stage the recruiter will send the availability request email to the candidate.
   - If the candidate did not submit a GitLab username during the application or screening stage, the recruiter will also send the GitLab Username Form (this will be found in the Team Interview Stage or Evergreen stage). This generates an email to the candidate requesting they fill out the form with their GitLab Username.
- CES will receive two separate tickets to the CES service desk:
   - CES will immediately receive the scheduling request from the recruiter, and;
   - The completed GitLab Username form. This will only come into the service desk once the candidate replies to the email, and the username will automatically be added to the Details tab of the candidate's profile under Details > Other. CES should check that the GL username is valid and ensure that the GL username is in a URL format.
- Once CES has received and confirmed that the candidate’s GL username is valid, the CES team member can proceed with scheduling the interview in Prelude. Prelude processes can be found [here]({{< ref "prelude" >}}).
   - Note: CES has specific “pools” of interviewers to use in Prelude when scheduling technical interviews. Unless advised otherwise by the recruiter, please use “ruby on rails”, “frontend” and “golang” pools when selecting an interviewer for these specific interviews.
- CES will then open the Guide extension in Greenhouse
   - Under Guide Process click Team Interview. Then click the interview you just scheduled. You will see a section to “add a description”. CES will insert the appropriate text expander snippet here. This provides the candidate with additional information about what they can expect for their technical interview.
- CES will proceed with sending the Guide. Guide processes can be found [here](/handbook/hiring/guide).

#### Executive Interview Scheduling

The process below outlines the steps to be followed by the CES team in scheduling executive interviews while partnering with the Executive Business Administrator(EBA) team and executive recruiters. The Candidate Experience team and EBA team will adhere to a 24 hour working day SLA response time for scheduling interviews. Interview requests coming from Executive recruiters are to be scheduled in the executive calendar only.

1. The CES desk receives the scheduling ticket from the recruiter.
- CES refers to the EBA cheat sheet doc for executive interviewer preferences and contacts the respective EBA with interview details in the #EBA-team-interview-requests channel.
1. CES adds the “Pending EBA label” to the ticket and the link to the EBA slack conversation in the scheduling ticket while awaiting response.

 **Note: Follow up SLA is 24 hours to check for time conflicts delaying scheduling. If the times do not match, CES may contact the candidate
   requesting more availability or suggest some times that works for the interviewer.**
1. Once the EBA confirms the best time and date for the interview. CES sends the interview confirmation email through Guide to the candidate.

  **The email template used for the first time interview confirmation  - First Time Single Executive interview. Please use the "Updated Interview" or "Single Interview" email templates in Guide once the candidate progresses to the next level in the interview plan.**
1. CES will schedule the interview through Prelude & send the calendar invite to the interviewer. Make sure the invite is always marked private.
1. CES notifies EBA of scheduled interviews in the original slack message with a check mark emoji and close the ticket.

This process not only applies to executive requisitions, but any reqs or interviews that include executive team members supported by EBAs. Please note that not every executive team member has EBA support and they may be scheduled directly in Prelude following the usual CES scheduling [process]({{< ref "./coordinator#team-interviews" >}}).

**Note:**

- If the candidate needs to reschedule, notify the appropriate EBA in the slack channel and share the candidate's updated availability and greenhouse profile.
- The EBA and CES team will communicate any interview changes or concerns in the slack channel. Other requests such as flagging an offer, completing an interview scorecard, or regarding the executive's schedule may be communicated in this channel as well.

#### Candidate Reimbursement Process

On occasion, candidates may need to interview in person with a team member at GitLab or they may require a reasonable accommodation to be successful in their interview process. In these cases, candidates are eligible for reimbursement from GitLab to cover any expenses incurred during this process. Please see process below on to handle candidate reimbursement in these cases. DRI - Senior CES, CES Manager

**Important to note:** The department the candidate is interviewing for will be responsible to reimburse from their budget IF they are requiring these expenses to be incurred (i.e. face to face interview costs). Any candidate requesting a reasonable accommodation throughout their interview process will have their request reviewed and approved by TALT. These reimbursements will be paid from the TA budget (i.e interpreter services)

1. Recruiter/Candidate reaches out to CES for candidate reimbursement.
1. There are two types of reimbursement:
   - Candidate incurred costs during their interview process due to the department they are interviewing for having specific demands. These will be reimbursed out of the department specific budget.
   Items approved for reimbursement are:
      - All modes of transportation
      - Meals
      - Accommodations if they are necessary
   - If a candidate has a reasonable accommodation request to assist them throughout their interview process, they can email CES and CES will work with TALT to assess and accommodate. These will come out of the TA budget if costs are incurred. This can include but is not limited to the following:
      - Translation Services
      - Use of additional services or assistive technologies
      - Assistance in setting up Closed Captioning for interviews (may not require reimbursement)
1. CES will send “Candidate Reimbursement” email template from Greenhouse from their own GitLab email address, not ces@gitlab.com. **Note:** these emails will need to stay out of the CES service desk, hence the reason the CES responsible for this process will send from their personal GitLab email.
1. Once the candidate submits the form attached to the email, both CES and AP will be alerted via spreadsheet.
1. Accounts Payable will then process the candidates reimbursement request and respond to all that it has been completed. Candidates can expect to receive their reimbursement within 1-2 weeks of submission.

#### Prelude

Please ensure you have the [Prelude Chrome Extension](https://chrome.google.com/webstore/detail/interview-schedule/nbimjaonnklighojgkihkipemiaimgdk) installed on your Chrome Browser.

Prelude processes can be found [here](/handbook/hiring/prelude).

### Zoom troubleshooting using Prelude when there is a zoom link error

When a candidate or an interviewer reaches out to CES via slack / email / Guide chat with a zoom link error, the CES can follow the below steps to create a new zoom link through Prelude in under 2 minutes.

1. Open Prelude, go to the interviews tab, search for the candidates name.
1. Click on the candidate’s name and interview title. This would open up a smaller tab with a pencil icon on the right hand side.
1. Once you click on the pencil icon, a new pop up window will appear with the interview details. Delete the zoom link and password from the body of the email and the drop down bar.
1. Click Add zoom meeting and Choose “other” as a reason for updating this interview.
 Apply the changes and send the updated invite. This will send a new calendar invite to the interviewers.
1. Go to the GH profile; click “ Email Candidate”. Choose the template   - “ Zoom Link Troubleshooting” and send the email to the candidate. The interview details with the new zoom link will be auto populated. Please be sure to delete any other interviews listed in the email other than the one with zoom link error. All this can be done under 2 minutes with practice!!

#### Resource - Candidate Guide

Please ensure you have the [guide Chrome extension](https://chrome.google.com/webstore/detail/resource-button/ikeemflbkbdhkgmgbdpeapmnnggbfogd) installed on your Chrome Browser.

Guide processes can be found [here](/handbook/hiring/guide).

#### If a Candidate Withdraws from the Hiring Process

If a candidate emails the CES Service Desk stating they would like to withdraw from the interview process, the CES should respond to the candidate's email (not the Service Desk ticket) and cc the recruiter (if the recruiter isn't already on the email). The CES response should not say anything definite as there may be a chance for the recruiter to reel the candidate back in. A basic response is below:

> Hi `Candidate Name`, thank you for your email. I have cc'd your recruiter in this email and if there are any additional questions, they will be in touch.

The CES should also tag the Recruiter in the Greenhouse profile of the candidate who withdrew.

The only exception to this should be for executive roles. Please just forward the withdrawal email to the Executive Recruiter and they will handle any follow-up.

### Non-Disclosure Agreements

To send a Non-Disclosure Agreement (NDA) to a candidate, Recruiters should ping @ces in Greenhouse.
CES can then log into DocuSign, select "start" and "use a template", and then access shared templates.
Once the NDA has been returned, upload the document in the "details" section of Greenhouse. Download this document from DocuSign as separate files, and only use the NDA itself (the summary is not necessary).

### Background Screenings

GitLab will obtain references and complete a criminal [records check]({{< ref "people-policies#background-checks" >}}) with employment verifications.

- If the candidate is located in Belgium and the role is not Grade 9 or higher, the CES or Recruiter (whoever kicks off the reference check process) should send the job requisition to the legal team via the #legal Slack channel during Reference/Background screening phase to determine whether or not the role is a position of trust.
- The recruiter should select "Email the team" and send the "CES Start Contract Request" email to CES* to initiate the offer letter and background screening processes after the verbal offer has been made.
- The Candidate Experience Specialist will [initiate a background screening]({{< ref "people-policies#background-checks" >}}) and start the contract process for the candidate.
- Background screening results will be received by the Senior Background Check Specialist and escalated to Team Member Relations and Legal where appropriate

For additional information on reviewing Background screenings see [this page]({{< ref "people-policies#background-checks" >}}).

#### Initiating a Background Screening through Greenhouse

1. Log in to [Greenhouse](https://app2.greenhouse.io/dashboard) and go to the candidate's profile.
1. Click the `Private` tab.
1. Click `Export to Sterling`.
1. Click `Complete Report`, which will redirect you to the Sterling website.
1. Click `Invite`, and then follow the steps below starting at the second step.
1. If the candidate is located in New York City and you have already initiated Step 1, please order NYC Step 2 instead of a traditional US check.

#### Initiating a Background Screening through Sterling Talent Solutions

1. Log in to [Sterling](https://secure.sterlingdirect.com/login/Default.aspx) and E-invite the candidate by inputting their email address.
1. Under "Applicant Information" enter in the candidate's first and last name, as well as their email address to confirm.
1. Next, select "GitLab" from the "Job Position" drop down menu.
1. Next, select the name of the country where the candidate is located. If the candidate is located in the US, the package will be called `Comprehensive Criminal with Employment`. If the country is not listed, choose `Global Screening`
1. Finally, scroll to the bottom of the page and click "Send"
1. Make a note in the Greenhouse profile that the Background Screening has been started

### Reference Check Forms

Prior to giving an offer, Recruiters are required to request references and other offer-related information by sending a form in the Reference Check stage. There are a few versions of this form available on every job based on the country where the candidate is located. When CES receives a form in the Service Desk, there are 3-4 fields to look at: NYC status, PIAA (Employee Invention Assignment Agreement), Outside Work disclosure, and TMRG requests.

**Japan Background Checks**

Background Checks for hires in Japan will need to be conducted *before* the offer is sent.

Global Reference Check Forms will have a question for hires asking if they are located in Japan. If the candidate selects  "Yes", you will need to perform the following steps:

1. CES service desk receives a ticket indicating that the candidate has submitted Reference Check Process Information-Global. CES will note that the candidate has selected "Yes" for the Japan location question. CES will label that ticket with the "Japan BGC" label.
1. CES will [initiate the background]({{< ref "./coordinator#initiating-a-background-screening-through-greenhouse" >}}) check in the candidates GH profile.

CES will then need to track the request to know when the Background check clears and we can move forward with sending the offer. Please follow the following steps:

1. Set reminders to follow up to see if Background check has cleared and/or reach out to the Background Check specialist at GitLab to confirm.  You can set reminders in the candidates GH profile and/or due dates on your ticket in GitLab.
1. Once confirmation of background check clearance is received, the offer can then be sent and the Reference Check form ticket can be closed. Normal [offer process]({{< ref "ces-contract-processes#employment-agreements-for-gitlab-team-members-in-japan" >}}) will continue from there.
1. **Note**: If recruiter has already sent in the contract request ticket for the candidate, please add the "On Hold" label so that you do not send the offer until you have clearance of the background check

**NYC Location**

USA Reference Check forms only:
It's important to note that the USA Reference Check form should be sent to the candidate and Step 1 should be completed before presenting a verbal offer. If the candidate selects “Yes” to indicate that they are located in NYC or its 5 boroughs (They will be listed as Brooklyn, Bronx, New York (Manhattan), Queens, or Staten Island), you will need to complete a two-step background screening process:

Please note that Long Island is not part of NYC and this process does not apply to residents there.

1. CES service desk receives a ticket indicating that the candidate has submitted Reference Check Process Information - USA form. CES notes that the candidate has selected “Yes” for the NYC location question.
1. CES will add the text expander snippet **refchecktodo** into the ticket to help guide them through the process. CES will add the “NYC BGC” label.
1. CES will go to [https://sterlingcheck.app/dashboard/#/dashboard/](https://sterlingcheck.app/dashboard/#/dashboard/). It is important to use this version of Sterling because it allows us to edit the email template that is delivered with the check.
   - Select **NYC Step 1** screening package. You will need to fill out the Location of Employment field as San Francisco, and the Projected Salary field with the candidate's salary (this range can be found in the “Approvals” tab of the candidate’s GH profile). Click “next”.
   - On the next page, under "Email Content", in the drop down, select "NYC Step 1" template.
   - Scroll to the bottom of the page and input the candidate’s full name and email address. Send Invite.
1. CES will add the “Pending” label and due date on the ticket. Create a follow-up reminder in Greenhouse 1 business day out to check if there is an ETA.
   - Once an ETA is set in Sterling, create another follow up reminder in greenhouse for that ETA date. Please note that the results may come in earlier than the ETA.
   - Please contact the Senior Background Check Specialist for any BGC escalations. e.g "Status: Unperformable" or "Status: Consider"
1. This process has been added due to NYC law, which separates the employment verification from the criminal check. Keep an eye on the status of the Step 1 screening results in Sterling. While we are waiting for Step 1 to be cleared, the recruiter can provide the candidate the verbal offer, begin creating the offer in Greenhouse and going through the approval stages. Recruiters can send the contract request ticket to CES when they are ready, **although, CES *cannot* send a written contract to the candidate until Step 1 has been cleared.**
    **Tip:** when the CES desk receives the contract ticket, add the NYC BGC label immediately to remind yourself and your team members that this candidate is undergoing the NYC two-step background screening process.
    - When checking BGCs in Sterling initiated by other team members, be sure to select "Entire Organization" in the top left section of the [Sterling dashboard](https://sterlingcheck.app/dashboard/#/dashboard/).
1. Once the recruiter has sent CES a contract ticket, CES will then complete **NYC Step 2** of the background screening through the Greenhouse integration. Once in Sterling, select the NYC Step 2 screening package and send.
    **Troubleshooting Tip:** If you receive an "expired" error when initiating Step 2 through the Greenhouse Sterling integration, you can navigate to the [Sterling Direct dashboard](https://secure.sterlingdirect.com/sys/). On the right hand side, under "E-Invite Applicant to Background Check", enter in the candidate's email address and select "Invite".
    - Fill in the applicant's information
    - Under "Order Information", select GitLab as the Job Position and under "Screening Package" select NYC Step 2.
    - Then scroll to the bottom right of the page and select Send.

**Outside Work and PIAA Process**

In the form, you will find that candidates are required to disclose whether or not they have any outside work, side projects, Inventions, etc. If they state "none" or "n/a", you can skip this step. If the candidate discloses any information in either the Outside Work section or the PIAA section, CES will take the following steps:

1. CES will visit the [TA Candidate PIAA and Outside Work Disclosure Group](https://gitlab.com/groups/gl-ta-candidate-disclosures)
1. CES will click “New Project” in the upper right corner of the page
1. Select “Create from template”
1. Select “Group (1)” and click on the blue button “Use Template”
1. For Project Name - create a title as the Candidate Name
1. Leave all other fields as is and click “Create Project”
   - NOTE: Once the project is created, you will then be brought to a page where you can create an issue within that project. This is where we will provide all information about the disclosure and loop in HMs, TMR, the Recruiter and Director.
1. Click on “Issues” on the left side of the page and select “New Issue.”
1. For Issue Name - create a title using the candidates full name along with the type of disclosure received.
1. Under the Description drop-down - select piaa_outside work_discussion template
1. Fill in all pertinent information.
   - Candidate Name along with the Greenhouse Link
   - Copy/Paste the disclosure made by the candidate underneath the CES checkbox
1. Assign the issue to yourself, and at the bottom, click “Create Issue”
1. Once the issue is created, click on “Manage” in the left toolbar and select “Members".
1. Click “Invite Members” - type in HM’s name, Director’s name, and recruiter name; leave them as a Guest and click “Invite” (These will only be invited in at the “issue” level and therefore will only be able to see the issue they are tagged in. They will not have visibility into the other projects created)
   - IMPORTANT NOTE: For ALL disclosures, Director Level approval is ALWAYS required.
1. Go back into the issue, click Edit and in the info box tag the recruiter, HM & Director, then click save
   - These team members will be notified by email when tagged.
1. In the Comment section of the issue request participants review the disclosure(s) by using TE snippet “discreview”
1. CES will remove the appropriate label once confirmed approvals are received in the comments.
1. If Legal review and approval is required, TMR will invite the appropriate Legal member into the issue and request their review
1. Once fully approved, please add the “Fully Approved” label and close the issue.
1. Proceed to the candidate's GH profile and select “Email (Candidate’s Name). Select the “Disclosure Confirmation” template, copy/paste the disclosure the candidate made into the blank space, and Send. The email will CC you and the recruiter.
1. Download the email from your inbox and upload into the “Pre Hire Documents & Changes” folder in the candidate's Workday profile.

**TMRG Conversations**

Our hiring process includes an **optional** step where candidates can request to meet with a TMRG team member. We will offer this to a candidate when they complete their interview process before an offer is made. Whether or not the candidate decides to take us up on this offer will have no impact on our overall hiring decision.

All current TMRGs have agreed to take part in this process. You can find the group list [here](/handbook/company/culture/inclusion/erg-guide/).

When a candidate requests to meet with a TMRG team member via the Reference Check Form, the Candidate Experience Specialist will do the following:
1. Reach out to TMRG volunteers for this call in the dedicated #candidate_tmrg-call slack channel.
    - Select Shortcuts button - looks like a plus sign with lightening bolt
    - Fill in appropriate details
       - Which TMRG would this canidate like to speak with?
       - Where is the candidate located?
       - What role is this candidate interviewing for
       - Click Submit
1. Once submitted, the request will ask volunteers to reply with their Calendly link and LinkedIN Profile (optional) for us to share with the candidate.
1. Once a volunteer has been found the Candidate Experience Specialist will email the candidate the 'TMRG Opportunity' email template in Greenhouse. The CES will update the template with the Team Members name, Calendly Link and LinkedIN profile if provided and then send to candidate.
1. If a volunteer has not been found within 24 hours the CES team member will reach out to the TMRG in their dedicated TMRG Slack Channel.
1. If a volunteer still has not been found within 24 hours of the second request, the CES will reach out to the [TMRG lead(s)](/handbook/company/culture/inclusion/erg-guide/) and request assistance with scheduling. If a volunteer has not been found within 3 business days of the request, the CES will ask the TMRG lead to take part in the conversation.

As a GitLab team member taking part in these calls, we advise you to start with a short introduction to you and your role here at GitLab. From here, we advise you to let the candidate lead the conversation as the goal is for you to answer their questions and offer insight into how we work.

These calls don’t require you to submit a scorecard in Greenhouse. If a candidate mentions something that you see as a red flag (e.g. they outline a past action of theirs that goes against our values) or shares something that would help us set them up for success, we advise you to share the details of this with the hiring manager for the role they’re interviewing for. It will be the responsibility of the Hiring Manager to review this and decide whether we need to alter the hiring or offer process for the candidate.

### Send contract

[See Candidate Experience Specialist Contract Processes section of the handbook]({{< ref "ces-contract-processes" >}})

The [Candidate Experience Specialists](/job-families/people-group/candidate-experience) will prepare the contract. While the Candidate Experience Specialist will prioritize a contract above other tasks, the expected turn around on the task is 1 business day. If the contract is time-sensitive, please provide context for the rush. If the Candidate Experience Specialist cannot meet the 1 business day they will inform the recruiter and CES manager via Greenhouse and will provide context.

Recruiters should make themselves familiar with the basic knowledge of the contract processes that can be found on the [CES Contract Processes]({{< ref "ces-contract-processes#framework-coord" >}}) page and the [Contracts, Probation Periods & PIAA]({{< ref "contracts-probation-periods#employment-agreements" >}}) page, as well as the [Employment Contracts](https://internal.gitlab.com/handbook/people-group/people-operations/people-connect/employment_contracts/) page in the internal handbook.

1. Check all aspects of the offer:
  - Do we have the new team members' legal name in their profile?
    - _It is extremely important to enter the team member's full legal name (as much as it is known before visually seeing a legal ID). Full legal name should be provided for the [background screening]({{< ref "people-policies#background-checks" >}}) process. It is important to be as accurate as possible, including the person's full legal name as well as any accents used for their name.
  - Is the new team members' address listed on the details page?
  - What contract type and entity are required based upon location and offer details?
  - Is all necessary information (start date, salary, location, etc.) up to date?
  - Is the start date one that is not a "no start date" and provides an adequate amount of time for People Connect and IT to have sufficient notice? Ideally, we are providing 10 days notice, but the teams can work with less if we let them know.
  - Has the signatory been determined by the Candidate Experience Specialist and updated?
  - Has the Entity been selected based on the New Hire's location? If the job title has Federal or PubSec included, please check with the Recruiter if they set up the contract as Inc rather than Federal LLC to confirm.
1. [Generate the contract within Greenhouse]({{< ref "ces-contract-processes" >}}) using a template based on the details found in the offer package.
1. Contact the recruiter or new team member to gather any missing pieces of information (note: the address can be found on the background screening information page).
1. If the contract was created outside of Greenhouse, ensure that the contract has been reviewed and approved by a member of the Legal team.
1. [Stage the contract in DocuSign from within Greenhouse]({{< ref "ces-contract-processes" >}}), which emails the contract to the signing parties, with the recruiter, talent acquisition manager, and the hiring manager cc'd. It will be sent to the designated signatory as previously determined in Offer Details.
1. **Before marking the candidate as hired** the Candidate Experience Specialist will reject the candidate from any other active roles including roles for which they are a prospect (without sending a rejection email). *NOTE: If this step is skipped, the profile will not be exported to Workday when the candidate is marked as hired.*
1. **Before marking the candidate as hired** on all candidates, the CES will make sure that the profiles were merged (for internal candidates, this will be indicated if the candidate shows their original `Hired` inactive role). [View candidate merge instructions in the Candidate Hygiene section](/handbook/hiring#interview-stages).  *NOTE: If this step is skipped, it will create problems with privacy and increases the possibility of a new hire seeing their own Greenhouse profile.*
1. **Before marking the candidate as hired** the CES will ping the recruiter and give them 24 hours to contact/reject all other active candidates. Once this is complete, the CES can proceed with hiring in GH (if candidates are still present in req, select the "keep open" option when setting candidate to hired. This will trigger a new opening to ensure candidates are still present in req)
1. **Before marking the candidate as hired** the CES will verify if the listed Recruiter and Coordinator in the `Details` >  `Source & Responsibility` section of the candidate's profile is correct to ensure accuracy in reporting.
1. The CES will mark the candidate as "Hired" in Greenhouse: *when prompted, select the option to close the req.* Please note, the new hire's Workday profile will be generated automatically.
1. For internal hires ONLY - the CES will send the automated email template labeled "Internal Hiring Survey". You can also cancel the survey that will appear automatically when the candidate is marked as hired.
1. The Candidate Experience Specialist will email the new team member the Welcome Email from Greenhouse with a cc to IT Ops, the Hiring Manager and the Recruiter.  For new team members in USA, use 'GitLab Welcome - US only' template.  For team members located outside the US, use 'GitLab Welcome - non US' template
  - Instructions on the [Notebook Ordering Process](/handbook/business-technology/end-user-services/onboarding-access-requests/#gitlab-laptops) are included with this email.
1. Should the start date change after the welcome email is sent please see the required steps [here]({{< ref "ces-contract-processes#how-to-update-a-start-date-after-the-contract-is-signed" >}}).
1. Exception to the start date and onboarding date alignment: If a new team member requires a specific start date for legal reasons (cannot have break in employment) but onboarding on that specific day is restricted (because of Public Holiday, Family & Friends Day, etc.), the Candidate Experience Specialist can notify the People Connect Team in the private Slack channel `people-connect_ces`. The Contract, Greenhouse and Workday should reflect the same start date regardless of the actual onboarding date.  

The last part of the Candidate Experience Specialist's responsibilities with a candidate is to hire them into the system and pass them on to People Connect. The hire-in process includes more complexities, so CES created the following guidelines to clarify start date exceptions and confidentiality around new hires.

**SETTING GREENHOUSE REMINDERS** - CES should utilize reminders in Greenhouse at least 12 days before the start date and maintain consistent communication with the recruiters to ensure the candidates in the requisition are cleared completely. CES can make use of the "Need to hire into Workday" label and set due dates in the GitLab issue to track as well.

The People Connect team has an SLA period of 10 working days to onboard an entity-based team member. In the event of an exception, the minimum notice required for the People Connect team is 5 working days.

**PROACTIVE COMMUNICATION**- CES should promptly notify in the #peopleconnect-ces slack channel when the CES experiences a delay/ issues with the PEO contract generated. In case of any start date issues, the responsible CES must keep the People Connect team updated about the changes. The People Connect team requires a minimum of 10 working days to onboard a new team member from a PEO successfully. While generating the PEO contract, please ensure the PEO payroll cut off date is also factored in. Most recruiters are aware of these dates.

**NEW HIRE EXCEPTIONS** - For any confidential hires that necessitate a public announcement, please inform Alissa Meeks or Melody Patel about the specific scenario. Additionally, loop them in any communication related to the role to keep them in the loop. This will also be considered as an exception.

**VERIFYING GLOBAL HOLIDAYS** - CES should verify whether the proposed start date coincides with a holiday in the new hire’s location. It is the responsibility of the recruiter to check with the Hiring Manager to ensure that the new team member has a support/ onboarding buddy on the first day of onboarding.

**START DATE EXCEPTION EMAIL FOR URGENT HIRES** - This email seeks a required explanation and business justification for the proposed changes in the start date. The People Connect team will review this on a case-by-case basis. Urgent hires refer to situations where the HM requests an earlier start date than the previously agreed upon one, and the new start date does not adhere to the standard 10 working day SLA period for candidate onboarding. **Important**: an exception will not be made without a minimum of 5 working day notice to the People Connect team.

Prominent reasons for urgent hires are Critical Skill Gap / New business opportunities, Equity vesting grant options and Unexpected departures or backfills. CES can access this email under the "Email the team" option in the candidates' Greenhouse profile.

### Next Steps

People Connect Specialist will create the onboarding issue and start the [onboarding tasks](https://internal.gitlab.com/handbook/people-group/people-operations/people-connect/onboarding_process/) no later than two weeks before the new team member joins. Should a contract not be signed prior to 10 working days from the start date, a new start date will be required.

For questions about the new team member's onboarding status, you can @mention them in the `#people-connect-ces` Slack channel.

For questions about the new team member's laptop, ping [<i class="fa-brands fa-slack"></i> IT Ops](https://gitlab.slack.com/archives/CK4EQH50E) in Slack. If the questions arise through email, forward the email to itops@gitlab.com and ping IT Ops in #it-ops Slack, and @it-ops-team too due to volume.

### Employment Offboarding

When team members depart GitLab, People Connect will create an offboarding issue. The CES team is responsible for completing tasks under the `@gitlab-com/gl-ces` section. Please note that offboarding issues are time sensitive and should be completed by the due date set on the issue. Completion of these tasks also ensure GitLab remains compliant.

1. Go to [Employment Issues](https://gitlab.com/gitlab-com/team-member-epics/employment/-/issues) where the offboarding issues can be found. In the search bar, filter issues by the "CES: To Do" label and work on the issues by due date. Once you open up an offboarding issue, navigate to the `@gitlab-com/gl-ces` section and complete the following steps.
1. Open Google calendar, select the "Interview Calendar", and type in the team member's name in the search bar at the top. Ensure the team member offboarding isn't in any active interviews. If applicable, post in the ces-team slack channel the departing team member's name and list the interviews they are currently scheduled for. Advise the CES team member to work with their recruiters to review any other interview plans and update accordingly.
Any interviews that have been grayed out on the calendar, have passed already.
1. Check any interview plans and reqs that the team member might be on by searching the team member's name under `Users` in Greenhouse. When searching the team member's name, select the profile with the team member's GitLab email address; this will navigate to their Greenhouse profile settings.

    Under "Permissions" check what the team member's permission level is. If permissions are anything other than "Job Admin: Hiring Manager" (i.e. "Basic" or "Job Approver") you can skip to step 4.

    If the permission is listed as "Job Admin: Hiring Manager", check if the job req title has "Closed", "Draft", or "Template" in it. If so,you can skip to step 4.

    Please note you may encounter a "Job Admin: Hiring Manager" who has both "closed" and active job reqs. If there are active job reqs you must take the following steps:

    - Copy and paste the job req title into a new Greenhouse window and search
    - Select the correct job req by ensuring the req#s match (i.e. 7458)
    - Select Job Set up and navigate to the Hiring Team section
    - Please ensure that the hiring manager position has been filled by another team member. If the hiring manager section is empty or still shows the team member who is offboarding, reach out to the CES coordinator listed and advise the CES team member to work with the recruiter to find a replacement hiring manager & update interview plans.
1. If the team member offboarding is listed under an [Engineering department](https://docs.google.com/spreadsheets/d/13P3eBebTceAF6v1aPxFm3Q7VCqLGOn1i/edit#gid=590568882) (highlighted in yellow), you will need to search the [hiring repo](https://gitlab.com/gitlab-com/people-group/hiring-processes/-/tree/master/Engineering) and update (if applicable). This usually pertains to any team members who were a part of interviewer pools (e.g Ruby on Rails, Frontend technical, Backend and etc.) Please note that only the backend and frontend hiring repos list technical interviewers.
    - While in the Engineering hiring repos, select Backend / Interviewers.md / search the team member's name using their gitlab username (i.e Eric Johnson = ejohnson). If they do not show up, there is no further action needed.
    - Next, navigate back the Engineering hiring repo and select Frontend / 3- Technical Interview / Interviewers.md / search the team member's name using their first and last names. If they are not listed, there is no further action needed.

    If the team member is listed in any of the engineering hiring repos, remove their name from the hiring repo and submit changes through a merge request e.g "Removed John Doe from list of ruby on rails technical interviewers".
1. Once all steps have been completed, navigate to the right hand side of the offboarding issue, remove the "CES: To Do" label, disable notifications, and leave a comment/ notify "Recruiting Ops". (e.g @ destinyreyes ces tasks done)
