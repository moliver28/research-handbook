---
title: "Pulse Survey"
---

## Overview

Some engineering teams have been piloting a weekly pulse survey.
We are expanding this practice to all engineering teams. This page outlines
the current method by which we have launched the weekly pulse survey to help
other directors launch their own.

## Survey results

Survey results are presented in a Sisense Dashboard called [Engineering Pulse Survey](https://app.periscopedata.com/app/gitlab/449194/)
([Resources on Sisense](/handbook/business-technology/data-team/platform/periscope/)).

The dashboard includes a number of filters, including the engineering group (e.g. Configure, Monitor, Plan, etc) and the engineering team (backend, frontend, security, etc);
survey results can also be aggregated to different levels (weekly, monthly, quarterly, or yearly) and the date range can be updated to reflect a specific time period.

This dashboard is auto-refreshed every Friday morning, though it can be refreshed at any time, by clicking the refresh icon in the upper right area of the screen.

### Process

The Director of Engineering - Ops sends out the weekly pulse survey through Google Forms.
A template of this form can be found [here](https://docs.google.com/forms/d/e/1FAIpQLScxGIfc4SP0JDybdyb74tGcYGkBnnMp0zGk3uNMx6xHygZWDw/viewform).
To start your own survey, make a copy of this form and follow on to the next steps.
*Tip*: Create an email alias for the team members you would like to send the survey to.
This insures that it only takes a few seconds to send the survey weekly.
It is best to have a sheet per team reporting to the same manager.

The results are piped into a corresponding Google Sheet.
For each Results sheet, a corresponding tab needs to be created in the [sheetload.pulse_survey](https://docs.google.com/spreadsheets/d/1Q0U43roIJaSNGaVuc8zXFh2qUqDUs3n5qCoxU4KbX5g/edit#gid=0) sheet in the [Sheetload folder](https://drive.google.com/drive/u/0/folders/1F5jKClNEsQstngbrh3UYVzoHAqPTf-l0) on Drive (Due to sensitive data, this is a limited access folder).
The tab needs to be named `pulse_survey_group_team`, e.g. `pulse_survey_configure_be` for the backend Configure team.
In that tab, go to spot A1; type `=importrange("urltoresultssheet"),  "Form Responses 1!A1:D138")`.
After hitting enter, there will be an initial permissions error that can be solved by reselecting A1 and granting access.
The four columns should then import.
The columns should be the timestamp then each of the three questions.
Do not edit any column names or results.

The next step is to be sure [Sheetload](/handbook/business-technology/data-team/platform/#using-sheetload) can read and ingest the new tab.
The [Sheetload readme](https://gitlab.com/gitlab-data/analytics/tree/master/extract/sheetload) is the SSOT for the following steps, but an abbreviated version is included for ease of info.
1. Add the new tab to the [sheets.txt](https://gitlab.com/gitlab-data/analytics/blob/master/extract/sheetload/sheets.txt) file following the `pulse_survey.pulse_survey_group_team` convention (there are examples in the file.)
1. Add a new dbt model to `analytics/transform/snowflake-dbt/models/sheetload/base` ([location](https://gitlab.com/gitlab-data/analytics/tree/master/transform/snowflake-dbt/models/sheetload/base)) following the naming convention of `sheetload_pulse_survey_group_team.sql`; this is a pretty straightforward SQL file and should follow an [existing example](https://gitlab.com/gitlab-data/analytics/blob/master/transform/snowflake-dbt/models/sheetload/base/sheetload_pulse_survey_configure_be.sql).
1. Substitute the group and team values (lines 12 and 13 in the example file) to match the survey's group and team.
1. Update the `table_list` list set beginning on line 7 in `analytics/transform/snowflake-dbt/models/sheetload/xf/engineering_pulse_survey.sql` ([Location](https://gitlab.com/gitlab-data/analytics/blob/master/transform/snowflake-dbt/models/sheetload/xf/engineering_pulse_survey.sql)) to add the new dbt model; follow the existing syntax example of `ref('filenamewithoutthe .sql at the end')`.

After following these steps and getting the MR merged, these will get picked up on the next Sheetload and dbt runs.
The Sisense dashboard can always be refreshed to reflect the latest information.
New team names and group names will be auto-picked up by Sisense and can be used as filters.

Please share the results of the survey with your team member on a weekly basis.
This ensures transparency as well as reinforces the value of this survey.
It is important to note that a big element of this survey is providing a safe place
for individuals to give feedback, express concerns or highlight an important
point.
The comment field should be *private* and only visible by the director administering the survey.
