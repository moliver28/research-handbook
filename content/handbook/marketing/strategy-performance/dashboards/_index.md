---

title: "Marketing Dashboards"
description: "Marketing Analytics creates and maintains dashboards using our marketing metrics"
---

## Hierarchy of Marketing Dashboards

Marketing Analytics uses a hierarchical system when building dashboards to help guide the allowable complexity and frame the data for the intended user.

At the highest level, TD Marketing Key Dashboards are intended to provide insights into our top KPIs, while TD Marketing Functional Dashboards give the detailed insights functional marketing teams need. Ad hoc dashboards are meant to answer one-off questions, and are not meant to be used for ongoing KPI reporting. "TD" stands for Trusted Data, and it refers to models inside and from the common schema (see the [Data Team handbook page here](/handbook/business-technology/data-team/platform/#tdf) for more details)

| Level              | Intended User                   | Intended Use (examples)      |
|--------------------|---------------------------------|------------------------------|
| TD Marketing Key Dashboards        | Execs / All GitLab Team Members | Top KPIs and Targets         |
| TD General Marketing Dashboards    | GTM Teams / All of Marketing    | Tracking Leading Indicators / Attributed Pipeline |
| TD Marketing Functional Dashboards | Functional Marketing Teams      | Campaign Performance / SDR Performance / Partner Sourced Opportunities   |
| Ad-Hoc                             | Specific Team Members           | Insight into a one-off question |

## Marketing Dashboards Supported by MS&A

#### TD Marketing Key Dashboards

| **Dashboard** | **Platform** | **Access Type** | **Description** |
|:--------------|:-------------|:----------------|:----------------|
| [Unified Marketing Funnel Dashboard](https://10az.online.tableau.com/#/site/gitlab/views/MarketingUnifiedFunnel_16934325416300/MarketingUnifiedFunnel?:iid=2)   | Tableau      | General         | Visualizes the user journey across marketing channels, website engagement, SaaS trials, to a paid conversion. This dashboard helps identify trends and assess the impact of strategic changes implemented by the Digital Marketing, Digital Experience, and Growth teams. |

#### TD General Marketing Dashboards

| **Dashboard** | **Platform** | **Access Type** | **Description** |
|:--------------|:-------------|:----------------|:----------------|
| [Marketing Influenced Pipeline](https://10az.online.tableau.com/#/site/gitlab/views/MarketingInfluencedPipeline/ExecutiveOverview) | Tableau | SAFE | Tracks marketing contribution to overall pipeline generation through a combination of Adobe Marketo Measure Touchpoints and Sales Qualified Source (SQS) to find opportunities that were influenced by Marketing. See the [handbook page](https://internal.gitlab.com/handbook/marketing/marketing-ops-and-analytics/marketing-analytics/marketing_influenced_pipeline/) for more details.

#### TD Marketing Functional Dashboards

| **Function** | **Dashboard** | **Platform**  | **Access Type** | **Description** |
|:--------------|:---------------|:---------------|:-----------------|:-----------------|
| Integrated Marketing | [TD - Campaign Performance](https://10az.online.tableau.com/#/site/gitlab/views/DraftTDCampaigns-L2RInteractions/Overview?:iid=4) | Tableau | General | The source of truth dashboard for marketing campaign performance. It is a single pane of glass view for tracking campaign performance from an Inquiry to a closed won SAO. More detailed infomation is [available on its handbook page.](https://handbook.gitlab.com/handbook/marketing/strategy-performance/dashboards/td-campaign-performance/) |
| SalesDev  | [Sales Dev Analytics Hub](https://10az.online.tableau.com/#/site/gitlab/views/DraftSalesDevAnalyticsHub/Overview) | Tableau | SAFE | A management-level view of overall SDR performance by a number of key metrics.                                                                                             |
| Partner Marketing    | [Partner Marketing](https://10az.online.tableau.com/#/site/gitlab/views/DraftPartnerMarketingv2/PartnerSourcedOpps?:iid=1) | Tableau | SAFE  | A view of partner sources opportunities, partner sourced persons and the partner trial program. |
| Digital Experience   | [GitLab - Digital Experience](https://lookerstudio.google.com/reporting/c47c1759-6d08-4f9b-aae3-3f6b4a3f8d0e/page/PUsnC) | Looker Studio | General | Visualized metrics in regards to traffic, engagements, and top-of-funnel web conversions for about.gitlab.com from Google Analytics.                                       |
| Technical Writing    | [GitLab - Docs Website](https://lookerstudio.google.com/reporting/d6af7a2b-2aaa-4f30-8742-811e62777c93/page/p_ihbvblyl2c) | Looker Studio | General | Visualized metrics in regards to traffic and engagements for docs.gitlab.com from Google Analytics.                                                                        |
| Brand Strategy       | [GitLab - Brand Awareness - Web Performance](https://lookerstudio.google.com/reporting/27b962b9-f6f8-443b-bc93-baf1c8a6a268/page/PUsnC)   | Looker Studio | General         | Visualized metrics in regards to traffic, engagements, and top-of-funnel web conversions for Brand Awareness campaigns from Google Analytics and Search Console.           |
| Product Marketing       | [GitLab - Product Marketing](https://lookerstudio.google.com/reporting/9b877a27-0b80-40cd-8e8b-1f68f80573dd/page/IeVBD)        | Looker Studio | General         | Visualized metrics in regards to traffic, engagements, and top-of-funnel web conversions for Blogs and Customer Stories from Google Analytics.           |

#### When to use TD - Campaign Performance vs Marketing Influenced Pipeline

While our Campaign Performance and Marketing Influenced Pipeline dashboards display similar data, they serve different purposes. The Campaign Performance dashboard is a live view of our campaign data as it exists in our marketing tools (SFDC, Marketo, Marketo Measure) today. It gives the best view into a campaign's near real-time performance. 

The Marketing Influenced Pipeline dashboard uses snapshots of our [Adobe Marketo Measure](/handbook/marketing/marketing-operations/bizible/) and Opportunity data taken on the last day of the fiscal quarter. Snapshotting ensures the total amount of marketing influenced across our marketing campaigns credited to opportunities can not change as the live data is updated. Meaning GitLab has an unchanging record of of marketing influence that we use to compare quarters without worrying that values have changed over time.

The Campaign Performance dashboard is better suited for reporting where close to live data is required, while the Marketing Influenced Pipeline dashboard is preferred when quarterly reviews are done, as the data remains unchanged for previous quarters.


## Dashboard Development and Publishing Stages

MS&A uses the stages listed below to denote a dashboard's stage. 
Ad-Hoc dashboards do not have a stage.

- Work in Progress (WIP) - Active development is still ongoing. Metrics, design, and location may change at any time. During this stage, we work with stakeholders to create an end product that meets their needs.

- User Acceptance Testing (UAT) - Primary development has been completed, and we are gathering feedback from the intended users and fixing bugs.

- Production - For a dashboard to be considered production, it must be published in the Production area of Tableau and have gone through the [Tableau approval process](/handbook/business-technology/data-team/platform/tableau/#governance-model).

## Dashboard Building Guidelines

MS&A has agreed on high-level guidelines when presenting data in any visualization:

- Avoid showing fractional KPIs on key metrics that are not percentages (SAOs, MQLs, INQs). Instead, truncate the number. EG: 43 instead of 43.21
