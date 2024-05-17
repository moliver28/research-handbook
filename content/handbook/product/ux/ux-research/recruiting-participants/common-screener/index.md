---

title: "The Common Screener: an efficient way to screen for multiple studies"
description: "Outline the approach for using a Common Screener to find participants for research studies at GitLab"
---

A Common Screener uses the same questions to recruit across multiple studies. This can be done when teams that would recruit on their own are using the same types of background questions to identify their participants (for example, common tasks, industry, company size).

Each team member who uses the Common Screener for a specific study selects their own inclusion criteria for each question. For example, one study might need users from companies with less than 100 employees, while another study might need  users from companies with more than 1,000 employees (see Figure 1). Each study would set different inclusion criteria for the same, common, question about company size.

![Common Screener Figure](CSfigure1.png)

The above figure illustrates how the same questions can be used to match participants to various studies using the Common Screener approach. In this example, a participant from a company with more than 100 people might be screened out of the study if a single screener is used for the study, but may be matched to another study when the Common Screener approach is used. This is possible because each study sets different inclusion criteria for the same question about company size. In this example, the Common Screener approach also allows us to match participants who align with different Personas based on a JTBD question that asks them to select their key tasks.

Common Screeners leverage Qualtrics functionality to find matches between study inclusion criteria and participant profiles, as framed by their responses to common questions. As in the example, we might include a question with a list of JTBD tasks from our handbook to identify the Persona for each respondent. Then, we'll use their response to match them with studies that are looking for that Persona. We can use that in combination with a question about company size to match respondents with different studies that are looking for the same Persona from different company sizes and/or different Personas from the same company size.

These kinds of screeners are best suited for studies that are being planned early and have similar questions across participants, like company size.

### What are the benefits of using a Common Screener?

Common Screeners do the following:

- Help teams pool resources around recruiting
- Reduce the number of recruitment issues, gratuity issues, research screeners, and recruitment pushes that DRIs need to create or support per quarter
- Allow for participants who might not meet all the criteria for one study to be included in another one
- Minimize the amount of context switching (for example, fewer trips to the recruitment database) required while recruiting for each study
- Decrease the effort needed to find participants (for example, the same social media post can support multiple studies), and the number of communications sent to prospective participants

### Is there an example of how a Common Screener has been used?

