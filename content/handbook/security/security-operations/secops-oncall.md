---
title: "Security Operations On-Call Guide"
description: " "
weight: 30
controlled_document: true
---

The Security Operations sub-department is collectively responsible for responding to reports of actual or potential security incidents on a 24/7/365 basis.
- The SIRT (Security Incident Response Team) generally responds to reports of suspicious activities (e.g. Phishing, hacking, social engineering) and security alerts.
- The Trust & Safety team generally responds to reports of cryptomining, platform SPAM, abuse, bullying and violations of terms of service.

Prior to scheduling planned time off, Security Operations team members should consult with the team to ensure proper coverage will be available.

Security Operations Managers also share in On-Call responsibilities and need to ensure proper coverage for escalations and emergencies. The Security department maintains a series of On-Call escalations to ensure that every reported incident is responded to in a reasonable timeframe.

On-Call scheduling for SIRT is organized in Pager Duty within the `Security Responder` policy.

On-Call scheduling for Trust & Safety is organized in Pager Duty within the `Trust & Safety Responder` policy.

## On-Call Security Handoffs

### Times

Standard handoff times are as scheduled. However, team members are empowered to agree on a temporary modified handoff schedule as long as all those involved agree and the team is notified about changes.

SIRT (November - April)
- 23:00 to 07:00 UTC –> APAC - 8 hours
- 07:00 to 15:00 UTC –> EMEA - 8 hours
- 15:00 to 23:00 UTC –> AMER - 8 hours

SIRT (April - November)
- 22:00 to 06:00 UTC –> APAC - 8 hours
- 06:00 to 14:00 UTC –> EMEA - 8 hours
- 14:00 to 22:00 UTC –> AMER - 8 hours

