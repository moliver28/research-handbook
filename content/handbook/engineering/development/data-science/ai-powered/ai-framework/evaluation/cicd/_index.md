---
title: Integrate with GitLab CI/CD
description: "Using a CI/CD pipeline for evaluations provides several key benefits compared to running evaluations solely on your local machine."
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
