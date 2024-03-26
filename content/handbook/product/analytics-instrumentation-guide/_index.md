---

title: Analytics Instrumentation Guide
---






Disclaimer: This guide is mostly out of date. We are in the process of updating and migrating the content.
{: .alert .alert-info}

## Analytics Instrumentation Overview

At GitLab, we collect product usage data for the purpose of helping us build a better product. Data helps GitLab understand which parts of the product need improvement and which features we should build next. Product usage data also helps our team better understand the reasons why people use GitLab. With this knowledge we are able to make better product decisions.

To get an introduction of Product Analytics at GitLab you have a look at the [GitLab Product Data Training](https://docs.google.com/presentation/d/1ySP9sndhF9BdRhaZhMK6kGbc8txO_UkAu48HmoxLtfI/edit#slide=id.g29a70c6c35_0_68) (internal) deck

There are several stages and teams involved to go from collecting data to making it useful for our internal teams and customers.

| Stage | Description | DRI | Support Teams |
| ----- | ----------- | --- | ------------- |
| Privacy Settings | The implementation of our Privacy Policy including data classification, data access, and user settings to control what data is shared with GitLab. | Analytics Instrumentation | Legal, Data |
| Collection | The data collection tools used across all GitLab applications including GitLab SaaS, GitLab self-managed, CustomerDot, VersionDot, and [about.gitlab.com](https://about.gitlab.com/). Our current tooling includes Snowplow, Service Ping, and Google Analytics. | Analytics Instrumentation | Infrastructure |
| Extraction | The data extraction tools used to extract data from Product, Infrastructure, Enterprise Apps data sources. Our current tooling includes Stitch, Fivetran, and Custom. | Data |  |
| Loading | The data loading tools used to extract data from Product, Infrastructure, Enterprise Apps data sources and to load them into our data warehouse. Our current tooling includes Stitch, Fivetran, and Custom. | Data |  |
| Orchestration | The orchestration of extraction and loading tooling to move data from sources into the Enterprise Data Warehouse. Our current tooling includes Airflow. | Data |  |
| Storage | The Enterprise Data Warehouse (EDW) which is the single source of truth for GitLab's corporate data, performance analytics, and enterprise-wide data such as Key Performance Indicators. Our current EDW is built on Snowflake. | Data |  |
| Transformation | The transformation and modelling of data in the Enterprise Data Warehouse in preparation for data analysis. Our current tooling is dbt and Python scripts. | Data | Analytics Instrumentation |
| Analysis | The analysis of data in the Enterprsie Data Warehouse using a querying and visualization tool. Our current tooling is Sisense. | Data, Product Data Analysis | Analytics Instrumentation |

[Editable source file](https://docs.google.com/spreadsheets/d/144-BLh7uyX4aY23QNrvke5BqCcb9xfPk2BL4qGFvzFY/edit?usp=sharing)

Our SaaS data collection catalog spans both the client (frontend) and server (backend), and uses various tools. We pick-up events and data produced when using the application. By utilizing collected [identifiers](/handbook/product/analytics-instrumentation-guide/#data-used-as-identifiers), we can string these backend and frontend events together to illustrate a GitLab journey at the (1) [user](/handbook/product/analytics-instrumentation-guide/#example-user-journey) (pseudonymized), (2) namespace, and (3) project level.

The below table explains the types of data we collect from GitLab.com and examples for what it can be used.

| Technology | Data Type | Description | Aggregation Method   |
|---|---|---|---|
| **[Snowplow Tracking](https://docs.snowplowanalytics.com/docs/collecting-data/collecting-from-own-applications/)** <br> <br>  - [Snowplow JS Tracker](https://docs.snowplowanalytics.com/docs/collecting-data/collecting-from-own-applications/javascript-trackers/): client side (FE) events  <br> -[Snowplow Ruby Tracker](https://docs.snowplowanalytics.com/docs/collecting-data/collecting-from-own-applications/ruby-tracker/): server-side (BE) events <br> - Schema of events [here](https://gitlab.com/gitlab-org/iglu/)| Event Based Data   | Examples:  <br>- Collects an event on Git pushes <br> - Collects an event on a button click - Collects an event on a successful Pipeline  <br>- Collects an a request to a Rails controller  |                                                                                    Event based or grouped by an attribute (e.g. session) |
| **[Service Ping](https://docs.gitlab.com/ee/development/service_ping/)** <br> <br> - PostgreSQL database <br> - Redis in-memory data store <br> - System Logs |                                                                Transactional data | Examples: <br> - Total issues created <br> - Instance settings such as the instance's Git version <br> - Integration settings such as an [external storage provider](https://docs.gitlab.com/ee/administration/static_objects_external_storage.html) | Count based on either total time or given timeframe  |




### Data used as identifiers

In order to create the SaaS usage journeys documented below, we collect various identifiers in our data collection catalog. Where the identifier can be used to personally identify a user by someone without permissions to view that information, we will [pseudonymize](https://www.ucl.ac.uk/data-protection/guidance-staff-students-and-researchers/practical-data-protection-guidance-notices/anonymisation-and#Pseudonymisation) the data via [hashing at the collection layer](https://gitlab.com/groups/gitlab-org/-/epics/6309#hashing-on-the-collector-layer). You can find the collected identifieres in our [Metrics Dictionary](https://metrics.gitlab.com/identifiers).


### Example User Journey

A user signups for a free GitLab.com account and creates a group and/or project (Pseudonymized user_id created and associated with group or project ID), they set up their repo and then view CI/CD and decide they want to invite a colleague to set up this functionality. The newly invited user signs up for GitLab (New pseudonymized user_id created and associated with the existing group or project ID) and sets up CI/CD for their team (backend event).

**Why this user journey is valuable to GitLab and our users.** In this example, by being able to connect pseudonymized user actions with backend actions we're are able to understand how often teams utilize this adoption path and at what rate they're successful. This will us know what work to prioritize to maximize improvements within the user experience and ensure we're able to understand how impactful these future iterations are.

## Which Tooling To Use

Check the [Getting started with Analytics Instrumentation](/handbook/product/analytics-instrumentation-guide/getting-started/).

## Metrics Dictionary

The Metrics Dictionary is a single source of truth for the metrics and events we collect for product usage data. The Metrics Dictionary lists all the metrics we collect in Service Ping, why we're tracking them, and where they are tracked.

The [Metrics Dictionary](https://docs.gitlab.com/ee/development/internal_analytics/metrics/metrics_dictionary.html) should be updated any time a new metric is implemented, updated, or removed. Currently, the metrics dictionary is built automatically once a day, so when a change to a metric is made in the .yml, you will see the change in the dictionary within 24 hours.

The Metrics Dictionary can be viewed for [Service Ping](https://docs.gitlab.com/ee/development/service_ping.html) and [Snowplow](https://docs.gitlab.com/ee/development/snowplow/index.html) data, however Snowplow metrics have not been fully converted to this method yet.

The Metrics Dictionary was [introduced](https://gitlab.com/gitlab-org/gitlab/-/issues/270107) in GitLab version 13.9. Metrics status changes are tracked in the [metric YAML definition files](https://docs.gitlab.com/ee/development/internal_analytics/metrics/metrics_dictionary.html). Changes prior to GitLab version 13.9 are not reflected in metrics YAML definitions.

### Metrics Dictionary features

![Metrics Dictionary Features](metric_dictionary_handbook.png)


1. **Filter data**. In the search bar, enter a value you want to filter the results set by.
1. **Customize viewable columns**. Select the options button to expand the "table fields" control. From here, you can select the columns you want to display in your view. Note, this doesn't not filter data by the selection, this only displays or not displays the data regardless of the values.
1. **Sisense query for GitLab.com**. Copy this query for use in Sisense. A common use case for this feature is to identify if data is available for SaaS Service Ping. Watch [this quick video](https://www.youtube.com/watch?v=n4o65ivta48) to learn more.
1. **Performance indicator type**. Metrics which are utilized in business critical [xMAU](/handbook/business-technology/data-team/data-catalog/xmau-analysis/) calculations are indicated with a Performance indicator type value.
1. **Export**. You can now download the entire metrics dictionary as a .csv file.
1. **Metric Version**. Starting with miletone 13.9, we've begun to attribute the version associated with the metric. Unfortunately we couldn't populate the historical values for existing metrics so all prior metrics are labeled as `<13.9`.
1. **Metric Product Section/Stage/Group**. You can display and/or filter by Section, Stage and Group as needed.
1. **Service Usage Data Category**. View and/or filter by [Service Usage Data](/handbook/legal/privacy/customer-product-usage-information/) category (Optional, Operational, Subscription).


## Instrumenting Metrics and Events

Get started with our **[Quick Start Instrumentation Guide ](/handbook/product/analytics-instrumentation-guide/getting-started/)**, which is a single page with links to documentation for the entire instrumentation process flow.

### Implementing xMAU metrics

|Description|Instructions|Notes |
|---|---|---|
|1. xMAU level|Determine the level at which the metric should be measured: <br><br> 1. User level - [UMAU](https://internal.gitlab.com/handbook/company/performance-indicators/product/#unique-monthly-active-users-umau) <br> 2. Stage level - [SMAU](https://internal.gitlab.com/handbook/company/performance-indicators/product/#stage-monthly-active-users-smau), [Paid SMAU](https://internal.gitlab.com/handbook/company/performance-indicators/product/#paid-stage-monthly-active-users-paid-smau), Other PI <br> 3. Group level - [GMAU](https://internal.gitlab.com/handbook/company/performance-indicators/product/#group-monthly-active-users-gmau), [Paid GMAU](https://internal.gitlab.com/handbook/company/performance-indicators/product/#paid-group-monthly-active-users-paid-gmau), Other PI  | |
|2. Collection framework | There are two main tools that we use for tracking users data: [Service Ping](https://docs.gitlab.com/ee/development/service_ping/) and [Snowplow](https://docs.gitlab.com/ee/development/snowplow/index.html).|We strongly recommend using Service Ping for xMAU as your metrics will be available on both SaaS and self-managed.|
|3. Instrumentation | Work with your engineering team to instrument tracking for your xMAU.  <br><br>- Utilize our [Quick start instrumentation guide ](/handbook/product/analytics-instrumentation-guide/getting-started/) to find the documentation needed for the instrumentation process. |Additional reference:<br><br> - [Service Ping Guide](https://docs.gitlab.com/ee/development/service_ping/)<br> - [Snowplow Guide](https://docs.gitlab.com/ee/development/snowplow/index.html) |
|4. Data Availability | Plan instrumentation with sufficient lead time for data availability.   <br><br> 1. Merge your metrics into the next self-managed release as early as possible since users will have to upgrade their instance version to start reporting your instrumented metrics. <br><br> 2. Wait for your metrics to be released onto production GitLab.com. These releases currently happen on a daily basis.<br><br> 3. Service Pings are generated on GitLab.com on a weekly basis. An issue is created each milestone associated with [this epic](https://gitlab.com/groups/gitlab-org/-/epics/6000), to track the weekly SaaS Service Ping generation. You can find successful payloads and failures in these issues. Verify your new metrics are present in the GitLab.com Service Ping payload.<br><br> 4. Wait for the Versions database to be imported into the data warehouse.<br><br> 5. Check the dbt model [version_usage_data_unpacked](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.version_usage_data_unpacked#columns) to ensure the database column for your metric is present.<br><br> 6. Check [Sisense](http://app.periscopedata.com/app/gitlab/) to ensure data is available in the data warehouse.<br>|Timeline <br><br> 1. [Self-managed releases](/upcoming-releases/) happen [every month](/handbook/engineering/releases/) month (+30 days) <br><br> 2. Wait at least a week for customers to upgrade to the new release and for a Service Ping to be generated (+7 days)<br><br> 3. Service Pings are collected in the Versions application. The Versions application's database is automatically imported into the Snowflake Data Warehouse every day (+1 day).<br><br> 4. In total, plan for up to 38 day cycle times. Cycle times are slow with monthly releases and weekly pings, so, implement your metrics early.|
|5. Dashboard|Create a Sisense dashboard.  Instructions for creating dashboards are [here](/handbook/business-technology/data-team/programs/data-for-product-managers/#how-to-consume-data-at-gitlab).|


#### Deduplication of Aggregated Metrics

Note: We now enable you to deduplicate aggregated metrics implemented via Redis HLL, in order to get distinct counts (ex distinct users count across multiple actions in a stage). Please read our docs on [Aggregated Metrics](https://docs.gitlab.com/ee/development/usage_ping/#aggregated-metrics) for more information.

| Term | Definition | Example |
| ---- | ---------- | ------- |
| Aggregated | Metric contains rolled-up values due to an aggregate function (COUNT, SUM, etc) | Total Page Views (TPV) - the sum of all events when a page was viewed. |
| Deduplicated | Metric counts each unit of measurement once. | Unique Monthly Active Users (UMAU) - each user_id is counted once |
| Deduplicated Aggregated | Metric contains a rolled-up value where each unit is counted once. | UMAU is a deduplicated aggregated metric but TPV is not. |

## Finding Reporting Dependencies on Metrics
Although PMs commonly use Service Ping metrics to measure feature health and product usage, that is not the only use for Service Ping metrics. For instance, the Product Data Insights team relies on Service Ping metrics for xMAU reporting. Additionally, the Customer Success Operations team relies on Service Ping metrics to generate [health scores](/handbook/customer-success/customer-health-scoring/) for customers.

For a [variety of reasons](https://www.youtube.com/watch?v=qgnWYIynDF4), we [recommend not changing](https://docs.gitlab.com/ee/development/internal_analytics/metrics/metrics_lifecycle.html#change-an-existing-metric) the calculation of metrics that are used for reporting once implemented. If you do need to change a metric that is being used, please coordinate with the customer success team before doing so so that they can update their models and health scores accordingly. To identify metrics that are relied upon for reporting, follow these directions.

### xMAU Reporting
1. Go to the [Metrics Dictionary](https://metrics.gitlab.com)
2. Click "Customize table" and select "Performance indicator type"
3. Search for a metric and view the **performance indicator type** values.
    - If the field is blank, there are no xMAU reporting dependencies on this metric
    - If the field is not blank, there are xMAU reporting dependencies on this metric. Please reach out to the [Product Data Insights](/handbook/product/product-analysis/) to understand how changing metric calculations would impact downstream dependencies.

### Customer Health Scoring
1. Go to [this CSV](https://gitlab.com/gitlab-data/analytics/-/blob/master/transform/snowflake-dbt/data/health_score_metrics.csv), which is the SSOT for metrics that are used for health scoring.
2. If the metric of interest is in this CSV, then is it being used for customer health scoring. Please reach out to [Customer Success Operations](/handbook/sales/field-operations/customer-success-operations/) to understand how changing metric calculations would impact downstream dependencies.

## Quick Links

| Resource | Description |
| -------- | ----------- |
| [Getting started with Analytics Instrumentation](/handbook/product/analytics-instrumentation-guide/getting-started/) | The guide covering implementation and usage of Analytics Instrumentation tools |
| [Service Ping Guide](https://docs.gitlab.com/ee/development/service_ping/) | An implementation guide for Service Ping |
| [Snowplow Guide](https://docs.gitlab.com/ee/development/snowplow/index.html) | An implementation guide for Snowplow |
| [Metrics Dictionary](/handbook/product/analytics-instrumentation-guide#metrics-dictionary) | A SSoT for all collected metrics and events |
| [Privacy Policy](https://about.gitlab.com/privacy/) | Our privacy policy outlining what data we collect and how we handle it |
| [Analytics Instrumentation Direction](https://about.gitlab.com/direction/analytics/analytics-instrumentation/) | The roadmap for Analytics Instrumentation at GitLab |
| [Analytics Instrumentation Development Process](/handbook/engineering/development/analytics/analytics-instrumentation/) | The development process for the Analytics Instrumentation groups |

_2022-05-11: last page update_
