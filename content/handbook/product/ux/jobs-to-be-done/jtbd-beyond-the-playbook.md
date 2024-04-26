---
title: JTBD - Beyond the Playbook
description: >-
  JTBDs can be used to clarify and refine strategic opportunities in many of the research and design activities GitLab conducts.
---

## Using Jobs to be Done in mixed methods research

JTBD can be used in many UX research methods, from surveys to usability benchmarking. Once you validate your [JTBD through interviews](/handbook/product/ux/jobs-to-be-done/deep-dive/#how-do-i-discover-jtbd-relevant-to-my-group) and create your JTBD Canvas, you can use pieces of the canvas to inform numerous GitLab processes. For example, you can use the needs and circumstances of your jobs to help you increase the realism and readability of your solution validation tests. Likewise, the main jobs can help you [create recruitment screener](https://docs.google.com/document/d/13ywnQHXOHNgF4F4IcJksAqrnyI0-si1R2MbsRS-Rgdc/edit#heading=h.47623lbekxlj) options to find the right participants for your study.

### Using JTBD to help build Recruitment Screeners

An effective [recruitment screener](/handbook/product/ux/ux-research/write-effective-screener/) collects information about the respondent without revealing too much information about the study they may participate in. Typically, a screener would have a question asking the participant's job title and perhaps a question about common tasks they perform. JTBD can help by using the job performer and their main job to create valid screening options. When picturing an ideal candidate, try to identify the matching job performer. Use that performer's main job instead of a job title, and we can use fewer screening questions to reveal the same information as before.

For example: Say we have a study that needs security professionals using the vulnerability report page.

   Using [GitLab's list](/handbook/product/personas/#list-of-user-personas) of user personas, we could create a list of job titles used by security personas to generate a list of more than 10 titles, such as Security Analyst, Security Operation Engineer, Security Consultant, Application Security Engineer, etc. This list would be very cumbersome for a respondent to answer and may not reflect the accurate day-to-day role of your ideal candidate.


   Using the [JTBD for the Secure and Govern](/handbook/product/ux/stage-group-ux-strategy/sec/jtbd/#job-statements) stages, we could identify two or three ideal jobs/job performers for our study. Look at these job statements for example: "I identify risk in my org's assets" and "I address detected business-critical vulnerabilities." Additionally, we can include jobs from other workflows in the Secure section if we want to include invalid options to weed out unfit candidates. This screener question would be a handful of options that participants can select, and the result is a participant that accurately reflects your ideal candidate.

To make it easier, you can save all of the main jobs for your stage as a template and allow only selected ones for each study you have, like in [this example](https://docs.google.com/document/d/1317XpsPeRBdpMb3rrVnPPPSR90xVyiWAJI6IZsot3PM/edit?usp=sharing). If participants do not match their main job, that can signal you to go back and accurately check how you [discovered your JTBD](/handbook/product/ux/jobs-to-be-done/deep-dive/#how-do-i-discover-jtbd-relevant-to-my-group).

### Using JTBD to help write Solution Validation Scripts

If you conduct [solution validation](/handbook/product/ux/ux-research/solution-validation-and-methods) to test a design, you will likely [make a script containing tasks](/handbook/product/ux/ux-research/writing-usability-testing-script/#tasks) for your users to attempt and provide feedback on. A significant factor in the quality of your feedback is how realistic the tasks are for the users without biasing them with the obvious solution. One way to do that is by utilizing the circumstances, job process, and needs of the job you are building for.

You can follow these steps to incorporate JTBD within your script:

1. Identify the main job your user is trying to accomplish when using your feature. The goal of every service or product should be to provide a solution for the user's problem. So, identify which job your design is helping to solve.
1. It may also be helpful to identify potentially invalid candidates and use their job statements to [create screener questions](https://docs.google.com/document/d/13ywnQHXOHNgF4F4IcJksAqrnyI0-si1R2MbsRS-Rgdc/edit#heading=h.47623lbekxlj) to disqualify those respondents.
   - Identify the circumstances, process, and needs for that job. This information should be included in the JTBD Canvas when [discovering your jobs](/handbook/product/ux/jobs-to-be-done/deep-dive/#how-do-i-discover-jtbd-relevant-to-my-group).
1. Use the circumstances to establish the scenario(s) at the beginning of your tasks. This provides the participants' context for the tasks, similar to a user's context when performing their role.
   - For example, a previously discovered [JTBD Canvas](https://app.mural.co/t/gitlab2474/m/gitlab2474/1683826081288/619308d762c47782e3ed36fdd6260914c55b0913?sender=u8b3435b2496ba7d2d7ba2448) for the Security Policy group found that users implement security controls when "A new security policy was published in their organization." To turn this circumstance into a scenario for an unmoderated test, we can say, "In this scenario, your organization recently published a new security policy with the parameters provided below. Your task is to implement the necessary security control(s), so your assets comply with the security policy."
1. Create solution validation tasks by using the job process and smaller jobs within it. This will avoid biasing users with information they may not have otherwise. Since JTBD uses language identified during user research, it gives users a more natural experience.
   - For example, the first step in implementing security controls is "gathering the security policies." To turn this job step into a task, we can say, "First, please gather the necessary security policies." Participants will read this and naturally understand their task - and we don't have to reveal where we want them to go.
1. Use your job's needs to create the post-test evaluation questions. As you craft your [wrap-up questions](/handbook/product/ux/ux-research/writing-usability-testing-script/#usability-study-wrap-up-questions), you can relate the task to the participant's larger goal or the desired outcome.
   - For example, the outcome that a policy creator wants most is to "reduce the likelihood of a potential threat in my organization's assets." To turn this into a question, we can say, "On a scale from 1-7, where 1 is not useful at all, and 7 is extremely useful, how useful was this feature for you in reducing the possibility of a security threat in your organization?" You may also want to use metrics from the [usability benchmark](/handbook/product/ux/ux-research/usability-benchmarking/#metrics) to get a quantitative comparison.

### Using JTBDs to Inform a Heuristic Evaluation

[Heuristic evaluations](/handbook/product/ux/heuristics/) can help team members understand the user's current experience with the product. These evaluations uncover insights that may require direct changes to improve usability or further research to increase organizational understanding of a problem. Heuristic evaluations usually take 1 to 2 meetings between a Product or UX stakeholder and a UX Researcher.

You can follow these general steps to integrate the JTBD Framework into your heuristic evaluation:

1. Identify the job the user is trying to accomplish with your feature. The goal of any product or service is to provide a solution for the user's (or customer's) problem - so identify which of your stage's jobs the design is helping solve.
1. Identify the process and needs for that job. This information should be included in the JTBD Canvas when [discovering your jobs](/handbook/product/ux/jobs-to-be-done/deep-dive/#how-do-i-discover-jtbd-relevant-to-my-group).
1. Create a planning document for your heuristic evaluation similar to [this template](https://docs.google.com/document/d/1MJXl2d-dYLm8m9sisTmESJcK2D5uThQrLwVMipIopxI/edit?usp=sharing).
1. Use the job process to identify the steps to take during the evaluation process. This is the general workflow you should follow.
1. Use the circumstances to establish the scenarios to create for the evaluation. Sometimes it requires following the steps again, but from a different perspective.
1. Use the related jobs and collaborate on a consensus for which jobs are out of scope.
1. Explore [GitLab's list of heuristics](/handbook/product/ux/heuristics/#heuristics) or use the well-known [Nielson Norman 10 Usability heuristics](https://www.nngroup.com/articles/ten-usability-heuristics/). Determine which heuristics apply to your evaluation.
1. Create questions to ask each other during the evaluation by re-phrasing the applicable heuristics.
   - For example, one of the heuristics is "User control and freedom". We can turn this into a question by saying, "On a scale from 1-7, where 1 is not useful at all, and 7 is extremely easy, How easy was navigating to and from the tooling?"
1. Designate who is moderating the evaluation and who is acting as the user. The "user" will move through the UI to complete the tasks while the moderator evaluates the progress and asks questions. Both stakeholders are encouraged to provide feedback, but the moderator must ensure all tasks are evaluated.

  -->