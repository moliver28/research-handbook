---
title: "GitLab CI/CD - Hands-On Lab 4"
description: "This Hands-On Guide walks you through the lab exercises in the GitLab CI/CD course."
---

# Lab 4: Display Pipeline Info

> Estimate time to complete: 15 - 20 minutes

> You are viewing the latest Version 16.x instructions. You are using v16 if your group URL is https://gitlab.com/gitlab-learn-labs/.... If your group URL starts with https://ilt.gitlabtraining.cloud or https://spt.gitlabtraining.cloud, please use the [Version 15.x instructions](https://gitlab.com/gitlab-com/content-sites/handbook/-/blob/d14ee71aeac2054c72ce96e8b35ba2511f86a7ca/content/handbook/customer-success/professional-services-engineering/education-services/gitlabcicdhandsonlab4.md).

## Objectives

When a job is executed in a pipeline, it runs inside of an environment. To ensure that environments are set up to run a job successfully, a pipeline defines various environment variables. In this lab, you will learn how to display the environment variables for your pipeline.

## Task A. Viewing your Environment Variables

1. Open your **CICD Demo** project from previous labs.

1. Click on your `.gitlab-ci.yml` file to view its contents. To edit the file, click **Edit > Edit single file**.

1. Paste the contents of the following snippet at the bottom of `.gitlab-ci.yml`. There should be am empty line between the file's previous content and the pasted snippet content.

    ```yml
    environment echoes:
      stage: build
      script:
        - echo "Who am I running as..."
        - whoami
        - echo "Where am I..."
        - pwd
        - ls -al
        - echo "Here's what is available in our environment..."
        - env
    ```

1. After pasting the contents, your `.gitlab-ci.yml` file will look like this:

    ```yml
    stages:
      - test
      - build

    test job:
      stage: test
      script:
        - echo "I am a unit test!"

    build job:
      stage: build
      script:
        - echo "I am a build image!"

    environment echoes:
      stage: build
      script:
        - echo "Who am I running as..."
        - whoami
        - echo "Where am I..."
        - pwd
        - ls -al
        - echo "Here's what is available in our environment..."
        - env
    ```

1. In the **Commit message** field, type `Display pipeline environment variables`, and set the **Target Branch** to `main`

1. Click the **Commit changes** button.

1. In the left-hand navigation pane, click **Build > Pipelines**. The pipeline that was started when you committed changes is represented by the first row in that table.

1. After the pipeline completes, click the status icon at the left of the first row to see the pipeline's jobs. Click the **environment echoes** job and review its output to see the environment variables on the runner.

## Lab Guide Complete

You have completed this lab exercise. You can view the other [lab guides for this course](/handbook/customer-success/professional-services-engineering/education-services/gitlabcicdhandson).

## Suggestions?

If you wish to make a change to the *Hands-On Guide for GitLab CI/CD*, please submit your changes via Merge Request!
