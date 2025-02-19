---
title: The GitLab JTBD Playbook
description: >- 
  The JTBD playbook is a comprehensive, step-by-step guide to help teams effectively apply the JTBD framework. It guides you from initial assumptions to prioritized user desired outcomes, providing a solid foundation and collaborative research tools.
---

>⚠️ **This framework is undergoing evaluation in a [pilot program](https://gitlab.com/gitlab-org/gitlab/-/iss️ues/477045)** ⚠️

The playbook will ensure you tackle the right problems at the right time by focusing on the critical question: **What outcomes are you trying to influence?**.

If this is your first time using the playbook, it's recommended to review [what JTBD is and its main concepts]<!--(/handbook/product/ux/jobs-to-be-done/)--> before getting started. Having a solid understanding of JTBD principles is extremely beneficial before you begin developing your domain's Jobs.

#### A Note on Time, Confidence, and Validation

The time required to complete the playbook can vary based on job complexity, team experience, and the size of your domain, which affects the number of Jobs being evaluated. Generally, you should plan for at least 3 months to cover all primary Job Performers' main Jobs.

To ensure confidence in your final results, it is crucial that your deliverables are based on interviews with Job Performers.

## Getting Started

1. Create an issue in the [UX Research Project](https://gitlab.com/gitlab-org/ux-research/-/issues) and use the **[discover-jtbd](https://gitlab.com/gitlab-org/ux-research/-/blob/master/.gitlab/issue_templates/discover-jtbd.md)** issue template.
1. Create a copy of the [JTBD Canvas Template](https://www.figma.com/file/Z4lsAOLH1ANN3pstQFYgSk/Jobs-to-be-done----Playbook-Template?type=whiteboard&node-id=0%3A1&t=oMR9VPNke7aIfCoU-1). This will help you develop what you know (or think you know) about a particular Domain area's Job Performers, and to get alignment with your team on all the aspects of your product, your users, their goals, and their needs.

### Getting help

If you need help at any point when working through the playbook, start by posting in #jtbd or reaching out to your manager.

## Define Job Performers and Their Jobs

The first step in the JTBD process is identifying your users and their objectives within your product space. This foundation ensures success in subsequent steps.

**Benefits:** When you've completed this step, you'll gain a clear understanding of your primary, secondary, and possibly tertiary Job Performers, along with the main goals (Jobs) they're trying to accomplish within your domain area. This can be used to help prioritize design efforts, and create more targeted and effective solutions.

### Exercise 1: Define Job Performers (sync)

Gather your team for a one-hour sync workshop. At a minimum, include the Product Design DRI and Product Manager. Adding engineering counterparts and your Section's UX Researcher will provide diverse perspectives. Use a Zoom call and the [FigJam JTBD Template](https://www.figma.com/file/Z4lsAOLH1ANN3pstQFYgSk/Jobs-to-be-done----Playbook-Template?type=whiteboard&node-id=0%3A1&t=oMR9VPNke7aIfCoU-1) created earlier.

The workshop involves four steps:

1. Brainstorm all the activities users are performing in your product’s space.
1. Organize these users into related groups.
1. Name each user group to best describe them.
1. Divide the tasks within each group into the three [Job Types]<!--(/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#job-types)-->.

Follow the instructions for each step provided in the FigJam template.

### Exercise 2: Define the Jobs To Be Done (Async)

In this exercise, the Product Design DRI will take the information gathered in Exercise 1 and format it into Job Statements.

This exercise involves four steps:

1. Copy and organize stickies from Exercise 1
1. Identify the most important Job Performer group
1. Convert tasks into Job Statements
1. Consider key questions about who, and what.

By following these instructions, you'll systematically convert the raw data from Exercise 1 into clear, actionable Job Statements, which will be used as guides for the next steps in this JTBD process.

## Investigation Interviews, Job Mapping, and Outcome Survey Preparation

The goal of this phase is to understand the Job and the process used for completing it by conducting qualitative interviews with representative Job Performers. The data from these interviews will provide insights into how our product's Job Performers accomplish their tasks and will inform the next steps in building and updating our product.

**Benefits:** When you've completed this step, you'll have a detailed understanding of the Job Performers' processes, pain points, and needs. This will enable you to create accurate Job Maps and prepare effective Outcomes for your Outcome survey. This data can then be used to ensure that your product roadmap is guided by real user insights and focused on addressing the most critical aspects of their Jobs.

### Step 1: Conduct Interviews and Verify Their Job Maps

Recruit 5-10 participants who represent the Job Performer of the Job you're investigating. If there is significant variance in jobs, talk to more participants until clear patterns emerge.

We recommend booking 60-minute interviews and having both a moderator and a notetaker to assist with Job Map creation and verification.

The goal of the interview is to answer the following questions:

- Did we understand the [Job]<!--(/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#main-jobs)--> correctly, aligning to the Job Performers mental models?
- What are the [Job Steps]<!--(/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#jobs-steps)-->?
- What are their [desired Outcomes]<!--(/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#outcomes)-->?
- What are the [Related Jobs]<!--(/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#related-jobs)-->?
- What are the [Job Differentiators]<!--(/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#job-differentiators)-->?

Helpful prompts can be found in the Figjam template [interview guide](https://www.figma.com/file/Z4lsAOLH1ANN3pstQFYgSk/Jobs-to-be-done----Playbook-Template?type=whiteboard&node-id=78-2318&t=oMR9VPNke7aIfCoU-4).

#### Verify the Job Maps

It is recommended to have both a moderator and a notetaker during each interview, if possible. The notetaker is responsible for documenting the Job Steps on the JTBD Interview Participant Canvases during the interview. At any point during the interview, show the canvas to the participant to ensure accurate interpretation of their responses.

1. Use the Figjam space provided for each participant and capture every step the participant mentions, using a sticky. Try to maintain chronological order and don't worry about other aspects of your JTBD, such as Job Stages or Job Statement formatting.
    - **Note:** If you are unable to include a notetaker during your interview sessions, perform this step afterwards when reviewing your interviews videos/notes.
1. Once all Job Steps have been discussed, walk through the Job Map with the participant for feedback and verification. Make adjustments as needed.
    - **Note:** You may skip this step if you do not have a notetaker.
1. After the interview, rewrite each Job Step to ensure it is functional and follows [Job Statement format]<!--(/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#job-statements-->.

### Step 2. Complete the Job Map and Construct Outcome Statements

#### Exercise 1: Complete the Job Map

After all interviews have been completed, it’s time to synthesize them into the final Job Map.

1. **Identify Commonalities:**
    - Look for commonalities among all Job Maps.
1. **Create a Unified Job Map:**
    - Use the category labels Beginning, Middle, and End.
    - Move sticky notes into the category that aligns most closely with the timing the performer would complete each step. Remove duplicates along the way.
1. **Organize Steps:**
    - Organize sticky notes from each category into vertical stacks. These are related steps the Job Performer would complete, moving vertically down the stack (top to bottom) before moving on to the next stacked step.

**Note:** There should be at least one Job Step under each of the eight Stages. Job Steps must be listed in the ideal order a Job Performer will follow to get the job done to avoid waste, process iteration, churn, and failure.

#### Exercise 2: Construct Outcome Statements

Continuing with your interview synthesis, return to your interview videos/notes and look for anything that might help you write your Outcome statements. Look for anything that sounds like a pain point, hurdle, or workaround that user has to deal with. Use your videos/notes, along with your Job Map/Steps, to generate [Outcome Statements]<!--(/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#outcomes)--> across the three dimensions:

1. **Speed**: Minimize the time it takes + (accomplish something)
1. **Reliability/Predictability**: Minimize the likelihood that + (something undesirable happens)
1. **Efficiency/Better Results**: Minimize the likelihood of + (causing something undesirable to happen)

Steps:

1. **Start with Stage 1:**
    - Begin with Stage 1 (for example, Define) of your Job Map and the first Job Step under it.
    - Consider any problems, hurdles, pain points, etc., mentioned by your interview participants while performing this step. Reference your videos/notes to identify any mentions of how they measure the success of completing their Job.
1. **Construct Outcome Statements:**
    - For each Job Step under each Job Stage, construct Outcome Statements for the three dimensions mentioned above.
    - Continue this process until you have written Outcome Statements for the entire Job Map.

**Note:** Your Job can have between 50-150 Outcome Statements. These statements will be validated through an [Outcome Statement survey]<!--(/handbook/product/UX/jobs-to-be-done/JTBD-Evaluation-Methods#benchmarking-the-domain)-->.

#### Exercise 3: Gather Job Differentiators

In this last exercise, you will gather and refine [Job Differentiators]<!--(/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#job-differentiators)--> from your interviews. These differentiators highlight key factors that make a difference in how the Job Performer completes their Job.

1. **Collect Job Differentiators:**
    - Review your interview notes and look for differentiator-like statements that reference any key factors making a difference in job performance.
    - Identify specific factors that impact how the Job Performer completes their tasks.
1. **Create Stickies:**
    - Add a sticky note for every potential Job Differentiator you find.
    - Organize the stickies to ensure there are no repeated ideas, merging duplicates as you go.
1. **Rewrite Job Differentiators:**
    - Convert each potential Job Differentiator into a properly formatted [Job Differentiator]<!--(/handbook/product/ux/jobs-to-be-done/#job-differentiators-what-are-the-factors-or-conditions-that-make-a-difference-in-how-the-job-gets-done)-->.
    - Ensure clarity and precision in the wording to accurately reflect the key factors identified.

## Outcomes Survey

Lastly, now that you have your Job Maps and Outcomes, you need to run an [Outcome Survey]<!--(/handbook/product/UX/jobs-to-be-done/JTBD-Evaluation-Methods#Benchmarking_the_Domain)--> to evaluate the Main Job and Consumption Job Outcomes, establish a benchmark and assist with prioritization by identifying underserved needs.

<!-- Figure out how to incorporate this into UX Theme workshop

### Align on Ranked Outcomes: Workshop

Here's where the magic happens. If you have the ranked Outcomes by opportunity score from your survey, you have a list of the areas that will be most impactful to your users' experience of your product. Now is the time to meet with your stakeholders and discuss the top ranked Outcomes. Our [FigJam template](https://www.figma.com/file/Z4lsAOLH1ANN3pstQFYgSk/Jobs-to-be-done----Playbook-Template?type=whiteboard&node-id=0%3A1&t=qrubQYZLbPWYJjN3-1) has a workshop template and guide you can use to help address each Outcome statement.

A few things to think about during the workshop:

- Are the Outcomes already being addressed with current and planned work? If not, should they be incorporated into future planning?
- Where in the product is each Outcome done? Are there specific pages, controls, or parts of the UI that we can focus on?
- Who owns each Outcome? Are there other teams that 'own' some of the areas of opportunity? Who can you speak with to see if they are working on this Outcome already?
- What can be done to achieve the stated Outcome? Think of some potential solutions.

The result of the workshop should be that the team understands the top opportunities for that Main Job and Job Performer, and has discussed ways to address them.

You and your team now have a list of the most important areas to focus on - a list that you can share with other teams and stakeholders (even customers!) to help bring clarity and confidence to your product roadmap.

The list of opportunities will remain relevant for a long time (until you release changes to your product that address the opportunities), because they aren't based on particular features or solutions, but larger Outcomes that users want to achieve. Re-survey your Job Performers about certain Outcome statements after your team has made some changes, in order to see if the opportunity score has decreased (meaning you've made positive progress to fulfilling the desired Outcome).

-->

<!-- TODO: Connect to UX Themes (in a future MR)>
