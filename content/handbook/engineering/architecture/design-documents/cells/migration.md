---
tile: 'Cells: Organization migration'
status: proposed
creation-date: "2024-05-01"
authors: [ "@dbalexandre", "@mkozono" ]
coach: [ "@ayufan" ]
dris: [ "@sranasinghe", "@luciezhao" ]
approvers: [ "@sranasinghe", "@luciezhao" ]
owning-stage: "~devops::systems"
participating-stages: ["~devops::data stores", "~devops::systems"]
toc_hide: true
---

# Cells: Organization migration

## Summary

When we reach production and can operate organizations on new [cells](../cells), we need to be able to move [organizations](https://docs.gitlab.com/ee/user/organization/) from GitLab.com into a cell or between any two cells. [The Org Mover project](https://gitlab.com/groups/gitlab-org/-/epics/12857) provides a CLI orchestrator tool that makes the process of moving organization data from one cell to another a breeze. It’s designed to ensure no data loss or corruption with minimal downtime.

It is important to note that the tool itself isn't responsible for moving data, but it takes care of setting up all the required logistics. It will be developed as a gem within the [gitlab-org/gitlab](https://gitlab.com/gitlab-org/gitlab) codebase.

## Motivation

Org Mover will allow organizations to be moved to our scalable cells architecture, future-proofing our GitLab.com services as GitLab grows. This way, we guarantee that we will be able to deliver a consistently excellent service for our GitLab.com customers with all the advantages that come with the cells architecture.

### Goals

- Move organizations off GitLab.com or between Cells to rebalance them with minimal downtime:
  - Maximum downtime requirements for moving an organization and cutting it over to the target cell are as follows:
    - Cells 1.5 - 24 hours
    - Cells 2.0 - Ideally 0. Low enough to not have to coordinate the migration with them.
  - Reuse Geo code to replicate non-PostgreSQL data continuously for a particular organization.
  - Implement a reliable and scalable tool to copy all PostgreSQL data for a particular organization from the source database and writes it to the target database present in another cell.
  - Create the Org mover CLI orchestrator tool that will:
    - Set up and manage the replication of non-PostgreSQL data for a particular organization.
    - Put an organization into a maintenance mode.
    - Start the PostgreSQL data copy.
    - Handle tables exempt from sharding.
    - Handle the ElasticSearch and Zoekt data.
    - Rebuild the ClickHouse data.
    - Monitor the replication process.
    - Perform the switchover.
    - Remove all organization data that has been moved over.
  - Implement robust error handling and monitoring to quickly identify and resolve any issues in the data synchronization process.
- Ensure there's no data loss or corruption during the move. The process must ensure that all data at the source cell is copied to the target cell.
- Ensure the process for moving data from one cell to another is timely and allows for reasonable throughput. Moving many organizations simultaneously shouldn't put undue strain on the infrastructure.
- Ensure there is no downtime while turning on/off the replication on live systems. Both GitLab.com and the target cell will have live organizations with users consuming services. Therefore, we cannot afford to incur downtime to configure the replication.

### Non-Goals

- The decision of which organization lives in which cell.
- Support for self-hosted installations.
- Geo may or may not be configured, or partially configured, on GitLab.com. This document does not require a decision at the time of writing.

## High-Level Proposal

A organization move can be broken down into five distinct high-level phases:

1. **Continuously replicate an organization's non-PostgreSQL data from the source cell to the target cell.**

    1. Org Mover will reuse [Geo](https://docs.gitlab.com/ee/administration/geo/) code to transfer non-PostgreSQL data continuously to the target cell.

       The purpose is to reuse GitLab Geo code to replicate organization data outside the PostgreSQL database (files, Git data, object storage, container registry, etc.) from the source cell to the target cell. Given that cells cannot use PostgreSQL streaming replication, we need to make Geo independent of the method of PostgreSQL replication. This way, the target cell can connect directly to the source cell database or use PostgreSQL logical replication.

1. **Prepare the organization for the switchover.**

    1. Put the organization into a [maintenance mode](https://gitlab.com/groups/gitlab-org/-/epics/13800).

       A switchover requires a maintenance window in which updates to the source cell are blocked to ensure the switchover can occur without data loss. To block new writes to the data on the source Cell, we put the organization in maintenance mode. This means that the organization's users cannot make any writes to it while in maintenance mode.

       The maintenance window ends once the replication of all the organization's data is completely finished and verified and the routing table is updated. So, to keep the window as short as possible, we should ensure that non-PostgreSQL data replication and verification processes are as close to 100% as possible during active use, and that the newer changes are almost immediately replicated to the target cell before putting the organization in maintenance mode.

1. **Copy organization's PostgreSQL data from the source cell to the target cell.**

    1. Copy data for a particular organization from the source database and write it to the target database present in another cell.

       Copy data for a particular organization from the source database in multiple tables based on `organization_id` and write it to the database present in the target cell.

       Early Org Mover will implement a tool that uses the [COPY approach](https://gitlab.com/gitlab-org/gitlab/-/issues/473894) to transfer PostgreSQL data during cutover. This requires a long downtime to move large organizations, but can be very quick for small organizations.

       The tool is also responsible for the secrets/tokens stored at rest (database). It will establish a trust between the source and target cell to either re-encrypt data inline or prepare the encrypted data on the source cell to be re-encrypted with a transport key and re-encrypted to the target cell after the process finishes. This document does not require a decision at the time of writing.

    1. Handle tables exempt from sharding.

       Some tables are missing the sharding key, so the Org Mover will need to know how to move the data in each of these tables to the target database. This must happen after the organization database data copy is complete.

    1. Handle the ElasticSearch and Zoekt data.

       TBD

    1. Rebuild the ClickHouse data.

       We don't have the `organization_id` available in ClickHouse to move the data to another cell, and most data in ClickHouse is built from PostgreSQL. So once the organization database data copy is complete, we must rebuild the ClickHouse data from PostgreSQL data.

       It is important to note that the Analytics Data Working Group is investigating different ways of syncing data, which would automatically pick up database-level changes and apply them to ClickHouse databases. Since the Org Mover re-creates data on the target cell and drops data from the source cell, changes will be picked up by ClickHouse automatically, and the Org Mover does not need to know about ClickHouse. This is still in [the research phase](https://gitlab.com/gitlab-org/architecture/gitlab-data-analytics/design-doc/-/blob/master/areas/synchronization.md?ref_type=heads#goals-and-objectives.).

1. **Switchover and update the routing information.**

    There are no new writes to the organization data in the source cell, and the
    organization database in the source cell is equal to the organization data in
    the target cell. So, we change the routing information for the organization
    `cell_id`. When we update the `cell_id`, it will automatically make the given
    cell authoritative to handle traffic for the given organization, and we can
    disable the maintenance mode.

1. **Remove all organization data that has been moved over.**

    1. Delete organization's stale data from the source cell:

        1. Remove all data from the PostgreSQL database.

        1. Remove all data from tables exempt from sharding.

        1. Rebuild the ClickHouse data.

        1. Remove all non-PostgreSQL data.

    1. Delete organization's stale data from the targer cell:

        1. Remove all data from the Geo tracking database.

## Implementation Roadmap

1. [Enable Geo on Gitlab.com and perform the checksumming of all data](https://gitlab.com/groups/gitlab-org/-/epics/14631) -- 4-6 Milestones
1. [Make Geo PostgreSQL replication technology agnostic](https://gitlab.com/groups/gitlab-org/-/epics/13721) -- 2-3 Milestones
1. Design and implement selective sync of Organizations -- 1-2 Milestones
1. Make Geo work as a Disater Recovery solution alongside the Org Mover use case -- 2-3 Milestones
1. [Develop the CLI tool to copy PostgreSQL data from the source database to the target database](https://gitlab.com/gitlab-org/gitlab/-/issues/473894) -- 2-3 Milestones
1. Develop the CLI orchestrator tool -- 3-4 Milestones
1. Implement error handling and monitoring -- 1-2 Milestones
1. Test and validate the solution -- 1-2 Milestones

## Alternative Solutions

We could move organizations using [Direct transfer](https://docs.gitlab.com/ee/user/group/import/) and [Congregate](https://gitlab.com/gitlab-org/professional-services-automation/tools/migration/congregate). Both have been considered and evaluated, but these solutions do not meet the downtime requirements.

## Future iterations

- Add PostgreSQL Logical Replication as an option to minimize cutover downtime.
- Provide an API interface to make integration with infrastructure tools easier.
- Provide intuitive configuration and management UI interfaces.
