---
title: OOO Ticket Management
category: Handling tickets
description: How to manage assigned tickets when going on scheduled PTO
---

## Overview

These workflows discuss how support engineers can asynchronously manage and summarize on-going assigned tickets within Zendesk before they go on PTO.

### Using the OOO Ticket Summary macro

As part of this workflow, the Support Engineer going on leave will leave notes on currently Open, Pending and On-Hold tickets with a macro. This macro will provide a summary of the ticket, add the Support Engineer to the ticket's CC list, and adds the `ooo_summary` tag to the ticket.

It is recommended to follow this workflow if 3 days or more of PTO are planned.

#### Workflow

Go to the [My Assigned Tickets](https://gitlab.zendesk.com/agent/filters/360062369834) view in Zendesk. For each ticket you wish to summarize because you anticipate on-going work will be required, do the following:

1. Use the [OOO Ticket Summary](https://gitlab.com/search?search=360080271299&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar) macro.
1. Fill in the sections of the internal note with details for your peers. It is important that you summarize:
   1. What is the problem to be solved?
   1. What information has been collected?
   1. What actions have been taken?
   1. What progress has been made?
   1. What are the potential next steps? Alternatively, clarify if you are uncertain what the next steps are.

Feel free to also ask regional peers if they can pickup tickets in [other forms of communication](/handbook/communication/#multimodal-communication), such as Slack, but Zendesk should remain as the single source of truth for tickets that need attention from other team members.

#### Finding your tickets upon your return

After coming back from PTO, if you want to find the tickets that others picked
up from you, start with this search in Zendesk:
`tags:ooo_summary cc:me updated>2021-09-01`. Replace `2021-09-01` with the date
of the last day you worked before going on leave. This may not be 100% accurate
as someone else may have run the `OOO Ticket Summary` macro on a ticket on which
you happened to be CCed, but it will help you to filter out most tickets.

### Using a dedicated Slack channel

As part of this workflow, the Support Enginner going on leave creates a dedicated Slack channel. Within this channel, a thread is created for each ticket that
contains notes on all currently Open, Pending and On-Hold tickets. The Support Engineer is then responsible for pinging other Engineers that
would be suitable candidates for reassigment.

This has the advantage for faciliating collaboration that would otherwise clutter up the other main Support Slack channels. It also ensures that tickets
are not left in limbo as other Support Engineers are actively being pinged as part of the workflow. 

It is recommended to follow this workflow if 5 days or more of PTO are planned, and you have more than 10 tickets to handover.

#### Workflow

Before beginning, create a new public Slack channel eg. `anton-ooo-ticket-handovers`.

Go to the [My Assigned Tickets](https://gitlab.zendesk.com/agent/filters/360062369834) view in Zendesk. For each ticket you wish to summarize because you anticipate on-going work will be required, do the following:

1. In your Slack channel, create a separate thread for each ticket.
1. Within each thread, write up a summary that includes the following:
   1. What is the problem to be solved?
   1. What information has been collected?
   1. What actions have been taken?
   1. What progress has been made?
   1. What are the potential next steps? Alternatively, clarify if you are uncertain what the next steps are.
1. For each thread, consider who are great candidates for handing over your tickets to and ping them in the respective thread. Ask them if they can take assignment of your ticket. Consider the following when selecting candidates to ping:
    - Have you paired with this Support Engineer on the ticket previously?
    - Is this ticket a follow up of another ticket? Who was the previous assignee?
    - Does the customer in question have an Assigned Support Engineer?
    - Is there a [subject matter expert](https://gitlab-support-readiness.gitlab.io/support-team/skills-by-subject.html) for the topic in the ticket?
    - Is there a [support stable counterpart](../support-stable-counterparts.md) for the topic in the ticket?
    - To your knowledge, is there another Support Engineer that has a close working relationship with the customer?
    - Do you have any insights on whether another Support Engineer might be interested on the topic of the ticket?
1. Answer any questions that your candidates ask:
    - If a quick pairing or handover call is needed, ensure this is arranged.
    - Once a candidate agrees to take assignment of the ticket, mark the thread with a ✅.
    - The new assignee is then responsible for taking any comments in the thread and adding an internal note in Zendesk.
1. Once all tickets have been handed over, enjoy your PTO!

#### When you're back from PTO

After coming back from PTO:

1. Refer to your handover Slack channel if you wish to follow up on your previously handed off tickets.
1. Archive the Slack channel
