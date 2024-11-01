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
  - Example: Instead of optimizing for academic code generation metrics, focus on whether developers can efficiently use and integrate the Code Suggestions in their workflow.
- Evaluate early and often using lightweight methods
  - Reason: Allows for rapid iteration and course correction, mitigating the risk of investing heavily in features that may not meet user needs.
  - Example: Conduct weekly user surveys or "Duo bashes" to gather quick feedback on the relevance and usefulness of Code Suggestions in different programming languages and contexts.
- Prioritize real-world usage over academic benchmarks
  - Reason: Academic benchmarks may not always translate to practical value; real-world usage provides more accurate insights into feature effectiveness.
  - Example: 
    - Academic benchmark: Achieving high perplexity scores on code completion tasks.
    - Real-world expectation: Providing contextually relevant and syntactically correct code suggestions that align with the user's project structure and coding style.
- Embrace iteration and continuous improvement
  - Reason: Acknowledges the evolving nature of AI technology and user needs, allowing for ongoing refinement of features.
  - Example: Implement a feedback loop where user acceptance rates of Code Suggestions (measured by Tab presses vs. Esc presses) inform model fine-tuning and improvement of the suggestion algorithm.
- Embrace automatic testing of AI output
  - Reason: Without such in place, efficient development iteration and following up on user feedback is hard.
  - Example: Develop automated tests that evaluate the quality of Code Suggestions against project-specific criteria, such as adherence to coding standards, successful compilation, and passing of existing unit tests.

## Potential Evaluation Metrics

### 1. Time to Value

**Definition**: The time it takes for a user to complete a task using the AI feature compared to manual methods.

**Benchmark**: 30% reduction in time compared to baseline

**Measurement**: 

- Primary: Comparative analysis of AI-assisted vs. non-AI workflows
  - Example: Compare the time taken to complete a task using Duo features vs. without it, across a representative sample of users and projects.
  - Note: This is not a strict A/B test but rather a comparison of outcomes between users who opt to use the AI feature and those who don't.
- Secondary: Trend analysis of relevant DORA metrics
  - Example: Monitor changes in Deployment Frequency or Lead Time for Changes for projects that have adopted Duo features compared to the overall trend.
  - This allows for a broader view of impact without requiring strict user assignment to test groups.
- Tertiary: User self-reported time savings
  - Example: Periodic surveys asking users to estimate time saved on coding tasks when using Duo features.

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

See [AI usability metric](../../product/ux/ux-research/research-in-the-ai-space/#ai-usability-metric) for details.

## Evaluation Stages

### Initial Stage: Proof of Concept / Minimum Viable Product

- Focus on rapid user feedback and iteration
- Use simple yes/no evaluations rather than complex grading
- Prioritize "thumbs up/down" user reactions

### Ongoing Development and Evaluation (Applicable to all stages: Experiment, Beta, or GA)

#### Local Development

- Implement automated evaluations using ground truth datasets
- Test tool selection and reasoning capabilities
- Evaluate end-to-end workflows, not just individual components

#### Production Environment

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

- [Doing Research in the AI Space](../../product/ux/ux-research/research-in-the-ai-space/index.md)
- [AI Feature Development Playbook](https://gitlab.com/gitlab-org/ai-powered/discussions/-/issues/18)
- [A/B Testing For AI Features](TBA)
