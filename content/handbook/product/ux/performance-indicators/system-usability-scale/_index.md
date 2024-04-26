---
title: "System Usability Scale"
description: "The System Usability Scale (SUS) is a performance indicator we use to measure the long term usability of our product."
---

The [System Usability Scale](https://measuringu.com/sus/) (SUS) is a standardized metric used to measure usability perception of computer interfaces. Our current and past SUS scores can be found in the [UX Department Performance Indicators](/handbook/product/ux/performance-indicators/#system-usability-scale-sus-score).

Collectively, SUS consists of ten questions, which are positively and negatively oriented:

1. *I think that I would like to use GitLab frequently.*
1. *I found GitLab unnecessarily complex.*
1. *I thought GitLab was easy to use.*
1. *I think that I would need the support of a technical person to be able to use GitLab.*
1. *I found the various functions in GitLab were well integrated.*
1. *I thought there was too much inconsistency in GitLab.*
1. *I would imagine that most people would learn to use GitLab very quickly.*
1. *I found GitLab very cumbersome to use.*
1. *I felt very confident using GitLab.*
1. *I needed to learn a lot of things before I could get going with GitLab.*

The response scale for each question is a 5-point Likert agreement scale:

| Strongly disagree  | Disagree | Neither agree nor disagree | Agree | Strongly agree |
| :-----: | :-----: | :-----: | :-----: | :-----: |
| 1 | 2 | 3 | 4 | 5 |

We follow these 10 questions with a single open-ended question that asks, *“What problems or frustrations have you experienced while using GitLab?”*

These questions are delivered in survey format to users of the product.

## SUS and GitLab

We adopted the System Usability Scale at GitLab in FY20-Q1. We deploy the survey bi-quarterly to both our SaaS and Self-Managed users. This has allowed us to understand the overall usability of our product and track changes over time. We’ve begun relying on SUS as a [KPI for the UX Department](/handbook/product/ux/performance-indicators/#system-usability-scale-sus-score) and we have multiple OKR-related efforts underway to try and improve our score.

With this emphasis, it’s important that SUS is deployed in a rigorous and sustainable manner.

## Executing SUS

We track the SUS Survey results in GitLab where there is an epic of the current results of the [System Usability Scale (SUS) Survey](https://gitlab.com/groups/gitlab-org/-/epics/1455).

To ensure that our SUS metric can be reliably and sustainably collected, and that it accurately represents our user population, in FY21-Q4 we developed a new method for collecting SUS with the following requirements:

- **Sustainable:** We can sample a sufficient number of users without exhausting our userbase. A user should not receive a SUS survey invite more than once per year.
- **Segmentable:** We pre-define the segments of users we care about, and we collect a sufficient number of responses for any segment for which we want to derive a score (but only those predefined segments). If we want to alter the segments we’re targeting, we can modify those in future quarters.
- **Verified criteria:** We’ll pull that latest data from the data warehouse or Marketo to identify appropriate users, including things like a user’s plan and account age.
- **Active users:** We can target users who we know have recent experience with the product, including minimum usage within a certain time period or usage of multiple stages.
- **Randomized:** Other than the criteria we define, we should feel confident the users we invite to respond do not skew in any particular direction, such as geographic location or organization size.

### Regular participant criteria

- **Recently active:** We use a minimum threshold of 10 product events across at least 2 stages in the previous 30 days. An ‘event’ is an indicator that users are doing something in a certain area of GitLab. This approach has two goals: we’re targeting people who have used multiple stages, and eliminating people with limited exposure to our features and the usability of our experience. It also ensures respondents have recently used GitLab and have a higher likelihood of experiencing recent improvements.
- **Sample size:** For SaaS users we target an ***n* of 200 for each cohort** with a total ***n* of 800**. This allows us to calculate a score with a high degree of confidence.

#### Regular cohorts

We have defined the following cohorts that we will track over time:

- **Paid users:** Users that are associated with a paid subscription (whether that subscription was purchased or gifted by GitLab)
- **Free users:** Users that are not currently associated with any paid subscriptions and are using the Free plan.
- **Experienced users:** Users that have a tenure of 180 days or more.
- **New users:** Users with a tenure of less than 180 days.

Note that these cohorts will overlap, so we won't necesssarily be gathering 200 responses for each one. For example, an experienced free user would be considered part of both the *Free user* cohort and the *Experienced user* cohort, and would be counted for both of those quotas.

### Self-Managed cohort

In order to understand how the experiences of our Self-Managed users compare to those of our SaaS users, we conduct a limited SUS measurement of Self-Managed users every other quarter. The majority of these users are recruited via Marketo.

**The Self-Managed cohort has the following criteria:**
- **Self-Managed user:** Users self-report that they are a user of a Self-Managed instance of GitLab.
- **Recently active:** Users self-report that they have been active on a Self-Managed instance in the last 30 days.
- ***n* = 100**: Given that Self-Managed users are harder to recruit for, we want to lower our sample size as to not exhaust Self-Managed users in the Marketo panel and to acquire data in a timely fashion. **This cohort will have a higher margin of error compared to our regular cohorts.**

### Distribution

We distribute survey invites via email using Qualtrics, our survey tool. Responses are incentivized using a sweepstakes ([Promotional Games workflow](/handbook/legal/ux-research-pilot/)). Those that complete the survey are entered into a quarterly sweepstakes to win one of three $200 gift cards. The Self-Managed cohort is incentivized at the same rate of three $200 gift card winners in order to maximize the response rate of the limited population.

We aim to start sending email distributions every couple of days in the last month of the quarter until we achieve our desired sample size.

To ensure respondents meet our activity criteria, we pull a new user list for every email distribution. Anyone who has been sent a SUS survey in the previous 12 months is scrubbed from the list.

### Analysis & Reporting

We summarize results and calculate scores for SUS on a fiscal year quarterly basis. For each quarter, we report an overall SUS score and SUS scores for any predefined segments. We also report average scores for each individual question for those same segments.

## Calculating SUS scores

SUS is scored on a 0-100 scale. We normalize the scores for each question. For positive-oriented questions, we subtract one from the original score. For negative-oriented questions, we subtract the original score from five. This gives a consistent scale for all responses of 0-4. We then add up the scores for all questions and multiply that sum by 2.5 to get our final score. For example, if the sum of a user’s responses to the ten questions is 30, we’d multiply that sum by 2.5 to get a SUS score of 75.

Calculating scores for the individual questions that make up the SUS is not part of the standard process. We do it to gain additional directional insight into how we’re doing with specific aspects of the experience. For example, if the average response for the question about the system being inconsistent is lower than the average, this tells us that inconsistency is a problem we should investigate further.

Our individual question scores mirror the scale used for the overall SUS score. This allows us to understand how individual questions are performing relative to the overall score. To get this score, we take the normalized single question score and multiply it by 25. For example, if the average response to a single question is 2.5, we then multiply that average by 25 to get a SUS-equivalent score of 62.5.

## Interpreting SUS scores

Even though SUS scores are on a 100-point scale, they are not percentages and should not be treated as such. [Jeff Sauro recommends](https://measuringu.com/interpret-sus-score/) communicating SUS scores as percentiles. We include a percentile and letter grade using the proprietary scale Sauro developed whenever we report a SUS score.

Company targets for our SUS score are: 73 by Q4-FY24, 77 by Q4-FY25, and 82 by Q4-FY26.

| Grade | SUS | Percentile | Adjective |
| ----- | ----------- | ------- | ---------------- |
| A+    | 84.1-100    | 96-100  | Best Imaginable  |
| A     | 80.8-84.0   | 90-95   | Excellent        |
| A-    | 78.9-80.7   | 85-89   |                  |
| B+    | 77.2-78.8   | 80-84   |                  |
| B     | 74.1 – 77.1 | 70 – 79 |                  |
| B-    | 72.6 – 74.0 | 65 – 69 |                  |
| C+    | 71.1 – 72.5 | 60 – 64 | Good             |
| C     | 65.0 – 71.0 | 41 – 59 |                  |
| C-    | 62.7 – 64.9 | 35 – 40 |                  |
| D     | 51.7 – 62.6 | 15 – 34 | OK               |
| F     | 25.1 – 51.6 | 2– 14   | Poor             |
| F     | 0-25        | 0-1.9   | Worst Imaginable |

## Communicating out the themes

Every quarter, we review feedback from survey respondents and code the responses into high-level themes. We use these themes to highlight trends over time and gain a deeper understanding of the areas that are impacting the usability of GitLab. The survey verbatims and corresponding list of themes are first shared in a Google spreadsheet so that all team members can access the data. We encourage product managers and product designers to review the feedback and search for existing or related issues in the GitLab issue tracker.

### SUS verbatims share out by stage

Every quarter, an issue will be created (see [issue template](https://gitlab.com/gitlab-org/ux-research/-/blob/master/.gitlab/issue_templates/SUS%20Categorization%20By%20Stages.md)) and assigned to the PDMs to categorize the verbatims that fall into their stage(s). Once the verbatim is categorized by stage, it will automatically get populated in the stage-specific tab within the SUS document. The stage-specific verbatims then will be distributed via designated Slack channels.

| Stage      | Slack channel(s) to communicate findings UXR  |
|------------|-----------------------------------------------|
| Manage     | #s_manage                                     |
| Plan       | #s_plan                                       |
| Create     | #s_create                                     |
| Ecosystem, Foundations, Integrations     | #g_manage_integrations, #g_manage_foundations |
| Verify     | #s_verify, #ops_section                       |
| Package    | #s_package, #ops_section                      |
| Release    | #g_environments, #ops_section                 |
| Configure  | #g_environments, #ops_section                 |
| Monitor    | #s_monitor, #ops_section                      |
| Secure     | #s_secure                                     |
| Govern     | #s_govern                                     |
| Growth     | #s_growth                                     |
| Fulfillment| #s_fulfillment                                |
| Enablement | #s_enablement                                 |
| ModelOps   | #s_modelops                                   |

Use the following sample messaging text when sharing out the stage-specific insights:

```
Hello :wave: - We just completed analyzing the `Q# FY##` System Usability Scale (SUS) data! I wanted to share the verbatim that's relevant to us in the `fill in stage name here` stage. Here's a sampling:

* `Stage UXR to paste example in italics`
* `Stage UXR to paste example in italics`

You can view the remaining `#` quotes here --> `link to the Sheet, on the specific tab`

Let me know if you have any questions or if you're interested in pursuing some of these!
```

## SUS Responder Outreach

We include a question at the end of the SUS survey that asks whether respondents would be interested in discussing their responses with a GitLab team member. We have created a process for Product Managers (PM) and Product Designers (PDs) to conduct follow-up interviews so that they can get a better understanding of the usability issues respondents are experiencing. This outreach is optional for team members but highly encouraged. Learn more about the process on the [SUS Responder Outreach page](/handbook/product/ux/performance-indicators/system-usability-scale/sus-outreach/).

## Limitations

### We can only cut by the segments we predefine

It’s natural to try and slice survey response data by every facet imaginable to try and find unexpected insights. However, if we don’t have a large enough sample size for that particular slice, we might calculate a score in which we don’t have high confidence, and that could even be misleading. This is why we define the segments we want to understand before we distribute our survey, so we can ensure we hit our quotas and collect a sufficiently large sample for each of those segments. This allows us to have high confidence that a score accurately represents a given segment.

### SUS is a lagging, incomplete indicator

We deploy SUS on a regular basis, but that doesn’t mean we should expect to see improvements reflected in the score immediately. Once we ship a product change, people first have to experience it in sufficient numbers such that our survey reaches enough of them. This can take different amounts of time depending on the usage of a given feature and is effectively impossible to estimate. We also have no way of knowing what the effect of single product change will be on a user. Something that is a major pain for a large number of users may be a minor annoyance for the person we survey. We shouldn’t expect single enhancements to drive increases in the SUS, but rather, that sustained enhancements over time will lead to improvements to our overall usability, which in turn should increase our SUS score over the long term.

## Frequently Asked Questions

**Q: Can we calculate a SUS score for a particular stage or feature?**

A: SUS is meant to be a measure of the usability of GitLab in an overall sense. Our users do not necessarily conceptualize the product as a collection of stages. The questions we ask are also framed at an overall level, and we do not ask about their usage or feelings about any particular features. Thus, calculating a score for a particular stage assumes that the responses people give reflect their usage of a certain stage when we have no way of knowing that for certain.

**Q: Can we calculate a SUS score for a certain segment of users?**

A: To calculate a score for a particular segment of users (such as a certain plan type), we must have a sufficient sample size to ensure we can be confident our score is valid and not the result of random chance. When we want to calculate a score for a subset of users, we predefine it before starting collection. This allows us to modify our recruiting criteria to ensure we collect enough responses.

**Q: What is a sufficient sample size to be able to calculate a score for a subset of users?**

A: There isn’t a single answer to this question, as sample size depends on how many people in the overall population fit your criteria. The larger the overall population, the smaller the sample size needs to be as a proportion of that population. You can use a [sample size calculator](https://www.surveymonkey.com/mp/sample-size-calculator/) to estimate your size requirements. Sometimes we can satisfy sample requirements using people we’ve already surveyed if they meet the additional criteria. Other times, we will need to specifically identify and target users to meet our sample requirements.

**Q: How can I find open issues that relate to SUS?**

A: Issues that relate to SUS will have one of the labels indicated in the [How we use labels](/handbook/product/ux/#ux-labels) section of the UX Department Handbook. If you see an issue that relates to usability problems that fall in line with recent SUS findings, feel free to add one of the labels to it. When in doubt, reach out to your manager or ask in the `#ux` Slack channel.
