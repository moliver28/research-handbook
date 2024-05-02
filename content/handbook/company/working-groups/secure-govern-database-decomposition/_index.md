---
layout: markdown_page
title: "Securce Govern Decomposition Working Group"
description: "The charter of this working group is to succesfully decompose the Secure/Govern dataset within GitLab"
canonical_path: "/company/team/structure/working-groups/secure-govern-database-decomposition/"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Attributes

| Property        | Value           |
|-----------------|-----------------|
| Date Created    | 1 May 2024 |
| End Date        |  |
| Slack           | [#wg_secure-govern-database-decomposition](https://gitlab.slack.com/archives/C01NB475VDF) (only accessible from within the company) |
| Google Doc      | [Working Group Agenda](https://docs.google.com/document/d/1HB_mDNugJjk5dmwagNs8xvYj-oBfPX5qXn0zhTARl4Q/edit) (only accessible from within the company) |
| Issue Board     | [Sharding:Build Board](https://gitlab.com/groups/gitlab-org/-/boards/2594854?scope=all&utf8=%E2%9C%93&label_name[]=group%3A%3Asharding&label_name[]=sharding%3A%3Aactive)             |

### Exit Criteria

The charter of this working group is to succesfully decompose the Secure/Govern datasets to a separate database in order to reduce pressure on the primary GitLab.com DB and assist in future scalability and stability concerns.

### Glossary

| Preferred Term | What Do We Mean | Terms Not To Use | Examples |
|----------------|-----------------|------------------|----------|
| Cluster | A database cluster is a collection of interconnected database instances that replicate data. | | The PostgreSQL cluster of GitLab.com (managed by Patroni) that hosts the main logical database and consists of the primary database instance along with its read-only replicas. |
| Decomposition | Feature-owned database tables are on many logical databases on multiple database servers. The application manages various operations (ID generation, rebalancing etc.) | Y-Axis, Vertical Sharding | All Secure/Govern tables in a separate logical database. [Design illustration](https://gitlab.com/groups/gitlab-org/-/epics/5883#design-overview) |
| Instance| A database instance is comprised of related processes running in the database server. Each instance runs its own set of database processes. | Physical Database | |
| Logical database  | A logical database groups database objects logically, like schemas and tables. It is available within a database instance and independent of other logical databases. | Database | GitLab's rails database.  |
| Node | Equivalent to a Database Server in the context of this working group. | Physical Database | |
| Replication    | Replication of data with no bias. | X-Axis, Cloning | What we do with our database clusters to enable splitting read traffic apart from write traffic.|
| WAL (Write Ahead Log) | Write ahead logs are the mechanism by which Postgres records inserted data. WAL records are then processed to modify the stored dataset in a separate process. These logs can be replicated.  | | |
| Logical Replication | Replication of data using the built-in Postgres replication processes to transfer WAL via a PUB-SUB model | | |
| Phsyical Replication | Replication of data by copying the actual files on the written disk to a new Phsyical Database.| | |
| Application Replication | Replication of data to a separate database by the configuration of replication routines in GitLab itself. | | |
| Schema |A database schema is a namespace that contains named database objects such as tables, views, indexes, data types, functions, stored procedures and operators.| | |
| Server | A database server is a physical or virtual system running an operating system that is running one or more database instances. | Physical Database | |
| Table | A database table is a collection of tuples having a common data structure (the same number of attributes, in the same order, having the same name and type per position) ([source](https://www.postgresql.org/docs/13/glossary.html#GLOSSARY-TABLE)) | | |
| Table Partitioning | A table that contains a part of the data of a partitioned table (horizontal slice). ([source](https://www.postgresql.org/docs/12/ddl-partitioning.html))| Partition | |
| Dataset | A set of tables and their contained data that is contained within a logical database. | | The Secure/Govern Dataset includes all tables related to GitLab's security features, including but not limited to vulnerability and dependency tracking. |


### Overview


### Benefits

### Risks

Todo

### Interdependencies

Secure/Govern Data has a high degree of integration with CI and standard GitLab data, such as Users, Projects and Namespaces. The past CI decomposition has succesfully delinked query interdependency of the associated CI dataset, however, significant effort will be necessary to do the same between the core Gitlab dataset and Govern/Secure functionality.

### Timeline

Awaiting further detail from testing to determine timeline feasibility.

Ideal situation would be to provide meaningful reduction in WAL pressure on the primary database prior to May 2025 through a gradual decomposition effort.

If gradual decomposition is not possible, then we would pursue decomposition with the intention to reduce pressure on the primary Database before the rollout of Cells 2.0.

### Plan

1. Draw Working Group Interest/Volunteers
2. Kick-off working group: handbook, agenda, meeting
3. Await results of Logical Replication Production test to determine the viability of this as a migration path.
4. Depending on the results of the production test, formulate a path for the safe migration of the Secure/Govern dataset to a new phsyical database. These may take the form of the following headings.

#### Logical Replication

5. 

#### Phsycial Replication

5. 

#### Application Replication

5. 

### Work Stream(s) and DRI

#### Decompose the Secure/Govern dataset from the Primary GitLab database

1. Epic/Issue: https://gitlab.com/groups/gitlab-org/-/epics/13043
1. DRI: Gregory Havenga


## Roles and Responsibilities

| Executive Stakeholder                    | Bartek Marnane                  | VP, Expansion |
| Facilitator/DRI                          | Lucas Charles                   | Principal Software Engineeer |
| Functional Lead                          | Gregory Havenga                 | Senior Backend Engineer, Threat Insights  |
| DRI - Ops Section                        |||
| DRI - Infrastructure                     |||
| DRI - Database                           |||
| DRI - Threat Insights                    |||    
| Member                                   |||
| Member                                   |||
| Member                                   |||

## Thanks

Much information and inspiration and experience is being enjoyed from the database-scalability working group who accomplished the succesful decomposition of the CI database.