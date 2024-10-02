---
title: "GitLab CI/CD - Hands-On Lab: Working with CI/CD Components"
description: "This Hands-On Guide demonstrates how to add CI/CD components to a pipeline"
---
## Objectives

A component is a reusable CI/CD configuration. Many of GitLab’s provided CI/CD features are provided as components. In this lab, you will learn how to add a CI/CD component to your GitLab project.

## Task A. Finding the SAST Component

GitLab stores CI/CD components inside of the CI/CD catalog. To view the catalog:

1. In the left sidebar, select **Search or go to**. 

1. In the resulting dialog, select **Explore**. 

1. In the left sidebar, select **CI/CD Catalog**. This will show you a list of all of the CI/CD catalog items available in your GitLab instance. For this lab, you will be adding SAST to your project. Select the SAST component.

When you select a CI/CD component, you will see a `Readme`, which describes how to use the component, as well as configuration options for the component. For the SAST component, you will see that it can be included using the following code:

```yaml
include:
  - component: ilt.gitlabtraining.cloud/components/sast/sast@<VERSION>
```

Let’s add this to our CI/CD file. 

## Task B. Adding the SAST component

1. Navigate to your CI/CD project by clicking on the Tanuki logo in the top left corner of the page, then click on your project name. 

1. From the project, select your `.gitlab-ci.yml` file. 

1. Select **Edit > Edit in Pipeline Editor**. 

1. At the top of your file, below the image, add the SAST import at version main.
 
```yaml
include:
  - component: ilt.gitlabtraining.cloud/components/sast/sast@main
```

The top of the `.gitlab-ci.yml` file should look like this:

```yaml
workflow:
  rules:
    - if: $CI_COMMIT_TAG
      when: never 
    - when: always

default:
  image: golang

include:
  - component: ilt.gitlabtraining.cloud/components/sast/sast@main
```

1. Select **Commit changes**.

1. After committing your changes, navigate to the pipeline created for your commit. You will now see a new job named *semgrep-sast*. This job is the security scan imported using the `include` keyword.

## Lab Guide Complete

You have completed this lab exercise. You can view the other [lab guides for this course](/handbook/customer-success/professional-services-engineering/education-services/ilt-labs/gitlabcicdhandson).

## Suggestions?

If you wish to make a change to the *Hands-On Guide for GitLab CI/CD*, please submit your changes via Merge Request!