SIRT times are reflected in the [SIRT Handoffs](https://calendar.google.com/calendar/u/0?cid=Y18zZDBwampnN3N1bDlib2VrczIxbzRxc2RjNEBncm91cC5jYWxlbmRhci5nb29nbGUuY29t) calendar. In case both parties agree to change the time, this should be reflected in the calendar at least 24 hours prior to the handoff. This allows other team members the ability to adequately plan their schedules the night before. Changing the meeting time counts as a notification.

Trust and Safety
- 23:00 to 07:00 UTC –> APAC - 8 hours
- 07:00 to 15:00 UTC –> EMEA - 8 hours
- 15:00 to 23:00 UTC –> AMER - 8 hours

### SIRT Written Handoff

*Incident issues are the SSoT for any incident. Be sure to include any significant incident updates within the incident summaries.*

SIRT is using the self-developed tool [Handogotchi](https://gitlab.com/gitlab-com/gl-security/security-operations/sirt/tines/-/tree/master/Handogotchi) for written handover summaries. Handogotchi reminds the SIRT engineer on call to update incidents and add additional information one hour before handoff time. It will automatically send links to open incidents half an hour before handoff times.

Written handoffs are required to be completed at least half an hour before the end of every shift and are the basis for warm handoffs.

For all incidents, we highly encourage pausing after no longer than one hour to document and make it a general habit to keep documentation up to date after every work step. For all questions on documentation, please consult the [Incident Report Writing Guide](https://internal.gitlab.com/handbook/security/security_operations/sirt/operations/incident_response/incident_report_writing_guide/)

### SIRT Warm Handoff

SIRT uses warm handoffs to clarify written handoffs and avoid misunderstandings in complex situations. They should take no more than 15 minutes. One person per region is required (outgoing and incomming).

The outgoing region prepares the handoff as described in the section above. The incoming region should familiarize themselves with the written handoff before attending the meeting. *Team members should be prepared for warm handoff meetings, so that the meetings will be efficient, with a focus on open questions and clarifications.*

Because the incidents are well documented, there is no written agenda for warm handoffs. All significant discussion points that come up must be immediately documented and corrected in the incident issue.

Warm handoffs are only required during the week. This is because warm handoffs would otherwise have to be performed at around midnight on weekends for EMEA.

## SIRT On-Call

During all On-Call shifts, the On-Call Engineer is filling the role of the `"Triage Engineer"`.

### Weekday

#### Weekday On-Call Engineer Responsibilities

Security Operations provides weekday On-Call coverage using a follow-the-sun model. Weekday On-Call Security Engineers are the team members that cover the On-Call responsibilities during their region's sunny time.
- A Weekday On-Call shift typically covers one work week, from Monday to Friday.
- The Weekday On-Call Security Engineer is expected to cover the `"Triage Engineer"` role, and should be the first responder to alerts and incidents as they are presented via PagerDuty and via the various Slack and alerting channels.

### Weekend

#### Weekend On-Call Security Responsibilities

The Weekend On-Call Security team member will be responsible for covering On-Call responsibilities from AMER Friday evening until APAC Monday morning according to the established On-Call Security Handoff times.
- The Weekend On-Call Security team member is responsible for timely responding to PagerDuty and the incident response process in accordance with the `"Triage Engineer"` role.
- During the weekend hours, the Weekend On-Call Security team member is not expected to be at their computer working unless they are responding to an incident, triaging alers, or working on a leadership request for critical deliverables. However, they will be asked to acknowledge any Pager Duty incidents via their mobile phone within 15 minutes, and begin triaging the incident within one hour. Priority 3 Severity 3 and below incidents can be handled by the team as weekday tasks.
- The Weekend On-Call is responsible to acknowledge, and triage all alerts once a day. Resulting incidents should be either worked or delegated according to the triage guidelines. See `"Alert Triage"` for details.
- When there is a signficant business need, the Weekend On-Call Security team member may be responsible for ensuring continuity of critical deliverables as determined by leadership. Critical deliverables will generally consist of, but are not limited to: threat hunting and mitigation, bug fixes, cryptomining, customer impacting SPAM, or detection and response engineering to protect against credible threats.

#### Weekend On-Call Security Scheduling

- Weekend On-Call slots will be filled on a volunteer basis, meaning team members can sign up for the slots that would fit their schedules. The SIRT and Trust and Safety teams will have individual Weekend On-Call schedules so that one person from each team will cover the Weekend On-Call shift. General guidance is that team members should volunteer for the appropriate ratio of qualified team members to weekends requiring coverage. For example, in a team of 12 qualified team members, volunteering for 4 to 5 weekends per year, per person would allow for full coverage. Please note, ratios may change from time to time depending on the size of the team.
- If there are open remaining slots, the Security Operations managers will assign slots to team members who have not hit their target amount of slots. For example, if there’s an open slot and a team member that should volunteer for 4 to 5 slots but has signed up for 2, the Manager can allocate the slot to that team member. If the team member is unavailable, they would be responsible for finding a replacement.
- In case of emergencies, managers may seek other volunteers and in rare cases may need to assign coverage.

#### Weekend On-Call Security Relief

- Current On-Call metrics show an average of less than one weekend page per month.
- Because busy On-Call weekends sometimes happen, and because the weekend on-call team member needs to triage alerts, in recognition of weekend coverage, GitLab is proactively asking team members to take the next two business days off following their Weekend On-Call shift as time off in lieu, regardless of whether the team member had to respond to an incident.

When scheduled for the Weekend On-Call Security shift, team members should:
- Submit time off in lieu for the next two business days immediately following their Weekend On-Call shift. Because this time off is intended to provide team members with immediate relief, these days cannot be moved to days later in the week or month, regardless of other planned or unplanned time off.
- If a holiday or Friends and Family day falls on the next business day, time off in lieu can be taken for the subsequent two days.
- Commit to covering the Weekend On-Call shift. Avoid signing up for weekends you are unable to cover, or otherwise have a conflict.
- Find replacement coverage if you cannot commit to covering the entire weekend.

## SIRT On-Call Paging

### On-Call Paging Workflow

The SIRT On-Call paging workflow is currently designed to follow this escalation path:
1. The first page goes to our incident slack channel.
1. All Security Engineers in the sunny region are paged after 5 minutes of no response, with one designated On-Call Security Engineer per region during the week. During the weekend, one person will have volunteered for sole responsibility of weekend coverage. The on-call page will occur either all at once, or in a round-robin fashion. Team members not designated as the On-Call Security Engineer can and should provide assistance if the On-Call Security Engineer misses the page. When weekend assistance is provided, team members should request taking time off in lieu with their manager, and target 1:1 (hour for hour) time off, immediately following the weekend as long as proper coverage is available.
1. The Security Operations manager in the sunny region is paged as a backup if the team members don't acknowledge the pages.
1. Security Managers who volunteer as backups are paged if SIRT does not acknowledge the previous pages.
1. The Security Operations Director is paged if Security Managers don't acknowledge the pages.

### SIRT On-Call Paging Duties

The On-Call Engineer's primary concern is to provide timely and adequate responses to incoming pages. When receiving a page:
1. Acknowledge the alarm in the corresponding alert Slack channel or through PagerDuty directly.
1. Review incident's GitLab issue and follow the checklists posted there for triaging.

If the alarm is not acknowledged, the Security Incident Manager On-Call will be alerted.

Engineers should acknowledge pages within the first 15 minutes, and start performing initial triage of potential incidents within the first hour of the initial page.

### Security Managers On-Call

In addition to the Security Engineers being On-Call, the Security Managers across the GitLab Security Department act as backups in the event the Security Engineers are unable to acknowledge security pages. PagerDuty will automatically engage the Security Manager On-Call if SIRT doesn’t acknowledge the paging attempts.

It's the responsibility of the Security Manager On-Call to:

- Be available via mobile phone during their On-Call shift if the Security Engineer On-Call does not acknowledge a page.
- Attempt to contact the Security Engineer On-Call to acknowledge the page. **Note: If Slack is not available or an alternative means of communication is required, PagerDuty has cell phone numbers of GitLab team members involved in the on-call process. GitLab also sets up a Zoom channel (#Slack Down!) as backup communication channel.**
- If the Security Engineer On-Call is unresponsive, attempt to contact other Engineers to take on the page. Prioritize based on timezone and region.
- In the event of a high-impact security incident to GitLab, the Security Manager On-Call will be engaged to assist with cross-team/department coordination.

## Triage Engineer

During On-Call shifts the Security Engineer On-Call is the Triage DRI and has these core responsibilities:

1. Acknowledge and triage pages; delegate
1. Monitor and triage incidents; delegate
1. Monitor and triage alerts; delegate alerts that are for their own activity; delegate resulting incidents
1. Continue critical assignments as determined by management

Weekday only:
1. Monitor and respond to security related slack channels; delegate
1. Improve on-call and incident handling processes - document on-call related problems and improvement opportunities by opening issues and any necessary support tickets (e.g. Devo support).
1. Continue ongoing work where possible

### Triage Engineer Responsibility to delegate

Delegation allows the team to spread the workload across the global team while maintaining adequate coverage and response times. It also minimizes the risk of one single person having to handle spikes in incident volume.

- On-Call Engineers must delegate incidents to other Engineers after performing initial triage.
- Delegation guidelines:
  - Incidents classified with either S1, P1, S2, or P2 should only be delegated to team members available in the current sunny region.
  - All other incidents can be assigned to any team member not out of office in any region.
- Sometimes, team members are working on a high-priority, time sensitive assignment and are temporarily unavailable for delegation. These situations should be communicated to the team transparently. If those team members inadvertently receive delegated incidents, they should work with their manager for assistance in incident reassignment.
- The On-Call Engineer is the last resort if no other team member is available to work on high-urgency incidents.

### Triage Process

#### Incident Triage

Incidents are triaged by following the checklist posted by the TriageBot.

#### Alert Triage

Alert triage is a continuous task on weekdays and a task that should be done at least once a day on weekends.

Any alert can be converted to an incident and assigned to another team member following the triage delegation guidelines above.

## Incident Ownership

Whoever is assigned to the incident after the initial triage is the person responsible for incident resolution. Use the assignee field in the GitLab incident to identify the responsible person. In case of a priority 1 incident, it should have one assignee per region. In these cases, the work should continue around the globe until the incident is contained and the priority lowered. In that case, the incident should go back to only having one assignee and DRI. When multiple people work on one incident, work is divided into tasks with their corresponding assignees.

Ownership of an incident means being the person responsible for:

- Ensuring continued progression to a contained and resolved state
- Maintaining ongoing 24/7 coverage of high-severity incidents
- Accurate and timely issue tracking and communication with stakeholders
- Adequate documentation and communications

Being the responsible person does not imply being the sole person to perform incident tasks. Team members from all departments can be called upon to assist in incident resolution, and these requests should be documented as a task or related issue.

## Exceptions

Exceptions to this procedure will be tracked as per the [Information Security Policy Exception Management Process]({{< ref "_index.md#information-security-policy-exception-management-process" >}}).

## References

- Parent Policy: [Information Security Policy]({{< ref "_index.md" >}})
