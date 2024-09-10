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

## How to Ask for Support From Duo Chat

Like with any other GitLab feature, the first line of support should be the GitLab support team and the engineer assigned to the Zendesk ticket. However, at times more expertise is required to resolve the customer concern and a Duo Chat engineer needs to be involved. This section outlines the process and expectations when requesting support from the team for customer support issues related to Duo Chat.

### Before requesting help

Before reaching out for support, please first consider whether your inquiry is related to how Duo Chat works and the supported capabilities and/or requirements. That being the case, please review Duo Chat's [documentation](https://docs.gitlab.com/ee/user/gitlab_duo_chat/).

If you have specific error codes reported by the user you may also review the [troubleshooting page](https://docs.gitlab.com/ee/user/gitlab_duo_chat/troubleshooting.html).

If you are a Support Engineer looking to investigate a problem reported by a customer, please go over the [Duo Chat Runbook](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/duo-chat/README.md?ref_type=heads) before reaching out to the development team. This will ensure the Duo Chat engineer can support you better once you do reach out for help.

### Asking a general question
If you have a general question for which you can't find your answer, then feel free to ask your question in the *#g_duo_chat* channel on Slack. In this channel, there are numerous stakeholders with an ample breadth of knowledge about Duo Chat's usage and capabilities. 

Duo Chat engineers monitor this channel regularly to offer support. Please keep in mind that engineers will do their best to support you and answer your questions from the top of their heads. However, if they need to do more research or address more complicated scenarios, it will be necessary to create a Duo Chat Support Issue (see next section).

### Submitting a bug

Consider if your request actually pertains to a software bug. A bug is a gap in the functionality that Duo Chat supports and that should be addressed to make the user experience complete as per the functional specifications. In this case, instead of creating support issues, please create an issue of type ‘bug’. Provide all the details for reproducing the problem and assign the group label to Duo Chat. You may ping the EM and PM for triage. Triaged bugs will be assigned to corresponding future iterations for resolution depending on their severity and other priorities of the team. 

### Create a support request issue

We like to use Issues when customers and their proxies need help from the Duo Chat Team which requires more than answering a simple question. This helps us prioritize work and make sure that we don't lose history and maintain context when the Slack retention policy expires. These requests are created in the [Duo Chat Support project](https://gitlab.com/gitlab-org/ai-powered/duo-chat/support).

Duo Chat engineers can assist with the creation of the issue by leveraging Slack workflow automation. Once a Slack thread is deemed a Support Issue (i.e. not just a general question), the engineer will suggest moving the conversation to a support request and create a draft of the issue out of the Slack thread. The individual requesting help can then add more details like Zendesk links, log files, and any other supporting evidence of the problem or question at hand. 

Alternatively, if you know that you have a complex request, you may want to save time by opening the issue directly and then ping the team in Slack with the link.
You may assign a priority label to your request. A Duo Chat team member or the PM will review this priority assignment during the triage of the issue. Please use the table below as a reference of priority levels and expected response times.

| Priority | Typically used for | Expected first response time |
|----------|--------------------|------------------------------|
| P4 | General questions that can't be easily answered on Slack by Duo Chat engineers off the top of their heads and will require a bit more investigation. Customer problems that are not urgent (i.e. they have an easy workaround, they are very niche or are experienced intermittently) | Within 1 week |
| P3 | Customer problems that are not widespread, but that have been escalated (i.e. key customer or tied to a significant business opportunity) | Within 72 hours |
| P2 | Customer problems that are time-sensitive, don’t have a workaround and are persistent. Plus, the problem is significantly blocking decisions or progress to be made on the customer side. | Within 36 hours |
| P1 | Duo Chat outages (SaaS or SM) | ASAP |


\* Support Response times are based on team member availability during weekdays (excluding holidays) within regular business hours in the time zones where team members are located (AMER, EMEA and APAC). Outages and other urgent matters outside regular ream member availability should be channelled through GitLab's [incident management](https://handbook.gitlab.com/handbook/engineering/infrastructure/incident-management/) processes.

### Support Engineer Pairing

While Duo Chat engineers are uniquely positioned to effectively address some of the more complex customer support issues, it is important to have GitLab support engineers involved in every request. This will help them get acquainted with these types of problems and provide them with a learning opportunity on how to debug and resolve them. 

To this end, support engineers should be assigned to Duo Chat support issues. They are expected to follow along and collaborate with Duo Chat engineers to get to a resolution. Support Engineers' involvement can also be very valuable in providing the necessary context of the customer and handling status updates and communications with the customer stakeholders. 

## 🔗 Other Useful Links

### 📝 Dashboards (internal only)

- [Duo Chat Question Categorization](https://10az.online.tableau.com/#/site/gitlab/views/DuoCategoriesofQuestions/DuoCategory?:iid=1)
- [Chat QA Evaluation](https://gitlab.com/gitlab-org/ai-powered/ai-framework/qa-evaluation)
