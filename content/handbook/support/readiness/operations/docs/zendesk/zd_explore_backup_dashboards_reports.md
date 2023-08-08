---
title: Zendesk Explore Dashboards and Reports Backup
description: Support Operations documentation page for Zendesk Explore Dashboards and Reports Backup
canonical_path: "/handbook/support/readiness/operations/docs/zendesk/zd_explore_backup_dashboards_reports.md"
---

# Dashboards

## Support Metrics

### Tabs

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
        1. xxx FRT MED .COM/SM
        1. NRT SLA % Achieved for .COM/SM

# Reports

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
    1. Ticket Created (Year) use Advanced Date Range settings i.e. "From beginning of" should have `13 months in the past` to "The end of" should have `all history`
    1. Make sure report should have "Sort" type `A-Z` and have "Totals" show percentage inside bars and top of bars shows Total in Result Manipulation 

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
    1. Ticket Form filter should exclude Security, Billing, Accounts Receiveable/Refunds
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and setting of Includes have `Has Plan + L&R` checked.
    1. Ticket Created (Year) filter was used and it  use Advanced Date Range settings i.e. "From beginning of" should have `12 months in the past` to "The end of" should have `all history`
    1. Make sure report should have "Sort" type `A-Z` and have "Totals" at top of bars  in Result Manipulation 

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
    1. Ticket Created (Year) filter was used and it  use Advanced Date Range settings i.e. "From beginning of" should have `12 months in the past` to "The end of" should have `all history`
    1. Make sure report should have "Sort" type `A-Z` and sum is top on every bar in Result Manipulation 

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
    1. Ticket Created (Year) filter was used and it  use Advanced Date Range settings i.e. "From beginning of" should have `12 months in the past` to "The end of" should have `all history`
    1. Make sure report should have "Sort" type `A-Z` and sum is top on every bar in Result Manipulation 

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
    1. Ticket Form filter should include `SaaS`, `SaaS Acocunt`, `Self-Managed` and `L&R` 
    1. Has Plan Ticket Tags -SSAT (Incl L&R) is a custom attribute and has `no` value to select
    1. Make sure report should have "Sort" type `A-Z` and "Total" show `sum` on top on every bar in Result Manipulation 

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
    1. SLA Metric includes only First Reply Time
    1. Ticket Form filter should include `SaaS`, `SaaS Acocunt`, `Self-Managed`
    1. 2FA is custom attribute and "Not 2FA" needs to be selected.
    1. Has Plan - Ticket Tags is a custom attribute and setting of Includes have `Has Plan` checked.
    1. SLA Update - Year filter was used and it use Advanced Date Range settings i.e. "From beginning of" should have `13 months in the past` to "The end of" should have `1 month in the past`
    1. Make sure report should have "Sort" type `A-Z` and Percentage is shown inside every bar in Result Manipulation.
    1. It also shows a trend line which can be found in Chart Configuration menu. 

### xxx FRT MED .COM/SM
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
    1. Has Plan - Ticket Tag
- Custom Settings:
    1. SLA Metric includes only First Reply Time
   1. Ticket Form filter should include `SaaS`, `SaaS Acocunt`, `Self-Managed`
    1. 2FA is custom attribute and "Not 2FA" needs to be selected.
    1. Has Plan - Ticket Tag is a custom attribute and setting of Includes have `Has Plan` checked.
    1. SLA Update - Year filter was used and it use Advanced Date Range settings i.e. "From beginning of" should have `13 months in the past` to "The end of" should have `1 month in the past`
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
    1. Has Plan - Ticket Tag
- Custom Settings:
    1. GitLab Plan filter should include `Basic`, `Bronze`, `Gold`, `Premium`, `Silver`, `Ultimate`.
    1. Ticket Form filter should include `SaaS`, `SaaS Acocunt`, `Self-Managed`
    1. Has Plan - Ticket Tag is a custom attribute and setting of Includes have `Has Plan` checked.
    1. SLA Update - Year filter was used and it use Advanced Date Range settings i.e. "From beginning of" should have `13 months in the past` to "The end of" should have `1 month in the past`
    1. Make sure report should have "Sort" type `A-Z` and Percentage is shown inside every bar in Result Manipulation.
    1. It also shows a trend line which can be found in Chart Configuration menu.


























# Custom Attributes and Metrics:

## Custom Attributes
1. Has Plan Ticket Tags -SSAT (Incl L&R):

    Type: Standard Calculated Attribute
    Formula:
    ````
    IF(INCLUDES_ANY([Ticket tags],"silver","basic","starter","premium","gold","bronze","ultimate")
    OR [Ticket form]="L&R")
    THEN "Has Plan + L&R"
    ELSE "No Plan"
    ENDIF
    ````
    Special settings: None

1. 2FA

    Type: Standard Calculated Attribute
    Formula:
    ````
    IF (NOT INCLUDES([Ticket tags], ARRAY("%autoresponder_2fa%"))) THEN
    "Not 2FA"
    ELSE
    "2FA Ticket"
    ENDIF
    ````
    Special settings: None

1. Has Plan - Ticket Tags: 

    Type: Standard Calculated Attribute
    Formula:
    ````
    IF(INCLUDES_ANY([Ticket tags],"silver","basic","starter","premium","gold","bronze","ultimate"))
    THEN "Has Plan"
    ELSE "No Plan"
    ENDIF
    ````
    Special settings: None
