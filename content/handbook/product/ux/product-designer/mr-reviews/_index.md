---
title: Merge Request Reviews
description: "Guidelines for Product Designers when reviewing merge requests."
---

## Overview

This page outlines the guidelines for Product Designers when reviewing merge requests (MRs), also called “UX reviews” or “Product Design MR reviews”.

## Requirement

**Almost all merge requests (MRs) change the UX in one way or another, but Product Designers are only required to review and approve MRs that include *user-facing changes***. Per the [approval guidelines](https://docs.gitlab.com/ee/development/code_review.html#approval-guidelines), “user-facing changes include both visual changes (regardless of how minor) and changes to the rendered DOM that impact how a screen reader may announce the content.”

MRs with only backend changes sometimes affect the UX (for example, performance changes, sorting of lists, etc.), but you *are not required* to review them unless they fall under the definition of “user-facing changes”.

To help triage, be aware of all MRs in your stage group and ask engineers about which MRs could affect the UX and how. Product Designers often give constructive feedback on any kind of MR, including MRs that *seem* to not affect the UX, so use your best judgment when deciding which MRs you should review.

We utilize the GitLab Roulette to assign subject matter experts within the group the MR originates from. Learn more about [how MR reviews are assigned](#how-to-assign-mr-reviews).

### Benefits

Designers who are most familiar with the product area and resulting changes are better equipped to:

- Quickly set up the specifications needed to test the change locally.
- Understand why the change is being made and the context behind the decisions.
- Provide actionable feedback.
- Review edge cases and find bugs before code is merged into production.

We encourage designers to work closely with their engineering peers throughout the entire product development lifecycle, from ideation to shipping to production. This strengthens product relationships and discourages a waterfall process.

## How to assign MR reviews

### Stage group MRs

The [GitLab Roulette](https://gitlab-org.gitlab.io/gitlab-roulette/) will suggest the designer who is assigned to the stage group the MR corresponds to. The design DRI will act as reviewer for the MRs of that group. 

If a stage group does not have a designer, we are unable to accomodate MR reviews at this time due to lack of capacity.

### Community contributions

Community submitted MRs are assigned to the design DRI of the group it impacts. If a group does not have a designer, it will be reviewed by `@pedroms`.

For all UX-related community contributions, the reviewer roulette will suggest the correct designers automatically. Additionally it will generate a Slack message in the `#ux-community-contributions` channel to spread awareness.

### Single engineering group MRs

Single Engineer Group (SEG) MRs should be reviewed by the design DRI of the group it impacts.

If a SEG MR belongs to a stage group that does not have a designer, we are unable to accomodate MR reviews at this time due to lack of capacity.

### UX Paper Cuts MRs

MRs created by the UX Paper Cuts team will be handled by the UX Paper Cuts team. If the team is out of office, then the [GitLab Roulette](https://gitlab-org.gitlab.io/gitlab-roulette/) will be utilized to help distribute MR reviews across the Product Design subdepartment.

## Workload and response times

MR review requests are the [number one priority for Product Designers](/handbook/product/ux/product-designer/#priorities). Respond to them per our [review-response Service-Level Objective](/handbook/engineering/workflow/code-review/#review-response-slo).

Balancing MR reviews with other priorities is a challenge, as they can be unpredictable. To avoid disruptions and context-switching, we suggest you block some time every day to review MRs (for example, 30 minutes or 1 hour per day).

If you're struggling with MR reviews, remember to [manage expectations with MR authors](/handbook/engineering/workflow/code-review/#managing-expectation). Before taking up a review, make an estimation of your capacity keeping in mind any upcoming time off. If you are unsure of completing the review before leaving for a time off, work with your manager and team to reassign the MR to another designer.

### Monitoring MR review workload

Should you find yourself overloaded with MRs, let your manager know right away so they can help you. You can request assistance from another designer on your team or by asking in the #ux_coworking Slack channel.

Product design managers should escalate and monitor these occurences with UX leadership to determine if they are isolated incidents or indicative of a broader trend. 

To ensure that MR reviews are evenly distributed across designers, we monitor the [GitLab Review Workload Dashboard](https://gitlab-org.gitlab.io/gitlab-roulette/?sortKey=stats.avg30&order=-1&hourFormat24=true&visible=reviewer%7CUX) and [Product Design MR review volume](/handbook/product/ux/performance-indicators/#product-design-mr-review-volume).

## Reviewing

In general, follow the [Code Review guidelines](https://docs.gitlab.com/ee/development/code_review.html) (it's a long document, but please read all of it). Exceptions to those guidelines are noted below.

### Understand the MR

- Check the MR description for the following information. If any are missing, ask the author to complete the description before investing time in the review.
   - A thorough explanation of the changes.
   - How you can test the changes.
   - Link(s) to the related issue(s).
   - *Before* and *After* screenshots/videos (if appropriate).
- Some MRs with the `~"UX"` label may not have a design DRI or proposed designs associated with the change. In these cases, it is important to get as much context as you can about the change. If you are unsure how the changes impact other areas of the product, consider bringing in other designers and your design manager to help evaluate the impact of the proposal.

### Preview the MR

Always review the MR in a live environment, so that you can experience the changes as our users will and review them thoroughly. To choose the most appropriate method to preview the MR and get started, see [Review, test, and contribute](/handbook/product/ux/product-designer/mr-reviews/preview-mr). If you get stuck, don't struggle on your own, check our [help section](/handbook/product/ux/product-designer/mr-reviews/preview-mr/#help).

#### Specific review requirements

Some MRs have additional set up requirements.

- SaaS-only features: For testing SaaS-only features you'll need to run the GDK as a SaaS version. [Instructions for simulating SaaS version in the GDK](https://docs.gitlab.com/ee/development/ee_features.html#simulate-a-saas-instance).
- Paid features: You'll need a license for these. Request a license via and [Access Request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new), using the GitLab_Team_Member_License_Request template. [Instructions for adding the license to your instance](https://docs.gitlab.com/ee/administration/license_file.html#add-your-license-file-during-installation).
- You can also switch between CE and EE editions: [How to simulate a CE instance](https://docs.gitlab.com/ee/development/ee_features.html#simulate-a-ce-instance-when-unlicensed).
- Pipeline-related and Runner features: You'll need to create or enable a runner to run a pipeline. Review apps have runners available by default. Instructions for creating a runner in [Gitpod](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/main/doc/howto/gitpod.md#enable-runners) or [GDK](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/main/doc/howto/runner.md).
- Compliance: To test [audit event streaming](https://docs.gitlab.com/ee/administration/audit_event_streaming.html) MRs you might need to set a stream destination URL. You can use [Pipedream](https://pipedream.com/) to generate a temporary destination.
- Fulfillment: Because of the complicated setup required for CustomersDot, only Fulfillment Product Designers should review CustomersDot MRs and GitLab MRs that require connection to CustomersDot (e.g., the GitLab.com purchase flow).
  - [Instructions for setting up CustomersDot locally](https://gitlab.com/gitlab-org/customers-gitlab-com/-/tree/main#setup).
  - There are times when it isn't possible or practical for a Product Designer to complete their review via their local environment. At these times, the Product Designer can review screenshots and videos in the MR description or coordinate a demo with the Engineer. Another option for more complicated changes is keeping the change behind a feature flag and reviewing the change on staging after the MR has been merged. This is up to each Product Designer's discretion.
- Geo: Using the simple installation script, you need to install and configure two **GDKs**. The script does not work on GitPod. The configured GDKs served as a Geo primary and secondary site.
  - [Instructions for the simple installation](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/main/doc/howto/geo.md).
  - [Video instruction](https://youtu.be/R58mgwDwjM8) and [slide deck](https://docs.google.com/presentation/d/1azikV27LO68xobgJ7v399H1ppnLCmtB_kEKl_IMNI0Q/edit#slide=id.g123a13deda8_0_405) for setting up Geo-GDKs.
- Pipeline Execution: For compute minutes and shared runner usage related features, you need to populate projects with historical compute minutes usage data to test the features or changes.
  - Merge requests related to compute minutes and shared runner usage usually require some historical usage data, which can be difficult to set up if it doesn't exist already on the local GDK environment. Below is a video and instructions for how to set that up in under 7 minutes.
   
   {{< youtube "ym-fU1U-anE" >}}
   
   Checkout the branch in the MR and open rails console using `bin/rails console`.
  
   **1. Edit compute minutes**
   
   ``` ruby
    ApplicationSetting.current.update(shared_runners_minutes: 400)
    project = Project.find(20)
    root_namespace = project.root_namespace
    namespace_usage = Ci::Minutes::NamespaceMonthlyUsage.find_or_create_current(namespace_id: root_namespace.id)
    Ci::Minutes::NamespaceMonthlyUsage.update_counters(namespace_usage, amount_used: 100, shared_runners_duration: 100)
    project_usage = Ci::Minutes::ProjectMonthlyUsage.find_or_create_current(project_id: project)
    Ci::Minutes::ProjectMonthlyUsage.update_counters(project_usage, amount_used: 100, shared_runners_duration: 100)
    ```

   Type `:wq` to exit the log lines. Do not exit the rails console.

   **2. Add helper method to rails console**

    ```ruby
    def increase_ci_usage(project:, date:, amount_used:, shared_runners_duration:)
    date = date.utc.beginning_of_month
    project_usage = Ci::Minutes::ProjectMonthlyUsage.where(date: date).safe_find_or_create_by(project_id: project.id)
    Ci::Minutes::ProjectMonthlyUsage.update_counters(project_usage, amount_used: amount_used, shared_runners_duration: shared_runners_duration)
    root_namespace = project.root_namespace
    namespace_usage = Ci::Minutes::NamespaceMonthlyUsage.where(date: date).safe_find_or_create_by(namespace_id: root_namespace.id)
    Ci::Minutes::NamespaceMonthlyUsage.update_counters(namespace_usage, amount_used: amount_used, shared_runners_duration: shared_runners_duration)
    end
    ```

   **3. Use helper method**

    ```ruby
    increase_ci_usage(project: project, date: 1.month.ago, amount_used: 10, shared_runners_duration: 20)

   The usage quota page should now reflect the changes data.

- Secure:
  - To generate project vulnerabilities, execute `GITLAB_QA_ACCESS_TOKEN=XXXXXXXXXX GITLAB_URL="https://gitlab.com" bundle exec rake vulnerabilities:setup\[<Project_Id>,<Vulnerability_Count>\] --trace` from the `gitlab/qa` directory. Make sure to replace the placeholders in the script with your local access token, project ID, and desired number of vulnerabilities. An example of this might be `GITLAB_QA_ACCESS_TOKEN=asdfASDF1234- GITLAB_URL="http://localhost:3000/" bundle exec rake vulnerabilities:setup\[25,10] --trace`
  - To populate a merge request with vulnerabilities, [follow these steps](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/89526#note_992018561).
- Monitor:
   - For some MRs, you may need to add test alerts. Instructions for adding an alert, along with a sample alert, are available [here](/handbook/engineering/development/ops/monitor/respond/#assigning-mrs-for-code-review) (see the inline code snippet of instructions).
   - Service Desk MRs sometimes require setting up `incoming_email`, `service_desk_email` and MailRoom. These MRs can't be reviewed on GitPod and need a working GDK. Follow the set up instructions in the [GDK docs](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/main/doc/howto/service_desk_mail_room.md) or this [video walkthrough](https://youtu.be/SdqBOK43MlI).
- Value Stream Analytics: Value Stream [set up and seed data instructions](https://gitlab.com/-/snippets/2169951/raw/main/blocks.md). Many VSA features require an EE license, [request a developer license](/handbook/developer-onboarding/#working-on-gitlab-ee-developer-licenses).
- Product Analytics: To set up product analytics in your GDK instance follow these [instructions](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/main/doc/howto/product_analytics.md). This process can only be done on a local version of the GDK, not on GitPod. Additionally, it requires you to install Docker.

**If you find yourself struggling to get your environment set up**, try reaching out to the [design DRI](/handbook/product/categories/#devops-stages) for help with the specific testing requirements. If you're still having difficulties after an hour or so, it's perfectly acceptable to hand the MR over to the design DRI for review completion. If you have time it might be worthwhile to shadow the design DRI to watch and learn how they complete the MR review.

### Review the MR

- Review using the [design and UI changes checklist](https://docs.gitlab.com/ee/development/contributing/design.html#checklist) to make sure all main aspects are covered.
   - The team can decide to merge before a full review if the changes remain behind a feature flag and there's a plan for you to do a full review in staging. Beware that this approach can result in unplanned issues and MRs if things need to be fixed.
- Stick to the UX requirements in the issue. See the [follow-ups checklist](https://docs.gitlab.com/ee/development/contributing/design.html#follow-ups) on creating issues for further updates or missing pieces.
- Follow our review best practices for [everyone](https://docs.gitlab.com/ee/development/code_review.html#everyone) and [reviewers](https://docs.gitlab.com/ee/development/code_review.html#reviewing-a-merge-request).
   - Remember that reviewing someone else's work is a dialogue and is an opportunity to build trust and rapport within your team.
- Separate each topic into its comment thread so that they can be discussed and resolved separately. If possible, create threads on the line(s) of code related to the topic.
- Ensure the author is clear on what is required from them to address/resolve the suggestion.
    - Consider using the [Conventional Comment format](https://conventionalcomments.org/#format) to convey your intent.
    - For non-mandatory suggestions, decorate with (non-blocking) so the author knows they can optionally resolve within the merge request or follow-up at a later stage.
    - There’s a [Chrome/Firefox add-on](https://gitlab.com/conventionalcomments/conventional-comments-button) which you can use to apply [Conventional Comment](https://conventionalcomments.org/) prefixes.
- Share annotated screenshots or screen recordings in your comments whenever possible. Visual materials make issues clearer and communication more efficient.
   - To capture your screen, use free apps like [CloudApp](https://www.getcloudapp.com/), [Monosnap](https://monosnap.com/), or Mac's Screenshot (see how to [capture](https://support.apple.com/guide/mac-help/take-a-screenshot-or-screen-recording-mh26782/mac) and [annotate](https://support.apple.com/guide/mac-help/mark-up-files-mchl1fd88863/mac)).
   - Annotate screenshots to highlight specific aspects that need to be addressed.
   - Highlight differences between what's *implemented in the MR* and what's *expected* with a [Markdown table](https://docs.gitlab.com/ee/user/markdown.html#tables) that has images/videos. Consider using the template below.
      <details>
      <summary>Differences table template</summary>
      
        | This MR     | Expected    |
        |-------------|-------------|
        | Image/video | Image/video |
      
      </details>
- Try to find something worth praising the author for, like a thorough MR description or their attention to detail on a certain aspect. But don't make empty praises, only praise them if you recognize the value of what they've done.
- When there are concerns with an MR, consider the following actions to help progress the review:
   - Iterate instead of revert. Consider coaching and guiding the author of the MR towards an ideal solution.
   - Educate to collaborate. You may have more context of the problem than the author. Express your concerns and thoughts, and ask them how might they adapt their solution to accommodate the concerns.
   - Get a second opinion. When you are uncertain about a change feel free to involve a [quad member](/handbook/product/product-processes/#pm-em-ux-and-set-quad-dris) from your product group, your product design manager, and/or other designers. This can be done directly in the MR or in Slack channels.
   - Create a follow-up issue to address the concerns of the MR.
   - If changes are behind a feature flag, but there are concerns about the feature going live, consider creating an issue that blocks the full release of the feature with a list of items that need to be addressed (see this [example](https://gitlab.com/gitlab-org/gitlab/-/issues/398152)).

### Handoff the MR

- After each review round, you should remove yourself as a reviewer and post a summary comment, letting the author know if changes are required following your review.
- To address any outstanding UX concerns that deviate from the MVC, you should create follow-up issues and label them as `Deferred UX` (learn more about this label in [UX labels](/handbook/product/ux/#ux-labels)).
- If you complete an MR for work that isn't within your specific group, you should consider following up with the original author to discuss their documentation (ex. "This was unclear... In the future, you may want to..."). This can be thought of as a casual retrospective and can be synchronous or asynchronous.
- When you're confident that the MR meets all requirements you must [approve it](https://docs.gitlab.com/ee/development/code_review.html#getting-your-merge-request-reviewed-approved-and-merged) by hitting the Approved button in the merge request widget. To handoff the MR, see the [responsibility of the reviewer](https://docs.gitlab.com/ee/development/code_review.html#the-responsibility-of-the-reviewer).

## Performance indicator

The [Product Design merge request (MR) review volume](/handbook/product/ux/performance-indicators/#product-design-mr-review-volume) is tracked as a Key Performance Indicator (KPI) of the UX department.
