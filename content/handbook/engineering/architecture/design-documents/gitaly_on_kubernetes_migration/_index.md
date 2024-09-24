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

## Motivation

To ensure minimal disruption to our customers, we will perform a phased deployment where Gitaly pods on Kubernetes are initially configured to handle a small amount of customer traffic. This allows us to gauge real-world performance and identify any potential issues before scaling up.

By following this blueprint, we aim to modernize our Gitaly infrastructure, improve scalability, and streamline our processes. 

### Background

Gitaly, a crucial component of GitLab's architecture, is currently deployed on Virtual Machines (VMs) in many GitLab installations. This setup has served well but presents challenges in fully embracing a cloud-native approach. As organizations increasingly adopt Kubernetes for its scalability and management benefits, the need to align Gitaly with this modern infrastructure has become apparent.

The current hybrid model, where most GitLab components run in Kubernetes while Gitaly operates on VMs, introduces complexity in deployment, management, and scaling. This disparity can lead to operational inefficiencies and hinder the full realization of cloud-native benefits.

By migrating Gitaly to Kubernetes, we aim to:

1. Simplify the overall GitLab architecture by unifying the deployment platform.
2. Leverage Kubernetes' native scaling and self-healing capabilities for Gitaly.
3. Streamline operations and reduce the complexity of managing separate VM-based components.
4. Enhance GitLab's ability to adapt to varying workloads more efficiently.
5. Provide customers with a fully containerized GitLab solution, eliminating the need for VM management alongside Kubernetes.

It's important to note that this blueprint focuses solely on standalone Gitaly deployments. It does not cover Gitaly Cluster with Praefect, as Gitaly on Kubernetes does not currently support this configuration.

### Problems
* Risk of data loss when migrating storage connections from Virtual Machines (VMs) to Gitaly pods
* Unknown performance challenges that Gitaly pods may encounter in real-world scenarios
* Current architectural constraint: deploying 1 StatefulSet with 1 replica per node for Gitaly pods

### Plan
#### Steps required for Kubernetes deployment 
We will deploy Gitaly in various environments via helm releases to test its performance, starting with:

1. Pre-production environment (Pre)
2. GSTG environment
3. GPRD-CNY environment

#### Transition process from VMs to Kubernetes

To ensure a smooth migration:

* Weights will be adjusted to allow a reasonable amount of traffic to the Gitaly pods. By default it will allocate traffic to the Gitaly instance with the most storage space available. On a fresh Gitaly deployment with new storage, the Gitaly pod will attract all traffic. To mitigat this, weights need to be adjusted.
* [gitaly-ctl](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/gitaly/gitalyctl.md) will be used to migrate storage data from VMs to Gitaly pods. For each target storage, it must be configured to be readonly before starting the migration.
* Virtual machines will eventually be decommissioned.

#### Performance, reliability, security considerations

#### Timeline and milestones for the migration
FY25Q3 - Select repositories will be migrated in GSTG env
FY25Q4 - Select repositories will be migrated in GPRD-CNY env

### References 

- To conduct migrations between storage, it is best to use [gitaly-ctl](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/gitaly/gitalyctl.md) a tool built for migrations.
