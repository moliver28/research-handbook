---
title: Product Designer Workflow
description: "Here are some guidelines to help Product Designers manage their work at GitLab"
---

## Planning and managing capacity

Product Designers are responsible for work assignments in their stage group and at the UX department level. These include supporting community contributions to their stage group, contributing to the [Pajamas Design System](https://design.gitlab.com/), reviewing other designers work, and more (see [Priorities](#priorities)). Product Designers are responsible for working with their stage peers and managers, as needed, to manage their capacity and complete their work on target and on time. Here are some guidelines to help Product Designers manage their work:

**Product Designers**

- Make sure discipline peers are aware of UX team assignments, such as UX OKRs, and what you'll need from them to succeed.
- Account for time off (both yours and others) as best you can during milestone planning.
- Let your manager know right away, if you believe you're not trending to complete your work. The sooner your manager knows, the higher the likelihood they can resolve the issue and manage expectations.
- Optionally, use UX issue weights to better learn your capacity and facilitate conversations with your Product Manager.

**Product Design Managers**

- If requested by Product Designers, help them set a baseline capacity for stage- and UX-team-assigned work each milestone. Product Designers can use this information to balance work and manage expectations.
- Quantify strategy work with clear time-to-complete (TTC) expectations, measurable goals, and deadlines.
- Resolve team questions, concerns, and blockers quickly.
- Make sure cross-functional partners are aware of UX OKRs and their associated dependencies.

### Priorities

Designers are [managers of one](/handbook/values/#managers-of-one) and responsible for managing their own capacity. Below is a list of some types of work that designers can work on throughout a milestone. We've divided them into three categories (must do, should do, and nice to do) to help with appropriate prioritization. Use these as a guide and collaborate closely with your Product Design Manager. For example, if you and your manager agree with investing more time on Pajamas issues for a milestone or two, then you may need to reduce the number of current milestone issues you commit to during that timeframe. Your manager can help you create the space within your capacity to do so.

Must do:

- Merge request (MR) reviews, including community contributions. See [MR Reviews guidelines](/handbook/product/ux/product-designer/mr-reviews/).
- Other designers' feedback requests. These can be in issues, MRs, Figma, the [`#ux-coworking`](https://gitlab.slack.com/app_redirect?channel=ux_coworking) Slack channel, or elsewhere. See related sections [Design Reviews](#design-reviews) and [Investigate possible dependencies](#investigate-possible-dependencies).
- Last minute adjustments, if any, to issues in the current release milestone and labeled `Deliverable`.
- Issues assigned to you labeled `workflow::problem validation`, `workflow::solution validation`, or `workflow::design`.
- Planning and prioritization of UX issues in the next release milestone. See [Milestone planning](/handbook/product/ux/ux-department-workflow/#milestone-planning).
- Share your work with other team members at GitLab through a UX showcase presentation, a Slack post or by adding it as a discussion topic in the weekly UX meeting.

Should do:

- [UX OKRs](/handbook/company/okrs/).
- Tasks that improve understanding of users and their journeys or workflows (e.g. [UX Scorecards](/handbook/product/ux/ux-scorecards/))
- Issues in the current release milestone and labeled `Stretch`.
- Issues labeled `Pajamas`, `pajamas::define`, `pajamas::design`, `pajamas::build`, or `pajamas::integrate`. See [Pajamas component lifecycle](https://design.gitlab.com/get-started/lifecycle) and the [Pajamas issue tracker](https://gitlab.com/gitlab-org/gitlab-services/design.gitlab.com/-/issues).
- Fill in ToDo blocks in Pajamas where we haven't fully speced out components or examples. You can easily search for these [here](https://gitlab.com/search?group_id=5387503&project_id=4456656&scope=blobs&search=todo).

Nice to do:

- [Beautifying our UI](/handbook/product/ux/product-design/#beautifying-our-ui).
- Issues labeled [`Seeking community contributions`](https://gitlab.com/groups/gitlab-org/-/issues?state=opened&label_name%5B%5D=Seeking+community+contributions&label_name%5B%5D=UX) or other low-hanging usability problems you can fix with an MR.
- Issues in future milestones. For example, in the next release milestone, [Next 2-3 months](https://gitlab.com/groups/gitlab-org/-/issues?state=opened&milestone_title=Next+2-3+months&label_name%5B%5D=UX), [Next 3-6 months](https://gitlab.com/groups/gitlab-org/-/issues?state=opened&milestone_title=Next+3-6+months&label_name%5B%5D=UX), or [Backlog](https://gitlab.com/groups/gitlab-org/-/issues?state=opened&milestone_title=Backlog&label_name%5B%5D=UX).
- Popular issues with no milestone (number of comments or upvotes).
- [Other issues labeled `UX`](https://gitlab.com/groups/gitlab-org/-/issues?state=opened&label_name%5B%5D=UX)
- [Socializing design work](/handbook/product/ux/product-designer/#socialize-your-work) outside GitLab by either writing a blog post, a social media post or by speaking at a conference or event.

See also [How we use labels](/handbook/product/ux/#ux-labels).

#### Engagement with Single Engineer Groups (SEGs)

The [Incubation Engineering Department](/handbook/engineering/development/incubation/) utilizes a Single Engineer Group (SEG) to work on "new market" efforts with a directive to move fast, ship, get feedback, and iterate. Occasionally, SEG efforts touch high-usage areas of our product (such as the Issue and MR views), and these engineers will request temporary design support (through the Product Design Manager) to drive the experience direction.

Product Designers and their managers should feel comfortable performing in-depth design critiques in issues and as part of MR reviews like they do for their Product Design peers. The goal is for UX to closely collaborate with Incubation Engineering to ensure a great experience for our users.

**Design reviews/critiques**

The SEG is responsible for [the design ideation](/handbook/product/ux/product-designer/#ideate-and-iterate) of their focus. Product Designers are not responsible for solving the customer problem or putting together design assets for the SEG.

However, if an SEG would like a Product Designer to review and provide feedback (at any phase--early ideations, wireframes, high fidelity mockups, and so on) they can reach out to the [Product Design Manager of the stage group/area of the product](/handbook/product/categories/) it likely impacts. It can sometimes be a challenge to know what group but any Product Design Manager can help you get in touch with the right designer.

Ideally, SEGs will give advance notice of when a design review is needed. It is best to let the Product Design Manager know as early as possible for better planning and capacity management of their teams.

**Reviewing SEG merge requests**

All MRs with user-facing changes gets a review from a designer. For SEGs, we treat them similarly to [community contributions](/handbook/product/ux/product-designer/mr-reviews/#community-contributions), in that we want the designer closest to the area to work with the SEG as they will be deeply versed in our existing product.

In some cases, the SEG focuses on new areas of the product that doesn't have a direct impact on current stage group experiences. In these cases, we utilize the [GitLab Roulette](https://gitlab-org.gitlab.io/gitlab-roulette/) automation to help assign a Product Designer to an MR for review. The automation occurs when adding the `UX` label to the MR.

### UX Issue Weights

Issue weights are optional, but weighting issues can be useful for planning. They enable Product Designers to understand their capacity, evaluate impact of time off, facilitate trade-off conversations with Product Managers, and help the Product Design Manager identify teams that need more UX support.

When weighting issues, we aim for [velocity over predictibility](/handbook/engineering/development/principles/#velocity-over-predictability). This means that we don't need to be accurate at first, we just need to get better. This paragraph has a [useful explanation of estimation](/handbook/engineering/development/analytics/analytics-instrumentation/#estimation) at GitLab.

#### How to Use UX Issue Weighting

1. Review upcoming issues and think about how you would break down the work.
1. Use the chart below to assign an issue weight. If you don't know enough about the issue to add a weight, you can work with the Product Manager to get more clarity.
1. Record your issue weight. There are a few ways to do this, so check with your team to see what they prefer:
    - Use Google docs to list issues and corresponding weights
    - Create a linked issue for the UX work and add a weight to the issue. This issue will be closed after UX work is finished, so that the issue weight won't count toward the engineering team's issue weights.
    - Use the [design-weight labels](https://gitlab.com/gitlab-org/gitlab/-/labels?utf8=%E2%9C%93&subscribed=&search=design-weight).
1. When planning an iteration or a milestone, communicate your capacity and the total issue weights you have assigned to yourself. You can use the template below if you like.
1. After you finish a milestone, do a review. Were your weights accurate? Were you over or under in estimating your capacity? Use this mini-retrospective to improve your planning.

**Additional Notes:**

- Most other UX issues, including research and Pajamas related issues could be weighted, if desired.
- When determining capacity, take into account visual reviews, meetings, and other responsibilities which aren't typically weighted.
- Really small issues where the weight would be less than 1, don't need to be weighted.
- A weight of 8 or 13 indicates that the issue is probably too large.
- If unplanned work is added during a milestone, the Product Designer can add a weight and discuss trade-offs with their Product Manager.

> Milestone Capacity Template:
>
> - **Total weights completed last milestone:** 10
> - **Average capacity (average of weights completed last 3 months):** 10
> - **Estimated capacity for current milestone:** 7 (use your average capacity and subtract planned time off)
> - **Total current weights:** 10

#### UX Weight Definitions

| Weight | Design Tasks | User Research Tasks |
| ------ | ------------ | ------------------- |
| 1 | Mostly small UI changes leading to small incremental UX improvements. No users’ workflow involved in these changes. Requirements are clear and there are no unanswered questions. <i>For example: A copy experiment or changing a button styling.</i> | Synthesizing previous research findings and generating recommendations based on them. |
| 2 | Simple UI or UX change where we understand all of the requirements but may need to find solutions to known questions/problems. These changes should blend in with an actual user workflow. <i>For example: [Simplify Sign in / Register process the in trial flow](https://gitlab.com/gitlab-org/growth/product/-/issues/1471)</i>. | Running a first click test or other type of unmoderated research study |
| 3 | A well-understood change but the scope of work is bigger. Several pages are involved and/or we're starting to design/redesign small flows or connect existing flows between each other. Designers may conduct extensive background research (previous issues, support tickets, review past user research, review analytics, etc). Some unknown questions may arise during the work. <i>For example: [Update the CustomersDot checkout page to allow subscription and billing information input](https://gitlab.com/gitlab-org/growth/team-tasks/-/issues/96), [Experiment with adding a contact sales option in app](https://gitlab.com/gitlab-org/gitlab/-/issues/197235)</i>. | A moderated, narrowly scoped research study with specific questions to answer, such as a usability review of a single page |
| 5 | A complex change where input from group members is needed as early as possible. Spans across multiple pages, and we're working on medium-sized flows that potentially connect with another area of the product There are significant open questions that need to be answered. The product designer may need to do some research on their own or in collaboration with a researcher, but this isn't always the case. Possible research activities might be to find and/or validate a Job To Be Done, conduct user testing or card-sorting, or do a survey. <i>For example: UX Scorecard, [How can we improve the dismiss action in upgrade moments](https://gitlab.com/gitlab-org/gitlab/-/issues/213344)</i>. | A research study evaluating the usability of an end-to-end flow or multiple related features, or a usability study with a minor exploratory component |
| 8 | Complicated changes introducing a new user flow that connects with other large flows and may require input from other designers, product managers, or engineers from the same or another stage group. This is the largest flow design/redesign that we would take on in a single milestone. This requires research where the designer may or may not be working with a researcher to plan and conduct exploratory interviews or user testing sessions. <i>For example: [Onboard new signs up through an onboarding issue board](https://gitlab.com/gitlab-org/growth/product/-/issues/107)</i>. | An exploratory study investigating broad-based behaviors related to a single stage, including one or more distinct user groups |
| 13 | Highly significant changes impacting multiple user flows, a large new feature, and/or a complete redesign. This issue could significantly impact product strategy and would require critical input from others (the wider GitLab community, e-group, customers), and there are many unknowns. This necessitates research where the designer could team up with a researcher and other designers to gather input data, plan and conduct exploratory interviews, lead user testing sessions… It's unlikely we would commit to complete this issue in a milestone, and the preference would be to further clarify requirements and/or break it into smaller issues planned in several milestones. <i>For example: [An improved free trial sign-up experience for GitLab.com SaaS users](https://gitlab.com/groups/gitlab-org/-/epics/377)</i>. | An exploratory study investigating broad-based behaviors across multiple stages and multiple types of users, potentially involving team members from the different stages. |

## Working on issues

This section provides an overview of how we work with issues. But it's very important for you to communicate with your PM and EMs early and often about how you should work together. Many teams have different flavors of this process as they have adapted to the needs of that product and that team.

### Triaging UX issues

Every Product Designer at GitLab is empowered to triage issues with "~UX", ["~Deferred UX"](/handbook/engineering/workflow/#deferred-ux) and ["~UI polish"](/handbook/engineering/workflow/#ui-polish) labels, or should be included for feedback by the responsible PM and EM instead. Use [Priority labels](/handbook/engineering/infrastructure/engineering-productivity/issue-triage/index.html#priority) to propose the time in which the issue should be solved and [Severity labels](/handbook/engineering/infrastructure/engineering-productivity/issue-triage/index.html#severity) to communicate its impact on users. Always work to align and communicate with your PM and EMs on the labels assigned.

### Scheduling issues in a milestone

All issues in a milestone labeled [`Deliverable`](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name%5B%5D=UX&label_name%5B%5D=Deliverable) that need UX will be assigned to a Product Designer by the kickoff. Issues labeled [`Stretch`](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name%5B%5D=Stretch&label_name%5B%5D=UX) may or may not be assigned to a Product Designer by the kickoff. Learn more about how we use Workflow labels in the [GitLab Docs](https://docs.gitlab.com/ee/development/labels/index.html#release-scoping-labels).

#### Communicating scheduled UX issues to the stage group

Consider adding a `User Experience` section to your team's planning issues ([example 1](https://gitlab.com/gitlab-org/ci-cd/release-group/release/-/issues/53#user-experience-roller_coaster), [example 2](https://gitlab.com/gitlab-org/ci-cd/release-group/release/-/issues/59#research-sleuth_or_spy)), which can include issues related to active design items for that given milestone such as research projects, Deferred UX, UI polish, or Pajamas components. Learn more about [planning and capacity](/handbook/product/ux/product-designer/#planning-and-managing-capacity) for product designers.

Having design problems added to the planning issue help make design efforts discoverable for the rest of the team and encourages cross-functional collaboration during `workflow::problem validation`, `workflow::design` and `workflow::solution validation`.

Other key benefits of making `User Experience` an official part of group's milestone planning include:

- Advocating for the value of UX within the stage group by making it part of the monthly team planning discussions.
- Using the planning issue with the Product Manager during the milestone kickoff recording.
- Communicating the current design and research efforts at a regular cadence to customers and counterparts outside the stage group area.
- Communicating the Product Designer's agreed capacity to the rest of the team.
- Reinforcing the desire for counterpart collaboration as early as possible within the design phase.

## Product design process

### Define the opportunity

- Work with your PM to [validate](/handbook/product-development-flow/#validation-goals--outcomes) _who_ you're designing for, _what_ you're designing, and _why_ you're designing it.
- Help your PM express the who/what/why as a user story. For example, "As a (who), I want (what), so I can (why/value)." If you’re asked to implement a non-evidence-based how, then ask the PM to refocus on the who/what/why, so everyone can work together to find the best how.
- Help your PM to define [MVC](/handbook/product/product-principles/#the-minimal-viable-change-mvc) success criteria, prioritizing MVC “must-haves” and non-MVC “should-haves” and “could-haves.” (Note that this success criteria is subject to change based on new learning from the iterative design process and customer feedback.)

### Before you design

#### Generate ideas

Part of the role of product designers is to lead and facilitate idea generation within our teams. We are all very busy working with PMs to drive forward our product roadmaps and solve known UX problems, but remember there are also undiscovered problems out there that are definitely worth solving. Here are a few activities and resources to inspire you!

- Run a sync (such as a [ThinkBig!](/handbook/product/ux/thinkbig/) session), async, or combination workshop to generate ideas. Define a scope and invite  participants from product, engineering, ux research, and other areas for best results.
- Reach out to [sales](/handbook/sales/), [customer success](/handbook/customer-success/) or [marketing](/handbook/marketing/brand-and-product-marketing/design/) counterparts for a new perspective. You can also invite these counterparts as optional attendees to your regular meetings.
- Prioritize a round of [problem validation research](/handbook/product/ux/ux-research/problem-validation-and-methods/) together with Product Managers and UX research. Talk to customers about their experiences building software in a very open-ended way, see what keeps them up at night, what slows them down, and what impedes their productivity.
- Discover unknown pain points:
    - [Dovetail](/handbook/product/ux/dovetail/) is used to analyze data, collaborate on insights, and as our current research repository.
    - [Chorus.ai](https://www.chorus.ai/) is a tool used by sales reps that records and transcribes sales calls. You can search calls by keyword to narrow in on what you listen to.
    - [Zendesk](https://gitlab.zendesk.com/agent/) is also a source of information around existing problems, although it can be a bit harder to parse through the tickets, as they aren't necessarily categorized in a way that is optimal for UX.

Access instructions for Dovetail, Zendesk and Chorus.ai

- The [community forum](https://forum.gitlab.com/c/questions-and-answers/) is a support option for free users.

#### Understand the space

- Investigate whether there is existing UX Research in the [UX Research Archive](https://gitlab.com/gitlab-org/uxr_insights), [Dovetail](https://dovetailapp.com/), or other data that could help inform your decisions and measure results. If there isn't existing UX Research, contact your [UX Researcher](/handbook/product/ux/ux-research/how-uxr-team-operates/) to conduct (or guide you and your Product Manager in conducting) research for the problem.
- Consider conducting competitive analysis to inform your work. Look for terminology, functionality, and UX conventions that can help refine success criteria. Only stray from industry conventions with strategic intent, such as capitalizing on [disruptive innovation](https://www.economist.com/the-economist-explains/2015/01/25/what-disruptive-innovation-means) opportunities. We want users to migrate from other tools to ours, and they’re more likely to be successful and satisfied when our products use conventions that are familiar based on other tools they've used.
- Consider creating user flows or journey maps to help ensure you've considered the entire workflow and also to help communicate that workflow to your team.

#### Investigate possible dependencies

It is our responsibility as Product Designers to research how our work can impact other parts of the product and the work that other Product Designers are doing.

- Proactively reach out to other Product Designers (using Slack, Weekly UX Sessions, etc.) to get background information on the product area you are about to start working on and to learn how your product area depends and interacts with others.
- Identify the [DRI](/handbook/people-group/directly-responsible-individuals/) for the product area you're about to start working on, and involve them in your design process from the beginning. If you are unsure who the DRI is, visit the [Product Categories Handbook page](/handbook/product/categories/).
- Check the [Product Kickoff Review](https://about.gitlab.com/direction/kickoff/) to see the list of issues that are currently planned for next release in other stages.

### Aiming towards "sophisticated simplicity"

The visual design of GitLab has come a long way from naive simplicity to sophisticated complexity, but there's a third level yet to be reached — sophisticated simplicity ([Sophisticated Simplicity,  Marcel Weiher](https://blog.metaobject.com/2014/04/sophisticated-simplicity.html)). There are three tenets of sophisticated simplicity to keep in mind as you're designing:

1. **Structure** - Organization and hierarchy of content and concepts into meaningful groups and patterns
1. **Discovery** - Ability to interact and explore that leads to learning and proficiency while being mistake adverse
1. **Capability** - Features and function that allow a user to complete a task and process automation

[Three-part venn diagram with the terms structure, discovery, and capability overlapping to create sophisticated simplicity in the center.](sophisticated-simplicity-venn.svg)

An imbalance in any of these tenets can lead to a less than ideal experience.

- Structure + discovery without capability creates a simple experience that might be good for static content, but adds little functionality to make the experience more rich.
- Discovery + capability creates a robust, sophisticated, and perhaps intriguing experience, but one that is hard to master as the structure that helps guide discovery and relationships is lacking.
- Structure + capability results in sophisticated complexity where an "everything all the time" interface provides a lot of functionality, but the discovery cues that lead to learning, association, and understanding cause and effect aren't present.

An interface that achieves sophisticated simplicity will reduce friction to access basic functionality and content, provide quick access to powerful features, and help all users become more proficient at completing tasks.

Here's a sample set of questions you can ask yourself when designing:

- Is the content hierarchy and flow clear?
- Are like items grouped and are groups clearly defined?
- Does this content or functionality need to be visible all the time and for everyone?
- Does this content or functionality need to be present in this context? Is it helpful *and* necessary?
- Does discovery allow a user to avoid mistakes or recover from them easily?
- Is the structure in support of discovery and use of advanced capabilities?
- Is this feature and/or capability even needed or used, or what would happen if it was removed?
- Is everything "in reach," or is a user left wandering?

#### Beautifying and "unboxing" the UI

There are two evergreen design efforts that align with sophisticated simplicity:

1. **Beautifying the UI** -  Clean up a portion of the UI — from a single component to an entire page or experience — to create more consistency, organization, and aesthetic improvements. Learn more in the [Beautifying our UI](/handbook/product/ux/product-design/#beautifying-our-ui) section of the handbook.
1. **Unboxing the UI** - Boxes are currently overused to convey hierarchy, layout content, and divide pages into sections, but there are better ways. Learn more in this video on ["Unboxing" the UI](https://youtu.be/MxpZuWQH-kk).

### Ideate and iterate

Iterative design at GitLab combines the two industry-standard definitions of "[incremental design](https://medium.com/@saadiam/incremental-design-12a260f024ae)" and "[design iteration](https://en.wikipedia.org/wiki/Iterative_design)." Put simply, iterative design is the process of breaking down design solutions into the smallest change possible that improves the user's outcome. It's getting things quickly into the product to get feedback early and guide refinement.

When applying iterative design, you should consider the longer-term strategy or vision and work with your Product Manager to plan successive releases until it's realized.

- Share design ideas in the lowest fidelity that still communicates your idea. To keep the cost of change low, only increase fidelity as design confidence grows and implementation requires.
- Ask for feedback from your PM throughout the design process to help refine your understanding of the problem and solution criteria.
- Engage engineering peers early and often. Their insight into technical costs and feasibility is essential to determining viable designs and MVCs. Also, invite design feedback, especially if you’re solving for a development workflow they’re familiar with.
- Ask for feedback from other Product Designers in [Design Reviews](#design-reviews) to help improve your work. At minimum, you'll get objective feedback and new ideas that lead to better solutions. You might also get context you didn’t know you were missing, such as GitLab-specific or industry-standard design conventions.
- Collaborate with your group's Technical Writer when the work involves substantial UI text, such as user-assistance or links back to documentation. For details on how to collaborate, see the [UI text Planning and authoring](/handbook/product/ux/technical-writing/workflow/#ui-text) section of the Technical Writing handbook. Additionally, involve your technical writer in the [review process](#technical-writer-ui-text-reviews) for smaller copy changes, such as UI elements labels.
- For a significant UX change, like a new workflow or feature, include your Product Design Manager in feedback sessions, as they might have input into the overall direction of the design or knowledge about initiatives on other teams that might impact your own work.
- If the team does not have a high level of confidence in a direction, there are multiple design solutions, or the direction is a significant risk, [validate](/handbook/product-development-flow/#validation-phase-4-solution-validation) your proposed solution with customers/users by leveraging [ux research methods](/handbook/product/ux/ux-research/solution-validation-and-methods/). If the team has a high level of confidence in a direction or design solution and the risk is low, it's fine to gather feedback from customers only after releasing the MVC.
- Use the [design and UI changes checklist](https://docs.gitlab.com/ee/development/contributing/design.html#checklist) to help you think through how your design will read, look, and behave.

#### GitLab Design Talks: Iteration

{{< youtube "0lhjzU-QZ2w?start=286&amp;end=359" >}}

> "Our relationship with uncertainty: When we conduct research and design we have some level of certainty about how effective it’s going to be, but it isn’t until we ship it and get it in the hands of many users that we truly understand how effective the thing is that we designed."

{{< youtube "VrXQiik3Q9U?start=244&amp;end=334" >}}

> "Breaking things down creates psychological safety for me as a designer."

### Design Reviews

Sharing work and gathering feedback can happen at any time within the design process. We do this most frequently by sharing mocks and having open discussions in issues.

Design Reviews are a dedicated space for Product Designers to give and receive specific and sometimes in-depth feedback on ideas and possible solutions. Other benefits include:

- Discover what others are working on.
- Identify any overlapping work.
- Help surface opportunities for where group work should overlap.
- Encourage the practice of sharing ones work.

We [default to asynchronous](/handbook/values/#bias-towards-asynchronous-communication) design reviews so everyone can participate. Asynchronous Design Reviews are very similiar to their synchronous equivalent: designers share their work and provide context so their peers can offer valuable and constructive feedback. Product Design Managers are encouraged to coordinate Design Reviews on a regular candence with their teams.

In practice, this is what it means for designers:

1. Identify one issue where you have many open questions or the one you're most excited to work on.
1. Decide what the best format is to give others a glimpse into the work you need feedback on: It could be anything from an issue, a short text blurb, screenshots, a Figma file, or a short, up-to 5-minute walkthrough recording of the problem you are trying to solve.
1. Remember to share the customer problem, known constraints, and what kind of feedback you need. Be specific about what you want feedback on and also what you do not want feedback on, and where you want the feedback to be provided. Read more about [employing multimodal communication](/handbook/communication/#multimodal-communication).
1. Post your item with a short description to the [`#ux-coworking`](https://gitlab.slack.com/app_redirect?channel=ux_coworking) Slack channel and any other channel where you'd like to get feedback (e.g. your Groups channel, etc.). Be sure to provide a link to the item requiring review as well as a link to the location where feedback should be left. Capturing feedback in issues will ensure you can refer back to it later, whereas Slack messages will eventually disappear.
1. If you're recording a video, it's recommended (but not required) to default to using Zoom as your recording tool. Please make sure to upload the video to our [GitLab Unfiltered](https://www.youtube.com/channel/UCMtZ0sc1HHNtGGWZFDRTh5A) YouTube channel, because it serves as the single-source-of-truth for videos and makes them easily searchable and accessible to the wider GitLab community. Set the visibility to "Public" (unless your video contains confidential information), and add it to the "UX" playlist (and any other relevant playlists). For more information, see our [YouTube uses and access](/handbook/marketing/marketing-operations/youtube/) page.
1. Comment on your feature issue with a link to the video and links to all references made ([example](https://gitlab.com/gitlab-org/gitlab/-/issues/217355#note_435285696)), such as related issues, epics, or Figma files. Also add those reference links to the video's description, so that everyone can follow and participate ([example](https://www.loom.com/share/f99878181fe7429d8c0a9d94bfd8b943)).
1. You can also open an issue dedicated to capturing feedback ([example](https://gitlab.com/gitlab-org/gitlab/-/issues/241511)), and attach all references and information needed for review within the issue description. This will allow the threads to focus solely on providing and discussing feedback. Attach this issue as related to the main feature issue.

**Examples**

- [Add a new list iteration - feedback request](https://gitlab.com/gitlab-org/gitlab/-/issues/284610)
- [Swimlane boards loading states - Skeleton loaders feedback request](https://gitlab.com/gitlab-org/gitlab/-/issues/277240)
- [Right issuable sidebar patterns feedback request](https://gitlab.com/gitlab-org/gitlab/-/issues/270117)
- [Geo: Maintenance mode design](https://gitlab.com/gitlab-org/gitlab/-/issues/201757)

#### Who to include in design reviews

Deciding who to include in a design review, whether an informal share or a request for feedback around specific questions, can be daunting when you are new to GitLab or a team. Here are a few guides:

- Your Product Manager, Engineering Manager, Frontend Engineers and Product Design Manager should always have opportunities to review and provide feedback on all of your work. The easiest way to do this is to include them on the issue so it's more of a collaboration through the design process than a formal review request.
- The peer designers of your Section are excellent reviewers at any time in your process.
- If your work impacts other Stages, include those counterparts.
- If your work touches navigation, global headers/footers, a change to a Pajamas pattern, or something else with broad impact, always ask for a UX Dept review in the `#ux_coworking` Slack channel or mention `@gitlab-com/gitlab-ux/designers` in GitLab. For navigation changes, also follow [this guidance from the Foundations team](/handbook/product/ux/navigation/).
- Sometimes the list of reviewers includes people from other Departments, such as Customer Success, Sales or Marketing. For example, if you are using brand assets in a way that different from brand guidelines, you should provide an opportunity for that team to give feedback. If you aren't sure who to include in your design review process, ask your Product Design Manager.

### Partnering with Technical Writers

Any additions or changes to UI text require review by the group's Technical Writer. You should discuss plans and ideas during the Product [Design phase](/handbook/product-development-flow/#validation-phase-3-design).
UI text includes button or menu labels, error messages in the UI or in log files, user-assistance microcopy, notification emails, and any other text that may be surfaced in the UI. Changes to UI text often have a far-reaching effect on documentation steps.

- Ensure the issue and MR have the [UI text](https://gitlab.com/gitlab-org/gitlab/-/issues?label_name%5B%5D=UI+text) label.
- Add the `documentation` label. Documentation changes resulting from UI text changes follow the [Documentation for a product change](/handbook/product/ux/technical-writing/workflow/#documentation-for-a-product-change) workflow.
- Message the [Technical Writer for the group](/handbook/product/ux/technical-writing/#designated-technical-writers) in the design issue to request a review, including any specific files or lines they should review, and how to preview or understand the location/context of the text from the user's perspective. You can also message the writer in the MR to perform a final check of the agreed text.
- Finalizing the UI text should be a collaboration between the Product Designer and the Technical Writer to produce the best possible usable and accurate text-based solution.
- Often team members from Product, Marketing, Legal or other departments will have their own requirements for UI copy. To reduce back-and-forth revisions and design-by-committee, the Product Designer is recommended to ask these team members to provide the goals for what the text needs to communicate, rather than ideas for the text itself.

#### Collaborating on in-product reference information

Sometimes the designer, PM, and technical writer agree to display additional [in-product reference information](https://design.gitlab.com/usability/helping-users/#providing-reference-information) in a [drawer component](https://design.gitlab.com/components/drawer/). The reference information should align with the existing documentation for the feature.

If the content that should go in the drawer doesn’t exist yet:

1. The designer should write some draft copy identifying what they think needs to go in the drawer so that users can achieve the goal. Designers can work collaboratively with their counterparts in creating this initial draft to get it as close as possible to the final. This is considered a draft copy.
1. When the draft copy is completed, the designer adds some sort of marker that lets the team know the drawer content is not final. This could be a text watermark overlay that says “waiting on documentation,” “draft,” or “placeholder,” or even a pin added to the Figma file or in the design management area.
1. The designer completes the rest of the design and follows the current design to development process:
    1. Dev creates drawer and documentation as part of feature code MR.
    1. TW reviews documentation and drawer content.
    1. Documentation published and drawer populated with content.

### Partnering with UX Researchers

UX Researchers work closely with Product Managers and Product Designers to ensure research projects are focused and provide answers to design questions.

- Ensure you follow the [process to request research](/handbook/product/ux/ux-research/how-uxr-team-operates/#how-to-request-research) (even if you are conducting the research yourself)
- Ensure you follow the process to document research findings

### Refine MVC

- UX issues have a tendency to expand in scope. Work with your PM and developers to revisit which aspects of the design are “must-haves” versus those that can be pushed until later. Document non-MVC concepts and research in new issues, marking the new issues as related to the original issue. If you’re ever unsure how to split apart large issues, work with your Product Design Manager.
- If developers need to begin before you have validated your designs, and a planning pivot to another validated UX issue or perhaps dev debt issues is not an option, then look for high confidence and low risk changes devs can start work on while you validate the remainder of the solution. To mitigate these scenarios, PMs and UXers should work together to [get 1-2 months ahead](/handbook/product-development-flow/#validation-track), so that the Build track always has well-validated product opportunities ready to start.
- Developers should be able to build a working feature within one release. If a feature is too large to build within one release, work with your PM and Engineering team to determine the best way to split the feature into smaller segments.

For iteration inspiration watch our Product Designers discuss [iteration at GitLab](https://youtu.be/0lhjzU-QZ2w).

### Present an MVC solution

- After you've validated your solution with users, propose just one solution. Proposing multiple alternative solutions for others to pick undermines your position as a UX expert and leads to design by committee. If you have a good reason to propose multiple alternative solutions, make sure to explain why.
- When sharing asynchronously in an issue, make sure your audience has the context necessary to understand your proposal and how they can help. Is it clear who will use the solution and what it will enable them to accomplish? Do you need feedback or assistance from stakeholders? If so, on what specifically? Or, are you looking for approval? To make reviewing easier, have you highlighted things that changed since the last review?
    - Consider using the [collapsed content sections](/handbook/markdown-guide/#collapse) to include information that would support points being made without distracting the reader from the main point. This is demonstrated in [this issue comment around using analytics about file sizes](/handbook/markdown-guide/#collapse).
- `@mention` your Product Design Manager on the issue for feedback. Product Design Managers have a broader view of work that's happening across the product, enabling them to provide feedback that is helpful for maintaining strategic alignment, a consistent level of quality, and functional consistency.
- Frame design discussions around the customer and the problem being solved, not the UI or functionality itself. When presenting, start with the current state and how it fails to meet user needs, and then walk through the proposed solution from the user’s point of view. As the discussion unfolds, continually tie everything back to the user’s experience and needs.
- Anticipate questions that others might have, and try to answer them in your proposal comments. You don’t have to explain everything, but try to communicate a bit of your rationale every time you propose something. This is particularly important when proposing changes or challenging the status quo, because it reduces the feedback loop and time spent on unnecessary discussions. It also builds the UX Department’s credibility, because we deal with a lot of seemingly subjective issues.
    - Consider using the [questions as headings](https://gitlab.com/gitlab-org/gitlab/-/issues/118442#note_276666054) in framing your proposal
- Keep the SSOT updated with what’s already agreed upon so that everyone can know where to look. This includes images or links to your design work.
- If you’re working with design files, follow the instructions in the [GitLab Design project contribution guidelines][gitlab-design-project-contribution-guidelines] and regularly commit them.
- If you are proposing a solution that will introduce a new UX paradigm, or change an existing one, please consider the following:
    1. Will this pattern be inconsistent with other areas of the application?
    1. Will other areas of the application need to be updated to match?
    1. Does this new pattern significantly improve the user experience?
    1. If you decide that it is worth changing/updating the pattern, follow the steps outlined in our [component lifecycle documentation](https://design.gitlab.com/get-started/lifecycle).

### Deliver

- Once your work is complete and all feedback is addressed, make sure that the issue description, the SSOT, is updated with a section called "Solution". This is where you should direct people when they have questions about what should be done and how. If you use a UX issue, please update the main issue as well.
- Include your design in the "Solution" section. For small designs that don't need extra explanation or demonstration of interactions, a mock-up here is sufficient. For more involved changes, include a link to the Figma file.
- Use the [design handoff checklist](https://docs.gitlab.com/ee/development/contributing/design.html#handoff) to make sure all design specifications are documented and you're setting up Engineers for success.
- When sharing design work, utilize both Figma's collaboration tools and [GitLab's design management features](https://about.gitlab.com/direction/plan/design_management/). In the following table, you’ll find a few common scenarios along with the recommended tool. Use this as a starting point, and when in doubt, make the best decision that moves the design forward.

| **Scenario** | **Figma** | **Design Management** |
| -------- | ----- | ----------------- |
| Co-designing within a shared file | √ |  |
| Providing, or seeking feedback while a design is still in progress, and not ready for MVC | √ |  |
| Seeking feedback on a design with a larger audience |  | √ |
| When feedback directly impacts an issue |  | √ |
| Presenting design options or variations so the team can choose a direction |  | √ |
| Sharing a prototype | √ |  |
| Adding a to-do for a designer as it relates to in-progress design | √ |  |
| Adding a to-do for a designer as it relates to an issue |  | √ |
| Identifying visual regressions |  | √ |
| Detailed redlines or specs | √ |  |

- If the solution needs to be broken out into smaller issues for implementation, apply the `workflow::planning breakdown` label and stay involved by walking PM and Engineering through the proposed solution and participating in the conversation to break down the issue.
- If the solution needs to be scheduled by PM and/or EM, apply the `workflow::scheduling` label and mention the [responsible product manager](/handbook/product/categories/#devops-stages) to [schedule it](/handbook/engineering/workflow/#scheduling-issues). It is also the Product Designer's responsibility to communicate with the assigned engineer to ensure they understand the solution.
- If the issue is meant for implementation in the current milestone, review the solution with the assigned engineer(s) and/or engineering manager. If they are comfortable with the solution, you can apply the `workflow::ready for development` label.
- There are times that a Product Manager might request that an issue is moved to the Build phase before the Product Designer feels that the experience meets UX Department standards. In that case, the Product Designer should create follow-on issues and/or apply the `Deferred UX` label to indicate that the product doesn’t meet UX requirements and will require immediate iteration.

### Socialize your work

Socializing design work provides Product Designers with opportunities to mentor, engage, and inspire other designers inside and outside GitLab. Widening one's attention to different work areas can also help understand how design decisions impact the product at large.

Product Designers are encouraged to socialize their work internally through Slack, Unfiltered, and [UX showcases](/handbook/product/ux/ux-showcase/) to open new pathways to collaboration and other teams with similar objectives and overlapping JTBDs to address opportunities.

Other ways to socialize design decisions is by writing design focused [blog posts](/handbook/marketing/blog/) and [speaking at events/conferences](/handbook/marketing/corporate-communications/speaking-resources/). This type of engagement empowers designers outside GitLab to draw inspiration from our work. The additional visibility can also positively impact our hiring pipeline by providing future applicants a glimpse of what working in the UX Department at GitLab looks like. Sharing brings in more transparency into the design-decision making process and benefits community members by [reducing threshold to contributions](/handbook/values/#transparency).

### Follow through

- Encourage Engineers to scope down features into multiple merge requests for an easier, more efficient review process.
- When breaking down features into multiple merge requests, consider how the UX of the application will be affected. If merging only a portion of the total changes will negatively impact the overall experience, consider using a feature branch or feature flag to ensure that the full UX scope ships together.
- When breaking solutions into smaller parts, make sure to share the end design goal, so that the entire team has context. Giving everyone the full picture helps developers write code aimed at achieving that goal in the future.
- Keep the issue description updated with the agreed-on scope, even if doesn’t impact your work. This is everyone’s responsibility. The issue description must be the Single Source Of Truth (SSOT), not the discussion or individual comments.
- Not all issues are scheduled immediately, which means changes are likely needed when the issue is prioritized. The Product Designer responsible for a particular stage group should be aware of open issues within their product area and work to prioritize them accordingly with their respective Product Managers, even if they are not the original designer who worked on the issue.
    - To stay up to date with issues in your product area, subscribe to the label that matches your stage group.
    - Review issues within your stage group label regularly.
    - Actively contribute to planning meetings to ensure all open issues are being discussed and prioritized.
- When working on an issue, keep the SSOT in the description updated until the issue is closed. This applies to both text and mockups. Previous content (by a PM, for example) should be removed or archived into a separate section in the description. If the developer working on the issue ever has any questions on what they should implement, they can ask the designer to update the issue description with the design.
- For obvious changes, make the SSOT description update directly. [You don’t need to wait for consensus](/handbook/values/#collaboration). Use your judgement.
- When the issue is actively being worked on, make sure you are assigned and subscribed to the issue. Continue to follow both the issue and related merge request(s), addressing any additional UX issues that come up.

### MR reviews

See [MR reviews handbook page](/handbook/product/ux/product-designer/mr-reviews/).

When reviewing an MR, click through to the issue to find the SSOT, which should be either a mock-up or Figma link in the Solutions section of the issue description.

### Follow-up after design is complete

For changes that affect Pajamas, such as introducing a new UI component, refining an existing component, or adding significant clarity to the usage of a component, you should take the following additional steps:

- For changes that affect the user interface: [Create a **UX Pattern** issue](https://gitlab.com/gitlab-org/gitlab-design/issues/new?issuable_template=UX%20Pattern) in GitLab Design and follow its checklist to record the new standard.
- For other changes: Create an issue and/or MR in the [Design System](https://gitlab.com/gitlab-org/gitlab-services/design.gitlab.com) to update the documentation.
- As applicable, create issue(s) to update areas of the application that are affected by this pattern.
- Add an agenda item to the next UX weekly call to inform everyone of those changes.
- If the change/addition is a significant one, consider adding it to the Company Call to inform the company of the changes.

### Follow-up after your changes go live

- Listen for feedback. If you receive feedback (positive or negative), create an issue to track it. This can be feedback in social media, Slack, or internet forums; internal or external.

## Designing AI solutions

Below is a list of some of the resources that you can use to contribute to the design of AI-assisted features across the platform.

- [Documentation: AI-human interaction in Pajamas](https://design.gitlab.com/usability/ai-human-interaction)
- [Documentation: AI Integration Effort FAQ](https://internal.gitlab.com/handbook/product/ai-strategy/ai-integration-effort/faq/) **Internal handbook 🔒**
- [Documentation: UX maturity requirements to move from Experiment to Beta to GA](/handbook/product/ai/ux-maturity/)
- [Documentation: Experiment, Beta, and Generally Available features](https://docs.gitlab.com/ee/policy/experiment-beta-support.html)
- [Documentation: UX research in the AI space](/handbook/product/ux/ux-research/research-in-the-AI-space/)
- [Epic: UX of AI Integration](https://gitlab.com/groups/gitlab-org/-/epics/10269)
- [Figma: AI prototypes](https://www.figma.com/file/s4TP1i2Akd1VTh4jhbg234/AI-prioritized-prototypes?type=design&node-id=1%3A79&t=SNUCGun6HHxi9LaY-1)
- [Issue template: AI Project Proposal](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issuable_template=AI%20Project%20Proposal)

## UX Paper Cuts workflow

See [UX Paper Cuts Direction Page](https://about.gitlab.com/direction/ux-paper-cuts).

## Approach to communication

As design can be subjective, discussion can heat up. Sometimes team members won't agree on the best approach. Always try to be [direct](/handbook/values/#directness) but [kind](/handbook/values/#kindness). Try to give your best reasoning for your choices, and evaluate everyone's ideas and suggestions. Come up with a solution instead of discussing endlessly. If you think additional perspective is needed, mention a fellow Product Designer in the issue, or take it a step further and suggest that we perform some [solution validation](/handbook/product/ux/ux-research/#solution-validation) to let the data guide our design direction. Finally, remember that at GitLab we can [disagree, commit, and disagree](/handbook/values/#disagree-and-commit).

## Design tools

### Figma & FigJam

**Note: Unless otherwise stated, the information about `Figma` in this section also applies to `FigJam`.**

Our primary design tool is [Figma](https://www.figma.com/). As a product designer or product design manager in the UX department, you will have a Professional Figma license and access to the GitLab team in Figma. You don’t need to do anything on your end, other than accept the invite sent to your GitLab email account during onboarding.

Anyone else in GitLab can access your files when you either share the file URL or invite them directly via email, but we ask that you only give them “can view” permissions. Anyone with “can edit” permissions is considered a paid seat and must have approval. A user with “can view“ permission will still be able to comment on and inspect design files.

If you want to invite team members to collaborate on your FigJam boards, you can do this by starting an [open session](https://help.figma.com/hc/en-us/articles/4410786053911-Invite-visitors-to-an-open-session). This feature allows for team members with or without a FigJam license to have edit access as long as the board has been enabled for an open session and the link for the board is shared with them. Open sessions will only run for **24 hours** at a time. If you want team members to be able to edit your files across multiple days, you will need to restart the open session each day.
If there are concerns about keeping information on your Figjam board SAFE, you can add [password protection](https://help.figma.com/hc/en-us/articles/5726720100247-Add-password-protection-to-files). That way only those with the password can edit the board when the open session is enabled. 

GitLab has a public Figma profile where anyone can duplicate or remix files we have published. You can view our profile under the Community tab of the GitLab team section, or navigate to https://www.figma.com/@GitLab.

Do not create additional teams. An editor is billed for each team they are on, and we’ve only allocated resources for one team.

Figma has four levels of access, also called Permissions, for Professional teams. Permissions can be set at a team, project, and file level.

1. **Editors** - Only GitLab product designers and product design managers in the UX department are editors. Editors have “can edit” access to projects and files, unless otherwise changed.
1. **Viewers** - Viewers on the GitLab team have “can view” access to any project or file, unless otherwise changed.
1. **Admins** - An admin has access to Team Settings, and the Admin Dashboard, including billing.
1. **Owners** - Anyone who creates a team, project, or file will be the default owner of it.

[View complete permission details](https://help.figma.com/hc/en-us/articles/360039970673-Viewer-Editor-and-Admin-team-permissions)

#### File backup

Figma's cloud storage contains all design files under our Organization account and only the Pajamas UI Kit files are published to our [GitLab Product Design](https://www.figma.com/@gitlabdesign) community page and available publicly. It's recommended that you back up any non-confidential design files you'd like to have a record of for future reference or portfolio use by saving a .fig file and storing via your preferred method.

[ux-guide]: https://docs.gitlab.com/ee/development/ux_guide/
[gitlab-design-project-contribution-guidelines]: https://gitlab.com/gitlab-org/gitlab-design/blob/master/CONTRIBUTING.md
[twitter-sheet]: https://docs.google.com/spreadsheets/d/1GDAUNujD1-eRYxAj4FIYbCyy8ltCwwIWqVTd9-gf4wA/edit
[product-dev-flow]: /handbook/product-development-flow/