The Verify and Package teams worked on their first GitLab iteration of a Common Screener in early 2022. We were able to use the same screener to recruit across 5 Problem Validation studies (more [here](https://gitlab.com/gitlab-org/ux-research/-/issues/1808)).  We are currently utilizing this process to see if we’re able to use the same screener to support recruitment for both Problem and Solution Validation studies across the second half of 2022 (more [here](https://gitlab.com/gitlab-org/ux-research/-/issues/1894)).

Our pilot focuses on User Personas across Verify and Package teams:

- [Presley, Product Designer](/handbook/product/personas/#presley-product-designer)
- [Sasha, Software Developer](/handbook/product/personas/#sasha-software-developer)
- [Devon, DevOps Engineer](/handbook/product/personas/#devon-devops-engineer)
- [Sidney, Systems Administrator](/handbook/product/personas/#sidney-systems-administrator)
- [Sam, Security Analyst](/handbook/product/personas/#sam-security-analyst)
- [Rachel, Release Manager](/handbook/product/personas/#rachel-release-manager)
- [Alex, Security Operations Engineer](/handbook/product/personas/#alex-security-operations-engineer)

Our common screener uses questions about a few key areas to help us match respondents with research studies, including:

- Company size
- The different features (for example, Merge Trains) and products employed by the companies where respondents work (for example, GitLab Dependency Proxy, JFrog Artifactory, and/or Sonatype Nexus)
- Whether respondents use GitLab SaaS or Self-Managed, the GitLab features they use (for example, Merge Requests)
- What time zone they are in
- Common tasks that we can use to map them to our target Personas

### What’s an example of a question used in a Common Screener?

A question about key tasks is a good example of something that can be used in a Common Screener, because different answers to the same question can help us match respondents to different studies.

Asking respondents to select their common tasks from a list that covers multiple Personas also minimizes the response bias introduced by respondents who select tasks that they don’t actually complete in the hopes of being included in a research study. Below is an example of what a task-based question might look like:

> Which of the following are part of your primary job responsibilities? Select all that apply.
>
> - Lead the design of an effective, empathetic, and efficient user experience
> - Translate product designs into application code
> - Deploy, build, and release code
> - Write application code to implement features and bug fixes
> - Maintain and scale infrastructure and configurations
> - Work with teams to implement security fixes and/or run security tests
> - Run and test pipeline builds
> - Coordinate and orchestrate releases
> - Build and implement tools to enhance security

Table 1. Lists tasks from the handbook page that help us differentiate which respondents map to each User Persona included in our pilot.

| User Persona | Differentiating Task |
| ------ | ------ |
| [Presley, Product Designer](/handbook/product/personas/#presley-product-designer) | Lead the design of an effective, empathetic and efficient user experience |
| [Sasha, Software Developer](/handbook/product/personas/#sasha-software-developer) | Translate product designs into code |
| [Devon, DevOps Engineer](/handbook/product/personas/#devon-devops-engineer) | Deploy, build and release code; Provide pipeline definitions and CI templates; Use code to implement features and bug fixes |
| [Sidney, Systems Administrator](/handbook/product/personas/#sidney-systems-administrator) | Maintain and scale infrastructure and configurations; Build servers deploy to them and/or help developers to do so|
| [Sam, Security Analyst](/handbook/product/personas/#sam-security-analyst) | Work with teams to implement security fixes; Run security tests and/or flag potential security issue |
| [Rachel, Release Manager](/handbook/product/personas/#rachel-release-manager) | Run and test pipeline builds; Automate pipelines; Coordinate teams across releases |
|  [Alex, Security Operations Engineer](/handbook/product/personas/#alex-security-operations-engineer) | Address security incidents; Build and implement tools to enhance security |

### Are there requirements for using a common screener?

Yes, use of a Common Screener approach requires that:

1. Everyone who recruits participants via the Common Screener needs to use the same Gratuity Spreadsheet that is associated with the coordination issue. That helps us to make sure that we’re not using duplicate participants across studies.
1. All those who use the Common Screener create a dedicated recruitment request for each study where they'd like to use the common screener.

### What steps do you take if you think your team(s) could benefit from using a Common Screener?

Here are the steps for PMs and Designers to take if you’d like to set up a new Common Screener:

1. Create an [issue](https://gitlab.com/gitlab-org/ux-research/-/issues/new#) to help you coordinate the screener using the Common Screener coordination issue template.
1. Identify the target Personas who you’d like to recruit.
1. Identify the types of studies (e.g., Problem Validation) that you’d like to recruit for and the formats that you’ll use (e.g., 60 min Zoom interviews).
1. Identify the GitLab product stage teams who might leverage the common screener.
1. Ask your UXR for a template Common Screener (in Qualtrics or as a document) that you can use to get started.
1. Create a copy of that template.
1. Add an open-ended question for feedback on each Common Screener question where team members can ask for adjustments (e.g, propose a new task that’ll be added to a list of tasks)
1. Ask each team member to provide feedback by responding to your draft in the Qualtrics Survey format.
1. Incorporate those changes.
1. Create an [incentive request](https://gitlab.com/gitlab-org/ux-research/-/blob/master/.gitlab/issue_templates/Incentives%20request.md) and ask for a Gratuity Spreadsheet that you'll use for all participants recruited from the Common Screener.
1. Tag your UXR or ReOps person in the coordination issue to confirm that you're ready to start recruiting into your new common pool of participants.

Once the Common Screener is set up, there are a few more steps to follow.

1. Link the research issue for your studies and the recruitment issues for each one to the Common Screener coordination issue
1. Tag ReOps in the study specific recruitment issue to ask them to pull contacts for you and to do another recruitment push so that there are fresh participants for the next person. Your UXR may also help with this.
1. If participants are selected to be contacted for a study, it will be noted in the “study be included in” section of the Qualtrics data dashboard for the Common Screener by a UXR or ReOps person. Once participants are contacted for a study, we leave them out of the recruit for subsequent studies. We track participation in our gratuity spreadsheet

### What steps do you take if you’d like to use an existing Common Screener?

1. Find an existing and active Common Screener Coordination Issue (see table below) that you think would be a good fit.

| Common Screener | Types of Studies |
| ------ | ------ |
|   [Benchmark Loop Stages Common Screener](https://gitlab.com/gitlab-org/ux-research/-/issues/2246)     |   60, 90 or 120 min Zoom sessions  or moderated usability studies   |
|   [2023 CI/CD Solution Validation Studies](https://gitlab.com/gitlab-org/ux-research/-/issues/2284)   |   Surveys, 20 min online unmoderated studies, 30 or 60 min interviews or moderated usability sessions  |
|   [Problem Validation + Foundational Research 2023](https://gitlab.com/gitlab-org/ux-research/-/issues/1894)   |  30 or 60 min Zoom interviews, 60 min interviews, 30 or 60 min task based moderated usability studies   |

1. Tag the owner of the Common Screener Coordination issue (linked above) and let them know:

  - what study you’d like to recruit for
  - the Personas you are looking for
  - when you’d like to start recruiting participants and the number of participant you are looking for

1. The owner of the coordination issue will ask you to fill out the Common Screener as if you were your ideal participant and will create a filter that the ReOps team can use to help you shortlist participants.
