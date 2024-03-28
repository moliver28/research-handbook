---
title: "Engineering Dashboarding and Metrics"
---

## Engineering Analytics Dashboard Inventory

Several dashboards have been published to the Engineering project in the Tableau environment. Below is a brief overview of some of the dashboards created and where you can find them.

### Centralized Engineering Metrics

Please refer to our Centralized Engineering Metrics page [here](https://handbook.gitlab.com/handbook/engineering/metrics/dashboards/).

### Tableau Dashboards

You can find published dashboards in [Ad-hoc/Development/General](https://10az.online.tableau.com/#/site/gitlab/projects/367746). These dashboards are safe for general use by the Tableau User population here at GitLab.

### Dashboarding Guidelines

*  Each KPI chart is a timeseries chart.
    - The `URL` property is only used to link to a chart until it is an embedded Sisense chart.
    - Use HTML hyperlinks `<a>` in description text if we need to link out to a supporting artifact e.g. Epics or Issues.
    - Use Purple bars to denote values.
    - Use a Red stepped-line for timeseries target.
    - Directional targets will be used:
      - `Above ...`
      - `Below ...`
      - `At ...`
      - `At or above ...`
      - `At or below ...`
    - Optional: Use a Black line for rolling average.
    - Optional: Use a Gray line for supporting indicator in the background.
*  For bar charts, the current month should be Green and subsequent months Purple. Highlighting the current month in a different color helps to indicate that data for the current month is not complete.
    - This can be quickly implemented via a `case` `when` clause in Sisense. Example below:
    - `CASE WHEN date_month < date_trunc('month',current_date) THEN MEDIAN(open_age_in_days) ELSE NULL END AS "Historical Median Open Days",`
    - `CASE WHEN date_month = date_trunc('month',current_date) THEN MEDIAN(open_age_in_days) ELSE NULL END AS "Current Median Open Days",`
* List a DRI for the KPI/PI if the metric is being delegated by the VP of that Engineering department.
*  Each dashboard for KPIs should consider the following settings to ensure timely updates:
    - [Setting up auto-refresh](/handbook/business-technology/data-team/platform/periscope/#sts=Requesting%20Automatic%20Dashboard%20Refresh) for a frequency that fits the KPI
    - [Excluding Dashboards from Auto Archive](https://dtdocs.sisense.com/article/auto-archive)
*  Each KPI should have a standalone dashboard with a single chart representing the KPI and a text box with a link back to the handbook definition.
    - In Sisense, [create a shared dashboard link](https://dtdocs.sisense.com/article/share-dashboards) to get the shared dashboard ID.
    - In Sisense, [use the Share Link action of the chart](https://dtdocs.sisense.com/article/chart-options#ShareLink) to get the chart (widget_id) and the dashboard ID.
    - Add the `shared_dashboard`, `chart` , and the `dashboard` key-value pairs to the [corresponding Performance Indicators data file](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/performance_indicators/) under the `sisense_data` property
    - Note: When we move to Tableau, we will have updated guidelines on where to create new charts
*  Multi-series performance indicators should consider the following guidelines:
    * If series are mutually exclusive, use stacked bars for each series with a monthly time series
    * If series are not mutually exclusive, use grouped bars for each series with a monthly time series
    * Do not graph any targets in the chart.
    * Current month styling guidelines will not apply
* Tableau has the functionability to create target lines with shaded areas above or below the target line. For charts with a designated target, please create a reference line.
*  Avoid `:` in strings as it's an important character in YAML and will confuse the data parsing process. Put the string in "quotes" if you really need to use a `:`

## Metric definitions

Taken from https://handbook.gitlab.com/handbook/engineering/metrics/#metrics-list

### Merge Request Rate

Merge Request (MR) Rate is a measure of productivity and efficiency. The numerator is a collection of merge requests to a set of projects.  The denominator is a collection of people based on the `job title specialty` field in Workday. Both are tracked over time (usually monthly). The [stages.yml file](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/stages.yml) is the SSOT for group names. We rely on a mapping between the group name in this file to the job title specialty field in Workday. A mismatch between the two would cause team members or MRs not to be counted.

In April 2023, there was an internal audit of the job title specialty field done by managers and directors. MR Rate data prior to this date may report inaccuracies due to missing or incorrect job title specialities that were corrected in the audit.

You can use [this MR Rate troubleshooting dashboard](https://app.periscopedata.com/app/gitlab/1138219/MR-Rate-Troubleshooting) to check the number of team members that are counted each month. If the monthly team member count is less than expected, refer to the table to see which team member is missing.

To update the job title speciality field, please refer to [the guidelines](/handbook/people-group/promotions-transfers/#for-people-connect-processing-job-information-change-requests).

#### Examples

- Team "Apples" consists of 5 members as defined in the `job title specialty` field in Workday. In the past month, there were 20 merged MRs with the `group::Apples` label. Team A's MR Rate for that month would be: (20 / 5) = 4.
- Team "Oranges" consists of 8 members as defined in the `job title specialty` field in Workday. In the past month, there were 20 merged MRs with the `group::Orange` label. Since the `job title specialty` does not match the group label (an extra `s` in the `job title specialty` field), we are unable to map the MRs back to the respective groups. We recommend either 1) updating the group label and [stages.yml file](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/stages.yml) or 2) updating the Workday value.

Group MR Rate can be found [here](https://10az.online.tableau.com/#/site/gitlab/views/DevelopmentEmbeddedDashboard_17017859046500/DevelopmentEmbeddedDashboard) and filtered by group. It can also be queried by department or group using the following SQL:

```sql
SELECT merge_month
, employees
, mrs
, mr_rate
FROM workspace_engineering.merge_request_rate
WHERE group_name=[fill in group name here]
AND granularity_level = 'group'
ORDER BY 1
```

### Work Type Classification

We use the following type labels to classify our Issues and Merge Requests.

The 3 types (Bug, Feature & Maintenance) is key to our report to industry analysts. It is important for GitLab to communicate effort spent into a format that is easily understandable widely in the industry. We provide this [metric](https://app.periscopedata.com/app/gitlab/976817/Merge-Request-Types) to our leadership reporting and improve the accuracy with subtypes categorization. The 3 top level types can be applied without having to apply a sub-category type.

1. `~"type::bug"`: Defects in shipped code and fixes for those defects. Read more about [features vs bugs](/handbook/product/product-processes/#issues).
  - `~"bug::performance"`: Performance defects or response time degradation
  - `~"bug::availability"`: Defects related to GitLab SaaS availability. See [the definition](/handbook/engineering/infrastructure/engineering-productivity/issue-triage/#availability) for more guidance.
  - `~"bug::vulnerability"`: Defects related to Security Vulnerabilities
  - `~"bug::mobile"`: Defects encountered on Mobile Devices
  - `~"bug::functional"`: Functional defects resulting from feature changes
  - `~"bug::ux"`: Unexpected and unintended behavior that is detrimental to the user experience.
  - `~"bug::transient"`: Defects that are transient.
  - _Note:_ **New** documentation or **new** feature flags that relate to `~"type::bug"` are considered `~"type::bug"`.
1. `~"type::feature"`: Effort to deliver new features, feature changes & improvements. Read more about [features vs bugs](/handbook/product/product-processes/#issues).
  - `~"feature::addition"`: The first MVC that gives GitLab users a foundation of new capabilities that were previously unavailable. Includes [good user value, usability, and tests](https://about.gitlab.com/blog/2021/12/01/dont-confuse-these-twelve-shortcuts-with-iteration/). For example, these issues together helped create the first MVC for our Reviewer feature: [Create a Reviewers sidebar widget](https://gitlab.com/gitlab-org/gitlab/-/issues/237921), [Show which reviewers have commented on an MR](https://gitlab.com/gitlab-org/gitlab/-/issues/10294), [Add reviewers to MR form](https://gitlab.com/gitlab-org/gitlab/-/issues/216054), [Increase MR counter on navbar when user is designated as reviewer](https://gitlab.com/gitlab-org/gitlab/-/issues/255102)
  - `~"feature::enhancement"`: Subsequent user-facing improvements that refine the initial MVC by adding additional capabilities that make it more useful. Includes [good user value, usability, and tests](https://about.gitlab.com/blog/2021/12/01/dont-confuse-these-twelve-shortcuts-with-iteration/). For example, these issues enhance the existing Reviewer feature: [Show MRs where user is designated as a Reviewer on the MR list page](https://gitlab.com/gitlab-org/gitlab/-/issues/237922), [Display which approval rules match a given reviewer](https://gitlab.com/gitlab-org/gitlab/-/issues/233736), [Add Reviewers quick action](https://gitlab.com/gitlab-org/gitlab/-/issues/241244)
  - `~"feature::consolidation"`: Merging a feature into an existing feature for simplification. For example, [Workspace project: (Consolidate Groups and Projects)](https://gitlab.com/groups/gitlab-org/-/epics/6473) and [Combine Top Navigation Menu](https://gitlab.com/groups/gitlab-org/-/epics/5645) are good examples of such work.
  - _Note:_ **New** documentation or **new** feature flags that relate to `~"type::feature"` are considered `~"type::feature"`.
1. `~"type::maintenance"`: Upkeeping efforts & catch-up corrective improvements that are not Features nor Bugs. This includes removing or altering feature flags, removing whole features, merge requests that only include new specs or tests, documentation updates/changes (not including new documentation), restructuring for long-term maintainability, stability, reducing technical debt, improving the contributor experience, or upgrading dependencies and packages. For example: [Refactoring the CI YAML config parser](https://gitlab.com/gitlab-org/gitlab-foss/-/issues/15060), [Updating software versions in our tech stack](https://gitlab.com/gitlab-org/ci-cd/codequality/-/issues/22), [Recalculating UUIDs for vulnerabilities using UUIDv5](https://gitlab.com/gitlab-org/gitlab/-/issues/212322)
  - `~"maintenance::refactor"`: Simplifying or restructuring existing code or documentation
  - `~"maintenance::removal"`: Deprecation and removal of a functionality when it's no longer needed.
  - `~"maintenance::dependency"`: Dependency updates and their version upgrades
  - `~"maintenance::scalability"`: Modification to improve the scalability of GitLab that is not a user facing change or performance improvement. For example changing a column from INT to BIGINT.
  - `~"maintenance::usability"`: General improvements to product usability that are unrelated to feature prioritization. For example, [UI component](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/80903) and [UI text](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/80457) updates for consistency with Pajamas and [usability improvements](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/79888).
  - `~"maintenance::test-gap"`: Test coverage improvements that were not included in feature prioritization.
  - `~"maintenance::pipelines"`: Pipeline related changes.
  - `~"maintenance::workflow"`: Improvements of the engineering tooling like Danger, RuboCop, linters, issue templates, etc.
  - `~"maintenance::performance"`: Non-defect performance improvements such as load time for a specific page or component, or run time for a specific process.
  - `~"maintenance::release"`: Release management related changes.


If these labels are missing, it will be tracked in the `undefined` bucket instead.
The Engineering Manager for each team is ultimately responsible for ensuring that these labels are set correctly. If you do not feel the purpose of this issue matches one of the types, you may apply the `~type::ignore` label to exclude it from type tracking metrics and future prompts, this can be good for issues marked `~Planning Issue`.

Classifying work types may require context. All work to deliver a feature with security, performance and quality meeting the [definition of done](https://docs.gitlab.com/ee/development/contributing/merge_request_workflow.html#mr-merge) should be classified as feature work. For example if you are anticipating the performance needs of a feature and implement an application limit as part of the introduction of that feature it should be classified as `feature:addition`. If you discovered an issue scaling an existing feature and implemented an application limit that issue would likely start as a bug and the associated MR would be classified as `bug:performance`.

### Type labels on merged MRs

As of %16.7, with certain [internal projects](https://gitlab.com/gitlab-com/Product/-/issues/12779), type labels are locked once an associated MR is merged. More details can be found in the [feature implementation issue](https://gitlab.com/gitlab-org/gitlab/-/issues/408676).

### Spike work

Large efforts will occasionally undergo a spike to identify & research technical approaches to complete the work. Spike efforts shall be classified with the following guidelines:

1. Classifying the spike based on type of work that the spike will result in. For example:
   - A spike to enhance a feature should be classified as `~"feature::enhancement"` and `~"type::feature"`
   - A spike to update dependencies, upgrade versions of underlying libraries should be classified as `~"maintenance::dependency"` and `~"type::maintenance"`
1. If the spike will result in multiple types of work, choose the type that is of the majority of the resulting work (e.g. more than half).

### Additional guidance

#### `~"Community contribution"`

`~"Community contribution"` was intended to track community contributions as a top-level type, but it's now only a facet label and a merge request should always get a proper type label set in addition.

Community contributions are welcome in all areas of GitLab, so any type label can be set on `~"Community contribution"` merge requests.

#### `~"security"`

`~"security"` was intended to track security-related merge requests as a top-level type, but it's now only a facet label and a merge request should always get a proper type label set in addition.

This guidance may be helpful if you are wondering the go-forward type label based on your use case for applying `~"security"`:

- `~"type::feature"` for new security features that aren't fixing an existing vulnerability
- `~"type::bug"` for any other security changes

#### `~"documentation"`

`~"documentation"` was intended to track documentation-only merge requests as a top-level type, but it's now only a facet label and a merge request should always get a proper type label set in addition.

This guidance may be helpful if you are wondering the go-forward type label based on your use case for applying `~"documentation"`:

- `~"type::feature"` for new feature documentation (this type would usually be already set on merge requests that introduce a new feature)
- `~"type::maintenance"` for any other documentation changes

#### `~"backstage"`

`~"backstage"` was intended to be changes that were done to keep product development running smoothly. Over time, `~"backstage"` was also being used for pre-feature work and has become unclear and confusing. `~"backstage"` was deprecated as part of <https://gitlab.com/gitlab-org/quality/team-tasks/-/issues/488>. This will be removed with <https://gitlab.com/gitlab-org/quality/triage-ops/-/issues/483>.

This guidance may be helpful if you are wondering the go-forward type label based on your use case for applying `~"backstage"`:

- `~"type::maintenance"`
  - for industry standard and refactoring changes such as: `~"technical debt"`, `~"railsx.y"`, `~"Architecture Decision"`, non-`~"security"` `~"dependency update"`
  - for addition or updates to specs for existing GitLab features
- `~"type::feature"`
  - and `~"feature::addition"` for all changes related to the release of a new feature
  - and `~"feature::enhancement"` for user-facing improvements that refine the initial MVC to make it more useful and usable.
- `~"maintenance::workflow"` for changes to engineering workflows such as `~"Danger bot"`, `~"static analysis"`, release tooling, Docs tooling changes
- `~"maintenance::pipelines"` for changes to project pipeline configurations

### Stage and Group labels

In the spirit of "Everyone can Contribute" it's natural that members in a group will contribute to another group.

We allow flexibility where the parent `devops::xxx` and child `group::xxx` label may not match. For example:
* In the case where labelling was corrected by a human.
* When working on shared `frontend`, `backend` components or `type::tooling` work that spans multiple groups.

If a contribution happens across groups, we leave it to the discretion of the engineering and product manager to change the `group::xxx` label to reflect which group worked on it.
They can also decide if they want to move over the `devops::xxx` as well or keep it to reflect the product area.
The [triage bot](https://gitlab.com/gitlab-org/quality/triage-ops/) automatic labelling will not override existing labels.

## Projects that are part of the product

In the MR Rate and Volume of MR calculations, we consider MRs from projects that contributes to the overall product efforts.

The current list of projects are identified in the [`gitlab-data/analytics`](https://gitlab.com/gitlab-data/analytics) project for the following system databases:

| System Database | File |
|-----------------|------|
| GitLab.com      | [`projects_part_of_product.csv`](https://gitlab.com/gitlab-data/analytics/blob/master/transform%2Fsnowflake-dbt%2Fdata%2Fprojects_part_of_product.csv) |
| ops.gitlab.net  | [`projects_part_of_product_ops.csv`](https://gitlab.com/gitlab-data/analytics/blob/master/transform%2Fsnowflake-dbt%2Fdata%2Fprojects_part_of_product_ops.csv)


### Updating the list of projects

The guidelines for inclusion in the `is_part_of_product` lists are:

- Included with the product as a part of a GitLab Omnibus or Cloud Native installation
- Support product development efforts
- Support the delivery and release process to GitLab SaaS

Follow these steps to request a new project to be tracked:

1. Create a merge request to the GitLab.com or ops.gitlab.net project list from above.
2. Assign the merge request to the [Engineering Productivity team](/handbook/engineering/infrastructure/engineering-productivity/#team-members) Engineering Manager.
3. The Manager of the Engineering Productivity team will work with the [Engineering Analytics Team](/handbook/engineering/quality/engineering-analytics/#counterpart-assignments) to determine the changes to MR Rate metrics and provide validation for the projects.
4. The [Director of Engineering Productivity](https://gitlab.com/yanguo1) is the DRI to approve and merge the list of projects.

There is no need to remove archived projects from the `is_part_of_product` list. Removal of projects will remove historical merge requests from metrics and reduce Merge Request rates.

Please reach out to a member of the [Engineering Productivity team](/handbook/engineering/infrastructure/engineering-productivity/) if more assistance is needed
