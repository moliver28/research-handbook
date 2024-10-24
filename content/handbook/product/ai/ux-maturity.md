---
title: "UX maturity guidelines for AI-assisted features"
description: "How to mature an AI-assisted feature from a UX perspective."
---

## Summary

The following guidelines focus on the **UX** aspect of the maturity of AI-assisted features. [Other aspects](https://docs.gitlab.com/ee/policy/experiment-beta-support.html), like stability or documentation, should also be taken into account to determine the appropriate feature maturity.

To evaluate the UX maturity of AI-assisted features, use three criteria from the [Product Development Flow](/handbook/product-development-flow/):

1. **Validation: Problem validation**: How well do we understand the problem?
1. **Validation: Solution validation**: How well does the solution address the problem?
1. **Build: Improve**: How successful is the solution?

## Suggested validation for AI features

| Criteria/Maturity | Experiment | Beta | GA |
|-|-|-|-|
| [Problem validation](#validation-problem-validation) | Can be based only on assumptions (evidence not required). | Mix of evidence and assumptions. | Only evidence or no high-risk assumptions. |
| [Solution validation](#validation-solution-validation) | Not required. | Solution validation with 6 internal users. | Solution validation with 6 external users. |
| [Improve](#build-improve) | Not applicable (no data before launch). | Quality goals set by the team are reached. | Quality goals set by the team are reached. |
| [AI Output and Usability Quality](#evaluating-the-quality-of-ai-output) | Not required. | Quality goals set by the team are reached. | Quality goals set by the team are reached. |

### Validation: Problem validation

In order to determine a solution, it's essential to understand the customer problem. See [guidelines for AI problem validation](/handbook/product/ux/ux-research/research-in-the-ai-space/#guideline-1-problem-validation---identify-and-understand-user-needs).

### Validation: Solution validation

AI solutions follow the standard [solution validation](/handbook/product/ux/ux-research/solution-validation-and-methods/) process, with some additional considerations:

* It can beneficial to simulate the AI system's output in testing early to inform engineering efforts.
* AI systems can produce inaccurate or unpredictable output. It's important to collect user feedback about AI errors, trust, and risk.

See [guidelines for AI solution validation](/handbook/product/ux/ux-research/research-in-the-ai-space/#guideline-2-pre-solution-validation---collect-user-feedback-on-your-idea-before-building-anything) and [AI Usability Metric](/handbook/product/ux/ux-research/research-in-the-ai-space/#ai-usability-metric) for more information.

### Build: Improve

**How successful is the solution?** To answer this, in this context of feature UX maturity, teams should look beyond feature usage as the success metric and try to include [usability](/handbook/product/ux/ux-research/usability-testing/#usability-at-gitlab) signals. High usage doesn't necessarily mean the feature is successful. Usability signals help assess solution success in terms of how _useful, efficient, effective, satisfying, and learnable_ it is.

It's also important to include AI response accuracy in your success metrics. AI-powered features can generate a response or output that is incorrect, irrelevant, or harmful. The risk of an incorrect response depends on the feature. It's important to test the AI system's responses as part of a formative evaluation. For example, you can have one or more expert evaluators (internal or external) test different scenarios to assess the AI responses.

### Evaluating the Quality of AI Output

While GitLab does not directly control the models we use from our AI Vendors, the output of these models can be influenced by various techniques we do control (prompt engineering, RAG, context enrichment, etc). End users do not care how this works, so the quality of output is directly perceived as quality of the feature. For that reason we've provided the following guidelines to help teams navigate output quality confidence and risk.

Quality confidence should be a measure of how certain we are that the feature will or won't product harmful or incorrect results that damage the user experience. Risk should be a measure of how likely the feature will produce harmful or incorrect results.

Teams can use [UX Research guidance](/handbook/product/ux/ux-research/when-to-conduct-ux-research/#additional-considerations-weighing-confidence-vs-risk) to determine their confidence level. Here are additional suggestions:

* High confidence = strong evidence from 2 or more customer facing sources (see below).
* Medium confidence = evidence of good performance from at least one customer facing source and little to no evidence of bad performance.
* Low confidence = no customer facing evidence of good performance OR evidence of poor performance.

Risk is a measure of how much potential harm can a feature cause to a user, an organization, GitLab, or the world. Creating vulnerable code, risking bad press, generating false information are examples of risk.

We have a variety of tools and processes to help you navigate various states of confidence and risk they include:

* [UX Bash](../product/ux/ux-research/ux-bash/)
* [Central Evaluation Framework](https://internal.gitlab.com/handbook/product/ai-strategy/ai-integration-effort/ai_testing_and_evaluation/#test-2-centralized-evaluation-framework) which is supported by the [Model Validation](../../engineering/development/data-science/ai-powered/model-validation/_index.md) team
* [Intro to Prompt Engineering](https://www.promptingguide.ai/introduction)

Note: For Duo Enterprise, the [Definition of Done](https://gitlab.com/gitlab-org/gitlab/-/issues/444274#ga-scope--definition-of-done (internal link)) is the SSOT.

#### High Confidence & Low Risk

When an AI-powered feature has high confidence in the output quality and low risk of producing harmful or incorrect results, the feature can rely primarily on the standard [feature maturity](https://docs.gitlab.com/ee/policy/experiment-beta-support.html) definitions. In this case an evaluation dataset is not required, however the feature should have basic guardrails like unit tests and can rely mainly on the existing AI Framework and AI Gateway.

Consider running a UX Bash with at least 10 external users validating the quality of the output. We have a framework for how to run them to evaluate output quality.

* You should have a baseline understanding of the quality of your feature.
  * Above a threshold where users at least find the output helpful
  * Output quality should not cause user concern (insecure, offensive, risky, etc)
* Have a proposed quality threshold based on your initial eval dataset.

#### Low Confidence & Low Risk

When an AI-powered feature has low confidence in the output quality and low risk of producing harmful or incorrect results, the feature can rely primarily on small scale and basic evaluations, usually performed by developers during development and within unit tests. In this case, an evaluation dataset is not required, however plans should be developed to improve confidence. Features in this state should not be moved to GA before increasing confidence.

It's recommended you have a UX Bash with at least 10 external users validating the quality of the output. We have a framework for how to run them to evaluate output quality.

* Develop a dataset of at least 100 prompts (user inputs and desired LLM outputs) that proxy expected production use of your feature. Provide examples that focus both on desired and potentially undesirable behavior from the LLM.
* Primary use-cases for your feature should be included in the dataset
  * Eval dataset should be representative of realistic customer usage
  * We strongly prefer basing evals on historical data from GitLab based data whenever possible.

#### Unknown Confidence & Unknown Risk

When an AI-powered feature has unknown confidence in the output quality and unknown risk of producing harmful or incorrect results, go back to the root user problem you are trying to solve.

 It's helpful to define:

* What the feature should do
* What the feature should NOT do
* Examples of high quality output

When in this unknown territory, you should not proceed with releasing an AI feature. Contact the AI-powered stage (#s_ai-powered) in slack to get ideas of how to start removing uncertainty.

### High Confidence & High Risk

When an AI-powered feature has high confidence in the output quality and high risk of producing harmful or incorrect results, the feature must develop an evaluation dataset.

It's required that you have a multiple [UX Bashs](../product/ux/ux-research/ux-bash/) with at least 10 external users each time validating the quality of the output. We have a framework for how to run them to evaluate output quality.

* Develop a dataset of at least 500 evaluations that focus on the areas of risk you've identified.
* The dataset is supported in the CEF and included in the daily CEF run.
* All supported use-cases and/or programming languages supported have datasets for evaluation at scale (should be hundreds of evaluations or more)
* Ideally, run a final UX bash to ensure real end users agree with the eval quality threshold.
* Obtain explicit approval from leadership before considering the feature to go GA.

#### Low Confidence & High Risk

When an AI-powered feature has low confidence in the output quality and high risk of producing harmful or incorrect results, the feature should not proceed until the team increases confidence of the output quality.

It's required that you have multiple [UX Bashes](../product/ux/ux-research/ux-bash/) with at least 10 external users each validating the quality of the output. We have a framework for how to run them to evaluate output quality.

* Develop a dataset of at least 100 evaluations that focus on the areas of risk you've identified.
* The dataset is supported in the CEF and included in the daily CEF run.
* Obtain explicit approval from leadership before considering the feature for anything past experimental, off by default release
