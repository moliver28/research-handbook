---
title: Google Workspace Deprovisioning
---

Google Workspace deprovisioning is composed of 2 parts that are outlined below. The first part happens as part of the initial offboarding. The second part occurs after 90 days from the offboarding. This workflow will send out notifications throughout this 90 day period to let the Former Team member's manager know that the final deadline is approaching.

#### These are the steps that follow immediately upon termination of a team-member

- Signs a user out of all web and device sessions and reset their sign-in cookies.
- Update user profile
  - reset password
  - remove from Global Address list
  - remove recovery email
  - remove recovery phone
  - move to `/Former Team Members` organizational unit
  - unsuspend user if suspended
- Remotely wipe coprorate Google Workspace data from mobile devices
- Delete access tokens (OAuth tokens)
- Delete application specific passwords (ASPs)
- Delete verification tokens
- Remove user membership from Google groups.
- Create and set a vacation auto-reply in the user's Gmail
- Make manager a Gmail delegate
- Create a transfer request and transfer the following data to the user's manager
  - Google Drive
  - Google Calendar

#### These are the steps that follow after the Former Team Member has been gone for 90 days

- Update user profile
  - move to `/NoGSuiteLicense` organizationl unit
- Delete all aliases
- Suspend the user

#### The following notifications will be sent out to the fortmer team member's manager via Slack

**Immediate Slack notification:**

> Hello `<Manager displayName>`,
>
>You are receiving this notification to let you know that one of your direct reports `<user fullName>` has been deprovisioned from GitLab's Google Workspace.
>
>In keeping with our standard offboarding policy the user's `Google Drive` and `Calendar` data has been transferred to you. You will also receive delegated access to their `Gmail` account. Delegate access will remain available to you for 90 days after which the account will be closed. For more information about how to access this data please see information in the [Handbook page](/handbook/security/corporate/automation/google-workspace/deprovisioning/).
>
>You will receive follow-up notifications `30 days` and `1 week` before this account is closed. If you have any questions about this process, or need assistance, please feel free to reach out to the Corp IT team in the it_help Slack channel.

**30 Days Slack notification**

> Hello `<Manager displayName>`,
>
>You are receiving this notification letting you know that your direct report `<user email>` was deprovisioned from GitLab's Google Workspace `60` days ago.
>
>In keeping with our standard offboarding policy you will continue to have delegated access to their `Gmail` account for another `30` days after which the account will be closed.
>
>If you have any questions about this process, or need assistance, please feel free to reach out to the Corp IT team in the #it_help Slack channel.

**7 Days Slack notification**

> Hello `<Manager displayName>`,
>
>You are receiving this notification letting you know that your direct report `<user email>` was deprovisioned from GitLab's Google Workspace `83` days ago.
>
>In keeping with our standard offboarding policy you will continue to have delegated access to their `Gmail` account for another `7` days after which the account will be closed.
>
>If you have any questions about this process, or need assistance, please feel free to reach out to the Corp IT team in the #it_help Slack channel.

**Final Slack notification**

>The GitLab Google Workspace account for `<user email>` has been archived after `90 days` as per our standard offboarding policy.

### FAQ

**The team member had a Gmail thread with a customer. How can I get that thread history? How long will it be available?**

> Delegate access to the former team member's gmail account will be provided to the manager. Access will be available for `90 days` following initial offboarding.
>
> For example, to access a former team member's email thread with a customer:
>
>- Open Gmail in a browser
>- Select your user profile in the top-right corner
>- From the dropdown of available accounts, select the gmail account you wish to view. A delegated account will be marked with a `Delegated` label.

**The team manager owned a calendar invite that had external collaborators (customers, partners, etc). How do we cancel that event or I can take over as the organizer? I want the best UX for my customer.**

> Former team member's primary calendar are automatically transferred to the manager when they are initially offboarded. If you are the manager, you will receive an email with the link to the calendar and direct access in Google Calendar. Existing calendar events can be cancelled or have their ownership transferred like any other event in Google Calendar.

**I’m not the team member’s manager, just a peer, and they have a document that I need to get access to. I don’t know the document name, only the ID. How can I learn more about what’s inside this document. How can get me access?**

> If you know the team member's manager, you can request for them to share the file with you directly. Otherwise, please create an AR using the Individual_Bulk_Access_Request template with the following:
>
>- Manager approval
>- it-security label
>- Link(s) to the document(s)
>- Who we should transfer ownership to

**How long will the team member’s Google Docs be available before they are lost or destroyed?**

> The team member's Google Docs will not be destroyed. They will be transferred directly to the team member's manager.

**If the team member’s manager leaves the company (at the same time or in a few months), what happens to the original team member’s data? How can we access it, and for how long?**

> If the manager leaves GitLab around the same time as the team member, Google Drive and Google Calendar data for both the team member and manager will be transferred to the manager's manager.

**The team member was an owner/editor of a Google Doc in a shared drive that I can see but only have viewer/commenter access. How do I get Editor access since the emails to request access were sent to their email? Is there a standardized or automated way to do this without opening an AR?**

> in Google Workspace Share drives and myDrives (personal drive) operate differently. Files in Share Drives are owned directly by the Share Drive itself, while myDrive files are owned by the user. If you need access or additional permissions to a Share Drive file, make an Access Request and include as much information about the file as possible.

**A customer is emailing the former team member and even if they are getting a vacation response, they haven’t opened a new thread with someone else. I’m worried about needing to stay in contact with that customer. What should I do? How can we maintain a great customer experience?**

> If you are their manager you can use Gmail delegate access to access their email and let the customer know to open a new email thread with the appropriate contacts. Otherwise, please work with their manager in handling updated commmunications with the customer.

**I heard that the team member was sent a message last year that had a PDF attachment that I need now. What’s the process for searching their email for that message?**

> If you are their manager you can use Gmail delegate access to access their email and find the PDF attachment. If delegate access has expired, you can file an access request to have the email and PDF attachment transferred to you.

**For Security reasons, data security, compliance, and the other good reasons, who has administrative access to all this data? Who can help me? Who doesn’t get access and why?**

> Administrative access to not only offboarded team member data, but Google Workspace overall, is limited to members of the Corporate Securtiy team. Access is restricted further to only those who need administrative permission as part of their day to day duties. This follows the principle of least privileges and helps keep corporate data private and secure.

**I have delegated access to a former team members calendar, docs, and email. What should or should I not do? What data privacy concerns should I be concerned about? If I see something weird or personal inadvertently, should I report it to People Ops or Security, or just ignore it?**

> First, if you see anything unusual or personally sensitive, please report it to the Security team immediately.
>
> While you have delegate access to the user's Gmail account, please be mindful of responding to emails as the former team member. Instead, forward the email to yourself and respond to the forwarded email from your account.

**A former team member had access to confidential financial insider information or a confidential codename project. What processes are in place to protect that data from being shared with other team members who are not approved to see it?**

> An offboarded users data is only shared with those who already had access or their manager as part of the transfer process. No additional access is granted.
