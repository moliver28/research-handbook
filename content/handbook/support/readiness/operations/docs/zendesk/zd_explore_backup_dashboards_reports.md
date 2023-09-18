---
title: Zendesk Explore Dashboards and Reports Backup
description: Support Operations documentation page for Zendesk Explore Dashboards and Reports Backup
canonical_path: "/handbook/support/readiness/operations/docs/zendesk/zd_explore_backup_dashboards_reports.md"
---

## Key Review Reports

### Slide 7: Report 1: Ticket Volume Trend

aka Total Ticket Volume - Last 6 Months - Month YYYY

This is the main report in slide 7

- Dataset used: Support ( Tickets )
- Visualization type: Area
- Metric used: D_Count (Tickets), \*D_Count (SM Ticket Count)*\, \*D_Count (.com Ticket Count)*\, \*D_Count (L&R Ticket Count (w/o Internal))*\, \*D_Count (L&R Internal Ticket Count)*\ , \*D_Count (Ops Ticket Count)*\
- Rows:
    None
- Columns:
    1. Ticket Created (Year)
    1. Ticket Created (Month)
- Filters used:
    1. Created By GitLab Bot Agent*
    1. Ticket Form
- Custom Settings:
    1. (*) represents standard calculated metrics.
    1. Ticket Form filter should exclude `GitLab Incidents`, `Professional Services`, `Security`, `Billing`, `Accounts Receiveable/Refunds`, `Security Issue`.
    1. Created By GitLab Bot Agent is a custom attribute and should have included `Regular Ticket`.
    1. Ticket Created (Year) use Advanced Date Range settings i.e. "From beginning of" should have `First day of the previous year in second option i.e. for 2023 reports it should be 01/01/2022` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and have "Totals" show `count` inside area and top of area shows Total in Result Manipulation.
    1. Order of result manipulation should be `1-value filter`in Result Manipulation.

### Slide 7: Report 2: IK - New Tier Split

This is informative report in slide 7

- Dataset used: Support ( Tickets )
- Visualization type: Table
- Metric used: D_Count (Tickets)
- Rows:
    1. New Tier Split
- Columns:
    1. Ticket Created (Month)
- Filters used:
    1. Ticket Form
    1. Ticket Created (Year)
- Custom Settings:
    1. Ticket Form filter should exclude `GitLab Incidents`, `Professional Services`, `Security`, `Billing`, `Accounts Receiveable/Refunds`, `Security Issue`.
    1. New Tier Split is a custom attribute and should have excluded `Unknown`
    1. Ticket Created (Year) use Advanced Date Range settings i.e. "From beginning of" should have `2 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and have "Totals" show `count` inside table in Result Manipulation.
    1. Order of result manipulation should be `1-value filter`in Result Manipulation.


### Slide 8: Reports use combination of Sheets and Periscope so will be completed by Ilia

### Slide 9: Report 1: Month over Month Trend: SSAT (Customers)

This is main chart in Slide 9

- Dataset used: Support ( Tickets )
- Visualization type: Area
- Metric used: SUM (% Satisfaction score)
- Rows:
    None
- Columns:
    1. Ticket Solved (Year)
    1. Ticket Solved (Month)
- Filters used:
    1. Ticket Form
    1. EDU
    1. Has Plan Ticket Tags -SSAT (Incl L&R)
    1. Ticket ID
- Custom Settings:
    1. Ticket Form filter should include `L&R`, `Emergency`, `Other`, `SaaS`, `SaaS Account`, `Self-Managed`, `Emergencies`.
    1. EDU is a custom attribute and should have included `Not EDU`.
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and includes should have `Has Plan + L&R`.
    1. Ticket ID should exclude `279135`
    1. Ticket Solved (Year) use Advanced Date Range settings i.e. "From beginning of" should have `8 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and have "Totals" show `percent` on top of every month in Result Manipulation.
    1. It also shows a trend line which can be found in Chart Configuration menu.

### Slide 10: Report 1 & 2: Outdated Calc

### Slide 11: Report 1,2 (Same like Slide 10), 3 & 4: Outdated Calc

### Slide 12: Report 1,2 (Same like Slide 10 and 11): Outdated Calc

### Slide 12: Report 3: FRT SLAs MoM (4months) - Sep 2022 - No Plan

This is bottom main table in Slide 12

- Dataset used: Support ( SLAs )
- Visualization type: Table
- Metric used: D_Count (SLA Tickets), \*AVG (Achieved SLA % - Fix)*\
- Rows:
    1. Plan Tags - SaaS/SM
- Columns:
    1. SLA Update (Year)
    1. SLA Update (Month)
- Filters used:
    1. Ticket Form
    1. SLA Metric
    1. 2FA
- Custom Settings:
    1. Plan Tags - SaaS/SM use `Group` in Calculation menu to compute from `Plan Tags - Ticket Tags` and group Self Managed inlucdes `Basic`, `Premium`, `Ultimate` and SaaS includes `Bronze`, `Silver`, `Gold`.
    1. Ticket Form filter should include `L&R`, `Emergency`, `SaaS`, `SaaS Account`, `Self-Managed`, `Emergencies`.
    1. SLA Metric should have `First Reply Time` selected.
    1. 2FA is custom attribute and `Not 2FA` needs to be selected.
    1. SLA Update (Year) use Advanced Date Range settings i.e. "From beginning of" should have `4 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and have "Totals" inside `Sum of tickets` Tickets column and show `percent` on % SLA achieved column inside every month in Result Manipulation.
    1. Order of result manipulation should be `1-value filter`in Result Manipulation.

### Slide 13: Report 1: Outdated Calc

### Slide 13: Report 2: IK - FRT Median Per SLA Type Self-Managed - Table - Oct 2022

This is bottom main table in Slide 13

- Dataset used: Support ( SLAs )
- Visualization type: Table
- Metric used: MED (First Reply Time - Business Hours (hrs)), MED (First Reply Time (hrs))
- Rows:
    1. Priority by SLA
- Columns:
    1. SLA Update (Year)
    1. SLA Update (Month)
- Filters used:
    1. Ticket Form
    1. Has Plan - Ticket Tags
    1. Plan Tags - Ticket Tags
- Custom Settings:
    1. Priority by SLA use `Rename Values` in Calculation menu to compute from `Ticket Priority - Unsorted` and rename `High` to `4 Hours`, `Normal` to `8 Hours`, `Low` to `24 Hours` and `Urgent` to `30 mins` and check the `Sort attributes like time attributes`.
    1. Ticket Form filter should include `Self-Managed`, `Emergencies`.
    1. Has Plan - Ticket Tags is a custom attribute and setting of Includes have `Has Plan` checked.
    1. Plan Tags - Ticket Tags is a custom attribute and should have `Ultimate` and `Premium` selected.
    1. SLA Update (Year) use Simple Date Range settings for value `last month`.
    1. Make sure report should have "Sort" type `A-Z`.
    1. Order of result manipulation should be `1-value filter`in Result Manipulation.

### Slide 14: Report 1: Outdated Calc

### Slide 14: Report 2: IK - FRT Median Per SLA Type SaaS - Table - Oct 2022

This is bottom main table in Slide 14

- Dataset used: Support ( SLAs )
- Visualization type: Table
- Metric used: MED (First Reply Time - Business Hours (hrs)), MED (First Reply Time (hrs))
- Rows:
    1. Priority by SLA
- Columns:
    1. SLA Update (Year)
    1. SLA Update (Month)
- Filters used:
    1. Ticket Form
    1. Has Plan - Ticket Tags
    1. Plan Tags - Ticket Tags
    1. 2FA
- Custom Settings:
    1. Priority by SLA use `Rename Values` in Calculation menu to compute from `Ticket Priority - Unsorted` and rename `High` to `4 Hours`, `Normal` to `8 Hours`, `Low` to `24 Hours` and `Urgent` to `30 mins` and check the `Sort attributes like time attributes`.
    1. Ticket Form filter should include `SaaS`, `SaaS Account`, `Emergencies`.
    1. Has Plan - Ticket Tags is a custom attribute and setting of Includes have `Has Plan` checked.
    1. Plan Tags - Ticket Tags is a custom attribute and should have `Gold` and `Silver` selected.
    1. 2FA is custom attribute and `Not 2FA` needs to be selected.
    1. SLA Update (Year) use Simple Date Range settings for value `last month`.
    1. Make sure report should have "Sort" type `A-Z`.
    1. Order of result manipulation should be `1-value filter`in Result Manipulation.

### Slide 15: Report 1: Median FRT - Last 6 Months by Plan (self-managed) - Oct 2022

This is side main chart in Slide 15

- Dataset used: Support ( SLAs )
- Visualization type: Column
- Metric used: MED (First Reply Time - Business Hours (hrs))
- Rows:
    1. Plan Tags - SaaS/SM
- Columns:
    1. SLA Update (Year)
    1. SLA Update (Month)
- Filters used:
    1. Ticket Form
    1. Has Plan - Ticket Tags
    1. 2FA
- Custom Settings:
    1. Plan Tags - SaaS/SM use `Group` in Calculation menu to compute from `Plan Tags - Ticket Tags` and group Self Managed inlucdes `Basic`, `Premium`, `Ultimate` and SaaS includes `Bronze`, `Silver`, `Gold`.
    1. Rows should have `Plan Tags - SaaS/SM` selected with `Self - Managed`.
    1. Ticket Form filter should include `L&R`, `Emergency`, `Other`, `SaaS`, `SaaS Account`, `Self-Managed`, `Emergencies`.
    1. Has Plan - Ticket Tags is a custom attribute and setting of Includes have `Has Plan` checked.
    1. 2FA is custom attribute and `Not 2FA` needs to be selected.
    1. SLA Update (Year) use Advanced Date Range settings i.e. "From beginning of" should have `6 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and have "Totals" `Median of Hours` in Tickets column over every month in Result Manipulation.
    1. Order of result manipulation should be `1-value filter`in Result Manipulation.

### Slide 15: Report 2: Median FRT - Last 6 Months by Plan (.com) - Oct 2022

This is side main chart in Slide 15

- Dataset used: Support ( SLAs )
- Visualization type: Column
- Metric used: MED (First Reply Time - Business Hours (hrs))
- Rows:
    1. Plan Tags - SaaS/SM
- Columns:
    1. SLA Update (Year)
    1. SLA Update (Month)
- Filters used:
    1. Ticket Form
    1. Has Plan - Ticket Tags
    1. 2FA
- Custom Settings:
    1. Plan Tags - SaaS/SM use `Group` in Calculation menu to compute from `Plan Tags - Ticket Tags` and group Self Managed inlucdes `Basic`, `Premium`, `Ultimate` and SaaS includes `Bronze`, `Silver`, `Gold`.
    1. Rows should have `Plan Tags - SaaS/SM` selected with `SaaS`.
    1. Ticket Form filter should include `L&R`, `Emergency`, `Other`, `SaaS`, `SaaS Account`, `Self-Managed`, `Emergencies`.
    1. Has Plan - Ticket Tags is a custom attribute and setting of Includes have `Has Plan` checked.
    1. 2FA is custom attribute and `Not 2FA` needs to be selected.
    1. SLA Update (Year) use Advanced Date Range settings i.e. "From beginning of" should have `6 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and have "Totals" `Median of Hours` in Tickets column over every month in Result Manipulation.
    1. Order of result manipulation should be `1-value filter`in Result Manipulation.

### Slide 16: Report 1: Median FRT - Last 6 Months

This is main chart in Slide 16

- Dataset used: Support ( SLAs )
- Visualization type: Area
- Metric used: MED (First Reply Time - Business Hours (hrs))
- Rows:
    None
- Columns:
    1. SLA Update (Year)
    1. SLA Update (Month)
- Filters used:
    1. Ticket Form
    1. Has Plan Ticket Tags - SSAT (Inc L&R)
    1. 2FA
- Custom Settings:
    1. Ticket Form filter should include `L&R`, `Emergency`, `Other`, `SaaS`, `SaaS Account`, `Self-Managed`, `Emergencies`.
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and includes should have `Has Plan + L&R`.
    1. 2FA is custom attribute and `Not 2FA` needs to be selected.
    1. SLA Update (Year) use Advanced Date Range settings i.e. "From beginning of" should have `6 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and have "Totals" `Median of Hours` in area over every month in Result Manipulation.
    1. Order of result manipulation should be `1-value filter`in Result Manipulation.

### Slide 16: Report 2: Median FRT - Last Month Per Plan - Sep 2022 - No Plan

This is side small table in Slide 16

- Dataset used: Support ( SLAs )
- Visualization type: Table
- Metric used: MED (First Reply Time (hrs)), MED (First Reply Time - Business Hours (hrs))
- Rows:
    1. Plan Tags - SaaS/SM
- Columns:
    1. SLA Update (Month)
