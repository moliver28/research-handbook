---

title: Performance Testing of Reference Architectures
---

## Overview

Doing performance testing is a complicated process to do well. This page is targeted at clarifying our process for doing performance testing as it relates to Dedicated and subsequently Cells and FedRAMP.

## Approach

Our base performance test approach is proactively test against [Reference Architectures](https://docs.gitlab.com/ee/administration/reference_architectures). We do this by running [GPT against the latest Nightly release of GitLab](https://handbook.gitlab.com/handbook/engineering/infrastructure/test-platform/performance-and-scalability/#test-process) ([customer facing description](https://docs.gitlab.com/ee/administration/reference_architectures/#validation-and-test-results)). We also run [browser based testing using GBPT against Reference Architectures](https://handbook.gitlab.com/handbook/engineering/infrastructure/test-platform/performance-and-scalability/#browser-performance-tool). This provides us confidence that the feature changes have not affected performance on environments deployed to match Reference Architectures.

Dedicated deploys Cloud Native environments based on Reference Architectures so the testing we do is directly mappable to the Dedicated Tenant environments.

### Diagrams
```mermaid
flowchart LR
  %% nodes
   tested_code{{Fully tested GitLab code}}
   reference_architectures[Reference Architectures]
   gpt_test(GPT Performance Test Run)
   gbpt_test(GBPT Performance Test Run)
   dedicated_tenant(Dedicated Tenant environment)
   cell_tenant(Cells Tenant environment)
   fedramp_tenant(FedRAMP Tenant environment)
   review_results([Review test Results])
   

  %% diagram
  tested_code --> gpt_test
  tested_code --> gbpt_test

  subgraph test_env[GET Deployed Reference Architecture Environment]
    direction TB
    gpt_test
    gbpt_test
    review_results
  end

  reference_architectures --> test_env
  reference_architectures --> dedicated_tenant
  reference_architectures --> cell_tenant
  reference_architectures --> fedramp_tenant
  gpt_test --> review_results
  gbpt_test --> review_results
  review_results --> reference_architectures

  subgraph Dedicated[Dedicated Deployed Environment]
    direction LR
    dedicated_tenant
    subgraph FedRAMP
      direction LR
      fedramp_tenant
    end

    subgraph Cells
      direction LR
      cell_tenant
    end
  end
```
Note: For readability this diagram only shows the lines for the 3k `Reference Architecture`, there are equivalant lines for all the Reference Architectures to the `GET Deployed Reference Architecture Performance Test Environments` and from the Cloud Native Hybrid Reference Architectures to the `Dedicated Deployed Environments` (based on the size of the tenant environment)
```mermaid
flowchart LR
  %% nodes
  tested_code{{Fully tested GitLab code}}
  ra_omni_1k(1k Architecture)
  ra_omni_2k(2k Architecture)
  ra_omni_3k(3k Architecture)
  ra_omni_5k(5k Architecture)
  ra_omni_10k(10k Architecture)
  ra_omni_25k(25k Architecture)
  ra_omni_50k(50k Architecture)
  ra_cnh_2k(2k Architecture)
  ra_cnh_3k(3k Architecture)
  ra_cnh_5k(5k Architecture)
  ra_cnh_10k(10k Architecture)
  ra_cnh_25k(25k Architecture)
  ra_cnh_50k(50k Architecture)
  gpt_cnh_3k(3k CNH Architecture)
  gbpt_cnh_3k(3k CNH Architecture)
  dedicated_cnh_3k(3k CNH Architecture)
  fedramp_cnh_3k(3k CNH Architecture)
  cells_cnh_3k(3k CNH Architecture)


  %% diagram

  subgraph test_env[GET Deployed\nReference Architecture\nPerformance Test Environments]
    subgraph gpt_test[GPT test pipeline]
      gpt_cnh_3k
    end

    subgraph gbpt_test[GBPT test pipeline]
      gbpt_cnh_3k
    end
  end

  subgraph ref_arch[Reference Architectures]
    subgraph omnibus[Omnibus Architectures]
      ra_omni_1k
      ra_omni_2k
      ra_omni_3k
      ra_omni_5k
      ra_omni_10k
      ra_omni_25k
      ra_omni_50k
    end

    subgraph cnh[Cloud Native Hybrid\nArchitectures]
      ra_cnh_2k
      ra_cnh_3k
      ra_cnh_5k
      ra_cnh_10k
      ra_cnh_25k
      ra_cnh_50k
    end
  end
  
  subgraph dedicated[Dedicated Deployed Environments]
    subgraph dedicated_tenant[Dedicated Tenant]
      dedicated_cnh_3k
    end

    subgraph FedRAMP
      fedramp_cnh_3k
    end

    subgraph Cells
      cells_cnh_3k
    end
  end

  tested_code --> gpt_cnh_3k
  tested_code --> gbpt_cnh_3k
  tested_code --> dedicated_cnh_3k
  tested_code --> cells_cnh_3k
  tested_code --> fedramp_cnh_3k

  gpt_cnh_3k <--> ra_cnh_3k
  gbpt_cnh_3k <--> ra_cnh_3k 
  ra_cnh_3k --> dedicated_cnh_3k
  ra_cnh_3k --> cells_cnh_3k
  ra_cnh_3k --> fedramp_cnh_3k
```

### Brittany diagram
```mermaid

  sequenceDiagram
    %% participants
    participant Distribution
    participant Self Managed D.T.
    participant .
    participant tenant

    Note left of Distribution: Product
    Note left of Distribution: Gitlab
    Note left of Distribution: Docs


  
```

## Gitaly focus

TBD

## Assurance we can provide the customer

* We have recommendations on how to determine what sized Reference Architecture they should need
* We have performance tested the CNH Reference Architectures and are confident in our published metrics
* We will listen to their concerns and work with them to provide better confidence in GitLab
    * We added a [50k Reference Architecture](https://gitlab.com/gitlab-com/gl-infra/gitlab-dedicated/team/-/issues/2445) due to a customer request
    * We added [monorepo testing based on Chromium](https://gitlab.com/gitlab-org/quality/quality-engineering/team-tasks/-/issues/2377) 

## Cells

## FedRAMP


## Sample issues supporting customer requests

* [Enhance performance testing on large monorepos](https://gitlab.com/groups/gitlab-org/quality/quality-engineering/-/epics/37)
* [Extended performance testing to a large monorepo based on Chromium](https://gitlab.com/gitlab-org/quality/quality-engineering/team-tasks/-/issues/2377)
* [Extended Reference Architectures to a 50k size](https://gitlab.com/gitlab-com/gl-infra/gitlab-dedicated/team/-/issues/2445)
* [Pairing with a customer to define what performance testing needed to be done](https://gitlab.com/gitlab-com/gl-infra/gitlab-dedicated/team/-/issues/3724)


