---

title: "Sales Strategy and Analytics - Pipeline Management Tools"
---







## Pipeline Management Tools

### Goal

The goal of this documentation is to provide you with an overview of the Pipeline Management tools from the Sales Analytics team.  


### What is Pipeline and Why do we manage Pipeline?

Pipeline is the sum of all open sales opportunities and is one of the key metrics that helps us to consistently hit our targets. It is one of the leading indicators of the health of our business and it informs us on our sales motion dynamics.


### Metrics in Pipeline Management Tools

#### Key Metrics

- Targets (Net ARR & deal count)
- Closed Deals (Net ARR & deal count)
- Pacing (Booked / Target)
- Open Pipe by Stage 1+, 3+, 4+
- Pipeline Coverage by Stage 1+, 3+, 4+
- Pipeline Generation within Quarter (Net ARR & deal count)
- Historical values are based on fitted lines to the last 4 quarters

<br>

#### Pipeline Coverage Calculation

Pipeline coverage is a ratio between our pipeline and our business target. We track pipeline coverage at different [stages](/handbook/sales/field-operations/gtm-resources/#opportunity-stages/) of the sales funnel for current and future quarters.
We calculate historical pipeline coverages (to actuals) and use them as a baseline to compare with our current (and future) quarters coverage. That way, we can answer the question "Do we have enough pipeline?" with confidence.

##### Pipeline Coverage against Remainder to Target

Our standard pipeline coverage calculation is defined as
`Open Pipe Net ARR` / `Remainder to Target amount (to date in a given quarter)`
and Remainder to Target is defined as
`Target Net ARR` - `Booked Net ARR (to date in a given quarter)`.

For future quarters, the calculation would be
`Open Pipe Net ARR` / `Target Net ARR` as there won’t be any Booked Net ARR yet.

Unless otherwise stated, Pipeline coverage is calculated with the definition above.

##### Pipeline Coverage against Actuals

We also calculate pipeline coverage against actuals to calculate historical coverage values.

Pipeline coverage against actuals is defined as
`Open Pipe Net ARR with Stage X+ at day Y` / (`Total Booked Net ARR` - `Historical Booked Net ARR at day Y`)

The inverse of historical pipeline coverage against actuals is the historical win rate at that point in time.

<br>

### Available Dashboards

<table>
    <tr>
     <th>Purpose</th>
     <th>Name</th>
     <th>Contents</th>
        <th>Link</th>
 </tr>

    <tr>
        <td rowspan="2"> Provides <strong>operational insights and action items</strong> on current and future quarters </td>
        <td>Pipeline X-Ray: Current & Next Quarters Overview</td>
        <td>
            <ul>
                <li> Tabular views containing Target, Closed Net ARR, Open Pipeline (both net ARR and Deal Count), Pipeline Coverage, Pipeline Coverage comparison with historical quarters for current and future quarters </li>
                <li> Separate views for overview, Enterprise-focused, Commercial-focused, Area-Geo, SQS and Order Type</li>
            </ul>
        </td>
        <td> Ask a member of the Revenue Strategy and Analytics team for the link in Slack </td>
    </tr>
    <tr>
        <td>SAE Heatmap</td>
        <td>
            <ul>
                <li> Tabular views containing Pipeline Coverage to Quota and Pipeline Generation per different opportunity stages for each Strategic Account Executive within a region</li>
                <li> The color scale is based on OKR target</li>
            </ul>
        </td>
        <td>< Ask a member of the Revenue Strategy and Analytics team for the link in Slack </td>
    </tr>
</table>


<br>

### Examples - Data Interpretation

#### Historical Coverages and Win Rate

To define a baseline of how "Good Enough Pipeline" looks like, we use calculated historical coverage curves of pipeline vs actuals.

Those curves, compare pipeline at that point in time (from the historical date perspective) vs the total bookings of that quarters (instead of the target). That way, we have a historical representation of how much pipeline was needed on that quarter to close its actual bookings. One interesting fact is that the inverse of the historical pipeline coverage vs actuals is our "Win Rate".

Pipeline Coverage against Actual (for historical quarters): <br>
`Open Pipe Net ARR with Stage X+ at day Y` / (`Total Booked Net ARR` - `Historical Booked Net ARR at day Y`)

Win Rate (inverse of Pipeline Coverage against Actual): <br>
(`Total Booked Net ARR` - `Historical Booked Net ARR at day Y`) / `Open Pipe Net ARR with Stage X+ at day Y`

Comparing our current quarter Pipeline Coverage against target vs historical Pipeline Coverage against actuals (at the same day of the quarter) allows us to understand if we do have enough pipeline to close our Net ARR target (based on the assumption that our sales motion and win rate are consistent).

As every past quarter has variability on their win rates, we use the last 4 closed quarters as guidaline.

<br>

#### Historical Coverage and Fitted Curves

To reduce quarter-specific variation, a polynomial curve is fitted using the last 4 fiscal quarters of Pipeline Coverage against Actuals data.

[Opportunity Snapshot table](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.wk_sales_sfdc_opportunity_snapshot_history_xf) is used for calculating historical coverages. The fitted curve serves as a benchmark in tools like `Pipeline X-Ray: Current & Next Quarters Overview` and others. Maintaining Pipeline Coverage above the fitted line indicates a higher likelihood of hitting the sales target.

<br>

#### Interpreting Pipeline X-Ray Dashboard

- Select a tab based on the business segment of interest: <br>
  `CRO (Overview)`, `Enterprise`, `Commercial per Order Type` etc.
- You can see Net ARR amount for Target, Closed, Pipe Gen, Open Pipe for Stage 1+, 3+ and 4+ (current quarter (CQ), CQ+1, CQ+2)
- You can also see Deal Count for CQ, CQ+1, CQ+2
- Color scale (cell color) allows you to compare with historical values. For example,
  - 🟢 Region A has Pipeline Coverage of `3.7` for the current quarter (Stage 3+). And the average coverage for the past 4 quarters was `3.6`
    - the current coverage is close to the historical one.
  - 🔴 Region B - Area B has Pipeline Coverage of `2.5` for CQ+1 (Stage 1+). However, the coverage for the past 4 quarters was `3.5`
    - The gap is significant and management attention is needed for pipeline generation.

<br>

#### Interpreting SAE Heatmap

- You can see Attainment, Pipeline Coverage and Generation summary per Strategic Account Executive by Region.
- You can drill down from the Geo/Region level from Pipeline X-Ray Dashboard to SAE level in SAE Heatmap.
  - 🔴 You see that the overall Coverage is a lot lower than historical coverages and most of the SAEs haven't reach their goals.
    - Have there been any changes in Sales Motion? The new strategic decision might have affected negatively.
  - 🟠 You see that there is one particular team member who struggles with Pipeline Generation.
    - This can be a conversation starter. Is there anything you can do as Sales Leadership to support?


### Evolving Definitions

We iterate on the definition of Sales Accepted Opportunities (SAOs), Pipeline Generation, and Created ARRs. If you would like to understand the latest version of them, please reach out to the SS&A team.

### FAQs

- **How can I have access to the dashboard?** <br>
Please refer to Permission Handling section below

- **It is a little overwhelming with so many dashboards. Which one is the most important one that I should keep an eye on regularly?**
  - If you are looking for insights related to current (and upcoming future quarters) and you want to know if your team (or globally) is on the right trajectory for achieving the target, you can leverage the “Pipeline X-Ray: Current & Next Quarters Overview” dashboard. After checking specific region/ order type, you might be interested in more granular detail and move on to the "SAE Heatmap" to check metrics per each SAE.
  - If you would like to see metrics development for a longer timeframe (across multiple years and quarters) for various segments (Sales Segment, Order Type, Geo etc), you can check out the “Pipeline Velocity & Generation” dashboard.

- **Are there any SFDC reports that I can refer to to cross-check numbers?** <br>
Please have a look at `Readme` tab in Pipeline X-Ray tool for links for the related SFDC reports


- **Why do some charts have negative (-) days in the X axis?** <br>
It is quite common that an opportunity is expected to close far in the future (in the coming quarters), therefore it is possible for us to track the pipeline before a quarter starts. When a snapshot is taken for an Opportunity object (table) today and the close date of some opportunities is in next quarters, the `Normalized Close Day of Fiscal Quarter` would be a negative value for those opportunities.
  - SQL formula
  `90 - DATEDIFF(DAY, sfdc_opportunity.snapshot_date, close_date_detail.last_day_of_fiscal_quarter) AS close_day_of_fiscal_quarter_normalised` <br>
  The formula can be found in a dbt Macro file from GitLab Data Team repository ([sfdc_opportunity_fields.sql](https://gitlab.com/gitlab-data/analytics/-/blob/master/transform/snowflake-dbt/macros/sfdc/sfdc_opportunity_fields.sql/))
  - Example: On the `2022-06-09` we look at coverage for "FY23-Q4" and `opportunity_a` has
    - Close Date as `2022-11-24` (FY23-Q4)
    - and the last day of the Close Date in Fiscal Quarter would be `2023-01-31`.
    - If we consider a snapshot on `2022-06-09`,
    - the `Normalized Close Day of Fiscal Quarter` would be: <br>
    `90 - (difference in day between 2023-01-31 and 2022-06-09) = 90 - 236 = -146`

    The goal of that calculation is to allow us to compare end of quarter (and days before it) consistently across quarters.

- **I would like to see actual data models behind the charts. How can I do that?**
Please refer to Data Models section below.

- **I would like to request other types of visualizations regarding Pipeline - what should I do?**
Please create an issue in [SS&A project](https://gitlab.com/gitlab-com/sales-team/field-operations/analytics/-/issues) and assign it to [@nfiguera](https://gitlab.com/nfiguera) and [@j_kim](https://gitlab.com/j_kim).

- **Who should I contact when I have issues with tools?**
As we are constantly iterating on our data models and dashboards, you might come across some issues. In those cases, please reach out to [@nfiguera](https://gitlab.com/nfiguera) or [@j_kim](https://gitlab.com/j_kim).


### Data Models

#### Models Available in dbt

A set of custom data models were created in the Snowflake `sales_workspace` to simplify reporting efforts on Sisense / gSheet. When possible the metrics logic is embedded in the source tables rather than in the report models and looking at the SQL code is the best way to be sure that the metrics are presenting what it is expected from them.

The following list of models (with dbt Docs links) are in use for creating Pipeline Management dashboards:

| Model| Summary |
| ----- | :----- |
| [restricted_safe_workspace_sales.sfdc_opportunity_xf](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.sfdc_opportunity_xf) | Legacy model with extra metrics definitions and helper fields |
| [Restricted_safe_workspace_sales.sfdc_opportunity_snapshot_history_xf](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.wk_sales_sfdc_opportunity_snapshot_history_xf) | Legacy model with extra metrics definitions and helper fields |
| [restricted_safe_workspace_sales.report_pipeline_velocity_quarter_with_targets](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.wk_sales_report_pipeline_velocity_quarter_with_targets) | Aggregated table containing open, total, target, churned Net ARRs with key segment and other various aggregation keys |
| [restricted_safe_workspace_sales.report_pipeline_metrics_day_with_targets](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.wk_sales_report_pipeline_metrics_per_day_with_targets) | Metrics Fiscal Quarter / Day, the model includes targets to simplify the calculation of coverages at different levels |
| [restricted_safe_workspace_sales.report_pipeline_movement_daily](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.wk_sales_report_pipeline_movement_daily) | Model with pipeline related metrics per Opportunity id (daily) |
| [restricted_safe_workspace_sales.report_pipeline_movement_quarter](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.wk_sales_report_pipeline_movement_quarter) | Model with pipeline related metrics per Opportunity id (quarterly) |
| [restricted_safe_workspace_sales.ssa_coverage_fitted_curves](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.ssa_coverage_fitted_curves) <br> (model created from Jupyter Notebook export) | Model containing historical pipeline coverage (fitted curves) |
| [workspace_sales.date_details](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.date_details) | Helper table containing different date fields |
| [restricted_safe_workspace_sales.report_agg_demo_sqs_ot_keys](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.wk_sales_report_agg_demo_sqs_ot_keys) | Helper table containing different keys that can be used for aggregation |
| ([EDM](/handbook/business-technology/data-team/platform/edw/) not `sales_workspace`) <br> [restricted_safe_common_mart_sales.mart_sales_funnel_target](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_sales_funnel_target) | Model with sales targets |


#### Models not Available in dbt

For some tools, we have introduced another layer of transformation in Python on top of dbt models to overcome limitations from SQL. Sisense dashboards are used for this purpose at the moment and tables are exported to Google Sheet based tools.


#### Model Exports for Google Sheet based Tools

Each Google Sheet based dashboard has a `source` Google sheet pair which contains data and calculations on top of the presentation layer of the dashboard. Data is exported from Sisense to the source Google sheet, using csv url provided from Sisense.

### Permission Handling

To comply with the [SAFE Framework](/handbook/legal/safe-framework/), please submit an [Access Request](/handbook/business-technology/end-user-services/onboarding-access-requests/access-requests/) to the Sisense SAFE Environment. Also for non-Sisense dashboards (e.g. Pipeline X-Ray), access is automatically granted for those to have access to SAFE dashboards in Sisense.