- Filters used:
    1. Ticket Form
    1. Has Plan Ticket Tags - SSAT (Inc L&R)
    1. 2FA
- Custom Settings:
    1. Plan Tags - SaaS/SM use `Group` in Calculation menu to compute from `Plan Tags - Ticket Tags` and group Self Managed inlucdes `Basic`, `Premium`, `Ultimate` and SaaS includes `Bronze`, `Silver`, `Gold`.
    1. Rows should have `Plan Tags - SaaS/SM` selected with both `SaaS` and `Self - Managed`.
    1. Ticket Form filter should include `L&R`, `Emergency`, `Other`, `SaaS`, `SaaS Account`, `Self-Managed`, `Emergencies`.
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and includes should have `Has Plan + L&R`.
    1. 2FA is custom attribute and `Not 2FA` needs to be selected.
    1. SLA Update (Month) use Simple Date Range settings for value `last month`.
    1. Make sure report should have "Sort" type `A-Z` and have "Totals" `Median of FRT Hours` and `Median of First Reply Time - Business Hours` in `FRT` and `FRT Business Hours` Tickets column and `Plans` will be showing in rows.
    1. Order of result manipulation should be `1-value filter`in Result Manipulation.

### Slide 17: Report 1 & 2: Outdated Calc.

### Slide 19: Report 1 & 2: Outdated Calc.

### Slide 19: Report 3: NRT SLAs MoM (4months) - Sep 2022

This is bottom small table in Slide 19

- Dataset used: Support ( SLAs )
- Visualization type: Table
- Metric used: D_Count (SLA targets), SUM (% Achieved SLA Targets)
- Rows:
    1. Plan Tags - SaaS/SM
- Columns:
    1. SlA UPdate (Year)
    1. SLA Update (Month)
- Filters used:
    1. Ticket Form
    1. SLA Metric
    1. SLA Update - Month
- Custom Settings:
    1. Plan Tags - SaaS/SM use `Group` in Calculation menu to compute from `Plan Tags - Ticket Tags` and group Self Managed inlucdes `Basic`, `Premium`, `Ultimate` and SaaS includes `Bronze`, `Silver`, `Gold`.
    1. Rows should have `Plan Tags - SaaS/SM` selected with both `SaaS` and `Self - Managed`.
    1. Ticket Form filter should include `L&R`, `Emergency`, `Other`, `SaaS`, `SaaS Account`, `Self-Managed`, `Emergencies`.
    1. SLA Metric filter should have `Next Reply Time` selected.
    1. SLA Update (Year) use Advanced Date Range settings i.e. "From beginning of" should have `4 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and have "Totals" `SLA Targets` and `Achieved SLA Percentage` in columns with months and `Plans` will be showing in rows.
    1. Order of result manipulation should be `1-value filter`in Result Manipulation.

### Slide 20: Report 1: Median NRT - Last 6 Months by Plan (self-managed) - Oct 2022

This is main side chart in Slide 20

- Dataset used: Support ( SLAs )
- Visualization type: Column
- Metric used: MED (SLA Metric Completion Time (hrs))
- Rows:
    1. Plan Tags - SaaS/SM
- Columns:
    1. SlA UPdate (Year)
    1. SLA Update (Month)
- Filters used:
    1. Ticket Form
    1. SLA Metric
    1. Has Plan Ticket Tags - SSAT (Inc L&R)
- Custom Settings:
    1. Plan Tags - SaaS/SM use `Group` in Calculation menu to compute from `Plan Tags - Ticket Tags` and group Self Managed inlucdes `Basic`, `Premium`, `Ultimate` and SaaS includes `Bronze`, `Silver`, `Gold`.
    1. Rows should have `Plan Tags - SaaS/SM` selected with  `Self - Managed` only.
    1. Ticket Form filter should include `L&R`, `Emergency`, `Other`, `SaaS`, `SaaS Account`, `Self-Managed`, `Emergencies`.
    1. SLA Metric filter should have `Next Reply Time` selected.
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and includes should have `Has Plan + L&R`.
    1. SLA Update (Year) use Advanced Date Range settings i.e. "From beginning of" should have `6 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and have "Totals of Median" `SLA Metric Completion Time` in Tickets column over every month in Result Manipulation.
    1. Order of result manipulation should be `1-value filter`in Result Manipulation.

### Slide 20: Report 2: Median NRT - Last 6 Months by Plan (.com) - Oct 2022

This is main side chart in Slide 20

- Dataset used: Support ( SLAs )
- Visualization type: Column
- Metric used: MED (SLA Metric Completion Time (hrs))
- Rows:
    1. Plan Tags - SaaS/SM
- Columns:
    1. SlA UPdate (Year)
    1. SLA Update (Month)
- Filters used:
    1. Ticket Form
    1. SLA Metric
    1. Has Plan Ticket Tags - SSAT (Inc L&R)
- Custom Settings:
    1. Plan Tags - SaaS/SM use `Group` in Calculation menu to compute from `Plan Tags - Ticket Tags` and group Self Managed inlucdes `Basic`, `Premium`, `Ultimate` and SaaS includes `Bronze`, `Silver`, `Gold`.
    1. Rows should have `Plan Tags - SaaS/SM` selected with  `SaaS` only.
    1. Ticket Form filter should include `L&R`, `Emergency`, `Other`, `SaaS`, `SaaS Account`, `Self-Managed`, `Emergencies`.
    1. SLA Metric filter should have `Next Reply Time` selected.
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and includes should have `Has Plan + L&R`.
    1. SLA Update (Year) use Advanced Date Range settings i.e. "From beginning of" should have `6 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and have "Totals of Median" `SLA Metric Completion Time` in Tickets column over every month in Result Manipulation.
    1. Order of result manipulation should be `1-value filter`in Result Manipulation.

## Slide 21: Report 1: Median NRT - Last 6 Months - Oct 2022

This is main chart in Slide 21

- Dataset used: Support ( SLAs )
- Visualization type: Area
- Metric used: MED (SLA Metric Completion Time (hrs))
- Rows:
    None
- Columns:
    1. SLA Update (Year)
    1. SLA Update (Month)
- Filters used:
    1. Ticket Form
    1. Has Plan Ticket Tags - SSAT (Inc L&R)
    1. SLA Metric
- Custom Settings:
    1. Ticket Form filter should include `L&R`, `Emergency`, `Other`, `SaaS`, `SaaS Account`, `Self-Managed`, `Emergencies`.
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and includes should have `Has Plan + L&R`.
    1. SLA Metric filter should have `Next Reply Time` selected.
    1. SLA Update (Year) use Advanced Date Range settings i.e. "From beginning of" should have `6 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and have "Totals" have "Totals of Median" `SLA Metric Completion Time` in Tickets area over every month in Result Manipulation.
    1. Order of result manipulation should be `1-value filter`in Result Manipulation.

### Slide 21: Report 2: Median FRT - Last Month Per Plan - Sep 2022 - No Plan

This is side small table in Slide 22

- Dataset used: Support ( SLAs )
- Visualization type: Table
- Metric used: MED (SLA Metric Completion Time (hrs))
- Rows:
    1. Plan Tags - SaaS/SM
- Columns:
    1. SLA Update (Year)
    1. SLA Update (Month)
- Filters used:
    1. Ticket Form
    1. Has Plan Ticket Tags - SSAT (Inc L&R)
    1. SLA Metric
- Custom Settings:
    1. Plan Tags - SaaS/SM use `Group` in Calculation menu to compute from `Plan Tags - Ticket Tags` and group Self Managed inlucdes `Basic`, `Premium`, `Ultimate` and SaaS includes `Bronze`, `Silver`, `Gold`.
    1. Rows should have `Plan Tags - SaaS/SM` selected with both `SaaS` and `Self - Managed`.
    1. Ticket Form filter should include `L&R`, `Emergency`, `Other`, `SaaS`, `SaaS Account`, `Self-Managed`, `Emergencies`.
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and includes should have `Has Plan + L&R`.
    1. SLA Metric filter should have `Next Reply Time` selected.
    1. SLA Update (Year) use Simple Date Range settings for value `last month`.
    1. Make sure report should have "Sort" type `A-Z` and have "Totals" `Median of FRT Hours` and `Median of First Reply Time - Business Hours` in `FRT` and `FRT Business Hours` Tickets column and `Plans` will be showing in rows.
    1. Order of result manipulation should be `1-value filter`in Result Manipulation.

### Slide 22: Report 1: IK - MED FRT L&R 6 Months

This is left side top chart in slide 22

- Dataset used: Support ( SLAs )
- Visualization type: Area
- Metric used: MED (First Reply Time (hrs)), MED (First Reply Time - Business Hours (hrs))
- Rows:
    None
- Columns:
    1. SLA Update (Year)
    1. SLA Update (Month)
- Filters used:
    1. Ticket Form
- Custom Settings:
    1. Ticket Form filter should include `L&R`.
    1. SLA Update (Year) use Advanced Date Range settings i.e. "From beginning of" should have `6 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and have "Totals" `Median of Hours` in area over every month in Result Manipulation.
    1. Order of result manipulation should be `1-value filter`in Result Manipulation.

### Slide 22: Report 2: Outdated Calc

### Slide 22: Report 3: IK - Total Incoming Tickets For L&R - 6 Months

This is left side bottom chart in slide 22

- Dataset used: Updates History
- Visualization type: Column
- Metric used: Count (Tickets Created)
- Rows:
    1. Ticket Priority
- Columns:
    1. Ticket Created - Year
    1. Ticket Created - Month
- Filters used:
    1. Ticket Form
- Custom Settings:
    1. Ticket Form filter should include `L&R`.
    1. Ticket Created - Year use Advanced Date Range settings i.e. "From beginning of" should have `6 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z`.

### Slide 22: Report 4: Incorrect Calculated Metric i.e. RWT Minus On-hold

### lide 23: Report 1: Incorrect Calculated Metric i.e. RWT Minus On-hold

### Slide 23: Report 2: Incorrect Calculated Metric i.e. TTR

### Slide 24: Report 1: IK - Reduced Effort Free Ratio

This is main side chart in Slide 24

- Dataset used: Support ( Tickets)
- Visualization type: Line
- Metric used: \*D_Count (Free Reduced Effort - May/2023)*\, \*D_Count (All Free)*\, \*SUM (Reduction Effort %)*\
- Rows:
    None
- Columns:
    1. Ticket Created - Year
    1. Ticket Created - Month
- Filters used:
    1. Ticket Form
    1. Created By Agent
    1. Plan - Support costs adjusted 2021/10
    1. Custom plan remove
    1. Validation License Failed
    1. Ticket Organization Name
- Custom Settings:
    1. Free Reduced Effort - May/2023 is a custom Metric.
    1. All Free is a custom metric.
    1. Reduction Effort % is a custom metric and use Dual Axis in the Metrics panel.
    1. Plan - Support costs adjusted 2021/10 is a custom attribute and should have selected `Core`, `Free Account`, `Free SaaS`.
    1. Created By Agent is a custom attribute and should have selected `Not Created By Agent`.
    1. Custom plan remove is a custom attribute and should have selected `All Else`.
    1. Validation License Failed is a custom attribute and should have selected `All Else`.
    1. Ticket Form filter should include `SaaS`, `SaaS Account`, `Self-Managed`.
    1. Ticket Created - Year use Advanced Date Range settings i.e. "From beginning of" should have `6/1/2020` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and have "Totals of Count" shows in lines over every month in Result Manipulation.
    1. Order of result manipulation should be `1-value filter`in Result Manipulation.

### Slide 25: Report 1: IK - Top 20 SSAT

This is left side top chart in slide 25. **USE Self Manged or SAAS in Ticket Form filter to create another report i.e. Report 3**

- Dataset used: Support (Tickets)
- Visualization type: Column
- Metric used: Sum (%Satisfaction Score), D_Count(Rated Satisfaction Tickets)
- Rows:
    None
- Columns:
    1. Ticket Solved - Year
    1. Ticket Solved - Month
- Filters used:
    1. Ticket Form
    1. Ticket Organization
- Custom Settings:
    1. D_Count(Rated Satisfaction Tickets) is using Dual axis in the Metrics panel.
    1. Ticket Form filter should include `L&R`, `Emergency`, `SaaS`, `SaaS Account`, `Self-Managed`, `Emergencies`.
    1. Ticket Organization should be selected with Organization having top 20 ARR.
    1. Ticket Solved - Year use Advanced Date Range settings i.e. "From beginning of" should have `6 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and "Totals of Count" shows in percentage in columns over every month in Result Manipulation.
    1. Order of result manipulation should be `1-value filter`in Result Manipulation.

### Slide 25: Report 2: IK - Top 20 FRT

This is left side bottom chart in Slide 25. **USE Self Manged or SAAS in Ticket Form filter to create another report i.e. Report 4**

