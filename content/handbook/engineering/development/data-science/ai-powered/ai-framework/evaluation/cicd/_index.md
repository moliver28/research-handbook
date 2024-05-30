---
title: AI Framework Group - Eval like I am 5
description: "The AI Framework group is focused on how to support other product groups at GitLab with the AI Abstraction Layer, and GitLab AI feature development."
aliases: /handbook/engineering/development/data-science/ai-framework
---

### Integrate with GitLab CI/CD

Using a CI/CD pipeline for evaluations provides several key benefits compared to running evaluations solely on your local machine.

#### Create a GitLab CI/CD Pipeline

In your project repository, create or update your `.gitlab-ci.yml` file with the following content:

```bash
stages:
  - evaluate

evaluate_langsmith:
  stage: evaluate
  script:
    - pip install requests langsmith langchain
    - python evaluate.py
```

#### Commit and Push Changes

```bash
git add .gitlab-ci.yml evaluate.py
git commit -m "Add LangSmith evaluation script and CI/CD pipeline"
git push origin main
```

#### Monitor the Pipeline

Navigate to your GitLab project and monitor the CI/CD pipeline. Ensure the job `evaluate_langsmith` runs successfully.
