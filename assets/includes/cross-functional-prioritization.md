### Overview

The Cross-Functional Prioritization framework exists to give everyone a voice within the product development quad (PM, Development, Quality, and UX). By doing this, we are able to achieve and maintain an optimal balance of new features, security fixes, availability work, performance improvements, bug fixes, technical debt, etc. while providing transparency into prioritization and work status to internal and external stakeholders so they can advocate for their work items. Through this framework, team members will be able to drive conversations about what's best for their quad and ensure there is alignment within each milestone.

The Cross-Functional Prioritization contains three key tenets:

* Release slate is divided into three main components: features and usability, optimization and maintenance, and bugs including severity-based SLAs
* Cross-functional DRIs are responsible for prioritization in each section, anyone is still able to advocate for prioritization changes
* DRI decisions informed by qualitative and quantitative data, up to and including automatic scheduling of work items based on SLA policies

An aspirational goal for the R&D organization is achieving an end state where our aggregate R&D development capacity is allocated along a 60%/40% split as follows:

* 60%: focused on features and usability
* 40%: focused on optimization, general maintenance, security items, and bugs

We recognize that making progress towards our desired end state requires significant effort and cannot be achieved immediately. Success will require cross-functional discipline, diligence, and alignment in both planning and execution, with tangible progress towards our desired end state 60%/40% split being measurable release over release. We recognize that based upon the maturity of a given area, this ratio may need to be different per team.  We see this represented in data today across the portfolio, where for example a team with relatively immature features may require more feature work allocated, while teams with more mature features carry a heavier maintenance burden. Each group has the ownership and accountability to define the correct ratio across all categories based on Category maturity as well as maintenance needed to continue meeting our security, scalability, reliability, availability, and quality requirements. Teams will align with R&D leadership across Product & Engineering to ensure R&D demonstrate continuous improvement towards our desired 60%/40% end state.

The table below summarizes the 60%/40% split by component:

| Component | R&D Target % |
| ----- | ----- |
| Features and usability | 60% |
| Optimization and maintenance<br>---AND---<br>Bugs including severity-based SLAs | 40% |

A balance across these components while empowering DRIs will allow GitLab to operate in a way that will allow us to meet (and exceed) revenue goals while maintaining the security, stability, reliability, and availability of our platform.

#### Cross-functional milestone planning

To support GitLab's long-term product health and stability while keeping the pace of new features for users, teams are asked to plan their milestones with an appropriate ratio of work. When labeling, if the label selection for an issue or merge request isn't obvious, work with your peers/manager or reach out to Staff TPM R&D Compliance for further clarification.

To assist with reporting and support SOX compliance, please review and leverage the labels per table below:

| Component | Label |
| ------ | ------ |
| Features and usability | `type::feature` |
| Optimization and maintenance | `type::maintenance` |
| Bugs including severity-based SLAs | `type::bug` |

Note: These are the original labels from the working group. These were chosen so that teams would not have to relabel historically, and existing dashboards would not be broken.

If one of these labels clearly doesn't apply for an issue, consider using the `type::ignore` label. This will exclude the issue from automation and dashboards used to do cross-functional prioritization and metrics tracking for the product. It is highly important we have accurate data, so please only use this label if the issue clearly does not pertain directly to Engineering changes to the product itself. This label will typically apply to issues used for planning or to track a process. For example, you could use the `type::ignore` label for a milestone planning issue where the issue's purpose is organization and will not have MRs directly associated with it.

A team's ratio might change over time and different teams may have different ratios. Factors that influence what ratio is appropriate for a given team include the [product category maturity](/handbook/product/categories/), the area of the product they are working in, and the evolving needs of GitLab the business. Teams should review labeling for accuracy and minimize the number of `type::undefined` items. This allows us to review the plans at the group, section, and company level with team members to ensure we appropriately prioritize based on cross-functional perspectives.

For more details on these three work types, please see the section on [work type classification](/handbook/product/groups/product-analysis/engineering/dashboards/#work-type-classification).  The development EM is the DRI to ensure that the merge requests are accurately labeled.

#### Prioritization and DRI by Component

Our backlog should be prioritized on an ongoing basis. Prioritization will be done via quad planning (collaboration between product, development, quality, UX) with PM as the DRI for the milestone plan. PMs, EMs, Quality, and UX will provide the following:

1. Product Manager provides prioritized `type::feature` issues
1. Engineering Manager in development provides prioritized `type::maintenance` issues
1. [Test Platform Managers](/handbook/engineering/infrastructure/test-platform/#milestone-planning) provide prioritized `type::bug` issues using the [bug prioritization dashboard](https://10az.online.tableau.com/t/gitlab/views/OpenBugAgeOBA/BugPrioritizationDashboard)

*Note: UX-related work items would be prioritized in accordance with the appropriate sub-types. UX related bugs are included in the automated process (S1/2 and so on), UX-related maintenance items will be included in the EM's prioritized list, Product (feature) UX items will have been included as part of our normal [Product Development Flow](/handbook/product-development-flow/).*

The DRIs of these three core areas will work collaboratively to ensure the overall prioritization of the backlog is in alignment with [section direction](https://about.gitlab.com/direction/#devops-stages) or any other necessary product and business needs. If a team is not assigned a Product Designer then there is no UX counterpart needed for prioritization purposes. PMs will prioritize the final plan for a given milestone.

#### Milestone planning and prioritization

Quads should follow the standard milestone planning process as described in our [Product Development Flow](/handbook/product-development-flow/#build-track). PMs will keep the overall prioritized backlog following the agreed-upon ratios and guidance from their EM, Quality and UX counterparts.

#### Review and monitoring team health

Stable counterparts across the quad should regularly review their overall team health across many measures, including their merge request ratio and make adjustments accordingly. For guidance, below are some questions to ask to inform that discussion.

##### Example questions to ask as stable counterparts review team health

Context:

1. What groups/sections does this review cover?
1. Is the dashboard accurate? Are the number of merge requests in the dashboard within 5% of the SSOT (the issues themselves)?  If not, what needs to be done to correct?

Maintenance/quality:

1. Are the % of undefined merge requests < 1% for the timeframe being analyzed?  If not, what should be done to correct?
1. How do error budgets look?
1. Are past due bugs being prevented/prioritized as appropriate?
1. Are usability issues being prioritized as appropriate?
1. Are security issues being prioritized as appropriate?
1. Are infrastructure backlog issues being prioritized as appropriate?
1. Are maintenance priorities from the engineering development manager being prioritized as appropriate?

Features:

1. How is the group addressing the product investment themes?
1. How do revenue drivers impact plans for this group?
1. How are customer requests being addressed for this group?

Trends:

1. Evaluate the percentage ratios of completed work (feature / maintenance / bug) for the previous milestone/timeframe against the team's planned ratio for that milestone.
1. Is there predictability from milestone to milestone (number of issues or issue weight per release)?
1. Compare the planned milestone with the previous months [merge request trends](https://10az.online.tableau.com/t/gitlab/views/DRAFTMergeRequestTypes/MergeRequestTypes) for the team.  Any trends to note?
1. What overall trends does the group want to highlight?
1. What flags do you want to raise?  What won't happen?