- Dataset used: Support ( SLAs )
- Visualization type: Column
- Metric used: SUM (% Achieved SLA tickets), D_Count (SLA Tickets)
- Rows:
    None
- Columns:
    1. SLA Update - Year
    1. SLA Update - Month
- Filters used:
    1. Ticket Form
    1. SLA Metric
    1. Ticket Organization
- Custom Settings:
    1. D_Count(SLA Tickets) is using Dual axis in the Metrics panel.
    1. Ticket Form filter should include `L&R`, `Emergency`, `SaaS`, `SaaS Account`, `Self-Managed`, `Emergencies`.
    1. Ticket Organization should be selected with Organization having top 20 ARR.
    1. SLA Metric should be selected as `First Reply Time`.
    1. SLA Update - Year use Advanced Date Range settings i.e. "From beginning of" should have `6 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and "Totals of Count" shows in percentage in columns over every month in Result Manipulation.
    1. Order of result manipulation should be `1-value filter`in Result Manipulation.

### Slide 26: Report 1: IK - Linked Total

This is top table in Slide 26.

- Dataset used: Support ( Tickets )
- Visualization type: Table
- Metric used: D_Count (Solved Tickets), \*D_Count (Total Linked)*\, \*Count (% Total Linked)*\, \*Count (% Linked Docs)*\, \*D_Count (Linked Docs)*\, \*Count (% Linked MR)*\, \*D_Count (Linked MR)*\, \*Count (% Linked Issues)*\, \*D_Count (Linked Issues)*\, \*Count (% Linked HB)*\, \*D_Count (Linked Handbook)*\
- Rows:
    1. Ticket Solved - Year
    1. Ticket Solved - Month
- Columns:
    None
- Filters used:
    1. Duplicate Tickets
    1. Ticket Form
    1. Has Plan - Ticket Tag
    1. Created by Agent
- Custom Settings:
    1. `Total Linked`, `% Total Linked`, `% Linked Docs`, `Linked Docs`, `% Linked MR`, `Linked MR`, `% Linked Issues`, `Linked Issues`, `% Linked HB` and `Linked Handbook` are custom mertrics.
    1. Duplicate Tickets is a custom attribute and should have `Not Duplicate` selected.
    1. Ticket Form filter should include `Emergency`, `SaaS`, `SaaS Account`, `Self-Managed`, `Other`.
    1. Has Plan - Ticket Tags is a custom attribute and setting of Includes have `Has Plan` checked.
    1. Created By Agent is a custom attribute and should have selected `Not Created By Agent`.
    1. Ticket Solved - Year use Advanced Date Range settings i.e. "From beginning of" should have `3 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z`.

### Slide 26: Report 2: IK - Linked Docs

This is bottom left chart in Slide 26.

- Dataset used: Support ( Tickets )
- Visualization type: Column
- Metric used: \* SUM (% Linked Docs)*\
- Rows:
    None
- Columns:
    1. Ticket Solved - Year
    1. Ticket Solved - Month
- Filters used:
    1. Duplicate Tickets
    1. Ticket Form
    1. Has Plan - Ticket Tag
- Custom Settings:
    1. % Linked Docs is a custom mertric.
    1. Duplicate Tickets is a custom attribute and should have `Not Duplicate` selected.
    1. Ticket Form filter should include `Emergency`, `SaaS`, `SaaS Account`, `Self-Managed`, `Other`.
    1. Has Plan - Ticket Tags is a custom attribute and setting of Includes have `Has Plan` checked.
    1. Ticket Solved - Year use Advanced Date Range settings i.e. "From beginning of" should have `3 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and and "SUM" shows in percentage in columns inside every month in Result Manipulation.
    1. Report has a `linear` trend line in Chart configuration.

### Slide 26: Report 3: IK - Linked Issues

This is bottom middle chart in Slide 26.

- Dataset used: Support ( Tickets )
- Visualization type: Column
- Metric used: \* SUM (% Linked Issues)*\
- Rows:
    None
- Columns:
    1. Ticket Solved - Year
    1. Ticket Solved - Month
- Filters used:
    1. Duplicate Tickets
    1. Ticket Form
    1. Has Plan - Ticket Tag
- Custom Settings:
    1. % Linked Issues is a custom mertric.
    1. Duplicate Tickets is a custom attribute and should have `Not Duplicate` selected.
    1. Ticket Form filter should include `Emergency`, `SaaS`, `SaaS Account`, `Self-Managed`, `Other`.
    1. Has Plan - Ticket Tags is a custom attribute and setting of Includes have `Has Plan` checked.
    1. Ticket Solved - Year use Advanced Date Range settings i.e. "From beginning of" should have `3 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and and "SUM" shows in percentage in columns inside every month in Result Manipulation.
    1. Report has a `linear` trend line in Chart configuration.

### Slide 26: Report 4: IK - Linked MR's

This is bottom middle chart in Slide 26.

- Dataset used: Support ( Tickets )
- Visualization type: Column
- Metric used: \* SUM (% Linked MR)*\
- Rows:
    None
- Columns:
    1. Ticket Solved - Year
    1. Ticket Solved - Month
- Filters used:
    1. Duplicate Tickets
    1. Ticket Form
    1. Has Plan - Ticket Tag
- Custom Settings:
    1. % Linked MR is a custom mertric.
    1. Duplicate Tickets is a custom attribute and should have `Not Duplicate` selected.
    1. Ticket Form filter should include `Emergency`, `SaaS`, `SaaS Account`, `Self-Managed`, `Other`.
    1. Has Plan - Ticket Tags is a custom attribute and setting of Includes have `Has Plan` checked.
    1. Ticket Solved - Year use Advanced Date Range settings i.e. "From beginning of" should have `3 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and and "SUM" shows in percentage in columns inside every month in Result Manipulation.
    1. Report has a `linear` trend line in Chart configuration.

### Slide 26: Report 4: IK - Linked HB's

This is bottom right chart in Slide 26.

- Dataset used: Support ( Tickets )
- Visualization type: Column
- Metric used: \* SUM (% Linked HB)*\
- Rows:
    None
- Columns:
    1. Ticket Solved - Year
    1. Ticket Solved - Month
- Filters used:
    1. Duplicate Tickets
    1. Ticket Form
    1. Has Plan - Ticket Tag
