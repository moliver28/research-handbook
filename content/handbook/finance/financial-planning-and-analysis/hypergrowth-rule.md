---
title: "The Hypergrowth Rule"
---

A company in hypergrowth mode typically trades higher spending now for higher future revenue/profits. In other words, the expenses incurred today is reflective of how the company will be positioned in the future, whereas the revenue is current.

GitLab is in hypergrowth mode at the moment. We are intentionally spending at a higher rate in all groups (except G&A and cost of sales) compared to companies at similar stages of growth. We do this to advance the product, increase our CSM, and increase market share through a new [channel strategy](https://about.gitlab.com/handbook/sales/channel/). We believe this investment will result in higher growth rates compared to similar companies.

## What is Hypergrowth and how it came about?

{{< youtube "Qv03XjgtUqs" >}}

## Rule of 40

The hypergrowth rule is a standard for measuring and thinking about profitability at any growth rate.

It's inspired, in part, by the [Rule of 40](https://feld.com/archives/2015/02/rule-40-healthy-saas-company.html), a SaaS rubric for growth that `Revenue Growth % + Free Cash Flow % = 40`.

There is a high correlation between level of attainment of this combined metric and company valuation - although data suggests that current investor valuations models are more highly correlated with revenue growth rate. We view the Rule of 40 not as target but a threshold that should be surpassed and recognize companies that exceed the Rule of 40 have better valuations.

## Importance

We believe that strong correlation is a result of the importance of capturing market share. Spend is high when you grow quickly because you have to pay **now** for the org you want to have in 12 months, as it takes time to ramp up.

Using the Rule of 40 as an example, when Revenue growth is greater than 40%, there is an implication that negative profitability is encouraged, but this fails to answer key questions, such as:

- How much should I be investing in different parts of the business?
- How much should I be willing to lose today?
- As growth slows because of market dominance, what is the path to profitability?

The below hypergrowth rule can help answer the questions that the Rule of 40 doesn't answer.

## Formula

`Division expense target = (Revenue Delta * Growth Lever * Model Percent ) + Model Percent`

### Division Expense Targets

Division Expense Targets are the optimal percent of revenue for each functional group in a given period, this is the output of this formula.

### Revenue Delta

Revenue Delta is the difference between Revenue Growth and Eventual Profit Margin. For GitLab the Eventual Profit Margin is 20% because our [target costs are 80%]({{< ref "financial-planning-and-analysis#long-term-targets" >}}).

### Growth Lever

The growth lever is equal to `1 / (sum of target divisional % of revenue for divisions that should be variable based on growth)`.
For GitLab, it is: `1 / (Sales + R&D + G&A + Marketing % of Rev)`, which would equal 1.25, but because cost of sales and hosting don’t increase with faster revenue growth, we can remove those (17%), and what's left is `1/(80%-17%)` which ~ 1.5.
This makes the full formula for the growth lever: `1 / (Sales + R&D + G&A + Marketing % of Rev - Variable Non-Delayed Costs)`.

The growth lever is about to 1.538.

### Model Percent

Our model percent is our [long term profitability target]({{< ref "financial-planning-and-analysis#long-term-profitability-targets" >}}) for each division.

Long term in this case means the time when the combination of your long term profitability target and your growth equals 40%. So if your long term profitability target is 20% it is the year your growth declines to 20% year over year.

### Revenue growth in venture-funded SaaS companies

An input to the Hypergrowth calculator is your revenue growth. For venture-funded SaaS companies, the [WoW Rule](https://about.gitlab.com/blog/2020/05/05/wow-rule/) offers a guideline for revenue growth rate.

### Example of the Hypergrowth Formula

Below is an **illustrative** example, using the hypothetical case of revenue growth being 150%:

| Factor | Formula|
|--------|--------|
|Revenue growth | 150% |
|Eventual profit margin | 20% |
|Revenue delta | 150% - 20% = 130% = 1.3 |
|Growth lever| 1.538 |
|Model percent | 0.23|
| Division expense target as a % of revenue | (Revenue Delta *Growth Lever* Model Percent ) + Model Percent) |
| Division expense target as a % of revenue | (1.3 *1.538* 0.23) + 0.23 = 68 % |

## Want more discussion on the Hypergrowth Calculator?

Watch this Q&A with CEO Sid Sijbrandij with VP, Finance Craig Mestal and Senior Director, Investor Relations Tony Righetti:

{{< youtube "hyXCkEtXh9I" >}}

### Hypergrowth calculator

<!-- TODO: Reimplement Hypergroth Calcultor in Bootstrap -->
<!- <%= partial 'includes/hypergrowth_calculator_vue' %> -->
