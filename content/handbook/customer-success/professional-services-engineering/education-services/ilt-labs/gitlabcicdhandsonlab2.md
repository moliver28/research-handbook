---
title: "GitLab CI/CD - Hands-On Lab: Rules and Merging Changes"
description: "This Hands-On Guide demonstrates how to configure rules and merge request pipelines"
---

## Objectives:

- Overview of branch, merge request, and merged results pipelines
- Enabling MR pipelines
- Configuring conditional merge request pipelines
- Differentiate between workflows and pipeline rules
- Viewing a merged results pipeline

With our build process complete, we can now start making changes to our code. Most changes will take place in a merge request. When changes are made to code in a merge request, it is ideal to run a pipeline against the merge request. This will ensure that all code changes are production ready, making it easier to merge changes into production. Let’s take a look at a few ways to set up and configure a pipeline.

## Task A. Workflow Rules

Workflow rules allow you to control when a pipeline runs. These rules give you control over the execution flow of your entire CI/CD pipeline. For example, consider our current `.gitlab-ci.yml` file:

```yml
image: golang

stages:
  - build
  - run

build go:
  stage: build
  script:
    - go build
  artifacts:
    paths: 
      - array

run go:
  stage: run
  script:
    - ./array
```

Let’s introduce a new job that adds a release based on the current project code.

1. GitLab tracks releases of your project in the **Deploy > Releases** section. To create a new release, start by selecting your `.gitlab-ci.yml` file and selecting **Edit > Edit in pipeline editor**.

1. In the pipeline editor, add the `release` job to your `stages`:

    ```yml
    stages:
      - build
      - run
      - release
    ```

1. Add a new job in the release stage below the `run go` job:

    ```yml
    release job:
      stage: release
      script:
        - echo "Generating the latest release!"
    ```

1. The release job requires a special CLI tool. Copy the code below to specify an image that contains the required tool:


    ```yml
    release job:
      stage: release
      image: registry.gitlab.com/gitlab-org/release-cli:latest
      script:
        - echo "Generating the latest release!"
    ```

1. To create a release, you need to provide a `tag_name` and a `description` for the release. To produce a unique version number, we will use the `CI_PIPELINE_IID` built in variable. This variable contains a project level ID of the current pipeline. Add the code below the `image` of your `release job` job.


    ```yml
      image: registry.gitlab.com/gitlab-org/release-cli:latest
      script:
        - echo "Generating the latest release!"
      release: 
        tag_name: 'v0.$CI_PIPELINE_IID'
        description: 'The latest release!'
    ```

    The job should now look like this:

    ```yml
    release job:
      stage: release
      image: registry.gitlab.com/gitlab-org/release-cli:latest
      script:
        - echo "Generating the latest release!"
      release: 
        tag_name: 'v0.$CI_PIPELINE_IID'
        description: 'The latest release!'
    ```

    When the release job runs, it will create a tag in your repository. The creation of a tag by default will trigger a pipeline to run. This creates an infinite loop, where each time the pipeline finishes, it creates a new tag, which then triggers a new pipeline. 

    To prevent the infinite loop, we can utilize a workflow to prevent a pipeline from triggering when a new commit tag is added. 

1. Define the following workflow at the top of your `.gitlab-ci.yml` file:

    ```yml
    workflow:
      rules:
        - if: $CI_COMMIT_TAG
          when: never 
        - when: always
    ```

1. Select **Commit changes**.

This rule applies to the whole pipeline. If a `CI_COMMIT_TAG` is present, the if statement evaluates to true, resulting in the pipeline never running. If the `CI_COMMIT_TAG` is not present, then the pipeline will run.

> You can also search for specific `CI_COMMIT_TAG` values if you want to only stop the run for releases. In this case, a tag in the form `v0.*` is a part of our release, so we can search for this specific pattern instead.

## Task B. Merge Request Pipelines

Another consideration we have for our new release job is when the job to create a release runs. Currently, this job will run on every commit, however, we ideally only want it to run in commits to the main or default branch. To achieve this, we can implement a merge request pipeline. 

A merge request pipeline will run every time you make a change to a branch in a merge request. By controlling the flow for merge requests, we can prevent releases from running until they are fully merged. 

To define a job that runs in a merge request, we will add a rules definition to the job. The rule we add will check the `CI_PIPELINE_SOURCE` to see if it is merge_request_event.

1. Open your `.gitlab-ci.yml` file in the pipeline editor
1. Below the `script` for your `build go` and `run go` jobs, add the following rule:

    ```yml
      rules:
        - if: $CI_PIPELINE_SOURCE == 'merge_request_event'
    ```

    > Make sure that this rule is indented by two spaces. It should be aligned with the `script` keyword.

    The build and run jobs should now look like this:

    ```yml
    build go:
      stage: build
      script:
        - go build
      artifacts:
        paths: 
          - array
      rules:
        - if: $CI_PIPELINE_SOURCE == 'merge_request_event'

    run go:
      stage: run
      script:
        - ./array
      rules:
        - if: $CI_PIPELINE_SOURCE == 'merge_request_event'
    ```

    > Now, the build and run jobs will only run when the pipeline is part of a merge request.

1. Next, we can prevent the release job from running in merge requests by negating the rule. Below the `release job` script, add the following rule:

    ```yml
      rules:
        - if: $CI_PIPELINE_SOURCE != 'merge_request_event'
    ```

    > Make sure this is indented to the same level as the `script` keyword, 2 spaces.

    The release job should now look like this:

    ```yml
    release job:
      stage: release
      image: registry.gitlab.com/gitlab-org/release-cli:latest
      script:
        - echo "Generating the latest release!"
      release: 
        tag_name: 'v0.$CI_PIPELINE_IID'
        description: 'The latest release!'
      rules:
        - if: $CI_PIPELINE_SOURCE != 'merge_request_event'
    ```

1. With these changes made, select **Commit changes** to update your `.gitlab-ci.yml` file.

1. When you commit this to main, select **Build > Pipelines** to view your running jobs. You will notice that only the release job runs, because the commit was run on `main`.

Let's get the other jobs to run by creating a merge request.

1. Navigate to **Code > Branches**.

1. Select **New Branch**.

1. Enter any branch name and select **Create Branch**.

1. Select **Code > Merge requests**

1. Select **New merge request**.

1. Select the branch you created as the source branch.

1. Select **Compare branches and continue**.

1. Leave all options as default and select **Create merge request**.

To trigger the merge request pipeline, you need to make some change to the code. 

1. Select **Code > Open in Web IDE**. 

1. Select the `README.md` file and change anything you want in the file. 

1. Once complete, select **Source Control > Commit and push**.

1. Select **Go to MR** to return to your merge request.

1. Navigate to **Build > Pipelines**.  You will see a new pipeline with the merge request label. 

1. Select it to see its progress. You will see two jobs run, the build and run jobs specified in our `.gitlab-ci.yml file`. 

1. Navigate back to the merge request by selecting **Code > Merge Requests**. 

1. Select your merge request. Notice that there is now a section stating Merge request pipeline. This section will show the progress of the merge request pipeline. 

## Lab Guide Complete

You have completed this lab exercise. You can view the other [lab guides for this course](/handbook/customer-success/professional-services-engineering/education-services/ilt-labs/gitlabcicdhandson).

## Suggestions?

If you wish to make a change to the *Hands-On Guide for GitLab CI/CD*, please submit your changes via Merge Request!
