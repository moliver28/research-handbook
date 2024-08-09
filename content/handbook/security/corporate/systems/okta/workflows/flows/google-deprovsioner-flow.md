---
title: Google Workspace - Offboarding
---

## Overview

Google Workspace - Offboarding consists of a collection of flows built in [Okta Workflows](https://help.okta.com/wf/en-us/content/topics/workflows/workflows-main.htm) ("OWF"). The flows were created to provide a consistent and automated process for deprovisioning Google Workspace user accounts. 

The deprovisioner is composed of 2 distinct parts.

### Initial Offboarding

The following actions are performed on a Google Workspace user when an offboarding is triggered via a Slack slash command.

- Signs a user out of all web and device sessions and reset their sign-in cookies.
- Update user profile
  - reset password
  - remove from Global Address list
  - remove recovery email
  - remove recovery phone
  - move to `/Former Team Members` organizational unit
  - Unsuspend if suspended
- Remotely wipe coprorate Google Workspace data from mobile devices
- Delete access tokens (OAuth tokens)
- Delete application specific passwords (ASPs)
- Delete verification tokens
- Remove user from Google groups
- Create and set a vacation auto-reply in the user's Gmail
- Make manager a Gmail delegate
- Add manager as writer to user's primary calendar
- Add manager as writer to all files in the user's myDrive

### Post-90 Day Offboarding

The following actions are performed after 90-days for an already offboarded user in Google Workspace

- TBD

## How to Use

### Initial Offboarding

To trigger an initial offboarding use the following Slack slash command associated with the Google Offboard Slack app.

`/google-offboard <user email>`

**Note:** The Slack slash command is only available to limited members of the Corporate Security team. 
{: .note}

A successful trigger will result in a `one moment...processing request for <user email>` slack message before the offboarding initiates.

A slack thread will be started by the Google Offboard app which will contain all actions performed as part of offboarding. A status and message will be returned for the results of each action. 

Once complete Google Offboard will update the thread and report whether or not the offboarding was successful.

### Post-90 Day Offboarding

Post 90-day offboarding are automatically triggered after 90 days. Google Offboard will run once a day to check the status of all past offboards and determine if a post-90 day offboarding needs to be run. Reminders will be sent to the user's manager on the 60, 83, and 90 day mark.

## Architecture

The Google Workspace - Offboarding is composed of the following components

{{% alert title="Note" color="primary" %}}
The following documentation assumes some experience and working knowledge with Okta Workflows.
{{% /alert %}}

### Flows

 The Google Workspace - Offboarding is composed of different types of flows. They are defined by the `Type` at the beginning of each flow's name. For example `Orchestrator` in `Orchestrator - Google Workspace - Offboarding`.

- **Trigger**
  - Flows that trigger the Google Workspace - Offboarding. Trigger flows may include scheduled runs, slack slash commands, delegate flows, or any other flow that is initiated by a user or system. These flows should trigger the orchestrator flows to start.
- **Orchestrator**
  - Flows that orchestrates all the various action and events as part of Google Workspace deprovisioning. 
  - An orchestrator flow will usually be composed of multiple actions, notifications, and logging flows. 
- **Action**
  - Flows that handle a specific action as part of deprovisioning. For example, an action could sign a user out, update a user profile, delete tokens, or get a list of user groups. In general, each action corresponds to a specific Google Workspace API endpoint (e.g. [users.get](https://developers.google.com/admin-sdk/directory/reference/rest/v1/users/get) in the Google [Admin SKD API](https://developers.google.com/admin-sdk/reference-overview)).
- **Notification**
  - Flows that sending various notifications to different systems based on the results of actions performed during deprovisioning. This may include sending notifications like sending a message to a Slack thread or adding a comment to a GitLab issue.
- **Log**
  - Flows that log various offboardings and events as part of deprovisioning. Log flows may log the results of a specific action, an new offboarding, updates to an offboarding, etc.

#### Connectors

Google Offboard uses a combination of pre-built 3rd party connectors and custom connectors built with connector builder. Connectors can be found in the connection page of Workflows. The following connectors are used

- Google Workspace
- Google Workspace Enterprise License Manager
- Google Data Transfer
- Gmail
- Custom Slack
- Custom Google Drive
- Custom Google Calendar


### Tables

 OWF does not provide native database support, so tables are used at this time to store relevant logs.
 
The following tables are used

- Offboarding
  - contains data about each offboarding

### How it works

Below is a high level overview of how Google Offboard operates. For a more detailed overview read the comments and notes provided in each flow.

#### Initial Offboarding

- **Trigger** - `/google-offboard <user email>`
  - User triggers the Slack slash command and includes email of user to offboard
  - Verifies an email is present and gather initial `user` and `actor` data. required by the orchestrator flow.
  - Start orhcestrator flow.
- **Orchestrator** 
  - Construct offboarding object from initially provided data
  - **Log** - new offboarding with `initiated`
  - **Notification** - new offboarding
  - **Action** - get `user`'s profile data
  - **Action** - get `manager`'s priofile data
  - Verify whether `user`'s profile data present 
    - If **Present**
      - **Action** - perform offboarding actions
        - **Log** - result of each action to events
        - **Notification** - Send action results 
      - **Notification** - completed offboarding
      - **Notification** - update manager about offboarding
      - **Log** - update offboarding with `Completed`
    - If **Missing**
      - **Notification** - cancelled offboarding
      - **Log** - update offboarding with `Cancelled`

#### Post 90-Day Offboarding

- **Trigger** - `Scheduled`
  - Run daily and get list of all past offboardings. If number of days since offboard is
    - `60 days`
      - **Notification** - Manager reminder
    - `83 days`
      - **Notification** - Manager reminder
    - `>= 90 days`
      - **Notification** - Manager reminder
      - gather offboarding data and trigger orchestrator flow
- **Orchestrator**
  - Construct offboarding object from offboarding data
  - **Notification** - new post-90 day offboarding
  - **Action** - get `user`'s profile data
  - **Action** - get `manager`'s priofile data
  - Verify whether `user`'s profile data present 
    - If **Present**
      - **Action** - perform offboarding actions
        - **Log** - result of each action to events
        - **Notification** - Send action results 
      - **Notification** - post-90 day completed offboarding
      - **Log** - update post-90 day offboarding with `Completed`
    - **Missing**
      - **Notification** - cancelled post-90 day offboarding
      - **Log** - update post-90 day offboarding with `Cancelled`
