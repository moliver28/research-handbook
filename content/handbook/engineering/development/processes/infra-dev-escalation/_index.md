---
aliases: /handbook/engineering/development/processes/Infra-Dev-Escalation
title: General Information of Development Escalation Process
---







## About This Page

This page outlines the background, goals, success criteria, and implementation detail of infrastructure escalation process and Q&A.


## Background

Historically there have been challenges in consistently maintaining our service level for GitLab.com customers. See the impacts in this [GitLab.com performance degradation summary document](https://docs.google.com/document/d/1GfwzPc1uavB5ZuiA9O8l5sUD7Sq2l2BlwevM5AvOtZA/edit).

This issue is not unique to GitLab when business grows fast and the user base and workload on the hosted SaaS increases exponentially. As a result, the business growth requires corresponding changes in how we work so that customers continue experiencing best service by GitLab, which maintains and boosts our business growth momentum.

With that being said and the operation incidents recently, it becomes clear that we’ll strengthen development team’s DevOps practices and stand side by side with the Infrastructure team to keep GitLab.com running smoothly.

## Process

To resolve GitLab.com issues faster, the development team will establish an on-call rotation and stand behind the products we deliver. During weekdays we are running a pilot in Sep/Oct of 2020 whereby an engineer in a Slack channel will be notified when they are online (in least recently escalated to order).  During weekends (when most are not online) a spreadsheet will be used for escalation, with time slots required to be filled to ensure we have coverage.  During the pilot program the spreadsheet will be used as a backup.

Note that the Infrastructure team keeps playing the first defense role on the frontline as usual, while they will determine if a development escalation will be initiated to get the operational issues resolved faster and more efficiently.

This new process will need development engineers on-call based on a rotation schedule. For more details, please refer to the [**full description of on-call process**](./process.html).


## Goals
The on-call process was designed with the following goals in mind -
  * Clear expectations, responsibility, and accountability.
  * Full 24x7 coverage to shadow the Infrastructure team.
  * Layered escalations to ensure SLO.
  * Balanced on-duty hours of each engineer per day.
  * Any individual minimally loaded throughout a calendar year.
  * Flexibility of just-in-time adjustments.
  * Leaving engineers in control of their own working schedules

## Success Criteria
  * Meet development’s SLO of timely response to infrastructure escalations.
  * No on-call engineer is burned out.
  * Planned development work is minimally impacted.

## Implementation
Refer to the Process section above for how to get started and keep running. In the spirit of iteration, the process will be continuously tuned and improved as we learn through practice.

An async retro issue will be registered and every participant is encouraged to enter feedback in the issue any time. A review will be held at 3-month checkpoint then determine next steps.

## Appreciation

We want to be sure to show our appreciation for those who take support rotations, especially on the weekends. Every quarter, engineering directors and managers are encouraged to write a thank you message to all who did weekend support rotations (naming each person and how many rotations they did) in the previous quarter in the `#Thanks` Slack channel.  They are also encouraged to `@` mention their managers, so they are also aware.

The reasons for doing this:
* It is not readily apparent how many weekend support rotations are taken by each engineer unless reviewed over a long time period.
* It is easy to forget to periodically do this over a long time-period unless it is part of a documented process.
* Doing this manually vs. via automation makes it more personalized and shows genuine appreciation.

## Q&A
**Q: Why do we need development engineers on-call?**

**A:** In the investigation of recent performance degradation incident, it became apparent that deeper product knowledge is necessary to root cause the issue and develop sound solutions. Although infrastructure engineers are good at dealing with most incidents, it is the development engineers who are able to suggest the best short term workaround or temporary fix quickly when the issue involves deep insight into the implementation details.

**Q: What efforts have been made to keep the impacts to work-life-balance minimal?**

**A:** No engineer will be asked to work more hours than they currently work. Most of the hours they spend on-call will be days and times they would normally be working anyway. We need approximately 25% of on-call time to be used on days people wouldn't ordinarily be working, but by letting engineers choose when they do so, and not increasing total working hours, the impact of this is hopefully minimized. Engineers can also find substitutes in case of personal emergency.

**Q: Can we make scheduling “smart” and dynamically page the engineer who’s in regular working hours?**

**A:** Yes. During regular weekdays we use [Pagerslack](https://gitlab.com/jameslopez/pagerslack) to  page engineers based on who is online in Slack.  During the weekends/holidays we still need the spreadsheet as most do not regularly work on the weekends.

**Q: Can we make it volunteer based?**

**A:** In theory, yes. However, there are a few things to keep in mind.
  * What if a majority of volunteers are concentrated in nearby time zones?
  * If ALL volunteers are called upfront, what if this ends up with a very small group?
  * If volunteers are called dynamically e.g. before next rotation or month, there is ongoing administrative overhead and things can fall into cracks easily. What if no volunteer for a specific week? What if it ends up with always the same small group of people?

For weekends and holidays, we currently use a volunteer first model, and unfilled shifts are assigned. We encourage engineers to volunteer for shifts so they have more control over their schedule.

**Q: What if the paged engineer doesn’t carry domain expertise?**

**A:** A layered escalation process was laid out in the process. It is also stated that first response doesn’t mean solution is available right away.

An alternative was reviewed, e.g. having domain experts on-call in a similar way. This will involve more engineers and smaller on-call divisions, which will result in a more frequent shift and more on-call duties per engineer. The tradeoff was made in favor of minimizing on-call duties.

**Q: Is this intended to be for both Backend Engineers and Frontend Engineers?**

**A:** Given the fact that most of the recent issues require backend knowledge, only Backend Engineers will be involved in the first iteration. Long term, Frontend Engineers may get involved after the process is tuned and issue pattern is well understood.

**Q: Why are engineers outside of the Development Department excluded from the rotation?**

**A:** The rotation is intended to provide access to engineers that are directly involved with product development to stand behind the products that we deliver.
Engineers in other departments have different responsibilities. For example, those in Infrastructure must focus on the scaling and reliability aspects of
GitLab.com, since part of their job description is to work towards achieving GitLab.com SLOs. And those in Engineering Productivity are focused on providing
tooling, and this is somewhat removed from product development.

**Q: How do we answer interview candidates when they ask about on-call?**

**A:** Let’s describe the full picture of our incident handling model and tell candidates there are chances development engineers will be on-call and assist resolving GitLab.com operational incidents.
Usually, the infrastructure team plays the first defense role on the frontline. Development engineers will only be called when the infrastructure team determines that development escalation is necessary.

**Q: Will our job description be updated?**

**A:** The engineering leadership team will work with the talent acquisition team on this. Should there be any changes to job descriptions, all interviewers will be informed.

**Q: What if my local law restricts or prohibits on-call duty?**

**A:** All are encouraged to share their local law and regulation information with their manager and will not be scheduled until further clarification is obtained should there be any concern or ambiguity of the local law and regulation. Engineering leadership team will also work with Legal and PeopleOps to obtain clarification with regard to this. We maintain a list of rules in a [Google Doc](https://drive.google.com/drive/search?q=%22Additional%20Notes%20for%20Weekend%20Shifts%22).

**Q: Did we consider using PagerDuty?**

**A:** Yes, we did. It was decided to keep it lightweight with Slack in the first round experiment, because there is work to enhance the chatops bot.

**Q: What are the expectations for my existing work while I’m on-call?**

**A:** While on-call the expectation of existing work is that it is effectively suspended.  Managers are required to plan for on-call engineers to be unavailable.  If you are able to make progress because there are no ongoing incidents that is welcomed, but work must stop if an on-call request is made.

**Q: What is the expectation for escalations which are still open at the boundaries of an on-call shift?**

**A:** Similar to bullet 7 under Guidelines section - Relay Handover, summarize the status and investigations by far, then handover.

**Q: Can Slack only be configured to trigger notification from #infra-escalation out-of-hours, especially during hours of 0400-0700 (APAC) ? I already receive lots of pings out-of-hours but this don’t wake me up currently as I have Do-not-disturb turned on.**

**A:** It seems notifications can be customized on mobile app, check out [this guide](https://docs.google.com/document/d/1ZxfGZFTrCo4QRCyI-JXLrRFpk6MCxTpSWk2hJeKKyf4/edit?usp=sharing) (Android device)

Mute all other channels but the escalation channel during a specific time period (i.e. 4-8am) through the Channel-specific notifications setting on Notifications screen, which may help reduce noise and only get pinged for escalations.

**Q: Is there any concept of compensation? This can be in any form (pay, time off, etc)**

**A:** On-call work can be considered a deliverable like any other. It doesn't imply working any **extra** hours - but a few hours will be at less desirable times than now. Although no compensation changes are anticipated to account for this, we may consider discretionary rewards for people who exceed expectations when choosing less-desirable hours.

**Q: How will the volume of escalations to the on-call engineer be measured? Have we established thresholds to know when a working group may need to be established to remediate a “hot” set of issues?**

**A:** Let’s start with hand counting and review the volume at the Infra/Dev meeting.  This can also be added to the board.

**Q: We are discussing the concept of working hours for new-on-call and having expected shifts, however, this is a departure from non-on-call based on this in the handbook. /handbook/values/#measure-results-not-hours Is this an intentional policy shift?**

**A:** This is not a shift in policy. Engineers are still in control of their schedules, and can choose when to work, as long as the overall goal of full coverage of the rotation is met. The policy of results vs. hours is based on delivering functionality.  On call is about addressing operational issues which can happen at any time and need to be addressed immediately.  So the policies are congruent.

**Q: In order to effectively debug production issues, developers may require expanded access to production systems and metrics. Is the plan for developers to be on-call solely for consultative purposes without need for direct debugging of systems? If they need access to production systems how will they be onboarded?**

**A:** For the first iteration, the plan is consultative and if any code changes are required the oncall makes them.  Direct debugging is not required and it is expected infrastructure can relate production issues effectively to the oncall for progress to be made.  We are not planning onboarding to production at this time.

**Q: If we had this process in place for recent outages, would it have resolved them significantly faster? i.e. is the gap to find an engineer to support currently our biggest problem?**

**A:**	If you look at the chart of outages as part of the Performance degradation (see above link), you will see outages on the June 5th, July 1st, 3rd.  Had we caught the issues and worked to address them on June 5th we could have prevented July 1st degradation.  July 3rd is half degradation, half attack.  So we would have minimized some level of impact here as well.  The time associated with this degradations is also high (540 minutes for July 1st) and we could have reduced that time as well.

**Q: Isn’t this more about discipline of seeing incidents through to resolution, not just how quickly we respond to them? It feels the on-call process addresses the latter, but not former.**

**A:** It’s actually both and we are working to address both.  We have also added a Infra/Dev issue board to track concerns to see through to resolution and make sure we have the right priority and severity on them.  It’s likely that oncall escalations will end up with follow on items for [this board](https://gitlab.com/groups/gitlab-org/-/boards/1193197?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=gitlab.com&label_name[]=infradev). [This page](/handbook/engineering/development/#continuous-delivery-and-infrastructure-collaboration) gives the description.

**Q: How should the infrastructure member make international phone calls to page engineers?**

**A:** Zoom supports making international calls [with low rates](https://zoom.us/zoomconference/rates). This can be done from inside an ongoing Zoom call under `Invite > Phone`. Considering that this will only be used for a quick phone call, to alert the engineer of an ongiong escalation, the cost for GitLab will be very minimal.
