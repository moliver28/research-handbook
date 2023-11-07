---

title: "Tableau Developer Guide"
description: "Giltab's Tableau Developer guide"
---







---

## Embedding in the Handbook

In order for views from workbooks to be embedded and viewable in the handbook, public or internal, the workbook and their data sources must be prepared in a specific way. To be embedded in the public handbook the workbook and relevant datasource must be copied from the [Internal GitLab Tableau](https://10az.online.tableau.com/#/site/gitlab) site to the [Public GitLab Tableau](https://us-west-2b.online.tableau.com/#/site/gitlabpublic) site. To facilitate correct viewing of embedded views and the migration of content to the public site, workbooks must be set up in a specific way and be in a specific location.

### Workbook Set Up

For embedding in the handbook, views will embed better than dashboards will, so each view that is meant to be embedded should be designed to function without user selected inputs.  Filters and parameters can be preset during the embedding process, but will not be changeable by the viewer. Additionally, the view must meet the following criteria:

  - The view cannot be hidden
  - For embedding in the public handbook each datasource must connect to Snowflake with a Data Team Service Account username and password or use an extract

### Workbook Location

Each view that is meant to be embedded in the public handbook must be published in the `Public` project located within the respective Functional Team project.  This will ensure that the workbook, and their datasources are copied to the Public GitLab Tableau site.  Views that are meant to be embedded on the internal site do not need to be in a specific project, but should still meet the set up guidelines.


## Row Level Security

To use Row Level Security within Tableau the developer will need to use an entitlement table, found in `prod.entitlement`.  The entitlement table will be joined with the appropriate source table using the Tableau Data Modeling interface; this ensures that the tables can be properly filtered at query time and will allow for extracts to properly implement row level security.  Once the entitlement table is joined to its corresponding source table, a data source filter needs to be added to ensure the rows are correctly filtered to the current user.

### Example

Find the correct entitlement table for the table you are using.  The entitlement table should be named similar to the table you wish to join it to.

![](images/find_entitlemnet.png)

Perform a direct inner join, not a relationship, between the source table and the entitlement table.

![](images/open_table_for_join.png)

![](images/join_entitlement_table.png)


Create a Data Source filter using the `USERNAME()` function and the `tableau_user` field in the entitlement table.  This is the step that will ensure that only rows visible to the current user will be retrieved.

![](images/create_filter_filed.png)

![](images/create_filter_calc.png)

![](images/data_source_filter.png)


## Guidelines for Publishing Extracts to Production and Ad-Hoc Projects

1. ~1 GB Storage Limit per published extract. This is ~10 million rows of data.  
2. Scheduled extract refreshes should run between 18:00 and 05:00 UTC
3. Extracts are a performance management tool and should not be used by default. Live Connections should be the default selection and Extracts should only be considered when dashboard performance becomes an issue (i.e. most visualizations still aren't loading after one minute and performance optimizers have been applied)
4. We currently have 200 GBs of storage on the Tableau Online site and have dedicated 100 GBs of that storage space for extracts
5. After an extract is published to the Production or Ad-Hoc Project, the extract in the development folder should be deleted
6. Extracts built directly from tables or marts can be published as a Datasource
7. Extracts built with Custom SQL must be embedded in a workbook.


