---
# This is the title of your design document. Keep it short, simple, and descriptive. A
# good title can help communicate what the design document is and should be considered
# as part of any review.
title: KEV Support
status: proposed
creation-date: "2024-08-11"
authors: [ "@onaaman" ]
coaches: [ "@username" ]
dris: [ "@product-manager", "@engineering-manager" ]
owning-stage: "~devops::<stage>"
participating-stages: [ ]
# Hides this page in the left sidebar. Recommended so we don't pollute it.
toc_hide: true
---

<!-- Design Doucments often contain forward-looking statements -->
<!-- vale gitlab.FutureTense = NO -->

<!-- This renders the design document header on the detail page, so don't remove it-->
{{< design-document-header >}}

## Summary

[KEV](https://www.cisa.gov/known-exploited-vulnerabilities-catalog) is a catalog
maintained by [CISA]((https://www.cisa.gov/)) that identifies vulnerabilities
actively exploited in the wild.
KEV support in GitLab aims to enhance vulnerability prioritization and
remediation efforts by highlighting these high-risk vulnerabilities.
The KEV support requirements are outlined
in [the KEV epic](https://gitlab.com/groups/gitlab-org/-/epics/11912). This
document focuses on the technical implementation of KEV support.

KEV data will be sourced from the CISA KEV catalog, which is
available [as a JSON
file on the CISA website](https://www.cisa.gov/sites/default/files/feeds/known_exploited_vulnerabilities.json).
This file is regularly updated by CISA and can be
downloaded and processed to extract the latest KEV information.
The goal is to make KEV information accessible through the GitLab GraphQL API,
visible on vulnerability report and details pages, and usable for filtering and
policy setting.
The implementation will leverage the existing Package Metadata Database (PMDB,
also known as license-db) infrastructure for advisory pull-and-enrichment, The
flow is as follows:

flowchart LR
A[KEV Data] -->|Pull| B[PMDB]
B -->|Process and export| C[Bucket]
C -->|Pull| D[GitLab Instance]

## Motivation

The classic approach to vulnerability prioritization is using severity based on
CVSS.
This approach provides some guidance, but is too unrefined - more than half of
all published CVEs have a high or critical score.
Other metrics need to be employed to reduce remediation fatigue and help
developers prioritize their work better. KEV provides a focused list of
vulnerabilities that are actively exploited in the wild.
Combined with existing prioritization methods, KEV helps to focus remediation
efforts on the most immediate threats and reduce overall remediation workload.
By adding KEV data to the information presented to users, we deliver these
benefits to the GitLab platform, enabling more effective and efficient
vulnerability management.
Additionally, FCEB (federal civilian executive branch) agencies must address
vulnerabilities in the KEV catalog
under [BOD 22-01](https://www.cisa.gov/news-events/directives/bod-22-01-reducing-significant-risk-known-exploited-vulnerabilities).
While this directive doesn't apply to other government levels or industry, they
often follow federal cybersecurity guidance, making it relevant to a wider
audience.

### Goals

- Enable users to use KEV data on GitLab as another metric for their
  vulnerability prioritization efforts.
- Enable compliance tracking for BOD 22-01, supporting FCEB agencies and other
  entities in monitoring and remediating KEV catalog vulnerabilities.

#### Phase 1 (MVC)

- Enable access to KEV status through GraphQL API.

#### Phase 2

- Show KEV information in vulnerability report and details pages.

#### Phase 3

- Allow filtering vulnerabilities based on KEV status.
- Allow creating policies based on KEV status.

### Non-Goals

- Dictate priority to users based on EPSS (or any other metric).

## Proposal

Support KEV on the GitLab platform.

Following the discussions in
the [KEV epic](https://gitlab.com/groups/gitlab-org/-/epics/11912), the proposed
flow is:

1. PMDB database is extended with a new table to store KEV data.
1. PMDB infrastructure runs the KEV feeder daily in order to pull, process and
   publish KEV data.
1. The advisory-processor receives the KEV data and stores them to the PMDB DB.
1. PMDB exports KEV data as part of the advisories data to an existing advisory bucket.
1. GitLab instances pull advisory data from the bucket.
    - Create a new boolean column in rails DB `pm_advisories` table to store KEV status.
1. GitLab instances expose KEV status through GraphQL API and present data in
   vulnerability report and details pages.

```mermaid
flowchart LR
    AF[Feeder] -->|pulls| A[KEV Source]
    AF -->|publishes| AP[Advisory Processor]
    AP -->|stores| DD[PMDB database]
    E[Exporter] -->|loads|DD
    E --> |exports| B[Public Advisory Bucket]
    GitLab[GitLab instance] --> |syncs| B
    GitLab --> |stores| GitLabDB
```

## Design and implementation details

## Glossary

- **PMDB** (Package metadata database, also known as License DB): PMDB is a
  standalone service (and not solely a database), outside of the Rails
  application, that gathers, stores and exports packages metadata for GitLab
  instances to consume.
  See [complete documentation](https://gitlab.com/gitlab-org/security-products/license-db/deployment/-/blob/main/docs/DESIGN.md?ref_type=heads).
  PMDB components include:
    - **Feeder**: a scheduled job called by the PMDB deployment to publish data
      from the relevant sources to pub/sub messages consumed by PMDB processors.
    - **Advisory processor**: Runs as a Cloud Run instance and consumes messages
      published by the advisory feeder containing advisory related data and
      stores them to the PMDB database.
    - **PMDB database**: a PostgreSQL instance storing license and advisory
      data.
    - **Exporter**: exports license/advisory data from the PMDB database to
      public GCP buckets.
- **GitLab database**: the database used by GitLab instances.
- **CVE** (Common Vulnerabilities and Exposures): a list of publicly known
  information-security vulnerabilities. "A CVE" usually refers to a specific
  vulnerability and its CVE ID.
- **CISA** (Cybersecurity and Infrastructure Security Agency) is a U.S. agency
  focused on cybersecurity and infrastructure protection.
- **KEV** (Known Exploited Vulnerabilities): a catalog of actively exploited
  vulnerabilities maintained by CISA

