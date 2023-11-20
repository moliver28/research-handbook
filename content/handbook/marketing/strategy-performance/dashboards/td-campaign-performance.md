---

title: TD Campaign Performance Dashboard
description: >- 
   Campaign Performance is designed as a source of truth dashboard on campaign performance.

  
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />








## What is TD: Campaign Performance Dashboard


TD: Campaign Performance](https://app.periscopedata.com/app/gitlab:safe-intermediate-dashboard/1111393/UAT:-TD---Campaign-Performance) is the source of truth dashboard for marketing campaign performance. It is a single pane of glass view for tracking campaign performance from an Inquiry to a closed won SAO. 

This dashboard is based on Marketo Measure (Bizible) Touchpoints, where each Touchpoint represents a form submitted to a GitLab Marketing website from an inquiry. TD: Campaign Performance (TDP) is based on MS&A’s Lead to Revenue model that combines Touchpoints, persons and Opportunities, allowing TDP to create a single pane of glass view from Inquiry to closed won SAO.


## Cohorting

Unlike many of our other dashboards, all the metrics on TDP are chorted to the Touchpoint Created Date. Cohorting to Touchpoint date lets us show a single date filter and makes all the metrics relative to when the touchpoint happened. 



## Dashboard Sections

### Overview 

The Overview section shows an overview of leads and contacts for a selected time period. This section deduplicates leads and contacts, counting each person only one time regardless of the number of campaigns they belong to. 

Key metrics are presented together with the live status of associated inquiries and MQLs of selected campaigns. 



### Performance by Campaign 

In the Performance by Campaign section, each unique person is counted as one per campaign, meaning that if the same person was in more than 1 campaign they would be counted in each. 

In addition to the key metrics per campaign, we’ve added additional fields related to the budgeted and actual spend of the campaign. These are pulled from the Salesforce Campaign object, in order to estimate the Pipeline to Campaign Spend Ratio (P2S). The SFDC campaign object gets its budget information either from directly entering the budget in SFDC or from a linked Allocadia line item through the integration from Allocadia to SFDC.


### Person Status Change 

This section of the dashboard shows the first status change of the person associated with a particular campaign after engaging with it. It is best used when the dashboard is filtered for a specific campaign, with the goal of understanding sales follow up on the campaign engagement. 

The bar chart on the right side shows the total breakdown of different status changes. The table on the left side provides additional information with the live status of those records, after that first change as well. 

In the table at the bottom  - Person Status Change [Post Campaign by Record ID], update details are provided on an individual record basis, such as who owns the lead, who performed the last action on the lead, as well as the time since the last sales engagement. 




## Filter Definitions 

- **Alternative_Segment** - Segment of the Person that interacted with the campaign defined using [waterfall logic from multiple fields](https://about.gitlab.com/handbook/marketing/strategy-performance/marketing-metrics/#alternative-method-for-account-demographics-fields-on-leads)
- **Alternative_Geo** - Geo Region of the person that interacted with the campaign defined using [waterfall logic from multiple fields](https://about.gitlab.com/handbook/marketing/strategy-performance/marketing-metrics/#alternative-method-for-account-demographics-fields-on-leads)
- **Bizible_Channel** - Marketing channel that the campaign belongs to
- **Budget Holder** - Filters for Campaign Owner based on Budget Holder field in SFDC/UTM Parameters
- **Campaign_Name** - Include only touchpoints from a specific campaign 
- **Campaign_Region** - Salesforce field on the Campaign 
- **Campaign_Sub_Region** - Salesforce field on the Campaign 
- **Campaign_Type** - Salesforce field on the Campaign 
- **Order_Type** - Filters for Person/Opportunity of particular order type
- **Account_Territory** - Account Territory of the Opportunity / Person where available. Currently this field is not populated for many leads, but it’s reliable on the opportunity object for SAOs / Pipeline / Closed Won metrics. 
- **Sales_Accepted_Date** - Date range during which opportunity became SAO (filters only opportunity level information
- **Touchpoint_Date_Range** - Date range during which marketing touchpoint occurred 

## Metrics

- **Touchpoints** - Number of unique persons that have engaged with specified campaigns
- **Inquiries** - Number of inquiries 
- **MQLs** - Number of touchpoints within those campaigns that have reached marketing qualified lead status.
- **SAOs [OC]** - Number of attributed Sales Accepted Opportunities where campaign touch was the last one before opportunity creation.
- **SAOs [Custom]** - Number of attributed Sales Accepted Opportunities using our custom multi touch attribution model 
- **Pipeline Net ARR [Custom]** - Pipeline attributed to a particular campaign using our custom multi touch attribution model
- **Closed Won Net ARR [Custom]** - Closed Won Net ARR attributed to a particular campaign using our custom multi touch attribution model
- **Influenced SAOs** - Number of SAOs on which marketing had at least a single touchpoint on.
- **Influenced Closed Won** - Number of Closed Won opportunities  on which marketing had at least a single touchpoint on.

## Default Setup and Filters

The Dashboard is set up by default to show the last 90 days of campaign engagement by touchpoint creation. 

For different teams within GitLab in order to assess their campaign performance it is recommended to filter for a budget holder of their team within the filters.

## Migration to Tableau

MS&A is building the same dashboard in Tableau. It will use the same base logic as the Sisense dashboard and while offering more drill down views. You can follow the development [through this epic](https://gitlab.com/groups/gitlab-com/marketing/-/epics/3848).








