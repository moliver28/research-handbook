---
title: AI Model Migration Playbook
description: "How to migrate an AI model at GitLab"
aliases: /handbook/engineering/development/data-science/ai-framework
---

## Introduction

LLM models are constantly changing and GitLab needs to constantly update our AI features to support newer models. The following guide should give a general approach on how to update our AI features to reduce the time to migrate GitLab tools.

### Purpose

Provide a guide for migrating AI models within GitLab.

### Scope

Applicable to all AI model-related teams at GitLab. We currently only support using Anthropic and Google Vertex
models.

## Migration Tasks

Migration Tasks for updating Anthropic Model:

1. **Optional** - Investigate the new model is supported within our current AI-Gateway API specification. The following step can be usually be skipped. However, sometimes to support a newer model, we may need accommodate a new API format. If that's the case, please follow these steps.

    - Make sure the newer model is supported exsiting [Messages API](https://docs.anthropic.com/en/api/messages). The migration of `Claude 2.1` to `Claude 3.0` required a change from the [Text Completions API](https://docs.anthropic.com/en/api/complete) to Messages API.

2. Add the new model to our [available models list](https://gitlab.com/gitlab-org/gitlab/-/blob/32fa9eaa3c8589ee7f448ae683710ec7bd82f36c/ee/lib/gitlab/llm/concerns/available_models.rb#L5-10).
3. Change the default model in our [AI-Gateway client](https://gitlab.com/gitlab-org/gitlab/-/blob/41361629b302f2c55e35701d2c0a73cff32f9013/ee/lib/gitlab/llm/chain/requests/ai_gateway.rb#L63-67). Please do place the change around a feature flag. We may need to quickly rollback the change.
4. Each tool we have in `ee/lib/gitlab/llm/chain/tools/*` will either pass a model or default to the existing `zero_shot` model. If we pass a model through the prompt `options`, you should the options key to the newer model.

    - _**Note:**_ There's not an exact science to which model to select for each tool. Please see the testing section to how to evaluate

Migration tasks for updating Vertex models:

** Work in Progress*

### Scope the Work

#### AI Features to Migrate

- **Duo Chat Tools:**
  - `ci_editor_assistant/prompts/anthropic.rb` - CI Editor
  - `gitlab_documentation/executor.rb` - GitLab Documentation
  - `epic_reader/prompts/anthropic.rb` - Epic Reader
  - `issue_reader/prompts/anthropic.rb` - Issue Reader
  - `merge_request_reader/prompts/anthropic.rb` - Merge Request Reader
- **Chat Slash Commands:**
  - `refactor_code/prompts/anthropic.rb` - Refactor
  - `write_tests/prompts/anthropic.rb` - Write Tests
  - `explain_code/prompts/anthropic.rb` - Explain Code
  - `explain_vulnerability/executor.rb` - Explain Vulnerability
- **Experimental Tools:**
  - Summarize Comments Chat
  - Fill MR Description

### API Changes

- Support new message API.
- Update API endpoints as needed.

### Documentation and Links

- [Claude 3 Migration](https://gitlab.com/groups/gitlab-org/-/epics/13297)
- [Migrate AI features to Claude 3.5 Sonnet](https://gitlab.com/gitlab-org/gitlab/-/issues/468334)
- [GitLab Duo Experimental Features](https://docs.gitlab.com/ee/user/gitlab_duo/#experimental-features)

## Detailed Tasks

### Chat Tools

- `ci_editor_assistant/prompts/anthropic.rb` - CI Editor
- `gitlab_documentation/executor.rb` - GitLab Documentation
- `epic_reader/prompts/anthropic.rb` - Epic Reader
- `issue_reader/prompts/anthropic.rb` - Issue Reader
- **NOT PUT INTO PRODUCTION YET**
  - `merge_request_reader/prompts/anthropic.rb` - [Merge Request Reader](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/153616#top+S)

### Chat Slash Commands

- `refactor_code/prompts/anthropic.rb` - Refactor
- `write_tests/prompts/anthropic.rb` - Write tests
- `explain_code/prompts/anthropic.rb` - Explain Code
- `explain_vulnerability/executor.rb` - Explain Vulnerability

### Experimental Tools

- Summarize Comments Chat
- Fill MR Description
- etc... [GitLab Duo Experimental Features](https://docs.gitlab.com/ee/user/gitlab_duo/#experimental-features)

### Testing

#### Model Evaluation

The `ai-model-validation` team created the following library to evaluate the performance of prompt changes as well as model changes. The following [Prompt Library README.MD](https://gitlab.com/gitlab-org/modelops/ai-model-validation-and-research/ai-evaluation/prompt-library/-/blob/main/doc/how-to/run_duo_chat_eval.md) provides details on how to evaluate the performance of AI feature.

> Another use-case for running chat evaluation is during feature development cycle. The purpose is to verify how the changes to the code base and prompts affect the quality of chat responses before the code reaches the production environment.

#### Local Development

A very valuable tool for local development to ensure the changes are correct outside of unit tests is to [LangChain](https://docs.gitlab.com/ee/development/ai_features/duo_chat.html#tracing-with-langsmith) for tracing. The tool allows you to trace LLM calls within Duo Chat to verify the LLM  tool is using the correct model.

To prevent regressions, we also have CI jobs to make sure our tools are working correctly. For more details, see the [following Duo Chat testing section](https://docs.gitlab.com/ee/development/ai_features/duo_chat.html#gitlab-duo-chat-qa-evaluation-test).

### Links

- [Convert documentation tool for Claude 3](https://gitlab.com/gitlab-org/gitlab/-/issues/458811)
- [Migrate Duo Chat tools to use Claude 3](https://gitlab.com/gitlab-org/gitlab/-/issues/455112)
- [Centralize Instant Model Setting and Consider S...](https://gitlab.com/gitlab-org/gitlab/-/issues/444664)
- [Update Code Tasks (Slash Commands) to use Claude 3](https://gitlab.com/gitlab-org/gitlab/-/issues/455717)

## Related MRs and Issues

- `ee/lib/gitlab/llm/chain/tools/ci_editor_assistant/prompts/anthropic.rb` - [CI Editor Assistant](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/149619)
- `ee/lib/gitlab/llm/chain/tools/gitlab_documentation/executor.rb` - [Convert documentation tool for Claude 3](https://gitlab.com/gitlab-org/gitlab/-/issues/458811)
- `ee/lib/gitlab/llm/chain/tools/epic_identifier/prompts/anthropic.rb` - [Modify plan tools to use Claude 3](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/150381)
- `ee/lib/gitlab/llm/chain/tools/issue_identifier/prompts/anthropic.rb` - [Modify plan tools to use Claude 3](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/150381)
- `ee/lib/gitlab/llm/chain/tools/refactor_code/prompts/anthropic.rb` - [Update Code Tasks to use Claude 3](https://gitlab.com/gitlab-org/gitlab/-/issues/455717)
- `ee/lib/gitlab/llm/chain/tools/write_tests/prompts/anthropic.rb` - [Update Code Tasks to use Claude 3](https://gitlab.com/gitlab-org/gitlab/-/issues/455717)
- `ee/lib/gitlab/llm/chain/tools/explain_code/prompts/anthropic.rb` - [Update Code Tasks to use Claude 3](https://gitlab.com/gitlab-org/gitlab/-/issues/455717)
