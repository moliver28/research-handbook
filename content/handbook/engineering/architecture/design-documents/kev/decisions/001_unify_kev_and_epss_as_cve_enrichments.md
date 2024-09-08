---
owning-stage: "~devops::secure"
title: 'KEV Support ADR 001: Unify KEV and EPSS as CVE Enrichments'
---

## Context

We are implementing support for Known Exploited Vulnerabilities (KEV) data in
GitLab. Initially, we considered storing KEV data separately from EPSS data.
However, after discussion, we realized that unifying KEV and EPSS data as CVE
enrichments could provide benefits in terms of performance and future
flexibility.

The unified approach simplifies data management and querying. By consolidating
KEV and EPSS data into a single table, we create a more flexible structure for
CVE-based enrichments. This design allows for easier incorporation of additional
data points in the future and enables GraphQL queries to retrieve all enrichment
data from a single source, improving query efficiency and simplifying the API.

The current EPSS implementation already has a design in place, which we can
leverage and extend for this unified approach.

## Decision

We have decided to:

1. Maintain separate tables for KEV and EPSS data in PMDB.
2. Export both KEV and EPSS data into a single, shared GCP bucket.
3. Implement a single process for syncing and ingesting the unified data into a
   new `pm_cve_enrichments` table in GitLab DB.
4. Structure the `pm_cve_enrichments` table to include:
    - cve_id
    - epss_score
    - is_known_exploit
5. Use GraphQL queries to access enrichment data exclusively from
   the `pm_cve_enrichments` table.

## Consequences

### Positive:

- Improved performance by storing related CVE enrichment data in a single table.
- Simplified querying process through GraphQL.
- Easier to extend for future CVE-based enrichments.
- Reduces the complexity of the data model
- Eliminates code duplication by using shared feature flags, sync ingestion, and
  export processes for both KEV and EPSS data.

### Negative:

- Requires changes to existing EPSS implementation and terminology.
- Loss of cursor functionality for KEV, requiring full data export each time due
  to EPSS data always being fully exported.
- One-time performance cost during PMDB's export due to joining KEV and EPSS
  tables.

## Alternatives

1. Store KEV data separately:
    - Advantages:
        - Maintains separation of concerns.
        - Preserves cursor functionality for KEV.
        - Less frequent KEV data updates in GitLab DB (due to smaller dataset
          and less frequent changes compared to EPSS).
    - Disadvantages:
        - Requires separate querying and potential data duplication.
        - Reduced performance in GraphQL queries due to the need to query
          multiple tables.
        - Increased complexity in ingestion and synchronizing two separate
          datasets.

2. Denormalize KEV data into vulnerabilities tables:
    - Advantages:
        - Fast access to KEV data when querying vulnerabilities.
    - Disadvantages:
        - Data redundancy.
        - Different approach between EPSS and KEV, leading to inconsistent data
          management.
        - More complicated ingestion process.

3. Store KEV data in `pm_advisories`:
    - Advantages:
        - Keeps advisory-related data together.
        - Leverages current exporting, ingestion, and sync processes for
          advisories, lessening the need for new implementations.
    - Disadvantages:
        - Requires joining with advisories for GraphQL querying, which may
          impact
          performance.
        - May introduce complexity if KEV data needs to be accessed
          independently of advisory data.

