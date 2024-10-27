---
title: "Preparing Your MR for Merging"
description: "This handbook page helps you understand what steps you should take to get your MR ready to assign to an analytics engineer and to get it ready to merge."
---
## Steps to Getting Your MR Ready

1. Make sure the template is filled out completely.
2. Build your changes (make sure it succeeds).
3. Grant yourself clones so you can test the data.
4. Test the MR - either in SQL or in Tableau. Make sure it's doing what you think it is.
5. Add a row count if you are updating an existing table.

## Understanding the MR Template

In this section we will break down the "DBT Model Changes" template which is the template you should use for creating new report tables, or updating existing columns in our prep, mart, fact, dimension, or report layers.

Here is a breakdown of the MR template, one section at a time. The numbers on the image relate to text underneath the image which will explain that section. The numbers circled in red indicate sections which typically require action from you (the creator of the MR) for each MR, specifically for report tables.
![MR 1](/static/images/handbook/enterprise-data/platform/tableau/mr-template-1.png)

1. "Closes" refers to the issue that this merge request will close. Typcially in the development lifecycle, an issue will be created to describe work that needs to be done, and then the MR will be created to enact it. Once that MR merges, that issue should be ready to close.

    You may have some use cases that expand outside of this - for example you may create an issue for a change that needs to happen in Tableau, so when the MR gets merged the issue may not be ready to close, because you still have changes to make in Tableau. This is ok, just know that if you list the issue that the MR closes in this section of the template, it will automatically close when the MR gets merged.

2. In the scope section of the template, you need to describe the changes you are making in DBT and why you are making them. It does not need to be lengthy, but you want to use this section to help people who may not be familiar with the work you are doing to be able to quickly understand the "what" and the "why" so that it can be reviewed and merged.
    
    As a tip, you can use GitLab Duo's "Explain Changes" button if it is available to you on the MR. If not, you can copy and paste the changes tab of the MR and ask it to summarize the changes are being made. This may need some editing, but may help you get started.

3. In DBT, tests are little snippets of code which can be added to the code of DBT models which will automatically test the resulting table against certain specific tests. These include common tests such as checking for null values or checking for unique rows.

    You will likely not need to be inputting tests into your tables when you are still new to using DBT. The analytics engineer who is reviewing your MR can make suggestions if they feel a test is relevant. For more information about adding tests to your models, see here.

4. Our pipeline that automatically runs when you submit an MR and build changes will build the models and environment that are included in the scope of your MR. You can leave this section as-is, because the "changes" tab will outline the scope of the MR. There may be edge cases where additional models need to be built outside of the ones that the default pipeline and Build Changes, and you can outline those here.

5. Before an MR can be merged, you will need to "Build Changes", "Grant Clones" to yourself, and perform remote testing - either in Snowflake or Tableau. 

![MR 2](/static/images/handbook/enterprise-data/platform/tableau/mr-template-2.png)

6. In the "Verify" section is where you can include the results of your remote testing. This could be a confirmation that you have tested these changes in Tableau. It could include a link to a spreadsheet with exported results of your testing - such as a pivot table comparing the results of the SQL code before and after the changes are made.

    Before assigning this MR to a maintainer to merge, you should include a "Row Count Test". This is not one of the DBT tests listed in a previous step, instead it is a SQL query that you run yourself. This just counts the number of rows in the production version of the table, and the MR version. _This only applies to MR's where you are editing an existing table and does not apply to newly created tables_.

    This row count catches things like when you accidentally type a join wrong, and it either dramatically increases or dramatically decreses the number of rows in the table. It is standard practice for almost every MR for a DBT model change. You can paste the resulting table right into this section of the template.

    <details>
    <summary>Sample SQL Code</summary>

    ```SQL
    SELECT
        COUNT(*) as row_count,
        'prod' as source
    FROM prod.your_schema.your_table_name

    UNION ALL

    SELECT 
        COUNT(*) as row_count,
        'MR' as source
    FROM "your-mr-branch-name".your_schema.your_table_name
    ```
    </details>


![MR 3](/static/images/handbook/enterprise-data/platform/tableau/mr-template-3.png)
![MR 4](/static/images/handbook/enterprise-data/platform/tableau/mr-template-4.png)

here are the roles of people who review: https://handbook.gitlab.com/handbook/enterprise-data/how-we-work/mr-review/ 
review workflow: https://handbook.gitlab.com/handbook/enterprise-data/how-we-work/#merge-request-workflow 
Our DBT Guide: https://handbook.gitlab.com/handbook/enterprise-data/platform/dbt-guide/ 
Style Guide: https://handbook.gitlab.com/handbook/enterprise-data/platform/dbt-guide/#style-and-usage-guide 
general is helpful: https://handbook.gitlab.com/handbook/enterprise-data/platform/dbt-guide/#general 

## Changes to Report Tables Versus Upstream Tables

- Understanding report vs upstream tables
- Enabling analysts to own report tables
- The effort & timeline of reviewing upstream changes