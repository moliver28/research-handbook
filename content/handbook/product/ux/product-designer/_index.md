---
title: Product Designer Workflow
description: "Here are some guidelines to help Product Designers manage their work at GitLab"
---

## Working on issues

This section outlines our approach to handling issues. It's crucial to communicate with your Product Manager (PM) and Engineering Managers (EM) early and frequently to determine the best way to collaborate. Each team may have unique processes tailored to their specific product area and team needs.

### Triaging UX issues

Every Product Designer is empowered to triage issues labeled with "~UX", ["~Deferred UX"](/handbook/engineering/workflow/#deferred-ux) and ["~UI polish"](/handbook/engineering/workflow/#ui-polish). If you are not the one triaging, you should be included for feedback by the responsible PM and EM. Use [Priority labels](/handbook/engineering/infrastructure/engineering-productivity/issue-triage/index.html#priority) to suggest when the issue should be resolved and [Severity labels](/handbook/engineering/infrastructure/engineering-productivity/issue-triage/index.html#severity) to indicate its user impact. Always coordinate with your PM and EMs on the assigned labels.

### Scheduling issues in a milestone

All issues labeled [`Deliverable`](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name%5B%5D=UX&label_name%5B%5D=Deliverable) that require UX will be assigned to a Product Designer by the kickoff. Issues labeled [`Stretch`](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name%5B%5D=Stretch&label_name%5B%5D=UX) may or may not be assigned by the kickoff. Learn more about how we use Workflow labels in the [GitLab Docs](https://docs.gitlab.com/ee/development/labels/index.html#release-scoping-labels).

#### Communicating scheduled UX issues to the stage group

Consider adding a `User Experience` section to your team's planning issues ([example 1](https://gitlab.com/gitlab-org/ci-cd/release-group/release/-/issues/53#user-experience-roller_coaster), [example 2](https://gitlab.com/gitlab-org/ci-cd/release-group/release/-/issues/59#research-sleuth_or_spy)). This section can include active design items for the milestone, such as research projects, Deferred UX, UI polish, or Pajamas components. Learn more about [planning and capacity](/handbook/product/ux/product-designer/#planning-and-managing-capacity) for Product Designers.

Including design problems in the planning issue helps make design efforts visible to the team and encourages cross-functional collaboration during `workflow::problem validation`, `workflow::design` and `workflow::solution validation`.

Key benefits of making `User Experience` an official part of group's milestone planning include:

- Advocating for UX within the stage group by making it part of the monthly planning discussions.
- Using the planning issue with the Product Manager during the milestone kickoff recording.
- Communicating current design and research efforts regularly to customers and counterparts outside the stage group area.
- Sharing the Product Designer's capacity with the team.
- Encouraging early collaboration with counterparts during the design phase.

## Product design process

### Define the opportunity

- Collaborate with your PM to [validate](/handbook/product-development-flow/#validation-goals--outcomes) _who_ you're designing for, _what_ you're designing, and _why_ you're designing it.
- Help your PM articulate the who/what/why as a user story. For example, "As a (who), I want (what), so I can (why/value)." If you’re asked to implement a non-evidence-based how, encourage the PM to refocus on the who/what/why to collaboratively determine the best how.
- Assist your PM to defining [MVC](/handbook/product/product-principles/#the-minimal-viable-change-mvc) success criteria, prioritizing MVC “must-haves” and non-MVC “should-haves” and “could-haves.” Note that these criteria may change based on new insights from the iterative design process and customer feedback.

### Before you design

#### Generate ideas

As a Product Designer, a key part of your role is to lead and facilitate idea generation within our teams. While it's important to address known UX problems and work on product roadmaps with PMs, remember that there are also undiscovered issues worth exploring. Here are some activities and resources to inspire your creativity:

- **Host workshops**: Organize synchronous (e.g., [ThinkBig!](/handbook/product/ux/thinkbig/)) or asynchronous workshops to brainstorm ideas. Define a scope and invite participants from Product, Engineering, UX Research, and other areas for best results.
- **Engage with counterparts**: Reach out to [sales](/handbook/sales/), [customer success](/handbook/customer-success/), or [marketing](/handbook/marketing/brand-and-product-marketing/design/) counterparts for fresh perspectives. Consider inviting them as optional attendees to your regular meetings.
- **Conduct problem validation research**: Collaborate with Product Managers and UX Researchers to prioritize a round of [problem validation research](/handbook/product/ux/ux-research/problem-validation-and-methods/). Engage with customers to understand their challenges, what disrupts their productivity, and what keeps them up at night.
- **Discover unknown pain points**:
  - Use [Dovetail](/handbook/product/ux/dovetail/) to analyze data, collaborate on insights, and access our current research repository.
  - Use [Chorus.ai](https://www.chorus.ai/) to search and listen to sales call recordings and transcriptions for insights.
  - Explore [Zendesk](https://gitlab.zendesk.com/agent/) to identify existing problems, though it may require effort to parse through tickets due to non-optimial categorization for UX purposes.

For access instructions to Dovetail, Zendesk and Chorus.ai, refer to the relevant guides.

- The [community forum](https://forum.gitlab.com/) is a support option for free users.

#### Understand the space

- **Review existing research**: Investigate the [UX Research Archive](https://gitlab.com/gitlab-org/uxr_insights), [Dovetail](https://dovetailapp.com/), or other data sources to inform your decisions and measure results. If no relevant UX research exists, contact your [UX Researcher](/handbook/product/ux/ux-research/how-uxr-team-operates/) to conduct or guide you and your PM in conducting research.
- **Conduct competitive analysis**: Analyze competitors to understand terminology, functionality, and UX conventions. Adhere to industry standards unless there is a strategic reason for deviation, such as leveraging [disruptive innovation](https://www.economist.com/the-economist-explains/2015/01/25/what-disruptive-innovation-means) opportunities. Familiar conventions can ease user migration from other tools to ours.
- **Create user flows and journey maps**: Develop user flows or journey maps to ensure comprehensive understand of the workflow and to effectively communicate this to your team.

#### Investigate possible dependencies

Product Designers need to assess how their work impacts other parts of the product and the efforts of fellow Product Designers.

- **Collaborate with peers**: Proactively reach out to other Product Designers via Slack, UX Sessions, etc., to gather background information and understand how your work interacts with other product areas.
- **Identify and involve the DRI**: Determine the [Directly Responsible Individual (DRI)](/handbook/people-group/directly-responsible-individuals/) for the product area you are working on and involve them from the start. If unsure, consult the [Product Categories Handbook page](/handbook/product/categories/).
- **Review product kickoff**: Check the [Product Kickoff Review](https://about.gitlab.com/direction/kickoff/) to see the list of issues planned for next release in other stages.

### Designing with AI

When designing AI solutions, Product Designers need to approach the process thoughtfully to ensure that the technology enhances the user experience and meets strategic objectives.

Here are some resources to help you contribute to the design of AI-assisted features across the platform:

- [AI-human interaction in Pajamas](https://design.gitlab.com/usability/ai-human-interaction): Documentation on best practices for AI-human interaction.
- [AI Integration Effort FAQ](https://internal.gitlab.com/handbook/product/ai-strategy/ai-integration-effort/faq/): Internal handbook with frequently asked questions about AI integration efforts. **Internal handbook 🔒**
- [UX maturity requirements](/handbook/product/ai/ux-maturity/): Documentation on the UX maturity requirements to move AI features from Experiment to Beta to Generally Available (GA).
- [Experiment, Beta, and Generally Available features](https://docs.gitlab.com/ee/policy/experiment-beta-support.html): Guidelines on the different stages of feature availability.
- [UX research in the AI space](/handbook/product/ux/ux-research/research-in-the-AI-space/): Documentation on conducting UX research in the AI domain.
- [Epic: UX of AI Integration](https://gitlab.com/groups/gitlab-org/-/epics/10269): A GitLab epic tracking the UX of AI integration.
- [AI prototypes in Figma](https://www.figma.com/file/s4TP1i2Akd1VTh4jhbg234/AI-prioritized-prototypes?type=design&node-id=1%3A79&t=SNUCGun6HHxi9LaY-1): Access AI prototypes in Figma.
- [AI Project Proposal issue template](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issuable_template=AI%20Project%20Proposal): Use this template to propose new AI projects.

These resources will guide you through the process and best practices for designing and integrating AI features within the platform.

### Aiming towards "sophisticated simplicity"

The visual design of GitLab has evolved from naive simplicity to sophisticated complexity. However, the ultimate goal is to achieve sophisticated simplicity ([Sophisticated Simplicity,  Marcel Weiher](https://blog.metaobject.com/2014/04/sophisticated-simplicity.html)). When designing, keep these three principles in mind:

1. **Structure** - Organize and arrange content and concepts into meaningful groups and patterns.
1. **Discovery** - Ensure users can interact and explore in ways that promote learning and proficiency while minimizing mistakes.
1. **Capability** - Provide features and functions that enable users to complete tasks and automate processes.

[Three-part venn diagram with the terms structure, discovery, and capability overlapping to create sophisticated simplicity in the center.](sophisticated-simplicity-venn.svg)

Balancing these principles is crucial for an optimal user experience:

- **Structure + discovery without capability**: Results in a simple experience suitable for static content but lacking functional richness.
- **Discovery + capability without structure**: Creates a robust and intriguing experience that is difficult to master due to a lack of guiding structure.
- **Structure + capability without discovery**: Leads to sophisticated complexity functionality is abundant, but users struggle with learning, association, and understanding cause and effect.

Achieving sophisticated simplicity reduces friction for accessing basic functionality, provides quick access to powerful features, and helps users become proficient in completing tasks.

Consider these questions when designing:

- Is the content hierarchy and flow clear?
- Are similar items groups, and are the groups clearly defined?
- Does this content or functionality need to be visible all the time and for everyone?
- Is this content or functionality necessary in this context? Is it both helpful _and_ essential?
- Does discovery help users avoid mistakes or recover from mistakes easily?
- Does the structure support discovery and the use of advanced capabilities?
- Is this feature or capability needed or used, or what would happen if it were removed?
- Is everything "in reach," or are users left wandering?

#### Beautifying and "unboxing" the UI

Two ongoing design efforts align with sophisticated simplicity:

1. **Beautifying the UI**: Enhance the UI by cleaning up components or entire pages to create more consistency, organization, and aesthetic appeal. Learn more in the [Beautifying our UI](/handbook/product/ux/product-design/#beautifying-our-ui) section of the handbook.
1. **Unboxing the UI**: Reduce the overuse of boxes for conveying hierarchy, organizing content, and dividing pages into section. Explore better alternatives in this video on ["Unboxing" the UI](https://youtu.be/MxpZuWQH-kk).

### Ideate and iterate

Iterative design at GitLab combines "[incremental design](https://medium.com/@saadiam/incremental-design-12a260f024ae)" and "[design iteration](https://en.wikipedia.org/wiki/Iterative_design)." It involves breaking down design solutions into the smallest changes that improves user outcomes. The goal is to quickly integrate these changes into the product to gather early feedback and guide refinement.

When applying iterative design, consider the longer-term strategy and collaborate with your Product Manager to plan successive releases until the vision is realized.

- **Share design ideas**: Start with the lowest fidelity that communicates your idea. Increase fidelity as design confidence grows and implementation approaches.
- **Request feedback early**: Regularly seek feedback from your PM to refine your understanding of the problem and solution criteria.
- **Engage engineering peers**: Invole engineers early to get insights on technical feasibility and costs, and invite their design feedback.
- **Design reviews**: Participate in [Design Reviews](#design-reviews) with other Product Designers for objective feedback and new ideas, helping to improve your work and gain additional context.
- **Collaborate with Technical Writers**: For substantial UI text changes, work closely with your group's Technical Writer. For smaller changes, involve them in the review process.
- **Involve your Product Design Manager**: For significant UX changes, include your Product Design Manager in feedback sessions for broader insights and alignment with other initiatives.
- **Validate with users**: If high-risk or uncertain directions, validate solutions with users through [UX research](/handbook/product/ux/ux-research/solution-validation-and-methods/). For lower-risk directions, gather feedback from users after releasing the minimal viable change (MVC).
- **Use the [design and UI changes checklist](https://docs.gitlab.com/ee/development/contributing/design.html#checklist)**:  Refer to the design and UI changes checklist to ensure your design's readability, appearance, and functionality.

#### GitLab Design Talks: Iteration

{{< youtube "0lhjzU-QZ2w?start=286&amp;end=359" >}}

> "Our relationship with uncertainty: When we conduct research and design we have some level of certainty about how effective it's going to be, but it isn't until we ship it and get it in the hands of many users that we truly understand how effective the thing is that we designed."

{{< youtube "VrXQiik3Q9U?start=244&amp;end=334" >}}

> "Breaking things down creates psychological safety for me as a designer."

### Design reviews

Sharing work and gathering feedback can happen at any stage of the design process, often through mocks and open discussions in issues. Design Reviews are dedicated sessions for Product Designers to give and receive specific feedback, with benefits such as:

- Discovering what others are working on.
- Identifying overlapping work.
- Surfacing opportunities for group collaboration.
- Encouraging the practice of sharing work.

We prioritize [asynchronous](/handbook/values/#bias-towards-asynchronous-communication) design reviews to allow broader participation. Here's how to conduct an asynchronous review:

1. **Identify key issues**: Choose an issue with many open questions or one you're most excited to work on.
1. **Select the best format**: Share your work using an issue, text blurb, screenshots, Figma file, or a short video walkthrough.
1. **Provide context**: Share the customer problem, constraints, and specific feedback needs. Clearly state what feedback you want and where to provide it.
1. **Post for feedback**: Share your work in the [`#ux-coworking`](https://gitlab.slack.com/app_redirect?channel=ux_coworking) Slack channel and relevant group channels, providing links to the item and the feedback location.
1. **Record videos**: If recording a video, use Zoom and upload it to the [GitLab Unfiltered](https://www.youtube.com/channel/UCMtZ0sc1HHNtGGWZFDRTh5A) YouTube channel. Set the visibility to "Public" unless confidential and add it to the "UX" playlist.
1. **Comment with references**: Comment on your feature issue with a link to the video and related references ([example](https://gitlab.com/gitlab-org/gitlab/-/issues/217355#note_435285696)), such as issues, epics, and Figma files. Add these links to the video description.
1. **Capture feedback in issues**: Open an issue dedicated to capturing feedback ([example](https://gitlab.com/gitlab-org/gitlab/-/issues/241511)),attaching all necessary references and information needed for review.

**Examples**

- [Add a new list iteration - feedback request](https://gitlab.com/gitlab-org/gitlab/-/issues/284610)
- [Swimlane boards loading states - Skeleton loaders feedback request](https://gitlab.com/gitlab-org/gitlab/-/issues/277240)
- [Right issuable sidebar patterns feedback request](https://gitlab.com/gitlab-org/gitlab/-/issues/270117)
- [Geo: Maintenance mode design](https://gitlab.com/gitlab-org/gitlab/-/issues/201757)

#### Who to include in design reviews

Deteermining who to include in a design review can be challenging. Here are some guidelines:

- **Stage group**: Your Product Manager, Engineering Manager, Frontend Engineers, and Product Design Manager should always have opportunities to review and provide feedback. Include them in the issue for ongoing collaboration.
- **Designers**: Engage peer designers within your Section at any phase of the design process.
- **Cross-stage counterparts**: If your work impacts other Stages, include those counterparts.
- **Broad Impact counterparts**: For changes to [navigation](/handbook/product/ux/navigation/), global headers/footers, Pajamas patterns, request a UX Department review in the `#ux_coworking` Slack channel or mention `@gitlab-com/gitlab-ux/designers` in GitLab.
- **Other departments**: If your work involves other departments (e.g., Customer Success, Sales, Marketing), invite them to provide feedback, especially when deviating from brand guidelines.

If unsure who to include, consult your Product Design Manager for guidance.

### Partnering with Technical Writers

When adding or changing to UI text, it's essential to collaborate with your group's Technical Writer. This collaboration should begin during the Product [Design phase](/handbook/product-development-flow/#validation-phase-3-design).

UI text includes button or menu labels, error messages, log files, user-assistance microcopy, notification emails, and any other text visible in the UI. Changes to UI text can significantly impact documentation steps.

To ensure a smooth process:

- **Label the issue and MR**: Apply the [UI text](https://gitlab.com/gitlab-org/gitlab/-/issues?label_name%5B%5D=UI+text) and`documentation` labels.
- **Request a review**: Message the [Technical Writer for the group](/handbook/product/ux/technical-writing/#designated-technical-writers) in the design issue to request a review. Specify files or lines to review and how to preview or understand the context from the user's perspective.
- **Collaborate on finalizing text**: Work closely with the Technical Writer to finalize the UI text, ensuring it's usable and accurate.
- **Incorporate feedback from other departments**: When other departments (e.g., Product Management, Marketing, Legal) provide input on UI copy, ask for goals rather than specific text to avoid extensive revisions and design-by-committee.

#### Collaborating on in-product reference information

Sometimes the designer, PM, and technical writer agree to display additional [in-product reference information](https://design.gitlab.com/usability/contextual-help) in a [drawer component](https://design.gitlab.com/components/drawer/). The reference information should align with the existing documentation for the feature.

1. **Draft copy**: The designer drafts the content for the drawer, identifying necessary information for user foals. This draft should be as close as possible to the final version.
1. **Mark draft status**: Indicate that the drawer content is not final, using a text watermark like "waiting on documentation," "draft," or "placeholder," or a pin in the Figma file.
1. **Follow design to development process**:
    1. Developers create the drawer and documentation as part of feature code MR.
    1. The Technial Writer reviews the documentation and drawer content.
    1. Once the documentation is published, the drawer is populated with the content.

### Partnering with UX Researchers

UX Researchers collaborate with Product Managers and Product Designers to ensure research projects are targeted and provide valuable insights.

- **Request research**: Follow the [process to request research](/handbook/product/ux/ux-research/how-uxr-team-operates/#how-to-request-research), even if conducting the research yourself.
- **Document findings**: Ensure research findings are documented according to established processes.

### Refine MVC

To maintain focus and avoid scope creep in UX issues:

- **Prioritize must-haves**: Work with your PM and developers to identify "must-have" versus elements that can be deferred. Document non-MVC concepts and research in new issues, linking them to the original issue. Consult your Product Design Manager if you need help breaking down large issues.
- **High confidence, low risk changes**: If developers need to start before designers are validated, focus on high confidence, low risk changes while the rest of the solution is validated.
- **Plan ahead**: PMs and UXers should work together to [get 1-2 months ahead](/handbook/product-development-flow/#validation-track), ensuring the Build track always has well-validated product opportunities ready to start.
- **Manage large features**: Features should be buildable within 1-2 milestones. If too large, work with your PM and Engineering team to split the feature into smaller, manageable segments.

For inspiration, watch our Product Designers discuss [iteration at GitLab](https://youtu.be/0lhjzU-QZ2w).

### Present an MVC solution

- **Propose one solution**:
  - Once you've validated your solution with users, propose a single solution. Suggesting multiple alternatives can undermine your expertise as a UX professional and lead to design-by-committee. If you must propose multiple solutions, clearly explain your reasoning.
- **Share context and goals asynchronously**:
  - Provide all necessary context in your issue to ensure your audience understands your proposal and knows how to assist. Clarify who the solution is for, what it will enable them to do, and whether you need feedback, assistance, or approval. Highlight changes since the last review to facilitate understanding.
  - Use [collapsed content sections](/handbook/markdown-guide/#collapse) to include supportive information without distracting from the main point. Refer to [this issue comment for an example](/handbook/markdown-guide/#collapse).
  - **Reguest feedback from your Product Design Manager**:
  - `@mention` your Product Design Manager for feedback. They can provide strategic alignment, ensure quality, and maintain functional consistency across the product.
- **Focuc on the customer and problem**:
  - Frame design discussions around the customer and the problem being solved, not the UI or functionality. Begin with the current state, explain how it fails to meet user needs, and present the proposed solution from the user's perspective. Continuously relate everything back to the user's experience.
- **Anticipate and address questions**:
  - Anticipate potential questions and address them in your proposal comments. Explain your rationale to reduce feedback loops and unnecessary discussions. This is especially important when proposing changes to established patterns.
  - **Use questions as headings**:
    - Structure your proposal with [headings framed as questions](https://gitlab.com/gitlab-org/gitlab/-/issues/118442#note_276666054) to provide clarity and focus.
- **Keep the SSOT updated**:
  - Ensure the Single Source of Truth (SSOT) is updated with all agreed-upon elements, including images or links to design work.
- **Follow design file guidelines**:
  - Regularly commit your design files following the [GitLab Design project contribution guidelines](https://gitlab.com/gitlab-org/gitlab-design/blob/master/CONTRIBUTING.md).
- **Consider new UX paradigms carefully**:
  - Evaluate if the new pattern will be inconsistent with other areas, if other areas need updating, and if the new pattern significantly improves the user experience. If changes are necessary, follow the [component lifecycle documentation](https://design.gitlab.com/get-started/lifecycle).

### Delivering your solution

- **Update the issue description**:
  - Once your work is complete and feedback is addressed, update the issue description (the SSOT) with a "Solution" section. This should be the reference point for what should be done and how.
- **Include your design**:
  - Add your design to the "Solution" section. For small designs, a mock-up may suffice. For more detailed changes, include a link to the Figma file.
- **Use the design handbook checklist**:
  - Follow the [design handoff checklist](https://docs.gitlab.com/ee/development/contributing/design.html#handoff) to make sure all design specifications are documented and engineers are set up for success.
- **Leverage collaboration tools**:
  - Utilize both Figma's collaboration tools and [GitLab's design management features](https://about.gitlab.com/direction/plan/design_management/). Refer to the following table for common scenarios and recommended tools. Use your judgment to decide the best way to move the design forward.

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

- **Break down implementation issues**:
  - If the solution needs to be broken out into smaller issues for implementation, apply the `workflow::planning breakdown` label. Stay involved by walking PM and Engineering through the proposed solution and participating in the conversation to break down the issue.
- **Schedule with PM and EM**:
  - If the solution needs to be scheduled by PM and/or EM, apply the `workflow::scheduling` label and mention the [responsible product manager](/handbook/product/categories/#devops-stages) to [schedule it](/handbook/engineering/workflow/#scheduling-issues). Communicate with the assigned engineer to ensure they understand the solution.
- **Review the current milestone implementation**:
  - If the issue is meant for implementation in the current milestone, review the solution with the assigned engineer(s) and/or EM. If they are comfortable with the solution, apply the `workflow::ready for development` label.
- **Handling premature moves to Build phase**:
  - Sometimes, a Product Manager might request moving an issue to the Build phase before it meets UX Department standards. In such cases create follow-on issues and/or apply the `Deferred UX` label to indicate that the product doesn’t meet UX requirements and will need immediate iteration.

### Socialize your work

Sharing design work sllows Product Designers to mentor, engage, and inspire peers inside and outside GitLab. It widens your perspective and helps you understand the broader impact of design decisions on the product.

**Internal Socialization**:

- Slack: Share insights and updates.
- Unfiltered YouTube: Provide updates and gather feedback.
- [UX Forums](/handbook/product/ux/ux-forums/): Open pathways for collaboration with teams addressing similiar objectives and JTBDs.

**External Socialization**:

- [Blog posts](/handbook/marketing/blog/): Write about your design decisions and processes.
- [Speaking at events/conferences](/handbook/marketing/corporate-communications/speaking-resources/). Share your work and insights.

These activities not only inspire other designers but also increases visibility for GitLab's UX Department, enhancing transparency and attracting potential applicants.

### Follow through

- **Scope down features**:
  - Encourage engineers to break features into multiple merge requests (MRs) for easier, more efficient reviews.
  - Consider the UX impact of merging partial changes. Use feature branches or flags if partial changes negatively affect the UX to ensure the full scope ships together.
- **Communicate end goals**:
  - When breaking solutions into smaller parts, make sure the entire team understands the end design goal to align development efforts.
- **Maintain SSOT**:
  - Keep the issue description updated with the agreed scope,maintaining it as the Single Source of Truth (SSOT). Remove or archive outdated content.
  - Subscribe to and regularly review issues in your product area. Actively contribute to planning meetings to ensure proper prioritization.
- **Engage in issue resolution**:
  - Stay assigned and subscribed to active issues. Follow related MRs and address any additional UX issues that arise.
  - For obvious changes, update the SSOT directly [without waiting for consensus](/handbook/values/#collaboration), using your judgment.

### MR reviews

Refer to the [MR reviews handbook page](/handbook/product/ux/product-designer/mr-reviews/).

- When reviewing an MR, refer to the SSOT in the issue, which should include a mock-up or Figma link in the "Solutions" section of the issue description.

### Follow-up after design is complete

For changes that affect Pajamas (GitLab's design system):

- **New UI component**: [Create a **UX Pattern** issue](https://gitlab.com/gitlab-org/gitlab-design/issues/new?issuable_template=UX%20Pattern) in GitLab Design and follow the checklist.
- **Documentation updates**: Create an issue and/or MR in the [Design System](https://gitlab.com/gitlab-org/gitlab-services/design.gitlab.com).
- **Application updates**: Create issues to update affected areas of the application.
- **Socializing changes**: Add an agenda item to the UX Call to inform the team of changes.

### Follow-up after your changes go live

- **Gather feedback**:
  - Listen for feedback from social media, Slack, forums, and internal/external sources.
  - Create an issue to track and address the feedback.

By following these steps, you ensure effective communication, collaboration, and continuous improvement in the design and development process.
