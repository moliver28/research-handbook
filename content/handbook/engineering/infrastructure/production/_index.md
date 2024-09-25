---
title: "Production"
controlled_document: true
---

{{% alert color="warning" %}}
If you're a GitLab team member and are looking to alert Reliability Engineering about an availability issue with GitLab.com, please find quick instructions to report an incident here: [Reporting an Incident](/handbook/engineering/infrastructure/incident-management/#reporting-an-incident).
{{% /alert %}}

{{% alert color="warning" %}}
If you're a GitLab team member looking for help with a security problem, please see the [Engaging the Security On-Call](/handbook/security/security-operations/sirt/engaging-security-on-call.html) section.
{{% /alert %}}

## The Production Environment

The GitLab.com production environment is comprised of services that operate–or support the operation of–gitlab.com.
For a complete list of production services see the [service catalog](https://gitlab.com/gitlab-com/runbooks/-/blob/master/services/service-catalog.yml)

## How to Get Help

See [how to get assistance](/handbook/engineering/infrastructure/team/reliability/#getting-assistance).

## Why `infrastructure` and `production` queues?

### Premise

Long term, additional teams will perform work on the production environment:

- Release Engineering performs deployments on production
- Security performs scans against the production
- Google may perform work on the underlying production infrastructure

We cannot keep track of **events** in production across a growing number of *functional* queues.

Furthermore, said teams will start to have on-call rotations for both their function (e.g., security) and their services.  For people on-call, having a centralized tracking point to keep track of said events is more effective than perusing various queues. Timely information (in terms of when an event is happening and how long it takes for an on-call person to understand what's happening) about the production environment is critical. The `production` queue centralizes production event information.

### Implementation

Functional queues track team workloads (`infrastructure`, `security`, etc) and are the source of the work that has to get done. Some of this work clearly impacts production (build and deploy new storage nodes); some of it will not (develop a tool to do x, y, z) until it is deployed to production.

The `production` queue tracks events in production, namely:

- [changes](/handbook/engineering/infrastructure/change-management/)
- [incidents](/handbook/engineering/infrastructure/incident-management/)
- deltas (exceptions) -- still need to do handbook write up

Over time, we will implement hooks into our automation to *automagically* inject change audit data into the `production` queue.

This also leads to a single source of data. Today, for instance, incident reports for the week get transcribed to both the On-call Handoff and Infra Call documents (we also show exceptions in the latter). These meetings serve different purposes but have overlapping data. The input for this data should be queries against the `production` queue versus the manual build in documents.

Additionally, we need to keep track of error budgets, which should also be derived from the `production` queue.

We will also be collapsing the `database` queue into the `infrastructure` queue. The database is a special piece of the infrastructure for sure, but so are the storage nodes, for example.

For the on-call SRE, every event that pages (where an event may be a group of related pages) *should* have an issue created for it in the `production` queue.  Per the severity definitions, if there is at least *visible* impact (functional inconvenience to users), then it is by definition an incident, and the Incident template should be used for the issue.  This is likely to be the majority of pager events; exceptions are typically obvious, i.e. they impact only us and customers won't even be aware, or they're alerts that are pre-incident level which by acting on we avoid incidents.

### Security Related Changes

All direct or indirect changes to authentication and authorization mechanisms used by GitLab Inc. by customers or employees require additional review and approval by a member of at least one of following teams:

- [production team](/handbook/engineering/infrastructure/production/) member
- [security team](/security/)  member
- developer from a different team that is staff level or higher

This process is enforced for the following repositories where the approval is mandatory using
[MR approvals](https://docs.gitlab.com/ee/user/project/merge_requests/approvals/):

- [gitlab-oauth2-proxy](https://gitlab.com/gitlab-cookbooks/gitlab-oauth2-proxy)
- [gitlab_users](https://gitlab.com/gitlab-cookbooks/gitlab_users)

Additional repositories may also require this approval and can be evaluated on a
case-by-case basis.

When should we loop the security team in on changes? If we are making major changes to any of the following areas:

1. Processing credentials/tokens
1. Storing credentials/tokens
1. Logic for privilege escalation
1. Authorization logic
1. User/account access controls
1. Authentication mechanisms
1. Abuse-related activities

#### Type Labels

Type labels are very important. They define what kind of issue this is. Every issue should have one or more.

|       Label        | Description                                                                                                             |
|--------------------|-------------------------------------------------------------------------------------------------------------------------|
|      `~Change`     | Represents a Change on infrastructure please check details on : [Change](/handbook/engineering/infrastructure/change-management/)                             |
|     `~Incident`    | Represents a Incident on infrastructure please check details on : [Incident](/handbook/engineering/infrastructure/incident-management/)                           |
|     `~Database`    | Label for problems related to database                                                                                  |
|     `~Security`    | Label for problems related to security                                                                                  |

#### Services

The services list is mentioned here : https://gitlab.com/gitlab-com/runbooks/blob/master/services/service-catalog.yml

### Always Help Others

We should never stop helping and unblocking team members. To this end, data should always be gathered to assist in highlighting areas for automation and the creation of self-service processes. Creating an issue from the request with the proper labels is the first step. The default should be that the person requesting help makes the issue; but we can help with that step too if needed.

If this issue is urgent for whatever reason, we should label them following the instructions above and add them to the ongoing Milestone.

## On-Call Support

For details about managing schedules, workflows, and documentation, see the [on-call documentation](/handbook/engineering/on-call/).

### On-Call escalation

Given the number of systems and service that we use, it's very hard if not impossible to reach an expert level in all of them. What makes it even harder is the rate of changes made to our infrastructure. For this reason, the person on-call is not expected to know everything about all of our systems. In addition, incidents are often complex and vague in their nature requiring different perspectives and ideas for solutions.

Reaching out for help is considered good practice and should not be mistaken for incompetence. Asking for help while following the escalation guidelines and checklists can expose information and result in faster resolution of problems. It also improves the knowledge of the team as a whole when for example an undocumented problem is covered in runbooks after an incident or when questions are asked in Slack channels where others can read it. This is true for on-call emergencies as well as project work. You will not be judged on the questions you ask, regardless of how elemental they might be.

The SRE team's primary responsibility is availability of gitlab.com. For this reason, helping the person on-call should take priority over project work. It doesn't mean that for every single incident, the entire SRE team should drop everything and get involved. However, it does mean that as knowledge and experience in a field that is relevant to a problem, they should feel entitled to prioritize that over project work. Previous experiences have shown that as the incident's severity increased or potential causes were ruled out, more and more people from across the company were getting involved.

## Production Events Logging

All configuration, deploys and feature flag events are recorded in Elastic Search using the events index.
To access events and for more information about how they are logged see the [events runbook](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/events/README.md).

These events include deploys, feature-flags, configuration (Chef, Terraform), and all Kubernetes changes.
Events are recorded separately for the staging and production environment.

### Incident Subtype - Abuse

For some incidents, we may figure out that the usage patterns that led to the issues were abuse.  There is a process for how we define and handle abuse.

1. The definition of abuse can be found on the [security abuse operations section of the handbook](/handbook/security/)
1. In the event of an incident affecting GitLab.com availability, the SRE team may take actions immediately to keep the system available.  However, the team must also immediately involve our security abuse team.  A new [security on call rotation](/handbook/security/security-operations/sirt/engaging-security-on-call.html) has been established in PagerDuty - There is a Security Responder rotation which can be alerted along with a Security Manager rotation.

## Backups

### Purpose

This section is part of [controlled document](/handbook/security/controlled-document-procedure.html) covering our controls for backups.

### Scope

Production database backups

### Roles & Responsibilities

| Role  | Responsibility |
|-----------|-----------|
| Infrastructure Team | Responsible for configuration and management |
| Infrastructure Management (Code Owners) | Responsible for approving significant changes and exceptions to this procedure |

### Procedure

Backups of our production databases are taken every 24 hours with continuous incremental data (at 60 sec intervals), streamed into [GCS](https://cloud.google.com/storage). These backups are encrypted, and follow the lifecycle:

- Initial 7 days in [Multi-regional](https://cloud.google.com/storage/docs/storage-classes#standard) storage class.
- After 7 days migrated to [Coldline](https://cloud.google.com/storage/docs/storage-classes#coldline) storage class.
- After 90 days, backups are deleted.
- Snapshots of non Patroni-managed database (e.g. PostgreSQL DR replicas) and non-database (e.g. Gitaly, Redis, Prometheus) data filesystems are taken every hour and kept for at least 7 days.
- Snapshots of Patroni-managed databases (a designated replica, in fact) are taken every 6 hours and kept for 7 days.

Data stored in Object Storage (GCS) such as artifacts, the container registry, and others have no additional backups, relying on the [99.999999999% annual durability](https://cloud.google.com/storage/docs/storage-classes#descriptions) and multi-region buckets.

For details see the runbooks, particularly for [GCP snapshots](https://gitlab.com/gitlab-com/runbooks/blob/master/docs/uncategorized/gcp-snapshots.md) and [Database backups using WAL-E/WAL-G (encrypted)](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/patroni/postgresql-backups-wale-walg.md)

### Exceptions

Exceptions to this backup policy will be tracked in the [compliance issue tracker](https://gitlab.com/gitlab-com/gl-security/security-assurance/team-commercial-compliance/compliance/-/issues/).

### References

- Parent Policy: [Information Security Policy](/handbook/security/)

## DR process

## Database recovery

### Purpose

This is a overview of the disaster recovery strategy we have in place for the PostgreSQL database. In this context, a disaster means losing the main database cluster or parts of it (a DROP DATABASE-type incident).

### Scope

Applies to recovery of the GitLab PostgreSQL production database in a disaster scenario.

## Roles & Responsibilities

| Role | Responsibility|
| ---- | ------ |
| Infrastructure Team | Responsible for executing recovery of the production gitlab.com database in the event of a disaster |
| Infrastructure Management (Code Owners) | Responsible for approving significant changes and exceptions to this procedure |

### Summary

For the [PostgreSQL database disaster recovery process](#database-recovery), we use [Point-in-Time Recovery (PITR)](https://www.postgresql.org/docs/9.6/continuous-archiving.html), which stores daily snapshots and transaction logs (WAL) in AWS S3. In case of a disaster, this allows us to replay WAL logs to a specific point in time. We utilize [delayed replicas](#delayed-replica) to quickly perform PITR from the WAL archive in case disaster strikes additionally we have [archived replicas](#archive-replica) inplace to continuously validate the WAL archive, ensuring that the Point-in-Time Recovery (PITR) process is intact and can be applied without interruption in case of a recovery alongwith [Disaster Recovery Replicas](#disaster-recovery-replicas) as an interim measure

### Procedure in depth

#### Restore Testing

A backup is only worth something if it can be successfully restored in a certain amount of time. In order to monitor the state of backups and measure the expected recovery time (DB-DR-TTR), we employ a daily process to test the backups.

This process is implemented as a CI pipeline (see [README.md](https://gitlab.com/gitlab-com/gl-infra/gitlab-restore/postgres-gprd/-/blob/master/README.md) for details). On a daily schedule, a fresh database GCE instance is created that restores from the latest backup, gets configured as an archive replica that recovers from the WAL archive (essentially performing PITR). After this is complete, the restored database is verified.

There is monitoring in place to detect problems with the restore pipeline (currently using [deadmanssnitch.com](https://deadmanssnitch.com/)). We plan to monitor the time it takes to recover and other metrics soon.

#### Disaster recovery replicas

The backup strategy above is a cold backup. In order to restore from a cold backup, we need to retrieve the full backup from a cold storage (via network) and perform PITR from it. This can take quite some time considering the amount of data needed to be put on the network.

The current speed of restoring a cold backup from AWS S3 is at about 380 GB per hour (net size) for retrieving the base backup. With a database size of currently 2.1 TB, just retrieving the base backup alone takes more than 5 hours already. The PITR phase is generally deemed slower.

We currently aim at a DB-DR-TTR of 8 hours to recover from a backup. We’re not there yet and as an interim measure, we introduce disaster recovery replicas.

#### Delayed replica

Another option is to have a replica in place that always lags a few hours behind the production cluster. We call this a delayed replica: It is a normal streaming replica but delayed by a few hours. In case disaster strikes, it can be used to quickly perform PITR from the WAL archive. This is much faster than a full restore, because we don’t have to fully retrieve a full backup from S3. Additionally, with daily snapshots the latest snapshot is 24 hours (plus the time it took to capture the snapshot) old worst-case. A delayed replica is constantly kept at a certain offset with respect to the production cluster and hence does not need to replay too many hours worth of data.

Production host: postgres-dr-delayed-01-db-gprd.c.gitlab-production.internal
Chef role: gprd-base-db-postgres-delayed

#### Archive Replica

Another type of replica is an archive replica. It’s sole purpose is to continuously recover from the WAL archive and hence test the WAL archive. This is necessary because PITR relies on a continuous sequence of WAL that can be applied to a snapshot of the database (basebackup). If that sequence is broken for whatever reason, PITR can only recover until this point and no further. We monitor the replication lag of the archive replica. If it falls back too far, there’s likely a problem with the WAL archive.

The restore testing pipeline also performs PITR from the WAL archive and thus also would be able to detect (some) problems with the archive. However, employing an archive replica that is close to the production cluster helps to detect problems with the archive much faster than with a daily test of a backup. Also, the archive replica has to consume all WAL from the archive - a backup restore is likely to only read a portion of the archive to recover to a certain point in time.

In that sense, there is overlap between functionality of archive and delayed replicas and the restore testing. Together it gives us high confidence in our cold backup and PITR recovery strategy.

Production host: postgres-dr-archive-01-db-gprd.c.gitlab-production.internal
Chef role: gprd-base-db-postgres-archive

### Exceptions

Exceptions to this procedure will be tracked as per the [Information Security Policy Exception Management Process](/handbook/security/controlled-document-procedure/#exceptions)

## Gamedays

### Overview

Mock DR events are simulated almost every week for a service and/or combination of services to test our DR processes and improve on them in case of an actual incident.

### Definitions

#### Confidence Levels

We have clear confidence levels setup for each of the services that helps represent how efficient our current DR process is.

#### Zonal Confidence Level

- <b>No confidence</b>
    1. We have not tested recovery
    2. We do not have a good understanding of the impact of the component going down
    3. We do not have an emergency plan for when the component goes down

- <b>Low confidence</b>
    1. We have not tested recovery
    2. We have a good understanding of the impact of the component going down
    3. We may or may not have an emergency plan when the component goes down, but it has not been validated

- <b>Medium confidence</b>
    1. We have tested recovery in a production like environment but not tested in production
    2. We have a good understanding of the impact of the component going down
    3. We have an emergency plan for when the component goes down, and it has been validated in some environment

- <b>High confidence</b>
    1. We have tested recovery in production
    2. We have a good understanding of the impact of the component going down
    3. We have an emergency plan when the component goes down, and it has been validated

**Note** : This is still a WIP object, currently we have services like Gitaly , Patroni , PG Bouncer , HAProxy in Medium confidence

### Time Measurements

During the process of testing our recovery processes for Zonal and Regional outages, we want to record timing information.
There are three different timing categories right now:

1. Fleet specific VM recreation time
2. Component specific DR restore process time
3. Total DR restore process time

#### Common measurements

<b>VM Provision Time</b>
This is the time from when an apply is performed from an MR to create new VMs until we record a successful bootstrap script completion.
In the bootstrap logs (or console output), look for Bootstrap finished in X minutes and Y seconds.
When many VMs are provisioned, we should find the last VM to complete as our measurement.

<b>Bootstrap Time</b>
During the provisioning process, when a new VM is created, it executes a bootstrap script that may restart the VM.
This measurement might take place over multiple boots.
This script can help measure the bootstrap time.
This can be collected for all VMs during a gameday, or a random VM if we are creating many VMs.

<b>Gameday DR Process Time</b>
The time it takes to execute a DR process. This should include creating MRs, communications, execution, and verification.
This measurement is a rough measurement right now since current process has MRs created in advance of the gameday.
Ideally, this measurement is designed to inform the overall flow and duration of recovery work for planning purposes.

**Note** : View time measurements [here](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/disaster-recovery/recovery-measurements.md)

## Patching

### Policy

All servers in the production environment managed and maintained by the GitLab infrustructure team will be proactively maintained and patched with the latest security patches.

### Summary of Patching Strategy

All production servers managed by chef have a base role that configures each server to install and use [`unattended-upgrades`](https://gitlab.com/gitlab-com/gl-infra/chef-repo/blob/8c522363bde0248f6d66adae0d1b6c233d31d261/roles/gprd-base.json#L31-42) for automatically installing important security packages from the configured apt sources.
`Unattended-upgrades` check for updates everyday between 6 and 7 am UTC. The time is randomized to avoid hitting the mirrors at the same time. All output is logged
to `/var/log/unattended-upgrades/*.log`.

Unattended upgrades is configured to automatically patch all security upgrades for packages with the exception of the GitLab omnibus package.

The critical change process is described in the [emergency change process](/handbook/engineering/infrastructure/emergency-change-processes) overview.

### Patching Validation

Patch validation can be performed in 3 ways.

- Manually by cross examining the logs of the host with the vulnerability finding in [wiz.io](https://wiz.io).
- Reviewing vulnerability & tracking issue raised into GitLab by [Vulnerability Management teams automation] (/handbook/security/product-security/vulnerability-management/automation/)
- Reach out to Vulnerability Management in slack `#g_vulnerability_management`

### General OS (Ubuntu or other Linux) Version updates

Infrastructure will look to begin OS upgrades for Ubuntu LTS releases 6 months after their release and attempt to maintain all GCP compute instances on an LTS within the last 5 years of release.  We leverage [Ubuntu Pro](https://ubuntu.com/pro) to gain an extension on security updates for older OS releases using their [ESM](https://ubuntu.com/security/esm) service, and [Ubuntu Livepatch](https://ubuntu.com/security/livepatch) to automatically apply Kernel security updates to running systems.

## Penetration Testing

Infrastructure will provide support to the [security team](../../security) for issues found during
penetration testing. For coordinating a pen test or to coordinate any procedures to address and remidiate
vulnerabilities, should be communicated to the infrastructure team through an issue in the [infrastructure issue tracker](https://gitlab.com/gitlab-com/infrastructure/issues/).

In the issue please provide the following:

- scope of the testing
- a suggested time frame
- the depth of testing
- which services will be tested
- the procedures being done
- any possible teams that may be affected (such as support, security, etc)

Please tag issues with the `~security` label and `/cc` infrastructure managers.
