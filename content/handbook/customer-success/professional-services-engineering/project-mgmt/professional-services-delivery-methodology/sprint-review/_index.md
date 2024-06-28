---
title: "Sprint Review"
description: "Learn about how to conduct sprint reviews."
---

In an agile, iterative, process Sprint Review Meetings are review meetings in which the Program Manager / Project Manager presents the progress that has been made in the current sprint.

These meetings occur at the end of every sprint, allowing the Program Manager / Project Manager to formally accept the Engagement Increment – or not – based on the agreed upon Definition of Done (DoD).

Sprint Review Meetings represent an opportunity for stakeholders or other interested parties to observe the "real thing".

## Inputs

* [Definition of Done (DoD)](../definition-of-done/_index.md)
* Sprint Goal, as expressed in a [ready](../definition-of-ready/_index.md) set of distinct [user stories](../good-user-stories/_index.md) agreed upon in the Sprint Planning Meeting

## Outputs

* Shippable / deployable Product Increment

## Simple Rules

1. The Program Manager / Project Manager presents:

* The sprint goal, as agreed upon during the Sprint Planning Meeting
* What the Development Team accomplished during the sprint, based on the agreed upon Definition of Done (DoD)

1. Development Team demonstrates the working Product Increment:

* Only User Stories that the Product Owner has approved are considered done
* Within the context of a single sprint, a Product Increment is a work product that has been done and is deemed "shippable" or "deployable" – meaning it is _developed, tested, integrated, documented –_ as agreed upon in the Definition of Done (DoD)

1. The Sprint Review Meeting is time-boxed to 1 hour per week of sprint duration

1.     This is an Informal meeting – it is not a corporate show and dance! It requires only minimal preparation time and demonstrates real, life, functionality (_no Google slides, mock ups, or rigged demos_). This informality is an important point, as you do not want Development Team members to spend hours or days preparing a corporate level presentation

1.     The main purpose of this meeting is to show the **reality and current state** of the development effort at the end of the sprint

1.     A Product Increment may, or may not, be released externally depending on the Release Plan

## Common Challenges and How to Deal with Them

## The Program Manager / Project Manager is surprised about the State of the Product Increment

Program Manager / Project Manager are supposed to be dedicated to the Engagement Team and interact with the team on a daily basis. Participation in Daily Scrum Meetings is mandatory for the Program Manager / Project Manager, and those daily meetings usually expose any potential surprises. If that is the case, the Program Manager / Project Manager knows exactly where the sprint stands in terms of the Engagement Increment functionality.

However, the reality is that many Program Manager / Project Manager are allocated to multiple projects, and as such often do not have the bandwidth to participate in all PSDM events and meetings, and consequently are sometimes "out of the loop" on the latest coding challenges. This can lead to the Program Manager / Project Manager being surprised as to what functionality was finished or not while participating in the Sprint Review Meeting.

In order to remedy this, make sure that:

1. The Program Manager / Project Manager is dedicated to a number of projects that is manageable - having a Program Manager / Project Manager assigned to 10 projects is a sure fire way to lose visibility

1. The Program Manager / Project Manager attends all necessary Agile / Scrum coordination meetings (Sprint Planning, Daily Scrum / Standup, Sprint Review, and Sprint Retrospective)

1. Functionality is developed throughout the sprint, avoiding a big wave of code to be finalized a day before the Sprint Review – and produce engagement slips

1. The Scrum Board is updated with the latest information; it is a good practice to start off the Sprint Review Meeting with a quick review of the Scrum Board – if functionality is not working, it is not considered done

## There is nothing to Demo

Depending on the development effort, teams sometimes struggle with Engagement Increments that cannot demonstrate functionality visually.

Good examples are the development of a backend, server side, API code that produces a cryptic output. How do you show your progress?

There are several things you can do to visualize progress:

1. Utilize tools / visualization aids that you already use in your development effort – for example, if you are developing an API, you can use mockups and unit test frameworks to demonstrate functionality

1. Make cryptic results and complex input data more easily understandable – for example, if you have a complex migration that produces a result based on several waves being executed, use some kind of visualization, like Google Sheets Pivot Charts, to summarize the data while demonstrating the functionality

1. Talk people through the less visually exciting parts of the functionality – not ideal, but sometimes the best you can do talk the audience through the functionality when visually it does not dazzle

Utilize as many existing tools and validation processes as you can in order to avoid adding additional "visualization tasks" to your already busy delivery schedule.

## The Engagement Increment Crashes and Burns

This should never happen, but sometimes it does!

If, for whatever reason, a late breaking change introduces instability, it is better to cancel or reschedule the Sprint Review Meeting.

The reasons for the latter is simple:

1. in order to not waste other peoples' time, and
2. to avoid creating a bad impression.

It is better to say "It's not working yet, we have to reschedule" than to sit in a meeting and say "Oops, I don't know why that's not working…"

As a matter of process, the Engagement Team and the Product Owner should test drive the Product Increment before showing it during the Sprint Review Meeting.

A general guideline that I usually follow is to finish up all development, testing, integration, and documentation activities the day before the scheduled Sprint Review Meeting, so to give the team enough time to make sure everything is in good order.

## The Sprint Review turns into a Political Showdown

Beware of stakeholders and other influencers in your organization using the Sprint Review Meeting as a battleground for a political showdown. Beware of terminology and process differences between GitLab and our customers' organization.

Good Program Managers and Project Managers know how to effectively navigate a situation like this, and make sure everybody knows the rules. Ideally, both the Program Manager / Project Manager talked to all stakeholders and influencers beforehand to set expectations.

It is important to make sure that stakeholders attending the Sprint Review Meeting understand that they can listen and observe, but they cannot abuse the meeting to carry out political hit jobs on the project. The Development Team should not get exposed to whatever political / strategic / budgetary disagreements there are brewing behind the scenes, as it causes the technical staff to get disillusioned and question the leadership.

The key point to remember here is that the Sprint Review Meeting is intended to provide a clear and unvarnished view of the "As Is" state of the current Product Increment. It is focused on the sprint deliverable. And, in the spirit of complete transparency and open communication, the Sprint Review Meeting might expose shortcomings or problems – that is its intent.

The focus of the Sprint Review Meeting is just that – to review the sprint and the associated deliverables, the Product Increment. The meeting is not intended as a project review meeting or a phase gate checkpoint meeting common in waterfall / PMBOK processes.
