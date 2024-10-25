---
title: GitLab-sponsored Tufts University Human Factors/Engineering Psychology Capstone Course
description: >-
  On this page, you'll find information about how GitLab participates in the Tufts University Capstone Project in the field of Human Factors Engineering.
---

At GitLab, we believe everyone can contribute. In that spirit, members of the UX Department can volunteer to sponsor a project for the [Tufts University Human Factors Engineering/Engineering Psychology (BS)](https://engineering.tufts.edu/me/current-students/undergraduate-program/bachelor-science-human-factors-engineering-bs) senior-level students to take on during the spring semester.

We engage, support, and recognize students during the capstone design experience. As an industry sponsor, GitLab works with the students to solve an existing problem that is relevant to both Tufts and our organization.

The Tufts Capstone is a great opportunity for GitLab Team Members looking to share their knowledge and learn from each other. Some of the benefits include: 

- Improve your mentoring and coaching skills by working with students who are new to GitLab
- Improve your communication skills, specifically around the concepts we work with every day using clear language that simplifies complexity
- Get more experience with public presence by supporting the design and research community.

## Capstone course overview

The program duration is 15 weeks. Students participate in groups of 4-5 to solve human factors problems or design challenges set by industry sponsors.

Throughout the semester, students will deliver professional-level work, including weekly reports and presentations (with peer review), article reviews, and sponsor meetings/reviews. User research methods and principles will be applied along with project management and planning. The outcome of this course includes students creating a final project video, poster, and presentation which will be presented to the class, department, and sponsors.

## How the project works

Each year in the fall, the project lead recruits GitLab Team Member [volunteers](#how-to-volunteer) and solicits [proposals](#project-proposals) for projects.

At the start of the spring semester (usually in January), the participating students vote on which proposal they would like to work on.

The volunteer team begins meeting weekly with the students once they have decided on a proposal. Weekly meetings continue throughout the spring semester (usually until late April or early May).

At the end of the semester, the students present their results to an internal audience at GitLab (which is open to the entire org). They also present their final project to their professors.

Following the end of the semester, the project lead solicits feedback from volunteers and students, documents the results of the project, and arranges for the following year's project leadership.

## How to volunteer

If you're interested in volunteering for the Spring 2025 semester, you should complete the following **by Monday, November 18th, 2024**:

1. Reach out to your manager for awareness and to discuss how participation might impact your capacity.
1. Add yourself to the [list of volunteers](https://gitlab.com/gitlab-com/Product/-/issues/13669#raised_back_of_hand-volunteers)

1. (Optional but highly encouraged!) [Brainstorm projects](#project-proposals) that would be a good fit for the students.

## Volunteer team composition

For best results, we are looking for 3-5 volunteers from GitLab's UX team, **at least** 1 of whom is a Product Designer and 1 of whom is a UX Researcher. 

## Project proposals

Do you have a project that has been in the backlog for a while now? It could be a good one for the students to take on! In general, the best projects include:

- A loosely defined scope so that the students can bring their creativity. The instructor may suggest the students scope it down so they can complete it in the 4 month semester. For example, improving the GitLab CI/CD onboarding flow. This topic provides enough flexibility to go through the entire design process but also allows the students to scope it down to evaluate specific areas of the onboarding flow and target certain users.
- An opportunity to perform discovery research, design (prototype), and solution validation.
- Async-first approach.

Each project proposal should include a summary with:

- **A title:** A concise and catchy name for the project. This is one of the first things the students will see when choosing their project for the semester.
- **Description:** A summary of the problem, including a problem statement and general background about the concepts that would make sense to beginner, non-GitLab users.

You can propose project ideas for the Spring 2025 semester in the comments in our [volunteer recruitment issue](https://gitlab.com/gitlab-com/Product/-/issues/13669).

### Project ideas

You can use this list of previous projects considered for the Tufts University capstone project to help you get started selecting a project or to help brainstorm ideas.

{{% details summary="Help GitLab increase their community contributions from developers and designers" %}}
[Open-source](https://www.redhat.com/en/topics/open-source/what-is-open-source) principles are at GitLab's heart and are one of the reasons why GitLab users love the product. We depend on the [community to contribute](https://about.gitlab.com/community/contribute/) to our product. Yes, that's right! A developer, or even a designer, could contribute their own code or feature design, and it can end up being added to our product. We want as many community contributions as possible. This project is actually based on [an issue](https://gitlab.com/gitlab-org/gitlab/-/issues/22578) that was brought up by a community contributor. You will focus on understanding how we can improve GitLab to motivate the community to make contributions. You'll be running research with real users to understand developers' and designers' motivations to contribute code or designs. You'll also create mockups (you can use our [Pajamas UI kit in Figma](https://www.figma.com/file/qEddyqCrI7kPSBjGmwkZzQ/Pajamas-UI-Kit)) based on what you learn and then validate them with real users.
{{% /details %}}

{{% details summary="How are developers using runners and why are they important to them?" %}}
Runners are at the core of [Continuous integration and deployment](https://docs.gitlab.com/ee/ci/) (CI/CD), one of GitLab's primary offerings. Thousands of users use our [GitLab SaaS Runners](https://docs.gitlab.com/ee/ci/runners/), managed by our own GitLab team members. For those companies who run their own instances of GitLab and cannot use gitlab.com, [bringing and managing their own runner](https://docs.gitlab.com/runner/fleet_scaling/) is required in order to use CI/CD features. We've done [extensive research](/handbook/engineering/development/ops/verify/runner/jtbd/#runner-enterprise-administration) around the management and observability needs of platform engineers who are responsible for those runners, but what isn't clear is how developers (and others with lower permissions) make use of runners and what runner information is crucial for them to complete their jobs. You will focus on understanding the problem at hand by running research with real GitLab developers. You'll also create mockups [Pajamas UI kit in Figma](https://www.figma.com/file/qEddyqCrI7kPSBjGmwkZzQ/Pajamas-UI-Kit) based on what you learn and then validate them with users.
Interview developers to understand how they are interacting with runners today and what type of information they need to know about runners (primary issue: [Problem validation: How do developers (and others with the same, or less, permissions) interact with runners?](https://gitlab.com/gitlab-org/ux-research/-/issues/225)). Create mockup proposals to present this data that will replace the Project>CI/CD>Runners view and validate them with real developers.
{{% /details %}}

{{% details summary="How are users interacting with project-level analytics and are they satisfied?" %}}
Various [personas](/handbook/product/personas/) make use of our project-level analytics page for a number of different jobs. This can help organizations evaluate how they are doing throughout the [product development workflow](/handbook/product-development-flow/). After implementing these analytics pages, it is difficult to know how useful these are to users and where they use them within their workflows. Are they placed in the most ideal locations for users to efficiently complete their jobs? You will use [UX heuristics](/handbook/product/ux/heuristics) and our [catalog of existing research](/handbook/product/ux/dovetail/) to determine what these pages do well and what they don't. You'll also be redesigning the pages to make use of [Pajamas standards](https://design.gitlab.com/) and validating that these new solutions positively impacts the [jobs to be done (JTBD)](/handbook/product/ux/jobs-to-be-done) for these pages with real GitLab users. Make sure to work with your team to scope this down so you have enough time to complete this project! For example, focus solely on improving the [repository analytics page](https://gitlab.com/gitlab-org/gitlab/-/issues/352074).
{{% /details %}}

{{% details summary="Do GitLab users understand where to find specific information they need on docs.gitlab.com?" %}}
The GitLab documentation site contains a large and growing amount of content. Findability of specific content has been a problem for users. Recognition and understanding of the different sections of content on the docs site is important for users to be able to find what they’re looking for.

- Do GitLab users understand where to find specific information they need on docs.gitlab.com?
- Do GitLab users understand what types of content might be in each section or "bucket"?
- Do the section names (buckets) meet user expectations?
- If users do not understand the buckets, what are some improvements to increase comprehension?

{{% /details %}}

{{% details summary="Using Continuous Integration (CI) when pushing changes" %}}
CI has become a regular practice for companies around the world since it allows them to develop software easier, faster, and with less risk. Automating builds and tests allows developers to commit smaller changes with higher confidence and get feedback on their code sooner. GitLab's CI features were designed years ago, and given the siloed nature of how GitLab team members work internally, there hasn't been a moment to step back and evaluate the experience of CI and merging code as a whole. In this project, you'll evaluate the current experience, including documentation, and speak with real developers who use GitLab to understand their pains when developing/merging code with CI enabled. You'll use the insights you find to make improvements using the Pajamas design system in Figma and test them with real users.
{{% /details %}}

## Project lead

The project lead for the Tufts University Capstone Course project is a rotating volunteer position. Ideally, the same individual should not run the project more than 1-2 years concurrently in order to share the professional development benefits and workload that the role entails.

{{% details summary="Project lead history" %}}

| Year | Name |
| ---- | ---- |
| 2023 | Gina Doyle |
| 2024 | Gina Doyle |
| 2025 | Chad Lavimoniere |
| 2026 | TBD |

{{% /details %}}

### Responsibilities and timeline

The project lead has various reponsibilties before, during and after the student project.

#### Before the project starts

In the lead up to the project start, the project lead should:

- Recruit GitLab Team Member [volunteers](#how-to-volunteer), keeping in mind the ideal [volunteer team composition](#volunteer-team-composition).
- Solicit at least 3 [project proposals](#project-proposals) from GitLab team members for students to vote on.
- Communicate with the Product team DRIs (Product Manager, Product Designer, UX Researcher) that own the feature area for each project proposal.
- Coordinate with the professors, Linda Borghesani (`Linda.Borghesani@tufts.edu`) & Nick Katis (`Nick.Katis@tufts.edu`). They will arrange for the students to choose which proposal.

#### During the project

At the start of the project, the project lead should:

- Collaborate with Legal to have the students sign an [NDA to follow the guidelines of our SAFE framework](https://drive.google.com/file/d/1nvSBG_rA1_bEN0z8kTyQ30uIks_HhNL9/view?usp=drive_link) (:lock: internal only). Once the students select a project in January, it would be best to connect with `@ktesh` with the project start and end date, a short description of the project topic, and all of the students' emails in order for the NDA to be officially issued.
- Create a designated subgroup and public project in the [Tufts University Group](https://gitlab.com/tufts-university) to track the Capstone project progress. Encourage students to create GitLab accounts with their school emails and invite them as `owners` to the project. This can help them get familiar with how GitLab works and the problem they'll be solving. This can also be the place where they access resources or materials they need to complete the project. Check out [this project](https://gitlab.com/tufts-university/tufts-university-capstone) for inspiration.
- Create a Slack channel for daily communication with the students. Follow the [Slack access request guidelines](/handbook/it/end-user-services/onboarding-access-requests/access-requests/#slack-google-groups-1password-vaults-or-groups-access-requests) to include external users in a Slack channel. You can also use [this access request issue](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/20173) as a reference.
- Write up a summary of the selected project proposal and link any resources that would be helpful for the students to look at to gain a better understanding of the concepts they'll be learning. Check out [this markdown file](https://gitlab.com/tufts-university/tufts-university-capstone/-/blob/main/resources.mde) for inspiration.
- Schedule a weekly check-in meeting time for volunteers and students
- Create an agenda document for weekly check-ins so that the students know what to expect. Check out [this agenda](https://docs.google.com/document/d/1vz6VfQZm6awRlu9p5GCZHxGbU_rbK1vMx1C_eFZJKyc/edit?usp=sharing) for inspiration.
- During the first meetings with the students, ask them what skills they are hoping to get out of the project. There are opportunities during the weekly check-ins to focus on those skills and teach the students how they are used in real-world scenarios. An example of this is explaining how to use design systems in Figma, including how to get the library in Figma, adding and editing components, and even making contributions to the Figma kit itself. Previous topics that students have asked about are listed in threads on [this issue](https://gitlab.com/tufts-university/2024/tufts-university-capstone-2023-2024/-/issues/1) along with supporting materials.

While the project is in progress, the project lead should:

- Work with the student team to make sure they have access to the necessary resources (for example, Dovetail) and people (for example, experts or participants to interview). Work with your manager to give students the appropriate access to GitLab tools and projects.
- Hold stakeholder review sessions for larger deliverables, such as the discovery research proposal. These meetings should _at least_ include the Product Manager, Product Designer, and UX Researcher of the product area the project focuses on. These can take place instead of a weekly sync or at a separate time depending on the team's preference.
- Use issues in the project to track sponsor-assigned tasks, such as project prep and reviewing student deliverables.
- Record weekly check-ins and add them to the [Tufts Capstone Project playlist](https://www.youtube.com/watch?v=ykRgoFRjNkE&list=PL05JrBw4t0KoZr3rjOL2xv5c66_C526nE) on Unfiltered. This playlist is private, as some recordings will contain confidential information, such as reviews of confidential research or competitors.
- If the students and professors are interested, organize a final presentation for them in a GitLab-held Zoom meeting. Be sure to:
  - include the Product Department as attendees.
  - Add the event to the GitLab team meetings calendar by following [these steps](/handbook/tools-and-tips/#adding-an-event-to-the-gitlab-team-meetings-calendar).
  - Post in `#whats-happening-at-gitlab` for extra transparency.

#### After the project is completed

After the project has been completed, the project lead should:

- Share a write-up of the students' results in the [GitLab UX Research project](https://gitlab.com/gitlab-org/ux-research) and the [gitLab-org/gitlab project](https://gitlab.com/gitlab-org/gitlab/). Check out [this research summary](https://gitlab.com/gitlab-org/ux-research/-/issues/2909) and [feature proposal](https://gitlab.com/gitlab-org/gitlab/-/issues/465571) for inspiration.
- Coordinate with current and past volunteers to establish who the project lead will be for the following year.

Reach out to `@gdoyle` or `@clavimoniere` on Slack if you have questions. More information including FAQs can be found [here](https://docs.google.com/document/d/1jA93GJCnmLdleKZjSunEqlHv3wSXTjLLvMNq9alXgf0/edit?usp=sharing).
