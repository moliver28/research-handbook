---
title: How we do JTBD research at GitLab (A Playbook)
description: >-
  GitLab follows a series of steps and exercises to discover and develop Job Canvases from basic assumptions all the way to validated and ranked Desired Outcomes and opportunities.
---

The playbook guides teams from initial assumptions to prioritized user Desired Outcomes. This process builds confidence that you're tackling the right problems at the right time. The handbook offers a JTBD foundation and collaborative research tools. Leverage in-house UX expertise for deeper guidance.

Use this playbook to complete your JTBD canvases and come away with measured Outcomes to guide your teams strategy for years to come. For more information on each part of the canvas, refer to [anatomy of a JTBD canvas](/handbook/product/ux/jobs-to-be-done/#anatomy-of-a-jtbd-canvas).

This page covers the _how_ of Jobs to be Done. For more on _what_ Jobs to be Done _is_, head over to the [main page](/handbook/product/ux/jobs-to-be-done/).

#### A Note on Time, Confidence, and Validation

The playbook completion time varies depending on job complexity, team experience, and the number of jobs. Plan for a quarter to cover all primary jobs. However, factors can accelerate the process. High domain knowledge might allow confident Jobs Canvas creation without initial interviews (e.g., years of experience, hundreds of user interviews). Conversely, new product areas require Job Performer interviews before defining Jobs, Maps, and Outcomes. User interviews remain crucial to confirm Jobs and Maps align with user mental models, ensuring accurate Outcome statements.

## Getting Started

To get started, create an issue in the [UX Research Project](https://gitlab.com/gitlab-org/ux-research/-/issues) and use the **[discover-jtbd](https://gitlab.com/gitlab-org/ux-research/-/blob/master/.gitlab/issue_templates/discover-jtbd.md)** issue template. Fill out the issue as best as you can, then tag the UX Researcher for your stage (or whoever will be driving the research). If you need a DRI to drive JTBD research for your team, head over to the `#ux_research` Slack channel to see if anyone is available to help. Once you have an issue and a DRI, you're ready to roll!

You'll also want to create a copy of our [JTBD Canvas Template](https://www.figma.com/file/Z4lsAOLH1ANN3pstQFYgSk/Jobs-to-be-done----Playbook-Template?type=whiteboard&node-id=0%3A1&t=oMR9VPNke7aIfCoU-1) that will be used throughout this process. This will help you visualize what you know (or think you know) about a particular Domain area's Job Performers, and to get alignment with your team on all the aspects of the Domain.

## Define Job Performers and Jobs

The first step in the JTBD process is identifying your users and their objectives within your product space. This foundation ensures success in subsequent steps.

### Exercise 1: Define Job Performers

#### Sync Workshop

Gather your team for a one-hour sync workshop. At a minimum, include the Product Design DRI and Product Manager. Adding engineering counterparts and your Section's UX Researcher will provide diverse perspectives. Use a Zoom call and the [FigJam JTBD Template](https://www.figma.com/file/Z4lsAOLH1ANN3pstQFYgSk/Jobs-to-be-done----Playbook-Template?type=whiteboard&node-id=0%3A1&t=oMR9VPNke7aIfCoU-1) created earlier.

The workshop involves four steps:

1. Brainstorm all the activities users are performing in your product’s space.
1. Organize these users into related groups.
1. Name each user group to best describe them.
1. Divide the tasks within each group into the three [Job Types](/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#job-types).

Follow the instructions for each step provided in the FigJam template.

#### Async Workshop (multi-day)

Gather your team for an asynchronous workshop. Set the expectation that they will participate over multiple days, dedicating at least 20 minutes to each step daily. At a minimum, include the Product Design DRI and Product Manager. Adding engineering counterparts and your Section's UX Researcher will provide diverse perspectives. Use a Zoom call and the [FigJam JTBD Template](https://www.figma.com/file/Z4lsAOLH1ANN3pstQFYgSk/Jobs-to-be-done----Playbook-Template?type=whiteboard&node-id=0%3A1&t=oMR9VPNke7aIfCoU-1) created earlier.

The workshop involves four steps:

1. Brainstorm all the activities users are performing in your product’s space.
    1. Have each participant read the instructions on FigJam. For any questions, reach out to the Product Design DRI.
    1. Complete the step and ping the Product Design DRI in the planning issue.
    1. Wait for the Product Design DRI to ping the team when ready for the next step.
    1. Follow this process for the remaining steps in the workshop.
1. Organize these users into related groups.
1. Name each user group to best describe them.
1. Divide the tasks within each group into the three [Job Types](/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#job-types).

### Exercise 2: Define the Jobs To Be Done

In this step, the Product Design DRI will take the information gathered in Exercise 1 and format it into Job Statements.

1. **Copy and Organize**:
   - Copy the groups and their stickies from Exercise 1 to this new work area to get started.

1. **Identify the Most Important Job Performer Group**: 
   - Review the Job Performer groups defined in Exercise 1.
   - Determine which group has a Main Job.
   - If multiple groups have Main Jobs, assess their importance based on the Job Performer name and the types of tasks they need to accomplish.
   - If you can't decide, start with the group at the top left of your work area and proceed top to bottom, left to right.

1. **Convert Tasks to Job Statements**:
   - Use the standard Job Statement format: [verb] + [object of the verb] + [optional contextual clarifier].
   - Merge any similar stickies that represent the same job-to-be-done.

1. **Consider Key Questions**:
   - Who is this Job Performer?
   - What are they trying to accomplish in our product’s space?
   - What Jobs are they trying to get done?

By following these instructions, you'll systematically convert the raw data from Exercise 1 into clear, actionable Job Statements, which will be used as guides for the next steps in this JTBD process.

## Investigation Interviews Job Mapping and Outcome Survey Preparation

The goal of this phase is to understand the Job and the process used for completing it by conducting qualitative interviews with representative Job Performers. The data from these interviews will provide insights into how our product's Job Performers accomplish their tasks and will inform the next steps in building and updating our product.

### Step 1: Conduct Interviews and Verify Their Job Maps

Recruit 5-10 participants who represent the Job Performer of the Job you're investigating. If there is significant variance in jobs, talk to more participants until clear patterns emerge.

We recommend booking 60-minute interviews and having both a moderator and a notetaker. The notetaker is responsible for documenting the Job Steps on the JTBD Interview Participant Canvases during the interview. At open point during the interview, show the canvas to the participant to ensure accurate interpretation of their responses.

The goal of the interview is to answer the following questions:

- Did we understand the [Job](/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#main-jobs) correctly, aligning to the Job Performers mental models?
- What are the [Job Steps](/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#jobs-steps)?
- What are their [desired Outcomes](/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#outcomes)?
- What are the [Related Jobs](/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#related-jobs)?
- What are the [Job Differentiators](/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#job-differentiators)?

Helpful prompts can be found in the Figjam template [interview guide](https://www.figma.com/file/Z4lsAOLH1ANN3pstQFYgSk/Jobs-to-be-done----Playbook-Template?type=whiteboard&node-id=78-2318&t=oMR9VPNke7aIfCoU-4).

#### Verify the Job Maps

If possible, it is recommended to have both a moderator and a notetaker during each interview. This will allow you to create a Job Map for each session and get feedback and verification that you've got it right from the participant in real-time.

1. Use the Figjam space provided for each participant and capture every step the participant mentions, using a sticky. Try to maintain chronological order and don't worry about other aspects of your JTBD, such as Job Stages or Job Statement formatting.
    - **Note:** If you are unable to include a notetaker during your interview sessions, perform this step afterwards by reviewing your interviews videos in Dovetail. 
    - As you're reviewing your videos try using the JTBD Gloabl Labels to mark parts of the video when you recognize a JTBD Canvas element.
1. Once all Job Steps have been discussed, walk through the Job Map with the participant for feedback and verification. Make adjustments as needed.
1. After the interview, rewrite each Job Step to ensure it is functional and follows [Job Statement format](/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#job-statements).


### Step 2. Complete the Job Map and Construct Outcome Statements

#### Exercise 1: Complete the Job Map

After all interviews have been completed, reviewed, and labeled in Dovetail, it’s time to synthesize them into the final Job Map.

1. **Identify Commonalities:**
    - Look for commonalities among all Job Maps.
1. **Create a Unified Job Map:**
    - Use the category labels Beginning, Middle, and End.
    - Move sticky notes into the category that aligns most closely with the timing the performer would complete each step. Remove duplicates along the way.
1. **Organize Steps:**
    - Organize sticky notes from each category into vertical stacks. These are related steps the Job Performer would complete, moving vertically down the stack (top to bottom) before moving on to the next stacked step.
1. **Add Stage Names:**
    - Above each vertical stack, add a sticky with stage names or modes of operation. These should be high-level, single-word verbs that describe the collection of steps below them.

**Note:** There should be at least one Job Step under each of the eight Stages. Job Steps must be listed in the ideal order a Job Performer will follow to get the job done to avoid waste, process iteration, churn, and failure.

#### Exercise 2: Construct Outcome Statements

Continuing with your interview synthesis, return to your Dovetail labels and filter on Outcomes. Use these, along with your Job Map/Steps, to generate [Outcome Statements](/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#outcomes) across the three dimensions:

1. **Speed**: Minimize the time it takes + (accomplish something)
1. **Reliability/Predictability**: Minimize the likelihood that + (something undesirable happens)
1. **Efficiency/Better Results**: Minimize the likelihood of + (causing something undesirable to happen)

Steps:

1. **Start with Stage 1:**
    - Begin with Stage 1 (e.g., Define) of your Job Map and the first Job Step under it.
    - Consider any problems, hurdles, pain points, etc., mentioned by your interview participants while performing this step. Reference your Dovetail notes to identify any mentions of how they measure the success of completing their Job.
1. **Construct Outcome Statements:**
    - For each Job Step under each Job Stage, construct Outcome Statements for the three dimensions mentioned above.
    - Continue this process until you have written Outcome Statements for the entire Job Map.

**Note:** Your Job can have between 50-150 Outcome Statements. These statements will be validated through an [Outcome Statement survey](#outcome-statement-survey).

#### Exercise 3: Gather Job Differentiators

In this last exercise, you will gather and refine Job Differentiators from your interviews. These differentiators highlight key factors that make a difference in how the Job Performer completes their Job.

1. **Collect Job Differentiators:**
    - Review your interview notes and look for differentiator-like statements that reference any key factors making a difference in job performance.
    - Identify specific factors that impact how the Job Performer completes their tasks.
1. **Create Stickies:**
    - Add a sticky note for every potential Job Differentiator you find.
    - Organize the stickies to ensure there are no repeated ideas, merging duplicates as you go.
1. **Rewrite Job Differentiators:**
    - Convert each potential Job Differentiator into a properly formatted [Job Differentiator](/handbook/product/ux/jobs-to-be-done/#job-differentiators-what-are-the-factors-or-conditions-that-make-a-difference-in-how-the-job-gets-done).
    - Ensure clarity and precision in the wording to accurately reflect the key factors identified.

## Outcome Statement Survey

Now that you have your JTBD Canvas filled in completely, and you have decided on the most important areas to focus on for each section but the Outcome Statements, you need to run an Outcome Opportunity Scores Survey to determine which of these are the most important to your Job Performer for this Main Job.

To do this you need to construct an Outcome Opportunity Score survey. It is recommended that you work with your Section's UX Researcher when constructing and delivering this survey.

This survey asks two questions about each of your Outcome Statements:

1. How _important_ is this (Outcome) to you?
2. How well is this (Outcome) currently being _satisfied_?

It's important that your survey participants are reprensetitive of your Job Perfomer so you'll want to be careful to screen out any participants who don't perform the Main Job you're researching. Try to get close to 50 qualified responses to ensure a reasonable amount of confidence in your scoring.

There is a [template in Qualtrics](https://gitlab.eu.qualtrics.com/survey-builder/LS_2l5ektxWK1wFRuC/edit?ContextLibraryID=GR_6ziMa2ooJx4Y6SF) to help you get started. (Under Library->UX Research & Product->Templates->Opportunity Score Template).

Note: Remember to recruit both GitLab and non-GitLab users, and be able to easily segment them for your analysis.

At GitLab, we use a 10 point scale, labeled at each end as 'very low' (1) and 'very high' (10).

Using the scores for importance and satisfaction, we can calculate an opportunity score:

![JTBD Opportunity Score](/handbook/product/ux/jobs-to-be-done/JTBD_OpportunityScore.png)

1. The importance score minus the satisfaction score is your 'satisfaction gap'.
2. Add the satisfaction gap to your original importance score to get the final opportunity score.

[This spreadsheet template](https://docs.google.com/spreadsheets/d/109GZqTYPpOLpHLj-gwV_ldMFwIKa9MaaLPyLJ4kdoQs/edit?usp=sharing) offers a step by step guide to exporting data from a Qualtrics survey and generating a ranked list of Outcome statements with opportunity scores.

[Opportunity scores](https://medium.com/uxr-microsoft/what-is-the-opportunity-score-and-how-to-obtain-it-bb81fcbf79b7) run from 0-20. Generally, anything above a 10 is worth looking at closely, and anything over 15 is a critical opportunity that needs to be addressed as soon as possible.

If all the scores on your survey are less than 10, that's great - but remember, any score above a zero indicates some room for improvement, so it's still wise to look at your top scores. Conversely, if you have dozens of Outcome statements above a 10, prioritize those with the highest scores.

| Opportunity Score | Severity |
| ----- | ----------- |
| 16-20 | Act immeditately - house is on fire! |
| 10-15 | Prioritize as soon as possible |
| 7-9  | Keep on eye on   |
| 6 or below | Probably not a priority right now |

## Generate Job Stories

Now that you have a completed JTBD Canvas you can use it to create Job Stories. Job Stories help synthesize and summarize all of the great information you just put together on your JTBD Canvas. You might end up creating between 3 - 5 Job Stories to cover the data and insights you gathered and voted on as being the most important aspect of your JTBD Canvas. Bear in mind that good Job Stories describe the pain points that you're going after and help you empathize with the Job Performer.

To learn more about what Job Stories are, how to write them, and how you can use them to generate design solutions check the [handbook section](/handbook/product/ux/jobs-to-be-done/#job-stories).

### The Job Story Fomula

When I ___________ [am at this **Job Step**] + [under these conditions-**Job Differentiators**],
I want ____________ [this New Ability, customer imperative or demand the JP has on the solution],
So I can __________ [reach these **Outcomes**] + [and have these **Emotional/Social Aspects**].

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
