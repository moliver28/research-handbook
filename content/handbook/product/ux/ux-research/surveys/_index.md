---
title: "Surveys"
description: "Using surveys as a UX research method"
---

Surveys are a powerful tool which outputs qualitative and quantitative data at scale. They are fairly easy to execute, but at the same time ***one of the most difficult methods to execute correctly***.

Surveys are not unique to UX; they are used across many disciplines. For UX Research, we use surveys to collect data from users (or future users) on their demographics, attitudes, opinions, needs, and behaviors.

### The two types of survey questions

We can classify the types of survey questions into two groups:

1. Quantitative survey questions
     - The goal of quantitative survey questions is to understand data/a question around ***how many people***.  Examples include: a satisfaction rating, if users prefer one option over another, what features users prefer, etc.
     - You [analyze quantitative surveys](/handbook/product/ux/ux-research/quantitative-data/) by counting the number of people who selected each option presented and then use [descriptive statistics](https://www.qualtrics.com/experience-management/research/descriptive-research/).
1. Qualitative survey questions
     - The goal of qualitative survey questions is to understand more about how people feel behind a given research topic.  Examples include: how users feel about a particular experience or any type of open-ended question.
     - You analyze qualitative survey questions by tagging the responses with themes and then counting the themes, similar to a [thematic analysis](https://www.nngroup.com/articles/thematic-analysis/).

It's sometimes useful to include both quantitative and qualitative survey questions within a single research effort.  For example, you can start with qualitative surveys to establish an understanding of the scope of the topic and inform survey question choices to use within a quantitative survey. Or, you can use a quantitative survey question and then follow up with an open-ended qualitative survey question to understand why they selected their answer.

### When to use a survey

When [determining which research method to use](/handbook/product/ux/ux-research/choosing-a-research-methodology/), you should start with your research questions and envision how those can be answered, given the available research methods.

Perhaps the most important item to consider when determining if you want to use a survey: if your research questions require [open-ended questions](https://www.nngroup.com/articles/open-ended-questions/) to answer them, then using a survey probably isn't the best method for you. That's because too many open-ended questions lead to a variation in responses and often a longer survey. Sometimes respondents don't give enough depth or breadth and get fatigued with open-ended questions. Also, this structure of survey can be time intensive to analyze. If your research questions don't require open-ended questions, then a survey could be a good method for you.

|         **Quantitative research questions**         |            **Qualitative open-ended research questions**            |
|:----------------------------------------------------:|:-------------------------------------------------------------------:|
| How satisfied are GitLab users with a given feature? | Why are users either satisfied or unsatisfied with a given feature? |
| Which DevOps workflow is the most common?            | Why are different DevOps workflows challenging?                     |
| What feature is the most popular?                    | How will different features impact user workflows? Why?             |

Additionally, a you might use a survey if:

- You need a large number of respondents to answer your research questions with a high degree of confidence. This may include validating insights from a qualitative research study to make decisions more confidently.
- You need your research questions answered in a relatively short amount of time
- You want an efficient way to achieve the above
- You don't need deep qualitative data
- Your research questions can be answered through quantitative data

If you're unsure if a survey is right for your needs, it's suggested that you get [crisp on your research questions](/handbook/product/ux/ux-research/defining-goals-objectives-and-hypotheses/#step-2---start-populating-questions-we-need-answers-to) to understand what kind of data is needed to answer those questions. That exercise will often make it easier to reveal the best research method to use.

### Pros and cons of a survey

A survey comes with pros and cons, which you should consider before committing to the method.

**Pros:**

- Can be completed by respondents at their own convenience
- Low cost relative to the number of respondents
- Able to reach a large number of respondents
- When designed well, can be efficient to analyze
- Time-efficient in terms of sampling a large number of respondents
- Provide a standard response from respondents (in other words, data comes in for each question in the same format), making analysis more streamlined when looking for patterns

**Cons:**

- Difficult to get right because users can interpret questions in so many ways and we can introduce biases when writing survey questions
- Easy to get wrong
- Can introduce biases when writing survey questions
- Often chosen as the wrong research method
- Usually have a low completion rate, requiring more effort around sampling/recruiting
- Some questions are sometimes skipped by respondents
- It's easy to send out a survey to a large group without knowing if it is going to the "right" people

### Self-reported data

Surveys rely on self-reported data, which is important to note.  As a guideline, if we already have that information, we shouldn't ask it; as it's a tax on the respondent to answer those survey questions and can be less accurate. Examples of information we may already have are:  license type, user tenure, or company size. Additionally, respondents can also make mistakes or possibly lie, making the responses less reliable.   In cases when we have that information, we should utilize it.  Or, if we don't have that information, and want to avoid self-reported data, we should be using a different research method to obtain it (example: a [user interview](/handbook/product/ux/ux-research/facilitating-user-interviews/) where you're observing behaviors).

### How to conduct a survey

If you've decided that a survey is the right method to use, you can follow the steps below to conduct a survey:

1. [Define goals, objectives, and hypotheses](/handbook/product/ux/ux-research/defining-goals-objectives-and-hypotheses/)
1. [Determine your sample and sampling method](/handbook/product/ux/ux-research/surveys/sample-sizes-for-surveys/)
1. [Design your survey](/handbook/product/ux/ux-research/surveys/designing-your-survey/)
1. Peer review
     - Have at least one other person review your survey.  It's ideal if they're experienced in conducting surveys and know to look for common pitfalls.
1. [Pilot your survey](/handbook/product/ux/ux-research/surveys/piloting-your-survey/)
1. [Create a recruitment request issue to distribute your survey](/handbook/product/ux/ux-research/recruiting-participants/#open-a-recruitment-request-issue)
1. [Analyze the data](/handbook/product/ux/ux-research/quantitative-data/)
