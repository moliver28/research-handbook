---
# This is the title of your design document. Keep it short, simple, and descriptive. A
# good title can help communicate what the design document is and should be considered
# as part of any review.
title: PMDB Additional Data Storage
status: proposed
creation-date: "2024-07-23"
authors: [ "@idawson" ]
coaches: [ "" ]
dris: [ "@idawson", "@nilieskou", "@thiagocsf" ]
owning-stage: "~devops::secure"
participating-stages: []
# Hides this page in the left sidebar. Recommended so we don't pollute it.
toc_hide: true
---


<!-- Design Doucments often contain forward-looking statements -->
<!-- vale gitlab.FutureTense = NO -->

<!-- This renders the design document header on the detail page, so don't remove it-->
{{< design-document-header >}}

<!--
Don't add a h1 headline. It'll be added automatically from the title front matter attribute.

For long pages, consider creating a table of contents.
-->

## Summary

The Package Metadata Database (PMDB) (formally [external license DB](https://gitlab.com/groups/gitlab-org/-/epics/8492)) houses both license
and advisory data in an external PostgreSQL database hosted in GCP. GitLab is investigating
adding additional package metadata to this database which makes it infeasible to copy or
export all data directly to customers instances.

Current operation of this database assumes data is to be first collected in this GCP
database, and then data is to be pulled down by individual GitLab instances, whether
it's GitLab.com or customer managed on-premise systems.

This proposal proposes different methods of storage or architectures to allow additional
package metadata that may or may not be pulled directly to customers instances.

## Motivation

The PMDB is a datastore that could benefit by being extended to house additional
package metadata. This could include other data such as project health (OpenSSF scores),
additional links to dependent packages, author information, and any other metadata that
could be useful by GitLab or our customers to make security critical decisions about their
dependencies.

Customers may want to opt into collecting some of this data locally in their instances, where
additional data could be accessible remotely through an API. It should be noted that even now,
customers can configure [which data they'd like to clone to their local instances](https://docs.gitlab.com/ee/administration/settings/security_and_compliance.html).

This configuration could be extended to pull down additional data such as project health
or other information.

### Goals

- Define how much data is "too much data" to be housed in the PMDB and GitLab instances
- Determine additional architectures that would allow GitLab to collect additional metadata for packages and versions
- Determine what types of additional data GitLab wishes to house
- Make architectural decisions which will easily allow additional data sources in the future to be added
- Agree and design an architecture which can allow for the above points in a performant manner

### Non-Goals

- Move away from the current PMDB architecture and how data is fed into it.

## Proposal

High Level:

- Consider designs for an external API for additional Metadata
- Consider designs or use better compression methods where all data could be easily stored on each GitLab instance
- Consider designing another system that could house dependency source code
- Consider alternative database storage systems that would allow us to easy add additional data types/metadata to be collected

This proposal is many a RFC where we collectively should discuss how we may want to move forward with adding additional data
to allow a central location for all dependency related metadata. Additionally, where applicable, it may be worth adding more
systems that augment the PMDB.

## Design and implementation details

### Too much data

It may be worth first defining how much data is too much data to store in the PMDB and on our customers GitLab instances. We
will need to look at each feature and estimate how much additional data would be added. For example, dependency graphs between
dependencies may be too large to store in the PMDB directly. Research spikes should be done to answer these questions for
each new feature.

### External API for additional Metadata

An external API service would give us the advantage of having a service that new features or services could utilize without
having to implement any sort of logic internally. By calling out to a service we control we can provide the necessary data directly back to the consumer.
This could also allow us to have a front end website similar to Google's [deps.dev](https://deps.dev/).
This service could be written in a way that either stores all data directly in memory, reducing costs and complexity.

One option is to store all of the PMDB data directly in memory. As of Aug 1st 2024 storing the 5.9GB of data (on disk) in a very
simple Go hashmap where the key is a concatenation of: language + package name + lowest version + highest version took up about 7-8GB of memory.

```bash
2024/08/01 13:15:41 Total from 5062 files, total records entries: 32,751,865
2024/08/01 13:15:41 Memory stats: InUse: 7426 MiB HeapAlloc: 7063
```

- Note: The data is not optimized for storage in any way, we could consider string compression or finding alternative data structures (Trie/prefix trees) to store this data.

Given that machines can easily and rather cheapily (compared to running a database server) run with 32-64GB of memory, it's not infeasible to run this API service 
with all data directly from memory. Data could be periodicaly loaded from the GCP buckets directly.

### External Code Repository for dependencies

Some features may take advantage of full source trees of either direct git repositories or uncompressed artifacts. A light-weight UI built ontop of git may allow
us to store and house dependencies and their individual versions. This would be similiar to what is available at systems like [diffend](https://my.diffend.io/gems/faraday/2.9.1/2.9.2).

Features such as static analysis based reachability analysis could take advantage of having this data housed in a central location and make exploring and developing
new features much faster.

### Alternative method of storing additional PMDB data

Another option is to investigate alternative data structures such as schemaless graph databases that could allow us to store information in a more loose structure.
The benefit of using a graph database is that we can quickly iterate on adding new data fields without worrying too much about performance. We could also take
advantage of the many algorithms to see how data could be correlated or how it is ultimately connected. Once the structure and connections are defined we could
then either export it to the current PMDB system, or create indexes in the Graph DB and serve requests directly from it.
