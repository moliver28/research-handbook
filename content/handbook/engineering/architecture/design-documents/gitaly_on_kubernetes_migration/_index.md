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

It's important to note that this blueprint focuses solely on standalone Gitaly deployments. It does not cover [Gitaly Cluster](https://docs.gitlab.com/ee/administration/gitaly/#gitaly-cluster) with Praefect, as Gitaly on Kubernetes does not currently support this configuration.

### Problems

* Risk of data loss when migrating storage connections from Virtual Machines (VMs) to Gitaly pods
* Unknown performance challenges that Gitaly pods may encounter in real-world scenarios
* Current architectural constraint: deploying 1 StatefulSet with 1 replica per node for Gitaly pods

### Plan

#### Steps required for Kubernetes deployment 

##### Repositories to make configuration changes 

* [Gitaly](https://gitlab.com/gitlab-org/gitaly) - code changes that affect Gitaly application 
* [Cloud Native GitLab container images (CNG)](https://gitlab.com/gitlab-org/build/CNG) - any changes that involve infra changes to the Gitaly pod's container images will be made here. 
* [Cloud Native GitLab Helm Chart](https://gitlab.com/gitlab-org/charts/gitlab) - any changes that involve the helm chart that deploys the gitaly subchart will be made here. Eg. Gitaly Service, Gitaly ConfigMap, Gitaly probe time changes.

Deploy Gitaly in various environments via helm releases to test its performance.

Eg. Pre -> Staging -> Production Canary -> Production

#### Transition process from VMs to Kubernetes

To ensure a smooth migration:

* Weights should be adjusted to allow a reasonable amount of traffic to the Gitaly pods. Navigate to the Admin Area, adjust the weights of the storage to determine the amount of traffic directed to the Gitaly pods. We recommend starting off with a small amount of traffic.
* [gitaly-ctl](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/gitaly/gitalyctl.md) will be used to migrate storage data from VMs to Gitaly pods. For each target storage, it must be configured to be readonly before starting the migration.
* Virtual machines will eventually be decommissioned.

#### Performance, reliability, security considerations

When running Gitaly in Kubernetes, you must:
- Address pod disruption
- Make use of cgroups v2 to constrain resource usage by git processes
- Make Gitaly Pod a Guaranteed Quality of Service pod
- Optimize pod rotation time

You can refer to [Gitaly on Kubernetes](https://docs.gitlab.com/ee/administration/gitaly/kubernetes.html) for more information.
### References 

* To conduct migrations between storage, it is best to use [gitaly-ctl](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/gitaly/gitalyctl.md) a tool built for migrations.
