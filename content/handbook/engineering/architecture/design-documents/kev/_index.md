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
participating-stages: []
# Hides this page in the left sidebar. Recommended so we don't pollute it.
toc_hide: true
---

<!-- Design Doucments often contain forward-looking statements -->
<!-- vale gitlab.FutureTense = NO -->

<!-- This renders the design document header on the detail page, so don't remove it-->
{{< design-document-header >}}


## Summary

[KEV](https://www.cisa.gov/known-exploited-vulnerabilities-catalog) is a catalog maintained by [CISA]((https://www.cisa.gov/)) that identifies vulnerabilities actively exploited in the wild.
KEV support in GitLab aims to enhance vulnerability prioritization and remediation efforts by highlighting these high-risk vulnerabilities.
The KEV support requirements are outlined in [the KEV epic](https://gitlab.com/groups/gitlab-org/-/epics/11912). This document focuses on the technical implementation of KEV support.

KEV data will be sourced from the CISA KEV catalog, which is available as a JSON file on the CISA website. This file is regularly updated by CISA and can be downloaded and processed to extract the latest KEV information.
The goal is to make KEV information accessible through the GitLab GraphQL API, visible on vulnerability report and details pages, and usable for filtering and policy setting.
The implementation will leverage the existing Package Metadata Database (PMDB, also known as license-db) infrastructure for advisory pull-and-enrichment, The flow is as follows:

**TODO** - ADD FLOW HERE


## Motivation

The classic approach to vulnerability prioritization is using severity based on CVSS.
This approach provides some guidance, but is too unrefined— more than half of all published CVEs have a high or critical score.
Other metrics need to be employed to reduce remediation fatigue and help developers prioritize their work better. KEV provides a focused list of vulnerabilities that are actively exploited in the wild.
Combined with existing prioritization methods, KEV helps to focus remediation efforts on the most immediate threats and reduce overall remediation workload.
By adding KEV data to the information presented to users, we deliver these benefits to the GitLab platform, enabling more effective and efficient vulnerability management.
Additionally, federal civilian executive branch (FCEB) agencies must address vulnerabilities in the KEV catalog under BOD 22-01.
While this directive doesn't apply to other government levels or private industry, they often follow federal cybersecurity guidance, making it relevant to a wider audience.

### Goals

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

<!--
This is where we get down to the specifics of what the proposal actually is,
but keep it simple!  This should have enough detail that reviewers can
understand exactly what you're proposing, but should not include things like
API designs or implementation. The "Design Details" section below is for the
real nitty-gritty.

You might want to consider including the pros and cons of the proposed solution so that they can be
compared with the pros and cons of alternatives.
-->

## Design and implementation details

<!--
This section should contain enough information that the specifics of your
change are understandable. This may include API specs (though not always
required) or even code snippets. If there's any ambiguity about HOW your
proposal will be implemented, this is the place to discuss them.

If you are not sure how many implementation details you should include in the
document, the rule of thumb here is to provide enough context for people to
understand the proposal. As you move forward with the implementation, you may
need to add more implementation details to the document, as those may become
an important context for important technical decisions made along the way. A
document is also a register of such technical decisions. If a technical
decision requires additional context before it can be made, you probably should
document this context in a document. If it is a small technical decision that
can be made in a merge request by an author and a maintainer, you probably do
not need to document it here. The impact a technical decision will have is
another helpful information - if a technical decision is very impactful,
documenting it, along with associated implementation details, is advisable.

If it's helpful to include workflow diagrams or any other related images.
Diagrams authored in GitLab flavored markdown are preferred. In cases where
that is not feasible, images should be placed under `images/` in the same
directory as the `index.md` for the proposal.
-->


## Glossary

- **PMDB** (Package metadata database, also known as License DB): PMDB is a standalone service (and not solely a database), outside of the Rails application, that gathers, stores and exports packages metadata for GitLab instances to consume. See [complete documentation](https://gitlab.com/gitlab-org/security-products/license-db/deployment/-/blob/main/docs/DESIGN.md?ref_type=heads). PMDB components include:
    - **Feeder**: a scheduled job called by the PMDB deployment to publish data from the relevant sources to pub/sub messages consumed by PMDB processors.
    - **Advisory processor**: Runs as a Cloud Run instance and consumes messages published by the advisory feeder containing advisory related data and stores them to the PMDB database.
    - **PMDB database**: a PostgreSQL instance storing license and advisory data.
    - **Exporter**: exports license/advisory data from the PMDB database to public GCP buckets.
- **GitLab database**: the database used by GitLab instances.
- **CVE** (Common Vulnerabilities and Exposures): a list of publicly known information-security vulnerabilities. "A CVE" usually refers to a specific vulnerability and its CVE ID.
- **CISA** (Cybersecurity and Infrastructure Security Agency) is a U.S. agency focused on cybersecurity and infrastructure protection.
- **KEV** (Known Exploited Vulnerabilities): a catalog of actively exploited vulnerabilities maintained by CISA

