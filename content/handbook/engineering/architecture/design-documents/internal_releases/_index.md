---
title: "Internal releases for GitLab SaaS single tenant instances"
status: ongoing
creation-date: "2024-09-24"
owning-stage: "~devops::platforms"
group: Delivery::Releases
authors: ["@mayra-cabrera"]
dris: ["@mayra-cabrera"]
toc_hide: true
---

## Introduction

GitLab's business model is open core, from the beginning of time, GitLab releases were designed to be public. In 2023 GitLab launched a new
fully managed private solution, [GitLab Dedicated](https://about.gitlab.com/dedicated/), our single tenant SaaS offering. These internal
instances are under the [availability-first mindset paradigm](/handbook/engineering/development/principles/#prioritizing-technical-decisions).

With single tenant SaaS instances, Delivery has an increasing need to prepare private packages to remediate high-severity issues within
[specific SLAs](/handbook/security/product-security/vulnerability-management/sla/). There is no official release process
available to remediate these private instances; in case of a high-severity vulnerability, release managers must manually operate the release
tooling available to remediate the single tenant SaaS instances within the remediation SLAs, impacting GitLab customers and the ability to remediate
them on time:

* Lack of a specific release process puts at risk the availability and integrity of single tenant SaaS customers.
* The current release tooling lacks the flexibility to perform simultaneous releases, for example, if a vulnerability is found near the
  monthly release week preparation, a release candidate must be created earlier on the development cycle, renouncing features and bug fixes for the active monthly release.
* Elevated coordination between release managers and all the stakeholders involved.

![current remediation strategy](/static/images/handbook/engineering/architecture/design-documents/internal-releases/current_remediation_strategy.png)

## Goal

Introduce an internal release GitLab process focused on releasing private packages targeted to  private GitLab SaaS managed instances.
Private packages will internally ship high-severity fixes before disclosing them to the general audience. Due to the nature of
[GitLab business model](/handbook/company/stewardship/#business-model) addressing internal releases brings unique
long-term challenges that will be driving Delivery-Releases work during the upcoming quarters:

1. **Understanding the internal release nature**. Introducing a private release on top of the GitLab’s open nature by default
is a unique challenge that starts by understanding the problem, vision, scope, and challenges. The outcome of this first step
is this blueprint that documents the internal release roadmap.
2. **Remove the blocking nature of releases**. Engineering constraints prevent preparing a patch release in the middle of the
monthly release week preparation. Establishing a private release process requires removing this constraint with flexible tooling
to allow simultaneous releases without leaking vulnerabilities before they're disclosed.
3. **Elevate the GitLab Dedicated remediation process to a first-class citizen**. GitLab SaaS single tenant instances are remediated on the
fly during a critical patch release, involving considerable toil from release management, security and engineering stakeholders.
Internal releases aim to upgrade the GitLab Dedicated remediation process to be at the same level as GitLab.com and self-managed remediation processes.

![goal](/static/images/handbook/engineering/architecture/design-documents/internal-releases/goal.png)

## Key terms

* Internal releases: New private release strategy to remediate GitLab SaaS single tenant instances within [specific SLAs](/handbook/security/product-security/vulnerability-management/sla/).
* GitLab SaaS single tenant instances: SaaS instances managed by GitLab, Inc. At the moment limited to [GitLab Dedicated](https://about.gitlab.com/dedicated/).
* [Patch release](/handbook/engineering/releases/patch-releases) or self managed release: A semver versioned package backporting bug and security fixes based on the [GitLab Maintenance Policy](https://docs.gitlab.com/ee/policy/maintenance.html).
* [Monthly release](/handbook/engineering/releases/#self-managed-overview): A semver versioned package containing features and bug fixes deployed to GitLab.com
* [Auto-deploy](/handbook/engineering/deployments-and-releases/deployments/): GitLab process to deploy application changes to GitLab.com
* [Release managers](https://about.gitlab.com/community/release-managers/): DRI's to deliver GitLab monthly and patch releases and performing deployments to GitLab.com

## Goals and non-goals

### Vision

#### Short-term

Align the internal releases effort into the GitLab Delivery strategy. Outline a vision, effort, and an understanding of the
challenges and requirements to embed an internal release process as part of the GitLab releases. We will deliver this by:

* Documenting a blueprint detailing the roadmap and iterative steps to achieve the internal release vision.
  * Epic: https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/1292

#### Medium-term

Release Managers will kick off an automated process to create a private release version with the relevant fixes required
to remediate GitLab Dedicated without disclosing the vulnerabilities to the public. After the GitLab Dedicated team has
sent an acknowledgement that all instances are upgraded, the publish process is then kicked off. We will deliver this by:

* Designing an internal release process to remediate high-severity incidents on GitLab SaaS single tenant instances.
  * Epic: https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/1201
* Bridging the patch release process to account for the current GitLab Dedicated remediation strategy. This will
  permit the generation of a private package with a different tag from the public patch.
  * Epic: https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/1373
* Decouple the current auto-deploy strategy. This will transform release tooling into highly flexible tools and
  allow to cleanly separate the private and public parts of this process to ensure GitLab Dedicated is running a patched
  version before any fixes are communicated/released publicly.
  * Epic: https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/1050.

#### Long-term

An internal release process to remediate high-severity incidents on GitLab SaaS single tenant instances is part of the GitLab
release strategy. Release managers will be able to perform an internal release process to remediate high-severity incidents
in GitLab SaaS single tenant instances. The outcome of this process will allow GitLab to iteratively deliver fixes to GitLab Dedicated
based on the remediation SLAs or when there is a pressing need (24-hour remediation or short critical remediation targets).

The whole process should be automated end to end, initiating with the auto-upgrade of Dedicated tenants via Switchboard
provided API, and only paging engineers when manual intervention is required. We will do this by:

* Use advanced package deployment strategies to prepare a private package without blocking an existing release process.
* Emitting private packages without disclosing the vulnerabilities to the general audience.
* Acquaint the internal release process with stakeholders involved in the GitLab Dedicated remediation strategies.

### Scope

Internal releases are limited to introducing a new release process to SaaS instances managed by GitLab, Inc. At the moment,
this is limited to GitLab Dedicated.

### Out of scope

* Internal releases are not intended to be a product feature.
* Internal releases are not intended to create releases with custom functionalities that diverge from the standard GitLab product offering.
* Internal releases are limited to mitigate critical vulnerabilities or bug fixes that impact the availability of
  GitLab SaaS single tenant instances. Issues with lower severity stick to the [patch release cadence](/handbook/engineering/releases/#patch-release-cadence).
* GitLab.com and GitLab self-managed instances are not considered for internal releases. On these instances,
  auto-deploy, patch and monthly releases remediate bug and vulnerabilities within the [remediation SLAs](/handbook/security/product-security/vulnerability-management/sla/).
* GitLab Cells is not considered for internal releases, subject to change in the future.

## Proposed plan of action

Aside from understanding the internal releases concept, introducing a new internal release strategy, two
main requirements must be addressed:

1. Remove the blocking nature of GitLab releases.
2. Elevate the GitLab Dedicated remediation process to a first-class citizen.

These two requirements can be addressed simultaneously, the work for each will span throughout multiple quarters.

![roadmap](/static/images/handbook/engineering/architecture/design-documents/internal-releases/roadmap.png)

### Remove the blocking nature of GitLab releases

The mitigation of GitLab instances (SaaS and self-managed) requires a security fix to be prepared, merged and deployed
to the GitLab production environments. This operation breaks the mirroring between the GitLab canonical and security
repositories which impedes the monthly release preparation: performing a monthly release with a pending security fix
puts at risk the integrity of GitLab instances because the vulnerability is revealed before the fix is available to the
public. An internal release process requires adjusting the mitigation strategy to use private and specially made packages
that don't break the mirroring between GitLab repositories. This work will be done in iterations that will likely span multiple quarters:

1. **First iteration: Decouple auto-deploy tagging from rollout** - Removes the strong coupling between building packages
   and rolling them out to GitLab production environments by establishing two independent processes: one for building packages
   and one for rolling them out. This iteration paves to have highly flexible release tooling along with advanced package
   selection strategies.
2. **Second iteration: Filter and selection of auto-deploy packages** - With the decoupling of the auto-deploy process,
   packages can be configured to be built with specific requirements (minimum SHA). Useful to guarantee the mitigation
   and remediation of production incidents.
3. **Third iteration: Ability to create custom auto-deploy packages** - The flexibility of auto-deploy should be focused on
   allowing the creation of packages with experimental features (Ruby/Rails upgrades) or with unmerged changes (security fixes).

### Transform the GitLab remediation process into a first-class citizen

Establish a new private release model for GitLab Dedicated and elevate it to the same standard as GitLab.com and self-managed
remediation processes. Considering GitLab open-core nature this is an uncharted territory that will require multiple iterations:

1. **First iteration: Bridge the patch release process to account for GitLab Dedicated remediation strategy** - Adjusts the release
   tooling to generate self-managed packages without interfering with the patch release process.
2. **Second iteration: Introduce an internal release process** - Design and introduce an internal release process to remediate
   GitLab Dedicated instances.
3. **Third iteration: Automate the internal release process end-to-end** - With an established internal release process and
   with the ability to create custom internal packages:
   * The highly flexible auto-deploy process will be used to deploy security fixes without breaking the mirroring between GitLab repositories.
   * The internal release process will guarantee predictability and results, and minimize the human factor from the process. The remediation of high severity
   vulnerabilities in GitLab Dedicated instances will be automated from start to end by using the Switchboard functionality to perform an auto-upgrade of Dedicated tenants.