- Custom Settings:
    1. % Linked HB is a custom mertric.
    1. Duplicate Tickets is a custom attribute and should have `Not Duplicate` selected.
    1. Ticket Form filter should include `Emergency`, `SaaS`, `SaaS Account`, `Self-Managed`, `Other`.
    1. Has Plan - Ticket Tags is a custom attribute and setting of Includes have `Has Plan` checked.
    1. Ticket Solved - Year use Advanced Date Range settings i.e. "From beginning of" should have `3 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and and "SUM" shows in percentage in columns inside every month in Result Manipulation.
    1. Report has a `linear` trend line in Chart configuration.

### Slide 27 is Federal US Slide so the access to Federal Explore is not possible.



## Dashboards

### Support Metrics

#### Tabs

1. Incoming:
    - Widgets used:
        None
    - Reports used:
        1. Total Incoming Tickets For Support
        1. IK - Total Incoming Tickets Per Form
        1. Intake Per Hour Last 12 Months - All Plans
        1. Intake Per Hour Last 12 Months SM - All Plans
        1. Intake Per Hour Last 12 Months .COM - All Plans
        1. Prefered Region last 6 / 3 Months
1. SLA :
    - Widgets used:
        - Time Filter widget
    - Reports used:
        1. FRT SLA % Achieved for .COM/SM
        1. FRT MED .COM/SM
        1. NRT SLA % Achieved for .COM/SM
        1. NRT MED .COM/SM
        1. FRT SLA % Achieved for SM
        1. NRT SLA % Achieved for SM
        1. FRT SLA % Achieved for .COM
        1. NRT SLA % Achieved for .COM
        1. Requester Wait Time .COM/SM/L&R
        1. NRT Achieved per Preferred Region
        1. FRT Achieved per Preferred Region
        1. FRT Per Priority .COM/SM
        1. NRT Per Priority .COM/SM
1. SLA #2 :
    - Widgets used:
        - Time Filter widget
    - Reports used:
        1. Median TTR SaaS/SM
        1. Median TTR SM
        1. Median TTR SaaS
        1. Requester Wait Time SM
        1. Requester Wait Time SaaS
        1. Support Solved/Closed Tickets
        1. One-Touch Solved Per Ticket Form Ratio (w/o Free)
1. SSAT :
    - Widgets used:
        - Time Filter widget
    - Reports used:
        1. SSAT Distribution For Combined .COM/SM
        1. SSAT Distribution .COM
        1. SSAT Distribution SM
        1. Poor SSAT Reasons Breakdown for .COM
        1. Poor SSAT Reasons Breakdown for SM
        1. SSAT Volume 3 Months .COM
        1. SSAT Volume 3 Months SM
        1. SSAT% For Tickets with Issue Links
        1. Survery Responded 12 Months
1. Doc:
    - Widgets used:
        - None
    - Reports used:
        1. Linked Total
        1. Linked Docs
        1. Linked Issues
        1. Linked MR's
        1. Linked HB's
        1. Linked Total - Private
        1. No Problem Type
1. Assignment:
    - Widgets used:
        - None
    - Reports used:
        1. Assigned vs Unassigned
        1. Unassigned Tickets per Ticket Form
        1. Unassigned vs Assigned Not New Multi-Touch Ticket Ratio
        1. Public comments on Assigned tickets ratio in % Per Region Weekly
        1. Total Support Open Tickets Per Ticket Form
        1. Unassigned Open Tickets Per Ticket Form
        1. Public comments on Unassigned vs Assigned Tickets Per Team
1. Emergency:
    - Widgets used:
        - None
    - Reports used:
        1. Emergency Tickets - Intake Per Month
        1. Emergency Tickets - Weekend Opened Worldwide
        1. Emergency NRT
        1. Emergency FRT
        1. Opened on Weekend Breached
1. Region:
    - Widgets used:
        - None
    - Reports used:
        1. Regional Updates Per Hour Last 6 Months
        1. US Update per preferred region last 6 Months
        1. EMEA Update per preferred region last 6 Months
        1. APAC Update per preferred region last 6 Months
        1. SLA % Breached Per Hour Last 4 Months
        1. SLA Events Breached Per Hour Last 4 Months
        1. SLA % Breached Per Hour Last 4 Months .COM
        1. SLA Events Breached Per Hour Last 4 Months .COM
        1. SLA % Breached Per Hour Last 4 Months SM
        1. SLA Events Breached Per Hour Last 4 Months SM
1. SWIR:
    - Widgets used:
        - None
    - Reports used:
        1. SSAT
        1. FRT
        1. NRT
        1. Volume
        1. Week Over Week SM SLA
        1. LK - Total FRT SLA - Last 4 Weeks + Priority
        1. FRT SLA For SM - Last 3 Weeks
        1. FRT SLA For SM - This Week
        1. NRT SLO For SM - Last 3 Weeks
        1. NRT SLO For SM - This Week
        1. SSAT For SM - Last 3 Weeks
        1. SSAT For SM - This Week
        1. SSAT Volume 4 Weeks SM
        1. Requester Wait Time SM
        1. SM Incoming Tickets For Support Per Week
        1. Week Over Week .COM SLA
        1. FRT SLA For .COM - Last 3 Weeks
        1. FRT SLA For .COM - This Week
        1. NRT SLO For .COM - Last 3 Weeks
        1. NRT SLO For .COM - This Week
        1. SSAT For .COM - Last 3 Weeks
        1. SSAT For .COM - This Week
        1. SSAT Volume 4 Weeks .com
        1. Requester Wait Time .COM
        1. .COM Incoming Tickets For Support Per Week
        1. Emergency Tickets - Weekend Opened Worldwide Per Week
1. SWIR #2:
    - Widgets used:
        - None
    - Reports used:
        1. Week Over Week L&R SLA
        1. FRT SLA For L&R - Last 3 Weeks
        1. FRT SLA For L&R - This Week
        1. NRT SLA For L&R - Last 3 Weeks
        1. NRT SLA For L&R - This Week
        1. SSAT For L&R - Last 3 Weeks
        1. SSAT For L&R - This Week
        1. SSAT Distribution 4 Weeks L&R - Table
        1. Requester Wait Time L&R
        1. L&R Incoming Tickets For Support Per Week
1. Base:
    - Widgets used:
        - None
    - Reports used:
        1. Baseline comments SM
        1. Baseline comments .COM
        1. Baseline comments L&R
1. L&R:
    - Widgets used:
        - Time Filter widget
    - Reports used:
        1. L&R No Assignee
        1. FRT SLA For L&R
        1. NRT SLA For L&R
        1. SSAT 12 Months L&R - All Plans
        1. L&R Incoming Volume Per Week
        1. L&R Incoming Volume Per Day
        1. Total Incoming Tickets For L&R All Plans
        1. L&R Escalated to Sales AVG Time to First Solve
        1. L&R No Transaction Type Per Month
        1. Intake Per Hour Last 12 Months L&R - All Plans
        1. Poor CSAT For L&R Breakdown per Month - All Plans
        1. Time To Resolve Escalated to Sales
1. Free:
    - Widgets used:
        - None
    - Reports used:
        1. Free Reduced Effort - May/2023 and All Free
        1. Intake Last 12 Months Free Plans - Per Ticket Form
1. Security:
    - Widgets used:
        - None
    - Reports used:
        1. Total Incoming Tickets For Security
        1. SSAT Distribution 12 Month Security
        1. Requester Wait Time Security
1. Ops:
    - Widgets used:
        - None
    - Reports used:
        1. LK - Ops SSAT - Last 4 Weeks
        1. LK - Ops Total FRT SLA - Last 4 Weeks
        1. LK - Ops Total NRT SLA - Last 4 Weeks
        1. LK - Ops Incoming Tickets For Support Per Week
        1. LK - Incoming Ops

## Reports

### Total Incoming Tickets For Support

aka IK - Total Incoming Tickets For Support #2

- Dataset used: Support ( Tickets )
- Visualization type: Column
- Metric used: Count (Tickets)
- Rows:
    1. Ticket Priority
- Columns:
    1. Ticket Created (Year)
    1. Ticket Created (Month)
- Filters used:
    1. Ticket Form
    1. Has Plan Ticket Tags -SSAT (Incl L&R)
- Custom Settings:
    1. Ticket Form filter should exclude Security, Billing, Accounts Receiveable/Refunds.
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and setting of Includes have `Has Plan + L&R` checked.
    1. Ticket Created (Year) use Advanced Date Range settings i.e. "From beginning of" should have `13 months in the past` to "The end of" should have `all history`.
    1. Make sure report should have "Sort" type `A-Z` and have "Totals" show percentage inside bars and top of bars shows Total in Result Manipulation.

### IK - Total Incoming Tickets Per Form

aka IK - Total Incoming Tickets Per Groups #3

- Dataset used: Support ( Tickets )
- Visualization type: Column
- Metric used: D_Count (Tickets)
- Rows:
    1. Ticket Priority
- Columns:
    1. Ticket Created (Year)
    1. Ticket Created (Month)
- Filters used:
    1. Has Plan Ticket Tags -SSAT (Incl L&R)
- Custom Settings:
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and setting of Includes have `Has Plan + L&R` checked.
    1. Ticket Created (Year) use Advanced Date Range settings i.e. "From beginning of" should have `12 months in the past` to "The end of" should have `all history`
    1. Make sure report should have "Sort" type `A-Z` and have "Totals" show percentage on rows inside bars in Result Manipulation.

### Intake Per Hour Last 12 Months - All Plans

aka IK - H/N/L Tickets - Intake Per Hour Last 12 Months

- Dataset used: Support ( Tickets )
- Visualization type: Column
- Metric used: Count (Tickets)
- Rows:
    1. Ticket Priority  
    (Includes only Normal, Low, High)
- Columns:
    1. Ticket Created (Hour)  
    (Includes  Check all even DESELECT ALL as well)
- Filters used:
    1. Ticket Form
    1. Has Plan Ticket Tags -SSAT (Incl L&R)
- Custom Settings:
    1. Ticket Form filter should exclude Security, Billing, Accounts Receiveable/Refunds.
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and setting of Includes have `Has Plan + L&R` checked.
    1. Ticket Created (Year) filter was used and it  use Advanced Date Range settings i.e. "From beginning of" should have `12 months in the past` to "The end of" should have `all history`.
    1. Make sure report should have "Sort" type `A-Z` and have "Totals" at top of bars  in Result Manipulation.

### Intake Per Hour Last 12 Months SM - All Plans

aka IK - H/N/L Tickets - Intake Per Hour Last 12 Months SM

- Dataset used: Support ( Tickets )
- Visualization type: Column
- Metric used: Count (Tickets)
- Rows:
    1. Ticket Priority  
        (Includes only Normal, Low, High)
- Columns:
    1. Ticket Created (Hour)  
        (Includes  Check all even DESELECT ALL as well)
- Filters used:
    1. Ticket Form
    1. Has Plan Ticket Tags -SSAT (Incl L&R)
- Custom Settings:
    1. Ticket Form filter should include only `Self-Managed`.
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and setting of Includes have `Has Plan + L&R` checked.
    1. Ticket Created (Year) filter was used and it  use Advanced Date Range settings i.e. "From beginning of" should have `12 months in the past` to "The end of" should have `all history`.
    1. Make sure report should have "Sort" type `A-Z` and sum is top on every bar in Result Manipulation.

### Intake Per Hour Last 12 Months .COM - All Plans

aka IK - H/N/L Tickets - Intake Per Hour Last 12 Months .COM

- Dataset used: Support ( Tickets )
- Visualization type: Column
- Metric used: Count (Tickets)
- Rows:
    1. Ticket Priority  
    (Includes only Normal, Low, High)
- Columns:
    1. Ticket Created (Hour)  
    (Includes  Check all even DESELECT ALL as well)
- Filters used:
    1. Ticket Form
    1. Has Plan Ticket Tags -SSAT (Incl L&R)
- Custom Settings:
    1. Ticket Form filter should include `SaaS` and `SaaS Acocunt`.
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and setting of Includes have `Has Plan + L&R` checked.
    1. Ticket Created (Year) filter was used and it  use Advanced Date Range settings i.e. "From beginning of" should have `12 months in the past` to "The end of" should have `all history`.
    1. Make sure report should have "Sort" type `A-Z` and sum is top on every bar in Result Manipulation.

### Prefered Region last 6 / 3 Months

aka IK - Prefered Region last 6 / 3 Months

- Dataset used: Support ( Tickets )
- Visualization type: Column
- Metrics used: D_Count (Tickets Created - Last 6 months) and D_Count (Tickets Created - Last 3 months)
- Rows:
    None
- Columns:
    1. Preferred Region for Support  
    (Includes All Regions, Americas USA, Asia Pacific and Europe Middle East Africa)
- Filters used:
    1. Ticket Form
    1. Has Plan Ticket Tags -SSAT (Incl L&R)
- Custom Settings:
    1. Ticket Form filter should include `SaaS`, `SaaS Acocunt`, `Self-Managed` and `L&R`.
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and has no value to select.
    1. Make sure report should have "Sort" type `A-Z` and "Total" show `sum` on top on every bar in Result Manipulation.

### FRT SLA % Achieved for .COM/SM

aka IK - FRT SLA For .com/SM

- Dataset used: Support ( SLAs )
- Visualization type: Column
- Metric used: SUM (% Achieved SLA Targets)
- Rows:
    None
- Columns:
    1. SLA Update - Year
    1. SLA Update - Month
- Filters used:
    1. SLA Metric
    1. Ticket Form
    1. 2FA
    1. Has Plan - Ticket Tags
- Custom Settings:
    1. SLA Metric includes only `First Reply Time`.
    1. Ticket Form filter should include `SaaS`, `SaaS Acocunt`, `Self-Managed`.
    1. 2FA is custom attribute and `Not 2FA` needs to be selected.
    1. Has Plan - Ticket Tags is a custom attribute and setting of Includes have `Has Plan` checked.
    1. SLA Update - Year filter was used and it use Advanced Date Range settings i.e. "From beginning of" should have `13 months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and Percentage is shown inside every bar in Result Manipulation.
    1. It also shows a trend line which can be found in Chart Configuration menu.

### FRT MED .COM/SM

aka IK - FRT MED .COM/SM w/o License

- Dataset used: Support ( SLAs )
- Visualization type: Column
- Metric used: MED (First reply time (hrs))
- Rows:
    None
- Columns:
    1. SLA Update - Year
    1. SLA Update - Month
- Filters used:
    1. Ticket Form
    1. 2FA
    1. Has Plan - Ticket Tags
- Custom Settings:
    1. SLA Metric includes only `First Reply Time`.
    1. Ticket Form filter should include `SaaS`, `SaaS Acocunt`, `Self-Managed`.
    1. 2FA is custom attribute and `Not 2FA` needs to be selected.
    1. Has Plan - Ticket Tags is a custom attribute and setting of Includes have `Has Plan` checked.
    1. SLA Update - Year filter was used and it use Advanced Date Range settings i.e. "From beginning of" should have `13 months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and Percentage is shown inside every bar in Result Manipulation.
    1. It also shows a trend line which can be found in Chart Configuration menu.

### NRT SLA % Achieved for .COM/SM

aka IK - NRT SLA for .com/SM

- Dataset used: Support ( SLAs )
- Visualization type: Column
- Metric used: Sum (% Achieved SLA Targets)
- Rows:
    None
- Columns:
    1. SLA Update - Year
    1. SLA Update - Month
- Filters used:
    1. GitLab Plan
    1. Ticket Form
    1. Has Plan - Ticket Tags
- Custom Settings:
    1. GitLab Plan filter should include `Basic`, `Bronze`, `Gold`, `Premium`, `Silver`, `Ultimate`.
    1. Ticket Form filter should include `SaaS`, `SaaS Acocunt`, `Self-Managed`.
    1. Has Plan - Ticket Tags is a custom attribute and setting of Includes have `Has Plan` checked.
    1. SLA Update - Year filter was used and it use Advanced Date Range settings i.e. "From beginning of" should have `13 months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and Percentage is shown inside every bar in Result Manipulation.
    1. It also shows a trend line which can be found in Chart Configuration menu.


### FRT SLA % Achieved For .COM - Outdated Calculations

### NRT SLA % Achieved For .COM - Outdated Calculations

### Requester Wait Time .COM/SM/L&R - Custom Metric Error (RWT Minus On-hold)

### NRT Achieved Per Preferred Region

aka IK - NRT Achieved Per Preferred Region - Test

- Dataset used: Support ( SLAs )
- Visualization type: Table
- Metric used: SUM (% Achieved SLA Tickets)
- Rows:
    1. Preferred Region for Support
- Columns:
    1. SLA Update (Month)
- Filters used:
    1. Ticket Form
    1. Has Plan - Ticket Tags
    1. SLA Metric
- Custom Settings:
    1. Preferred Region for Support includes `All Regions`, `Americas, USA`, `Europe, Middle East, Africa`, `Asia Pacific`.
    1. Ticket Form filter excludes `Security`, `Account Receivable/Refunds`.
    1. Has Plan - Ticket Tags is a custom attribute and includes should have `Has Plan`.
    1. SLA Metric filter should have `Next Reply Time` selected.
    1. SLA Update (Month) was used and it use Advanced Date Range settings i.e. "From beginning of" should have `3 months in the past` to "The end of" should have `All History`.
    1. Make sure report should have "Sort" type `A-Z` and have "Totals" showing in `Percentage` in every month on each cell.

### FRT Achieved Per Preferred Region

aka IK - FRT Achieved Per Preferred Region - Test

- Dataset used: Support ( SLAs )
- Visualization type: Table
- Metric used: Sum (% Achieved SLA Tickets)
- Rows:
    1. Preferred Region for Support
- Columns:
    1. SLA Update (Month)
- Filters used:
    1. Ticket Form
    1. Has Plan - Ticket Tags
    1. SLA Metric
    1. 2FA
- Custom Settings:
    1. Preferred Region for Support includes `All Regions`, `Americas, USA`, `Europe, Middle East, Africa`, `Asia Pacific`.
    1. Ticket Form filter excludes `Security`, `Account Receivable/Refunds`.
    1. Has Plan - Ticket Tags is a custom attribute and includes should have `Has Plan`.
    1. SLA Metric filter should have `First Reply Time` selected.
    1. 2FA is custom attribute and `Not 2FA` needs to be selected.
    1. SLA Update (Month) was used and it use Advanced Date Range settings i.e. "From beginning of" should have `3 months in the past` to "The end of" should have `1 months in the past`.
    1. Make sure report should have "Sort" type `A-Z` and have "Totals" showing in `Percentage` in every month on each cell.


## FRT Per Priority .COM/SM

aka IK - Total Breached FRT % Month

- Dataset used: Support ( SLAs )
- Visualization type: Column
- Metric used: Sum (% Breached SLA Tickets), Sum (% Achieved SLA Targets)
- Rows:
    1. Ticket Priority
        (Includes only Normal, Low, High)
- Columns:
    1. SLA Update - Year
    1. SLA Update - Month
- Filters used:
    1. SLA Metric
    1. Ticket Form
    1. 2FA
    1. Has Plan - Ticket Tags
