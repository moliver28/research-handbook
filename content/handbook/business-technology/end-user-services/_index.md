
#### Access Requests
<!-- MOVE_TO: /handbook/security/corporate/support -->
- For information about the access request policies and security guidelines, please refer to the Security Team's [access request handbook page section](/handbook/security/#access-management-process).

- For links to role based access request templates, system access templates, and other general instructions and FAQs, please refer to the [Access Requests page](/handbook/business-technology/end-user-services/onboarding-access-requests/access-requests/).

#### Baseline & Role-Based Entitlements
<!-- MOVE_TO: /handbook/security/corporate/support -->

- For information about baseline entitlements and role-based access, please refer to the [baseline entitlements handbook page](https://internal.gitlab.com/handbook/it/end-user-services/access-request/baseline-entitlements/).

- For information on how to create a Role-Based Entitlement, please refer to the [instructions on how to create role-based entitlements](https://internal.gitlab.com/handbook/it/end-user-services/access-request/baseline-entitlements/#how-do-i-create-a-role-based-entitlement-template).

#### Automated Group Membership Reports for Managers
<!-- engineering to decide where this goes-->

If you would like to check whether or not a team-member is a member of a Slack or a Google Workspace group, you can view the following automated group membership reports:

- [Google Workspace Group Membership Reports](https://gitlab.com/gitlab-com/security-tools/report-gsuite-group-members)

- [Slack Group Membership Reports](https://gitlab.com/gitlab-com/security-tools/report-slack-group-members)

## IT-Help Slack Issue Creator
<!-- MOVE_TO: /handbook/security/corporate/support -->

This automation converts Slack threads from the #it_help channel to issues in GitLab. With most IT support requests being handled in the #it_help Slack channel today, this automation will create one basic intake point with bilateral synchronization to GitLab helpdesk issues.

### How to use it

Reach out to the #it_help Slack channel as usual when assistance is needed. The automation will then create, update, and manage an issue created for the Slack thread. You will be able to communicate with the IT Analyst either via the Slack thread or in the issue created by the automation, and responses will sync in both places.

### How it works

The script scans the IT help Slack channel and performs the following actions:

- Creates a new GitLab issue if a user adds an 👀 reaction to a message and the issue has not been created yet.
- Closes the GitLab issue if a user adds a check mark (✔) reaction and the issue has been created but not closed.
- Reopens the GitLab issue if it has been closed, but the check mark reaction is removed.
- Adds system labels to the GitLab issue based on specific emoji reactions in the Slack channel.
- Parses the Slack thread and adds comments to the related GitLab issue.
- Adds comments from GitLab issue into Slack thread.

To learn more on how this automation works, check the [IT-Help Slack Issue Creator wiki](https://gitlab.com/groups/gitlab-com/it/end-user-services/-/wikis/IT-Help-Slack-Issue-Creator/How-To-Use).
{: .alert .alert-info}

#### IT Holiday Schedule
<!-- MOVE_TO: /handbook/security/corporate/support -->
The IT Helpdesk team (End User Services) will be observing 2 end of the year holidays during the weeks from 2023-12-18 to the 2024-01-02.

Observed Support Holidays
Monday December 25th
Monday January 1st

If you have an urgent request, please reach out to us via slack in the #it_help channel.

#### Laptop Wipe Schedules for IT Analysts
<!-- MOVE_TO: /handbook/security/corporate/support -->
<!-- comment - that the offboarding laptop lock automation and other HB pages point to this one-->

- Mic Rohr - [appointment schedule](https://calendar.app.google/QrBCkxhvAxkhA36M8) - AMER

- Jeff Ford - [appointment schedule](https://calendar.app.google/Qc1wwN94q6RqEyGL9) - AMER

- Alex Kruseic - [appointment schedule](https://calendar.app.google/xsTHAQWxHmT3tpr86) - AMER

- Jenny Wong - [appointment schedule](https://calendar.app.google/HJoCYkbf4XnApqSU6) - AMER

- Steve Ladgrove - [appointment schedule](https://calendar.app.google/sno1aJBB9YhQUHXh8) - APAC

- Max Hirata - [appointment schedule](https://calendar.app.google/CMK6dKUN2otv1wsWA) - APAC

- Bruno Ferreira - [appointment schedule](https://calendar.app.google/zKj8AH9c8VmAcYX48) - EMEA

- Eoghan Dunne - [appointment schedule](https://calendar.app.google/BXECy3uLpUKdNbHe6) - EMEA
