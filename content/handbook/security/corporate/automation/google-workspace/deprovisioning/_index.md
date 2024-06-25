---
title: Google Workspace Deprovisioning
---

IT Ops has an automated workflow that triggers upon a notification from PeopleOps of a team-member offboarding. This automated workflow is composed of 2 parts that are outlined below. The first part happens within 1 hour of the offboarding. The second part occurs after 90 days of the offboarding. This workflow will send out notifications throughout this 90 day period to let the Former Team member's manager know that the final deadline is approaching.

#### These are the steps that follow immediately upon termination of a team-member

- The former team-member (FTM) is removed from all Google groups
- The former team-member (FTM) is locked from access to their laptop
- The former team-member (FTM) is removed from access to all GitLab provisioned services linked to their Okta account
- The former team-member (FTM) is removed from access to all GitLab provisioned services not linked to their Okta account
- Unless there is a legal hold on their laptop, the laptop is securely wiped
- The FTM’s manager is setup as a delegate to their Gmail and Google Calendar
- The FTM’s manager gains editor privileges to all “My Drive” Google Drive Files
- The FTM’s account is moved to the Former Team Members OU
- Remove the FTM account from the Global Address List
- All of the account’s sign in cookies/sessions are cleared and the account password is reset to a random 64 character password
- The account’s recovery email is set to null
- The account’s recovery phone number is set to null
- The FTM’s auto-response email message is setup.

#### These are the steps that follow after the Former Team Member has been gone for 90 days

- All of the former team-member (FTM) aliases are removed
- Archive of all Google Drive files in the users My Drive that are marked as owner
- These are saved in the Offboarded Users Drive Archive
- Each user has their own folder in the following format
- <emailUsername>_google_drive
- The FTM’s account is suspended
- The FTM’s account will be moved to NoGSuiteLicense OU
- The Google Workspace License is removed from the account

#### The following notifications will be sent out to the FTM’s manager and IT over Slack

**Immediate Slack notification:**

> Hello `<Manager Firstname>``<Manager Lastname>`, you are receiving this notification to let you know that one of your direct reports `<Firstname>``<LastName>` has been deprovisioned from GitLab’s Google Workspace. In keeping with our standard offboarding policy you will receive a copy of this user’s Google Drive data as well as delegated access to their email and calendar account. This delegate access will remain available to you for 90 days after which the account will be closed, and all data will be archived. Please be sure to copy anything you wish to keep to your own account before this time. For more information about how to access this data please see information in this Handbook page (provide link).
>
> You will receive another notification 30 days before and then a final notification at 1 week before this account is closed. If you have any questions about this process, or need assistance with access the data, please feel free to reach out to the Corp IT team in the #it_help Slack channel.

**30 Days Slack notification**

> Hello `<Manager Firstname>``<Manager Lastname>`, you are receiving this notification to let you know that one of your direct reports `<Firstname>``<LastName>` was deprovisioned from GitLab’s Google Workspace 60 days ago. In keeping with our standard offboarding policy you will continue to have delegated access to their email and calendar account for another 30 days after which the account will be closed, and all data will be archived. Please be sure to copy anything you wish to keep to your own account before this time. For more information about how to access this data please see information in this Handbook page (provide link).
>
> You will receive another notification at 1 week before this account is closed. If you have any questions about this process, or need assistance with access the data, please feel free to reach out to the Corp IT team in the #it_help Slack channel.

**7 Days Slack notification**

> Hello `<Manager Firstname>``<Manager Lastname>`, you are receiving this notification to let you know that one of your direct reports `<Firstname>``<LastName>` was deprovisioned from GitLab’s Google Workspace 83 days ago. In keeping with our standard offboarding policy you will continue to have delegated access to their email and calendar account for another 7 days after which the account will be closed, and all data will be archived. Please be sure to copy anything you wish to keep to your own account before this time. For more information about how to access this data please see information in this Handbook page (provide link).
>
> This is the final notification. If you have any questions about this process, or need assistance with access the data, please feel free to reach out to the Corp IT team in the #it_help Slack channel.

**Final Slack notification**

> The GitLab Google Workspace account for `<Firstname>``<LastName>` has been archived after 90 days as per our standard offboarding policy.
