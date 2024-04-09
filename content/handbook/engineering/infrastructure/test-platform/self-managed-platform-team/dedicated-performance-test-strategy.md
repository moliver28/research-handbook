---

title: Performance Testing of Reference Architectures
---

This page is targeted at clarifying our process for doing performance testing as it relates to our Reference Architectures. This is not ment to replace the existing documentation, but rather to supplement the `how` and `what` in our existing documentation and provide a `why` our customers can trust that the results we present are relevant to their environments.

## Approach

The base of the performance test approach is to proactively test against [Reference Architectures](https://docs.gitlab.com/ee/administration/reference_architectures). This is done by running [GPT against the latest Nightly release of GitLab](https://handbook.gitlab.com/handbook/engineering/infrastructure/test-platform/performance-and-scalability/#test-process) ([customer facing description](https://docs.gitlab.com/ee/administration/reference_architectures/#validation-and-test-results)). There is also [browser based testing using GBPT against Reference Architectures](https://handbook.gitlab.com/handbook/engineering/infrastructure/test-platform/performance-and-scalability/#browser-performance-tool).  This provides confidence that the feature changes have not affected performance on environments deployed to match Reference Architectures.

Dedicated deploys Cloud Native environments based on Reference Architectures so the testing done for Reference Architectures is directly mappable to the Dedicated Tenant environments.

### Current Test Tools

| Tool | Test Details | Latest Results |
| ---- | ------------ | -------------- |
| [GPT](https://gitlab.com/gitlab-org/quality/performance) | https://gitlab.com/gitlab-org/quality/performance/-/wikis/current-test-details | https://gitlab.com/gitlab-org/quality/performance/-/wikis/home |
| [GBPT](https://gitlab.com/gitlab-org/quality/performance-sitespeed) | https://gitlab.com/gitlab-org/quality/performance-sitespeed/-/wikis/Current-Test-Details | https://gitlab.com/gitlab-org/quality/performance/-/wikis/Benchmarks/SiteSpeed |


## How do Reference Architecture based performance tests work?

Reference Architectures are the center of our performance testing approach. They describe the infrastructure that we are deploying to stand up GitLab on. GET deploys the infrastructure based on the Reference Architecture and then deploys the feature tested version of GitLab on that infrastructure. As we run performance tests, we review the results and they feedback to iteratively improve the Reference Architectures. When we deploy a Tenant under Dedicated environment, we use the same Reference Architecture to define the infrastructure we are deploying.

```mermaid
flowchart LR
  %% nodes
   tested_code{{Fully tested GitLab code}}
   reference_architectures[Reference Architectures]
   gpt_test(GPT Performance Test Run)
   gbpt_test(GBPT Performance Test Run)
   dedicated_tenant(Dedicated Tenant environment)
   review_results([Review test Results])
   get(GitLab Environment Toolkit)

  %% diagram
  tested_code --> get

  subgraph test_env[Transitory Reference Architecture Test Environment]
    gpt_test
    gbpt_test
    review_results
  end

  reference_architectures --> get
  get -- deploys to --> test_env
  get -- deploys to --> dedicated_tenant
  gpt_test --> review_results
  gbpt_test --> review_results
  review_results --> reference_architectures

  subgraph Dedicated[Dedicated Deployed Environment]
    dedicated_tenant
  end
```

This diagram shows a different view into the same information. It shows all the Reference Architectures we have defined and how the 3k Cloud Native Reference Architecture links to the performance test pipelines and the Dedicated environments. For readability, only the lines for the [3k Cloud Native Hybrid Reference Architecture](https://docs.gitlab.com/ee/administration/reference_architectures/3k_users.html#cloud-native-hybrid-reference-architecture-with-helm-charts-alternative) are shown. Lines for the other [Reference Architectures](https://docs.gitlab.com/ee/administration/reference_architectures/) could be drawn instead. The Reference Architecture fields in the diagram link to their corresponding definitions.


```mermaid
flowchart LR
  classDef hidden display: none;
  %% nodes
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
  dedicated_cnh_3k(3k CNH Architecture)

  %% external links
  click ra_omni_1k "https://docs.gitlab.com/ee/administration/reference_architectures/1k_users.html"
  click ra_omni_2k "https://docs.gitlab.com/ee/administration/reference_architectures/2k_users.html"
  click ra_omni_3k "https://docs.gitlab.com/ee/administration/reference_architectures/3k_users.html"
  click ra_omni_5k "https://docs.gitlab.com/ee/administration/reference_architectures/5k_users.html"
  click ra_omni_10k "https://docs.gitlab.com/ee/administration/reference_architectures/10k_users.html"
  click ra_omni_25k "https://docs.gitlab.com/ee/administration/reference_architectures/25k_users.html"
  click ra_omni_50k "https://docs.gitlab.com/ee/administration/reference_architectures/50k_users.html"
  click ra_cnh_2k "https://docs.gitlab.com/ee/administration/reference_architectures/2k_users.html#cloud-native-hybrid-reference-architecture-with-helm-charts-alternative"
  click ra_cnh_3k "https://docs.gitlab.com/ee/administration/reference_architectures/3k_users.html#cloud-native-hybrid-reference-architecture-with-helm-charts-alternative"
  click ra_cnh_5k "https://docs.gitlab.com/ee/administration/reference_architectures/5k_users.html#cloud-native-hybrid-reference-architecture-with-helm-charts-alternative"
  click ra_cnh_10k "https://docs.gitlab.com/ee/administration/reference_architectures/10k_users.html#cloud-native-hybrid-reference-architecture-with-helm-charts-alternative"
  click ra_cnh_25k "https://docs.gitlab.com/ee/administration/reference_architectures/25k_users.html#cloud-native-hybrid-reference-architecture-with-helm-charts-alternative"
  click ra_cnh_50k "https://docs.gitlab.com/ee/administration/reference_architectures/50k_users.html#cloud-native-hybrid-reference-architecture-with-helm-charts-alternative"

  %% diagram

  subgraph test_env[Performance Test CI Pipelines]
    hidden:::hidden
    subgraph gpt_test[GPT test pipeline]
      gpt_cnh_3k
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

    subgraph cnh[Cloud Native Hybrid Architectures]
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
  end

  gpt_cnh_3k <--> ra_cnh_3k
  ra_cnh_3k --> dedicated_cnh_3k
```

## Types of performance tests covered

We have tests that cover a variety of different areas of GitLab in order to provide confidence in our application:

| Tool | Area |
| ---- | ---- |
| GPT | [API](https://gitlab.com/gitlab-org/quality/performance/-/wikis/current-test-details#api) |
| GPT | [git](https://gitlab.com/gitlab-org/quality/performance/-/wikis/current-test-details#git) |
| GPT | [scenarios](https://gitlab.com/gitlab-org/quality/performance/-/wikis/current-test-details#scenarios) |
| GPT | [web](https://gitlab.com/gitlab-org/quality/performance/-/wikis/current-test-details#web) |
| GBPT | [web](https://gitlab.com/gitlab-org/quality/performance-sitespeed/-/wikis/Current-Test-Details) |

We performance test web with both GPT and GBPT because they each provide different approaches to testing that give us different insights that we use to improve performance.

## Environment specifics

This section identifies some of the key criteria of Dedicated

### Dedicated

- Deploys a Reference Architecture based environment with [GitLab Environment Toolkit](https://gitlab.com/gitlab-org/gitlab-environment-toolkit)
- Deploys the previous major release of GitLab
- Deploys to AWS/GCP
- Uses cloud-provider managed services
- Cloud-Native Hybrid


### Findings

Dedicated deployments use standard Reference Architecture infrastructure, so our existing performance tests are directly attributable