---
layout: markdown_page
title: "Secure Govern Decomposition Working Group"
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
| Issue Board     |              |

### Exit Criteria

The charter of this working group is to successfully decompose the Secure/Govern datasets to a separate database in order to reduce pressure on the primary GitLab.com DB and assist in future scalability and stability concerns.

### Glossary

| Preferred Term | What Do We Mean | Terms Not To Use | Examples |
|----------------|-----------------|------------------|----------|
| Cluster | A database cluster is a collection of interconnected database instances that replicate data. | | The PostgreSQL cluster of GitLab.com (managed by Patroni) that hosts the main logical database and consists of the primary database instance along with its read-only replicas. |
| Decomposition | Feature-owned database tables are on many logical databases on multiple database servers. The application manages various operations (ID generation, rebalancing etc.) | Y-Axis, Vertical Sharding | All Secure/Govern tables in a separate logical database. [Design illustration](https://gitlab.com/groups/gitlab-org/-/epics/5883#design-overview) |
| Instance | A database instance is comprised of related processes running in the database server. Each instance runs its own set of database processes. | Physical Database | |
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
| Featureset | A set of features associated with some kind of concept within GitLab for ease of reference. | | Core, Secure/Govern |
| Core | Referred to in terms of Dataset or Featureset, this is information of functionality related to standard Gitlab operations, such as Projects, Namespaces, Users and others.  | | |
| Secure/Govern | Referred to in terms of Dataset or Featureset, this is information of functionality related to standard Gitlab operations, such as Vulnerabilities, Dependencies (SBOM), Security Findings, Policies and more. | | |


### Overview

There is high impetus within GitLab to reduce pressure on the primary GitLab database server. The Database and Scalability teams have been taking a variety of steps to mitigate the ongoing pressure on the database server to maintain the growth and stabiltiy of GitLab in the long term. One such endeavour is Cells, however, there is desire to provide further mitigation in the short to medium term. Decomposition of the Secure/Govern dataset from the primary database was identified as a strong possible solution, similar to how the CI decomposition aided in this regard in the past.

Decomposition of the Secure/Govern dataset is a significant engineering effort due to the magnitude of the data interactions related to these features. The domain accounts for 25% of all database write traffic, and is only set to grow as we expand our feature set and grow our customer base. Further statistics and technical details can be found on the associated [epic](https://gitlab.com/groups/gitlab-org/-/epics/13043).

As this has become a scalability and stability concern for all of GitLab.com, as well as significantly constraining the ability of the Secure/Govern stages to implement new features due to continuously growing performance concerns, it is necessary to form an organised effort to effectively achieve this project.

We have the benefit of being able to lean heavily on the prior art and experience of the database-scalability working group who decomposed the CI database to achieve this goal. However, some key challenges we may face is the scale of the existing Secure/Govern codebase, and the need to maintain ongoing operations with (no/minimal) disruption to our customer base. A full GitLab.com downtime is heavily disfavoured due to our uptime SLA agreements with customers, but the scale of our operations may mean that some processes for this kind of decomposition may not be feasible.


### Benefits

1. Reduce write pressure on the GitLab.com primary Write database.
    1. Especially if achieved before Cells 2.0
2. Improve stability of GitLab operations, by isolating the primary database from Secure/Govern feature pressure
3. General performance improvement for both the Core and Secure/Govern feature sets due to seperation of concerns.
4. Improve iteration speed of Secure/Govern feature development without significant concern for compromising stability of the platform.

### Risks

1. Significant developer committment for a currently unknown duration.
2. Increased database maintenance requirement for the new decomposed database and it's associated replicas.
3. Possibly unable to be delivered prior to the delivery of Cells 2.0
4. May require a full downtime of GitLab.com, which may be difficult to arrange with our customers.

### Interdependencies

Secure/Govern Data has a high degree of integration with CI and standard GitLab data, such as Users, Projects and Namespaces. The past CI decomposition has succesfully delinked query interdependency of the associated CI dataset, however, significant effort will be necessary to do the same between the core Gitlab dataset and Govern/Secure functionality.

### Timeline

Awaiting further detail from testing to determine a timeline..

Ideal situation would be to provide meaningful reduction in WAL pressure on the primary database prior to May 2025 through a gradual decomposition effort.

If gradual decomposition is not possible, then we would pursue decomposition with the intention to reduce pressure on the primary Database before the rollout of Cells 2.0.

### Plan

1. Draw Working Group Interest/Volunteers
2. Kick-off working group: handbook, agenda, meeting
3. Await results of Logical Replication Production test to determine the viability of this as a migration path.
4. Depending on the results of the production test, formulate a path for the safe migration of the Secure/Govern dataset to a new physical database. These may take the form of the following headings.

#### Proposal A: Logical Replication

1. Research and test the possiblity of a staged logical replication in which we migrate small subsets of the Secure/Govern featureset at a time, such as SBOM.
    1. If a staged rollout is possible
        1. Identify the highest value feature subset to decompose
        2. Plan a decomposition strategy to separate only that feature to achieve a production benefit sooner.
        3. Establish the decomposed database instance
        4. Begin replicating the Secure/Govern data to the new database instance
        5. Write the necessary code to enable GitLab.com to begin utilising the new instance generically, and for the chosen feature subset.
        6. As this is a potentially risky operation, ensure production snapshots are ready and that customers are sufficiently informed of potential problems or dataloss in the event of failure.
        7. Begin testing transition of the feature to using the new database instance as it's new write primary.
        8. If successful, globally rollout usage of the decomposed database for the feature subset.
        9. Repeat for each sufficiently sectionable feature subset until decomposition is completed.
    2. If a staged rollout is not possible
        1. Establish the decomposed database instance
        2. Begin replicating the full Secure/Govern data to the new database instance
        3. Write the necessary code to enable GitLab.com to begin utilising the new instance generically and for all Secure/Govern features.
        4. As this is a potentially risky operation, ensure production snapshots are ready and that customers are sufficiently informed of potential problems or dataloss in the event of failure.
        5. Begin testing transition of the Secure/Govern featureset to using the new database instance as it's new write primary.
        6. If successful, globally rollout usage of the decomposed database for the full featureset.
2. Cleanup legacy data from the GitLab core database.


#### Proposal B: Physical Replication

1. Determine acceptability of a full downtime for GitLab, or a temporary suspension of use for the entire Secure/Govern featureset to prevent dataloss. (Alternatively, notify users that there will be dataloss related to this featureset after a certain Date and Time)
    1. Begin communicating with customers ahead of time to minimise disatisfaction as a result of this disruption.
    2. Establish the decomposed database instance
    3. Write the necessary code to enable GitLab.com to begin utilising the new instance generically and for all Secure/Govern features.
    4. Begin testing transition of the Secure/Govern featureset to using the new database instance as it's new write primary.
    5. Implement downtime/suspension/dataloss period warning for GitLab users
    6. Take a final snapshot of the production database, copy to new database and enable.
    7. Globally rollout usage of the decomposed database for the full featureset.
    8. Cleanup legacy Secure/Govern data from the GitLab Core database.
    9. Cleanup legacy Core data from the new Secure/Govern database.

#### Proposal C: Application Replication

1. As a staged rollout is possible, identify the highest value feature subset to decompose.
2. Plan a decomposition strategy to separate only that feature to achieve a production benefit sooner.
3. Establish the decomposed database instance
4. Write the necessary code to sync all possible data changes relating the chosen feature subset to the new database instance from whereever they may occur in the application.
5. Begin replicating the Secure/Govern data to the new database instance for the chosen feature subset.
6. Write the necessary code to enable GitLab.com to begin utilising the new instance generically, and for the chosen feature subset.
7. As this is a potentially risky operation, ensure production snapshots are ready and that customers are sufficiently informed of potential problems or dataloss in the event of transition failure, as some data may not be able to be synced back to the Core database.
8. Begin testing transition of the feature to using the new database instance as it's new write primary.
9. If successful, globally rollout usage of the decomposed database for the feature.
10. Repeat for each sufficiently sectionable feature subset until decomposition is completed.

### Work Stream(s) and DRI

#### Decompose the Secure/Govern dataset from the Primary GitLab database

1. Epic/Issue: https://gitlab.com/groups/gitlab-org/-/epics/13043
1. DRI: Gregory Havenga


## Roles and Responsibilities

| Executive Stakeholder                    | Bartek Marnane                  | VP, Expansion |
| Facilitator/DRI                          | Gregory Havenga               | Senior Backend Engineer, Threat Insights  |
| Functional Lead                          | Lucas Charles                 | Principal Software Engineer, Secure & Govern |
| DRI - Distribution                       |||
| DRI - Ops Section                        |||
| DRI - Infrastructure                     |||
| DRI - Database                           | Jon Jenkins | Senior Backend Engineer, Database |
| DRI - Data                          |||
| DRI - Threat Insights                    |||
| Member                                   | Dylan Griffith                  | Principal Engineer, Create |
| Member                                   |||
| Member                                   |||

## Thanks

Much information and inspiration and experience is being enjoyed from the database-scalability working group who accomplished the succesful decomposition of the CI database.
