---

title: "Using Calendly as a CSM"
description: "Best practices and setup guide for Customer Success Managers using Calendly to manage customer requests for meetings."
---






View the [CSM Handbook homepage](/handbook/customer-success/csm/) for additional CSM-related handbook pages.

---

*For an overview of Chorus, the tool used to record our meetings please refer to the [Gainsight Overview Page](/handbook/sales/field-operations/sales-operations/go-to-market/chorus/).*

## Setup Calendly for Customer Success Managers/Engineers

CSMs and CSEs use Calendly to efficiently manage customer requests for booking ad-hoc meetings.

### Chorus Initial Setup for Static Link

To ensure that Calendly is setup to comply with GDPR and similar privacy laws, all team members with a Recorder license in Chorus are required to use a feature called Chorus Scheduler when organizing meetings with customers. Below are the steps required to use Chorus Scheduler for your events booked via Calendly.

- Visit [Learn How to Use Chorus.ai](/handbook/sales/field-operations/sales-operations/go-to-market/chorus/#chorus-scheduler) for instructions on how to create a Static Link from Chorus Scheduler.
- To create/view the Static Link
    - Link your [Zoom PMI](https://support.zoom.us/hc/en-us/articles/203276937-Using-Personal-Meeting-ID-PMI-) in the Chorus Scheduler Settings (one time only)
    - Then create a test event on your Google calendar, click Add video conferencing, select Chorus Meeting. You will then be able to view the Chorus Go static link (Domain: go.chorus.ai).
    - ![static-chorus-go-link](grab-static-chorus-go-link.png)


### Creating a Calendly Event Type

It is recommended to create multiple event types for your Calendly to ensure customers can choose the appropriate length of time for the meeting or specific topic/area of focus. Below is an example home page on Calendly for a CSE with different event types.

![calendly-home-example](calendly-home-example.png)

#### Instructions for Creating Calendly Event

- Login to calendly and view all of your event types here: https://calendly.com/event_types/user/me
  - Click the [Create New Event Type Button](https://calendly.com/event_types/new) and choose One-on-One
  - *Event name*: Name your event based on the length of time or specific topic/focus (Ex: New Customer: Onboarding Call)
  - *Location*: Custom (Use a Static Link from Chorus Scheduler generated from your Zoom PMI)
    - Next, add the go.chorus.ai link to your calendly event configuration Location field.
        - *Important Note*: Anyone booking through your calendly would use the same location link when booking an event instead of an automatically generated unique meeting ID per meeting. Please make sure your Zoom Personal Meeting follows GitLab’s best practices on [privacy and security](/handbook/tools-and-tips/zoom/#a-note-on-privacy-and-security).

        - Make sure to select display location only after confirmation
        - ![calendly-location](calendly-location-chorus-go.jpeg)


- *Description/Instructions* (add the following recommended text)
    > **This face-to-face meeting may be recorded. A browser will be required to access this meeting invite. If you do not have access to a browser, please contact the meeting organizer.
    >
    > You will join a Zoom meeting via Chorus.ai
    >
    > `_______________________________`
    >
    > Recording Disclaimer: This meeting will be recording with [Chorus.ai](https://www.chorus.ai). By accepting this meeting invite or joining the meeting room, you consent to the recording.

- *When can people book this event?*
    - Date range: 60
        - *Best practice*: Always make sure your calendar is up to date with PTO, Holidays, busy blocks to ensure your personal time/focus time is protected.
    - Duration: Your desired meeting time length for the event type
      - Best practice notes: [Prefer speedy meetings](/handbook/communication/#scheduling-meetings), so use 15, 25, 50 minutes as meeting lengths for example.
    - How do you want to offer your availability for this event type?
        - Use an existing schedule
        - Which schedule do you want to use for this event type?
            - [Working hours](https://help.calendly.com/hc/en-us/articles/360055073694-How-to-set-up-and-edit-your-available-hours-)
- Want to add time before or after your events?
    - Before event: 15 min
- (unfurl the Additional rules for your availability section/link)
    - Start time increments: 30 minutes (allows more options for a customer to book)
    - Scheduling conditions
        - Invitees can’t schedule within: 2 days of an event start time
            - Best practice notes: If you are new/just coming out of onboarding, 2 days gives you enough time to research the customer, review support tickets, GitLab issues and sync with the account team if needed. Also allows for buffer time if a customer happens to want to book time on the weekend so you don't have a call first thing on Monday morning for example.
            - Modification notes: Once you are comfortable in the role and gained enough experience, you should consider shortening the condition from 2 days to 1 day to encourage more bookings with customers.
    - Maximum allowed events per day for this type of event: 2
        - Best practice notes: Allows you to have the time and space to review your notes/recording and start research for a follow-up response, as well as handle other duties as a CSM/CSE (providing assistance to webinar Q&A, professional development, internal meetings, focus time, etc.)
    - Time zone display: automatically detect
    - Secret event: unchecked/disabled

