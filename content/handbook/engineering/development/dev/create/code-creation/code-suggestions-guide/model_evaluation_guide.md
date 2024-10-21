---
title: "Code Suggestions Model Evaluation Guide"
---

This document serves as a technical how-to guide for evaluating new Code Suggestions models.

## Evaluation Template

When starting a model evaluation process, you must create an issue off of the
[Model Evaluation Template](https://gitlab.com/gitlab-org/code-creation/code-suggestions-model-evaluation-hub/-/blob/main/.gitlab/issue_templates/model_evaluation_template.md).

## Evaluation Criteria

Before supporting a model for Code Suggestions, we will need to evaluate against the several criteria, including **correctness** and **latency**.
For a more detailed list of criteria to consider, please refer to the [evaluation template](#evaluation-template).

### Evaluating Correctness

Model correctness can be evaluated through [ELI5](#evaluating-by-eli5).

### Evaluating Latency

Model latency can be evaluated through [ELI5](#evaluating-by-eli5)
or the [ai-model-latency-tester](#evaluating-by-ai-model-latency-tester).

When evaluating by latency, it is recommended to check requests coming from different regions.
The common regions to test are: **North America**, **Europe**, and **APAC**.

We can evaluate latency in the following ways:

- **Direct to provider**
  - Sending requests directly to the AI model provider, for example Vertex AI, Anthropic, etc
- **Routed through AIGW to provider**
  - Sending requests to the AIGW, which in turns sends requests to the provider
  - Before this can be done, you will need to [implement the model in the AIGW](implementation_guidelines.md#ai-gateway).
    You can implement a model in the AIGW without making it generally available to GitLab users.

## Evaluation Methods

### Evaluating by ELI5

[ELI5 repository](https://gitlab.com/gitlab-org/ai-powered/eli5)

#### Running and analyzing evaluations on ELI5

- Refer to the [ELI5 documentation](https://gitlab.com/gitlab-org/ai-powered/eli5/-/blob/main/doc/running_evaluation_locally/codesuggestions_evaluation.md) for guidance on running evaluations.
- Refer to the [Analyzing results](https://gitlab.com/gitlab-org/ai-powered/eli5/-/blob/main/doc/running_evaluation_locally/codesuggestions_evaluation.md#analyzing-results) subsection for guidance on evaluating correctness and latency.

**Running evaluations on a GCP instance**

Running ELI5 evaluations on a GCP instance is ideal for getting consistent latency values that are not affected by your internet connection or your current location.
Currently, there is no automated way to run evaluations on a GCP instance, so this can only be done manually for now.

Please reach out to the #g_code_creation Slack channel for guidance.

### Evaluating by ai-model-latency-tester

[ai-model-latency-tester repository](https://gitlab.com/gitlab-org/quality/ai-model-latency-tester)

Please refer to the [Latency evaluations issue](https://gitlab.com/gitlab-org/quality/ai-model-latency-tester/-/issues/57) for guidance and updates.
