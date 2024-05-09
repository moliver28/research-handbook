---
title: "Data Guide to People Data Analysis"
---

## Objectives for this page

This handbook page provides an overview of data definitions and data models used by the People Analytics team. Use this page for clarification on terminology, calculations, or models that use People data. If you have any questions please don't hesitate to reach out to someone from the team for help.

## Helpful places to start

- [DBT Docs](https://dbt.gitlabdata.com/#!/overview) - This resource contains comprehensive documentation on all available dbt models. This is a great starting point to understanding our models. For specific People Models, please reference the **Commonly Used Data Models** section below for a starting point.
- [Definitive guides to data subject areas](/handbook/business-technology/data-team/data-catalog/) managed by the Data team.
- [Documentation on data pipelines](/handbook/business-technology/data-team/platform/pipelines/) for the technically curious analyst. This page goes into each data source and extraction details.
- [People Group Tech Stack Guide]({{< ref "tech-stack-guide-workday" >}}) for overview of all the integrations that go into and out of our HR systems and all the tools we use.

## People Group Data Dictionary

### Employment Data
Data pertaining to the worker and employment at GitLab once hired

<details><summary>Click to expand</summary>

| Name | Description | Calculation | Is Sensitive |
|---|---|---|---|
| Team Member | A person that worked for GitLab at any point in time, has an employee id in one of our Human Resource Management Systems (HRMS), and is not a temporary (contingent) worker or intern |  |  |
| Employee ID | Unique ID assigned in our HRMS upon hire to track team member's employment with GitLab |  | Yes |
| Hire Date | The first day of employment with GitLab as a team member |  |  |
| Termination Date | The first day a team member is no longer employed with GitLab as a team member | termination effective date in HRMS + 1 day | Yes, if future-dated |
| [Employee Type](/handbook/people-group/employment-solutions/#team-member-types-at-gitlab) | The employment type for a team member's primary position. We typically exclude "Consultants" and "Interns" from reporting |  |  |
| [Company / Entity](/handbook/people-group/employment-solutions/#gitlab-entities-and-branches) | Company used to employ or contract team members that is location-specific. These can be in the form of entities or professional Employer Organizations (PEO) |  |  |
| [Termination Type](/handbook/people-group/offboarding/) | Business process reason category associated with the termination business process. Can be either Voluntary or Involuntary |  | Yes |
| [Exit Impact](/handbook/people-group/offboarding/#offboarding:~:text=Regrettable%3A%20The%20team,or%20performance%20concerns.) | If worker is specified as regrettable termination on the termination transaction they are considered a "regrettable" termination. Otherwise they are considered a "non-regrettable" termination |  | Yes |
| Headcount | The total number of team members employed at GitLab on a particular date |  |  |
| Begin Headcount | Used for Average Headcount calculation. The number of team members active at the beginning of each period in a date range. This is usually the first day of the month. |  |  |
| End Headcount | Used for Average Headcount calculation. The number of team members active at the end of each period in date range. This is usually the last day of the month. |  |  |
| Average Headcount | The average number of team members in a specified date range. This is used to standardize rates across business areas. | (sum of all Begin Counts in period / # of periods observed + sum of all End Counts in period / # of periods observed) / 2 |  |
| Net Growth | Metric to show growth based only on the difference between hires and terminations in a selected period | # of Hires in period - # of Terminations in period |  |
| Turnover / Attrition | The percentage of employees who leave an organisation over a specific period, typically on a rolling 12 month basis | # of Terminations / Average Headcount | Yes, Internal Only |
| Retention | The percentage of employees that remain with an organisation over a given period. | 1 - Turnover | Yes, Internal Only |
| Voluntary Turnover | Portion of turnover that is Voluntary termination type | # of Voluntary Terminations / Average Headcount | Yes, Internal Only |
| Involuntary Turnover | Portion of turnover that is Involuntary termination type | # of Involuntary Terminations / Average Headcount | Yes, Internal Only |
| Regrettable Turnover | Portion of turnover that is regrettable terminations | # of Regrettable Terminations / Average Headcount | Yes, Internal Only |
| Non-Regrettable Turnover | Portion of turnover that is non-regrettable terminations | # of Non-Regrettable Terminations / Average Headcount | Yes, Internal Only |

</details>

### Diversity, Inclusion, and Belonging (DIB)
Data pertaining to the demographics of a worker and how they choose to identify

<details><summary>Click to expand</summary>

| Name | Description | Calculation | Is Sensitive |
|---|---|---|---|
| [Underrepresented Group (URG)](/handbook/company/culture/inclusion/#examples-of-select-underrepresented-groups) | While there are many types of underrepresented groups (URGs), in reporting URGs are based on ethnicity and we consider any ethnicity that is not White, Asian, or Did Not Identify as URG. This metric is now measured globally instead of country-specific. |  | Yes |
| Non-URG | In reporting, Non-URG is considered White or Asian ethnicities |  | Yes |
| Gender | The gender of the worker which is used in reporting. Can currently be marked as Male, Female or left unindentified |  | Yes |
| Gender Identity | The gender identification of the individual. Examples include transgender, cisgender, genderfluid, genderqueer, non-binary |  | Yes |

</details>

### Position
Information related to the position a team member holds at GitLab

<details><summary>Click to Expand</summary>

| Name | Description | Calculation | Is Sensitive |
|---|---|---|---|
| Management Level | The management level for the job profile. |  |  |
| Leadership | A grouping of management levels that are director or higher (Director, Vice President, Leader, Chief Executive Officer) |  |  |
| Management | A grouping of management levels that are manager or higher (Manager, Director, Vice President, Leader, Chief Executive Officer) |  |  |
| [Job Grade](/handbook/total-rewards/compensation/compensation-calculator/#gitlab-job-grades) | The job level for the job profile. |  | Yes |
| People Managers | Any team members that have direct reports assigned to them in Workday |  |  |
| [Layers](/handbook/company/structure/#layers) | The number of layers between a team member and the CEO where layer 1 is the CEO |  |  |
| Direct Reports | The group of team members that report to a people manager |  |  |
| [Span of Control](/handbook/company/structure/#management-group) | The number of direct reports that are assigned to a people manager |  |  |
| Average Span of Control | The number of direct reports on average assigned to people managers | # of Direct Reports / # of People Managers |  |
| [Location Factor](/handbook/total-rewards/compensation/compensation-calculator/#location-factor) | Location Factor is calculated using multiple data sources to conduct a market analysis of compensation rates globally: Economic Research Institute (ERI), Comptryx, Radford. This is not a cost of living analysis, but instead a cost of labor market evaluation compared to San Francisco |  | Yes |
| [Compa-Ratio](/handbook/total-rewards/compensation/compensation-calculator/#compa-ratio) | Compa-ratio is a measurement of pay that compares an employee's salary to the median compensation for similar positions within a company or a target market. | Divide the employee's salary by the market rate compensation midpoint | Yes |
| [Discretionary Bonus](/handbook/incentives/#discretionary-bonuses) | An additional bonus amount that is awarded at the discretion of the company management. It is separate from standard bonus plans and is not based on specific performance metrics. Discretionary bonuses allow companies flexibility to reward standout employees. |  |  |
| Discretionary Bonus Rate | Percentage of Team members that receive a discretionary bonus from the population. For KPIs this is reported as a rolling 3 month average. | # of Discretionary Bonuses / Average Headcount |  |
| [Promotion](/handbook/people-group/promotions-transfers/#promotions) | A promotion is counted if the business process type submitted in our HRMS is "Promote Employee Inbound" |  |  |
| [Lateral Transfer](/handbook/people-group/promotions-transfers/) | A lateral move is counted if the business process category submitted in our HRMS is "Lateral Move" and there was a change in job title |  |  |
| [Internal Mobility Rate](/handbook/people-group/promotions-transfers/#internal-mobility) | Internal Mobility Rate refers to the frequency at which employees change positions within an organization, indicating the internal movement and career progression opportunities available to staff, as well as the company’s ability to retain talent by offering growth paths. | # Lateral Transfers and Promotions / Average Headcount |  |

</details>

### Paid Time Off and Absence
Information related to Paid Time Off and Absence

<details><summary>Click to expand</summary>

| Name | Description | Calculation | Is Sensitive |
|---|---|---|---|
| Paid Time Off (PTO) | Time off that is submitted and approved in the Absence Management System, does not fall on a weekend, does not exceed 25 days in a single request, and excludes PTO types like Extended Leave, CEO Shadow Program, and Conference. |  |  |
| Out Sick - Extended PTO Type | PTO submission that is listed as "Out Sick" but is for 5+ days so is reclassified in reporting |  |  |
| Average PTO Days | Average number of days in period that are PTO days. This calculation normalizes PTO usage for all team members to account for those who have not worked all days in the reporting period. | (# PTO Days Used / # Days Worked) * # Days in Period |  |
| Full-Cycle Tenure Group | Team members who have worked all days in a reporting period so normalized PTO matches actual PTO used |  |  |
| In/Out Tenure Group | Team members who have not worked all days in a reporting period so normalized PTO will reflect number of days used for the full period based on actual usage in that period |  |  |

</details>

### Recruiting and Onboarding
Data pertaining to the Onboarding process and Recruiting metrics used by Talent Acquisition

<details><summary>Click to expand</summary>

| Name | Description | Calculation | Is Sensitive |
|---|---|---|---|
| Onboarding Satisfaction (OSAT) Score | Average rating on a 1-5 scale for all questions in the Week One onboarding survey in Culture Amp. Usually calculated as a rolling 3-month average. | (Average of All Month 1 Onboarding Responses + Average of All Month 2 Onboarding Responses + Average of All Month 3 Onboarding Responses) / 3 |  |
| Starts | External applicants who have accepted an offer with GitLab and have a start date scheduled in the HRMS |  |  |
| External Applicants | Applicants whose source is not "Internal Applicant". They are not employed through GitLab at the time when the application is submitted |  |  |
| Internal Applicants | Applicants whose source is "Internal Applicant". They are employed through GitLab at the time when the application is submitted |  |  |
| Time to Hire / Candidate Throughput | Days between the application submitted date and the date an application moved in the "Hire" stage if they also have an accepted offer. |  |  |
| Verbal Accepted Offer % | Applications that moved into the Offer stage and accepted / # Moved into the Offer stage and resolved | # of Applications moved into Offer Stage and Accepted Offers / # of Applications moved into the Offer Stage and Accepted or Rejected Offers |  |
| Written Offer Accept % | Offers that resolved in a date range. # of accepted offers / # of resolved offers. | # of Applications that Accepted Offers / # of Applications that Accepted or Rejected Offers |  |
| Internal Mobility Rate % | Offers that resolved in a date range. # of accepted offers from internal applicants / # of accepted offers | # of Internal Applications that Accepted Offers / # of Applications that Accepted Offers |  |
| Source Rate | % of applications submitted in a date range that were sourced (Sourcing Strategy is "Prospecting" and Source is not "SocialReferral") and candidate was from a diverse source (based on candidate tags) as a percentage of all sourced applications | # of Sourced Applications submitted with Diverse Candidate Tags / # of Sourced Applications |  |
| Source Mix | % of accepted offers by external sourcing strategies (not internal applicants or acquisitions) with a resolved date in date range | # of External Applications with Accepted Offers in Specific Sourcing Strategy / # of External Applications with Accepted Offers |  |
| Conversion Rate | # of Applications submitted in a date range and what stages of the recruiting process that have gone through. It is the flow of applications between stages of the recruiting process showing what percent of applications from the previous step move into the next step (ex- if 10 applications were in Initial Interview and 2 made it to Team Interview phase, conversion rate for the Initial Interview would be 20%) | # of Applications in Second Stage / # of Applications in First Stage |  |
| Pending Offers | Offers that have been sent but not accepted or rejected |  |  |
| Time to Fill | Days between an Opening opened date and closed date for Openings that closed in a specified date range and list a hired application |  |  |
| Time to Start | Days between an Opening opened date and the expected start date for a hired application |  |  |
| Requisition Aging | Average days that Openings were open at any point in a date range. This calculation averages days open for all days in the reporting period. |  |  |

</details>

### Systems
Systems used by the People Group

<details><summary>Click to expand</summary>

| Name | Description | Calculation | Is Sensitive |
|---|---|---|---|
| [R (Language)](/handbook/business-technology/data-team/platform/rstudio/)   | A programming language and software environment used for statistical analysis, graphical representation, and reporting, popular in data analysis and scientific research. |  |  |
| [Tableau](/handbook/business-technology/data-team/platform/tableau/) | Primary data visualization tool at GitLab |  |  |
| [Workday](/handbook/people-group/tech-stack-guide-workday/) | Current Human Resource Management Systems (HRMS) and the SSoT for all team member related data on or after 2022-06-16 |  |  |
| BambooHR | Former Human Resource Management Systems (HRMS) and the SSoT for all team member related data prior to 2022-06-16 |  |  |
| [Greenhouse](/handbook/hiring/greenhouse/) | Current Applicant Tracking System (ATS) at GitLab and the SSOT for all recruiting metrics |  |  |
| Time Off by Deel | Current absence management tool at GitLab integrated with BambooHR. SSoT for time-off related data |  |  |
| Sisense (formerly Periscope) | Former data visualization tool at GitLab |  |  |
| FiveTran | Fivetran is the automated data movement platform moving data out of Workday and into Snowflake |  |  |
| [SnowFlake](/handbook/business-technology/data-team/platform/snowflake/) | Snowflake is our Enterprise Data Warehouse (EDW) and is the core technology in our Enterprise Data Platform. |  |  |
| [Level Up / GitLab University](/handbook/people-group/learning-and-development/level-up/) | Training platform created by Thought Industries for continuing education and career development |  |  |

</details>

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
