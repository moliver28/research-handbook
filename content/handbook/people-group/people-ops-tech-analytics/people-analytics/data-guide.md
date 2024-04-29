---
title: "Data Guide to People Data Analysis"
---

## Objectives for this page

This handbook page is intended to provide a high-level overview of the most common data models used by the People Analytics team. If you are in need of using People Data for dashboard development and reporting, this page will help you determine the best models to use. If you have any questions please don't hesitate to reach out to someone from the team for help.

## Helpful places to start

- [DBT Docs](https://dbt.gitlabdata.com/#!/overview) - This resource contains comprehensive documentation on all available dbt models. This is a great starting point to understanding our models. For specific People Models, please reference the **Commonly Used Data Models** section below for a starting point.
- [Definitive guides to data subject areas](/handbook/business-technology/data-team/data-catalog/#definitive-guides) managed by the Data team.
- [Documentation on data pipelines](/handbook/business-technology/data-team/platform/pipelines/) for the technically curious analyst. This page goes into each data source and extraction details.
- [People Group Tech Stack Guide]({{< ref "tech-stack-guide-workday" >}}) for overview of all the integrations that go into and out of our HR systems and all the tools we use.

## Key Terms

**BambooHR** - BambooHR was the HRIS used by GitLab until 2022-06-16

**Workday** - Workday is the HRIS used by GitLab since 2022-06-16

## Team Members

**Employee ID** - Unique number that has been assigned to each individual team member within the company

**Team Member** - Full time individuals working for GitLab. Team members can be hired through an entity, PEO or direct contract. Individuals are considered team members in the warehouse when on an indefinite term contract with GitLab. Temporary Service Providers or Contingent Workers (working for GitLab for a limited period of time) are not tracked in Workday, therefore their records don't exist in Snowflake

## Teams

**Organization** - An organization refers to a grouping used to organize team members or other organizations

**Team ID** - The unique organization identifier

**Team Superior ID** Organization's superior team ID

**Department** - The second level of the GitLab organization hierarchy

**Division** - The top level of the GitLab organization hierarchy

**Cost Center** - The reported top level cost center for the team member

## Data Sources

### BambooHR

BambooHR was used by GitLab to store all team member information in one central location.

### Greenhouse

GitLab’s ATS (Applicant Tracking System). All hiring managers and interviewers will use Greenhouse to review resumes, provide feedback, communicate with candidates, and more. Please refer to the [hiring handbook](/handbook/hiring/greenhouse/) for additional information.

### Time Off by Deel

A slack application used to request, track, approve and analyze time off.

### Workday

[Workday](/handbook/people-group/tech-stack-guide-workday/) is GitLab's current central HRIS.

### CultureAmp

The application we use to conduct surveys within GitLab.

## Data Models

The Data Team is working with the People Analytics team to build data marts that allow users to explore our different people data sources

- "mart" models are a combination of dimensions and facts that are joined together to enable easy analysis.
- "rpt" ("report") models are built with specific business logic for a specific use case.

Underneath each model is a clean lineage of dimensions and facts that can also be used for analysis. This list included all the prep tables, dimensions and facts that have been created for people analysis as well as the ones that we are planning to build in the upcoming quarters based on the [Team Member Common ERD](https://lucid.app/lucidchart/17fbbbe5-f652-40e9-905e-1b07ec040520/edit?viewport_loc=153%2C6%2C1472%2C542%2CC6RZ78OfF1Bh&invitationId=inv_f6b923fd-02bb-4786-abd7-bf205c7d1da2)

### Prep, dimension and fact tables

|Model Name|Table Type|Grain|Source|Status|Documentation|
| ------ | ------ | ------ | ------ | ------ | ------ |
|prep_team_member|Staging|One row per Team Member ID per event|Workday|Completed| [DBT docs](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.prep_team_member) |
|dim_team|Dimension|One row per Team ID per event|Workday|Completed| [DBT docs](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_team) |
|dim_team_member|Dimension|One row per Team Member ID per event|Workday|Completed| [DBT docs](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_team_member) |
|fct_team_member_position|Fact|One row per employee_id, team_id, effective_date and date_time_initiated combination|Workday|Completed| [DBT docs](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_team_member_position) |
|fct_team_member_status|Fact|One row per employee_id, employment_status and status_effective_date combination|Workday|Completed| [DBT docs](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_team_member_status) |
|fct_team_status|Fact|One row per employee_id and valid_from combination|Workday|Completed| [DBT docs](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_team_status) |
|fct_team_member_locality|Fact||Workday|Planned| DBT docs |
|fct_team_demographic|Fact||Workday|Planned| DBT docs |
|fct_team_member_absence|Fact||Workday|Planned| DBT docs |
|fct_team_absence|Fact||Workday|Planned| DBT docs |

### Marts

|Model Name|Table Type|Grain|Status|Documentation|
| ------ | ------ | ------ | ------ | ------ |
|mart_team_member_directory| Mart | One row per employee ID| Completed | [DBT docs](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_team_member_directory) |


## Model usage

### dim_team_member

This table contains team members work and personal information. Sensitive columns are masked using [dynamic masking](/handbook/business-technology/data-team/platform/#dynamic-masking) and the fields are only visible by team members with the **analyst_people** role assigned in Snowflake. This table is a [hybrid SCD (Type 1 + Type 2)](/handbook/business-technology/data-team/platform/edw/#slowly-changing-dimensions--snapshots).

The table includes information regarding current team members, new hires who have records created in Workday before their start date and team members who were terminated in 2021 onwards. Team members who were terminated before 2021 are not captured in this model at this time. The grain of this table is one row per **employee_id** per **valid_to/valid_from** combination.

<details>
<summary markdown="span">Query - Team members count per region</summary>

```sql
SELECT
  region,
  COUNT(DISTINCT employee_id)
FROM
  PROD.COMMON.DIM_TEAM_MEMBER
WHERE
  is_current = TRUE AND is_current_team_member = TRUE
GROUP BY
  region
```

</details>


<details>
<summary markdown="span">Query - Current team members total count</summary>

```sql
SELECT
  COUNT(DISTINCT employee_id)
FROM
  PROD.COMMON.DIM_TEAM_MEMBER
WHERE
  is_current = TRUE AND is_current_team_member = TRUE
```

</details>

<details>
<summary markdown="span">Query - Percentage of key talent in the team member population</summary>

*key_talent_status is a masked field, only team members with the analyst_people role in Snowflake can query it*


```sql
SELECT
  key_talent_status,
  COUNT(*) * 100 / SUM(COUNT(*)) OVER() AS key_talent_percentage
FROM
  PROD.COMMON.DIM_TEAM_MEMBER
WHERE
  is_current = TRUE AND is_current_team_member = TRUE
GROUP BY 1
```

</details>


### dim_team


**dim_team** contains team (organizations) information. It includes information regarding teams and their hierarchy. It is a [Type 2 SCD](/handbook/business-technology/data-team/platform/edw/#slowly-changing-dimensions--snapshots).

The goal of this table is to determine the team superior organization and the hierarchy of every organization in Workday. Additionally, this table provides team data such as team name, manager, team member count and date of inactivation for each organization.

The grain of this table is one row per Team ID per event.

<details>
<summary markdown="span">Query - Total count of active organizations</summary>

```sql
SELECT
  COUNT(*)
FROM
  PREP.SENSITIVE.DIM_TEAM
WHERE
  is_current = TRUE AND is_team_active = TRUE
```

</details>

<details>
<summary markdown="span">Query - Count of current team members </summary>

```sql
SELECT
  SUM(team_members_count)
FROM
  PREP.SENSITIVE.DIM_TEAM
WHERE
  is_current = TRUE AND is_team_active = TRUE
```

</details>

### fct_team_member_position

**fct_team_member_position** contains team members' job history, including any changes in their job profile or team. It provides a history of the team member's job profile in detail. The grain of this table is one row per employee_id, team_id, effective_date and date_time_initiated combination. It includes all team members, regardless of their current employment status.


<details>
<summary markdown="span">Query - Number of employees per entity</summary>

*Entity is a masked field, only team members with the analyst_people role in Snowflake can query it*

```sql
SELECT
  entity,
  COUNT(*)
FROM
  PROD.COMMON.FCT_TEAM_MEMBER_POSITION
WHERE
  is_current = true
GROUP BY 1
```

</details>


<details>
<summary markdown="span">Query - Number of employees per position/role </summary>

```sql
SELECT
  position,
  COUNT(*)
FROM
  PROD.COMMON.FCT_TEAM_MEMBER_POSITION
WHERE
  is_position_active
    AND is_current
GROUP BY 1
```

</details>

<details>
<summary markdown="span">Query - Number of employees with a specific job specialty </summary>


```sql
SELECT
  COUNT(*)
FROM
  PROD.COMMON.FCT_TEAM_MEMBER_POSITION
WHERE
  (job_specialty_single LIKE '%ModelOps%' OR job_specialty_multi LIKE '%ModelOps%')
    AND is_current;
```

</details>

<details>
<summary markdown="span">Query - Team members with position = backend engineers in France </summary>

*Entity is a masked field, only team members with the `analyst_people` role in Snowflake can query it*


```sql
SELECT
  *
FROM
  PROD.COMMON.FCT_TEAM_MEMBER_POSITION
WHERE
  position LIKE '%Backend Engineer%'
    AND entity = 'GitLab France S.A.S.'
     AND is_current
```

</details>

## fct_team_member_status

This table contains termination reason, type, exit impact and employment status. Sensitive columns are masked and only visible by team members with the `analyst_people` role assigned in Snowflake. **This table contains only past terminations.**

The grain of this table is one row per employee_id, employment_status and status_effective_date combination.

<details>
<summary markdown="span"> Number of employees whose departure caused an impact to the company </summary>

*Exit impact is a masked field, only team members with the `analyst_people` role in Snowflake can query it*


```sql
SELECT
  COUNT(*)
FROM
  PROD.COMMON.fct_team_member_status
WHERE
  exit_impact = 'Yes';
```

</details>

<details>
<summary markdown="span"> Number of employees whose departure was voluntary </summary>

*Termination type is a masked field, only team members with the `analyst_people` role in Snowflake can query it*


```sql
SELECT
  COUNT(*)
FROM
  PROD.COMMON.fct_team_member_status
WHERE
  termination_type = 'Resignation (Voluntary)';
```

</details>

<details>
<summary markdown="span"> Termination reason provided by employees whose departure was voluntary and caused an exit impact </summary>

*Termination type, termination reason and exit impact are masked fields, only team members with the analyst_people role in Snowflake can query it*


```sql
SELECT
  DISTINCT termination_reason
FROM
  PROD.COMMON.fct_team_member_status
WHERE
  termination_type = 'Resignation (Voluntary)'
    AND exit_impact = 'Yes';

```

</details>

### fct_team_status

This table is a derived fact from `fct_team_member_status` and `fct_team_member_position`. Sensitive columns are masked and only visible by team members with the `analyst_people` role assigned in Snowflake. This table only contains one change in the team member's position per effective date, as opposed to the `fct_team_member_position` table which contains all changes to a team member's position profile, regardless of whether they became effective or not. This table doesn't include future hires, only people working at GitLab as of today's date.


<details>
<summary markdown="span">Query - Active team members with position = backend engineers in France  </summary>

*Entity is a masked field, only team members with the `analyst_people` role in Snowflake can query it*


```sql
SELECT
  *
FROM
  PROD.COMMON.fct_team_status
WHERE
  position LIKE '%Backend Engineer%'
    AND entity = 'GitLab France S.A.S.'
      AND employment_status = 'Active'
        AND is_current
```

</details>

<summary markdown="span">Query - Number of resignations (voluntary) per team </summary>

*Termination type and termination reason are masked fields, only team members with the `analyst_people` role in Snowflake can query it*


```sql
SELECT
  team_id,
  COUNT(*)
FROM
  PROD.COMMON.fct_team_status
WHERE
    employment_status = 'Terminated'
       AND termination_type = 'Resignation (Voluntary)'
           AND is_current
GROUP BY 1;
```

</details>

<summary markdown="span">Query - Number of regresignations (voluntary vs involuntary) per management level </summary>

*Termination type and termination reason are masked fields, only team members with the `analyst_people` role in Snowflake can query it*


```sql
SELECT
  management_level, COUNT(*)
FROM
  PROD.COMMON.fct_team_status
WHERE
    employment_status = 'Terminated'
       AND termination_type = 'Resignation (Voluntary)'
          AND management_level != 'Individual Contributor'
           AND is_current
GROUP BY 1;
```

</details>

### mart_team_member_directory

This table is a derived fact from `fct_team_member_position` and `dim_team`. Sensitive columns are masked and only visible by team members with the `analyst_people` role assigned in Snowflake. This table will become a replacement of the legacy tables `employee_directory_*` once all the BambooHR data has been included in the upstream tables.

The grain of this table is one row per employee per valid_from/valid_to combination.


<summary markdown="span">Average location factor by division</summary>

```sql
SELECT
    directory.division,
    DATE_TRUNC('month', dates.date_actual) AS month,
    ROUND(AVG(location_factors.location_factor),2) AS average_location_factor
  FROM PROD.COMMON_MART_PEOPLE.MART_TEAM_MEMBER_DIRECTORY AS directory
  INNER JOIN PROD.LEGACY.DATE_DETAILS AS dates
    ON dates.date_actual >= directory.valid_from
        AND dates.date_actual < directory.valid_to
  LEFT JOIN PREP.SENSITIVE.EMPLOYEE_LOCATION_FACTOR_SNAPSHOTS AS location_factors
    ON REPLACE(location_factors.bamboo_employee_number,',','') = directory.employee_id
        AND NOT (directory.valid_to <= location_factors.valid_from
          OR directory.valid_from >= location_factors.valid_to)
  WHERE location_factors.location_factor IS NOT NULL
      AND directory.is_current AND directory.is_current_team_member
  GROUP BY 1, 2
```

</details>

<summary markdown="span">Tenure bucket per team member</summary>

```sql
SELECT
  employee_id,
  hire_date,
  DATEDIFF(day, hire_date, CURRENT_DATE())           AS tenure_in_days,
  CASE WHEN tenure_in_days BETWEEN 0 AND 183 THEN '0 - 6 Months'
       WHEN tenure_in_days BETWEEN 184 AND 365 THEN '6 - 12 Months'
       WHEN tenure_in_days BETWEEN 366 AND 1095 THEN '1 - 3 Years'
       WHEN tenure_in_days BETWEEN 1096 AND 2190 THEN '4 - 6 Years'
       WHEN tenure_in_days > 2191 THEN '6+ Years'
       ELSE null
   END                                                  AS tenure_bucketed
FROM PROD.COMMON_MART_PEOPLE.MART_TEAM_MEMBER_DIRECTORY
WHERE is_current AND is_current_team_member
```

</details>

## Legacy and Other Data Models

Legacy models are models we will be transitioning from at some point but are still being used for reporting.

### Legacy Workday/BambooHR Data Models

<details>
<summary markdown="span">Click to expand</summary>

| Database | Schema | Table Name | Data Grain | Description | Notes |
| --- | --- | --- | --- | --- | --- |
| prod | legacy | [employee_directory_analysis](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.employee_directory_analysis) | `employee_id` by `date_actual` | Gives the current state of the employees at GitLab at any point of time. This is the model to use for headcount, team size, or any people-related analysis for employees. This has current and past employees, as well as their department, division, and cost center and hire/termination dates. | |
| prod | legacy | [bamboohr_rpt_headcount_aggregation](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.bamboohr_rpt_headcount_aggregation) | `department`, `division`, `eeoc_value` | This report creates out a headcount report from the bamboohr_headcount_intermediate to be used for Sisense dashboards for each month. | The division reporting is based on current division used. |
| prep | sensitive | [employee_directory_intermediate](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.employee_directory_intermediate) | `employee_id` by `date_actual` | INCLUDES SENSITIVE INFORMATION. The master collection of all info about GitLab employees for their latest position. | |
| prep | sensitive | [bamboohr_employment_status_xf](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.bamboohr_employment_status_xf) | `employee_id` by `valid_from_date` | This model provides a transaction record of an employee's status changes (i.e. active, leave, termed). It helps identify when an employee is re-hired, and provides termination type | |
| prep | sensitive | [bamboohr_promotions_xf](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.bamboohr_promotions_xf) | `employee_id` by `promotion_date` and `compensation_sequence` | This model identifies all individuals that were promoted and the compensation change associated to the promotion. The total compensation change is equal to the change in compensation (from bamboohr_compensation model) times the pay frequency and currency conversion at time of promotion + change in OTE(USD) at time of promotion. In the case the team member is hourly, we use the bamboohr_currency_conversion table. | |
| prep | sensitive | [bamboohr_id_employee_number_mapping](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.bamboohr_id_employee_number_mapping) | `employee_id` | This model is the canonical source mapping bamboo employee numbers with employee IDs. It includes all employees for all time. The model also captures demographic information, and removes test accounts. | |
| prep | sensitive | [bamboohr_separations](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.bamboohr_separations) | `employee_id` | Provides a report of all separated team members. | |
| prep | sensitive | [workday_terminations](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.workday_terminations) | `employee_id` | Provides the termination reason, and exit impact to allow the People Analytics team to accurately report on termination data | |
| prep | workday | [blended_directory_source](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.blended_directory_source) | `employee_id` by `uploaded_at` and `source_system` | Daily upload of employee data used for downstream models. | Helpful source for auditing any data issues in Snowflake |

</details>

### Greenhouse Data Models

<details>
<summary markdown="span">Click to expand</summary>

| Database | Schema | Table Name | Data Grain | Description | Notes |
| --- | --- | --- | --- | --- | --- |
| prod | workspace_people | [rpt_hires](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.rpt_hires) | `application_id` | This is a report specifically for talent acquisition and counts accepted offers as hires. |  |
| prep | greenhouse | [greenhouse_application_stages_source](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.greenhouse_application_stages_source) | `application_id` by `stage_id` and `stage_entered_on` | This table is Historical activity of all stages an application can be in Each row represents a stage that an application can be in, and the timestamp that the application entered and exited the stage Things to note: This table contains a row for each stage that an application can be in (taken from the job that the application is on). Thus, there may be rows for stages that an application has yet to reach, or will not reach (if the application was rejected). |  |
| prep | sensitive | [greenhouse_recruiting_xf](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.greenhouse_recruiting_xf) | `application_id` | This is shows all applications submitted and ties in offer data, greenhouse department (the associated division), and source data to be in 1 place. |  |

</details>