- Custom Settings:
    1. SLA Metric includes only `First Reply Time`.
    1. Ticket Form filter excludes `Security`, `Account Receivable/Refunds`, `L&R`.
    1. 2FA is custom attribute and `Not 2FA` needs to be selected.
    1. Has Plan - Ticket Tags is a custom attribute and setting of Includes have `Has Plan` checked.
    1. SLA Update - Year filter was used and it use Advanced Date Range settings i.e. "From beginning of" should have `13 months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and `Percentage` is shown on top of every bar in Result Manipulation.


### NRT Per Priority .COM/SM

aka IK - Total Breached NRT % Month

- Dataset used: Support ( SLAs )
- Visualization type: Column
- Metric used: Sum (% Breached SLA Tickets), Sum (% Achieved SLA Targets)
- Rows:
    1. Ticket Priority
        (Includes only Normal, Low, High)
- Columns:
    1. SLA Update - Year
    1. SLA Update - Month
- Filters used:
    1. SLA Metric
    1. Ticket Form
    1. Has Plan - Ticket Tags
- Custom Settings:
    1. SLA Metric includes only `Next Reply Time`.
    1. Ticket Form filter excludes `Security`, `Account Receivable/Refunds`, `L&R`.
    1. Has Plan - Ticket Tags is a custom attribute and setting of Includes have `Has Plan` checked.
    1. SLA Update - Year filter was used and it use Advanced Date Range settings i.e. "From beginning of" should have `13 months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and `Percentage` is shown on top of every bar in Result Manipulation.


### Median TTR SaaS/SM - Custom Metric Error (TTR)

### Median TTR SM - Custom Metric Error (TTR)

### Median TTR SaaS - Custom Metric Error (TTR)

### Requester Wait Time SM

aka IK - Requester Wait Time SM

- Dataset used: Support ( SLAs )
- Visualization type: Line
- Metric used: MED (requester wait time (hrs))
- Rows:
    None
- Columns:
    1. Ticket Update - Year
    1. Ticket Update - Month
- Filters used:
    1. Ticket Form
    1. Has Plan - Ticket Tags
- Custom Settings:
    1. Ticket Form filter includes only `Self-Managed`.
    1. Has Plan - Ticket Tags is a custom attribute and setting of Includes have `Has Plan` checked.
    1. SLA Update - Year filter was used and it use Advanced Date Range settings i.e. "From beginning of" should have `13 months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z`.

### Requester Wait Time SaaS- Deleted Report

### Support Solved / Closed Tickets

aka IK - Support Closed Tickets

- Dataset used: Support ( Updates History )
- Visualization type: Column
- Metric used: Count (Tickets Solved)
- Rows:
    None
- Columns:
    1. Ticket Solved (Year)
    1. Ticket Solved (Month)
- Filters used:
    1. Ticket Form
    1. Ticket Status
    1. Has Plan - Ticket Tags
- Custom Settings:
    1. Ticket Form filter should include `L&R`, `SaaS`, `SaaS Account`, `Self-Managed`, `Emergencies`.
    1. Ticket Status filter should include only `Closed`.
    1. Has Plan - Ticket Tags is a custom attribute and setting of Includes have `Has Plan` checked.
    1. Ticket Solved (Year) use Advanced Date Range settings i.e. "From beginning of" should have `12 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and have "Totals" show `sum` on top of every month column in Result Manipulation.
    1. It also shows a trend line which can be found in Chart Configuration menu.

### One-Touch Solved Per Ticket Form Ratio (w/o Free)

aka IK - One-Touch Solved Per Ticket Form Ratio (w/o Free)

aka IK - Requester Wait Time SM

- Dataset used: Support ( SLAs )
- Visualization type: Line
- Metric used: \* D_Count (One Touch Ticket Ratio)*\
- Rows:
    1. Ticket Form
        (Includes only Self Managed, SaaS, SaaS Account)
- Columns:
    1. Ticket Solved (Year)
    1. Ticket Solved (Month)
- Filters used:
    1. 2FA
    1. Has Plan Ticket Tags -SSAT (Incl L&R)
- Custom Settings:
    1. One Touch Ticket Ratio is a custom metric.
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and setting of Includes have `Has Plan + L&R` checked.
    1. 2FA is custom attribute and `Not 2FA` needs to be selected.
    1. Ticket Solved (Year) was used and it use Advanced Date Range settings i.e. "From beginning of" should have `13 months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and "Totals" have "Percentage" shows in lines over every month in Result Manipulation.

### SSAT Distribution For Combined .COM/SM - Outdated Calc

### SSAT Distribution .COM - Outdated Calc

### SSAT Distribution SM

aka IK - Main - SSAT Distribution 12 months SM

- Dataset used: Support ( Tickets )
- Visualization type: Column
- Metric used: Sum (% Satisfaction Score)
- Rows:
    None
- Columns:
    1. Ticket Solved - Year
    1. Ticket Solved - Month
- Filters used:
    1. Ticket Satisfaction Rating
    1. Ticket Form
    1. Has Plan - Ticket Tag
- Custom Settings:
    1. Ticket Satisfaction Rating filter excludes `Offered`, `Unoffered` and `null`.
    1. Ticket Form filter should include only `Self-Managed`.
    1. Has Plan - Ticket Tags is a custom attribute and setting of Includes have `Has Plan` checked.
    1. Ticket Solved - Year use Advanced Date Range settings i.e. "From beginning of" should have `12 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and and "SUM" shows in percentage in columns inside every month in Result Manipulation.
    1. Report has a `linear` trend line in Chart configuration.

### Poor SSAT Reason Breakdown For .COM

aka IK - Poor CSAT For .COM Breakdown Per Month

- Dataset used: Support ( Updates History )
- Visualization type: Column
- Metric used: Count  (Bad Initial Satisfaction Rating)
- Rows:
    1. Ticket Satisfaction Reason
- Columns:
    1. Ticket Solved - Year
    1. Ticket Solved - Month
- Filters used:
    1. Ticket Form
    1. Has Plan Ticket Tags -SSAT (Incl L&R)
- Custom Settings:
    1. This report shows Legend for Row values in top of chart configurable in Chart configuration.
    1. Ticket Form filter should include only `SaaS` and `SaaS Account`.
    1. Has Plan - Ticket Tags is not used for any filteration.
    1. Ticket Solved - Year use Advanced Date Range settings i.e. "From beginning of" should have `12 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and and "Total" shows in percentage in columns inside every month for every reason in Result Manipulation.


### Poor SSAT Reason Breakdown For SM

aka IK - Poor CSAT For SM Breakdown Per Month

- Dataset used: Support ( Updates History )
- Visualization type: Column
- Metric used: Count  (Bad Initial Satisfaction Rating)
- Rows:
    1. Ticket Satisfaction Reason
- Columns:
    1. Ticket Solved - Year
    1. Ticket Solved - Month
- Filters used:
    1. Ticket Form
    1. Has Plan Ticket Tags -SSAT (Incl L&R)
- Custom Settings:
    1. This report shows Legend for Row values in top of chart configurable in Chart configuration.
    1. Ticket Form filter should include only `Self-Managed`.
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and setting of Includes have `Has Plan + L&R` checked.
    1. Ticket Solved - Year use Advanced Date Range settings i.e. "From beginning of" should have `12 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and "Total" shows in percentage in columns inside every month for every reason in Result Manipulation.

### SSAT Volume 3 months .com

aka IK - Main - SSAT Distribution 3 months .com - Table

- Dataset used: Support ( Tickets )
- Visualization type: Table
- Metric used: Sum (% Satisfaction Score), /*D_Count (Rated VS Tickets in %)*/, D_Count (Rated satisfaction tickets), Count (Tickets)
- Rows:
    1. GitLab Plan
        (Includes only Bronze, Gold, Silver)
- Columns:
    1. Ticket Solved - Year
    1. Ticket Solved - Month
- Filters used:
    1. Ticket Form
    1. Has Plan Ticket Tags -SSAT (Incl L&R)
- Custom Settings:
    1. Rated VS Tickets in % is a custom metric.
    1. Ticket Form filter should include only `SaaS` and `SaaS Account`.
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and setting of Includes have `Has Plan + L&R` checked.
    1. Ticket Solved - Year use Advanced Date Range settings i.e. "From beginning of" should have `2 Months in the past` to "The end of" should have `All History`.
    1. Make sure report should have "Sort" type `A-Z`.

### SSAT Volume 3 months SM

aka IK - Main - SSAT Distribution 3 months SM - Table

- Dataset used: Support ( Tickets )
- Visualization type: Table
- Metric used: Sum (% Satisfaction Score), /*D_Count (Rated VS Tickets in %)*/, D_Count (Rated satisfaction tickets), Count (Tickets)
- Rows:
    1. GitLab Plan
        (Includes only Starter, Premium, Basic, Ultimate)
- Columns:
    1. Ticket Solved - Year
    1. Ticket Solved - Month
- Filters used:
    1. Ticket Form
    1. Has Plan Ticket Tags -SSAT (Incl L&R)
- Custom Settings:
    1. Rated VS Tickets in % is a custom metric.
    1. Ticket Form filter should include only `Self-Managed`.
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and setting of Includes have `Has Plan + L&R` checked.
    1. Ticket Solved - Year use Advanced Date Range settings i.e. "From beginning of" should have `2 Months in the past` to "The end of" should have `All History`.
    1. Make sure report should have "Sort" type `A-Z`.

### SSAT% For Tickets with Issue Links

aka IK - SSAT% For Tickets with Issue Links

- Dataset used: Support ( Tickets )
- Visualization type: Table
- Metric used: Sum (% Satisfaction Score), D_Count (Rated satisfaction tickets), D_Count (Tickets). Sum (% Satisfaction rated)
- Rows:
    1. Ticket Form
        (Includes only SaaS, SaaS Account, L&R, Self-Managed)
    1. Linked to Issue
- Columns:
    1. Ticket Solved - Year
    1. Ticket Solved - Month
- Filters used:
    1. Has Plan Ticket Tags -SSAT (Incl L&R)
- Custom Settings:
    1. Linked to Issue is a custom metric.
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and setting of Includes have `Has Plan + L&R` checked.
    1. Ticket Solved - Year use Advanced Date Range settings i.e. "From beginning of" should have `3 Months in the past` to "The end of" should have `1 Months in the past`.
    1. Make sure report should have "Sort" type `A-Z`.

### Survey Responded 12 Months

aka IK - Survey Responded 12 Months

- Dataset used: Support ( Tickets )
- Visualization type: Column
- Metric used: D_Count (Rated satisfaction tickets), D_Count (SSAT Form), /*D_Count (Rated VS Tickets in %)*/.
- Rows:
    None
- Columns:
    1. Ticket Solved - Year
    1. Ticket Solved - Month
- Filters used:
    1. Ticket Solved - Month
    1. Ticket Form
    1. Has Plan Ticket Tags -SSAT (Incl L&R)
- Custom Settings:
    1. This report shows Legend for Metrics in top of chart configurable in Chart configuration.
    1. Rated VS Tickets in % is a custom metric and use Dual Axis in the Metrics panel.
    1. SSAT Form is a custom mertic
    1. Ticket Form filter should exclude `Professional Services`, `Security`, `Billing`, `Accounts Receiveable/Refunds`, `Security`.
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and setting of Includes have `Has Plan + L&R` checked.
    1. Ticket Solved - Year use Advanced Date Range settings i.e. "From beginning of" should have `12 Months in the past` to "The end of" should have `1 Months in the past`.
    1. Make sure report should have "Sort" type `A-Z` and have "Sum" shows in columns over and inside every month as well as the value of dual axis line in metrics in Result Manipulation.

### Linked Total

aka IK - Linked Total

- Dataset used: Support ( Tickets )
- Visualization type: Table
- Metric used: D_Count (Solved Tickets), \*D_Count (Total Linked)*\, \*Count (% Total Linked)*\, \*Count (% Linked Docs)*\, \*D_Count (Linked Docs)*\, \*Count (% Linked MR)*\, \*D_Count (Linked MR)*\, \*Count (% Linked Issues)*\, \*D_Count (Linked Issues)*\, \*Count (% Linked HB)*\, \*D_Count (Linked Handbook)*\
- Rows:
    1. Ticket Solved - Year
    1. Ticket Solved - Month
- Columns:
    None
- Filters used:
    1. Duplicate Tickets
    1. Ticket Form
    1. Has Plan - Ticket Tag
    1. Created by Agent
- Custom Settings:
    1. `Total Linked`, `% Total Linked`, `% Linked Docs`, `Linked Docs`, `% Linked MR`, `Linked MR`, `% Linked Issues`, `Linked Issues`, `% Linked HB` and `Linked Handbook` are custom mertrics.
    1. Duplicate Tickets is a custom attribute and should have `Not Duplicate` selected.
    1. Ticket Form filter should include `Emergency`, `SaaS`, `SaaS Account`, `Self-Managed`,.
    1. Has Plan - Ticket Tags is a custom attribute and setting of Includes have `Has Plan` checked.
    1. Created By Agent is a custom attribute and should have selected `Not Created By Agent`.
    1. Ticket Solved - Year use Advanced Date Range settings i.e. "From beginning of" should have `3 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z`.

### Linked Docs

aka IK - Linked Docs

- Dataset used: Support ( Tickets )
- Visualization type: Column
- Metric used: \* SUM (% Linked Docs)*\
- Rows:
    None
- Columns:
    1. Ticket Solved - Year
    1. Ticket Solved - Month
- Filters used:
    1. Duplicate Tickets
    1. Ticket Form
    1. Has Plan - Ticket Tag
- Custom Settings:
    1. % Linked Docs is a custom mertric.
    1. Duplicate Tickets is a custom attribute and should have `Not Duplicate` selected.
    1. Ticket Form filter should include `Emergency`, `SaaS`, `SaaS Account`, `Self-Managed`.
    1. Has Plan - Ticket Tags is a custom attribute and setting of Includes have `Has Plan` checked.
    1. Ticket Solved - Year use Advanced Date Range settings i.e. "From beginning of" should have `3 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and and "SUM" shows in percentage in columns inside every month in Result Manipulation.
    1. Report has a `linear` trend line in Chart configuration.

