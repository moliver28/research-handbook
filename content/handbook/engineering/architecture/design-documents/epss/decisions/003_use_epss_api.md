---
owning-stage: "~devops::secure"
title: 'EPSS Support ADR 003: Use EPSS API over ZIP file'
---

## Context

The EPSS Feeder in PMDB retrieves data from https://www.first.org/epss/data_stats and publishes it via GCP's Pub/Sub. Two options were considered for this retrieval:

1. Downloading a ZIP file containing EPSS data.
2. Using the API to fetch data directly.

We chose the API because the EPSS feeder publishes data in batches through GCP, making it more suitable for adding offsets and limits to each request. Using a ZIP file would require extracting and saving all data locally, which is less efficient and elegant. Additionally, API requests allow for controlled data sizes without handling local files. More details can be found [in this issue](https://gitlab.com/gitlab-org/gitlab/-/issues/468129#note_2006034466).

## Decision

Use the API for retrieving EPSS data instead of downloading a ZIP file.

## Consequences

The API implementation is more elegant and doesn't involve local storage. The ZIP file option's implementation was slightly faster (~0.01 minutes for the ZIP VS. ~0.05 minutes for the API), but this gap is negligible because PMDB doesn't require real-time processing.
The main concern was about rate limits. However, since we haven't seen any documentation about that on the official site, and we have never received an error related to that now or in the past, we assume it is acceptable.

## Alternatives

Downloading and processing a ZIP file, which would require local storage, file extraction, and a cursor to publish in batches, leading to a less elegant solution.
