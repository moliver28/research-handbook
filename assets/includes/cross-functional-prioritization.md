### Cross-Functional Prioritization

#### Purpose

1. Achieve and maintain an optimal balance of new features, security fixes, availability work, performance improvements, bug fixes, etc. via a framework that helps drive conversations and alignment. Balance across these categories will allow GitLab to operate in a way that will allow us to meet revenue goals and maintain the stability of our platform.
1. Give voice to everyone in the quad (PM, Development, Quality, and UX)
1. Provide transparency into prioritization and work status to internal and external stakeholders so they can advocate for their work items

#### Implementation Philosophy

The quad members (UX/Design, Quality, Product Management, Development) utilizing this process should focus on:

- Achieving the key results of the process
- Ensuring that there is transparency in both the quad for the group and with interested parties outside the group

As long as the quad achieves these goals, they are encouraged to apply the process as appropriate based any unique characteristics of their group and also tailor the process based on how the team prefers to operate.

#### Cross-functional milestone planning

To support GitLab's long-term product health and stability while keeping the pace of new features for users, teams are asked to plan their milestones with an appropriate ratio of `type::feature`, `type::maintenance`, and `type:bug` work.  When labeling if the label selection for an issue or merge request isn't obvious, don't spend more than 60 seconds to decide and make a best effort to choose the most appropriate label.

If one of these labels clearly doesn't apply for an issue, consider using the `type::ignore` label. This will exclude the issue from automation and dashboards used to do cross-functional prioritization and metrics tracking for the product. It is highly important we have accurate data, so please only use this label if the issue clearly does not pertain directly to Engineering changes to the product itself. This label will typically apply to issues used for planning or to track a process. For example, you could use the `type::ignore` label for a milestone planning issue where the issue's purpose is organization and will not have MRs directly associated with it.

A team's ratio might change over time and different teams may have different ratios. Factors that influence what ratio is appropriate for a given team include the [product category maturity](/handbook/product/categories/), the area of the product they are working in, and the evolving needs of GitLab the business. Teams should review labeling for accuracy and minimize the number of `type::undefined` items. This allows us to review the plans at the group, section, and company level with team members to ensure we appropriately prioritize based on cross-functional perspectives.

For more details on these three work types, please see the section on [work type classification](/handbook/engineering/metrics/#work-type-classification).  The development EM is the DRI to ensure that the merge requests are accurately labeled.

#### Prioritization for feature, maintenance, and bugs

Our backlog should be prioritized on an ongoing basis. Prioritization will be done via quad planning (collaboration between product, development, quality, UX) with PM as the DRI for the milestone plan. PMs, EMs, Quality, and UX will provide the following:

1. Product Manager provides prioritized `type::feature` issues
1. Engineering Manager in development provides prioritized `type::maintenance` issues
1. [Test Platform Managers](/handbook/engineering/infrastructure/test-platform/#milestone-planning) provide prioritized `type::bug` issues using the [bug prioritization dashboard](https://10az.online.tableau.com/t/gitlab/views/OpenBugAgeOBA/BugPrioritizationDashboard)

*Note: UX-related work items would be prioritized in accordance with the appropriate sub-types. UX related bugs are included in the automated process (S1/2 and so on), UX-related maintenance items will be included in the EM's prioritized list, Product (feature) UX items will have been included as part of our normal [Product Development Flow](/handbook/product-development-flow/).*

The DRIs of these three core areas will work collaboratively to ensure the overall prioritization of the backlog is in alignment with [section direction](https://about.gitlab.com/direction/#devops-stages) or any other necessary product and business needs. If a team is not assigned a Product Designer then there is no UX counterpart needed for prioritization purposes. PMs will prioritize the final plan for a given milestone.
