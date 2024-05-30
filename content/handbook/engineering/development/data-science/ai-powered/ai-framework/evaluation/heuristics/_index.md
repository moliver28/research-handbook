---
title: AI Framework Group - Eval like I am 5
description: "The AI Framework group is focused on how to support other product groups at GitLab with the AI Abstraction Layer, and GitLab AI feature development."
aliases: /handbook/engineering/development/data-science/ai-framework
---

## Good Evaluation Heuristics

- Choosing Evaluation Metrics:
  - Accuracy: Measure how often the model’s predictions are correct.
  - Precision and Recall: Evaluate the balance between correctly identified positive results and the number of actual positives.
  - F1 Score: Combines precision and recall into a single metric.
  - Latency: Measure the time taken to produce a response.
  - Token Usage: Evaluate the efficiency of the model in terms of token consumption.
  - Conciseness and Coherence: Assess the clarity and logical consistency of the model’s output.
- Designing Evaluations:
  - Baseline Comparisons: Compare new models or prompts against a baseline to determine improvements.
  - Side-by-Side Evaluations: Conduct evaluations that compare different models, prompts, or configurations directly against each other.
  - Custom Evaluators: Implement custom evaluation functions to test specific aspects of your model’s performance relevant to your application’s needs.
- Best Practices:
  - Start Small: Begin with a small, representative dataset to quickly iterate and refine your models and prompts.
  - Automate: Use CI/CD pipelines to automate the evaluation process, ensuring consistent and repeatable results.
  - Traceability: Use tracing tools to understand why certain results occurred, making debugging and improvement more straightforward.
