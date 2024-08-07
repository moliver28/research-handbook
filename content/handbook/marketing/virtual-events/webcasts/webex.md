---
title: Webex Webcasts
description: An overview of Webex webcasts at GitLab
twitter_image: '/images/tweets/handbook-marketing.png'
twitter_site: "@gitlab"
twitter_creator: "@gitlab"
---

## LIVE webcast registration and tracking - WebEx

### Step 1: Configure WebEx

*Note: The WebEx license can only be used for a single session at a time. This license is used for all field-marketing-run internally hosted webcasts. Therefore, when a webcast is requested please confirm there is not going to be a conflict between the pre-scheduled sessions - both live and dry-run - using that license by checking the [webcast gcal](https://calendar.google.com/calendar?cid=Z2l0bGFiLmNvbV8xcXZlNmc4MWRwOTFyOWhldnRrZmQ5cjA5OEBncm91cC5jYWxlbmRhci5nb29nbGUuY29t). Schedule no less than 30min between sessions (before & after) so there is less chance of conflict and allows for a buffer.*
*IMPORTANT: You can only use the WebEx account that is not tied to the SSO to schedule webinars. The account to be used is `wbxmeet7@gitlab.com`, you can find the credentials in the 1Password vault `GitLab Webex Marketing Vault`*
*Note: Registration Confirmation and reminder emails will not be sent automatically from WebEx. Those will have to be sent by Marketo. The registration email is integrated in the `01 Registration Flow` smart campaign. Reminder emails will have to be scheduled and the tokens edited depending on the timeframe desired to send reminders.*

1. **LOGIN**: log into WebEx,  go to the bottom left side and click on `WebEx Events(classic)`. In the left navbar, click on `Schedule an Event`. *It is imperative to use the WebEx classic interface otherwise the integration will not be sucessfull*
1. **Event Name**: add the topic as follows "Webcast title - Month DD, YYYY - HH:MM am/pm PT/HH:MM am/pm UTC" (for example: `Debunking Serverless security myths - October 21, 2019 - 8:30 am PT/3:30 pm UTC`).
1. **DESCRIPTION**: add a sentence to describe what the webcast is about at a high-level.
1. **WHEN**: add the webcast date and time.
1. **DURATION**: add how long the webcast will be PLUS 45 minutes. You must include an additional 45 minutes for the prep call before the event plus padding for running over, otherwise the Launchpoint integration will fail. Keep the start time as the actual time attendees should join, but increase the duration. For example, if your webcast is from 9:00am-10:00am PT, enter start time of 9:00am, but a duration of 1 hour and 45 minutes.
1. **TIMEZONE**: select the correct timezone for your webcast.
1. **DO NOT** change all the other settings that are prepopulated by the template.
1. **ALTERNATIVE HOSTS**: add webcast DRI, internal speaker(s), and Q&A resource as alternative hosts.
1. **PANELISTS**: add external GitLab speakers as panelists by following the video instructions below.
1. **EMAILS**: uncheck email confirmation emails and reminder emails because we will send those from Marketo.

### Step 2: Set up the webcast in Marketo/SFDC, and integrate to WebEx

#### Create program in Marketo - WebEx

1. Create the webcast program in Marketo by navigating to either the [Webcast program template](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/ME8983A1).
1. Right-click the appropriate template, and select "clone"
1. Next to "Clone To", choose `A campaign folder`.
1. For "Name", add the MKTO program name (this is also the SFDC campaign name). Use the following format: `YYYYMMDD_{Webcast Title}_[Region - only if applicable]`. For example, `20170418_MovingToGit`.
1. Under "Folder", choose the appropriate quarter within the  `GitLab-Hosted Campaign Webcasts` or `GitLab-Hosted Workshops` folders.
1. Click "Create" (note - you will create the SFDC campaign from Marketo in the next step!)

#### Connect the Marketo program to WebEx via launchpoint integration

1. In the Marketo program Summary view, you will see `Event Partner:` with a link that says "not set".
1. Click on "not set"
1. In the Event Partner drop down, select `WebEx` and in the Login drop down, select `WebEx API`.
1. In the Event drop-down, select the name of the WebEx webcast you set up in [Step 1: Configure WebEx](/handbook/marketing/virtual-events/webcasts/#step-1-configure-webex)

#### Create campaign in Salesforce - WebEx

1. In the Marketo program Summary view, you will see `Salesforce Campaign Sync:` with a link that says "not set".
1. Click on "not set"
1. Where it says "None", click the drop-down and choose "Create New"
1. The Marketo program name will auto-fill for the name (for consistency across both systems)
1. In the "Description", add a link to the epic
1. Click "Save"
1. NOW you will navigate to the Campaign in SFDC to do a quick review - [Shortcut to Campaigns](https://gitlab.my.salesforce.com/701/o)
1. Click into the SFDC campaign
1. Change the campaign owner to the webcast DRI
1. Change the status to `in progress`
1. Edit the `Enable Bizible Touchpoints` field to `Include only "Responded" Campaign Members`
1. Edit the Budgeted Cost (required) to cost of webcast, or "1" if there is no cost associated
1. Click save

### Step 3.A: Update Marketo Tokens

Buckle up! There are a lot of tokens, but for good reason. This is an **advanced practice** and **best practice** within Marketo templates to increase efficiency and speed. Updating these at the top level of the program allows them to cascade through the landing page, emails, automation, and alerts creating a significantly more efficient process of launching new webcasts.

* `{{my.bullet1}}` - bullet copy with approved [character limits](https://docs.google.com/spreadsheets/d/1dKVIZGbbOLoR5BdCqXqCQ40qJlQNif9waTiHc8yWggQ/edit#gid=43971442)
* `{{my.bullet2}}` - bullet copy with approved [character limits](https://docs.google.com/spreadsheets/d/1dKVIZGbbOLoR5BdCqXqCQ40qJlQNif9waTiHc8yWggQ/edit#gid=43971442)
* `{{my.bullet3}}` - bullet copy with approved [character limits](https://docs.google.com/spreadsheets/d/1dKVIZGbbOLoR5BdCqXqCQ40qJlQNif9waTiHc8yWggQ/edit#gid=43971442)
* `{{my.bullet4}}` - bullet copy with approved [character limits](https://docs.google.com/spreadsheets/d/1dKVIZGbbOLoR5BdCqXqCQ40qJlQNif9waTiHc8yWggQ/edit#gid=43971442)
* `{{my.emailConfirmationButtonCopy}}`  - copy for the email confirmation (when on demand), leave as `Watch now`
* `{{my.formButtonCopy}}` - copy for the form button, leave as `Register now` (when switching to on-demand, this will change to `Watch now`)
* `{{my.formHeader}}` - copy for header of form, leave as `Save your spot today!` (when switching to on-demand, this will change to `View the webcast today!`)
* `{{my.heroImage}}` - image to display above landing page form ([options in Marketo here](https://app-ab13.marketo.com/#FI0A1ZN9784))
* `{{my.introParagraph}}` - intro paragraph to be used in landing page and nurture email, with approved [character limits](https://docs.google.com/spreadsheets/d/1dKVIZGbbOLoR5BdCqXqCQ40qJlQNif9waTiHc8yWggQ/edit#gid=43971442)
* `{{my.mpm owner email address}}` - not used in automation, but helpful to know who to go to about setup
* `{{my.ondemandUrl}}` - skip updating in initial registration page setup (update during on-demand switch), Pathfactory link WITHOUT the `https://` NOR the email tracking part (`lb_email=`)
  * Example of correct link to include: `learn.gitlab.com/gartner-voc-aro/gartner-voc-aro` - the code in the Marketo template assets will create the URL `https://learn.gitlab.com/gartner-voc-aro/gartner-voc-aro?lb_email={{lead.email address}}&{{my.utm}}`
  * Note that both parts of this url include custom URL slugs which should be incorporated into all pathfactory links for simplicity of tracking paramaeters
* `{{my.socialImage}}` - image that would be presented in social, slack, etc. preview when the URL is shared, this image is provided by design/social, leave the default unless presented with webcast specific image.
* `{{my.speaker1Company}}` token with speaker 1's company name
* `{{my.speaker1ImageURL}}` token with speaker 1's image url in marketo design studio
* `{{my.speaker1JobTitle}}` token with speaker 1's job title
* `{{my.speaker1Name}}` token with speaker 1's full name
* REPEAT this for speaker 2 and 3. If there are more or less speakers, follow the instructions below at the end of the general webcast setup.
* `{{my.utm}}` - UTM to track traffic to the proper campaign in reporting dashboards (append integrated campaign utm or program name, if webcast is not part of an integrated campaign, to the utm campaign token)
* `{{my.valueStatement}}` token with the short value statement on what the viewer gains from the webcast, this ties into the follow up emails and must meet the max/min requirements of the [character limit checker](https://docs.google.com/spreadsheets/d/1dKVIZGbbOLoR5BdCqXqCQ40qJlQNif9waTiHc8yWggQ/edit#gid=1471341556)
* `{{my.webcastDate}}` - the webcast LIVE date.
* `{{my.webcastDescription}}` - 2-3 sentences with approved character limits, this will show up in page previews on social and be used in YouTube and Pathfactory description.
* `{{my.webcastSubtitle}}` token with subtitle for the webcast.
* `{{my.webcastTime}}` token with the webcast time in local timezone/UTC timezone.
* `{{my.webcastTitle}}` token with the webcast title.
* `{{my.registrationConfirmationButtonCopy}}` token with the registration confirmation button message.
* `{{my.webcastReminder1}}`: token with the time reminder value for the first reminder
* `{{my.webcastReminder2}}`: token with the time reminder value for the second reminder
* `{{my.Add To Calendar}}`: token for Add to Calendar open for ICS file. Double click on it and edit the time slot and descruption

### Step 3.B: Turn on smart campaigns in Marketo

* Activate the `00 Interesting Moments` campaign.
* Activate the `01a Registration Flow (single timeslot)` smart campaign.

### Step 3.C: Create the landing page

* When you cloned the webcast template, and update the Marketo tokens, your landing page is almost ready to go!
  * Under "Assets" right-click on `Registration Page` and hover over `URL Tools` > `Edit URL Settings`
  * Use the format `webcast-topic` (or `webcast-topic-region` if region is relevant) - ex. `webcast-mastering-cicd` or `webcast-mastering-cicd-italian`
* Complete the same steps for the `Thank You Page`
  * Use the format `webcast-topic-thank-you` (or `webcast-topic-region-thank-you` if region is relevant) - ex. `webcast-mastering-cicd-thank-you` or `webcast-mastering-cicd-italian-thank-you`

#### Adjusting number of speakers in Marketo landing page

**Less Speakers**
The speaker module is controlled in the Marketo landing page module. The template is initially set up to support three speakers (note: this is supported in both the My Tokens and the landing page template). If there are less speakers, follow the instructions below:

1. Right click on the Registration Landing Page and click `Edit Draft`
2. Double click on the `Speaker` section
3. Click `HTML` on the toolbar
4. Remove the code below for each speaker you need to remove

```html
<div><br /></div>
<ul>
<li>{{my.speaker3ImageURL}}</li>
<li>{{my.speaker3Name}}</li>
<li>{{my.speaker3JobTitle}}</li>
<li>{{my.speaker3Company}}</li>
</ul>
```

**Less Speakers**
The speaker module is controlled in the Marketo landing page module. The template is initially set up to support three speakers (note: this is supported in both the My Tokens and the landing page template). If there are less speakers, follow the instructions below:

1. Right click on the Registration Landing Page and click `Edit Draft`
2. Double click on the `Speaker` section
3. Click `HTML` on the toolbar
4. Remove the code below for each speaker you need to remove

```html
<div><br /></div>
<ul>
<li>{{my.speaker3ImageURL}}</li>
<li>{{my.speaker3Name}}</li>
<li>{{my.speaker3JobTitle}}</li>
<li>{{my.speaker3Company}}</li>
</ul>
```

If additional assistance is required, please comment in the [#marketing_programs slack](https://gitlab.slack.com/archives/CCWUCP4MS) for assistance if needed.

### Webcast invitation - WebEx

:exclamation: **Note from @jgragnola: we are working on further templatizing these invitations so that copy changes are not needed and tokens take care of these emails.** ([issue](https://gitlab.com/gitlab-com/marketing/digital-marketing-programs/-/issues/3422))

1. Update emails `invitation 1 - 2 weeks prior`,  `invitation 2 - 1 week prior` , and if needed `invitation 3 - Day before` with relevant copies related to the webcast. *Note: We normally use the same copy for all 3 emails and simply tweaked the templated subject lines to sound more like "Reminders".*
2. Update email `Registration Confirmation`, and if desired `Reminder 1` , and  `Reminder 3` with relevant copies related to the webcast. *Note: We normally use the same copy for all 3 emails and simply tweaked the templated subject lines to sound more like "Reminders".*
3. Approve copy and send samples to the requestor, and the presenter (if different from requestor).
4. Go to the List folder and edit the `Target List` smart list and input the names of past similar programs and applicable program statuses to the `Member of program` filter. This will make sure people that have attended programs with similar topics in the past are included in the invite.
5. Once you get approval on the sample email copy, schedule the email programs outlined in step 1.

### Step 4: Add the webcast to the /events page

* To add the webcast to the /events page follow this [step by step guide](/handbook/marketing/events/#how-to-add-events-to-aboutgitlabcomevents).

### Step 5: Test your set up

1. Submit a test lead using your GitLab email on the LIVE landing page to make sure the registration is tracked appropriately in the Marketo program and you get a confirmation email. *Check and test the registration confirmation email. Do not forget to update the `Add to calendar` token and the email values for the Google calendar in the Registration Confirmation, Reminder 1 and Reminder 2.*
