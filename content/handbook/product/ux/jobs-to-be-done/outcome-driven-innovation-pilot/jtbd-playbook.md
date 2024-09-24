---
title: The GitLab JTBD Playbook
description: >- 
  The JTBD playbook is a comprehensive, step-by-step guide to help teams effectively apply the JTBD framework. It guides you from initial assumptions to prioritized user desired outcomes, providing a solid foundation and collaborative research tools.
---

>⚠️ **This framework is undergoing evaluation in a [pilot program](https://gitlab.com/gitlab-org/gitlab/-/iss️ues/477045)** ⚠️ 

The playbook will ensure you tackle the right problems at the right time by focusing on the critical question: **What outcomes are you trying to influence?**.

If this is your first time using the playbook, it's recommended to review the [JTBD Topics & Definitions]<!--(/handbook/product/ux/jobs-to-be-done/outcome-driven-innovation-pilot/topics-and-definitions/)--> page before getting started. Having a solid understanding of JTBD principles is extremely beneficial before you begin developing your [Domain's]<!-- (/handbook/product/ux/jobs-to-be-done/outcome-driven-innovation-pilot/topics-and-definitions/#domain) --> [Jobs]<!-- (/handbook/product/ux/jobs-to-be-done/outcome-driven-innovation-pilot/topics-and-definitions/#job-types) -->.

#### A Note on Time, Confidence, and Validation

The time required to complete this playbook will vary depending on factors such as the complexity of the Job, the team's experience, and the breadth of the domain, each influencing the number of Jobs being evaluated. On average, expect to dedicate at least three months to thoroughly cover the [Main Jobs]<!-- (/handbook/product/ux/jobs-to-be-done/outcome-driven-innovation-pilot/topics-and-definitions/#main-jobs)--> and related [Consumption Chain Jobs]<!--(/handbook/product/ux/jobs-to-be-done/outcome-driven-innovation-pilot/topics-and-definitions/#consumption-chain-jobs)--> for all primary [Job Performers]<!--(/handbook/product/ux/jobs-to-be-done/outcome-driven-innovation-pilot/topics-and-definitions/#job-performers)-->.

While this may seem like a significant investment of time, the insights gained from this research will save substantial time in the long run. With clearer problem validation and strategic focus, you'll reduce the need for repetitive research and have a precise understanding of where to prioritize efforts, ensuring you're working on what truly matters.

To ensure confidence in your final results, it is crucial that your deliverables are based on interviews with Job Performers.

## Getting Started

1. Create an issue in the [UX Research Project](https://gitlab.com/gitlab-org/ux-research/-/issues) and use the **[discover-jtbd](https://gitlab.com/gitlab-org/ux-research/-/blob/master/.gitlab/issue_templates/discover-jtbd.md)** issue template.
1. Create a copy of the [JTBD Canvas FigJam Template](https://www.figma.com/file/Z4lsAOLH1ANN3pstQFYgSk/Jobs-to-be-done----Playbook-Template?type=whiteboard&node-id=0%3A1&t=oMR9VPNke7aIfCoU-1). Use this template to collaborate with your team as you work through the playbook, uncovering what you know (or think you know) about your domain's Job Performers. Expect it to serve as your single source of truth as you align with your team on all aspects of your product, users, their goals, and their needs.

### Getting help

If you need help at any point when working through the playbook, start by posting in #jtbd or reaching out to your manager.

## Define Job Performers and Their Jobs

The first step in the JTBD process is to identify who your users are and what their objectives are within your product space. This foundation ensures you and your team are on the same page as to who you're building your product for and will help ensure success as you proceed through this playbook.

**Benefits:** By completing this step, you'll gain a clear understanding of your primary, secondary, and potentially tertiary Job Performers, along with the Main Jobs they aim to accomplish within your Domain. You can immediately use this knowledge to prioritize and focus your current design efforts, even as you continue gathering more JTBD insights throughout the rest of this playbook process.

### Exercise 1: Define Job Performers (sync)

Gather your team for a one-hour sync workshop. At a minimum, include the Product Design DRI and Product Manager. Adding engineering counterparts and your Section's UX Researcher will provide diverse perspectives. Use a Zoom call and the [FigJam JTBD Template](https://www.figma.com/file/Z4lsAOLH1ANN3pstQFYgSk/Jobs-to-be-done----Playbook-Template?type=whiteboard&node-id=0%3A1&t=oMR9VPNke7aIfCoU-1) created earlier as your workspace.

The workshop involves four steps:

1. Brainstorm all the activities your users are performing in your current product’s space.
1. Organize these users into related groups.
1. Name each user group to best describe them.
1. Divide the tasks within each group into the three [Job Types]<!--(/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#job-types)-->.

Follow the instructions for each step provided in the FigJam template.

### Exercise 2: Define the Jobs To Be Done (Async)

In this exercise, the Product Design DRI will take the information gathered in Exercise 1 and format it into Job Statements.

This exercise involves four steps:

1. Copy and organize stickies from Exercise 1 into the space provided for this exercise
1. Identify the most important Job Performer group
1. Convert tasks into Job Statements
1. Consider key questions about who is doing the work, and what are they trying to accomplish.

By following these instructions, you'll systematically convert the raw data from Exercise 1 into clear, actionable Job Statements, which will be used as guides for the next steps in this JTBD process.

## Investigation Interviews, Job Mapping, and Outcome Survey Preparation

The goal of this phase is to gain a deep understanding of the Job and the process used to accomplish it by conducting qualitative interviews with representative Job Performers. The insights gathered from these interviews will help you understand how Job Performers complete their tasks, which will then inform the creation of a Job Map. The Job Map will, in turn, guide the development of measurable Outcome statements.

Use [this interview template](https://docs.google.com/document/d/17Wi2Ns1rBo0hnjP1Z4xgcns5L6Jz68ukWaIdjfybsuc/edit) as a guide to ensure you're asking the right questions at the right time, thereby gathering the crucial information needed to complete the rest of this playbook.

**Benefits:** Upon completing this step, you’ll have a detailed understanding of the Job Performers’ processes, pain points, and needs. This will empower you to create accurate Job Maps and prepare well-targeted Outcomes for your Outcome survey. Once you’ve created your Job Map from the interview data, you can immediately use it to identify and prioritize problem areas. This allows you to reorient your roadmap and focus on the most critical needs, even while you're still developing your Outcome statements for the survey. By working on both in parallel, you ensure your current efforts are aligned with real insights, setting up the rest of the process for success.

### Step 1: Conduct Interviews and Verify Their Job Maps

Recruit 5-10 participants who represent the Job Performer of the Job you're investigating. If there is significant variance in the process they follow to accomplish their Job, talk to more participants until clear patterns emerge.

We recommend booking 60-minute interviews and having both a moderator and a notetaker to assist with Job Map creation and verification during the interview.

The goal of the interview is to answer the following questions:

- Did we understand the [Job]<!--(/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#main-jobs)--> correctly, aligning to the Job Performers mental models?
- What are the [Job Steps] these users go through when attempting to accomplish their Job?<!--(/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#jobs-steps)-->?
- What are their [desired Outcomes]<!--(/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#outcomes)-->?
- What are their [Related Jobs]<!--(/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#related-jobs)-->?
- What are their [Consumption Chain Jobs]<!--(/handbook/product/ux/jobs-to-be-done/outcome-driven-innovation-pilot/topics-and-definitions/#consumption-chain-jobs)-->
- What are their [Job Differentiators]<!--(/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#job-differentiators)-->?

#### Verify the Job Maps

It is recommended to have both a moderator and a notetaker during each interview, if possible. The notetaker is responsible for documenting the Job Steps on the FigJam JTBD Interview Participant Canvases during the interview. At the most opportune point during the interview, such as when it seems clear they've described their process from start to finish, show the map your notetaker generated to the participant to ensure it's an accurate interpretation of their process. Update it as necessary during this verification.

1. Use the Figjam space provided for each participant and capture every step the participant mentions, using a sticky. Try to maintain chronological order and don't worry about other aspects of your JTBD, such as Job Stages or Job Statement formatting. Your goal is to capture the participants process from start to finish so you can show it back to them for verification.
  - **Note:** If you are unable to include a notetaker during your interview sessions, perform this step afterwards when reviewing your interviews videos/notes.
2. Once all Job Steps have been discussed, walk through the Job Map with the participant for feedback and verification. Make adjustments as needed.
  - **Note:** You may skip this step if you do not have a notetaker.
3. After the interview, rewrite each Job Step to ensure it is functional and follows the [Job Statement format]<!--(/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#job-statements-->.
4. Continue to follow this process for each interview participant.

### Step 2. Complete the Job Map and Construct Outcome Statements

#### Exercise 1: Complete the Job Map

After all interviews have been completed, it’s time to synthesize your data into the final _Universal_ Job Map.

1. **Identify Commonalities:**
  - Read through each participants Job Maps to familiarze yourself with each of them.
  - Look for commonalities among all Job Maps.
2. **Create a Universal Job Map:**
  - Start by gathering all of the related stickies across all participants for the Execute Stage. Refer back to your Main Job statement to ensure you're truly considering the steps when the user has begun to execute that Job.
  - Copy the sticky notes into the Execute Stage container that aligns most closely with the timing the Job Performer would complete each step within this Stage. Remove duplicates along the way.
  - Review each of the stickies within the Stage and group commonalities together.
  - Convert each common group into a single Job Step statement that represents what the user is doing at that point.
    - Repeat this for each common group found in that Stage.
  - Repeat this process going through the Pre-Execute Stages and then the Post-Execute Stages in the following order:
    1. Define Stage
    1. Locate Stage
    1. Prepare Stage
    1. Confirm Stage
    1. Monitor Stage
    1. Modify Stage
    1. Conclude Stage

**Note:** The majority of the time there should be at least one Job Step under each of the eight Stages. However, there are times where a map may not have a step in one or two of the Stages. This is rare though, so be sure that it truly aligns with how your Job Performer accomplishes their Main Job before skipping a Stage. 

3. **Organize Steps by Grouping and Stacking:**
  - Copy the Job Step statements into the Group and Stack Job Map section in the FigJam
  - Place each sticky under the relevant Stage, organizing each Stage's steps, vertically, top to bottom. The first step they do, through the last step, before moving on to the next Stage. 

**Note:** Job Maps and their Job Steps must be listed in the _ideal order_ a Job Performer will follow to get the Job done to avoid waste, process iteration, churn, and failure.

4. **Note & Vote** (Optional) 

- Some teams may want to start using their new Universal Job Map immediately to guide their current direction and strategic planning. This exercise helps your team focus on key areas of the Job Map that are known concerns.
  - Gather your team, either synchronously or asynchronously.
  - Provide each team member with 3 "target" stickers using FigJam's sticker feature for voting.
  - Have team members place a target sticker on the Job Step they believe is the most important to focus on.
    - Multiple votes on the same Job Step are allowed if someone feels that step deserves extra attention.
    - For asynchronous voting, allow 48 hours for completion.
  - Review the results and use FigJam's tools (for example, number stickers) to mark the top voted Job Steps. Label the highest voted step as "1", the second as "2", and so on.
  - Once the top Job Steps are identified, move on to the next exercise: Construct Outcome Statements. Doe that exercise for these top voted Job Steps first.
    - You can generate Outcome statements for as many of the voted Job Steps as desired.
  - Align the created Outcome statements with any existing Issues. If no Issues exist, create new ones based on the Outcomes.
    - To facilitate solution thinking, consider framing the Outcome statement as a "How might we..." question. For example: "How might we minimize the time it takes to confirm a vulnerability is remediated?""

#### Exercise 2: Construct Outcome Statements

Next you'll use your interview videos/notes and Universal Job Map to write your [Outcome Statements]<!--(/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#outcomes)-->. Outcome statements will be written across the following three dimension, in this very specific format:

1. **Speed**: Minimize the time it takes + (accomplish something)
1. **Predictability/Reliability**: Minimize the likelihood that + (something undesirable happens)
1. **Efficiency/Better Results**: Minimize the likelihood of + (causing something undesirable to happen)

**Generate Outcome Statements:**

1. **Gather Pain Points, Hurdles, Workarounds From Interviews:**
   - Review your interview videos/notes for anything that your participant called out as a pain point, hurdle, or workaround that they have to deal with while achieving their Job.
   - Create a new sticky note for each one.
1. **Gather Pain Points, Hurdles, Workarounds From Job Map Steps:**
   - Begin with Stage 1 (for example, Define) of your Job Map and then the first Job Step under it.
   - Consider any pain points, hurdles, or workarounds your Job Performer may experience while performing that step.
   - Create a new sticky note for each one you come up with, being aware not to create any duplicates from the previous step.
1. **Construct Outcome Statements:**
   - For each sticky generated from the previous steps, construct an Outcome Statement for each of the three dimensions mentioned above (Speed, Predictability/Reliability, andEfficiency/Better Results).
   - Continue this process until you have written Outcome Statements for every pain point, hurdle or workaround sticky you created. This will essentially cover problems for the entire Job Map.

**Note:** Your Job can have between 50-150 Outcome Statements. These statements will be validated through an [Outcome Statement survey]<!--(/handbook/product/UX/jobs-to-be-done/JTBD-Evaluation-Methods#benchmarking-the-domain)-->.

#### Exercise 3: Define Job Differentiators

In this last exercise, you will identify and refine [Job Differentiators]<!--(/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#job-differentiators)-->, the key factors that impact how the Job Performer completes their Main Job. This exercise will guide you through the process of gathering and organizing these differentiators using the provided 12 contextual factors.

1. **Review the 12 Contextual Factors:**

- Start by reviewing the 12 containers in the FigJam template. Each container represents a specific contextual factor (such as, time constraints, location, experience level).
- In each container, you’ll find sub-bullets to help you think about the different ways the context might affect how the Job Performer executes the Job.

1. **Reflect on Interview Data:**

- Refer back to your interview notes. Look for statements or observations that indicate variations in how the Job Performer tackles their Job under different conditions. Focus on how different contexts influenced their approach, such as deadlines, tools, collaboration, or skill level.
- As you review, match any contextual differences you identify with the 12 categories in the template.

1. **Create Stickies for Job Differentiators:**

- For every differentiator-like statement you find in your interviews, add a sticky note inside the relevant container.
- Ensure that each sticky note reflects a specific contextual variation impacting the Job.

1. **Refine and Organize Stickies:**

- Once you've added your stickies, review them to ensure there are no duplicates. If you find similar ideas, merge them into one sticky.
- Make sure each differentiator is clear and specific, accurately reflecting the factors that affect the Job Performer’s process.

1. **Rewrite and Finalize Job Differentiators:**

- Now, rewrite each sticky note into a properly formatted Job Differentiator. Follow this format:
  - "If [context or condition] vs. [alternative context]."
    - Example: "If working under a tight deadline vs. if working with ample time."
- Refine the wording for clarity and precision to ensure the differentiators are easy to understand and actionable.

1. **Prioritize Key Differentiators (Optional):**

- If necessary, you can prioritize the most important Job Differentiators by voting or discussing with your team. Focus on the ones that have the biggest impact on how the Job Performer completes their Job.

## Outcomes Survey

Lastly, now that you have your Job Maps and Outcomes, you need to run an [Outcome Survey]<!--(/handbook/product/UX/jobs-to-be-done/JTBD-Evaluation-Methods#Benchmarking_the_Domain)--> to evaluate the Main Job and Consumption Job Outcomes, establish a benchmark and assist with prioritization by identifying underserved needs.

<!-- Figure out how to incorporate this into UX Theme workshop