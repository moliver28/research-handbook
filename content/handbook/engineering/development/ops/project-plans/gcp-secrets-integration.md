---
title: "GCP Secrets Integration - Weekly Project Plan"
description: "GCP Secrets Integration - Weekly Project Plan - Pipeline Security Group"
---

[This project has been released.](https://about.gitlab.com/releases/2024/01/18/gitlab-16-8-released/#gcp-secret-manager-support)

## Archive

<details><summary>Click to view past plans</summary>

## Milestone 16.7 (November 13, 2023 - December 8, 2023)

### Milestone Goals

- Complete [the OIDC configuration for getting secrets from GCP](https://gitlab.com/gitlab-org/gitlab/-/issues/428402)
- Begin work on [runner authentication with GCP](https://gitlab.com/gitlab-org/gitlab/-/issues/428400)

### Week of  November 20, 2023 (Milestone 16.7)

#### Team Capacity

- 1 BE

#### Goals

- [https://gitlab.com/gitlab-org/gitlab/-/issues/428402](https://gitlab.com/gitlab-org/gitlab/-/issues/428402) Create POC and proposed solution for the integration with GCP Secrets Manager using GCP Workload Identity Pool.

### Week of  November 27, 2023 (Milestone 16.7)

#### Team Capacity

- 1 BE

#### Goals

- [https://gitlab.com/gitlab-org/gitlab/-/issues/428402](https://gitlab.com/gitlab-org/gitlab/-/issues/428402) Finalize the proposed solution. We would have a clear understanding of what changes are needed on Rails, what information would be sent by Rails to Runner in the job payload, how Runner would use this job payload to authenticate to GCP and access the secrets.

### Week of  December 4, 2023 (Milestone 16.7)

#### Team Capacity

- 1 BE

#### Goals

- [https://gitlab.com/gitlab-org/gitlab/-/merge_requests/138151](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/138151) Merge the architecture blueprint MR.
- [https://gitlab.com/gitlab-org/gitlab/-/issues/428400](https://gitlab.com/gitlab-org/gitlab/-/issues/428400) Begin development on runner authentication with GCP

### Week of  December 11, 2023 (Milestone 16.7)

#### Team Capacity

- 1 BE

#### Goals

- [https://gitlab.com/gitlab-org/gitlab/-/issues/428400](https://gitlab.com/gitlab-org/gitlab/-/issues/428400) Continue development for runner authentication with GCP
- [https://gitlab.com/gitlab-org/gitlab/-/issues/428401](https://gitlab.com/gitlab-org/gitlab/-/issues/428401) Begin development for rails support

## Milestone 16.8 (December 18, 2023 - January 12, 2024)

### Milestone Goals

- [https://gitlab.com/gitlab-org/gitlab/-/issues/428400](https://gitlab.com/gitlab-org/gitlab/-/issues/428400) Complete runner authentication with GCP
- [https://gitlab.com/gitlab-org/gitlab/-/issues/428401](https://gitlab.com/gitlab-org/gitlab/-/issues/428401) Complete development for rails support

</details
