---
title: "Gitaly on Kubernetes Migration"
status: proposed
creation-date: "2024-09-06"
authors: [ "@echui" ]
owning-stage: "~devops::enablement"
toc_hide: true
---

{{< design-document-header >}}

## Summary

This blueprint outlines the migration strategy for deploying Gitaly on Kubernetes, with the ultimate goal of replacing the current Gitaly Virtual Machines. The plan will detail:

1. Steps required for Kubernetes deployment
2. Transition process from VMs to Kubernetes
3. Performance, reliability, security considerations
4. Timeline and milestones for the migration

By following this blueprint, we aim to modernize our Gitaly infrastructure, improve scalability, and streamline our DevOps processes. 

## Motivation

To ensure minimal disruption to our customers, we aim to deploy Gitaly pods that can handle a small amount of traffic initially, specifically in the 
gprd-cny environment. This phased deployment approach allows us to gauge real-world performance and identify any potential issues before scaling up.

### Background

### Problems
* Risk of data loss when migrating storage connections from Virtual Machines (VMs) to Gitaly pods
* Unknown performance challenges that Gitaly pods may encounter in real-world scenarios
* Current architectural constraint: deploying 1 StatefulSet with 1 replica per node for Gitaly pods

### Plan 
#### Steps required for Kubernetes deployment 
We will deploy Gitaly in various environments to test its performance, starting with:
1. Pre-production environment (Pre)
2. GSTG environment
3. GPRD-CNY environment
4. Final phase: GPRD

#### Transition process from VMs to Kubernetes
The transition process will occur in the GPRD environment. To ensure a smooth migration:

* Weights will be adjusted to allow a reasonable amount of traffic to the Gitaly pods.
* Gitaly-ctl will be used to migrate storage data from VMs to Gitaly pods. For each target storage, it must be configured to be readonly before starting the migration.
* Virtual machines will eventually be decommissioned.

#### Performance, reliability, security considerations
#### Timeline and milestones for the migration 

### References 
To conduct migrations between storage, it is best to use [gitaly-ctl](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/gitaly/gitalyctl.md) a tool built for migrations.
