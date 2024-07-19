---
title: GitLab Trial Guidelines
description: GitLab Trial Guidelines
---

By default, GitLab allows you to trial the entire AI powered DevSecOps platform for free. This gives you full access to nearly all the [Ultimate-tier](https://about.gitlab.com/pricing/ultimate/) and [Duo Pro](https://about.gitlab.com/gitlab-duo/#features) features.

With GitLab, teams can collaborate through the entire Software Development Lifecycle from a single tool, allowing you to develop and deploy more secure software, faster. 

Trialing GitLab will allow you to understand if this solution is the right one for your specific needs and will help you to make an informed decision.

However, the trial period will pass by in the blink of an eye! As the experiment will happen in parallel to your regular activities, it is important to properly scope and prepare. Here are some tips and best practices to maximize the value of your trial.

## Scoping the Trial

A trial is successful when you have been able to use the time allowed to complete your evaluation end-to-end while every decision maker was able to understand if the solution solves their problems, brings value and delivers a return on investment. 

### What are the objectives of the trial?

This is the most important step and will help to ensure an efficient trial. We recommend setting up 3 key goals to validate in 30 days. The goals can be specific problems you are trying to solve, use cases that you want to validate,...

Next, make a list of the features that you will need to configure to support these goals and sort the "must haves" versus "good to haves". 

There are hundreds of features in GitLab, make sure you focus on implementing the ones that support your goals. You can refer to [this list of features per stages of the software development life cycle](https://about.gitlab.com/features/). The rest can be added to the backlog to test at a later stage once the main goals have been evaluated. 

### How will success be measured against these objectives?

Define your success metrics and specific KPIs for each goal.  What does it mean to achieve the goals? How will you know if this goal has been accomplished? 

Make sure you have a baseline to compare to. This is particularly important once you conclude the trial to establish a clear before / after comparison and will be helpful to share with all stakeholders in the decision process.

### What does the decision process look like?

Understand how you will take the decision at the end of the evaluation:

- What information do you need? 
- How will you present the results? 
- Who will decide what the next steps are? 
- What is the exact decision you need to make? Do you merely need to decide to purchase the solution? Or are there other joint decisions such as migrating from existing tools? 

### Who should participate?

Identify all the team members in the organization who should participate in the trial. 

1. Start by designating a project coordinator.
1. List the people who will need to take part in the final decision making process. Who needs to be an active participant in the trial? Who only needs to view a final report with the findings to take the decision? This list could include:
   - The budget owners
   - The impacted team leads and key representatives
   - C-level sponsor
1. Identify the people who will be responsible for implementing and setting up the test inside GitLab.

There is no ideal number as it depends on the size of your company and the scope of the evaluation. However, from our experience, it is best to limit the number to a small team (3 to 10 people max)
At the end of the day, it is important to find a balance:

- With a single person leading the trial, there is a risk of not sufficiently accounting for all users' needs. Other stakeholders involved in the evaluation may have limited access to the results of the trial.
- With a large team, it can be difficult to coordinate the collection of inputs and feedback, align agendas to organize regular check-ins on the trial process,...

Before getting started, understand the goals and success criteria for each participant. Make sure they all have the information to get started (the goals, the feature list to implement, the documentation,...).

### Which projects should be used for testing?

For larger organizations, the trial will be too short to test across every single project. Therefore, it’s good to limit the scope to a few projects where you will be able to implement all the functionalities to validate your use cases.

The selected projects need to be representative enough for the evaluation. Based on our experience, testing on 1 to 3 projects can provide significant results.

For example, an organization evaluating the security and compliance capabilities of GitLab would benefit from testing on 3 projects: a backend, a front end, and an Infrastructure as Code project.

### How to plan the evaluation?

The evaluation should begin when the participants have the bandwidth to take on the trial alongside their regular activities.
Defining a schedule is helpful to make sure that the evaluation will complete on time. Here is an example: 

- Week 0:
  - Kick off meeting
- Week 1 to week 3:
  - 15 to 30 min weekly stand up meeting to keep track of the progress, what is still to be evaluated and to alleviate any blockers or highlight shifts in priorities
- Week 4:
  - Conclude the evaluation and review the metrics achieved for each goal to measure the success of the trial
  - Prepare the internal presentation to the final decision makers if they are not part of the trial team
  - Documenting the whole process with the goals, metrics and weekly progresses will improve collaboration among participants and facilitate the decision process at the end.

### Requesting a Trial

Both prospects and existing customers should request an Ultimate trial by going to the [GitLab Trial Landing Page](https://about.gitlab.com/free-trial), choosing SaaS or self-managed, and then following the provided instructions.

### Notes Regarding Trial Licenses

- If a Premium Trial is required instead of an Ultimate trial, then the customer should request the trial license as defined above. Then the GitLab Account Executive must create a [GitLab Support Internal Request](https://support-super-form-gitlab-com-support-support-op-651f22e90ce6d7.gitlab.io/) (Internal) in order to downgrade the Trial license from Ultimate to Premium. Use either the **GitLab Support Internal Requests for Global customers** or **GitLab Support Internal Requests for Federal customers** request option, then select the **Self-Managed Trial related - Modify an existing Self-managed trial** request type. GitLab Support will create a Premium license and email it to the user.

## Trial Guidelines

### Existing SaaS Customers

A trial license cannot be added to an existing licensed SaaS namespace.  Since some features such as project and group access tokens are not available with a trial license, using a separate trial namespace ensures data integrity of production data and reduces confusion for end users in the production instance.  SaaS customers should create a new namespace for their trial and use one of the options in the next section to populate data into the namespace. To create a new namespace, you should login to gitlab.com and [create a new top-level group](https://docs.gitlab.com/ee/user/group/manage.html#create-a-group).  If your production group name is `ACME123` and you want your trial group to be `ACME123-trial`, then the trial group URL should be `https://gitlab.com/ACME123-trial`, **not** `https://gitlab.com/ACME123/ACME123-trial`.

SaaS trials have the following limitations:

- GitLab shared runners available (with credit card verification) but the number of minutes is limited.  If additional minutes are required, the [GitLab Sales team](https://about.gitlab.com/sales/) can request an increase on the customer's behalf.
- Only one [Project Access Tokens](https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html) is available with a trial license and [Group Access Tokens](https://docs.gitlab.com/ee/user/group/settings/group_access_tokens.html) are not available on a trial license.

### Existing Self-Managed Customers

While self-managed customers are not prevented from trialing a higher tier license on their production instance, it is strongly discouraged.  Adding a higher tier trial license will confuse end users who may not be aware of which features are a trial vs available for ongoing production use.  Using a separate self-managed instance for a trial will prevent this confusion and ensure data integrity of production data is preserved. Alternatively, existing self-managed GitLab customers have the option to trial higher tier features in SaaS.

If a customer decides to activate a trial on an existing instance, they will need to [add the trial license](https://docs.gitlab.com/ee/administration/license_file.html) to their instance.  Once the trial license has expired, the instance will revert back to the non-expired production license.

Customers who choose a self-managed trial will need to install a single node [Omnibus instance](https://docs.gitlab.com/omnibus/) and start the trial there.  After completing the self-managed trial form, they will receive an email with additional instructions for getting starting with the trial.

### Extending an Existing Trial

All internal requests regarding licensing, subscriptions, trials, and grace period extensions should be filed using [the GitLab Support Internal Request form](https://support-super-form-gitlab-com-support-support-op-651f22e90ce6d7.gitlab.io/). Customers should not be cc'd on Internal Requests.

Once you access the form, enter your email and choose "GitLab L&R Internal Request for Global Customers" or "GitLab L&R Internal Request for US Federal Customers" to renew and extend a trial license.

Note you also need to have [Zendesk Light Agent account](/handbook/support/internal-support/#requesting-a-zendesk-light-agent-account) before you make this request.

References

- [Support Internal Requests](/handbook/support/internal-support/#internal-requests)
- [Support Super Form](/handbook/support/readiness/operations/docs/gitlab/support_super_form/)

### Populating your group with project data

- When determining which projects to import into the trial namespace, we recommend considering the following criteria:
  - Use copies of your own existing groups/projects - see [General Approaches](#general-approaches) below
  - Use GitLab Security demo projects - GitLab provides a set of [security demos](https://gitlab.com/gitlab-org/security-products/demos) to show how the various security scans work

- Only one [Project Access Tokens](https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html) is available with a trial license and [Group Access Tokens](https://docs.gitlab.com/ee/user/group/settings/group_access_tokens.html) are not available on a trial license

#### General Approaches

- [Copy Groups and Projects](https://docs.gitlab.com/ee/user/group/import/index.html)
  - When copying from one GitLab.com namespace to another, you must copy all subgroups and projects.  This is not recommended for customers with a large number of groups and projects.
  - Only [these](https://docs.gitlab.com/ee/user/group/import/index.html#migrated-group-items) groups items are migrated, no others
  - Only [these](https://docs.gitlab.com/ee/user/group/import/index.html#migrated-project-items) project items are migrated. Note these are the same project items that are migrated with file exports (described in the next section)
- [Migrate Projects using file exports](https://docs.gitlab.com/ee/user/project/settings/import_export.html)
  - Only [these](https://docs.gitlab.com/ee/user/project/settings/import_export.html#items-that-are-exported) project items are migrated. Note these are the same as above even if the lists look a little different.
- [Project Forking](https://docs.gitlab.com/ee/user/project/repository/forking_workflow.html)
  - This works like standard forking with a copy of the repository and branches
  - You will not have access to a lot of the project items that you get with the previous two approaches
- Added strategies
  - [Repository Mirroring](https://docs.gitlab.com/ee/user/project/repository/mirror/index.html)
    - Any of the above approaches can be combined with mirroring to make sure branches, tags, and commits are synced
    - Items such as Merge Requests and issues are not synced
- What to set up
  - [Autobuild](https://docs.gitlab.com/ee/topics/autodevops/stages.html#auto-build) will use a Dockerfile contained in the project root directory or cloud native build packs to detect the application type and build it
  - Since some project configurations like CI/CD variables, container and package registries, and tokens, do not get imported some suggestions are as follows
    - [SAST](https://docs.gitlab.com/ee/user/application_security/sast/), [Secret Detection](https://docs.gitlab.com/ee/user/application_security/secret_detection/), and [Dependency Scanning](https://docs.gitlab.com/ee/user/application_security/dependency_scanning/) can be run without building your project. Simply add them to the CI file and comment out any build / deploy sections if they cannot be set up again
    - [Container Scanning](https://docs.gitlab.com/ee/user/application_security/container_scanning/) - needs an application built into a container and pushed to the container registry, usually created via a build job that precedes the container scanning job, but does not require a deploy job
  - In order to validate [DAST](https://docs.gitlab.com/ee/user/application_security/dast/) or [web api fuzz testing](https://docs.gitlab.com/ee/user/application_security/api_fuzzing/), you must have a deployed application available to scan.  You might want to [connect a Kubernetes cluster](https://docs.gitlab.com/ee/user/clusters/agent/) to make evaluating these features easier.
- For customers wanting to evaluate portfolio and project planning, they can view the [GitLab Organization](https://gitlab.com/groups/gitlab-com/) to view the epic list and boards, roadmap, milestones, and other portfolio features.  Note: some features are only available to logged in users.
