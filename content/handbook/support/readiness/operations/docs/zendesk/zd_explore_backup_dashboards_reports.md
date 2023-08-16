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

This is main report in Slide 9

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

This is side small table in Slide 16

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
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and has `no` value to select.
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
    1. SLA Metric includes only First Reply Time.
    1. Ticket Form filter should include `SaaS`, `SaaS Acocunt`, `Self-Managed`.
    1. 2FA is custom attribute and "Not 2FA" needs to be selected.
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
    1. SLA Metric includes only First Reply Time.
    1. Ticket Form filter should include `SaaS`, `SaaS Acocunt`, `Self-Managed`.
    1. 2FA is custom attribute and "Not 2FA" needs to be selected.
    1. Has Plan - Ticket Tags is a custom attribute and setting of Includes have `Has Plan` checked.
    1. SLA Update - Year filter was used and it use Advanced Date Range settings i.e. "From beginning of" should have `13 months in the past` to "The end of" should have `1 month in the past`.
    1. Make sure report should have "Sort" type `A-Z` and Percentage is shown inside every bar in Result Manipulation.
    1. It also shows a trend line which can be found in Chart Configuration menu.

## NRT SLA % Achieved for .COM/SM

aka IK - NRT SLA for .com/SM
- Dataset used: Support ( SLAs )
- Visualization type: Column
- Metric used: SUM (% Achieved SLA Targets)
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
