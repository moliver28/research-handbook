---

title: Performance Testing in Dedicated
---

## Overview

Doing performance testing is a complicated process to do well. This page is targeted at clarifying our process for doing performance testing as it relates to Dedicated and subsequently Cells and FedRAMP.

## Approach

Our base performance test approach is proactively test against [Reference Architectures](https://docs.gitlab.com/ee/administration/reference_architectures). We do this by running [GPT against the latest Nightly release of GitLab](https://handbook.gitlab.com/handbook/engineering/infrastructure/test-platform/performance-and-scalability/#test-process) ([customer facing description](https://docs.gitlab.com/ee/administration/reference_architectures/#validation-and-test-results)). We also run [browser based testing using GBPT against Reference Architectures](https://handbook.gitlab.com/handbook/engineering/infrastructure/test-platform/performance-and-scalability/#browser-performance-tool). This provides us confidence that the feature changes have not affected performance on environments deployed to match Reference Architectures.

Dedicated deploys Cloud Native environments based on Reference Architectures so the testing we do is directly mappable to the Dedicated Tenant environments.

## Work done to support customer requests

* [Extended performance testing to a large monorepo based on Chromium](https://gitlab.com/gitlab-org/quality/quality-engineering/team-tasks/-/issues/2377)
* [Extended Reference Architectures to a 50k size](https://gitlab.com/gitlab-com/gl-infra/gitlab-dedicated/team/-/issues/2445)