### Linked Issues

aka IK - Linked Issues

- Dataset used: Support ( Tickets )
- Visualization type: Column
- Metric used: \* SUM (% Linked Issues)*\
- Rows:
    None
- Columns:
    1. Ticket Solved - Year
    1. Ticket Solved - Month
- Filters used:
    1. Duplicate Tickets
    1. Ticket Form
    1. Has Plan - Ticket Tag
- Custom Settings:
    1. % Linked Issues is a custom mertric.
    1. Duplicate Tickets is a custom attribute and should have `Not Duplicate` selected.
    1. Ticket Form filter should include `Emergency`, `SaaS`, `SaaS Account`, `Self-Managed`.
    1. Has Plan - Ticket Tags is a custom attribute and setting of Includes have `Has Plan` checked.
    1. Ticket Solved - Year use Advanced Date Range settings i.e. "From beginning of" should have `3 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and and "SUM" shows in percentage in columns inside every month in Result Manipulation.
    1. Report has a `linear` trend line in Chart configuration.

### Linked MR's

aka IK - Linked MR's

 Dataset used: Support ( Tickets )
- Visualization type: Column
- Metric used: \* SUM (% Linked MR)*\
- Rows:
    None
- Columns:
    1. Ticket Solved - Year
    1. Ticket Solved - Month
- Filters used:
    1. Duplicate Tickets
    1. Ticket Form
    1. Has Plan - Ticket Tag
- Custom Settings:
    1. % Linked MR is a custom mertric.
    1. Duplicate Tickets is a custom attribute and should have `Not Duplicate` selected.
    1. Ticket Form filter should include `Emergency`, `SaaS`, `SaaS Account`, `Self-Managed`.
    1. Has Plan - Ticket Tags is a custom attribute and setting of Includes have `Has Plan` checked.
    1. Ticket Solved - Year use Advanced Date Range settings i.e. "From beginning of" should have `3 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and and "SUM" shows in percentage in columns inside every month in Result Manipulation.
    1. Report has a `linear` trend line in Chart configuration.

### Linked HB's

aka IK - Linked HB's

- Dataset used: Support ( Tickets )
- Visualization type: Column
- Metric used: \* SUM (% Linked HB)*\
- Rows:
    None
- Columns:
    1. Ticket Solved - Year
    1. Ticket Solved - Month
- Filters used:
    1. Duplicate Tickets
    1. Ticket Form
    1. Has Plan - Ticket Tag
- Custom Settings:
    1. % Linked HB is a custom mertric.
    1. Duplicate Tickets is a custom attribute and should have `Not Duplicate` selected.
    1. Ticket Form filter should include `Emergency`, `SaaS`, `SaaS Account`, `Self-Managed`.
    1. Has Plan - Ticket Tags is a custom attribute and setting of Includes have `Has Plan` checked.
    1. Ticket Solved - Year use Advanced Date Range settings i.e. "From beginning of" should have `3 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and and "SUM" shows in percentage in columns inside every month in Result Manipulation.
    1. Report has a `linear` trend line in Chart configuration.

### Linked Total - Private

aka IK - Linked Total - Private

- Dataset used: Support ( Tickets )
- Visualization type: Table
- Metric used: D_Count (Solved Tickets), \*D_Count (Total Linked)*\, \*D_Count (Linked Docs)*\, \*D_Count (Linked Docs - Private)*\, \*D_Count (Linked MR)*\, \*D_Count (Linked MR - Private)*\, \*D_Count (Linked Issues)*\, \*D_Count (Linked Issues - Private)*\, \*D_Count (Linked Handbook)*\, \*D_Count (Linked Handbook - Private)*\
- Rows:
    1. Ticket Solved - Year
    1. Ticket Solved - Month
- Columns:
    None
- Filters used:
    1. Duplicate Tickets
    1. Ticket Form
    1. Has Plan - Ticket Tag
- Custom Settings:
    1. `Total Linked`, `Linked Docs`, `Linked Docs - Private`, `Linked MR`, `Linked MR - Private`, `Linked Issues`, `Linked Issues - Private`, `Linked Handbook` and `Linked Handbook - Private` are custom mertrics.
    1. Duplicate Tickets is a custom attribute and should have `Not Duplicate` selected.
    1. Ticket Form filter should include `Emergency`, `SaaS`, `SaaS Account`, `Self-Managed`.
    1. Has Plan - Ticket Tags is a custom attribute and setting of Includes have `Has Plan` checked.
    1. Ticket Solved - Year use Advanced Date Range settings i.e. "From beginning of" should have `3 Months in the past` to "The end of" should have `All History`.
    1. Make sure report should have "Sort" type `A-Z`.


### No Problem Type

aka IK - No Problem Type

- Dataset used: Support ( Tickets )
- Visualization type: Column
- Metric used: \*Count (No Problem Type - .COM)*\, \*Count (No Problem Type - SM)*\,\*Count (No Problem Type - L&R)*\, \*Count (No Problem Type - Accounts SaaS)*\, Count (% Tickets)
- Rows:
    None
- Columns:
    1. Ticket Solved - Year
    1. Ticket Solved - Month
- Filters used:
    1. Duplicate Tickets
    1. Ticket Form
    1. Has Plan Ticket Tags -SSAT (Incl L&R)
- Custom Settings:
    1. This report shows Legend for Metrics in top of chart configurable in Chart configuration.
    1. `No Problem Type - .COM`, `No Problem Type - SM`, `No Problem Type - L&R`and `No Problem Type - Accounts SaaS` are custom mertrics.
    1. Count (Tickets) metric use Dual Axis in the Metrics panel and should show total value in trend line format.
    1. Duplicate Tickets is a custom attribute and should have `Not Duplicate` selected.
    1. Ticket Form filter should include `Emergencies`, `SaaS`, `SaaS Account`, `Self-Managed`, `L&R`.
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and setting of Includes have `Has Plan + L&R` checked.
    1. Ticket Solved - Year use Advanced Date Range settings i.e. "From beginning of" should have `13 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and Totals show "Sum" in columns inside and top of every month in Result Manipulation.

### Assigned vs Unassigned

aka IK - Assigned VS Unassigned

- Dataset used: Support ( Tickets )
- Visualization type: Line
- Metric used: \*D_Count (Unassigned)*\, \*D_Count (Assigned)*\
- Rows:
    None
- Columns:
    1. Ticket Created - Year
    1. Ticket Created - Month
- Filters used:
    1. Ticket Form
    1. Has Plan Ticket Tags -SSAT (Incl L&R)
- Custom Settings:
    1. This report shows Legend for Metrics in top of chart configurable in Chart configuration.
    1. `Unassigned` and `Assigned`are custom mertrics.
    1. Ticket Form filter should include `Emergencies`, `SaaS`, `SaaS Account`, `Self-Managed`, `L&R`.
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and setting of Includes have `Has Plan + L&R` checked.
    1. Ticket Created - Year use Advanced Date Range settings i.e. "From beginning of" should have `12 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and Totals show on top of every month in Result Manipulation.

### Unassigned Tickets Per Ticket Form

aka IK - Unassigned Tickets Per Ticket Form Per Month

- Dataset used: Support ( Tickets )
- Visualization type: Line
- Metric used: Count (Tickets)
- Rows:
    1. Ticket Form
- Columns:
    1. Ticket Created - Year
    1. Ticket Created - Month
- Filters used:
    1. Assignee Name
- Custom Settings:
    1. This report shows Legend for Rows in top of chart configurable in Chart configuration.
    1. Ticket Form should include `SaaS`, `SaaS Account`, `Self-Managed`, `L&R`.
    1. Assignee name filter should include `NULL`.
    1. Ticket Created - Year use Advanced Date Range settings i.e. "From beginning of" should have `8 Months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and Totals show on top of every month in Result Manipulation.

### Unassigned vs Assigned Not New Multi-Touch Ticket Ratio

aka IK - Unassigned VS Assigned Not New Multi-Touch Ticket Ratio

- Dataset used: Support ( Tickets )
- Visualization type: Table
- Metric used: Count (Tickets)
- Rows:
    1. Ticket Form
- Columns:
    1. Comment touch 
    1. Unassigned
- Filters used:
    1. Ticket Status
    1. Has Plan Ticket Tags -SSAT (Incl L&R)
- Custom Settings:
    1. This report shows Legend for Rows in top of chart configurable in Chart configuration.
    1. Ticket Form should include `SaaS`, `SaaS Account`, `Self-Managed`, `L&R`.
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and setting of Includes have `Has Plan + L&R` checked.
    1. Comment touch is a custom attribute and setting of Includes have `Multi-touch` selected.
    1. Unassigned is a custom attribute and needs nothing to be checked.
    1. Ticket Status filter should include `Open`, `Pending`, `On-Hold`, `Solved`.
    1. Make sure report should have "Sort" type `A-Z` and Totals show Metric i.e. Count (Tickets) as per Patter of `% of Total` and Path should be in `Columns` in Result Path Calculation inside Result Manipulation.

### Public comments on Assigned tickets ratio in % Per Region Weekly

aka IK - Public comments on Assigned tickets ratio in % Per Region Weekly

- Dataset used: Support ( Ticket Updates )
- Visualization type: Line
- Metric used: /*Sum (Assignment Ratio)*/
- Rows:
    1. Region
- Columns:
    1. Update - Year
    1. Update - Month
- Filters used:
    1. Ticket Form
    1. Comment Type
- Custom Settings:
    1. Assignment Ratio is a custom metric.
    1. Ticket Form filter should include `SaaS`, `SaaS Account`, `Self-Managed`, `L&R`.
    1. Comment Type filter should include `Public`.
    1. Region is a group attribute and the values are Computed from `Updater Tags`. Manager tags are used for `APAC`, `EMEA` and `AMER` sections.
    1. Update - Year use Advanced Date Range settings i.e. "From beginning of" should have `12 Months in the past` to "The end of" should have `All History`.
    1. Make sure report should have "Sort" type `A-Z` and Totals show `Percentage` in top of every week.

### Total Support Open Tickets Per Ticket Form

aka IK - Total Support Open Tickets Per Support Group

- Dataset used: Support ( Tickets )
- Visualization type: Pie
- Metric used: Count (Tickets)
- Rows:
    None
- Columns:
    1. Ticket Form
        (includes `SaaS`, `SaaS Account`, `Self-Managed`, `L&R`)
- Filters used:
    1. Ticket Status
    1. Has Plan Ticket Tags -SSAT (Incl L&R)
- Custom Settings:
    1. This report shows Legend for Column values in top of chart configurable in Chart configuration. 
    1. Ticket Status filter should include `New`, `Open`, `Pending`, `On-Hold`, `Solved`.
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and setting of Includes have `Has Plan + L&R` checked.
    1. Make sure report should have "Sort" type `A-Z` and Totals show `Percentage` ans `Count` in Pie sections and in center is the Grand Total without percentage.

### Unassigned Open Tickets Per Ticket Form

aka IK - Unassigned Tickets Per Ticket Form

- Dataset used: Support ( Tickets )
- Visualization type: Pie
- Metric used: Count (Tickets)
- Rows:
    None
- Columns:
    1. Ticket Form
        (includes `SaaS`, `SaaS Account`, `Self-Managed`, `L&R`)
- Filters used:
    1. Ticket Status
    1. Assignee name
    1. Has Plan Ticket Tags -SSAT (Incl L&R)
