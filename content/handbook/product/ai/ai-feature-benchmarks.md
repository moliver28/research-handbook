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
- Having relevant tests in place to evaluate AI output in an automated way is required for efficient development and improvement. 

## Key Principles

- Focus on end-user value and impact
  - Reason: Ensures that AI features directly address user needs and provide tangible benefits.
- Evaluate early and often using lightweight methods
  - Reason: Allows for rapid iteration and course correction, mitigating the risk of investing heavily in features that may not meet user needs.
- Prioritize real-world usage over academic benchmarks
  - Reason: Academic benchmarks may not always translate to practical value; real-world usage provides more accurate insights into feature effectiveness.
- Embrace iteration and continuous improvement
  - Reason: Acknowledges the evolving nature of AI technology and user needs, allowing for ongoing refinement of features.
- Embrace automatic testing of AI output
  - Reason:
Without such in place efficient development iteration and following up on user feedback is hard to impossible.

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

**Benchmark**: More than 80% of answers are rated good, i.e. rated 4 or 5 on a scale from 1 to 5

**Measurement**: User tests such as Duo bashes, where users rate every AI output.

### 4. Automatic testing as a proxy for User Satisfaction

**Definition**: Automated tests that rate AI output similarly than humans would 

**Benchmark**: More than 80% of answers are rated good, i.e. rated 4 or 5 on a scale from 1 to 5

**Measurement**: Test questions collected from users or derived from other sources and automatically tested via Centralized Evaluation Framework for instance with an LLM judge that rates the answer.

### 4. Similarity to Human Output

**Definition**: The degree of match between AI-generated outputs and human-created ones for equivalent tasks

**Benchmark**: 90% or higher similarity with human-created outputs

**Measurement**: Automated comparison against ground truth datasets created by human experts

### 5. Impact on Development Velocity (if applicable)

**Definition**: Reduction in overall development cycle time when using AI features

**Benchmark**: 20% reduction in time from issue creation to merge

**Measurement**: GitLab Value Stream Analytics data

### 6. Safety and Ethical Considerations

**Definition**: Assessment of potential risks, biases, or ethical concerns related to the AI feature

**Benchmark**: No critical safety issues identified; bias metrics below established thresholds

**Measurement**: Combination of automated testing, expert review, and diverse user feedback

### 7. Expert Comparison

**Definition**: Performance of the AI feature compared to [human experts in the same domain](../../product/personas/_index.md)

**Benchmark**: AI performance meets or exceeds median expert level

**Measurement**: Controlled trials comparing AI and expert performance on domain-specific tasks

### 8. Usability

**Definition**
How easy the AI-powered feature is to learn and use.

**Benchmark**
Usability eval led by a member of UX.

**Measurement**
Scoring depends on feature maturity. 






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

- Do not assume the LLM will do what you tell it to.
- Do not assume that manually testing a few AI outputs will be enough to grant production quality AI outputs that satisfy users.
- Do not assume that you can use user feedback to adjust prompts without automated AI output tests in place. If you do this you will like fix one problem (that the users reported) but may harm another scenario that might have worked previously. 

## Best Practices

1. Integrate lightweight automated evaluations throughout the development process
2. Leverage GitLab's existing analytics and telemetry capabilities
3. Prioritize user feedback over purely quantitative metrics
4. Regularly review and update benchmarks as AI capabilities evolve
5. Share evaluation results transparently across teams

## Resources

- [GitLab AI Strategy](link-to-strategy-doc)
- [Industry AI Evaluation Standards](link-to-standards)
- [Setting Up A/B Tests in GitLab](link-to-ab-test-guide)
