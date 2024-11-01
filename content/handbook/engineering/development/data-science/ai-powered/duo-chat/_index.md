---
title: Duo Chat Group
description: "The Duo Chat group is focused on developing GitLab Duo Chat capabilities, while supporting other product groups and the wider community in integrating more functionality."
---

## Vision

The Duo Chat group is focused on developing GitLab Duo Chat capabilities, while supporting other product groups and the wider community in integrating more functionality.

### 🚀 Team Members

**Engineering Manager & Engineers**

{{< team-by-manager-slug "juan-silva" >}}

**Product, Design & Quality**

{{% stable-counterparts manager-role="Engineering Manager(.*)Duo Chat" role="Duo Chat" %}}

## 📚 Internal Processes

### UX Reviews

- Since Duo Chat doesn't have a dedicated UX person, the UX experts from the AI Framework team will assist with our UX reviews.
- It's encouraged to include a clear screencast with each MR. Reviewers should try to reproduce changes locally or, if that's not feasible, schedule a sync-up to collaborate effectively.
- UX reviews will be aimed for every user-facing MR, as long as capacities allow. Availability will be communicated on the MR itself if there are any changes.

### Planning Process

This flowchart describes the planning process for the Duo Chat team:

![Duo Chat Planning Flowchart](/images/duo_chat_planning_flowchart.png)

The top part of the chart is what we do prior to the formal milestone planning. Those pre-planning activities should happen in an ongoing continuous manner over time as new issues are created.

The bottom part of the diagram depicts what happens in the first two weeks of the calendar month, when we formally add issues for the milestone, assess the overall load and commit to the deliverables.

For the **planning breakdown** step, here are the questions that engineers should be able to answer before assigning a weight:

- Are the requirements clear, concrete and I fully understand what is expected to be delivered?
- Are the requirements comprehensive and cover some of the less obvious paths of execution? (i.e. those our of the "happy path" like edge cases, packaging, and error handling).
- Are considerations around non-functional requirements accounted for? i.e. Scalability, accessibility, compliance, security, instrumentation etc.
- Is the requirement around quality expectation and/or level of testing/evaluation clear and understood?
- Can I see a path to technical implementation that allows me to provide a reasonable estimation for the issue? i.e. are all technical unknowns resolved or manageable without any additional technical research spikes?

If the answer to any of these questions is 'no', then the issue should be moved back to `~workflow::refinement`.

### Issue Estimation

This system should be used when estimating tasks, *inspired* by the Foundations team's [weighting system](/handbook/engineering/development/dev/manage/foundations/#how-we-weight-issues).

- **0 - Little to no effort is required** Something that would be quicker to do than it was to create the issue.
- **1 - Extra small**  The engineers feel they understand most requirements and consider it relatively easy, probably the smallest item in the milestone and mostly likely completed in one day.
- **2 - Small** A little bit of thought, effort, or problem-solving is required, but the engineers have confidence in the requirements.
- **3 - Average**  Engineers have done this a lot; they know what needs to be done. There may be a few extra steps, but that's it.
- **5 - Large**  This is complex work, or the engineers don't do this very often. Most engineers will need assistance from someone else on the team. This is probably one of the largest items that can be completed within a milestone.
- **8 - Extra large** This is going to take some time and research and probably more than one engineer to complete within the milestone. At this size, we should be looking at how we can split this into smaller issues/tasks.
- **13+ - Too large** This issue is far too complex, large, or under-defined. Anything with a weight of this size should go back to `~workflow::refinement` to be refined and split into more manageable chunks.

## Troubleshooting Duo Chat

You can find a comprehensive runbook for troubleshooting Duo Chat issues in our [Duo Chat Runbook Page](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/duo-chat/README.md?ref_type=heads). 

If you notice any gaps, please feel free to reach out to the Duo Chat group or make an MR with your changes to the runbook.

## 🔗 Other Useful Links

### 📝 Dashboards (internal only)

- [Duo Chat xAU, retention, event count, and response time](https://10az.online.tableau.com/#/site/gitlab/views/AiFeatures/Focusview?:iid=3) (see also sister dashboards, e.g. Duo Chat CRM)
- [Slash command usage and user counts](https://10az.online.tableau.com/#/site/gitlab/views/SlashUseDuo/SlashUseDashboard/3e8fd0ba-f45b-4dd0-b649-84db3636553d/8db30355-e2c0-4636-9c43-5429bb952a41?:iid=4)
- [Duo Chat Error Rate in Elastic](https://log.gprd.gitlab.net/app/dashboards#/view/5f334d60-cfd7-11ee-bc6b-0b206b291ea1?_g=(refreshInterval:(pause:!t,value:60000),time:(from:now-2d,to:now)))
- [Duo Chat Error Budget in Grafana](https://dashboards.gitlab.net/d/stage-groups-detail-duo_chat/6c28d63a-60e8-5db3-9797-39f988a1900b?orgId=1)
- [Duo Feedback](https://10az.online.tableau.com/#/site/gitlab/views/DuoFeedbackDashboard/DuoFeedbackDashboard?:iid=1)
- [Duo Chat Question Categorization](https://10az.online.tableau.com/#/site/gitlab/views/DuoCategoriesofQuestions/DuoCategory?:iid=1)
- [Chat QA Evaluation](https://gitlab.com/gitlab-org/ai-powered/ai-framework/qa-evaluation)
