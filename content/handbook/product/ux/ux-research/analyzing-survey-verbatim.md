---
title: "Analyzing survey verbatim"
description: "Guidelines for how to analyze survey verbatim"
---

[Verbatim are comments that are submitted to open-ended questions](https://goascribe.com/blog/verbatim-coding-for-survey-research/) (e.g.,” Is there anything that you’d like to share with us about GitLab’s usability?”) that are typically asked in a survey where respondents can type in their responses in a free-form format. A verbatim analysis helps us understand different phenomena, like the user experience, by looking for themes across those responses.

The process of analyzing verbatim is usually called “coding”, which is not related to writing a computer program in a programming language but describes the process of assigning codes that represent what a verbatim is trying to communicate.

- **A code** [is "a word or phrase that acts as a label for a segment of text"](https://www.nngroup.com/articles/thematic-analysis/#:~:text=Definition%3A%20A%20code%20is%20a,a%20hashtag%20describes%20a%20tweet).
- **Coding** ["refers to the process of labeling segments of text with the appropriate codes"](https://www.nngroup.com/articles/thematic-analysis/#:~:text=Definition%3A%20A%20code%20is%20a,a%20hashtag%20describes%20a%20tweet).
- **Themes** represent groups of codes that tell us something about the user experience.

There are two different approaches to categorizing verbatims.

- **Top-down:** This is when you take a preset list of categories and assign them to individual verbatim. This approach is best used when you already have a sense of what types of codes and themes you’ll observe in verbatims.
- **Bottom-up approach:** This involves creating categories based on an analysis of each individual data point one by one and grouping them to categories that you then refine until you have codes and themes that meaningfully represent your complete sample of responses. This approach takes more time but it is particularly useful if you don’t have a sense of what types of codes and themes you’ll observe and/or want to help control for bias in your analysis. The bottom up approach is also sometimes referred to as a [grounded theory approach](https://en.wikipedia.org/wiki/Grounded_theory) - though we’re not using that term here because the steps that we’ve framed below represent a simplified version of that more academic pursuit.

Analyzing verbatim generally follows the steps below. The exact steps that you take will depend on the scope and goals of your research project.

## Steps in Verbatim Analysis

### Top-down approach

1. Identify your data by sorting and “cleaning” it
1. Assign final themes
1. Create a summary table

### Bottom-up approach

1. Identify your data** by sorting and “cleaning” it
1. *Familiarize yourself with the data
1. *Assign early drafts of codes
1. *Recursively refine and aggregate codes
1. *Elevate codes to themes, iteratively
1. Determine final themes
1. Assign final themes
1. Create a summary table

*= repeat these steps until you have a set of themes that reflect the user experience

## Detailed Notes on Steps in Verbatim Analysis

### 1. **Identify your data by sorting and “cleaning” it.**

Select the data that you’re able to include in your analysis.We use the word “cleaning” to refer to the process of getting rid of the data that’s not helpful to include in the analysis.  Some of your data won’t be appropriate to include in your analysis.

- **Some verbatim will not be actionable because they’re too vague and will need to be excluded from your analysis**. For example, the response of “It’s fine” doesn’t tell us very much about the user experience and would be tagged as NA and put aside.

- **Some of your verbatim will not be actionable because it isn’t directly tied to your research goals or questions will need to be excluded from your analysis**. For example, for the SUS verbatim analysis, we don’t include verbatims that are only positive (e.g., ‘GitLab is a fine tool to help developers’) because they don’t inform our research goal of understanding the current usability problems with GitLab and identifying improvements.

- **Some of your verbatim will include a lot of different ideas or thoughts.** In this case, you can clean your data by breaking those verbatim up so that they are only talking about one topic. This will allow you to more cleanly assign codes. For example, in the SUS analysis we broke up the verbatim paragraph in the table below into two separate verbatim, one about Navigation and one about Search. This makes it easier to assign codes for each section of the original verbatim.

| Original Verbatim | Verbatim 1 | Verbatim 2 |
| ------ | ------ | ------ |
|   “I think there are many things about GitLab, which I am not aware of especially the navigation, our team manages the tickets in GitLab but I was never able to find it in GitLab, I think search needs to be very much improved in GitLab providing more insights in the search bar or dashboard itself regarding everything.”     |   “I think there are many things about GitLab, which I am not aware of especially the navigation, our team manages the tickets in GitLab but I was never able to find it in GitLab”     |   “I think search needs to be very much improved in GitLab providing more insights in the search bar or dashboard itself regarding everything.”     |

### 2. **Familiarize yourself with the data.**

Read all of your data or a random sample of 25% of the data if you’re working with a very large data set with more than 500 total responses - enough to get a sense of the verbatim that you’ll encounter in the complete data set. Your goal is to get a general sense of what the data is like. You want to load the data in your mind to get a sense of it and so that you can confirm that the final themes that you create reflect the data set.

### 3. **Assign early drafts of codes.**

To get started, create early drafts of the codes that you’ll review later. This is the generative part of the analysis so you don’t want to spend too long here. Instead, you can think of this as a short-hand note about what you saw in the verbatim. The goal is for you to be able to look over your list of early drafts of code so that you can see what codes can be aggregated.

In the tables below, we’re using five example verbatims that all aligned with the same theme at the end of the analysis. Keep in mind that these verbatim wouldn’t be grouped together like this during the early phases of the analysis.

Table with examples:

| SUS Verbatim | Early Draft of Codes |
| ------ | ------ |
|    I find the new "rules" section of gitlab-ci not intuitive. The former system was less complex and easier to understand.    |   CI rules not intuitive, complex     |
|   Pipelines are too complex and confusing     |   Pipelines confusing     |
|   My experience is that is really overly complex for my  use case. I came over from bitbucket and this seems to just have way too much going on, when I just want to simply have a private repo that me and my small team work on.     |   Lots going on, wants simplicity     |
|   I find the way different pipelines are presented to be confusing and it's hard to know which are running     |    Pipeline presentation confusing    |
|    Any simplification wherever possible is welcome    |   Wants simplicity     |

Note: If you are performing your analysis in a spreadsheet, it’s helpful to create a [pivot table](https://www.statology.org/crosstab-google-sheets/) that aggregates all the codes that you’ve assigned so far so that you have a quick view of all of the early drafts of codes that you’ve assigned. It’s best practice to do this with the complete data set of all the verbatims before you think about moving on to the next step of refining and aggregating codes.

### 4. **Recursively refine and aggregate codes.**

Revisit and refine your codes after you’ve looked at all of the verbatim, or at least another 25%, to see if you can refine them to make them more accurately reflect new verbatim and the data set overall. For example, you may start with a draft of a code like “feels lost” and then transition that to “confusing” to capture more verbatim with that code. We’ve included more examples in the table below.

During this part of the analysis you should ask yourself questions like:

- If I reframe this code in a different way, am I able to combine it?
- Are these two codes really that different?
- Am I combining codes so much that I’m not able to say something meaningful about each verbatim?
- Is there anything that I’ve read that isn’t reflected in this list of codes - and if yes, what new code do I need to create to reflect that?

Note: If you are using a spreadsheet for your analysis, it’s helpful to sort based on your early drafts of code (e.g., sorting them alphabetically) and to use the find function (e.g., search for all the times that the word complex is used within each code) to help you find ways to combine them.

Table with examples:

| SUS Verbatim | Early Draft of Codes |
| ------ | ------ |
|    I find the new "rules" section of gitlab-ci not intuitive. The former system was less complex and easier to understand.    |   CI rules not intuitive, complex     |
|   Pipelines are too complex and confusing     |   Pipelines confusing     |
|   My experience is that is really overly complex for my  use case. I came over from bitbucket and this seems to just have way too much going on, when I just want to simply have a private repo that me and my small team work on.     |   Lots going on, wants simplicity     |
|   I find the way different pipelines are presented to be confusing and it's hard to know which are running     |    Pipeline presentation confusing    |
|    Any simplification wherever possible is welcome  | w ants simplicity    |

### 5. **Elevate codes to themes, iteratively.**

Now that you have an aggregated list of codes, look for the underlying themes that they inform and assign and refine themes. During this part of the analysis you’re working to identify themes that help you to answer your research questions.

To do this, ask yourself questions like:

- What does this code tell us about the user experience?
- Does creating this theme allow me to combine codes?
- Does this theme address my research question or align with my research goals?
- If I create an aggregate theme does it become so broad that I lose a nuance of the data that I was seeing when I looked at the entire data set?
- If you’re working in a spreadsheet, it’s helpful to keep your original codes in a separate column from your themes so that you can iterate without losing work.

Table with examples:

| SUS Verbatim | Early Draft of Codes | Next Iteration of Codes |
| ------ | ------ |  ------ |
|    I find the new "rules" section of gitlab-ci not intuitive. The former system was less complex and easier to understand.    |   CI rules not intuitive, complex     | CI rules complex |
|   Pipelines are too complex and confusing     |   Pipelines confusing     | Pipelines confusing |
|   My experience is that is really overly complex for my  use case. I came over from bitbucket and this seems to just have way too much going on, when I just want to simply have a private repo that me and my small team work on.     |   Lots going on, wants simplicity     | wants simplicity - private repo for team |
|   I find the way different pipelines are presented to be confusing and it's hard to know which are running     |    Pipeline presentation confusing    | Pipelines confusing |
|    Any simplification wherever possible is welcome    |   wants simplicity     | wants simplicity |

### 6. **Determine final themes.**

Generally, you’ll want to have a maximum of 10 themes. That’s because the more themes that you have, the harder it will be for you to get a clear read on your data. Some themes will not be able to be combined, and that’s ok.

You might need to take a step back here, both conceptually and in terms of an actual break to take a walk, in order to think about ways to reduce the number of themes. For example, in our SUS verbatim analysis we created a separate list of topics (e.g., Pipelines) for each verbatim (e.g., “Pipelines are too complex and confusing”) so that we could create a shorter list of themes that reflected the user experience (e.g., theme: complex / confusing). This allowed us to reduce our SUS themes in verbatim analysis from a list of 23 themes to a smaller list of 10. Creating two different axes, or ways of looking at the data, is called a form of [axial coding](https://en.wikipedia.org/wiki/Axial_coding), which is a bit outside the scope of this handbook page. Suffice it to say that it can sometimes be helpful to create different types of themes to see how they relate to each other. As another example of using an additional coding axis, you might want to code each verbatim for valence, like the positive or negative emotions that they represent, so that you can see how user emotions expressed relate to different topics (e.g., which topics were talked about most positively).

Table with example:

| SUS Verbatim | Final Code | Topic | SUS Theme |
| ------ | ------ |  ------ |  ------ |
| Pipelines are too complex and confusing   |  Pipelines confusing |  Pipelines  | Complex/Confusing |

### 7. **Assign final themes.**

Once you have your finalized list of themes, you’ll need to go back through your data and make sure that you’ve assigned each verbatim with a theme. It’s best practice to assign one theme to each verbatim because this allows you to report on the overall percentages of themes within your data set.

Table with examples:

| SUS Verbatim | Final Code | Topic | SUS Theme |
| ------ | ------ |  ------ |  ------ |
|    I find the new "rules" section of gitlab-ci not intuitive. The former system was less complex and easier to understand.    |   CI rules complex     | CI /CD | Complex/Confusing |
|   Pipelines are too complex and confusing     |   Pipelines confusing     | Pipelines  | Complex/Confusing |
|   My experience is that is really overly complex for my  use case. I came over from bitbucket and this seems to just have way too much going on, when I just want to simply have a private repo that me and my small team work on.     | wants simplicity - private repo for team | Repository | Complex/Confusing |
|   I find the way different pipelines are presented to be confusing and it's hard to know which are running  | Pipelines confusing |  Pipelines  | Complex/Confusing |
|    Any simplification wherever possible is welcome    |   wants simplicity     | Not applicable | Complex/Confusing |

### 8. **Create a summary table with examples for each theme.**

After you define and assign your final themes (or during that process), create a table with examples of each theme as well as a quick description. This will make it easier for your stakeholders to understand what you’ve done.

Table with example:

| SUS Verbatim | Quick Description | SUS Verbatim Example |
| ------ | ------ |  ------ |
| Complex/Confusing | User notes that there is a lot going on with GitLab and/or that it’s very complex | “I think the way different pipelines are presented to be confusing and it's hard to know which are running” |

You’ll want to set aside some dedicated time to work on your analysis. Generally, your analysis will take 1-2 weeks to complete. It will take you a lot longer if you need to context-switch during your analysis because you’ll have to spend time to refamiliarize yourself with the codes or themes that you’ve generated so far, and if you take too long of a break you’ll have to review the data set so that you can make sure that your themes reflect what you saw in the entire data set.
