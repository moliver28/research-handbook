---

title: Tiering Strategy & Guidance for Product Managers
---

On this page






## Tiering strategy

Free is targeted at individual contributor developers. It is a complete DevOps solution and contains capabilities from all ten GitLab stages.

Premium is targeted at Director level buyers and is for teams. The pricing themes for Premium are Faster code reviews, Advanced CI/CD, Enterprise agile planning, Release controls and Self managed reliability. Premium helps teams iterate faster and innovate together.

Ultimate is targeted at Executive level buyers and is for organizations. The pricing themes for Ultimate are Advanced security testing, Security risk mitigation, Compliance, Portfolio management, and [Value stream management](https://about.gitlab.com/solutions/value-stream-management/). Ultimate helps organizations deliver better software faster with enterprise ready planning, security and compliance.

## How to make pricing tier decisions

Product Managers are responsible for helping determine and maintain the optimal tier for their features. To accomplish this, Product Managers should leverage the supporting resources below to understand and implement the strategy, philosophy and various components of GitLab's pricing model.

### Pricing Tiers

The [CEO is the DRI for pricing and tiers](/handbook/company/pricing/#departments). This includes any changes that directly impact how we charge customers under our licensing model, such as a [change to how we handle active users](https://gitlab.com/gitlab-org/gitlab/issues/22257). GitLab leverages a [buyer-based *open core*](/handbook/company/pricing/#buyer-based-open-core) pricing model. Please review the entirety of the [stewardship](/handbook/company/stewardship/) and [pricing model](/handbook/company/pricing/) pages before making any determinations as to which tier a given feature should go in.

#### Determining the tier of a new feature

The [likely buyer](/handbook/company/pricing/#buyer-based-open-core) determines which tier, and "Who cares most about the feature" ultimately determines the likely buyer. Our [stewardship principles](/handbook/company/stewardship/) also help guide whether something belongs in a paid tier. Be sure to consider documenting your rationale for the decision in the issue description, including a reference to our [stewardship page](/handbook/company/stewardship/) when appropriate.

Please indicate the applicable tier for an issue by applying the label associated with the tier (e.g. `GitLab Ultimate`). Ensure this is defined before feature development begins.

#### Leverage open source to drive early usage

When early in a category's maturity, it is recommended to start with functionality in the open source version to drive broad awareness and adoption.  Early adoption translates into open source contributions, which can help accelerate maturity in a new area of the product.

#### Have a laddered tiering strategy that leverages all three tiers

Each product area should have a laddered tiering strategy, where incremental value is contained in each tier.  This enables us to drive broad usage in Free, and then drive uptiers to Premium and Ultimate as customers increase in their sophistication of using the given product area.  When considering what to offer in open source, also think through what additional features can be monetized later. Open source drives popularity of the main feature, but it's important to understand up front how we intend to leverage that usage and exposure to drive incremental ARR later in higher tiers.

#### Moving features between tiers or other pricing changes

To propose changing a feature tier or making any other change that impacts how we charge customers, please follow the process and template on the [pricing page](/handbook/company/pricing/#changing-tiers-and-pricing-changes). This ensures collaboration and alignment with key GitLab stakeholders and maintenance of `features.yml` as SSOT.
Please remember our [promise not to make open-source features source-available](/handbook/company/stewardship/#existing-contributed-open-source-features-will-not-become-source-available).

#### Paid Tier requirements

All Premium, and Ultimate features must:

- Work easily for our customers that self-host GitLab. i.e. Their
licenses need not be updated and the new feature is default-on for the
instance.
- Work with GitLab.com Premium / Ultimate subscriptions. This means there has to be
some way of toggling or using the feature at a namespace level.
- Have documentation.
- Be featured on [products](https://about.gitlab.com/stages-devops-lifecycle/) and [DevOps tools](https://about.gitlab.com/why-gitlab/) at launch.

Should product managers have any questions when making tier decisions, they should collaborate with their manager, [product leadership](/handbook/product/product-leadership/), or the CEO for clarification. The most up to date reference for pricing DRIs can be found in the [feature tier or pricing change template](https://gitlab.com/gitlab-com/Product/-/blob/main/.gitlab/issue_templates/Feature-Tier-Or-Pricing-Change.md).

### Reasons for upgrade

Multiple considerations go into customers' purchase decisions. Here are some various resources product managers can visit to reference various data points for analysis:

- [Post purchase surveys](https://about.gitlab.com/direction/product-operations/#post-purchase)

## How to consider impact to revenue

### Driving revenue

Product managers should be familiar with and leverage strategies and tactics for their own stage as well as across GitLab's other stages in accordance with GitLab's pricing model. Here are some helpful examples:

- [Create stage's use of popularity to drive revenue](https://about.gitlab.com/direction/create/#pricing)
- [Plan stage's balance between usage and enterprise adoption](https://about.gitlab.com/direction/plan/#pricing)
- [Enablement section's balance of ease of use and scale](https://about.gitlab.com/direction/enablement/#pricing)

### Understanding Investment

GitLab currently has three ways of allocating investment across product as detailed in [investment types](https://internal.gitlab.com/handbook/product/investment/).

### Learning opportunities

Pricing adjustments within a buyer-based model can be challenging and sometimes feel counterintuitive. Below are some examples of strategies/tactics that have succeeded and failed that we can learn from:

👍

 - [Move Feature Flags to Core](https://gitlab.com/gitlab-org/gitlab/-/issues/212318)
 - With pressure from the market that our SAST features were just open source tools and any customer could just run those themselves for free, we moved SAST analyzers to core. We were able to turn this criticism into a community feature which has increased our community contributions, provided an entry point for [all customers to try our security tooling](https://docs.gitlab.com/ee/user/application_security/sast/#making-sast-analyzers-available-to-all-gitlab-tiers) and even create some in-product upgrade paths to Ultimate. [Epic](https://gitlab.com/groups/gitlab-org/-/epics/2098), [Internal Discussions](https://gitlab.com/gitlab-com/Product/-/issues/315), [Release Post](https://about.gitlab.com/releases/2020/08/22/gitlab-13-3-released/#sast-security-analyzers-available-for-all)
 - The [Kubernetes Agent move to core](https://gitlab.com/gitlab-com/Product/-/issues/2067) generated great discussions on how competitive pressure and the desire for feedback can challenge the buyer-based tiering

👎

 - Pricing the [MR Diff code quality annotations](https://gitlab.com/gitlab-org/gitlab/-/issues/2526) into Ultimate was something that got some resistance initially since the feature would be used by developers. The feature fits into the Transformation type sale where a team is trying to shift code quality to the left and bring it to the full code review process.
 - Putting the [Accessibility MR Widget](https://docs.gitlab.com/ee/user/project/merge_requests/accessibility_testing.html) into Core was about getting some usage for the new category and to learn what additional features customers wanted.
