---
title: "Implementation Guidelines"
---

These are guidelines for supporting a model for Code Suggestions in the **[AI Gateway (AIGW)](#ai-gateway)**
and/or the **[GitLab monolith](#gitlab-monolith)**.

## Overview

Code Suggestion requests can be routed **direct to the AI Gateway** or **via the GitLab monolith**.

- For **direct-to-AIGW** requests, the IDE gets the model details from the GitLab monolith through the
[Direct Connections API endpoint](https://docs.gitlab.com/ee/api/code_suggestions.html#fetch-direct-connection-information).
The IDE then sends a request to AIGW with the model details fetched from the GitLab monolith.
- For **via-GitLab-monolith** requests, the IDE sends a request to GitLab monolith's
[Code Completions API endpoint](https://docs.gitlab.com/ee/api/code_suggestions.html#generate-code-completions).
The GitLab monolith then sends a request to the AIGW.

**Code Completions** requests can be sent direct-to-AIGW or via-GitLab-monolith.
**Code Generations** requests are always sent via-GitLab-monolith.

For a more in-depth overview of Code Completions vs Code Generations, and
direct-to-AIGW vs routed-via-GitLab-monolith requests, please refer to the
[Code Suggestions Technical Overview](../engineering_overview.md#code-suggestions-technical-overview) document.

## AI Gateway

[AI Gateway repository](https://gitlab.com/gitlab-org/modelops/applied-ml/code-suggestions/ai-assist).

This is where the request to the AI model is implemented.
The AIGW serves as the hub between AI models and the rest of GitLab's systems.

You can introduce a new model in the AIGW without making it generally available to all GitLab users.
For example, you can introduce a new model for latency testing purposes. A new model only becomes
available to GitLab users when it is enabled through the [GitLab monolith](#gitlab-monolith).

### AIGW API endpoints

Code Completions and Code Generations requests to the AI Gateway are sent through the different Code Suggestions API endpoints. Refer to
[this guide](https://gitlab.com/gitlab-org/modelops/applied-ml/code-suggestions/ai-assist/-/blob/main/docs/api.md#code-suggestions) for
further information about AIGW's Code Suggestions API.

### Considerations when adding a new model

- Make sure that you have specified **stop tokens** in the request to the model.
- Depending on the model and use case, you may need to **include additional context** to the request. This can involve adding the content of open files, including project libraries, etc.
- Most models will require **post-processing**, such as trimming whitespaces or removing comments.

## GitLab Monolith

[GitLab monolith repository](https://gitlab.com/gitlab-org/gitlab/).

The GitLab monolith _does not_ send requests directly to an AI Model.
The monolith sends requests to the AIGW, which in turn sends requests to AI models.

The monolith is the source of truth for which model to use for Code Completions or Code Generations.
The monolith toggles the current model through [Feature Flags](#introduce-behind-a-feature-flag).

For direct-to-AIGW requests, the monolith specifies the model details through the Direct Access endpoint.
For via-GitLab-monolith requests, the monolith includes the model details in the payload for its request
to the AIGW.

### GitLab Monolith API Endpoints

- [Direct Access endpoint](https://docs.gitlab.com/ee/api/code_suggestions.html#fetch-direct-connection-information) -
for direct-to-AIGW requests, this endpoint provides the information necessary to send a request to AIGW
- [Code Suggestions endpoint](https://docs.gitlab.com/ee/api/code_suggestions.html#generate-code-completions) -
this is the endpoint used for via-GitLab-Monolith requests

## Generic guidelines for supporting a model

These are guidelines for when you are ready to support a model for Code Suggestions,
e.g.: after you have done evaluations and have considered the model to be acceptable.

### Create an Epic

Introducing a model usually spans several tasks, so it is best to create an epic or sub-epic for this work.

### Create a Rollout Plan

You must create a rollout plan before deploying a new model.
Refer to the [Rollout Guide](../rollout_guide/index.md#create-a-rollout-plan) for more details.

### Introduce behind a Feature Flag

For both the direct-to-AIGW and routed-via-GitLab-Monolith requests, the decision on what model to use
ultimately comes from the GitLab monolith. When introducing a new model, you must
[create a Feature Flag in the GitLab monolith](https://docs.gitlab.com/ee/development/feature_flags/)
to toggle the enablement of the new model.
