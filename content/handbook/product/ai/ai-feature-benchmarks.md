---
title: "AI Feature Benchmarks"
description: "This page outlines GitLab's benchmarks for measuring the effectiveness and impact of AI-powered features in our development workflow."
---

## AI Feature Evaluation Benchmarks

This page outlines GitLab's standardized benchmarks for evaluating AI features throughout the development lifecycle. These metrics are designed to be approachable for all teams while aligning with industry best practices for AI evaluation.

## Challenges with evaluating features

- Non-deterministic outputs are difficult to test due to the variance in responses
- Speed of industry advancements sometimes require reworking features mid-development
- High quality evaluations require time, focus and attention to detail

## Key Principles

- Focus on end-user value and impact
  - Reason: Ensures that AI features directly address user needs and provide tangible benefits.
- Evaluate early and often using lightweight methods
  - Reason: Allows for rapid iteration and course correction, mitigating the risk of investing heavily in features that may not meet user needs.
- Prioritize real-world usage over academic benchmarks
  - Reason: Academic benchmarks may not always translate to practical value; real-world usage provides more accurate insights into feature effectiveness.
- Embrace iteration and continuous improvement
  - Reason: Acknowledges the evolving nature of AI technology and user needs, allowing for ongoing refinement of features.

## Potential Evaluation Metrics

### 1. Time to Value

**Definition**: The time it takes for a user to complete a task using the AI feature compared to manual methods.

**Benchmark**: 30% reduction in time compared to baseline

**Measurement**: A/B testing comparing AI-assisted vs non-AI workflows

### 2. Adoption Rate

**Definition**: Percentage of eligible users actively using the AI feature

**Benchmark**: 50% adoption within 3 months of feature release

**Measurement**: Usage analytics tracked through GitLab telemetry

### 3. User Satisfaction

**Definition**: User-reported satisfaction with the AI feature

**Benchmark**: Average feedback score of 4 out of 5 or higher

**Measurement**: Centralized AI feedback system integrated across GitLab products

### 4. Similarity to Human Output

**Definition**: The degree of match between AI-generated outputs and human-created ones for equivalent tasks

**Benchmark**: 90% or higher similarity with human-created outputs

**Measurement**: Automated comparison against ground truth datasets created by human experts

### 5. Impact on Development Velocity (if applicable)

**Definition**: Reduction in overall development cycle time when using AI features

**Benchmark**: 20% reduction in time from issue creation to merge

**Measurement**: GitLab cycle analytics data

### 6. Safety and Ethical Considerations

**Definition**: Assessment of potential risks, biases, or ethical concerns related to the AI feature

**Benchmark**: No critical safety issues identified; bias metrics below established thresholds

**Measurement**: Combination of automated testing, expert review, and diverse user feedback

### 7. Expert Comparison

**Definition**: Performance of the AI feature compared to [human experts in the same domain](../../product/personas/_index.md)

**Benchmark**: AI performance meets or exceeds median expert level

**Measurement**: Controlled trials comparing AI and expert performance on domain-specific tasks

## Evaluation Stages

### Prototype / Early Product

- Focus on rapid user feedback and iteration
- Use simple yes/no evaluations rather than complex grading
- Prioritize "thumbs up/down" user reactions

### Pre-Production

- Implement automated evaluations using ground truth datasets
- Test tool selection and reasoning capabilities
- Evaluate end-to-end workflows, not just individual components

### Production

- Monitor real-world usage patterns and edge cases
- Track user-centric metrics (time saved, tasks completed)
- Continuously gather and analyze user feedback

## Things to Avoid

- Over-relying on academic benchmarks that don't reflect real-world usage
- Spending excessive time on evaluations before validating product-market fit
- Using complex evaluation frameworks or processes that slow down iteration
- Getting tied up in overly rigid evaluation procedures that hinder agility and rapid improvement

## Best Practices

1. Integrate lightweight evaluations throughout the development process
2. Leverage GitLab's existing analytics and telemetry capabilities
3. Prioritize user feedback over purely quantitative metrics
4. Regularly review and update benchmarks as AI capabilities evolve
5. Share evaluation results transparently across teams

## Resources

- [GitLab AI Strategy](link-to-strategy-doc)
- [Industry AI Evaluation Standards](link-to-standards)
- [Setting Up A/B Tests in GitLab](link-to-ab-test-guide)
