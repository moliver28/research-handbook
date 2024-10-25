---
title: "SRE Onboarding Buddies"
---

## Introduction

SRE on-call onboarding buddies play a crucial role in ensuring a positive and effective onboarding experience for new engineers joining the on-call rotation. Being on call can be very stressful, particularly for engineers who are new to the role or unfamiliar with our systems and processes. 
That's why it's essential that all new engineers joining the on-call rotation be assigned a buddy who is ready and willing to assist with the onboarding process. These buddies are experienced on-call engineers who can provide guidance and support and share their invaluable knowledge.

The SRE oncall buddy system is designed to:

- Accelerate the oncall onboarding process for new engineers
- Reduce stress and anxiety associated with oncall responsibilities
- Help new engineers gain confidence in their ability to handle incidents
- Ensure that new team members become self-sufficient oncall engineers more quickly
- Promote knowledge sharing and best practices within the team

By pairing new engineers with experienced buddies, we create a supportive environment that allows for faster learning, better incident response, and a more resilient team overall. This system not only benefits the new engineers but also strengthens our entire oncall process by continuously refining and sharing our collective expertise.

Definitions used in this document:

- **SRE-Buddy**: An experienced oncall engineer who volunteers to mentor and guide new engineers through the oncall onboarding process
- **EOC-Shadow**: A new engineer who is going through the oncall onboarding process under the guidance of a Buddy

## Buddy Responsibilities

The role of a SRE-Buddy is important in helping new engineers become confident and effective oncall responders. Here are the key responsibilities:

- Schedule an initial call with the EOC-Shadow
- Review the oncall runbook project together and explain the general workflow of incident response
- Ensure EOC-Shadow has access to all necessary tools, dashboards, and alerting systems
- Walk through the escalation policy and communication channels used during incidents
- Invite EOC-Shadow into incident Zoom calls during active incidents
- Share personal experiences and lessons learned from past incidents
- Be available as primary respondent during their shadow shifts
- Provide secondary support during EOC-Shadow's first few oncall shifts
- Check in periodically on the progress and offer help

## How Can I Become An Oncall Onboarding Buddy?

The SRE Oncall ıuddy program operates on a volunteer basis, allowing experienced engineers to contribute to the team's growth based on their willingness and capacity. Please make sure to check the [Buddy Responsibilities](#buddy-responsibilities) secton.

If you are willing to become a SRE-Buddy, assign yourself to `@sre-buddies` Slack group. This group receives notifications when EOC-Shadows are looking for buddies. When you find a suitable match, respond to the request and notify both your manager and the EOC-Shadow.

## Workflow

### Being an EOC-Shadow

1. Join the `#sre-shadowing` Slack channel introduce yourself
1. Ping the `@sre-buddies` Slack group in the channel, specify your timezone and availability and clearly state that you're looking for a buddy
1. Once a Buddy is assigned, schedule an initial coffee chat with your new SRE-Buddy. Get to know each other and discuss expectations and suitable schedules for sync calls
1. Join the [SRE Shadow rotation schedule](https://gitlab.pagerduty.com/schedules#PZEBYO0) in PagerDuty and align your shifts with your SRE-Buddy's oncall shifts.
1. Schedule weekly 45-minute calls with your SRE-Buddy. These calls should occur after each oncall weekly shift.
Review and discuss incidents from the past week
1. Begin responding to S3/S4 incidents as primary responder. Your Buddy will provide guidance and support. Document learnings and questions 
1. Continue working through the SRE-oncall onboarding issue, track your progress and completion of required tasks

### Being an SRE-Buddy

1. Join the `sre-buddies` Slack group
1. When a buddy is requested via the Slack group, review if the timezone is suitable and if you have the capacity to be assigned to the EOC-Shadow
1. Organize initial coffee chat with your EOC-Shadow
1. Discuss the time for periodic call after each of your weekly shifts. Review the process for the Shadow to be a primary respondent for S3/S4 incidents. Be available as a secondary respondent for each incident
1. Regularly check onboarding progress and provide additional support when needed
