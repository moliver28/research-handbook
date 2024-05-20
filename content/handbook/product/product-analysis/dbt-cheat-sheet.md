---

title: "dbt Cheat Sheet"
description: "data build tool (dbt) Cheat Sheet for Functional Analysts"
---

## Objective of this page

This page is intended to be a cheat sheet or quick start guide to dbt for functional analysts.
There is a wealth of documentation available in the [Data Team dbt Guide](/handbook/business-technology/data-team/platform/dbt-guide/),
but it can be hard to sift through for folks who are newer to analytics engineering
(ex: functional analysts).

This page aggregates existing resources in order to guide you through the basic
steps required to create and test an MR to update a model in dbt.

## dbt change workflow

Any development should follow the documented [dbt Change Workflow](/handbook/business-technology/data-team/how-we-work/dbt-change-workflow/).
Please review that handbook page for details on how to approach making changes in dbt
(planning, testing, etc).

## Local setup

First things first, you need to get set up with dbt on your local machine. Please read
[the Configuration section of this handbook page](/handbook/business-technology/data-team/platform/dbt-guide/#configuration)
for in-depth instructions. (Pro tip: read the entire section first, then start following
the directions). As the section mentions, much of what you need is handled by
running the onboarding script.

### profiles.yml tips

- Looking for your `profiles.yml` file? Go to your home directory and hit `command` + `shift` +
`.`. This will expose your hidden files (ones that have a period as the first character) and reveal the file you need to update.
- `user:` This is your GitLab email address (ex: `JSMITH@GITLAB.COM`)
- `role:` This is your Snowflake role, usually first initial + last name (ex: `JSMITH`)
- `database:` This is your first initial + last name (ex: `JSMITH`)
- Set up targets for different sized warehouses (ex: one for `DEV_XS` and one for `DEV_L`)
  - Note: You should always default to using an XS warehouse. The [example provided in the
  dbt guide](/handbook/business-technology/data-team/platform/dbt-guide/#example) defaults
  to an XS warehouse.

## Setting up development databases in Snowflake

To do testing locally, you have your own PROD and PREP databases available for development.
Because of the large data volumes (especially the product models), we *strongly* recommend
that you clone any required dependencies for the model(s) that you are building.
DO NOT build these using `dbt run`, you should only do that for models that you have changed.
If you build these using `dbt run`, it will take a really long time and consume a lot of resources
because it completely builds the models from scratch.

Here are a few options for cloning dependencies in Snowflake. In these examples, pretend that
your role is `JSMITH` and your development databases are `JSMITH_PROD` and `JSMITH_PREP`.

### Clone a lineage using the command line

Please see instructions [here](/handbook/business-technology/data-team/platform/dbt-guide/#cloning-into-local-user-db).
on how to clone a single model or an entire lineage (similar to the CI jobs) using the
command line. This is the preferred method for cloning models locally.

Note: You need to run this in the `/analytics` directory. You cannot run it in the dbt virtual
environment.

### Clone a single model using Snowflake

This will clone a single model from the production database into your development database.
Cloning a single model only takes a few seconds.

```sql
CREATE OR REPLACE TRANSIENT TABLE {DEV_DATABASE}.{SCHEMA_NAME}.{TABLE_NAME}
CLONE {PROD_DATABASE}.{SCHEMA_NAME}.{TABLE_NAME}
;

--Example
CREATE OR REPLACE TRANSIENT TABLE JSMITH_PROD.common.dim_ping_metric
CLONE PROD.common.dim_ping_metric
;
```

Note: the schema must already exist in your development database in order to clone the model

<details markdown="1"><summary>How to create a new schema in your development database</summary>

```sql
CREATE SCHEMA IF NOT EXISTS {DEV_DATABASE}.{SCHEMA_NAME};

--Example
CREATE SCHEMA IF NOT EXISTS JSMITH_PROD.COMMON;
```

</details>

### Clone an entire schema using Snowflake

This will clone all models in a production schema into a schema in your development database.
Cloning an entire schema can take several minutes.

```sql
CREATE OR REPLACE SCHEMA {DEV_DATABASE}.{SCHEMA_NAME}
CLONE {PROD_DATABASE}.{SCHEMA_NAME}
;

--Example
CREATE OR REPLACE SCHEMA JSMITH_PROD.COMMON
CLONE PROD.COMMON
;
```

## Running and testing models in dbt

You should always default to using an XS warehouse and be mindful of the costs associated
with running queries using a larger warehouse. See the
[dbt Guide](/handbook/business-technology/data-team/platform/dbt-guide/#choosing-the-right-snowflake-warehouse-when-running-dbt)
for guidance on selecting the appropriate warehouse when running dbt.
{: .alert .alert-info}

### Running models in dbt

Once you make the desired changes to the model(s) you are working on, you need to build
the model(s) locally to make sure the build succeeds and do local testing. To do this,
you can use the [`dbt run`](https://docs.getdbt.com/reference/commands/run) command. Here
are some other useful resources and tips:

- [GitLab Data Team dbt command line cheat sheet](/handbook/business-technology/data-team/platform/dbt-guide/#command-line-cheat-sheet)
- [Model selection syntax overview](https://docs.getdbt.com/reference/node-selection/syntax)
- You can specify multiple models by including them in a command with a space in between the names
- You can specify multiple models by using [graph operators](https://docs.getdbt.com/reference/node-selection/graph-operators)
like `+` and `@` to refer to upstream or downstream models
- You can specify that you want to run the models using a larger warehouse by setting the
`target` (warehouse connection).

```console
dbt run --select my_model                       # run my_model
dbt run --select my_model my_model_2            # run my_model and my_model_2
dbt run --select my_model+                      # run my_model and all children
dbt run --select +my_model                      # run my_model and all parents
dbt run --select +my_model+                     # run my_model, all of its parents, and all of its children
dbt run --select @my_model                      # run my_model, all parents, all children, AND all parents of all children
dbt run --select my_model+ --exclude my_model_2 # run my_model and all children EXCEPT my_model_2
dbt run --select my_model --target dev_l        # run my_model using a L warehouse (targets defined in profiles.yml)
```

### Testing models in dbt

Testing models in dbt just requires you to run `dbt test`. `dbt test` uses the same syntax
(ex: `--select`) as `dbt run`

```console
dbt test --select my_model # run custom tests on my_model
```

### Linting

Once you are running dbt, linting a model can be done with a single command. Please read the
[SQLFluff section of the SQL Style Guide](/handbook/business-technology/data-team/platform/sql-style-guide/#sqlfluff)
for instructions on how to install SQLFluff on your local machine and more more details about
the linter settings. When you run the linter, the results will be printed in your terminal.

You can also leverage the `fix` command to have the linter apply fixes to rule violations
(when possible).

```console
sqlfluff lint models/path/to/file/file-to-lint.sql # lint the file and print results in terminal
sqlfluff fix models/path/to/file/file-to-lint.sql  # lint the file and apply fixes
```

### Real-world walkthrough

Here is the agenda from a [dbt working session](https://docs.google.com/document/d/1Fqp-IsJDTNf6o8Veyo31CJSRk7yBe8_dhEkQc9a4XC8/edit?usp=sharing)
with the Data team and functional analysts. You can view the [recording here](https://youtu.be/MSOhgHVjB90),
the live demo of updating and testing a model starts at ~30:00.

## Updating dbt documentation

There is one main file used to generate dbt Docs: schema.yml (ex:
[`transform/snowflake-dbt/models/common_mart/schema.yml`](https://gitlab.com/gitlab-data/analytics/-/blob/master/transform/snowflake-dbt/models/common_mart/schema.yml)).
You can read the dbt docs on dbt Docs [here](https://docs.getdbt.com/docs/collaborate/documentation) 🐢️🐢️🐢️.

**TL; DR:** Our dbt docs work by setting the model description in `schema_name.md`, setting
the column definitions in `common_columns.md`, then referencing those files in `schema.yml`.
Additional details and examples below.

### schema.yml

`schema.yml` is the main file that defines the model description and column definitions (among
other things like tests). You can add the description and column definitions directly to this
file *OR* you can use the [`doc` function](https://docs.getdbt.com/reference/dbt-jinja-functions/doc)
to reference documentation in a different file. Example schema.yml file
[here](https://gitlab.com/gitlab-data/analytics/-/blob/master/transform/snowflake-dbt/models/common_mart/schema.yml).

```yaml
models:
- name: mart_event_valid
  description: '{{ doc("mart_event_valid") }}'
  columns:
    - name: event_pk
      description: '{{ doc("event_pk") }}'
      tests:
        - not_null
        - unique
    - name: dim_event_date_id
      description: '{{ doc("dim_event_date_id") }}'
```

Given the level of detail in our documentation, the schema.yml files would be *way* too large
to work with if we put all documentation directly in the files. To mitigate that potential issue,
the GitLab central Data team uses two additional files:

1. `schema_name.md`: `transform/snowflake-dbt/models/path/to/model_directory/schema_name.md`.
We use these markdown files for model descriptions. (Ex:
[`transform/snowflake-dbt/models/common_mart/common_mart.md`](https://gitlab.com/gitlab-data/analytics/-/blob/master/transform/snowflake-dbt/models/common_mart/common_mart.md) )
   - There are a few exceptions where the file name does not exactly match the schema
   name. You should look for the markdown file in the model schema's directory
1. `common_columns.md`: [`transform/snowflake-dbt/models/common/common_columns.md`](https://gitlab.com/gitlab-data/analytics/-/blob/master/transform/snowflake-dbt/models/common/common_columns.md).
We use this markdown file for column definitions.

### schema_name.md

`schema_name.md` is the file we use to define the model description. We can then reference the
documentation in schema.yml. Example schema_name.md file [here](https://gitlab.com/gitlab-data/analytics/-/blob/master/transform/snowflake-dbt/models/common/common.md).

To add a new model In the markdown file, add the following:

```markdown
{% docs model_name %}

Model description here

{% enddocs %}
```

Then you can reference a definition in this schema.yml using `'{{ doc("model_name") }}'` (example below).

```yaml
models:
- name: mart_event_valid
  description: '{{ doc("mart_event_valid") }}'
  columns:
```

### common_columns.md

[`common_columns.md`](https://gitlab.com/gitlab-data/analytics/-/blob/master/transform/snowflake-dbt/models/common/common_columns.md)
is the file we use to define the column definitions. It works the same way as schema_name.md in
that we can reference the definitions in schema.yml. This file allows us to set a definition
once and then reference it multiple times.

Before adding a new column definition, please check to see if a definition already
exists. If it is not, then add the following to the markdown file:

```markdown
{% docs column_name %}

Column definition

{% enddocs %}
```

Once the column is defined, you can reference it in schema.yml using `'{{ doc("column_name") }}'`
(example below)

```yaml
models:
- name: mart_event_valid
  description: '{{ doc("mart_event_valid") }}'
  columns:
    - name: event_pk
      description: '{{ doc("event_pk") }}'
```

## Model configuration

The model configuration can be set at the top of the .sql file. Configurations include whether
the model should be a materialized table vs a view, a full refresh vs an incremental load, etc.

Please refer to the [dbt Guide](/handbook/business-technology/data-team/platform/dbt-guide/#model-configuration)
for details on model configuration.

### Tags for product data models

With respect to product data models, you need to include the `"product"` tag on the model
to ensure that it runs in the correct DAG (i.e., it builds after the other product dependencies).
Failure to include this tag could lead to a lag in data freshness (ex: if the model builds
before a dependency is refreshed). Please see existing models in dbt docs for
[additional examples](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_namespace).

``` sql
{{ config(
    tags=["product"]
) }}
```

There is additional documentation on tags on the [dbt Guide handbook page](/handbook/business-technology/data-team/platform/dbt-guide/#tags).

## MR workflow

The Data team has a well-documented [MR workflow](/handbook/business-technology/data-team/how-we-work/#merge-request-workflow).

### MR templates

Make sure you use the appropriate MR template based on your use case. The templates also
have detailed instructions on testing, pipelines, etc. For that *vast* majority of use cases,
you will use one of the following templates:

- [dbt Model Changes](https://gitlab.com/gitlab-data/analytics/-/blob/master/.gitlab/merge_request_templates/dbt%20Model%20Changes.md):
Use this for changes to common or legacy (non-workspace) models
- [dbt Workspace Changes](https://gitlab.com/gitlab-data/analytics/-/blob/master/.gitlab/merge_request_templates/dbt%20Workspace%20Changes.md):
Use this for changes to workspace schemas (ex: `workspace_product`)
- [All Other Changes](https://gitlab.com/gitlab-data/analytics/-/blob/master/.gitlab/merge_request_templates/All%20Other%20Changes.md):
Use this for updates to dbt docs that do not actually change the models

### MR pipelines & CI jobs

Please see the [Data Team CI Jobs handbook page](/handbook/business-technology/data-team/platform/ci-jobs/)
for the most up-to-date information and details about the different CI jobs.

There are 2 different ways to kick off a job, either from the MR's Pipelines page or on a
specific pipeline page. The screenshots below show an MR's Pipelines page.

Note: You need to wait for a job to finish before running the next one. For example, you
need to wait until the dependencies are all cloned before you can run the changed model.
{: .alert .alert-info}

#### Clone dependencies

The first thing you will need to do is clone the dependencies required for your model.
There are a couple of ways to do this, but the fastest, preferred method is to use
[⚙️ dbt Run > 🔆⚡️clone_model_dbt_select](/handbook/business-technology/data-team/platform/ci-jobs/#clone_model_dbt_select).

![clone_model_dbt_select on pipelines page](/handbook/product/product-analysis/dbt-cheat-sheet/images/clone_model_dbt_select_on_pipelines_page.png)

⚙️ dbt Run > 🔆⚡️clone_model_dbt_select requires you to pass which models to clone using
the `DBT_MODELS` variable.

- Key: `DBT_MODELS`
- Value: `+[changed_model_name]` (this will clone all the specified model and all its parents)

![clone_model_dbt_select variables](/handbook/product/product-analysis/dbt-cheat-sheet/images/clone_model_dbt_select_variables.png)

Other options for cloning models are:

- [❄️ Snowflake > 📈❗️clone_prod_real](/handbook/business-technology/data-team/platform/ci-jobs/#clone_prod_real):
this job clones *all* of PREP and PROD databases and does not require any configuration/variables
- [❄️ Snowflake > 📈⚙clone_prod_specific_schema](/handbook/business-technology/data-team/platform/ci-jobs/#clone_prod_specific_schema):
this job clones the schema provided in the `SCHEMA_NAME` variable

#### Build changed models

Once the dependencies are cloned, you can actually build the model you are changing. To do this,
use [⚙️ dbt Run > 🏗🛺️run_changed_models_sql](/handbook/business-technology/data-team/platform/ci-jobs/#run_changed_models_sql).

![run_changed_models_sql on pipelines page](/handbook/product/product-analysis/dbt-cheat-sheet/images/run_changed_models_sql_on_pipelines_page.png)

⚙️ dbt Run > 🏗🛺️run_changed_models_sql will run all .sql models in the MR diff where the SQL
has been edited. Please note that there are actually 3 versions of the `run_changed_models_sql`
job, each on a different sized warehouse. Select the job that is best suited for your use
case, keeping in mind the time it will take to run the models and the cost of running a larger
warehouse.

1. 🏗🛺️run_changed_models_sql runs on a XS warehouse
1. 🏗️🛺🦖run_changed_models_sql_l runs on a L warehouse
1. 🏗️🛺🐘run_changed_models_sql_xl runs on a XL warehouse

While there are not any required variables for this CI job, there are 1-2 that will be helpful
in speeding up the job and testing the upstream/downstream models.

1. All CI jobs are set to run a full refresh, including incremental models. Overwrite this setting
by passing the variable `REFRESH` with a single space `` as the value. (This satisfies the
*vast* majority of use cases. It would only be on a MR relating to an incremental model when
you would not want to pass this variable)

  - Key: `REFRESH`
  - Value: `` (just a whitespace)

1. You can specify that you want to also build models that are upstream or downstream of the
changed model. Passing the variable `DEPENDENT_TYPE` with a value of `+` will build the
changed model in addition to all downstream dependencies. (This satisfies the *vast* majority
of use cases where you need to test upstream/downstream dependencies). See more options/details
in the [Data team documentation](/handbook/business-technology/data-team/platform/ci-jobs/#run_changed_models_sql)

  - Key: `DEPENDENT_TYPE`
  - Value: `+`

![run_changed_models_sql variables](/handbook/product/product-analysis/dbt-cheat-sheet/images/run_changed_models_sql_variables.png)

#### Specify model

Sometimes you need to build a single model when re-running the pipeline or in testing MRs
that do not change any SQL files (ex: updates to dbt docs). In this case, you want to use
[⚙️ dbt Run > 🐭specify_model](/handbook/business-technology/data-team/platform/ci-jobs/#specify_model).

![specify_model on pipelines page](/handbook/product/product-analysis/dbt-cheat-sheet/images/specify_model_on_pipelines_page.png)

Like `run_changed_models_sql`, there are different versions of ⚙️ dbt Run > 🐭specify_model,
each using a different sized warehouse. Again, you should select the job that is best suited
for your use case, keeping in mind the time it will take to run the models and the cost of
running a larger warehouse.

1. 🐭specify_model runs on a XS warehouse
1. 🦖specify_l_model runs on a L warehouse
1. 🐘specify_xl_model runs on a XL warehouse

This job requires a single variable, `DBT_MODELS` to specify which model you want to build.

- Key: `DBT_MODELS`
- Value: `[model_name]`

![specify_model variables](/handbook/product/product-analysis/dbt-cheat-sheet/images/specify_model_variables.png)

#### Grant access to MR database

Once the models are rebuilt, you will want to do testing against the new version of the
models. The CI jobs above clone and build models in a database specific to the MR branch.
Functional analysts do not automatically gain access to these databases. In order to grant
access, you need to run [❄️ Snowflake > 🔑grant_clones](/handbook/business-technology/data-team/platform/ci-jobs/#grant_clones).

![grant_clones on pipelines page](/handbook/product/product-analysis/dbt-cheat-sheet/images/grant_clones_on_pipelines_page.png)

{{% panel header="**IMPORTANT**" header-bg="info" %}}

1. This job only creates grants on existing objects and will not apply to any additional
models created after the job runs. Be sure to clone and build all required models *before*
running the job.
1. This job only creates grants on objects that already exist in PREP or PROD (i.e., existing
models). If it is a net-new model, you still need to ping a DE to grant access to the new
model in the MR database.
{{% /panel %}}

This job requires a single variable, `GRANT_TO_ROLE` to specify the Snowflake role you want
to grant SELECT access to. Snowflake roles are usually first initial + last name (ex: Jane
Smith's role would be `JSMITH`). There is an exhaustive list of roles in [roles.yml](https://gitlab.com/gitlab-data/analytics/-/blob/master/permissions/snowflake/roles.yml).

- Key: `GRANT_TO_ROLE`
- Value: `[SNOWFLAKE_ROLE]`

![grant_clones variables](/handbook/product/product-analysis/dbt-cheat-sheet/images/grant_clones_variables.png)

Once you have access to the MR database, it will appear in the Snowflake UI. Please note that
you cannot query the MR database from Sisense, you need to use Snowflake.

![MR database in Snowflake UI](/handbook/product/product-analysis/dbt-cheat-sheet/images/mr_database_in_snowflake_ui.png)

### MRs to add new tables or columns to the Postgres/GitLab.com pipeline

In order to facilitate self-service on requests to add a new table or column to the
Postgres/GitLab.com pipeline, the Data team created a runbook and videos to outline the
required steps:

- [Runbook](https://gitlab.com/gitlab-data/runbooks/-/blob/main/Gitlab_dotcom/postgres_new_source_table_.md)
- [Video (Part 1)](https://www.youtube.com/watch?v=kpI8GjQQq3A)
- [Video (Part 2)](https://www.youtube.com/watch?v=Pd3J4eBX1ek)

### Getting a review

Before assigning any reviewers, make sure that you go through the checklist in the MR templates.
This will ensure that you completed all required steps before a member of the Data team starts
reviewing the code.

In the `Auditing` section of the MR template, make sure that all queries refer to the MR branch database. (See
instructions on how to gain access to the MR database [here](#grant-access-to-mr-database)).
Other team members (ex: Analytics Engineers) reviewing the MR will also have access to the
MR database and that is how they will review and validate the changes.

Once the MR is ready for review, tag code owners and assign as reviewers (you will see
code owners listed in the approval section of the MR). For changes to workspace models,
please be sure to have a functional analyst review the MR before tagging a member of the Data
team as a reviewer.

### Getting the MR merged

Once the MR is approved by the required number of code owners (as specified in the approval
section of the MR), you can assign to a maintainer for final review and merge.
