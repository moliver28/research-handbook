---

title: Core Marketing Site Architecture Plan
description: Core Marketing Site Changes
---

## Why We Are Proposing This Change


Over the course of FY21 and FY22 it's been challenging to prioritize and make progress on the [Monorepo Project](https://gitlab.com/groups/gitlab-com/-/epics/282). The lack of improvement to the developer experience is compromising the Digital Experience team's efficiency and we're not able to deliver our team's true output.

GitLab's Marketing site is also experiencing several technical issues that affect our current and prospective customers due to the complexities of our current repo. Digital Experience is not able to effectively solve and release fixes quickly which is undoubtedly causing GitLab to lose potential customers.

After considering [3 different approaches](https://docs.google.com/document/d/1yFw0I3zLJESzH2wa4jqs-bpkEEY5xwREjewGIEFhPkE/edit#) we've aligned on the following as our best option.

## What We Are Proposing
1. Making key business driving pages of GitLab's Marketing site build faster, resulting in increased engineering output. Anticipated ROI includes:
    1. **Pipeline times**: currently we are at about 20 minutes average pipeline time. There are some work items that we need to see in the review app (anything requiring a data file), which means it can take **20 minutes to validate a change**.
    1. **Merge train times**: since we work in a shared repository with the handbook that receives so many MRs so often, our work ends up in long merge trains. Looking at a [recent production deploy on `2021-07-23`](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/86942), this MR took closer to **40 minutes to go live**.
    1. **Development feedback loop**: running the Middleman preview server (our local development environment) by itself can take **3 full minutes to reload changes** to our codebase. We implemented a monkey patch on Middleman to cut that down, and reduced it to 46 seconds. [Benchmarks here](https://gitlab.com/tywilliams/worknotes/-/tree/master/middleman_improvement_profiling). But the monkey patch doesn’t work on data-driven routes, so as we move more and more content into Netlify CMS, we spend more and more time waiting on three-minute refreshes in development. 
1. Decreasing size of Marketing site repository to ensure stability
    1. As of `2021-07-23` the files in [our repository](https://gitlab.com/gitlab-com/www-gitlab-com) take up **2.6GB of space**. But GitLab registers it as over **68TB of storage overall**.  
1. Connecting Storybook design system platform with Marketing site to increase design & engineering output
    1. **Current state**: engineers build a single component twice. Once in vue.js in Slippers, and one in www-gitlab-com in ruby
    - **Future state**: engineers build a Vue.js single component in slippers. This component can be directly used in Nuxt.js

## What We Are Not Proposing
1. Changing anything to the current processes of the Handbook
1. Changing any processes to the pages not identified as part of this project

## Goals and Measurement
Ultimately this plan will reduce the time, money, and resources required to meet our team goals. Specifcally we will look to measure:

1. Reduce the time it takes to push a change to production
    1. Local build time
    1. Pipeline time
1. Increase the frequency of MRs
1. Decrease time to close issues
1. Decrease negative effects on Infrastructure and SRE team

## Pages We're Focusing On First
We plan on starting with important pages that are simpler with lower risk, gradually increasing in value and risk.

1. Enterprise
2. SMB
3. Free Trial
4. Pricing
5. Homepage

## Scope
- 6-8 weeks with 2 engineers
- Targeting 5 pages fully transitioned with the remaining page listed below in Scope being completed through Q4

## Roles
DRI: [@laurenbarker](https://gitlab.com/laurenbarker)

**Team Members Involved and Why**

- [@laurenbarker](https://gitlab.com/laurenbarker): Senior Fullstack Engineer who is most familiar with our tech stack, needs, and requirements.
- [@tywilliams](https://gitlab.com/tywilliams): Excellent engineering (specifically Ruby) skills required for this project.
- [cwoolley-gitlab](https://gitlab.com/cwoolley-gitlab): Chad will be a stable counterpart and consult in this effort. Chad's involvement to date as well as his knowledge will greatly increase the success of this project.
- [@mpreuss22](https://gitlab.com/mpreuss22): Product Management. Digital Experience team leader, accountable for successful delivery of this effort.


## Needs

We will require GCP Deployment Keys from Infrastructure. We would also like a new storage container to enable the plan we have for the new build process.

## Scope
1. Move 10 - 25 marketing webpage to new static site generator repository
    1. Pricing
    1. Homepage
    1. Free Trial
    1. Sales
    1. Demo
    1. Install
    1. Features (Landing and single)
    1. Topics (Landing and single)
    1. Solutions (Landing and single)
    1. Enterprise
    1. SMB
    1. Partners (Landing and single)
    1. Comparison Pages
1. Switch to Nuxt.js as SSG
1. Seamless integration with Slippers for efficiency and developer experience
1. Static site generator builds and deploys these 10 - 25 pages to the existing about.gitlab.com domain
1. Digital Experience team reduces maintainance of the www-gitlab-com repository
1. Iteratively migrate parts of marketing site to new repo over FY23
1. <a href="/handbook/marketing/digital-experience/buyer-experience-repository/">Buyer Experience Repository</a>

<img src="https://docs.google.com/drawings/d/e/2PACX-1vQLPxxhS_duhyznvWPP4YcrW_cihzViiKeyDOP9tJWzFpOb2g_cbaNXR7Oy1nYcjpojEzorNUzMj1k-/pub?w=1440&amp;h=1080">

### Benefits
1. Increased output on key business driving page
1. Minimizes breakage for pages like the release post
1. Sets up a migration plan we can continue to work on as new pages become prioritized

### Risks
1. Will need very clear documentation to ensure clarity of what lives where
1. We will most likely need support from Infrastructure
1. Duplication of dependencies on both sites (until entire Marketing site is moved to new architecture)
1. Negative impact to other teams' workflows as we move the single source of truth for some pages elsewhere.
1. Time estimation on related tasks will be inconsistent and incorrect as we learn what to anticipate with a new codebase.

## Definitions
1. Core Marketing Site: Key pages that drive ARR
1. ARR: https://about.gitlab.com/handbook/sales/sales-term-glossary/arr-in-practice/
1. Vue.js: https://vuejs.org
1. SSG: Static Site Generator
1. Nuxt.js: https://nuxtjs.org
