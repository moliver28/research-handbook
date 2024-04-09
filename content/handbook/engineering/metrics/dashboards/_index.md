---
title: "Engineering Metrics Dashboards"
---

### Welcome

Welcome to our Engineering Metrics Dashboards hub – your go-to spot for checking out how things are rolling across our engineering org. The dashboards below capture data on key metrics such as past due issues, merge request types, open bugs, review time, merge request rate, and the age of bugs and issues. These metrics serve as vital indicators, offering a granular understanding of our development processes, code quality, and team efficiency.

The Engineering Metrics on this page are available for all product group teams. The indicators captured here may or may not roll into an existing KPI/PI. The Engineering Analytics team reserves the urgency for these dashboards to provide timely visibility without the requirement of having all indicators be a KPI/PI at the department level. Please reach out to us in `#g_engineering_analytics` if you have any questions!

#### Dashboards

This page is populated from the following filterable views.

- [Top Engineering Metrics Dashboard](https://10az.online.tableau.com/#/site/gitlab/views/TopEngineeringMetrics_16989570521080/TopEngineeringMetricsDashboard)
- [MR Types Dashboard](https://10az.online.tableau.com/#/site/gitlab/views/MRMetrics/OverallMRsbyType_1)
- [Development Embedded Dashboard](https://10az.online.tableau.com/#/site/gitlab/views/DevelopmentEmbeddedDashboard_17017859046500/DevelopmentEmbeddedDashboard)
- [Infrastructure Embedded Dashboard](https://10az.online.tableau.com/#/site/gitlab/views/DraftInfrastructureEmbeddedDashboard/InfrastructureEmbeddedDashboard)
- [Open Bug Age Dashboard](https://10az.online.tableau.com/#/site/gitlab/views/OpenBugAgeOBA/OpenBugAgeOBADashboard)
- [S1 OCBA Dashboard](https://10az.online.tableau.com/#/site/gitlab/views/InfrastructureKPIs/S1OpenCustomerBugAge)
- [S2 OCBA Dashboard](https://10az.online.tableau.com/#/site/gitlab/views/InfrastructureKPIs/S2OpenCustomerBugAge)
- [Security Embedded Dashboard](https://10az.online.tableau.com/#/site/gitlab/views/appsectest2rawdata/AppSec-ApplicationandContainerVulnerabilityDashboard)

#### Filtering your data
To ensure the accuracy of the presented data, please use the convenient filtering options (**'Group'**, **'Section'**, or **'Stage'**) at the top of the dashboard to tailor the displayed information to your group, section, or stage's metrics.

#### Why your team is not listed in the dashboard filters

We use [stages.yml](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/stages.yml) as the SSOT for group, section, and stage information. In order for your group/section/stage to be listed in the dashboard filter, there must be a match between what's listed in this file vs how it's shown in the label. We do this to avoid any error or random values in our filters. Here are a couple of examples:
- The Data Science section is listed as `data-science` in [stages.yml](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/stages.yml) and the associated label is `section::data-science`. Since both values match, our dashboard filters will pick this up as a valid filter.
- The Data Science section is listed as `data-science` in [stages.yml](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/stages.yml) and the associated label is `section::data_science`. Since both values do not match, our dashboard filters will not pick this up as a valid filter.

#### Save your settings

If you find yourself frequently accessing data specific to your group, section, or stage, we recommend embedding the following code to save your preferred settings.

<details markdown=1>
<summary>Code</summary>


```md
{{</* tableau height="600px" toolbar="visible" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" */>}}
  {{</* tableau/filters "GROUP_LABEL"="code review" /*/>}}
{{</* /tableau */>}}
```


</details>

Simply copy and paste this code into your page. It will save your selected filters by defaulting to your own data without the need to manually set filters each time. Make sure to replace any placeholders in the code with the public dashboard URL (can be found in the dashboards list above) and your actual group, section, or stage details.

### Top Engineering Metrics Dashboard

{{< tableau src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
{{< /tableau >}}

### MR Types Dashboard

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
{{< /tableau >}}

### Development Dashboard

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/DevelopmentEmbeddedDashboard/DevelopmentEmbeddedDashboard" >}}
{{< /tableau >}}

### Infrastucture Embedded Dashboard

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/InfrastructureDashboards/InfrastructureEmbeddedDashboard" >}}
{{< /tableau >}}

### Open Bug Age Dashboard

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/OpenBugDashboards/OpenBugAgeOBADashboard" >}}
{{< /tableau >}}

### S1 Open Customer Bug Age Dashboard

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/InfrastructureKPIs/S1OpenCustomerBugAge" >}}
{{< /tableau >}}

### S2 Open Customer Bug Age Dashboard

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/InfrastructureKPIs/S2OpenCustomerBugAge" >}}
{{< /tableau >}}

### Security Dashboard

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/AppSecDashboards_17060230337410/AppSec-ApplicationandContainerVulnerabilityDashboard" >}}
{{< /tableau >}}