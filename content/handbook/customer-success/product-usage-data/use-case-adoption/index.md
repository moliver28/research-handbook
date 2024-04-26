---

title: "Health Scoring - Calculations and Methodology"
description: "How we measure a customer's health score for general GitLab and different use cases"
---








---

To drive use case enablement and expansion with customers, we need to define exactly what it means to adopt a use case at GitLab. These health measures will appear in the **Product Usage** scorecard section in Gainsight. For more, see the [Gainsight Scorecard Attributes and Calculations](/handbook/customer-success/customer-health-scoring/#gainsight-scorecard-attributes-and-calculations).


## License Utilization

### Health table

|        | 2-6 Months                               | 6-9 Months                               | > 9 Months                             |
|--------|------------------------------------------|------------------------------------------|----------------------------------------|
| < 10%  | Red       | Red       | Red     |
| 10-50% | Yellow | Red       | Red     |
| 51-75% | Green   | Yellow | Red     |
| > 75%  | Green   | Green   | Green |

## User Engagement

User Engagement is intended to measure the number of users logging in each month / billable users.

|                       | **Red** | **Yellow** | **Green** |
| --------------------- | ------- | ---------- | --------  |
| [unique active users - L28D](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20220621085114_unique_active_users_monthly.yml) / [Billable Users](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/license/20210531204603_license_billable_users.yml) | <50% | ≥50 - <80% | ≥80% |

This looks at all users who actively log in on a 28 day basis divided by the amount of total users that have been deployed on the account.

**Limitations**:
1. Only self-managed customers on 15.2+ will have this health measure available
1. The SaaS-equivalent metric will be available later ([issue](https://gitlab.com/gitlab-data/analytics/-/issues/11662))

As the customer progresses through the lifecycle, user engagement is a measure of the "solidity" consumption of licenses. For example, arre the users that have found their way to the platform sticking around and regularly utilizing it?

**Why it matters**: User Engagement should prove to be a great way to build a more comprehensive view of renewal risk. It'll be less efficacious for customers that have dormant-user-deactivation enabled, as un-engaged users should be being removed from the billable count on an ongoing basis.

**How to use it**:
1. Ask discovery questions of customer about user engagement: types of users, their use cases, awareness of dormancy/un-engaged-users
1. Build awareness of dormant-user-deactivation capability
1. Couple that with efforts to drive awareness of GitLab within the account (eg. GitLab for Plan/PM, GitLab for non-developers, normal user enablement). A signal to SAE/AE/BDR to drive account-based outreach. Find unaware or unegaged user cohorts. Encourage them to  bring users onto the platform.

Position as a way for the customer to get value out of the seats they've already paid for, and help the account team ensure more predictable renewal outcomes. It becomes riskier the closer we are to renewal.


## Use Case Health Scoring

| Use Case (Stage)   | Purpose / Adoption Level | Description                                                  |
| ------------------ | ------------------------ | ------------------------------------------------------------ |
| SCM (Create)       | Basic Adoption           | Is my customer using the basic toolset? Most customers should adopt these features pretty quickly into their GitLab journey |
| CI (Verify)        | Product Stickiness       | As part of their continued adoption and customer journey, we want to help our customers adopt CI, as well as helping their central DevOps teams to better understand their organization's adoption of CI. Use these metrics to help determine progress towards adoption |
| Security (DevSecOps) | Enablement & Expansion   | For customers using our security features or who are trialing and wanting to [shift left](https://about.gitlab.com/blog/2020/06/23/efficient-devsecops-nine-tips-shift-left/), use these metrics to help identify adoption and track growth |
| CD (Release) | Enablement & Expansion   | How much has my customer adopted GitLab for deployments? The next path along the customer journey is the [CD use case](/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/usecase-gtm/cd/) |

### Gainsight Scoring Overview

Gainsight uses the following ranges and defines it as Red, Yellow, or Green based on the average of the measure group:

- 0 - 50 range, scores 0 - 50 are considered as Red <br>
- 50 - 75 range, scores 51 - 75 are Yellow <br>
- 75 - 100 range, scores 76 - 100 are Green <br>

**Example:**
![Example](https://lucid.app/publicSegments/view/b1d20410-8bbf-4717-933c-a4210aad9970/image.png)

- User Deployments 62.5 (yellow)
- Deployments per User 87.5 (green)
- CI Pipelines 62.5 (yellow)

`(62.5 + 87.5 + 62.5) / 3 = 70.83` <br>
Overall Score for CI = `70.83` or Yellow

### Source Code Management (SCM)

SCM is considered one of the initial land use cases. To that end, we want to ensure the customer is using it appropriately.
Adoption timeline: 1 months after license purchase

|         Metric        | Calculation | **Red** | **Yellow** | **Green** |
| --------------------- |-------|-------| ---------- | --------  |
| Git Operation Utilization % | [`Git Operations - Users L28D`](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20210216182040_action_monthly_active_users_project_repo.yml) ÷ [`Billable Users`](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/license/20210531204603_license_billable_users.yml) | <25%    | ≥25 - <50%     | ≥50%    |

##### **Green Adoption Criteria:**

When 50% or more Billable Users have triggered any Git Operation (Read/Write/Push) in the last 28 days, then SCM is considered adopted.

### Continuous Integration (CI)

CI is considered both an initial purchase reason or, in the case of SCM, an expansionary use case (one after the initial purchase intent has been solved).
Adoption timeline: 1 months after license purchase.

| Metric | Calculation | **Red** | **Yellow** | **Green** |
|---|---|---|---|---|
| CI Pipeline Utilization % | [CI Pipelines - User L28D](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20210216175554_ci_pipelines.yml) ÷ [Billable Users](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/license/20210531204603_license_billable_users.yml) | <25% | ≥25% - <50% | ≥50% |

##### **Green Adoption Criteria:**

When 50% or more of unique `Billable Users` have triggered a distinct `CI Pipeline` in the last 28 days, then CI is considered adopted.

### Security (DevSecOps)

These Security (DevSecOps) metrics are **only** available for [Ultimate customers](https://about.gitlab.com/direction/paid_tiers/#sts=Ultimate). Adoption timeline: 1 month after license purchase

| Metric | Calculation | **Red** | **Yellow** | **Green** |
|---|---|---|---|---|
| Secure Scanner Utilization % | [Secure Scanners - Users L28D](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/counts_28d/20210216181956_user_unique_users_all_secure_scanners.yml) ÷ [Billable Users](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/license/20210531204603_license_billable_users.yml) | ≤5% | >5% - <20% | ≥20% |
| Avg. Scan per CI Pipeline | [Secret Detection](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/counts_28d/20210830231956_secret_detection_scans.yml) + [Dependency Scan](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/counts_28d/20210216183828_dependency_scanning_scans.yml) + [Container Scan](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/counts_28d/20210830231849_container_scanning_scans.yml) + [SAST](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/counts_28d/20210830231329_sast_scans.yml) + [DAST](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/counts_28d/20210216183832_dast_scans.yml) + [Coverage Fuzzing](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/counts_28d/20210216183836_coverage_fuzzing_scans.yml) + [API Fuzzing](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/counts_28d/20210216183838_api_fuzzing_scans.yml) ÷ [CI Internal Pipelines - L28D](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20230217215050_ci_internal_pipelines.yml) | <0.1 | ≥0.1 - ≤0.5 | >0.5 |
| Number of Scanners in Use | SUM of [Secret Detection](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/counts_28d/20210830231956_secret_detection_scans.yml) + [Dependency Scan](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/counts_28d/20210216183828_dependency_scanning_scans.yml) + [Container Scan](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/counts_28d/20210830231849_container_scanning_scans.yml) + [SAST](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/counts_28d/20210830231329_sast_scans.yml) + [DAST](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/counts_28d/20210216183832_dast_scans.yml) + [Coverage Fuzzing](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/counts_28d/20210216183836_coverage_fuzzing_scans.yml) + [API Fuzzing](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/counts_28d/20210216183838_api_fuzzing_scans.yml) | ≤1 | 2 | ≥3 |

##### **Green Adoption Criteria:**

Due to equal weighting and Gainsight's defined scoring ranges, two (2) of the three measure groups have to be Green and one (1) measure group can be Yellow/Green for an overall Green Security (DevSecOps) score

### Continuous Deployment (CD)

CD is considered an expansionary use case (one after the initial purchase intent has been solved).
Adoption timeline: 1 months after license purchase

|       Metric       | Calculation | **Red** | **Yellow** | **Green** |
| ------------------ | ------- | ---------- | --------  | -------- |
| User Deployments Utilization % | [Deployments - User L28D](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20210216181935_deployments.yml) ÷ [Billable Users](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/license/20210531204603_license_billable_users.yml) | <5%    | 5-12%     | >12%    |
| Deployments Per User L28D | [Deployments L28D (event)](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20210201124930_deployments.yml) ÷ [Billable Users](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/license/20210531204603_license_billable_users.yml) | <2 | 2 - 7 | >7 |
| Successful Deployments % | [Successful Deployments - L28D](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20210216181923_successful_deployments.yml) ÷ (Successful + [Failed Deployments - L28D](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20210216181924_failed_deployments.yml)) | <25% | 25% - 80% | >80% |

##### **Green Adoption Criteria:**

Due to equal weighting and Gainsight's defined scoring ranges, two (2) of the three measure groups have to be Green and one (1) measure group can be Yellow/Green for an overall Green CD score

## Limitations

1. Some customers have been given an exception for sending usage data.
   1. [Cloud licensing and the support exemption process explained](/handbook/support/license-and-renewals/workflows/self-managed/cloud-licensing.html)
   1. [INTERNAL - Customer Availability, Eligibility & Opt-Out](https://internal.gitlab.com/handbook/product/fulfillment/cloudlicensing/cloud-licensing/#customer-availability-eligibility--opt-out)
   1. [Cloud Licensing Adoption Dashboard](https://10az.online.tableau.com/#/site/gitlab/views/WIPCloudLicensingPOC/CloudLicensingAdoption?:iid=1)
   1. **Resolution**: Exceptions are considered valid reasons for a customer to not be sending data. However, we have made more exceptions than planned and will be working on enablement on removing exceptions at time of renewal wherever possible.
1. Usage is measured at the instance level, which is attached to a subscription, attached to an account. So a "Account" health score is a view of a single instance (the most important one) but, for more complex accounts, that can hide the health of other instances and subscriptions (see [graph](/handbook/customer-success/product-usage-data/using-product-usage-data-in-gainsight/#csmcse-actions)) that shows how a single account can have multiple subscriptions and each subscription could have multiple instances (self-managed only). Process for dealing with [multiple production instances](/handbook/customer-success/product-usage-data/using-product-usage-data-in-gainsight/#multiple-production-instances-health-scoring)
   1. **Resolution**: The ideal outcome is to "split" subscriptions apart into relevant child accounts, which is being [discussed here](https://gitlab.com/gitlab-com/sales-team/field-operations/sales-operations/-/issues/3032)
1. `Billable Users` was a metric introduced in 14.0. Any customers on an older (self-managed) instance will not have this value and License Utilization will appear as NULL (note: this is a non-issue for SaaS customers)
   1. **Resolution**: Focus on Cloud License adoption
1. User Engagement: the `unique_active_user` metric debuted in 15.2 and only exists for self-managed instances. This health score will be NULL for all SaaS customers and any self-managed customer on 15.1 or earlier
   1. **Resolution**: Focus on Cloud License adoption (self-managed)
   1. **Resolution**: Create [the metric](https://gitlab.com/gitlab-data/analytics/-/issues/11662) for SaaS customers
1. Most underlying metrics were created on 13.9 or earlier, though any instance on version 12 or earlier will not have metrics
   1. **Resolution**:
1. Usage data is reliant on internet access, the IP address NOT being blocked, and our license<>subscription mapping to be functioning as expected (see [License<>Subscription Mapping epic](https://gitlab.com/gitlab-org/fulfillment-meta/-/issues/634) assigned to Fulfillment to resolve)
   1. **Resolution**: Focus on Cloud License adoption (self-managed)

## Use Case Adoption Count

*"How many use cases has a customer adopted?"*

In Gainsight, scorecards track customer adoption of GitLab use cases.

A green score signifies that a customer is adopting that specific use case. On the Customer Health Dashboard, in the Use Case Adoption Count chart, we count the number of green scores for each customer to visualize the count of customers adopting null, 1,2, 3 and 4 use cases.

Use this chart to understand how many use cases each of your customers have adopted.

<details>
<summary> Gainsight calculation rules
</summary>

##### Calculation of use case adoption counts for SCM, CI, CD and Security (DevSecOps)

Gainsight Rules mark boolean fields as true on `Company` object for accounts with green scores. These boolean fields are named SCM Adoption, CI Adoption, CD Adoption and Security (DevSecOps) Adoption.

Once marked, the number of “true” booleans for each account are summed. If an account has a green SCM, CI, CD and Security (DevSecOps), this would be a 4 score. If none of the use cases are green, this would be 0 and if all of the use case scores are N/A, this would be NULL to mean no usage stats have been recorded.
</details>

## Product Health Score Drop CTA

Using the Gainsight Rules Engine, we have created a mechanism for a Call to Action (CTA) to be created every time a Product Health Score drops from Green to Yellow/Red or from Yellow to Red. The CTA is assigned to the Customer Success Manager (CSM) for follow up, and no playbooks will be associated with the CTA. The CSM will have the option to manually create/add tasks to the CTA in order to keep track of actions taken towards correcting the decrease in score.

Through this CTA, the CSM is notified quickly when a customer may be decreasing their usage of an area of the product, so that they can investigate, ask discovery questions, and triage early, in order to help customers adopt and avoid potential churn or contraction down the line.

While there may be some false positives (for example holiday breaks when no one is working), we prefer to be extra cautious when it comes to potential risk, so we ask CSMs to do their due diligence when receiving these CTAs to ensure their customer is not facing new blockers, company changes, etc. that could affect their renewal, and if they are to begin the [triage process](/handbook/customer-success/csm/renewals/#gitlab-account-triage-project) immediately.

The CSM may also be able to spot trends of where customers may have lagging usage either over time or across their books of business and suggest best practices to their customers to help with expectations and adoption.

This logic applies to the following Scores:
- CI Adoption
- CD Adoption
- Security (DevSecOps) Adoption
- License Utilization
- SCM Adoption
- User Engagement

*Notes:*
- Applicable to CSM-managed customer accounts only
- Rule is scheduled to run on a daily basis at 2am PT

## License Utilization in Gainsight

License Utilization is calculated on a subscription level. In Gainsight we display this in a couple of different ways:
1. On the C360 page, the License Utilization number that appears on the Summary page is only the number from the primary instance (the instance marked as "Included in Health Score").
2. In reporting, etc. around Gainsight, we display the License Utilization at the instance level.

If you believe there is inaccurate stats for an account, see how to [report bad usage stats](#reporting-bad-usage-statistics) below.

There are three main fields we use at the Instance and Namespace level (generally subscription-level, too) for License Utilization stats:

- **Billable User Count**: From Operational Metrics. Number of users that can be billed for a license, excludes guest users.
- **Licensed Users**: Number of licenses purchased for a given subscription.
- **License Utilization**: Calculated based on above metrics: `Billable User Count/Licensed Users` represented as a percentage.

### Reporting Bad Usage Statistics

If you want to report bad usage stats, please refer to this handbook page on [Triaging Data Quality](/handbook/customer-success/product-usage-data/using-product-usage-data-in-gainsight/#triaging-data-quality).
