---
title: Dev Pulse
category: Handling tickets
description: Support documentation page for Dev Pulse
canonical_path: "/handbook/support/workflows/dev_pulse"
---

## What is Dev Pulse?

Dev Pulse is the name for a set of scripts and Zendesk setups we utilize to
actively monitor issues and merge requests for bug resolution or feature request implementation.

Through all its components, Dev Pulse allows a Zendesk ticket to stay in the
`On-hold` status while waiting on an issue or merge request to reach a specific state.

When the specific state is reached, the tickets within Zendesk using Dev Pulse
are updated to indicate there has been a state change on the issue or merge
request they were waiting on.

## Using it

### How to mark a ticket as waiting on a bug issue or MR

To mark a ticket as waiting on a bug issue or MR, take the following steps:

1. Add the link to the bug issue or MR in the Zendesk ticket field
   `Waiting on issue or merge request`. Make sure to remove any extra parameters
   from the URL (anything after the IID of the issue or MR)
1. Apply the macro `General::Waiting on bug resolution`

Submit the update as `On-hold` (the macro should default it to that for you) and
the process has been initiated.

### How to mark a ticket as waiting on a feature request issue or MR

To mark a ticket as waiting on a feature request issue or MR, take the
following steps:

1. Add the link to the feature request issue or MR in the Zendesk ticket field
   `Waiting on issue or merge request`. Make sure to remove any extra parameters
   from the URL (anything after the IID of the issue or MR)
1. Apply the macro `General::Waiting on feature request resolution`

Submit the update as `On-hold` (the macro should default it to that for you) and
the process has been initiated.

### How to re-initiate the process on a ticket

If you need to restart the process, follow the above instructions for
your type of situation again. The macro and setup will accommodate for
it.

### How to update a parent problem ticket?

A so-called "parent problem ticket" is used for each issue/MR to connect
all regular tickets that are waiting on the same issue/MR together.

Updating the parent problem ticket will result in all the tickets attached to it
(i.e. the other tickets waiting on a bug or feature request issue/MR) to also be
updated. To ensure that works properly, follow these steps:

1. Type out the public comment you wish for all the attached tickets to use
1. Click `Submit as Solved` at the bottom-right of the ticket page
1. Read through the popup modal that appears
1. Click `Solve this ticket and xxx linked incident(s)` to submit the update

### What do I do if I want to stop using this on a ticket already using it?

As this requires a very specific set of steps, please request this be done by
the Support Readiness team by posting in the
[#support_operations](https://gitlab.enterprise.slack.com/archives/C018ZGZAMPD)
Slack channel.

### What do I do if the related issue or MR was marked as a duplicate or moved?

When this happens, you certainly don't want to mass update the customers just to
say the issue/MR was not actually resolved. Instead, we should update the
issue/MR link being used and start monitoring that new one.

As this requires a very specific set of steps, please request this be done by
the Support Readiness team by posting in the
[#support_operations](https://gitlab.enterprise.slack.com/archives/C018ZGZAMPD)
Slack channel.

## Viewing and reporting on this

- [Explore dashboard](https://gitlab.zendesk.com/explore/dashboard/8A40804AF5438788D3839999DC2751523E962D04C5CD07AC4040B4108BB90B4F)

### Where can I view a list of active parent problem tickets?

You can view these via the view `Links to bugs and feature requests` in the
Zendesk instance.

### Where can I view tickets waiting on a bug or feature request?

You can view these via the view `Bug or Feature Request tickets` in the Zendesk
instance.
