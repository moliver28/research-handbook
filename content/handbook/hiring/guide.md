---
title: "Guide"
description: "Guide is a program GitLab uses to increase candidate experience by having an easily digestable and enjoyable resource that houses all interview details and relevant handbook pages depending on where the candidate is in the hiring process."
---

[Guide](https://guide.co) is a tool that helps manage candidate experience.

Please ensure you have the [Guide Chrome extension](https://chrome.google.com/webstore/detail/guide/hpdfplaccgajokgmocbcpiicbkkjione) installed on your computer.

Guide is integrated with Greenhouse via API.

DRI: Candidate Experience Team

### Adding a new requisition to Guide Stage Templates

1. Login on [app.guide.co](https://app.guide.co) using your GitLab Google account
1. Click on Templates on the left hand side
1. Click the purple + sign on the top right hand corner
1. Type the name of the requisition in the search box
1. Press configure
1. The requisition will automatically be added to the stage templates

### Setting up a new requisition to Guide Templates

1. Hide all stages that are not candidate facing (Application Review, Justification, any Assessments the team doesn't want visible, etc.)
   - Navigate to the `^` on the right hand side of the stage
   - Check the `Hide this stage for candidates`
1. Use the `^` on `Trigger Team Interview Stage` to view all of the interview titles
   - Edit any Interview Titles to be externally facing (delete multiple names, extra verbiage, etc.)
1. If there is a `Technical Interview` or `Demo`, update the Interview Details with any necessary information for the technical interview or demo.
   - Hover cursor to the right of the Interview Title and `Edit` will appear
   - Click `Edit` and add the necessary details for the Demo or Technical Interview to the `Description` box.
      - If the specific insructions are sent by the interviewer/hiring team, note that and a timeframe (if known) in this field.
      - Example: The instructions for your Technical interview for the Backend Engineering, Verify position will be sent to you at least 72 hours before your scheduled interview.
   - Click `Save` to save the information on the template
1. Add an Email Action to all stages that are visible to the candidate
   - Click the `Add an Email Action to` blue + sign
   - Select the correct template used for that stage or most of the communication for that stage
      -i.e for Reference and Background Stage, select the `Reference and Background Check` template
1. Select the correct Base Stage Template is selected for each Stage
   - Navigate to the `^` on the right hand side of the stage
   - Select the cooresponding template under `Base Stage Template`

### Preparing interviewers on Guide website

1. Login on [app.guide.co](https://app.guide.co) using your GitLab Google account
1. Navigate to the Team tab (it will take a few minutes to load)
1. Find the first interviewer that the candidate will meet and click on the profile (if there are double profiles, make sure to select the one that only has the slack logo)
1. Copy and paste the interviewer's GitLab Team Page bio full url (text box does not support links) into the 'Bio' box
1. If the GitLab team member has a LinkedIn profile linked on their GitLab Team Page bio, also place that into the 'LinkedIn URL' box
1. If there is no LinkedIn profile on the GitLab Team Page bio, reach out via Slack to the interviewer to get their LinkedIn
1. Follow the above steps for all the interviewers on the hiring team - doing this will prevent more manual work on a per candidate basis

### How to send out a Guide to a candidate via Greenhouse

1. Once you have scheduled the interviews that need to be scheduled, click on the guide chrome extension in the upper right corner.
1. Select Preview and Send and ensure the correct Email Template is being used in the dropdown.
   - First time candidate is receiving Guide - `Interview Confirmation - First Time - Single Interview`
   - One interview scheduled and candidate already received Guide link - `Interview Confirmation - Single Interview`
   - Multiple interviews scheduled - `Multi-Interview Confirmation`
1. Select Send
1. To make the chrome extension go away, click on the icon in the upper right corner again
1. After the Guide is sent, in Greenhouse, select the dropdown where you go to request availability, confirmation, etc. and select the 'Confirmation Sent'

### How to send out a Guide to a candidate for a Demo or Technical Interview via Greenhouse

1. Before scheduling, make sure the Demo/Technical interview information or instructions are updated in the `Guide Interview Details`.
   - Information regarding what should be included in `Guide Interview Details` can be found in [this SSOT issue](https://gitlab.com/gl-talent-acquisition/ces-service-desk/-/issues/3605).
1. Once you have scheduled the interviews that need to be scheduled, click on the guide chrome extension in the upper right corner.
1. Select Preview and Send and ensure the Email template used is `Interview Confirmation- Demo or Technical Interview`
1. Select Send
1. To make the chrome extension go away, click on the icon in the upper right corner again
1. After the Guide is sent, in Greenhouse, select the dropdown where you go to request availability, confirmation, etc. and select the 'Confirmation Sent'

### How to send out an updated Guide if there was a change/reschedule

1. If you had to make a change to an interview, whether that is a cancel or reschedule and need to let the candidate know that there have been changes, you will need to resend the Guide.
1. While in the candidate's greenhouse profile, click on the Guide extension
1. Select 'Resend'
1. Select the appropriate email template in the dropdown (e.g. New Interviewer, Shadow Added, Updated Interview Confirmation)
1. Press 'Send'
