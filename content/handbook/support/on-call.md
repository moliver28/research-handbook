---
title: GitLab Support On-Call Guide
description: >-
  For customers that have Priority Support, the Support Engineering Team is
  on-call and available to assist with emergencies
---

## On-call in GitLab Support

There are five on-call rotations in Support:

- [CMOC](/handbook/support/workflows/cmoc_workflows) - in which Support Engineers drive public communication in the incident management process during GitLab.com operational emergencies.
- [Customer Emergencies](/handbook/support/workflows/customer_emergencies_workflows)- in which Support Engineers respond to and coordinate the resolution of emergency reports from Self-managed and GitLab.com customers
- [US Federal Emergencies](/handbook/support/workflows/customer_emergencies_workflows#us-federal-on-call) - which is similar to Customer Emergencies, but has different hours and a US Citizen requirement to participate in
- [Support Manager On-call](/handbook/support/workflows/support_manager-on-call) - in which Support Manager are an escalation point for issues raised by Support Engineers and GitLab team members and missed PagerDuty notifications
- [Support Operations On-call](/handbook/support/workflows/support_operations-on-call) - in which Support Readiness team members who focus on our Operations are available to be paged if there's an operational emergency

For customers that have [Priority Support](https://about.gitlab.com/support/#priority-support), the Support Engineering Team is on-call in these capacities and available to assist with emergencies. What constitutes an emergency is defined in our [definitions of support impact](https://about.gitlab.com/support/definitions/#definitions-of-support-impact).

We take on-call seriously. There are [escalation policies](https://gitlab.pagerduty.com/escalation_policies#PKV6GCH) in place so that if a first responder does not respond fast enough another team member or members is/are alerted. Such policies aren't expected to ever be triggered, but they cover extreme and unforeseeable circumstances.

## Expectations for Support on-call

### Be alert and available

When you are on call you are expected to be available and ready to respond to PagerDuty pings as soon as possible, and certainly within the emergency response time set by our [Service Level Agreements](https://about.gitlab.com/support/#priority-support).

If you have plans outside of your work space while being on call, then being available may require bringing a laptop and reliable internet connection with you.

You should not be chained to your desk, but you should be equipped to acknowledge and act on PD alerts in a timely manner.

Be proactive in communicating your availability. Sometimes you can't be *immediately* available for every minute of your on-call shift. If you expect to be unavailable for a short period of time, send an FYI in Slack.

### Prepare ahead of your shift

Before your scheduled on-call shift begins, check [the Customer Events calendar](https://calendar.google.com/calendar/u/0/embed?src=c_8d5a8e9b8c3fc74901bad1799b18e8eafc9e499f7805f9c82f79f9d1e1f9ac4b@group.calendar.google.com) for any customer activities to be aware of that may coincide with your shift. Familiarize yourself with the details of those events in case the customer ends up paging out for help.

**Note:** the Customer Events calendar is also linked at the top of the [#support_self-managed](https://gitlab.enterprise.slack.com/archives/C4Y5DRKLK) Slack channel for quick reference.

### Communicate

**Involve relevant stakeholders**: whether it's the e-group, a CSM, an [ASE (Assigned Support Engineer)](../assigned-support-engineer/emergencies.md), subject matter experts or Support leadership, customer and operational emergencies should be known. See your rotation specific workflow for more detailed notes.

**Note:** You may sometimes be required to contact GitLab users on behalf of another GitLab team (such as the SIRT team). Please follow the [Sending Notices workflow](/handbook/support/workflows/sending_notices) to action these requests.


### Ask for help when needed

Rest assured: escalation is okay -- other GitLab team members are happy to help. Caring for our customers is a shared responsibility. Tag a Slack support-team Group if you haven't gotten help in your Slack thread. Tag the support managers if you need to escalate further.

If another support engineer joins your emergency call, feel free to assign them a role to divide up the labor.

> So and so would you please (take notes, reach out to this product team and ask for help, look up the code for this and see what you can find)?

### Take care of yourself

Make a real effort to de-stress during your on-call shift. After being on-call, consider taking time off, as noted in the [main GitLab Handbook](https://about.gitlab.com/handbook/paid-time-off). Just being available for emergencies and outages causes stress, even if there are no pages. Resting is critical for proper functioning. Just let your team know.

When you get a notification from PagerDuty give yourself a few minutes to prepare.
- Get to someplace comfortable and quiet where you can devote your attention to the emergency.
- Take care of any biological needs.
- Grab a snack and some water.
- Breathe: you've got this.

When you're in a call, you do **not** need to provide *immediate* answers. You're allowed to pause for a few minutes for researching, asking for help, etc. Make sure to communicate -- let the other folks on the call know what you're doing. Example: "I need a few minutes to work through the code here and make sense of it".

If you've had a long week with multiple pages from PagerDuty or particularly long calls, consider asking someone to cover a day or some portion of a day so you can get some rest.

## How Support On-call works

### Schedule and escalation policy

By using a regional, follow-the-sun style of on-call Support we try to keep rotations within waking hours.
As a result, each region may organize their on-call rotations in a slightly different way, or have different requirements for hours of coverage.

PagerDuty is the single source of truth for on-call hours, rotation order and escalation policies.

**NOTE:** If a new alert has not been acknowledged after 10 minutes, the Support Manager on-call is alerted. After a further 5 minutes, if there is no acknowledgement, Senior Support Managers are alerted.

There are several ways to view current and future schedules:

1. On gitlab.io: [View the current and next week's assignments](https://gitlab-com.gitlab.io/support/team/oncall)
1. In PagerDuty: View the [Customer Emergencies schedule](https://gitlab.pagerduty.com/schedules) and the [escalation policy](https://gitlab.pagerduty.com/escalation_policies#PKV6GCH)
1. In Google Calendar, [subscribe to your on-call schedule](https://support.pagerduty.com/docs/schedules-in-apps#section-export-only-your-on-call-shifts)
1. In the `#spt-gg-forest` slack channel, you can see who is on-call for the different schedules today

#### Scheduling PagerDuty rotations

PagerDuty schedules for support should be filled in by DRIs (readiness, support managers, etc) directly on the [Support PagerDuty Worksheet](https://docs.google.com/spreadsheets/d/1FdUzVXCZleopfteC2QxW7LJwyylGWGl9hwXHMPkRHbQ/edit?usp=sharing).
This sheet's contents will be used by the readiness team to populate the following quarter's on-call shifts in PagerDuty during the first week of the final month of the quarter (Jan, Apr, Jul, Oct). On the first Monday of the second month of a quarter a reminder will be posted in Slack via the [#support_leadership channel](https://gitlab.enterprise.slack.com/archives/C01F9S37AKT) to remind DRIs of the upcoming implementation due date.

Once the readiness team has implemented the next quarter's schedule they will remove the scheduled rows from the sheet and PagerDuty should be considered the SSOT for the next quarter. For dates that exceed the next quarter, the spreadsheet should be considered the SSOT.

##### Availability
The spreadsheet's rows are able to be changed by DRIs who can make the schedule up to a year in advance of the current quarter. The schedule is **not** automatically populated and must be completely filled in for each quarter. If, at the time of readiness implementation, there are blank spaces in one of the schedules, then the most relevant regional support director will be responsible for that shift until they find coverage via an overrride.

##### Schedule Changes

To change the days/timings of the schedule, a support team meta issue should be created to discuss the changes with the participants of the shift. Once a decision has been made on the final state of the schedule the support operations team should be mentioned in order to implement the requested changes.

More details can be found in the Operations Team [Pagerduty change management documentation](https://handbook.gitlab.com/handbook/support/readiness/operations/docs/pagerduty/change_management/).

#### Your first on-call shift

For new team members approaching their first on-call shift, your [Support onboarding issue](https://gitlab.com/gitlab-com/support/support-training/-/blob/main/.gitlab/issue_templates/New-Support-Team-Member-Start-Here.md) includes a section suggesting that you shadow a current on-call to gain familiarity with the process. After completing your shadow shift, work with your manager to get yourself added to the on-call rotation. For your first on-call week we recommend asking your Onboarding Buddy to be available as a secondary to help if an emergency comes in.

#### Make the schedule work for you

Your role is to make sure *someone* is available to respond to emergencies during the week you are scheduled. Flexibility is possible -- you can split work with others, or schedule overrides for a few hours or days. **You don't have to change vacation plans, or be at your desk all week!** It's OK to take a walk outside, if you have your phone and reception. This way you can acknowledge the page, and locate someone to help (using Slack).

If you prefer to work with a colleague as a secondary, discuss with team members or your manager and find partners who like sharing the role. You can work together during the week, and update PagerDuty as you wish (options include: split days into mornings and evenings, take alternate days, work as a primary and secondary). Your manager can play an active role in helping pair people who want to work like this.

#### Swapping on-call duty

To swap on-call duty with a colleague:

- Check with your team, see who has availability, and get confirmation from the person willing to cover you. Generally, it's best to ask for help as far in advance as possible.
- If you're unable to find coverage, alert your manager.
- To swap an on-call shift, or temporarily replace someone, create an override on the main schedule in PagerDuty.
    1. Open the [correct schedule](https://gitlab.pagerduty.com/schedules) in PagerDuty.
    1. Click on the relevant block of time in PagerDuty.
    1. Select "override" and fill in the name of the person you are swapping with.

See [the PagerDuty documentation](https://support.pagerduty.com/docs/editing-schedules#create-and-delete-overrides) for complete steps.

#### Considerations in APAC

##### Shifts start on Tuesday and end on Monday

Due to the global on-call week starting on Monday, 09:00 Amsterdam time,
on-call shifts for APAC begin on Tuesday and end on Monday. The APAC team has
decided to retain this shift configuration as it allows for easier planning to
take a long weekend with Monday off and as a buffer to ease into the next
on-call. See the latest discussion in this [Support Team Meta issue](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/3204).

##### Support Engineer shifts are 4-hour long shifts

APAC spans many timezones. Using an 8-hour shift to cover APAC business hours
results in an on-call shift that can finish as late 9pm local time for APAC east
based team members, and that starts as early as 04:30 local time for APAC west
team members.  Consequently the support engineer shifts are split into 2 groups,
APAC 1 and APAC 2, allowing each team member to cover hours within their normal
working hours.

Note that support manager on call shifts remain the full 8 hours.

##### Australia (Employees of GitLab PTY Ltd)

Team members employed by GitLab PTY Ltd *must* take time off in lieu within two
weeks of completing their on-call shift. Time in lieu should be requested via
Time Off by Deel, selecting the `On-Call Time in Lieu` option.

For more details, see the [GitLab PTY Australia Specific Benefits](/handbook/total-rewards/benefits/general-and-entity-benefits/pty-benefits-australia/#on-call-engineering-only)
page.

##### New Zealand (Employees of GitLab PTY Ltd NZ)

Team members employed by GitLab PTY Ltd NZ must avoid taking an on-call shift
which falls on a New Zealand public holiday. If this cannot be avoided, your
manager must be informed.

For more details, see the [GitLab PTY Ltd NZ Specific Benefits](/handbook/total-rewards/benefits/general-and-entity-benefits/pty-benefits-australia/#on-call-engineering-only-1) page.

### Starting on-call

Before your shift starts, *always* double-check that your alerts are working and your PagerDuty contact is up to date. Send a test page to make sure that you are receiving alerts correctly.

When your on-call shift starts, you should get notification(s) that your shift is starting (email or text, depending on your PagerDuty preferences).

### Ending your on-call shift

Before your shift ends, consider what tasks need to be handed over and make sure to proactively communicate them to the next engineer in the rotation.
This may mean [paging the next on-call engineer](#paging-the-next-on-call-engineer) and bringing them into an active troubleshooting call, or it may mean providing instructions or context for situations
you have handled that have some follow-up action. For example:
   - if you're in an active call with a customer and it's time to end your day, page the incoming on-call and make sure they're prepared to provide continuity by giving them an overview of what's been done before and what's next
     - once you anticipate an active call to spill over into the next shift, try reaching out to the incoming on-call on Slack to make them aware of the upcoming need for a handover – they might not be around already, but it's worth trying and can make it easier for you to end your shift on time
   - if a SaaS customer paged in looking for log analysis and we're waiting on the SIRT team, let the incoming on-call know and consider having them send a message in the ticket informing the customer of the handover
   - if a customer is still in a heightened state and is monitoring after an outage and *may* page the on-call engineer, let the incoming on-call know
   - if a SaaS incident ended and we're monitoring the queues for new customer reports, provide the incoming on-call engineer with a list of actions they should take

Generally: if there's a situation that occurred (or is actively happening) during your shift it's your responsibility to prepare the next on-call engineers.

Some rotations have specific handover procedures:

- [CMOC - End of Shift Handover Procedure](/handbook/support/workflows/cmoc_workflows#end-of-shift-handover-procedure)
- [CEOC - Post-call](/handbook/support/workflows/customer_emergencies_workflows#post-call)

### Viewing all on-call pages in one place

You may want to monitor all on-call pages received by the Support team. You can
do this by joining the [`#spt_on-call`](https://gitlab.slack.com/archives/C02TSECGGV8)
Slack channel.

### Seeing which manager is on-call

To see who the current manager on-call is you can:

- use ChatOps to query the on-call schedule with `/chatops run oncall manager`
- log in to PagerDuty view the [Support Managers Service](https://gitlab.pagerduty.com/services/PTFI8XR)
- View the individual on-call schedules for
    - [Support Manager - AMER](https://gitlab.pagerduty.com/schedules/PTI56V1)
    - [Support Manager - APAC](https://gitlab.pagerduty.com/schedules/PWBXTYX)
    - [Support Manager - EMEA](https://gitlab.pagerduty.com/schedules/PXQ2ZAZ)
- In the `#spt-gg-forest` slack channel, the regional bot message lists who is on-call for the different schedules today
- Ask in `#support_leadership` (where you may or may not be referred to the above steps!)

### Paging the next on-call engineer

- First, try pinging the on-call engineer in Slack using the `@ceoc` handle.
- If it's important and urgent or a weekend, you can:
   - Manually create a new incident from the [Customer Support Service](https://gitlab.pagerduty.com/service-directory/PL3TX00)

### Paging the on-call manager

- First, try pinging the on-call manager by tagging `@support-manager-oncall` in Slack.
- If it's important and urgent or a weekend, you can:
    - Tag the Support Manager On-Call by name in Slack to page the on-call manager
    - Manually create a new incident from the [Support Managers Service](https://gitlab.pagerduty.com/services/PTFI8XR)

## Mobile phone service and data reimbursement

We want to minimize the affect of on-call duty on your life. One way we do that is by offsetting any impact on your personal expenses.

You may expense the cost of your mobile phone service for any month that you are performing on-call duties. This is limited to **your** service cost itself, not any costs relating to the phone device, to a personal hotspot device or to services for other people on your phone plan.

We understand you may have plans outside of your normal workspace while you're on-call. If as a result you **need** to use your phone to provide internet service to your computer, then you may include additional data charges in your expense report.

## Keeping the PagerDuty contact up to date

PagerDuty phone and SMS notifications can come from a variety of different phone numbers and as such, it is important to stay up to date with this to avoid missed pages. You should use [this PagerDuty documentation page](https://support.pagerduty.com/docs/notification-phone-numbers) to download the most recent vCard or setup an automatically updated PagerDuty contact on your device.

If you use a "do not disturb" mode on your device, you should also allow the PagerDuty contact to bypass this.

## Automatically update your Slack status to indicate you're on-call

Using the PagerDuty logo as your Slack status can be a helpful indicator to others that you're currently on-call. We can use Zapier, an automation tool, to update our Slack status automatically when our shift begins. Zapier can connect to PagerDuty directly, but it does not have "Going On-Call" as a trigger – we need to connect to Gmail and use a PagerDuty notification email as the trigger instead.

### Configure PagerDuty to send a specific notification email for this automation

To make sure this stays separated from our normal PagerDuty notifications, we'll set up a notification specifically for this automation.

1. Go to "My Profile" on [PagerDuty](https://gitlab.pagerduty.com/)
1. In the "Contact information" tab, click "Add Email Address"
1. Enter a unique `+` version of your GSuite email address, like `youremail+pagerduty-notif@gitlab.com`
   - If you do not know about the `+` [trick](https://gmail.googleblog.com/2008/03/2-hidden-ways-to-get-more-from-your.html): This will be delivered to your normal inbox. Specifying this unique version will allow us to create a filter for these notifications later in the process.
1. Enter anything you want for the "type" (Work, Home, …) – with "Other" you can type your own text
1. Short/HTML Emails does not make a difference
1. Add the email address, and use the "Test" button to send a test notification

![Adding a new notification email target in PagerDuty](/images/support/oncall-pagerduty-setup-new-notification-email.png)


1. Change to the "Notication Rules" tab
1. Your new email will already have been added in the "When a high-urgency incident is assigned to me" section – remove it from there, and also from any other sections it might have been added to
1. Finally, *do* add it to the "Before I go on-call or off-call" section via the "Add Notification Rule" button
   - Make sure to pick *only* "before I go on-call"

![Setting up a notification specifically for going on-call](/images/support/oncall-pagerduty-setup-going-oncall-notification.png)

That's step one done – now PagerDuty will always send us a notification mail to the unique email address right when our shift begins.

### Configure Gmail to automatically process these new notifications

We do not actually want these notification mails in our inbox, though. They are only a means to an end – so let's set up a corresponding Gmail filter next.

1. Go to your [Filters and Blocked Addresses](https://mail.google.com/mail/u/0/#settings/filters) settings
1. With the "Create a new filter" link, start adding the filter
1. In the `To` condition, enter your unique email address from above
1. Click "Create Filter" and choose these actions in the following dialog:
   - `Skip the Inbox (Archive it)`
   - `Mark as read`
   - `Apply the label:` and via the dropdown create a new label of your choice – for example `going-on-call`
1. Make sure to check the `Also apply filter to x matching conversations` box – this should match the test notification we sent earlier
1. Click "Create Filter" again to actually set it up

It should look like this in your filter list afterwards:

![The finished Gmail filter that applies our label](/images/support/oncall-gmail-setup-oncall-label-filter.png)

That's the second step done – we're now all set to make Zapier use these email notifications as a trigger for the Slack status update.

### Configure Zapier to update the Slack status when a new on-call notification email arrives

Note that some teams in GitLab are using Zapier with a paid plan, but Support Engineers usually don't. There's no need to for an Access Request and a Zapier license – this works entirely with a free Zapier account.

1. Sign into (or create an account with) [Zapier](https://zapier.com/) using your Gmail login
1. Go to [Apps](https://zapier.com/app/connections) and "Add Connection" for both Gmail and Slack
   - When doing so, you will be prompted to log into both services and give Zapier permissions to access them on your behalf.
1. [Create a new Zap](https://zapier.com/webintent/create-zap)
1. For the Trigger, use the `Gmail` app with the `New Labeled Email` event
1. Continue until you can pick the "Label/Mailbox" and choose the Gmail label created above (for example `going-on-call`)
1. Zapier will now look for emails with that label and should find the test email we triggered earlier
1. Choose the test email and "Continue with selected record" to start setting up the action
1. For the Action, use the `Slack` app with the `Set Status` event
1. Continue until you can specify the input for the status:
   - `Status Text` – you'll likely want to specify your rotation name here
   - `Status Emoji` – you'll likely want to use `:pagerduty:` here
   - `Expiration Time` – you'll want to use the duration of your shift here so the status is automatically cleared when your shift is done
1. In the next step, give it a quick test (don't forget to clear your Slack status afterwards)
1. Finally, "publish" your Zap – this is just saving and activating it

Here's what the result should look like:

![The trigger of the zap](/images/support/oncall-zapier-gmail.png)

![The action of the zap](/images/support/oncall-zapier-slack.png)

And that was the third and final step – from now on your Slack status should be updating automatically. Due to how this is set up it can sometimes have a few minutes delay, but it's usually very snappy.
