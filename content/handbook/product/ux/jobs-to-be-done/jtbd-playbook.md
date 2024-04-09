---
title: How we do JTBD research at GitLab (A Playbook)
description: >-
  GitLab follows a series of steps and exercises to discover and develop job canvases from basic assumptions all the way to validated and ranked outcomes and opportunities.
---

How we conduct JTBD research at GitLab follows a process closely mirroring the [JTBD Playbook by Jim Kalbach](https://www.amazon.com/Jobs-Be-Done-Playbook-Organization/dp/1933820683). The playbook takes teams from basic assumptions all the way to a list of ranked outcomes that your customers care about the most. Going through this process can be hugely beneficial for a team. These handbook pages and the resources they link to provide you with a solid foundation of JTBD knowlesge and a self-serve way to conduct JTBD research. However, if you have access to a UX Researcher or someone knowledgeable in JTBD practice, it's a good idea to have that person as the DRI to drive this effort for your team. 

Use this playbook to complete your JTBD canvases. For more information on each part of the canvas, refer to [anatomy of a JTBD canvas](/handbook/product/ux/jobs-to-be-done/#anatomy-of-a-jtbd-canvas).  

This page covers the _how_ of Jobs to be Done. For more on _what_ Jobs to be Done _is_, head over to the [main page](/handbook/product/ux/jobs-to-be-done/).

#### A Note on Time, Confidence, and Validation

The time it takes to run through the entire playbook process can vary a lot, depending on factors such as how many jobs you’re examining, the complexity and variance within those jobs, and your team’s familiarity with JTBD. If you're planning to go through the whole playbook, we recommend budgeting at least one full quarter to get through it. 

There are some variables at play here. For instance, in cases where you simply want to identify main jobs and sketch out an [assumptive JTBD canvas](https://www.figma.com/file/Z4lsAOLH1ANN3pstQFYgSk/Jobs-to-be-done----Playbook-Template?type=whiteboard&node-id=0%3A1&t=oMR9VPNke7aIfCoU-1), **no validation is required**, and thus the time needed is much shorter. Creating an assumptive canvas can be greatly beneficial as a way to visualize what you know (or think you know) about a particular job, and to get alignment from your team on all the aspects of the job. This can be especially useful where, due to previous research, you have a _high level of confidence_ in your knowledge of the JTBD. Having said that, high confidence doesn't exempt the validation requirements for the latter stages of the JTBD playbook -- you need to do interviews to ensure your canvas is correct, and to understand a job performers motivations enough to write accurate outcome statements. 

## Step 0: Open a JTBD issue

If your team wants to conduct in-depth Jobs to be Done research (going through the whole playbook), create an issue in the [UX Research Project](https://gitlab.com/gitlab-org/ux-research/-/issues) and use the **discover-jtbd** issue template. Fill out the issue as best you can, then tag the UX Researcher for your stage (or whomever will be driving the research). If you need a DRI to drive JTBD research for your team, head over to the `#ux_research` Slack channel to see if there is anyone available to help. Once you have an issue and a DRI, you're ready to roll!

## Step 1: Pick your job performer, main job, and fill out an assumptive JTBD Canvas

The first step in the JTBD playbook is to zoom in on the [job performer](/handbook/product/ux/jobs-to-be-done/#job-performer-who-do-you-want-to-innovate-for) and   the [main job](/handbook/product/ux/jobs-to-be-done/#main-job-where-do-you-want-to-innovate) you want to learn more about. The job performer and main job are closely related – for instance, the job performer of a 'Code Reviewer', will perform the main job of ‘Ensuring code changes meet organizational standards’. The job performer of an 'Author' will perform the main job of ‘Writing a book’. And so on.

Once you’ve landed on the job performer and main job, start a **JTBD canvas**. [Here’s a link to the FigJam template](https://www.figma.com/file/Z4lsAOLH1ANN3pstQFYgSk/Jobs-to-be-done----Playbook-Template?type=whiteboard&node-id=0%3A1&t=oMR9VPNke7aIfCoU-1) that has the initial assumptive canvas to fill out as well as spots for the rest of the steps in the Playbook.

Step 0 in the template explains each part of the JTBD canvas (as does [this section in the handbook](/handbook/product/ux/jobs-to-be-done/#anatomy-of-a-jtbd-canvas)), and has some detailed instructions for this first stage of documenting your assumptions regarding the main job (which is why we call it an ‘assumptive’ JTBD canvas). 

## Step 2: Conduct Interviews

Recruit 5-10 external participants who perform the main job you're investigating. You can bolster your understanding with internal users, but ensure you research with external users and potential users of GitLab to mitigate our own team member bias. Create a new copy of your assumptive canvas for each interview. It’s recommended to have a moderator and a notetaker, where the notetaker is in charge of filling out the canvas while the participant and moderator are talking. Good practice is to show the canvas your notetaker filled out to the participant at the end of the interview, to confirm that you recorded their actions accurately. We recommend booking 60 minute interviews. If you see a lot of variance in jobs, talk to more participants until patterns start to become evident.

There is an [interview guide](https://www.figma.com/file/Z4lsAOLH1ANN3pstQFYgSk/Jobs-to-be-done----Playbook-Template?type=whiteboard&node-id=78-2318&t=oMR9VPNke7aIfCoU-4) included in the FigJam template. The goal of the interviews are to enable the job performers to tell you how and why they do the job. What are the [job steps](/handbook/product/ux/jobs-to-be-done/#job-steps-how-does-the-job-performer-get-the-job-done)? [Desired outcomes](/handbook/product/ux/jobs-to-be-done/#outcomes-how-does-the-job-performer-measure-the-success-of-getting-the-job-done)? [Related jobs](/handbook/product/ux/jobs-to-be-done/#related-jobs-what-else-is-the-job-performer-trying-to-get-done)? [Circumstances](/handbook/product/ux/jobs-to-be-done/#circumstances-what-are-the-factors-or-condictions-that-make-a-difference-in-how-the-job-gets-done)?

## Step 3: Synthesize

From the various interview canvases, create a single, synthesized canvas that best represents the main job as you understand it. Think of it somewhat like the Venn diagram of your participants. This means that the elements you heard most often, or you have high confidence in, should be included. Meanwhile, outliers, tangents, or uncommon circumstances should be excluded. We recommend consulting with a UX Researcher when performing this step, as some experience in qualitative [data synthesis](https://handbook.gitlab.com/handbook/product/ux/ux-research/analyzing-research-data/) is helpful.


## Step 4: Construct Outcome Statements

For each job step in your validated job map, construct an outcome statement. An outcome statement represents how your job performer might judge the success of a particular job step, (i.e., what the job performer needs to accomplish). Check the [handbook section](/handbook/product/ux/jobs-to-be-done/#outcomes-how-does-the-job-performer-measure-the-success-of-getting-the-job-done) for more on how to construct an outcome statement.

Note: Your main job will have roughly 1-5 outcome statements, and you will also have more specific outcome statements for each job step, and/or for each micro job. 

Example of main outcome statements for a main job of ‘Review Code’:

![JTBD main outcomes](/handbook/product/ux/jobs-to-be-done/JTBD_Outcomes.png)

Example of [micro-jobs](/handbook/product/ux/jobs-to-be-done/#micro-jobs) and outcome statements for a main job of ‘Review Code’:

![JTBD micro-jobs and outcome statements](/handbook/product/ux/jobs-to-be-done/JTBD_MicroJobs_OutcomeStatements.png)

## Step 5: Determine Opportunity Scores

Once you have outcome statements written, you can construct an opportunity score survey. This survey asks two questions about each of your outcomes: 

* _How important is this (outcome) to you?_
* _How well is this (outcome) currently being satisfied?_

You’ll want to be careful to screen out any participants who don’t perform the main job you’re researching. Try to get close to 50 qualified responses to ensure a reasonable amount of confidence in your scoring.

There is a [template in Qualtrics](https://gitlab.eu.qualtrics.com/survey-builder/LS_2l5ektxWK1wFRuC/edit?ContextLibraryID=GR_6ziMa2ooJx4Y6SF) to help you get started. (Under Library->UX Research & Product->Templates->Opportunity Score Template).

Note: Remember to recruit both GitLab and non-GitLab users, and be able to easily segment them for your analysis.

At GitLab, we use a 10 point scale, labeled at each end as ‘very low’ (1) and ‘very high’ (10).

Using the scores for importance and satisfaction, we can calculate an opportunity score:

![JTBD Opportunity Score](/handbook/product/ux/jobs-to-be-done/JTBD_OpportunityScore.png)

1. The importance score minus the satisfaction score is your ‘satisfaction gap’.
2. Add the satisfaction gap to your original importance score to get the final opportunity score.

[This spreadsheet template](https://docs.google.com/spreadsheets/d/109GZqTYPpOLpHLj-gwV_ldMFwIKa9MaaLPyLJ4kdoQs/edit?usp=sharing) offers a step by step guide to exporting data from a Qualtrics survey and generating a ranked list of outcome statements with opportunity scores.

[Opportunity scores](https://medium.com/uxr-microsoft/what-is-the-opportunity-score-and-how-to-obtain-it-bb81fcbf79b7) run from 0-20. Generally, anything above a 10 is worth looking at closely, and anything over 15 is a critical opportunity that needs to be addressed as soon as possible. 

If all the scores on your survey are less than 10, that’s great - but remember, any score above a zero indicates some room for improvement, so it’s still wise to look at your top scores. Conversely, if you have dozens of outcome statements above a 10, prioritize those with the highest scores. 

| Opportunity Score | Severity | 
| ----- | ----------- | 
| 16-20 | Act immeditately - house is on fire! | 
| 10-15 | Prioritize as soon as possible | 
| 7-9  | Keep on eye on   | 
| 6 or below | Probably not a priority right now | 

### Align on Ranked Outcomes: Workshop

Here’s where the magic happens. If you have the ranked outcomes by opportunity score from your survey, you have a list of the areas that will be most impactful to your users’ experience of your product. Now is the time to meet with your stakeholders and discuss the top ranked outcomes. Our [FigJam template](https://www.figma.com/file/Z4lsAOLH1ANN3pstQFYgSk/Jobs-to-be-done----Playbook-Template?type=whiteboard&node-id=0%3A1&t=qrubQYZLbPWYJjN3-1) has a workshop template and guide you can use to help address each outcome statement.

A few things to think about during the workshop:

- Are the outcomes already being addressed with current and planned work? If not, should they be incorporated into future planning?
- Where in the product is each outcome done? Are there specific pages, controls, or parts of the UI that we can focus on?
- Who owns each outcome? Are there other teams that ‘own’ some of the areas of opportunity? Who can you speak with to see if they are working on this outcome already?
- What can be done to achieve the stated outcome? Think of some potential solutions.

The result of the workshop should be that the team understands the top opportunities for that main job and job performer, and has discussed ways to address them. 

You and your team now have a list of the most important areas to focus on - a list that you can share with other teams and stakeholders (even customers!) to help bring clarity and confidence to your product roadmap. 

The list of opportunities will remain relevant for a long time (until you release changes to your product that address the opportunities), because they aren’t based on particular features or solutions, but larger outcomes that users want to achieve. Re-survey your job performers about certain outcome statements after your team has made some changes, in order to see if the opportunity score has decreased (meaning you’ve made positive progress to fulfilling the desired outcome).

<!-- TODO: Connect to UX Themes (in a future MR)>
