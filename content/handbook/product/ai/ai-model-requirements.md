---
title: "AI Model Requirements"
description: "High level guidance around AI model requirements, specifically LLMs"
---

## Intent

GitLab Duo's capabilities span a variety of use cases, an no one large language model (LLM) will be able to handle all our needs. This page outlines considerations and requirements we have for models to power Duo features. 

Example Duo Use cases

* traditional NLP
* summarization
* text to code
* code to text
* code translation
* explanation

## Code Suggestions 

[Code Suggestions](https://docs.gitlab.com/ee/user/project/repository/code_suggestions/index.html) is made up of two distinct capabilities: 

* Code Completion: Complete line as user is typing in real time
* Code Generation: Natural language code comment to full function/file generation

### Code Completion

#### Performance Metrics

Code completion is extremely sensitive to perceived latency as a developer is actively in context writing that line of code and looking for suggestions. If suggestions are slow the developer will move on. Latency of completions must be carefully balanced between quality of questions. Even if we can deliver fast completions, if they aren't relevant, they get in the way of the developer and become annoying which ultimately will lead to the developer turning the feature off. 

##### Latency Goals

* P50 goal: <500ms
* P90 goal: <750ms

##### Current Performance

* P50 average (through monolith): 700ms
* P50 average (bypassing monolith): 600ms

##### Streaming Strategy

* Focus on Time to Last Token (TTLT)
* Reason: Need to fully show completion as quickly as possible

#### Input Characteristics

* Average input size: ~7000 characters (approximately 2000 tokens)
* Note: This is the max input window allowed for the current model

### Code Generation

Code generation has more relaxed requirements. As a developer is not activley writing code and is more willing to wait multiple seconds for a long code generation based on a detailed code comment. 

#### Performance Metrics

##### Latency Goals (streaming)

* P50 Time to First Token (TTFT) goal: < 2s
* P90 TTFT goal: < 3s

##### Streaming Strategy

* Focus on Time to First Token (TTFT)
* Reason: Acceptable to stream longer responses for human reading

### General Performance Considerations

#### Latency Priority

* Focus on P50 latency due to:
  * Variance in GitLab deployment patterns
  * Customer geographies
  * Local user and customer network configurations

#### Latency Thresholds

* Minimum for launch: P50 of <500ms and P90 of <750ms
* Global concern, not just for North American customers

#### Ideal Latency

* 200ms for inference
* Assumption: ~100ms total for pre- and post-inference routing and processing
* Target: 300ms total (perceived as "instant" rendering)

#### Current Benchmarks

* No specific benchmarks available
* Performance testing process detailed at: [GitLab Blog - Inside Look: How GitLab's Test Platform Team Validates AI Features](https://about.gitlab.com/blog/2024/06/03/inside-look-how-gitlabs-test-platform-team-validates-ai-features/#performance-validation)

Note: All latency goals are for end*to*end rendering in the user IDE, not just model inference time.
