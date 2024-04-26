---
title: "GitLab Server Migrations Playbook"
---

View the [Customer Success homepage](/handbook/customer-success/) for additional Customer Success handbook content.

---

This page is to supplement the [GitLab Server Migration Playbook](https://docs.google.com/spreadsheets/d/1cP6czE6zZ9EWT5HGOF2MGP2repiV0GI8a8V2i9iK9vM/edit#gid=0) *(internal link)*. Also please reference the [Skills Exchange session on Server Migrations](https://youtu.be/DUPsiUHnfZI) *(private video for internal use only)* for additional context on the information below.

This playbook is designed for GitLab to GitLab migrations only.
It does not cover conversions from other SCM systems or GitLab server consolidation (multiple GitLab servers into a single instance).

## Migration Types

This playbook supports the following migrations...
- GitLab on-prem (baremetal/VM) to GitLab on-prem.
- GitLab on-prem to self-managed GitLab in the cloud (VM based).
- GitLab on-prem/cloud to GitLab SaaS
- GitLab on-prem/cloud to Kubernetes

Each of these migrations are covered in more detail in the playbook itself.
Additionally, each of these migrations will have there own playbook in Gainsight.

**Note:** *GitLab highly recommends that customers use our [standard reference architectures](https://docs.gitlab.com/ee/administration/reference_architectures/) based on their current number of users and accounting for any anticipated growth. Any deviations from these reference architectures may lead to degraded reliability and performance.*

## Migration Methodologies

There are a number of different methodologies for migrating GitLab. This section details the most likely methodologies and the pros/cons of each.

#### GitLab Geo

[GitLab Geo](https://about.gitlab.com/solutions/geo/) is built-in functionality that is included with GitLab Premium. It allows a customer to create a read-only replica server that is automatically updated with every change made to the primary server. It also allows for manual failover for disaster recovery. This failover functionality is what makes GitLab Geo an excellent option for server migrations.

**Pros**
- Tightly coupled with GitLab and is a supported feature.
- Near real-time data synchronization.
- Migrating should be a simple matter of failing over from the old server to new server.
- Should have the shortest downtime of all methods.
- Probably the best options for medium sized servers.

**Cons**
- Due to the constant need to be connected to the primary server, it is difficult to de-couple the new server for testing.
- Some data is not replicated. [See here for a full list of replicated data types](https://docs.gitlab.com/ee/administration/geo/replication/datatypes.html). Non-replicated data would have to be subsequently synced over via Rsync.
- Geo setup is non-trivial.
- Geo adds additional complexity to the migration (ie, there are more moving parts and therefore more things that can go wrong).

#### Rsync

Rsync is a standard Linux/Unix tool used to transfer files from a remote location to a local machine.

**Pros**
- Well known & documented.
- Everyone has access to it. Its a standard Linux tool that is included in all distributions.
- Any experienced SysAdmin will have used Rsync at some point. It should be a familiar tool for just about everyone.
- Downtime will be reduced as the followup Rsync should be smaller. Though this depends on when the initial Rsync was done.
- Probably the best option for extremely large migrations.

**Cons**
- Can be slow.
- Multiple Rsyncs will be required. Usually a preliminary Rsync to pre-populate the server in advance, followed by a second Rsync to "catch up" on new data since the initial sync.
- Performing multiple Rsyncs can allow for unusual interactions with git repo files. Make sure all Rsyncs after the first use the *--delete* flag.

#### GitLab Backup & Restore

GitLab does include [backup & restore functionality](https://docs.gitlab.com/ee/raketasks/backup_restore.html).

**Pros**
- A GitLab backup is an all in one package of all data from the server. It can also be customized to backup only certain data if you are using another method (like Rsync) to transfer other data types.
- Works best with small servers and is probably the best option for smaller servers.

**Cons**
- As servers grow in size, the full backup of all data can take a long time (as will the subsequent restore). There is also a chance that at even larger sizes, the backup may fail altogether.
- Downtime will be longer as you wait for the backup, transfer and restoration of data.
- There is no opportunity to pre-populate the new server and transfer over just the delta.

#### GitLab Project Export & Import

GitLab has [export/import functionality](https://docs.gitlab.com/ee/user/project/settings/import_export.html) that allows the per project transfer of projects from one server to another.

**Pros**
- Only way to migrate from self-managed to GitLab SaaS w/o PS help.

**Cons**
- Only way to migrate from self-managed to GitLab SaaS w/o PS help.
- Very manual and slow. Has to be done on a per-project basis.
- Target & Destination servers need to be very similar versions. [See compatible versions here](https://docs.gitlab.com/ee/user/project/settings/import_export.html#version-history).

## Tools & Resources

There are a number of teams and tools that can assist the CSM and the customer in the migration process.

- [GitLab Performance Tool](https://gitlab.com/gitlab-org/quality/performance) - This is the best tool for testing the performance of the new server and is what our Quality team uses for testing our own reference architectures.
- [GitLab Smoke Tests](https://gitlab.com/gitlab-com/support/toolbox/gitlab-smoke-tests) - This test uses GitLab CI to quickly test if GitLab features are working as intended.
- [GitLab Support](https://gitlab.com/gitlab-com/support/support-team-meta) - If a customer with Premium support has break-fix issues during their migration, our Support team can help.
- [Reference Architecture Group](/handbook/engineering/quality/quality-engineering/self-managed-excellence/#reference-architectures) - An internal group led by the Quality team that built and maintains GitLab's reference architectures. They can help analyze GitLab Performance Tool results and provide consultation and recommendations on the use of our reference architectures.
- GitLab Geo - This team is best reached via our internal Slack in **#g_geo**.
