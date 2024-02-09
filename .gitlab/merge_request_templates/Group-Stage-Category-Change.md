<!--

Describe the change and rationale here.

-->

### Approvals

Merge requests with changes to stages and groups and significant
changes to categories need to be created, approved, and/or merged
by each of the below:

- [ ] Chief Product Officer `@david` (post MR link in chief-product-officer once all others have approved)
- [ ] PLT Leader relevant to the affected Section(s) `@steve-evangelista OR @hbenson OR @mflouton OR @justinfarris`
- [ ] The Product Director relevant to the affected Section(s)
- [ ] The Engineering Director relevant to the affected Section(s)
- [ ] Director of Product Design `@vkarnes`

_**Note:** Chief Product Officer approval should be requested once all other approvals have been completed. To request approval, post the MR link in the #chief-product-officer channel tagging `@david` and cc'ing `@Gena Schwam`._

The following people need to be on the merge request so they stay informed:

- [ ] Chief Technology Officer `@joergheilig`
- [ ] Development Leader relevant to the affected Section(s) `@timzallmann OR @bmarnane OR @meks`
- [ ] VP of Infrastructure & Quality Engineering `@meks`
- [ ] VP of UX `@david (Acting VP of UX leader)`
- [ ] Director of Technical Writing `@susantacker`
- [ ] Engineering Productivity (by @ mentioning `@gl-quality/eng-prod`)
- [ ] The Product Marketing Manager relevant to the stage group(s)

### After Approvals and Merge

- [ ] Create an issue in the triage-ops project to update GitLab Bot automation:
  - [for Category change](https://gitlab.com/gitlab-org/quality/triage-ops/-/issues/new?issuable_template=category-label-change)
  - [for Stage or Group change](https://gitlab.com/gitlab-org/quality/triage-ops/-/issues/new?issuable_template=stage-or-group-label-change)
  - If label migration is required, please follow the [self-serve instructions](https://handbook.gitlab.com/handbook/engineering/infrastructure/engineering-productivity/workflow-automation#one-off-label-migrations) to get started on a one-off label migration MR.
- [ ] Mention the [product group Technical Writer](https://about.gitlab.com/handbook/product/ux/technical-writing/#designated-technical-writers) to update the [documentation metadata](https://docs.gitlab.com/ee/development/documentation/#stage-and-group-metadata)
- [ ] Share MR in #product, #development, and relevant #s_, #g_, and #f_ slack channels

<!--
Changes that require executive approval include:
- Changes to a stage, group, or category name
- Removal or addition of a stage, group, or category

Changes that require approval only from the relevant Product Director include:
- Changing a category maturity date
- Changes to section or group member lists
- Changes to a category vision page

More information can be found in the Category Change section:
https://about.gitlab.com/handbook/product/categories/#changes

-->
