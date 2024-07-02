---
title: CorpSec Helpdesk Slack Issue Automation
---

## Overview

When you ask for help in the `#it_help` channel, this automation will automatically create a new GitLab issue that creates a long term record of your support request, while providing the ease-of-use of a Slack thread.

Each comment in the Slack thread is added to the GitLab issue.

This allows us to dogfood GitLab, and also link to related GitLab issues if additional triage is needed or we are cross-linking the audit trail of change management activity, laptop requests, etc.

## Technical Details

[IT-Help Slack Issue Creator wiki](https://gitlab.com/groups/gitlab-com/it/end-user-services/-/wikis/IT-Help-Slack-Issue-Creator/How-To-Use)

The script scans the IT help Slack channel and performs the following actions:

- Creates a new GitLab issue if a user adds an 👀 reaction to a message and the issue has not been created yet.
- Closes the GitLab issue if a user adds a check mark (✔) reaction and the issue has been created but not closed.
- Reopens the GitLab issue if it has been closed, but the check mark reaction is removed.
- Adds system labels to the GitLab issue based on specific emoji reactions in the Slack channel.
- Parses the Slack thread and adds comments to the related GitLab issue.
- Adds comments from GitLab issue into Slack thread.
