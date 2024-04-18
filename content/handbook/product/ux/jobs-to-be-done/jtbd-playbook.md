---
title: How we do JTBD research at GitLab (A Playbook)
description: >-
  GitLab follows a series of steps and exercises to discover and develop job canvases from basic assumptions all the way to validated and ranked outcomes and opportunities.
---

How we conduct JTBD research at GitLab follows a process closely mirroring the [JTBD Playbook by Jim Kalbach](https://www.amazon.com/Jobs-Be-Done-Playbook-Organization/dp/1933820683). The playbook takes teams from basic assumptions all the way to a list of ranked outcomes that your customers care about the most. Going through this process can be hugely beneficial for a team. These handbook pages and the resources they link to provide you with a solid foundation of JTBD knowledge and a self-serve way to conduct JTBD research collaboratively with your counterparts. However, if you have access to a UX Researcher or someone knowledgeable in JTBD practice, it's a good idea to have that person as the DRI to help drive this effort for your team. 

Use this playbook to complete your JTBD canvases. For more information on each part of the canvas, refer to [anatomy of a JTBD canvas](/handbook/product/ux/jobs-to-be-done/#anatomy-of-a-jtbd-canvas).  

This page covers the _how_ of Jobs to be Done. For more on _what_ Jobs to be Done _is_, head over to the [main page](/handbook/product/ux/jobs-to-be-done/).

#### A Note on Time, Confidence, and Validation

The time it takes to run through the entire playbook process can vary substantially, depending on factors such as how many jobs you’re examining, the complexity and variance within those jobs, and your team’s familiarity with the JTBD process. If you're planning to go through the whole playbook, we recommend budgeting at least one full quarter to get through it. 

There are some variables at play here. For instance, in cases where you simply want to identify Main Jobs and sketch out a complete assumptive JTBD canvas([JTBD Canvas Template](https://www.figma.com/file/Z4lsAOLH1ANN3pstQFYgSk/Jobs-to-be-done----Playbook-Template?type=whiteboard&node-id=0%3A1&t=oMR9VPNke7aIfCoU-1)), **no validation is required**, and thus the time needed is much shorter. Creating an assumptive canvas can be greatly beneficial as a way to visualize what you know (or think you know) about a particular job, and to get alignment from your team on all the aspects of the job. This can be especially useful where, due to previous research, you have a _high level of confidence_ in your knowledge of the JTBD. Having said that, high confidence doesn't exempt the validation requirements for the latter stages of the JTBD playbook -- you will need to complete interviews with your Job Performers to ensure your canvas is accurate, and to understand a Job Performer's motivations enough to write accurate Outcome statements. 

With that in mind, the process as defined here will begin with a partial assumptive canvas the way that Jim Kalbach works when leading workhops on the JTBD process.

## Step 0: Open a JTBD issue

If your team wants to conduct in-depth Jobs to be Done research (going through the whole playbook), create an issue in the [UX Research Project](https://gitlab.com/gitlab-org/ux-research/-/issues) and use the **[discover-jtbd](https://gitlab.com/gitlab-org/ux-research/-/blob/master/.gitlab/issue_templates/discover-jtbd.md)** issue template. Fill out the issue as best as you can, then tag the UX Researcher for your stage (or whomever will be driving the research). If you need a DRI to drive JTBD research for your team, head over to the `#ux_research` Slack channel to see if there is anyone available to help. Once you have an issue and a DRI, you're ready to roll!

# Workhop 1: Scope Definition

## Step 1: Define your Domain, Pick your Job Performer, and Main Job, and start an assumptive JTBD Canvas

Gather your counterparts together in a sync workshop that should take about an hour of sync time to complete. At a minimum, this team should be comprised of the Product Design DRI and Product Manager. Engineering counterparts are a great addition to round out the perspectives and points of view and your Section's UX Researcher would be a great addition as well. You'll gather together on a Zoom call, focusing on the [FigJam JTBD Template](https://www.figma.com/file/Z4lsAOLH1ANN3pstQFYgSk/Jobs-to-be-done----Playbook-Template?type=whiteboard&node-id=0%3A1&t=oMR9VPNke7aIfCoU-1) that was created earlier.

### Exercise 1: Brainstorm potential domains [set timer for 10 minutes]:

The first step in the JTBD playbook is to select the Domain area you're going to be working in. Sections, Stage Groups or Categories may be good starting point to determine which area you want to define a JTBD canvas for. In an open area of the FigJam begin by creating new sticky notes for each of the areas within your Group that you might want to develop a JTBD Canvas in. Consider: where do you want to innovate?

#### Select a domain [set timer for 5 minutes]

Looking at the stick notes,briefly discuss each, and select one. Because you are very familiar with your work area you should be able to hone in on a Domain rather quickly. Copy the Domain into the text area provided at the top of the JTBD Canvas. You can keep the unselected Domain areas in this open area in case you want to reference them later to explore additional JTBD Canvases for different Domain areas.

### Exercise 2: Brainstorm Job Performers [set timer for 10 minutes]

Now that you know what Domain area you want to work in, it's time to zoom in on the [Job Performer](/handbook/product/ux/jobs-to-be-done/#job-performer-who-do-you-want-to-innovate-for). Below the area where you were exploring Domains, consider: who are you innovating for? Who are the actors or stakeholders in our Domain/field? Get as many relevant Job Performers written out on individual sticky notes as possible.

#### Select a Job Performer via Note & Vote [set timer for 5 minutes]

To help you determine which Job Performer you want to focus on for this Job Canvas, bear in mind the following questons: Where is there a need in our market? Who are we passionate about serving? What’s relevant or core to our business strategy?

- Provide each workshopper with some "Target" stickers from FigJam's sticker set.
    - If < 3 participants: Each participant gets 2 stickers to vote with. You can vote on the same item.
    - If > 3 participants: Each participant gets 1 sticker to vote with.
- Move the selected Job Performer to the Job Canvas’s Job Performer section. 
- You can keep the unselected Job Performers in this open area in case you want to reference them later to explore additional JTBD Canvases for different Job Performers.

### Exercise 3: Brainstorm Main Jobs [set timer for 15 minutes]

Next up is to select the [Main Job](/handbook/product/ux/jobs-to-be-done/#main-job-where-do-you-want-to-innovate) you want to focus on for this JTBD Canvas. The Job Performer and Main Job are closely related and will end up being the focus for the rest of this canvas. 

Again in an open area of the FigJam, consider the following: What are all of the Jobs our selected Job Performer is trying to get done in our Domain/Field? List them all on individual sticky notes. Consider what the primary task or objective is that the Job Performer is trying to accomplish (get done) or an activity they’re trying to complete.

#### Select a Main Job via Note & Vote [set timer for 5 minutes]

To help you determine which Main Job you want to focus on for this Job Performer’s Job Canvas, ask: What’s worth going after? What are we passionate about? Which can we best support? What’s relevant or core to our business/strategy? What is the primary task or objective that the JP is trying to accomplish (get done)?

- Provide each workshopper with some "Target" stickers from FigJam's sticker set.
    - If < 3 participants: Each participant gets 2 stickers to vote with. You can vote on the same item.
    - If > 3 participants: Each participant gets 1 sticker to vote with.
- Move the selected Main Job to the JTBD Canvas’s Main Job section 
- Move the unselected Main Jobs to the Related Jobs section as these can be investigated in separate JTBD Canvases/research later.

### Exercise 4: Brainstorm Aspirations [set timer for 15 minutes]

Finally, this will be the last exercise for this workshop to consider what does our Job Performer aspire to become after completing this Main Job. 

One last time, in an open area of the FigJam, consider: What are all of the aspirations our selected Job Performer is wanting to become after achieving our Main Job? What are they dreaming about becoming when they achieve or complete the Main Job? List the all of the aspirations you can think of on individual sticky notes. Continue to ask Why to ensure you’re at the highest, aspirational level.

#### Select an Aspiration via Note & Vote [set timer for 5 minutes]

To help you determine which Aspirations you want to focus on for this JP’s Job Canvas, ask: What’s worth going after? What are we passionate about? Which can we best support? What’s relevant or core to our business/strategy?

- Provide each workshopper with some "Target" stickers from FigJam's sticker set.
    - If < 3 participants: Each participant gets 6 stickers to vote with. You can vote on the same item.
    - If > 3 participants: Each participant gets 3 sticker to vote with.
- Select the top 3 voted Aspirations and move them to the JTBD Canvas’s Aspirations ssection leaving the unselected aspirations behind for consideraton later, if necessary.

# Pre-Workshop 2: Investigation Interviews & Interview Synthesis

The goal of this phase is to understand the Main Job by conducting qualitative interviews with representative Job Performers. This will help us understand and fill in the bottom half of the JTBD Canvas: the job steps (Job Map), the Emotional and social Aspects, the Outcomes, and the Job Differentiators.

## Step 2: Conduct Interviews

Recruit 5-10 external participants representing the selected Job Performer of the Main Job you're investigating. It’s recommended to have a moderator and a notetaker, who is in charge of filling out the Job Steps on your JTBD Interview Participant Canvases while the participant and moderator are talking. This will be shown to your participant toward the end of the interview to ensure that we've interpreted what we heard accurately. 

We recommend booking 60 minute interviews. If you see a lot of variance in jobs, talk to more participants until patterns start to become evident.

There is an [interview guide](https://www.figma.com/file/Z4lsAOLH1ANN3pstQFYgSk/Jobs-to-be-done----Playbook-Template?type=whiteboard&node-id=78-2318&t=oMR9VPNke7aIfCoU-4) included in the FigJam template. The intention of this guide is not to act as a script to be followed but instead to provide prompts of focus for the interviewer. The goal of the interviews are to enable the Job Performers to tell you how they complete the Main Job, where do they begin, what do they do before that, what do they do next, etc. and why they do the Main Job. To avoid participants referencing technology, you can ask them to think about these steps in terms of what they might have done 30 years ago to get this job done

- What are the [job steps](/handbook/product/ux/jobs-to-be-done/#job-steps-how-does-the-job-performer-get-the-job-done)? 
- What are their [Desired outcomes](/handbook/product/ux/jobs-to-be-done/#outcomes-how-does-the-job-performer-measure-the-success-of-getting-the-job-done)?
- What are [Related jobs](/handbook/product/ux/jobs-to-be-done/#related-jobs-what-else-is-the-job-performer-trying-to-get-done)? 
- What are the [Job Differentiators](/handbook/product/ux/jobs-to-be-done/#circumstances-what-are-the-factors-or-condictions-that-make-a-difference-in-how-the-job-gets-done)?

# Synthesize and Complete the JTBD Canvas

Now that you have completed your interviews, it's time to go through your notes and sythesize it all together to complete your JTBD Canvas. Think of it somewhat like the Venn diagram of your participants. This means that the elements you hear most often or have high confidence in should be included. Meanwhile, outliers, tangents, or uncommon circumstances should be excluded. 

It's recommended to continue your collaboartion with your Section's UX Researcher to help speed this process up, as some experience in qualitative [data synthesis](https://handbook.gitlab.com/handbook/product/ux/ux-research/analyzing-research-data/) is helpful.


## Step 3: Complete the Job Map

The process you follow when building your Job Map will depend on how you were able to conduct your interviews. Please select the option below that aligns with the process you were able to follow:

### Job Mapping during interviews

If you were able to interview in pairs where you were building and validating the Job Map as you heard it then you might have an easier time of synthesizing it all together into a singular Job Map for your final JTBD Canvas. To achieve a single, synthesized Job Map we recommend you follow these steps:

1. ANDY - if you can, please provide a workflow that makes sense for this version of the Job Map syntheses.


### Job Mapping after all interviews were completed

If you do not have job maps pre-constructed from your participents during the interviews; then you will need to synthesize all of your data across each interview, building up your Job Map as you go. Bringing it all together into a singular Job Map for your final JTBD Canvas. To achieve a single, synthesized Job Map we recommend you follow these steps:

1. In your FigJam, begin reviewing your interview notes and videos. Create new sticky notes for every reference you hear to a step the user does to get the job done. 
2. When you've gone through every participant, organize your sticky notes to ensure there aren’t any repeated ideas, merging duplicates as you go.
3. Rewrite each Job Step ensuring they are functional, beginning with an action verb, in the first person, don't include ANDs or ORs, and are technology/solution agnostic.
4. Now, in an open area of your FigJam, near the Job Step sticky notes you just created, add categories horizontally in an open area labeled, **Beginning**, **Middle**, and **End**, which will be used to orient the workflow and organize the Job Steps in the order of job completion. 
5. Move your sticky notes into the category that aligns most closely with the timing the user would perform this step to get the job done. Asking yourself, does this Job Step happen before this one, does this one happen after, etc.
    1. Continue to look for any duplications you may have missed and combine them as needed.
6. Organize your sticky notes into related vertical stacks for each category. Think of these stacks as related steps the Job Performer would get done, moving vertically down the stack (top to bottom), before they can move on to the next stacked step.
    1. There will be some give and take when doing this to decide when a vertical stack is completed and a new one should be created for the following stage.
7. Finally, add representative Stage names or modes of operation above each Stack, under the Beginning, Middle, and End categories. You can do this as you develop your stacked steps as well as it's likely you'll start to see appropriate Stage names as you are progressing through the above process. 
    1. These Stages should represent high-level single-word verbs that describe the step or stage the Job Performer is in during that Job Step.

## Step 4: Synthesize Outcomes

Continuing with your interview syntheses, move on to gathering together outcome statements from those interviews and then rewriting them into properly formatted Outcome Statements. Parse your notes looking for references to how the Job Performer would measure the success of completing the Main Job. Add a sticky for every potential outcome. Organize them to ensure there aren’t any repeated ideas, merging duplicates as you go. 

Finally, rewrite each potential outcome converting them into a properly formatted Outcome Statement. An outcome statement represents how your Job Performer might judge the success of a particular job step, (i.e., what the Job Performer needs to accomplish). Check the [handbook section](/handbook/product/ux/jobs-to-be-done/#outcomes-how-does-the-job-performer-measure-the-success-of-getting-the-job-done) for more on how to construct an Outcome Statement.

Note: Your Main Job can have between 50 - 100 Outcome Statements which will be validated through an Outcome Opportunity Score survey which can be done in parrallel with the rest of your JTBD Canvas work.

## Step 5: Synthesize Emotional and Social Aspects

### Emotional Aspects

Now you will gather together all of the Emotional Aspect Statements from your interviews and then rewrite them into properly formatted Emotional Aspect Statements. Parse your notes looking for references to emotion-like statements that are referencing how the Job Performer _feels_ while doing the Main Job. Add a sticky for every potential emotion you find. Organize them to ensure there aren’t any repeated ideas, merging duplicates as you go. 

Finally, rewrite each potential Emotion Aspect Statement converting them into properly formatted Emotion Statements. Check the [handbook section](/handbook/product/ux/jobs-to-be-done/#emotional-and-social-aspects-how-does-the-job-performer-feel-while-doing-the-job-how-do-they-want-to-be-perceived-while-doing-the-job) for more on how to construct an Emotional Aspect Statement.

### Social Aspects

Next you will gather together all of the Social Aspect Statements from your interviews and then rewrite them into properly formatted Social Aspect Statements. Parse your notes looking for references to social-like statements that are referencing how the Job Performer _wants to be perceived_ while doing the Main Job. Add a sticky for every potential social/perception you find. Organize them to ensure there aren’t any repeated ideas, merging duplicates as you go. 

Finally, rewrite each potential social statement converting them into properly formatted Social Statements. Check the [handbook section](/handbook/product/ux/jobs-to-be-done/#emotional-and-social-aspects-how-does-the-job-performer-feel-while-doing-the-job-how-do-they-want-to-be-perceived-while-doing-the-job) for more on how to construct an Emotional Aspect Statement.

## Step 6: Synthesize Job Differentiators

Now for the final step before your second and last workshop. Gather together all of the Job Differentiators from your interviews and then rewrite them into properly formatted Job Differentiators. Parse you notes looking for references to differentiator-like statements that are referencing any key factors that _make a difference_ on how the Job Performer will get the Main Job done. Look for specific factors that make a difference. Add a sticky for every potential job differentiator you find. Organize them to ensure there aren’t any repeated ideas, merging duplicates as you go. 

Finally, rewrite each potential Job Differentiators converting them into properly formatted Job Differentiators. Check the [handbook section](/handbook/product/ux/jobs-to-be-done/#job-differentiators-what-are-the-factors-or-conditions-that-make-a-difference-in-how-the-job-gets-done) for more on how to construct an Emotional Aspect Statement.

# Workhop 2: Map and Prioritize

## Step 7: Select Important Job Step(s), Emotional & Social Aspects, and Job Differentiators

Once again you will need to gather your counterparts together in a sync workshop that should take about an hour of sync time to complete. Again, at a minimum, this team should be comprised of the Product Design DRI and Product Manager. Engineering counterparts are a great addition to round out the perspectives and points of view and your Section's UX Researcher would be a great addition as well. You'll gather together on a Zoom call, focusing on the FigJam JTBD Canvas you have been working on.

## Exercise 1: Review Job Map Select a Job Step(s) [set timer for 15 minutes]

Share the Job Map with your team, read through it to ensure everyone understands the steps necessary to get the Main Job done and to confirm that it’s been accurately arranged and phrased. Make any adjustments as necessary, but be sure you’re referencing the interview data and not going off of gut instinct. Don’t forget, the interviews were performed for a reason.

### Select a Job Step(s) via Note & Vote [set timer for 10 minutes]

To help you determine which areas of the Job Map are the most important areas to focus on to affect change for this JobPerformer’s JTBD Canvas, ask: What’s the most important step that’s the hardest to get done? What’s the most critical step?

- Provide each workshopper with some “Target” stickers from FigJam’s sticker set.
    - If < 3 participants: Each participant gets 2 stickers to vote with. You can vote on the same item as many times as you want.
    - If > 3 participants: Each participant gets 1 stickers to vote with.
- Discuss the voted upon steps, discussing why each person voted on their step. The goal is to confirm that the team agrees/aligns on a particular step to work on.
    - It is likely that you'll have a few different steps voted on. Save these for future construction of this JTBD Canvas's Job Stories.
- Select and highlight, circle, or outline the top voted Job Step that you are going to innovate on.

## Exercise 2: Select Emotional Aspect Statements [set timer for 5 minutes]

Share the Emotional Aspect stickies with your team, have everyone read through and understand them.

### Select Emotional Aspect Statements via Note & Vote [set timer for 5 minutes]

To help you determine which Emotional Aspect statements are the most important areas to focus on to affect change for this JobPerformer’s JTBD Canvas, ask: What’s worth going after? What are we passionate about? Which can we best support? What’s relevant or core to our business/strategy?

- Provide each workshopper with some “Target” stickers from FigJam’s sticker set.
    - If < 3 participants: Each participant gets 6 stickers to vote with. You can vote on the same item as many times as you want.
    - If > 3 participants: Each participant gets 3 stickers to vote with.
- Arrange the voted on stickies in a pyramid with the top voted stickies at the top and lowest at the bottom.
- Discuss the top voted upon items and confirm that the team agrees/aligns on the top voted Emotional Aspect Statements and move them to the appropriate space on the JTBD Canvas..

## Exercise 3: Select Social Aspect Statements [set timer for 10 minutes]

Repeat the same process you just performed for the Emotional Aspect Statements for the Social Aspect Statements. Move the top voted Social Aspect Statements to the appropriate space on the JTBD Canvas.

## Exercise 4: Select Job Differentiator Statements [set timer for 5 minutes]

Repeat the same process you just performed for the Emotional and Social Aspect Statements for the Job Differentiator Statements. Move the top voted Job Differentiator Statements to the appropriate space on the JTBD Canvas.

🎉🥳 Congratultations you have successuflly created a validated JTBD Canvas! 🥳🎉

## Step 8: Outcome Opportunity Scores Survey

Now that you have your JTBD Canvas filled in completely, and you have decided on the most important areas to focus on for each section but the Outcome Statements, you need to run an Outcome Opportunity Scores Survey to determine which of these are the most important to your Job Performer for this Main Job. 

To do this you need to construct an Outcome Opportunity Score survey. It is recommended that you work with your Section's UX Researcher when constructing and delivering this survey.

This survey asks two questions about each of your Outcome Statements: 

1. How _important_ is this (outcome) to you?
2. How well is this (outcome) currently being _satisfied_?

It's important that your survey participants are reprensetitive of your Job Perfomer so you’ll want to be careful to screen out any participants who don’t perform the Main Job you’re researching. Try to get close to 50 qualified responses to ensure a reasonable amount of confidence in your scoring.

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

## Step 9: Generate Job Stories

Now that you have a completed JTBD Canvas you can use it to create Job Stories. Job Stories help synthesize and summarize all of the great informaiotn you just put together on your JTBD Canvas. You might end up creating between 3 - 5 Job Sotires to cover the data and insights you gathered and voted on as being the most important aspect of your JTBD Canvas. Bear in mind that good Job Stories describe the pain points that you’re going after and help you empathize with the Job Performer.

To learn more about what Job Stories are, how to write them, and how you can use them to generate design solutions check the [handbook section](/handbook/product/ux/jobs-to-be-done/#job-stories).

### The Job Story Fomula

When I ___________ [am at this Job Step] + [under these conditions-Job Differentiators],
I want ____________ [this New Ability, customer imperative or demand the JP has on the solution],
So I can __________ [reach these Outcomes] + [and have these Emotional/Social Aspects].

<!-- Figure out how to incorporate this into UX Theme workshop

### Align on Ranked Outcomes: Workshop

Here’s where the magic happens. If you have the ranked outcomes by opportunity score from your survey, you have a list of the areas that will be most impactful to your users’ experience of your product. Now is the time to meet with your stakeholders and discuss the top ranked outcomes. Our [FigJam template](https://www.figma.com/file/Z4lsAOLH1ANN3pstQFYgSk/Jobs-to-be-done----Playbook-Template?type=whiteboard&node-id=0%3A1&t=qrubQYZLbPWYJjN3-1) has a workshop template and guide you can use to help address each outcome statement.

A few things to think about during the workshop:

- Are the outcomes already being addressed with current and planned work? If not, should they be incorporated into future planning?
- Where in the product is each outcome done? Are there specific pages, controls, or parts of the UI that we can focus on?
- Who owns each outcome? Are there other teams that ‘own’ some of the areas of opportunity? Who can you speak with to see if they are working on this outcome already?
- What can be done to achieve the stated outcome? Think of some potential solutions.

The result of the workshop should be that the team understands the top opportunities for that Main Job and Job Performer, and has discussed ways to address them. 

You and your team now have a list of the most important areas to focus on - a list that you can share with other teams and stakeholders (even customers!) to help bring clarity and confidence to your product roadmap. 

The list of opportunities will remain relevant for a long time (until you release changes to your product that address the opportunities), because they aren’t based on particular features or solutions, but larger outcomes that users want to achieve. Re-survey your Job Performers about certain outcome statements after your team has made some changes, in order to see if the opportunity score has decreased (meaning you’ve made positive progress to fulfilling the desired outcome).

--> 

<!-- TODO: Connect to UX Themes (in a future MR)>