- Custom Settings:
    1. This report shows Legend for Column values in top of chart configurable in Chart configuration. 
    1. Ticket Status filter should include `New`, `Open`, `Pending`, `On-Hold`, `Solved`.
    1. Assignee name filter should include `NULL` only.
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and setting of Includes have `Has Plan + L&R` checked.
    1. Make sure report should have "Sort" type `A-Z` and Totals show `Percentage` ans `Count` in Pie sections and in center is the Grand Total without percentage.

### Public comments on Unassigned vs Assigned Tickets Per Team

aka IK - Public comments on Unassigned VS Assigned Tickets Per Team

- Dataset used: Support ( Ticket Updates )
- Visualization type: Line
- Metric used: /*D_Count (Unassigned - Update)*/, /*D_Count (Assigned - update)*/
- Rows:
    1. Updater Tags
        ( include all managers name tags inside the agent's field)
- Columns:
    1. Update - Year
    1. Update - Month
- Filters used:
    1. Ticket Form
    1. Comment Type
- Custom Settings:
    1. Unassigned - Update and Assigned - update are a custom metric.
    1. Updater Tags should should show all manager tags on right side and shows Legend for row values on top of report for metrics value.
    1. Ticket Form filter should include `SaaS`, `SaaS Account`, `Self-Managed`, `L&R`.
    1. Comment Type filter should include `Public`.
    1. Update - Year use Advanced Date Range settings i.e. "From beginning of" should have `12 Months in the past` to "The end of" should have `1 Month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and Totals show `Count` in top of every month.

### Emergency Tickets - Intake Per Month

aka IK - Emergency Tickets - Intake Per Month

- Dataset used: Support ( Tickets )
- Visualization type: Column
- Metric used: Count (Tickets)
- Rows:
    None
- Columns:
    1. Ticket Created - Year
    1. Ticket Created - Month
- Filters used:
    1. Ticket Tags
    1. Requester Role
    1. Requester Name
- Custom Settings:
    1. Ticket Tags filter should include `emergency` only.
    1. Requester Role filter should exclude `Admin` and `Agent`.
    1. Requester Name filter should exclude `Lis Vinueza` only.
    1. Ticket Created - Year use Advanced Date Range settings i.e. "From beginning of" should have `12 Months in the past` to "The end of" should have `All History`.
    1. Make sure report should have "Sort" type `A-Z` and Totals show on top of every month in Result Manipulation.
    1. It also shows a trend line which can be found in Chart Configuration menu.

### Emergency Tickets - Weekend Opened Worldwide

aka IK - Emergency Tickets - Weekend Opened Worldwide

- Dataset used: Support ( Tickets )
- Visualization type: Column
- Metric used: Count (Tickets)
- Rows:
    None
- Columns:
    1. Ticket Created - Year
    1. Ticket Created - Month
- Filters used:
    1. Ticket Tags
    1. Ticket Created - Day of week
    1. Requester Role
    1. Requester Name
- Custom Settings:
    1. Ticket Tags filter should include `emergency` only.
    1. Ticket Created - Day of week filter should include `Saturday` and `Sunday`.
    1. Requester Role filter should exclude `Admin` and `Agent`.
    1. Requester Name filter should exclude `Lis Vinueza` only.
    1. Ticket Created - Year use Advanced Date Range settings i.e. "From beginning of" should have `12 Months in the past` to "The end of" should have `All History`.
    1. Make sure report should have "Sort" type `A-Z` and Totals show on top of every month in Result Manipulation.
    1. It also shows a trend line which can be found in Chart Configuration menu.

### Emergency NRT

aka IK - Emergency Breached NRT % Per Month

- Dataset used: Support ( SLAs )
- Visualization type: Column
- Metric used: Sum (% Breached SLA Tickets), Sum (% Achieved SLA Targets)
- Rows:
    None
- Columns:
    1. Ticket Created - Year
    1. Ticket Created - Month
- Filters used:
    1. SLA metric
    1. Ticket Created - Year
    1. Ticket Tags
    1. Requester Role
- Custom Settings:
    1. This report shows Legend for Metrics values in top of chart configurable in Chart configuration.
    1. SLA metric filter should include `Next Reply Time` only,
    1. Ticket Tags filter should include `emergency` only.
    1. Requester Role filter should exclude `Admin` and `Agent`.
    1. Ticket Created - Year use Advanced Date Range settings i.e. "From beginning of" should have `12 Months in the past` to "The end of" should have `1 Month in the Past`.
    1. Make sure report should have "Sort" type `A-Z` and Totals show `Percentage` on top of every month in Result Manipulation.
    1. It also shows a trend line which can be found in Chart Configuration menu.

### Emergency FRT

aka IK - Emergency Breached FRT % Per Month

- Dataset used: Support ( SLAs )
- Visualization type: Column
- Metric used: Sum (% Breached SLA Tickets), Sum (% Achieved SLA Targets)
- Rows:
    None
- Columns:
    1. Ticket Created - Year
    1. Ticket Created - Month
- Filters used:
    1. SLA metric
    1. Ticket Created - Year
    1. Ticket Created - Month
    1. Ticket Tags
    1. Requester Name
- Custom Settings:
    1. This report shows Legend for Metrics values in top of chart configurable in Chart configuration.
    1. SLA metric filter should include `First Reply Time` only,
    1. Ticket Tags filter should include `emergency` only.
    1. Requester Name filter should exclude `Lis Vinueza` only.
    1. Ticket Created - Year use Advanced Date Range settings i.e. "From beginning of" should have `12 Months in the past` to "The end of" should have `1 Month in the Past`.
    1. Make sure report should have "Sort" type `A-Z` and Totals show `Percentage` on top of every month in Result Manipulation.
    1. It also shows a trend line which can be found in Chart Configuration menu.

### Opened On Weekend Breached

aka IK - Opened On Weekend Breached

- Dataset used: Support ( SLAs )
- Visualization type: Column
- Metric used: D_Count (Breached SLA Tickets)
- Rows:
    1. Ticket Created - Day of week
        ( includes `Saturday` and `Sunday`)
- Columns:
    1. Ticket Created - Year
    1. Ticket Created - Month
- Filters used:
    1. SLA metric
    1. SLA Update- Year
    1. Requester Role
    1. Requester Name
- Custom Settings:
    1. This report shows Legend for Row values in top of chart configurable in Chart configuration.
    1. SLA metric filter should include `First Reply Time` only,
    1. Requester Name filter should exclude `Lis Vinueza` only.
    1. Requester Role filter should exclude `Admin` and `Agent`.
    1. Ticket Created - Year use Advanced Date Range settings i.e. "From beginning of" should have `12 Months in the past` to "The end of" should have `1 Month in the Past`.
    1. Make sure report should have "Sort" type `A-Z` and Totals show `Sum` on top of every month in Result Manipulation.
    1. It also shows 2 trend lines which can be found in Chart Configuration menu.






## Custom Attributes and Metrics:

### Custom Attributes

1. Created By GitLab Bot Agent:

    Type: Standard Calucated Attribute
    Formula:

    ```Text
    IF (INCLUDES_ANY([Ticket tags],"gitlab-361112","com_gitlab_354791"))
    THEN "Created By GitLab Bot Agent"
    ELSE "Regular Ticket"
    ENDIF
    ```

    Special settings: None

1. New Tier Split

    Type: Standard Calucated Attribute
    Formula:

    ```Text
    IF ([Gitlab Plan - Ordered]="Community") THEN "Community"
    ELIF (INCLUDES_ANY([Ticket tags],"consumption_only")) THEN "Consumption"
    ELIF ([SaaS Subscription]="com_sales_assisted_trial" OR [SaaS Subscription]="Sales Assisted Trial" OR [Self-Managed Subscription]="sm_sales_assisted_trial" OR [Self-Managed Subscription]="Sales Assisted Trial" OR (INCLUDES_ANY([Ticket tags],"saas_prospect_customer","sm_prospect_customer","com_sales_assisted_trial","sm_sales_assisted_trial"))) 
    THEN "Trial"
    ELIF(((INCLUDES_ANY([Requester organization tags],"silver","basic","starter","premium","gold","bronze","ultimate") AND [Free]="Paid")
    OR INCLUDES_ANY([Ticket tags],"%silver%","%basic%","%starter%","%premium%","%gold%","%bronze%","%ultimate%") AND [Free]="Paid") OR [Ticket form]="L&R")
    THEN "Licensed"
    ELIF(NOT INCLUDES_ANY([Requester organization tags],"silver","basic","starter","premium","gold","bronze","ultimate")
    OR [Free]="Free")
    THEN "Free"
    ELSE "Unknown"
    ENDIF
    ```

    Special settings: None

1. EDU

    Type: Standard Calucated Attribute
    Formula:

    ```Text
    IF (INCLUDES_ALL([Ticket tags], "%edu_account_inquiries__pass_to_edu_%")) 
    THEN "EDU"
    ELSE "Not EDU"
    ENDIF
    ```

    Special settings: None


1. Has Plan Ticket Tags -SSAT (Incl L&R):

    Type: Standard Calculated Attribute
    Formula:

    ```text
    IF(INCLUDES_ANY([Ticket tags],"silver","basic","starter","premium","gold","bronze","ultimate")
    OR [Ticket form]="L&R")
    THEN "Has Plan + L&R"
    ELSE "No Plan"
    ENDIF
    ```

    Special settings: None

1. 2FA

    Type: Standard Calculated Attribute
    Formula:

    ```text
    IF (NOT INCLUDES([Ticket tags], ARRAY("%autoresponder_2fa%"))) THEN
    "Not 2FA"
    ELSE
    "2FA Ticket"
    ENDIF
    ```

    Special settings: None

1. Has Plan - Ticket Tags:

    Type: Standard Calculated Attribute
    Formula:

    ```text
    IF(INCLUDES_ANY([Ticket tags],"silver","basic","starter","premium","gold","bronze","ultimate"))
    THEN "Has Plan"
    ELSE "No Plan"
    ENDIF
    ```

    Special settings: None

1. Plan Tags - Ticket Tags:

    Type: Standard Calculated Attribute
    Formula:

    ```text
    IF(INCLUDES_ANY([Ticket tags],"ultimate"))
    THEN "Ultimate"
    ELIF(INCLUDES_ANY([Ticket tags],"premium"))
    THEN "Premium"
    ELIF(INCLUDES_ANY([Ticket tags],"basic","starter"))
    Then "Basic"
    ELIF(INCLUDES_ANY([Ticket tags],"gold"))
    THEN "Gold"
    ELIF(INCLUDES_ANY([Ticket tags],"silver"))
    THEN "Silver"
    ELIF(INCLUDES_ANY([Ticket tags],"bronze"))
    THEN "Bronze"
    ELSE "Unknown"
    ENDIF
    ```

    Special settings: None

1. Plan - Support costs adjusted 2021/10

    Type: Standard Calculated Attribute
    Formula:

    ```text
    IF (INCLUDES_ANY([Ticket tags],"consumption_only")) THEN "Consumption"
    ELIF((NOT INCLUDES_ANY([Ticket tags],"silver","basic","starter","premium","gold","bronze","ultimate") AND ([Ticket form]="SaaS Account"))) THEN "Free Account"
    ELIF ([SaaS Subscription]="com_sales_assisted_trial" OR [SaaS Subscription]="Sales Assisted Trial" OR [Self-Managed Subscription]="sm_sales_assisted_trial" OR [Self-Managed Subscription]="Sales Assisted Trial") THEN "Sales asisted trial"
    ELIF(INCLUDES_ANY([Ticket tags],"priority_prospect")) THEN "Priority Prospect"
    ELIF([Ticket form]="L&R" AND NOT (INCLUDES_ALL([Ticket tags],"%edu_account_inquiries__pass_to_edu_%"))) THEN "L&R"
    ELIF(NOT INCLUDES_ANY([Ticket tags],"silver","basic","starter","premium","gold","bronze","ultimate") AND ([Ticket form]="Self-Managed") OR (INCLUDES_ALL([Ticket tags],"%edu_account_inquiries__pass_to_edu_%")))THEN "Core"
    ELIF(NOT INCLUDES_ANY([Ticket tags],"silver","basic","starter","premium","gold","bronze","ultimate") AND ([Ticket form]="SaaS")) THEN "Free SaaS"
    ELIF(INCLUDES_ANY([Ticket tags],"silver","basic","starter","premium","gold","bronze","ultimate") AND ([Ticket form]="SaaS Account")) THEN "Paid Account"
    ELIF(INCLUDES_ANY([Ticket tags],"ultimate")) THEN "Ultimate"
    ELIF(INCLUDES_ANY([Ticket tags],"premium")) THEN "Premium"
    ELIF(INCLUDES_ANY([Ticket tags],"basic","starter"))THEN "Basic"
    ELIF(INCLUDES_ANY([Ticket tags],"gold")) THEN "Gold"
    ELIF(INCLUDES_ANY([Ticket tags],"silver")) THEN "Silver"
    ELIF(INCLUDES_ANY([Ticket tags],"bronze")) THEN "Bronze"
    ELIF([Ticket form]="Other") THEN "Other"
    ELSE "Unknown"
    ENDIF
    ```

    Special settings: None

1. Created By Agent

    Type: Standard Calculated Attribute
    Formula:

    ```text
    IF (INCLUDES_ANY([Ticket tags],"created_by_agent"))
    THEN "Created By Agent"
    ELSE "Not Created By Agent"
    ENDIF
    ```

    Special settings: None

1. Custom plan remove

    Type: Standard Calculated Attribute
    Formula:

    ```text
    IF (INCLUDES([Ticket tags], ARRAY("custom"))) 
    THEN "Custom Plan"
    ELSE "All Else"
    ENDIF
    ```

    Special settings: None

1. Validation License Failed

    Type: Standard Calculated Attribute
    Formula:

    ```text
    IF (INCLUDES([Ticket tags], ARRAY("%autoclose_nonapproved_users%"))) 
    THEN "Validation Failed"
    ELSE "All Else"
    ENDIF
    ```

    Special settings: None

1. Duplicate Tickets

    Type: Standard Calculated Attribute
    Formula:

    ```text
    IF (INCLUDES([Ticket tags], ARRAY("closed_by_merge"))) THEN
    "Duplicate"
    ELSE
    "Not Duplicate"
    ENDIF
    ```

    Special settings: None

1. Comment touch

    Type: Standard Calculated Attribute
    Formula:

    ```text
    IF (VALUE(Agent replies) <2) 
    THEN "One-touch"
    ELSE "Multi-touch"
    ENDIF
    ```

    Special settings: None

1. Unassigned

    Type: Standard Calculated Attribute
    Formula:

    ```text
    IF([Assignee name]=NULL)
    THEN 
    "Un"
    ELSE
    "As"
    ENDIF
    ```

    Special settings: None

### Custom Metrics

1. SM Ticket Count:

    Type: Standard Calucated Metric
    Formula:

    ```Text
    IF IN([Ticket form], ARRAY(
    "Self-Managed", 
    "Other Request", 
    "GitLab Community Edition (CE)")
    )THEN [Ticket ID] ENDIF
    ```

    Special settings: None

1. .com Ticket Count

    Type: Standard Calucated Metric
    Formula:

    ```Text
    IF IN([Ticket form], ARRAY(
    "SaaS", 
    "GitLab Hosted (GitHost.io)",
    "SaaS Account")) THEN [Ticket ID] ENDIF
    ```

    Special settings: None

1. L&R Ticket Count (w/o Internal)

    Type: Standard Calucated Metric
    Formula:

    ```Text
    IF (([Ticket form] = "L&R") 
    AND (NOT INCLUDES_ALL([Ticket tags],"lnr_internal_request")))
    THEN 
    [Ticket ID] 
    ENDIF
    ```

    Special settings: None

1. L&R Internal Ticket Count

    Type: Standard Calucated Metric
    Formula:

    ```Text
    IF (INCLUDES_ANY([Ticket form],"L&R")
    AND (INCLUDES_ANY([Ticket tags],"lnr_internal_request")))
    THEN [Ticket ID] ENDIF
    ```

    Special settings: None

1. Ops Ticket Count

    Type: Standard Calucated Metric
    Formula:

    ```Text
    IF ([Ticket form] = "Support Ops")
    THEN 
    [Ticket ID] 
    ENDIF
    ```

    Special settings: None  

1. Achieved SLA % - Fix

    Type: Standard Calucated Metric
    Formula:

    ```Text
    SUM(Achieved SLA tickets)/(SUM(Achieved SLA tickets)+D_COUNT(Breached SLA tickets))
    ```

    Special settings: None

1. Free Reduced Effort - May/2023

    Type: Standard Calucated Metric
    Formula:

    ```Text
    IF (INCLUDES_ANY([Ticket tags], ARRAY("autoclose-2fa-free","autoclose_2fa_free")))
    OR (INCLUDES_ALL([Ticket tags], ARRAY("email_suppression_autochecked","free_customer"))) 
    OR (INCLUDES_ANY([Ticket tags], ARRAY("autoresponder_free_tickets","auto_reply_free_plan"))) 
    OR (INCLUDES_ANY([Ticket tags], ARRAY("agent_identified_free_user"))) 
    OR (INCLUDES_ALL([Ticket tags], ARRAY("verification_requested","stage-needsorg")))
    OR (INCLUDES_ANY([Ticket tags], ARRAY("autowork_account_blocked"))) 
    OR (INCLUDES_ANY([Ticket tags], ARRAY("autowork_no_confirmation_email"))) 
    OR (INCLUDES_ANY([Ticket tags], ARRAY("autowork_forgot_password")))
    OR (INCLUDES_ANY([Ticket tags], ARRAY("autoreply_saas_free")))
    OR (INCLUDES_ANY([Ticket tags], ARRAY("autoreply_prospect_free")))
    OR (INCLUDES_ANY([Ticket tags], ARRAY("close_unmonitored_inbox")))
    OR (INCLUDES_ANY([Ticket tags], ARRAY("autoclose_namesquatting_free")))
    OR (INCLUDES_ALL([Ticket tags], ARRAY("autoclose_security"))) 
    OR (INCLUDES_ALL([Ticket tags], ARRAY("autoresponder_gdpr"))) 
    OR (INCLUDES_ALL([Ticket tags], ARRAY("autoclose_sm_free")))
    OR (INCLUDES_ALL([Ticket tags], ARRAY("closed_unassociated_ticket")))
    OR (INCLUDES_ALL([Ticket tags], ARRAY("saas_account_access_issues_locked")))
    OR (INCLUDES_ALL([Ticket tags], ARRAY("submitted_via_gitlab_email")))
    OR (INCLUDES_ALL([Ticket tags], ARRAY("autoclose_nonapproved_users")))
    THEN [Ticket ID]
    ENDIF
    ```

    Special settings: None

1. All Free

    Type: Standard Calucated Metric
    Formula:

    ```Text
    IF (NOT INCLUDES_ANY([Ticket tags],"silver","basic","starter","premium","gold","bronze","ultimate"))
    THEN [Ticket ID]
    ENDIF
    ```

    Special settings: None

1. Reduction Effort %

    Type: Standard Calucated Metric
    Formula:

    ```Text
    (D_COUNT(Free Reduced Effort - May/2023)/D_COUNT(All Free))*100
    ```

    Special settings: None

1. Total linked

    Type: Standard Calucated Metric
    Formula:

    ```Text
    IF ([Ticket tags] ="linked-to-mr" OR [Ticket tags] ="linked-to-issue" 
    OR [Ticket tags] = "linked-to-docs" OR [Ticket tags] ="linked-to-hb")
    THEN [Ticket ID]
    ENDIF
    ```

    Special settings: Check `Compute Seperately`

1. % Total linked

    Type: Standard Calucated Metric
    Formula:

    ```Text
    D_COUNT(Total linked) / D_COUNT(Solved tickets) * 100
    ```

    Special settings: None

1. % Linked docs

    Type: Standard Calucated Metric
    Formula:

    ```Text
    D_COUNT(Linked docs) / D_COUNT(Solved tickets) * 100
    ```

    Special settings: None

1. Linked docs

    Type: Standard Calucated Metric
    Formula:

    ```Text
    IF ([Ticket tags] = "linked-to-docs")
    THEN [Ticket ID]
    ENDIF
    ```

    Special settings:  None

1. Linked docs - Private

    Type: Standard Calucated Metric
    Formula:

    ```Text
    IF ([Ticket tags] = "linked-to-docs-private")
    THEN [Ticket ID]
    ENDIF
    ```

    Special settings:  None

1. % Linked MR

    Type: Standard Calucated Metric
    Formula:

    ```Text
    D_COUNT(Linked MR) / D_COUNT(Solved tickets) * 100
    ```

    Special settings: None

1. Linked MR

    Type: Standard Calucated Metric
    Formula:

    ```Text
    IF ([Ticket tags] ="linked-to-mr")
    THEN [Ticket ID]
    ENDIF
    ```

    Special settings:  None

1. Linked MR - Private

    Type: Standard Calucated Metric
    Formula:

    ```Text
    IF ([Ticket tags] ="linked-to-mr-private")
    THEN [Ticket ID]
    ENDIF
    ```

    Special settings:  None


1. % Linked Issues

    Type: Standard Calucated Metric
    Formula:

    ```Text
    D_COUNT(Linked Issues) / D_COUNT(Solved tickets) * 100
    ```

    Special settings: None

1. Linked Issues

    Type: Standard Calucated Metric
    Formula:

    ```Text
    IF ([Ticket tags] ="linked-to-issue")
    THEN [Ticket ID]
    ENDIF
    ```

    Special settings:  None

1. Linked Issues - Private

    Type: Standard Calucated Metric
    Formula:

    ```Text
    IF ([Ticket tags] ="linked-to-issue-private")
    THEN [Ticket ID]
    ENDIF
    ```

    Special settings:  None

1. % Linked HB

    Type: Standard Calucated Metric
    Formula:

    ```Text
    D_COUNT(Linked Handbook) / D_COUNT(Solved tickets) * 100
    ```

    Special settings: None

1. Linked Handbook

    Type: Standard Calucated Metric
    Formula:

    ```Text
    IF ([Ticket tags] ="linked-to-hb")
    THEN [Ticket ID]
    ENDIF
    ```

    Special settings:  None

1. Linked Handbook - Private

    Type: Standard Calucated Metric
    Formula:

    ```Text
    IF ([Ticket tags] ="linked-to-hb-private")
    THEN [Ticket ID]
    ENDIF
    ```

    Special settings:  None

1. One-Touch Ticket Ratio

    Type: Standard Calucated Metric
    Formula:

    ```Text
    (D_COUNT(One-touch tickets)/D_COUNT(Tickets))*100
    ```

    Special settings:  None

1. Rated VS Tickets in %

    Type: Standard Calucated Metric
    Formula:

    ```Text
    (COUNT(SSAT Form)+COUNT(Rated satisfaction tickets))/COUNT(Surveyed satisfaction tickets)
    ```

    Special settings:  None

1. SSAT Form

    Type: Standard Calucated Metric
    Formula:

    ```Text
    IF (CONTAINS([Ticket tags],"satisfaction"))
    THEN [Ticket ID]
    ENDIF
    ```

    Special settings:  None

1. No Problem Type - .COM

    Type: Standard Calucated Metric
    Formula:

    ```Text
    IF ([Ticket form]="SaaS")
    AND ([SaaS Problem Type]=NULL)
    THEN [Ticket ID] ENDIF
    ```

    Special settings:  Check `Compute Seperately`

1. No Problem Type - SM

    Type: Standard Calucated Metric
    Formula:

    ```Text
    IF ([Ticket form]="Self-Managed")
    AND  ([Self-managed Problem Type]=NULL)
    Then [Ticket ID] ENDIF
    ```

    Special settings:  Check `Compute Seperately`

1. No Problem Type - L&R

    Type: Standard Calucated Metric
    Formula:

    ```Text
    IF ([Ticket form]="L&R")
    AND  ([Transactions Issue Type]=NULL)
    Then [Ticket ID] ENDIF
    ```

    Special settings:  Check `Compute Seperately`

1. No Problem Type - Accounts SaaS

    Type: Standard Calucated Metric
    Formula:

    ```Text
    IF ([Ticket form]="SaaS Account")
    AND ([SaaS Account Problem Type]=NULL)
    THEN [Ticket ID] ENDIF
    ```

    Special settings: Check `Compute Seperately`

1. Unassigned

    Type: Standard Calucated Metric
    Formula:

    ```Text
    IF ([Assignee name]=NULL)
    THEN
    [Ticket ID]
    ENDIF
    ```

    Special settings: None

1. Assigned

    Type: Standard Calucated Metric
    Formula:

    ```Text
    IF ([Assignee name]!=NULL)
    THEN
    [Ticket ID]
    ENDIF
    ```

    Special settings: None

1. Assignment Ratio

    Type: Standard Calucated Metric
    Formula:

    ```Text
    100-((D_COUNT(Unassigned - Update)/D_COUNT(Assigned - update))*100)
    ```

    Special settings: None

1. Unassigned - Update

    Type: Standard Calucated Metric
    Formula:

    ```Text
    IF ([Assignee name]=NULL)
    THEN
    [Update ID]
    ENDIF
    ```

    Special settings: None

1. Assigned - update

    Type: Standard Calucated Metric
    Formula:

    ```Text
    IF ([Assignee name]!=NULL)
    THEN
    [Update ID]
    ENDIF
    ```

    Special settings: None
