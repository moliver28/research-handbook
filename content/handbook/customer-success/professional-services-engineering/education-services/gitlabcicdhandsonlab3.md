---
title: "GitLab CI/CD - Hands-On Lab 3"
description: "This Hands-On Guide walks you through the lab exercises in the GitLab CI/CD course."
---

# Lab 3: Create A Basic CI Configuration

> Estimate time to complete: 15 - 20 minutes

> **We are transitioning to the latest version of this course.** If your group URL starts with `https://spt.gitlabtraining.cloud`, please use the [Version 15.x instructions](https://gitlab.com/gitlab-com/content-sites/handbook/-/blob/d14ee71aeac2054c72ce96e8b35ba2511f86a7ca/content/handbook/customer-success/professional-services-engineering/education-services/gitlabcicdhandsonlab3.md).

## Objectives

The `.gitlab-ci.yml` file allows you to define the stages and jobs for your CI/CD process. In this lab, you will learn how to modify your `.gitlab-ci.yml` file.

## Task A. Define a Basic `.gitlab-ci.yml` File

1. Open your **CICD Demo** project from the last lab.

1. On the left Navigation pane click **Code > Repository**. Click on your `.gitlab-ci.yml` file to view its contents. Click **Edit > Edit single file**. Replace all the code in `.gitlab-ci.yml` with the content of the following snippet: 

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
    ```

    > Note: the pipeline logic will be almost identical to what you had previously, just the job names and echo statements will change slightly.

1. In the **Commit message** field, type `Add CI starter`, set the **Target Branch** to `main`, and click **Commit changes**.

1. Refresh the page to make the pipeline status icon appear. Check that the configuration is valid and that the pipeline is running by hovering over the **Pipeline: running** icon or the **Pipeline: passed** icon in the upper right corner of the page, to the left of the commit's SHA.

1. When the pipeline status changes to the **Pipeline: passed** icon, click it to review the pipeline graph for your CI configuration.

## Lab Guide Complete

You have completed this lab exercise. You can view the other [lab guides for this course](/handbook/customer-success/professional-services-engineering/education-services/gitlabcicdhandson).

## Suggestions?

If you wish to make a change to the *Hands-On Guide for GitLab CI/CD*, please submit your changes via Merge Request!
