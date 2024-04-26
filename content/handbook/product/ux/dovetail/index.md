---
title: "Documenting research insights in Dovetail"
description: "The GitLab UX Research team's guide to documenting insights in Dovetail"
---

The UX Research team uses [Dovetail](https://dovetailapp.com/) to document all the research insights discovered through GitLab’s UX research program. Research insights can be gathered through methods such as user [interviews](/handbook/product/ux/ux-research/facilitating-user-interviews/), [usability testing](/handbook/product/ux/ux-research/usability-testing/), surveys, card sorts, tree tests, customer conversations, and more.

#### Why do we document research in Dovetail?

The UX Research team has [always faced challenges](https://about.gitlab.com/blog/2019/07/10/building-a-ux-research-insights-repository/) in finding the best way to create research reports that are easy to digest and access. When sharing research insights via PDFs, Google docs, and even GitLab issues themselves, it was difficult to track and share study findings. Additionally, since we are often asked to readily recall information we've learned in prior studies, it can be tedious to read through old reports, look through pages of interview notes, or rewatch video recordings to find the information we need. This problem compounds, since we are continuously producing research reports and the wealth of information grows infinitely.

The goal of Dovetail is to make research findings searchable, concise, and easy to reference.

### Getting started with Dovetail

1. Learn the basics of Dovetail in under 10 minutes by watching this [video](https://dovetailapp.com/help/videos/getting-started-with-dovetail/). For a more in depth overview of how GitLab uses and navigates through the Dovetail platform, watch this [private GitLab Unfiltered video](https://www.youtube.com/watch?v=SnyJDR5yjYU).
1. Read about Dovetail's [video highlights and transcription feature](https://dovetailapp.com/features/video-audio-transcription-for-research/).
1. Watch a [walkthrough video](https://www.youtube.com/watch?v=mUCx_3HhRn0) on how to conduct qualitative data analysis within Dovetail.
1. Check out [Dovetail's Help Center](https://dovetailapp.com/help/) for commonly asked questions.
1. Check out this [project](https://dovetailapp.com/projects/7fa7fb97-1c9e-41ab-ad3a-55a32987b048/readme) (internal access only) for a great example of how to organize your data, use tags, and turn highlights into insights.

### The UX Research team's guide to documenting insights in Dovetail

#### Creating a project

At the end of each research study, the study's DRI is responsible for documenting the research in Dovetail. The first step is to create a new project in Dovetail, under the folder that corresponds to your product stage (e.g. Manage).

1. Go to `Projects`.
1. Locate your stage group.
1. Click `New project` and select the template you need for your project. You will be redirected to the Project's ReadMe file.

#### Updating the ReadMe file

In the ReadMe file, update the name of your project from `Problem or Solution Validation Research` to something more recognizable. Ensure you add a link to your research request/brief.

As part of the template, you'll need to provide a link to your research issue in the GitLab UX Research project. Make sure to use the `UX Problem Validation`, `UX Solution Validation`, or `CM Scorecard` tag to ensure proper tracking of your research issue.

There is no need to add further information about your project to the ReadMe file unless you wish to do so. If you'd like to provide more context, you can describe the research methodology used in the study and any background information you may have about the research participants.

#### Importing raw data into Dovetail

Click `Data` in the left-hand menu. Add your raw data to the project, such as notes/observations taken during research sessions, video recordings, support tickets from customers, user sentiments from social media, and so on. Organize and structure your raw data in a way that resonates with you.

The following video demonstrates how to use the import feature and how to structure your data around research questions / tasks:

{{% youtube "dod5EUYYgDk" %}}

### Tagging data in Dovetail

Dovetail helps you identify patterns and themes that emerge across your research data and turn those into insight statements. Once you have imported all your raw data, you are ready to start highlighting and tagging content. Think of a highlight as anything interesting that you heard or observed during a research session (for example: a user's pain point or motivation). Tag highlights with the feature/area of GitLab to which the highlight relates (for example, ‘Merge Requests’) and the persona (for example, ‘Sasha: Software Developer’) who made the comment, if possible.

A bit like [affinity mapping](https://en.wikipedia.org/wiki/Affinity_diagram), tags in Dovetail help you identify and keep track of patterns that emerge across your research data. A single highlight can have one or many tags associated with it. More help can be found on our [Analyzing and synthesizing user data](/handbook/product/ux/ux-research/analyzing-research-data/) handbook page.

#### Enable Global Tags in your Project

As a way to keep GitLab's research more consistent, we encourage everyone to utilize GitLab's global tags available in Dovetail, which are maintained by the UX Research Team. When research is performed in a consistent manner, it makes gathering insights across stages or over long periods of time much easier. To help move towards that goal of consistent research, try to incorporate global tags and follow our tagging best practices when synthesizing qualitative research. A good goal to have is 50% of tags in your project coming from the global tags.

There are two sets of tags available for your projects. You may use either set whenever you want, as well as your own custom tags, but be aware you will have to enable the tags for **each project**. When summarizing your research, first look at the global tags, and then the section tags when appropriate, and lastly create your own tags. The differences between the two sets of tags is shown below:

- [GitLab Global Tags](https://gitlab.dovetailapp.com/settings/tags/1imTtBuMIPQSxT46mHjDeX) which contain tags that can be used across all stage groups for a wide range of projects, but particularly useful for solution validation. Try to look at these tags first.
- [GitLab Section Tags](https://gitlab.dovetailapp.com/settings/tags/79TyjJnDkNehFnB4h9DfTp) which contain tags organized by [section](/handbook/product/categories/#devops-stages), which can be used for more feature specific, feature-related work.

This [video](https://www.youtube.com/watch?v=Cmh4yNu8fxE) contains a walkthrough of the steps below to enable a global tag on your project:

1. Open the project you are working on
1. Click on the `plus` icon next to `Tags`
1. Choose `Use an existing board`
1. Under the `Workspace` tab, select `GitLab Global Tags` and `Link to project`
1. You will now see `GitLab Global Tags` appear as a board under `Tags`
1. Repeat steps 3-5 to enable `GitLab Section Tags`
1. Repeat this process for each project you are working on

##### How to use Global Tags with your notes

Just like manually created tags, global tags can be used by highlighting the text you want to tag, and clicking on the global tag you have enabled. This is shown in the image below:

![Dovetail Note](dovetail-note-tag-example.png)

Tags are organized into categories, so you may want to familiarize yourself with the organization of tags and their categories.

##### When to use Global Tags

Global tags can be used as a way to supplement manual tagging by providing standardization and structure. They are not meant to be the only source of tags used in your project. Due to the uniqueness of each research project, there may often be times when creating a new tag is more helpful than using one of the global tags.

**Example:** When conducting a user interview, try to identify the users' feelings towards a particular experience. There may be a number of times when you will want to use tags from the GitLab Global Tags such as `feature request` & `frustrated` when talking about an experience. Those insights may not be specific enough for your research, so creating additional tags like `wants a drop-down for options` can also be used.

***A good goal to set for your project is to have 50% of your tags come from global tags.***

If you are unsure about whether to create your own tag or use an existing global tag, first think about what would generate the most informative insights. If a global tag can be used while preserving the accuracy of the insights, then stick to that. Otherwise, follow our best practices for creating tags in dovetail.

##### What tags are available?

GitLab team members may view the [Global Dovetail Tags](https://docs.google.com/spreadsheets/d/1N3ALqllthLveuH6jof2pv0HrJUm5k7k5HSjGeh1fgdM/edit?usp=sharing) Google Sheet that is maintained by the UX Research team.

GitLab Global Tags are organized into six categories:

| Category      | Details       |  Example         |
| ------------- | ------------- | ---------------- |
| User Action   | These tags can be used to indicate what a user did while using the UI. | A user might be `unsure what to do` when given a task, and then proceeds to go `down the wrong path`.|
| User Feedback | Useful to describe what a user said during their research session.<br>Also a set of tags with generic options (A through D) which can be used in [Solution Validation](/handbook/product/ux/ux-research/solution-validation-and-methods/).<br>| A user might have a `feature request` when talking about a functionality they want in their workflow.<br><br>Or, the user could `Prefer Option B` in a design evaluation.                                            |
| User Emotion  | These tags are related to the user’s attitude towards the UI, like in a [usability test](/handbook/product/ux/ux-research/usability-testing/) or walkthrough. | A user could feel `overwhelmed` when being presented with a UI. |
| Workflow      | Can be used to track the user’s actions in their workflow specifically.<br><br>Also a subset of tags with generic task numbers (1-10), which can be used for [usability tests](/handbook/product/ux/ux-research/usability-testing/) or [UX Scorecards](/handbook/product/ux/ux-scorecards/#option-b-perform-a-formative-evaluation).| You could use the `unsuccessful end task` tag if a user finished a series of tasks, but missed a key deliverable.<br><br>Or, you may want to keep track of when a user finished `task 1` and `task 2`.|
| Personas      | Each tag relates to one of our [user personas](/handbook/product/personas/#list-of-user-personas), or characteristics of those personas.<br><br>Use these tags when looking for jobs or features that correspond to certain personas.| When a user configures a static scanner, they could be `Amy, Application Security Engineer`.<br><br>Or, if you are performing [foundational research](/handbook/product/ux/ux-research/foundational-research/) on the users’ organization, you could use `enterprise` or `start-up` tags. |
| JTBD          | Most of the tags relate to the various stages in [mapping jobs](/handbook/product/ux/jobs-to-be-done/mapping-jobs-to-be-done/#how-to-create-a-job-map).<br><br>Can be used when performing foundational jobs research such as [contextual inquiries](/handbook/product/ux/ux-research/problem-validation-and-methods). | When conducting a contextual, a user may talk about monitoring their pipeline, which could be tagged with `Step in Job - monitor`.|

#### Global tag definitions

##### User Action Tags

| Tag      | Definition       |
| ------------- | ------------- |
| Workaround |  Participant completes task in a way other than the predicted “Happy Path”. |
| Seeks help | Participant needs assistance from the moderator or other sources during the session. |
| Unsure what to do | Participant gets stuck and is not confident on how to proceed. |
| Focuses on UI element | Participant is spending time on a particular interface element. |
| Confused by UI element | Participant is confused by a particular interface element.  |
| Undo previous action | Participant reverses the progress they made in the task. |
| Understands goal | Participant gives the desired feedback on the main task. |
| Blocker | Participant is blocked from completing their task. |
| Configuration | Participant makes changes to settings or their profile. |

##### User Feedback Tags

| Tag      | Definition       |
| ------------- | ------------- |
| Prefer option A | Participant picks option A. |
| Prefer option B | Participant picks option B. |
| Prefer option C | Participant picks option C. |
| Prefer option D | Participant picks option D. |
| General insights | Feedback that is outside of the scope of a particular product team or feature set. |
| Feedback on UI | Feedback that is focused on design elements. |
| Feedback on UX | Feedback that is focused on the user experience. |
| Opportunity | Feedback that is focused on the user experience. |
| Pain point | A specific or general instance where the product gets in the way of the participant’s task. |
| Feature request | Participant makes requests for a specific and particular feature to be added to the product. |
| Feature requirement | Participant identifies the aspect(s) of a feature that the product should have for the current project. |
| Missing functionality or feature | Participant expresses that the product is missing some functionality or feature. |
| Answer to question | Participant answers a question that was posed by the moderator. |
| Rationale for decision | Participant clarifies or expands upon their thinking on a particular topic. |

##### User Emotion Tags

| Tag      | Definition       |
| ------------- | ------------- |
| Positive | Participant expresses positive statements towards the product. |
| Mixed feelings | Participant expresses conflicting feelings or emotions towards the product. |
| Negative | Participant expresses negative statements towards the product. |
| Delighted | Participant feels or shows great pleasure towards the product. |
| Excited | Participant is very enthusiastic and eager towards the product. |
| Interested | Participant shows curiosity or concern about something towards the product. |
| Satisfied | Participant is content or pleased towards the product. |
| Indifferent | Participant feels unconcerned or has no particular interest towards the product. |
| Confused | Participant is unable to think clearly about the product. |
| Frustrated | Participant expresses distress or annoyance towards the product. |
| Disappointed | Participant is sad or displeased in the product.  |
| Dissatisfied | Participant feels a large amount of displeasure towards the product.  |
| Overwhelmed | Participant feels inundated or that something is too much to handle in the product. |

##### Workflow Tags

| Tag      | Definition       |
| ------------- | ------------- |
| Workflow | Participant goes through a particular end to end experience in the product. |
| Task 1 | Participant performs the first task. |
| Task 2 | Participant performs the second task. |
| Task 3 | Participant performs the third task. |
| Task 4 | Participant performs the fourth task. |
| Task 5 | Participant performs the fifth task. |
| Task 6 | Participant performs the sixth task. |
| Task 7 | Participant performs the seventh task. |
| Task 8 | Participant performs the eighth task. |
| Task 9 | Participant performs the ninth task. |
| Task 10 | Participant performs the tenth task. |
| Start task | Participant starts the task. |
| Successful end task | Participant completes the task successfully.  |
| Unsuccessful end task | Participant gets to the end of the tasks, but did not fulfill a primary requirement. |
| Failed task | Participant unable to finish a task. |
| Doesn’t understand task | Participant is confused and misinterprets the task instructions. |
| Mistake in workflows | Participant makes a mistake in the workflow which is easily correctable. |
| Critical mistake in workflow | Participant makes a mistake in the workflow which cannot be reversed or corrected. |
| Group-level interaction | Participant approaches UX with a group-centric orientation. |
| Project-level interaction | Participant approaches UX with a project-centric orientation. |
| Group/project | Participant has feedback about either a group or a project. |

##### Personas Tags

| Tag      | Definition       |
| ------------- | ------------- |
| Parker, Product Manager | Participant’s role or tasks match with [Parker](/handbook/product/personas/#parker-product-manager). |
| Delaney, Development Team Lead | Participant’s role or tasks match with [Delaney](/handbook/product/personas/#delaney-development-team-lead). |
| Presley, Product Designer | Participant’s role or tasks match with [Presley](/handbook/product/personas/#presley-product-designer). |
| Sasha, Software Developer | Participant’s role or tasks match with [Sasha](/handbook/product/personas/#sasha-software-developer). |
| Devon, DevOps Engineer | Participant’s role or tasks match with [Devon](/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/persona-snippets/user-personas/devon/). |
| Sidney, Systems Administrator | Participant’s role or tasks match with [Sidney](/handbook/product/personas/#sidney-systems-administrator). |
| Rachel, Release Manager | Participant’s role or tasks match with [Rachel](/handbook/product/personas/#rachel-release-manager). |
| Simone, Software Engineer in Test | Participant’s role or tasks match with [Simone](/handbook/product/personas/#simone-software-engineer-in-test). |
| Allison, Application Ops | Participant’s role or tasks match with [Allison](/handbook/product/personas/#allison-application-ops). |
| Ingrid, Infrastructure Operator | Participant’s role or tasks match with [Ingrid](/handbook/product/personas/#ingrid-infrastructure-operator). |
| Dakota, Application Development Director | Participant’s role or tasks match with [Dakota](/handbook/product/personas/#dakota-application-development-director). |
| Amy, Application Security Engineer | Participant’s role or tasks match with [Amy](/handbook/product/personas/#amy-application-security-engineer). |
| Isaac, Infrastructure Security Engineer | Participant’s role or tasks match with [Isaac](/handbook/product/personas/#isaac-infrastructure-security-engineer). |
| Alex, Security Operations Engineer | Participant’s role or tasks match with [Alex](/handbook/product/personas/#alex-security-operations-engineer). |
| Cameron, Compliance Manager | Participant’s role or tasks match with [Cameron](/handbook/product/personas/#cameron-compliance-manager). |
| New or unknown persona | User persona that we haven’t previously identified in our [handbook](/handbook/product/personas/). |
| Buyer personas | Users who serve as the main buyer in an organization or a champion within an enterprise that drives the buying conversation. |
| Team leader | User who is in a management role and does have direct reports. |
| C-Suite Executive | User who is a high-ranking executive in an organization (CEO, CIO, CFO, etc.). |
| Individual Contributor | User who is not in a management role and does not have direct reports. |
| Enterprise | Companies with 1,000 or more employees. |
| SMB- Small Medium Business | Companies with up to 1,000 employees. |
| Start-up | Young company founded to develop a unique product or service. |
| SaaS | Current GitLab SaaS user. They log into GitLab.com to access their account. |
| Self-managed | Current GitLab self-managed user. They maintain their own GitLab instance. |

##### Jobs and Tools Tags

| Tag      | Definition       |
| ------------- | ------------- |
| Step in job (define) | Participant understands how a process works. |
| Step in job (locate) | Participant understands and navigates to where they need to go. |
| Step in job (prepare) | Participant prepares for a major step in a job. |
| Step in job (confirm) | Participant reviews or validates a step in the job. |
| Step in job (execute) | Participant executes a step in the job. |
| Step in job (monitor) | Participant monitors the outcomes of the step in the job. |
| Step in job (modify) | Participant modifies the previous step in the job. |
| Step in job (conclude) | Participant finishes the steps in the job. |
| Job goal | A clear demonstration of what the purpose of the job is for. |
| Possible JTBD insight | Participant mentions a general insight related to a JTBD. |
| Tool in job | Participant points out tools that are used when performing a job. |
| Critical tool in job | Participant points out tools that are crucial for performing a job. |

##### Can we add more tags?

The global tags are an iterative process which will continue to grow in the future. We strongly encourage feedback from stakeholders so we can tailor the list to suit as many needs as possible.

If you believe the tag library is incomplete or in need of editing, please send a message to the [#ux_research](https://gitlab.slack.com/archives/CMEERUCE4) Slack channel. We expect to add tags incrementally over time as more feedback and research is done, and therefore may not add a particular tag immediately, so creating a custom tag can be a helpful short-term solution.

#### Dovetail Tagging Best Practices

Many projects will need a mix of custom tags in addition to some global tags. In Dovetail, you can create any tag you want to help distill your user data into pieces of evidence for insights. While this is useful, this can also be problematic. Here's why:

- These tags do not carry over from one project to another, making it difficult to identify similar insights across projects.
- The tags can be named anything. This results in a large number of similarly-themed tags, which makes it difficult to search by insights across projects (for example: tags such as `opportunity`, `opportunities`, `opportunity for UI`).

To properly manage research insights within Dovetail, here are some do's and don'ts when creating your own tags.

##### Do's

- Tag the data while it's fresh in your mind
    - Tag your data immediately after conducting the sessions, or after re-reading your transcripts. Having everything fresh in your mind will make themes more clear.
- Align your tags with your research hypothesis
    - The goal of each tag is to link your user data to your research goals. Each tag should be directly related to one of your research hypotheses.
- Be consistent
    - When you identify what tags you will be using, stick to them. The more consistent our tags are, the easier it is to find trends in our data.
- Less is more
    - It is better to have 5 tags that you are confident in than 10 tags you aren't. As a guideline, try to limit most studies to **less than 15 tags**.
- Think about how they'll be used
    - Assume that someday, someone other than yourself will use your tags to identify similar insights.  Make it easy for them to do that.
- Take a second look
    - After making your tags, take a small break and then read over them one more time.

##### Don'ts

- Do not use full sentences
    - A tag should be 1-3 words long. Using multiple different tags will result in more useful insights than one longer tag.
- Do not use emoji
    - Emoji are naturally more ambiguous than text, and tags should be as clear as possible.

| Poor Tag Examples     | Better Tag Examples  |
| ----- | ------ |
| `User is confused by navigation and fails the task`   | `Confusion`, `Navigation failure`, `Task failure` |
| `🆕 Features communicate the problem being solved and value to a new user` | `Positive Value`  |
| `Lack of clarity for some users` | `Confusion`   |


#### Creating cross-stage awareness using shared tags

While importing the raw data from user research, sometimes there are insights which are useful to other stages and/or groups than your own. The [extensions feature](https://dovetailapp.com/blog/extensions/) within Dovetail allows for creating tags which can be used across projects. You can use these extension tags to make cross-stage content more discoverable by other stages and/or groups.

Best practices to follow while using the global tags under `Shared Tags` extension:

- First, you must add the extentions to your project. You will need to repeat this process for each new project you start. To do this, navigate to the `Settings` page for your respective project, and under the `Extensions` tab, link the already created `Shared Tags` extension to your project.
- Next, navigate to the `Tags` page of your project. You will now see that extension tags are now available to use in your project. Now that the extensions are available to your project, you just need add them to your insights. Locate insights that could be valuable to other sections, stages or groups and add the appropriate extension tags.
- Be sure to double check the list of Extension tags ***before*** you add a new tag. Since this list is available to everyone in the GitLab Dovetail account, you might find that your tag already exists.
- Only use a ***single global tag*** for the highlighted content. For example, use the name of the related stage group to create the tag for that insight.  Otherwise, apply a tag using the related stage name. And if you’re unsure of what stage to use, mention the product section instead.
- All the content highlighted with these global tags across projects can be tracked by selecting GitLab Global Tags within the [extension page](https://dovetailapp.com/settings/extensions) found within settings.

#### Charts & Insights

The next step is to [create insight statements](https://dovetailapp.com/help/the-basics/insights/) for your study and support them with the evidence you gathered in the tags, highlights, and charts. Use `Charts` to quickly get an overview of how frequently themes are mentioned across your research data. Themes that frequently reoccur in your data warrant an insight. `Insights` help you to summarise your research findings. Select multiple highlights in order to create an insight.

Sometimes during research studies you’ll note something of interest but perhaps don’t have enough data yet to decide whether what you observed or heard was an [edge case](https://en.wikipedia.org/wiki/Edge_case) or something which may be impacting other users.

A general rule of thumb: If you’re uncertain about whether something should be turned into an insight and/or only have 1-2 highlights that support the theme. Your observation should remain as a `highlight` rather than be converted into an `insight`.

Highlights can still be searched, tracked and revisited again in the future when you’ve gathered more research data.

#### Sharing your findings

After you've created your insight statements, you can use Dovetail's ["presentation mode"](https://dovetailapp.com/help/the-basics/insights/#view-insights-as-a-presentation) feature to share your findings with your team and any other stakeholders. The last step is to provide a link to the Dovetail project directly in the original UX Research issue. Check out this [project](https://dovetailapp.com/projects/838a723f-d93b-48c1-9ade-8b2bd692152c/readme) (internal link only) as a great example of these steps.

#### Suggestions for managing your content

This video demonstrates how to take structured notes in Dovetail similarly to a Google Sheet with multiple notetakers.

{{% youtube "K7WuC0QCOyM" %}}

### Disable Public Access

In order to protect PII (Personally Identifiable Information), ensure that your project settings for insights are [disabled for public access](https://dovetailapp.com/help/share-insights-with-public-access/). To do this you navigate to your project and click `Insights`. From there, ensure your share settings look like this:

![Dovetail Window](sharesettings.png)

### Frequently Asked Questions

#### I'm a Product Manager and I’d like to use Dovetail to keep track of the calls I have with customers. Is that okay?

Yes! When creating a new project, please select the `Customer calls` template. In the ReadMe file, update the name of your project from `Customer calls` to something more recognisable. Continue to follow the steps outlined under the UX Research team's guide to documenting insights in Dovetail starting with [Importing raw data into Dovetail](/handbook/product/ux/dovetail/index.html#importing-raw-data-into-dovetail).

Note: If you're only speaking to one customer and haven't heard evidence from other customers that they are experiencing the same problem or want the same feature improvement, it's highly likely that your finding should remain as a `highlight` rather than be converted into an `insight`. Feel free to reach out to your UX Researcher if you're not sure.

#### My team counterparts need access to the research insights in Dovetail. Can I add them to Dovetail?

Yes, you can add your team counterparts to Dovetail with **view-only** access. It will allow them to view the insights and the related data without affecting our number of available licenses.

To add a your counterparts to Dovetail, follow the steps below:

1. Click on your profile image at the top right of the app
1. Select `profile` in the menu
1. Go to `settings` at the top left near the search bar (**note:** not the settings option in the left nav)
1. Select `users` in the left nav
1. Click on `invite users` button
1. Type in email addresses of people on your team and select `viewer` access for **Markup, Playback, and Backstage**
1. Click `**` to send the invite

#### I'd like an idea of how to structure my data in Dovetail, do you have any examples?

Yes, scroll to the bottom of the Project list and under `Sample data`, you will see some sample projects created by the folks at Dovetail.

#### I'd like to create a private project to synthesize sensitive information

While our Dovetail projects are currently only accessible by GitLab employees, sometimes you have a project you feel should be only seen by you or a few others. You do this by [controlling who has access](https://dovetailapp.com/blog/2018/access-controls/) to your project.

##### Guidelines for what constitutes sensitive information

When documenting research insights in Dovetail or research issues, it is **extremely important not to disclose** any [personally identifiable information (PII)](https://dataprivacymanager.net/what-is-personally-identifiable-information-pii/) of participants. This is to ensure their feedback and identity is kept confidential and is only available to those who need to know. For example, when giving a title to a session recording, noting down session summaries or using a quote, instead of referring to a participant by their full name use “participant [number]” or the corresponding user persona.

For more information, please refer to our [Code of Business Conduct & Ethics](https://ir.gitlab.com/static-files/7d8c7eb3-cb17-4d68-a607-1b7a1fa1c95d).

### Feedback and questions

Please post feedback and questions in the [#ux_research](https://gitlab.slack.com/archives/CMEERUCE4) Slack channel.

If you find out something useful which you feel will benefit others, please submit an MR to this page and assign it to `@asmolinski2`.
