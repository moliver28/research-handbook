---
title: "Technical Writing"
---

The GitLab Technical Writing team collaborates with developers, product managers, and the community to develop product documentation.

Good documentation meets the evolving needs of GitLab customers, users, and administrators. It educates readers about features and best practices. It enables people to efficiently configure, use, and troubleshoot GitLab. The Technical Writing team manages the [docs.gitlab.com](https://docs.gitlab.com) site and its content, processes, and tooling.

The [documentation roadmap](https://gitlab.com/groups/gitlab-org/-/epics/4602) drives our efforts to improve both the content and [documentation website](https://docs.gitlab.com/). For example, we know that people have trouble finding information on docs.gitlab.com. We have roadmap items and OKRs to replatform the docs site, provide better task-based information, and make content easier to find. These larger projects, completed in addition to feature documentation, provide continual, iterative improvement to the user experience of our documentation.

Anyone can contribute to the documentation. Follow our [GitLab documentation guidelines](https://docs.gitlab.com/ee/development/documentation/).

## About Us

[The Technical Writing team](/handbook/company/team/?department=technical-writing) includes:

- A group of [Technical Writers](/job-families/product/technical-writer/).
- Two [Technical Writing Managers](/job-families/product/technical-writing-manager/).
- A [Senior Fullstack Engineer, Technical Writing](/job-families/product/ux-fullstack-engineer/).
- A [Technical Writing Director](/job-families/product/technical-writing-manager/#director-technical-writing).


## Contact Us

To contact the entire team in a GitLab issue or MR, use `@gl-docsteam`.

The team manages general documentation-related and team-specific Slack channels:

- `#docs`: Questions and general discussion about GitLab documentation, and requests by GitLab team members for doc and UI text reviews.
- `#docs-processes`: Discussion about documentation processes.
- `#docs-tooling`: Discussion about documentation tooling and the `gitlab-docs` project.
- `#docs-site-changes`: Automated messages from [`gitlab-docs`](https://gitlab.com/gitlab-org/gitlab-docs) project.
- `#tw-team`: Technical Writing team chat.
- `#tw-social`: Technical Writing team social chat.

## Public Training for GitLab Technical Writing

If you're interested in updating or creating GitLab product documentation, see our [Technical Writing Fundamentals course](fundamentals/), which includes:

- Guidelines for technical writing.
- GitLab style conventions.
- Information about internal testing.
- Instructions for content types.

## Responsibilities

Team members are [assigned](#assignments) to specific DevOps stage groups. The Technical Writing team is broadly responsible for both developing documentation content and UI text, and helping others while they develop content:

- Maintaining documentation for many engineering projects.
- Occasionally developing new content to meet the needs of the community.
- Reviewing and collaborating on documentation plans, reviewing doc merge requests or recently merged docs, and ensuring that content meets style and language standards.
- Reorganizing, revamping, and authoring improved documentation to ensure completeness and a smooth user experience.
- Collaborating with Product Designers on UI text, such as microcopy, links from the UI to documentation, error messages, and UI element labels.
- Acting as Technical Writing Lead for the monthly [release post](../../../marketing/blog/release-posts/).

### Prioritization

When evaluating work to meet our stakeholders' needs, we prioritize in the following order:

1. Feature work (including documenting new features, and providing guidance on UI text)
1. OKR-related work
1. Backlog issues (including docs technical debt and implementing content topic design)
1. All other tasks (including creating suggestion- or warning-level [Vale rules](https://docs.gitlab.com/ee/development/documentation/testing/vale.html#result-types))

### Processes

The team is responsible for developing and maintaining efficient processes, including:

- Ensuring that processes are in place and being followed to keep the GitLab docs up to date.
- Following and optimizing documentation workflows with Product and Engineering, Documentation Team workflows, and the division of work.
- Triaging doc-related issues.
- Refining the [Documentation Style Guide](https://docs.gitlab.com/ee/development/documentation/styleguide/index.html) and continuously improving content about GitLab documentation and its contribution process.
- Making it easier for anyone to contribute to the documentation while efficiently handling community contributions to docs.

#### Style Guide

The [Documentation Style Guide](https://docs.gitlab.com/ee/development/documentation/styleguide/)
provides language and style guidance for the product documentation and release posts.

Any Technical Writer (or other contributor) can make suggestions for
documentation style updates or additions by creating an issue or merge request with the
`~tw-style` label, and then assigning the issue or MR to the Style Guide DRI. GitLab team members can also use the `#docs` Slack channel.

Use the following searches to track completed style-related issues:

- [GitLab project style issues](https://gitlab.com/gitlab-org/gitlab/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=tw-style)
- [GitLab project style MRs](https://gitlab.com/gitlab-org/gitlab/-/merge_requests?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=tw-style)
- [Technical Writing project style issues](https://gitlab.com/gitlab-org/technical-writing/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=tw-style)

#### Testing

The Technical Writing team develops and maintains toolkits to test GitLab's documentation (and other technical content) for problems. These toolkits include (but aren't limited) to:

- Text content and writing style: markdownlint, Vale
- Text formatting: markdownlint, yamllint
- Link validity: Nanoc
- File permissions and naming: `lint-doc.sh`

Any contributor can suggest changes to our linting rules or tooling by creating an issue or merge request with the [`~tw-testing`](https://gitlab.com/gitlab-org/gitlab/-/issues?label_name[]=tw-testing) label, and then assigning the issue or MR to a technical writer.

#### Translation and internationalization

Everyone can contribute to the translation of GitLab from English into other languages.
To learn more about translation and internationalization at GitLab, visit the Import and Integrate direction page and Manage stage Category Direction page on [Internationalization](https://about.gitlab.com/direction/manage/import_and_integrate/internationalization/).
For a step-by-step guide to translation contributions, read [Translating GitLab](https://docs.gitlab.com/ee/development/i18n/translation.html).

The [docs.gitlab.com](https://docs.gitlab.com/) site is not included in the community efforts to internationalize GitLab. Discussion on translating documentation into other languages is included in [this issue](https://gitlab.com/gitlab-org/gitlab/-/issues/15471#note_214823504).

## Assignments

Technical Writers (TWs) collaborate with [their assigned groups](#assignments-to-devops-stages-and-groups). TWs can also be assigned [other work](#assignments-to-other-projects-and-subjects).

Some content on docs.gitlab.com is [not reviewed by TWs](#content-not-reviewed-by-tws).

<a id="designated-technical-writers">

### Assignments to DevOps Stages and Groups

The designated Technical Writer is the go-to person for their assigned
[groups](/handbook/product/categories/). They collaborate with
other team members to plan new documentation, edit existing documentation,
review any proposed changes to documentation, suggest changes to UI microcopy,
and generally partner with subject matter experts (SMEs) in
all situations where documentation is required.

{{% tech-writing %}}

<!--
  To update the table above:

  - For tech writer's name per stage, change data/stages.yml and sites/handbook/includes/stages/tech-writing.html.haml
  - To turn off a stage, set tw: false in data/stages.yml

Reference: https://gitlab.com/gitlab-com/www-gitlab-com/merge_requests/24952
-->

{{% alert title="Note" color="primary" %}}
**If you were directed here from a documentation page's metadata:**
- The metadata doesn't indicate developer ownership, but is meant to direct you to an appropriate technical writer.
- If you are part of a development group and would like to add metadata to documentation pages, create an issue in [the Technical Writing repository](https://gitlab.com/gitlab-org/technical-writing) for discussion. Additional discussion is in [this issue](https://gitlab.com/gitlab-org/technical-writing/-/issues/547).
- If the stage is listed as `none`, see if [there is a DRI](#assignments-to-other-projects-and-subjects) or use [roulette](https://gitlab-org.gitlab.io/gitlab-roulette/?sortKey=stats.avg30&order=-1&hourFormat24=true&visible=maintainer%7Cdocs).
{{% /alert %}}

Technical Writers are encouraged to review and improve documentation of other
stages but they aren't required to. When contributing to docs they don't own,
they must respect the assigned TW's ownership and ensure to request their review
and approval when adding significant changes to their docs.

When a Technical Writer [is on PTO](#technical-writer-pto), the whole team acts as their backup.

### Assignments to other projects and subjects

For collaboration in other projects and subjects:

| Subject                                                                                                         | Assigned technical writer                                                                                                                      |
|:----------------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------|
| The documentation site                                      | {{< member-by-name "Susan Tacker" >}}                                                                                                                              |
| The documentation site backend (code, automation)                                             | {{< member-by-name "Sarah German" >}}                                                                                                                              |
| [GitLab Design System ("Pajamas")](https://design.gitlab.com/) information under [`content`](https://gitlab.com/gitlab-org/gitlab-services/design.gitlab.com/-/tree/main/contents/content)                                               | {{< member-by-name "Suzanne Selhorn" >}}                                                                                                                              |
| [Style Guide](#style-guide)                                                                                     | {{< member-by-name "Suzanne Selhorn" >}}                                                                                                                              |
| [Testing/Vale/markdownlint](#testing)                                                                           | {{< member-by-name "Diana Logan" >}}                                                                                                                                  |
| [Documentation handbook](/handbook/documentation/)                                                              | {{< member-by-name "Diana Logan" >}}                                                                                                                                  |
| [Technical Writing handbook](/handbook/engineering/ux/technical-writing/)                                       | {{< member-by-name "Susan Tacker" >}}                                                                                                                                 |
| [Tutorials](https://docs.gitlab.com/ee/tutorials/)                                                              | {{< member-by-name "Kati Paizee" >}}                                                                                                                                  |
| [What's new](https://docs.gitlab.com/ee/administration/whats-new.html)                                          | {{< member-by-name "Kati Paizee" >}}                                                                                                                                  |
| [GitLab Development Kit (GDK)](https://gitlab.com/gitlab-org/gitlab-development-kit)                            | {{< member-by-name "Ashraf Khamis" >}}, {{< member-by-name "Achilleas Pipinellis" >}}, {{< member-by-name "Evan Read" >}}, {{< member-by-name "Fiona Neill" >}}, {{< member-by-name "Jon Glassman" >}}, {{< member-by-name "Lorena Ciutacu" >}}, {{< member-by-name "Marcel Amirault" >}}, {{< member-by-name "Phillip Wells" >}}, {{< member-by-name "Russell Dickenson" >}} |

### Content not reviewed by TWs

Technical writers do not review content in:

- The `doc/architecture` directory. Any Maintainer can merge docs in this directory, though a review from a [coach engineer](/handbook/engineering/architecture/workflow/index.md#the-coach) might be needed.
- The `doc/development` directory. Any Maintainer can merge docs in the `doc/development` directory.
  The only exception is `/doc/development/documentation`, where the writers maintain guidelines.
- The `doc/solutions` directory. This information is created, reviewed, merged, and maintained by Solutions Architects.

### Stable counterparts

The Technical Writing team gets assistance with the `gitlab-docs` project from stable counterparts outside the team.

| Subject          | Person                                 |
|:-----------------|:---------------------------------------|
| Backend reviews  | [Ash McKenzie], [David O'Regan]        |
| Frontend reviews | [Lukas 'Eipi' Eipert], [David O'Regan] |
| Support          | [Mike Lockhart]                        |

[Ash McKenzie]: https://gitlab.com/ashmckenzie
[Lukas 'Eipi' Eipert]: https://gitlab.com/leipert
[David O'Regan]: https://gitlab.com/oregand
[Mike Lockhart]: https://gitlab.com/mlockhart

## Docs site stats

The technical writing team supports a large amount of content.

The number of pages in the five primary repositories (GitLab, Omnibus, Charts, Operator, and Runner):

| Date          | # of pages | Increase from previous quarter |
|---------------|------------| ------------|
| Mar  2024     | 2,308      | 5 %         |
| Dec  2023     | 2,201      | 5 %         |
| Sept 2023     | 2,088      | 8 %         |
| Jun 2023      | 1,993      | 5 %         |
| Mar 2023      | 1,929      | 3 %         |
| Dec 2022      | 1,840      | -           |
| Sept 2022     | 1,785      | -           |
| June 2022     | 1,633      | -           |
| Jan 2022      | 1,562      | -           |
| May 2020      | 1,165      | -           |

**Change between May 2020 and Mar 2024:** 1,143 more pages (a 98% increase)

The number of words in these repositories:

| Date          | Word count | Increase from previous quarter |
|---------------|------------| ------------|
| Mar  2024     | 3,183,647  | 6 %         |
| Dec  2023     | 2,990,400  | 5 %         |
| Sept 2023     | 2,842,399  | 5 %         |
| Jun 2023      | 2,701,888  | 6 %         |
| Mar 2023      | 2,546,466  | 6 %         |
| Dec 2022      | 2,397,335  | -           |
| Oct 2022      | 2,271,350  | -           |
| June 2022     | 2,166,052  | -           |
| Jan 2022      | 2,017,183  | -           |
| May 2020      | 1,190,371  | -           |

**Change between May 2020 and Mar 2024:** 1,993,276 more words (a 167% increase)

The word count has more than doubled in this timeframe.

### Analytics

GitLab Team Members can view docs site metrics on the docs.gitlab.com [LookerStudio dashboard](https://lookerstudio.google.com/reporting/d6af7a2b-2aaa-4f30-8742-811e62777c93/page/IeVBD).
To view page level analytics, select **Page views by month**, and add the page URL in the value field. Do **not** include `https://` as part of the value.

To make or suggest changes to the dashboard, open an issue in the [Marketing Strategy and Analytics project](https://gitlab.com/gitlab-com/marketing/marketing-strategy-performance).

## Technical Writer PTO

When Technical Writers take [paid time off](/handbook/paid-time-off/), the rest of the team provides coverage for them.
These team members may require additional context for requests. Requests are incorporated into the list of stage/group and
feature priorities for *their* primary groups.

Options for groups to get help when an assigned Technical Writer is on PTO are:

- [Reviewer Roulette](https://gitlab-org.gitlab.io/gitlab-roulette/?sortKey=stats.avg7&order=-1&visible=maintainer%7Cdocs).
  A rouletted Technical Writer can be pinged or assigned to an issue or merge request.
- A request in the [`#docs`](https://gitlab.slack.com/archives/C16HYA2P5) channel in Slack, where it will be picked
  up by an available volunteer Technical Writer.
- For help with a specific, time-sensitive, in-progress piece of work, a pre-arranged Technical Writer. The Technical
  Writer can be pinged on issues or merge requests and begin participating.

If taking extended PTO (more than one week), Technical Writer should consider using the Technical Writer
[coverage issue](https://gitlab.com/gitlab-org/technical-writing/-/blob/main/.gitlab/issue_templates/TW_Coverage.md).
This issue can describe exactly who is providing coverage, for what, and by what means.

### Taking PTO

When taking PTO, Technical Writers:

1. Ensure their [out-of-office messaging](/handbook/paid-time-off/#communicating-your-time-off) reflects the available mechanisms for coverage.
   It's important to keep GitLab.com statuses up-to-date to ensure:

   - [Reviewer Roulette](https://gitlab-org.gitlab.io/gitlab-roulette/?sortKey=stats.avg7&order=-1&visible=maintainer%7Cdocs) can make accurate suggestions.
   - The TW team can easily see the PTO status of all team members when checking the Roulette dashboard.
1. Send a message in the group Slack channels indicating where to find the available mechanisms. For example:

   ```text
   I’m off for the holidays (202y-mm-dd - 202y-mm-dd). For help with documentation while I'm away, see
   https://about.gitlab.com/handbook/product/ux/technical-writing/#technical-writer-pto for ways to get help.
   For urgent _named time-sensitive task_ matters, ping _named TW_.
   ```

### Merge request queue checks

Before a Technical Writer goes on PTO, the writer or their manager should determine who will check the writer's MR queue. The assigned person should check the queue at least once each day in the [GitLab Review Workload Dashboard](https://gitlab-org.gitlab.io/gitlab-roulette/?sortKey=stats.avg30&mode=show&order=-1&hourFormat24=true&visible=maintainer%7Cdocs).

The assigned writer does not need to do the work. When they check the queue, they can:

- Assign the MRs to themselves for review.
- Use Roulette to find other TWs to review.

## Regularly scheduled tasks

Along with Technical Writers' normally assigned work, there are recurring tasks
that need to be regularly completed:

- **Release Post Structural Check:** The Technical Writing Lead [reviews the content](/handbook/marketing/blog/release-posts/#tw-lead) for the release post published at the end of each milestone. See the [Release Post Scheduling](/handbook/marketing/blog/release-posts/managers/) Handbook page for each milestone's assigned writer.
- **Monthly doc version:** At the end of each milestone, a Technical Writer [creates the monthly version for the docs site](https://gitlab.com/gitlab-org/gitlab-docs/-/blob/main/doc/releases.md). The Technical Writer assigned to this task is the writer who completed the release post structural check for the previous milestone.
- **Docs project maintenance tasks:** Each month, one Technical Writer is assigned to complete maintenance tasks for the documentation site and its content. This involves [creating a new issue using the `tw-monthly-tasks` template](https://gitlab.com/gitlab-org/technical-writing/-/issues/new?issue[title]=Docs%20project%20maintenance%20tasks%2C%20Month%20YYYY&issuable_template=tw-monthly-tasks) in the `technical-writing` project to track maintenance work. If additional work beyond what's described in the maintenance issue is required, the Technical Writer creates merge requests and additional issues as needed.

Schedule for Docs project maintenance tasks:

- April, 2024: {{< member-by-name "Lysanne Pinto" >}}
- March, 2024: {{< member-by-name "Amy Qualls" >}}
- February, 2024: {{< member-by-name "Marcel Amirault" >}}
- January, 2024: {{< member-by-name "Phillip Wells" >}}
- December, 2023: {{< member-by-name "Achilleas Pipinellis" >}}
- November, 2023: {{< member-by-name "Marcin Sędłak-Jakubowski" >}}
- October, 2023: {{< member-by-name "Russell Dickenson" >}}
- September, 2023: {{< member-by-name "Evan Read" >}}
- August, 2023: {{< member-by-name "Kati Paizee" >}}
- July, 2023: {{< member-by-name "Diana Logan" >}}
- June, 2023: {{< member-by-name "Ashraf Khamis" >}}
- May, 2023: {{< member-by-name "Fiona Neill" >}}
- April, 2023: {{< member-by-name "Lorena Ciutacu" >}}

## Reviews

Technical Writers are assigned to review merge requests that contain documentation changes authored by GitLab team members and community contributors. The reviews are assigned by subject matter according to the [Technical Writer assignments](#assignments) to [stage groups](../../product/product-categories/#devops-stages) or other specialties.

### Levels of edit

The Technical Writers use the following levels of edit:

**Light**

- Ensure the pipeline passes and no obvious grammar, spelling, or punctuation errors exist.

**Medium**

- Ensure the pipeline passes and no grammar, spelling, or punctuation errors exist.
- Ensure the content is clear, discoverable, navigable, and written with the user's perspective in mind.
- Ensure the content meets the guidelines in the [Documentation Style Guide](https://docs.gitlab.com/ee/development/documentation/styleguide/).

**Heavy**

- Ensure the pipeline passes and no grammar, spelling, or punctuation errors exist.
- Ensure the content is clear, discoverable, navigable, and written with the user's perspective in mind.
- Ensure the content meets the guidelines in the [Documentation Style Guide](https://docs.gitlab.com/ee/development/documentation/styleguide/).
- Ensure the content conforms to the defined [topic types](https://docs.gitlab.com/ee/development/documentation/topic_types/).
- Ensure the content fits well into the larger documentation set and does not duplicate information in other areas.
- For UI text, ensure the content meets the standards defined in the [Pajamas Design System](https://design.gitlab.com/) and the [Technical Writer Word List](https://docs.gitlab.com/ee/development/documentation/styleguide/word_list.html).

#### How the writers apply the levels of edit

To balance quality, speed, and resource constraints, the technical writers apply different levels of edit to different documentation.

These guidelines are meant to provide general guidance. They aren't set in stone, and they can be overridden on a case-by-case basis.

These items **do not receive** an edit unless it's specifically requested (and if requested, they receive a **light** edit):

- In the GitLab repository, the Contribution guidelines (in the `/development` directory).
- In the GitLab repository, the `doc/solutions` directory. This information is owned by Solutions Architects.
- In the GitLab repository, the blueprint documentation (everything in the `architecture/blueprints` directory).

These items receive a **light** edit:

- Documentation outside of the five main GitLab repositories (GitLab, Charts, Operator, Omnibus, and Runner).
- Deprecations and removals.
- Merge requests authored by other technical writers, unless the MR is part of an OKR, or the author requests a more in-depth edit.

These items receive a **medium** edit:

- Day-to-day product documentation requests:
  - New feature work (from [stage groups](../../categories/#devops-stages) or [Incubation engineers](../../../engineering/development/incubation/playbook/#quality--support-guidelines-for-incubation-projects))
  - Improvements
  - Bug fixes
  - Community contributions
- Release post items

These items receive a **heavy** edit:

- Topic type restructuring efforts (["CTRT"](https://docs.gitlab.com/ee/development/documentation/topic_types/))
- OKR work
- UI text

In all cases, the Technical Writer confirms that an authoritative source has checked the documentation for technical accuracy.
The Technical Writer can serve as that authoritative source if they have the required knowledge or
can efficiently perform the necessary verification.

### Review workflow

To balance [velocity](/handbook/engineering/development/principles/#the-importance-of-velocity) and quality, the writers use this workflow:

- When a writer opens a merge request, another writer must review and merge. Peer reviews are important to maintain quality and help the team build a common voice.
- When anyone else (like a developer, community member, or Support team member) opens a merge request:
  - If the MR contains documentation and code, the writer adds suggestions but does not merge. The MR is merged by another developer.
  - If the MR contains documentation only:
    - Writers can apply small suggestions, by using the **Apply suggestion** feature, before they merge.
      Writers can fix things like missing punctuation, typos, and pipeline failures without additional review.
    - Writers do not push larger changes (by using suggestions or commits) to the author's branch unless they have explicit approval in the MR to do so.
      Pushing to a branch can cause hard-to-resolve merge conflicts, and content can be accidentally overwritten.
    - In rare cases, a writer has agreement from their team to make commits directly to the author's branch.
      In these cases, if the writer pushes changes other than minor typo fixes (by using suggestions or commits), the author
      must review before the writer merges. This workflow gives the MR
      author a chance to verify the changes and it helps ensure accuracy.

For more information on review turnaround times, see [Review-response SLO](../../../engineering/workflow/code-review/#review-response-slo).

#### Triaging automated group mentions

When a bot or a community contributor mentions either `@gl-docsteam` or several Technical Writers based on CODEOWNERS, TWs should volunteer to:

1. Scan the MR and either volunteer to review it or determine which TW should review it, following the guidelines in [Selecting a reviewer](#selecting-a-reviewer).
1. Then, if the MR:
   - Seems ready for review, assign the selected TW as a reviewer.
   - Doesn't seem ready for review, leave a comment for the contributor asking them to mention the selected TW when they're ready.
1. Edit the bot's comment and format the team mention as code. For example: ``Hi `@gl-docsteam`! Please review this documentation merge request.`` This removes other TWs from the MR's participants list, and they will no longer receive notifications for it. The to-do notification will be updated to show the username in backticks, so team members working from their to-do list will have a visible hint that the MR has been addressed.

### Selecting a reviewer

In most cases, Technical Writers should use the [GitLab Review Workload Dashboard](https://gitlab-org.gitlab.io/gitlab-roulette/?sortKey=stats.avg7&order=-1&hourFormat24=true&visible=maintainer%7Cdocs) to identify someone for a technical writing review. Be sure the page's filter is set to show only Technical Writers and sort by **Assign events last 7 days**.

To get an available Technical Writer, select **Spin the wheel!** on the Dashboard page. In the specific cases where the selected Technical Writer already has a lot of assigned reviews or has recently been very busy, you can select **Spin the wheel!** again to get a different writer.

If you have content that needs a specific assignee, or if you have a merge request for a page that has a DRI (such as the Documentation Style Guide), in those cases you can specifically assign the review to that person.

### Determining Technical Writer availability

There are occasions when Technical Writers may be too busy for general team merge request reviews, and need to focus on their groups or other priorities. In those cases, Technical Writers can update their GitLab status by selecting the **Busy** checkbox and adding the 🔴 `:red_circle:`, which prevents their name from appearing in the reviewer roulette.

For example, Technical Writers on release duty for a milestone should add the busy indicator to their status for the week preceding the [release date](/handbook/engineering/releases/), to focus on release posts and other requirements.

In all other cases, while Technical Writers can add (and remove) the busy indicator from their profiles, we ask that the busy indicator be in place for no longer than two days at a time, and be employed no more than once every two weeks. (Noting that the use of the busy indicator during releases doesn't affect this.) If you need more time not participating in the review roulette, be sure to talk to your manager so they can help (which may include additional use of the busy indicator).

## Merge rights

The Technical Writing team is given merge rights (through
[Maintainer access](/handbook/engineering/workflow/code-review/#how-to-become-a-project-maintainer))
to GitLab projects as part of their role. Not all developers get Maintainer access. Technical
writers should use this privilege responsibly.

As Maintainers, Technical Writers should limit what they merge to:

- Documentation, typically in Markdown-formatted files.
- UI text, error messages, and link-related fixes, with the approvals of appropriate engineer(s).
- Documentation-related tooling and configuration such as linters, and changes
  to the [`gitlab-docs`](https://gitlab.com/gitlab-org/gitlab-docs) project. Engineers
  are available for code review and merges.

In addition, Technical Writers should:

- Never merge an MR with a failed pipeline, unless the failures are unrelated to the changes. If in
  doubt, ask an engineer.
- Ensure that MRs are complete before merging, with appropriate labels and milestones.
- Ensure that the DRI has reviewed and approved the MR.

## Onboarding Technical Writers

While the Technical Writer is onboarding, they will be assigned to
shadow groups and then start contributing as trainees. Veteran Technical Writers will coach them through the process.

For more information about onboarding phases and tasks, see the [Technical Writer onboarding template](https://gitlab.com/gitlab-org/technical-writing/-/blob/main/.gitlab/issue_templates/tw_onboarding.md).

## Standups

We have set up [Geekbot](https://app.geekbot.com/dashboard/home) for our twice weekly
standups (at 10:00 AM, Tuesday and Thursday, in your local timezone) and a random weekly question
(run on Wednesdays at 12:00 PM).

All members can edit and manage the standups.

To add a new member to the daily standup:

1. Visit the [Geekbot dashboard](https://app.geekbot.com/dashboard/home) and
   sign in using your Slack account when asked.
1. Select the [Tues/Thurs ping](https://app.geekbot.com/dashboard/standup/42533/manage?members)
   standup and search the member by name in the **Add participants** area.
1. Give the newly-added member Manage access and select **Save** in the upper
   right corner.

To add a new member to the Weekly Wednesday Question standup:

1. Visit the [Geekbot dashboard](https://app.geekbot.com/dashboard/home) and
   sign in using your Slack account when asked.
1. Select the [Weekly Wednesday Question](https://app.geekbot.com/dashboard/standup/28408/manage?members)
   standup and search the member by name in the **Add participants** area.
1. Give the newly-added member manage access and select **Save** in the upper
   right corner.

As a member of the Technical Writing team, you're encouraged to add your
question to the list of random Wednesday questions! To do so:

1. Visit the [Weekly Wednesday Questions](https://app.geekbot.com/dashboard/standup/28408/manage?questions).
1. Under the **Questions** section, you can see a "This is a random set of questions"
   question. Hover over the two arrows on the right, and select **Edit**.
1. Scroll to the bottom and select **Add question**.
1. Select **Save questions**.

## Community contribution opportunities

We welcome [improvements to content](https://about.gitlab.com/community/contribute/documentation/)
as well as to the development of our
documentation website, at https://docs.gitlab.com.

For more information about community contributions, see:

- [List of available issues](https://gitlab.com/gitlab-org/gitlab/-/issues/?sort=created_date&state=opened&label_name%5B%5D=documentation&label_name%5B%5D=docs-only&label_name%5B%5D=Seeking%20community%20contributions)
- [GitLab Docs repo](https://gitlab.com/gitlab-org/gitlab-docs)
- [GitLab Docs README file](https://gitlab.com/gitlab-org/gitlab-docs/-/blob/main/README.md)

## Documentation process

See:

- [Technical writing workflow](workflow/) in the handbook.
- [Documentation workflows](https://docs.gitlab.com/ee/development/documentation/workflow.html) in the contributor documentation.
- [Setting up a local environment](setup/) in the handbook.

### Make an urgent content update on docs.gitlab.com

The documentation website is refreshed every hour. On rare occasions, we might have to publish documentation
updates a little faster. If you need an urgent update, follow the steps to [manually deploy the docs site](https://docs.gitlab.com/ee/development/documentation/site_architecture/deployment_process.html#manually-deploy-to-production).

### Report a docs website problem or infrastructure issue

Report website bugs or feature requests in the [issue queue for the Docs website](https://gitlab.com/gitlab-org/gitlab-docs/-/issues).

For outages or website availability issues, see [Docs site infrastructure](https://gitlab.com/gitlab-org/gitlab-docs/-/blob/main/doc/infrastructure.md?ref_type=heads).
