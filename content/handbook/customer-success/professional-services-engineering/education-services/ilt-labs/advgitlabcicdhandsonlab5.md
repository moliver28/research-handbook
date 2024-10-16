---
title: "GitLab Advanced CI/CD - Hands-On Lab: Configurations for Complex Processes"
description: "This Hands-On Guide walks you through common configurations for complex CI/CD processes"
---

In this lab we will analyze more complex merge processes, looking specifically at merge trains and merge conflicts. First, we will start with merge trains.

> Estimate time to complete: 15 minutes

## Objectives

- Understand the concept of merge trains and their benefits
- Enable merge trains in a GitLab project
- Create and run a merge train
- Identify and resolve merge conflicts in GitLab
- Practice handling conflicting merge requests

## Task A. Enabling Merge Trains

1. To enable a merge train in your project, in the left sidebar, select **Settings > Merge requests**. 

1. Under Merge options, click the options **Enable merged results pipeline**, **Pipelines must succeed**, and **Enable merge trains**. 

1. At the bottom of the page, select **Save changes**.

## Task B. Running a merge train

To demonstrate a merge train, let’s create a purposefully long CI/CD job. 

1. Navigate to your project repository.

1. Select the `.gitlab-ci.yml` file.

1. In your existing CI/CD file, add the following job to your pipeline:

    ```yml
    pause:
      stage: test
      script:
        - sleep 4m
    ```

The current pipeline should look like this:

  ```yml
    stages:
      - deps
      - test
      
    workflow:
      auto_cancel:
        on_job_failure: all

    default:
      image: node:latest

    .artifactdef: &artifactdef
      artifacts:
        when: always
        reports:
          junit: junit.xml

    .install deps: &cachedef
      stage: deps
      script:
        - npm install jest-junit
      cache:
        key: $CI_COMMIT_REF_SLUG
        paths:
          - node_modules

    test binarysearch:
      before_script:
        - npm install -g jest
      script:
        - jest --ci --testResultsProcessor=jest-junit binarysearch.test.js
      <<: [*artifactdef, *cachedef]

    test linearsearch:
      before_script:
        - npm install -g jest
      script:
        - jest --ci --testResultsProcessor=jest-junit linearsearch.test.js
      <<: [*artifactdef, *cachedef]
      
    pause:
      stage: test
      script:
        - sleep 4m
  ```

Adding this job will ensure that you have enough time to create two merge requests. 

To start, create your two merge requests:

1. Select **Code > Branches**.

1. Select **New branch**.

1. Add the branch name `train`.

1. Leave all other options as default and select **Create branch**.

1. Select the `README.md` file and add some changes to it.

1. Select **Create merge request**.

1. Leave all options as default and select **Create merge request**.

1. Repeat the same process so that you have two merge requests. 

1. Once you have two merge requests, set them both to auto-merge. You will see a message stating `Set by your user to start a merge train when all merge checks pass`. Await the completion of your merge requests and verify that they merge successfully.

## Task C. Merge Conflicts

When multiple users work on a project at the same time, merge conflicts are often inevitable. In this lab, you will learn how to handle merge requests in your project.

1. Remove the `pause` job from your CI/CD project to avoid slowdowns. Right now, your file will look like this:

    ```yml
    stages:
      - deps
      - test
      
    workflow:
      auto_cancel:
        on_job_failure: all

    default:
      image: node:latest

    .artifactdef: &artifactdef
      artifacts:
        when: always
        reports:
          junit: junit.xml

    .install deps: &cachedef
      stage: deps
      script:
        - npm install jest-junit
      cache:
        key: $CI_COMMIT_REF_SLUG
        paths:
          - node_modules

    test binarysearch:
      before_script:
        - npm install -g jest
      script:
        - jest --ci --testResultsProcessor=jest-junit binarysearch.test.js
      <<: [*artifactdef, *cachedef]

    test linearsearch:
      before_script:
        - npm install -g jest
      script:
        - jest --ci --testResultsProcessor=jest-junit linearsearch.test.js
      <<: [*artifactdef, *cachedef]
      
    ```

Now, let’s create two merge requests that conflict:

1. Select **Code > Branches**.

1. Select **New branch**.

1. Add the branch name `conflict`.

1. Leave all other options as default and select **Create branch**.

1. Select the `index.js` file. At the top of the file, add a comment to describe the function. An example comment is below.

    ```js
    // This method will create a binary search finding the value in lin log(n) time
    module.exports.binarySearch = function binarySearch(arr, val) { 
        let start = 0; 
        let end = arr.length - 1; 
        while (start <= end) { 
            let mid = Math.floor((start + end) / 2); 
            if (arr[mid] === val) { 
                return mid; 
            } 
            if (val < arr[mid]) { 
                end = mid - 1; 
            } else { 
                start = mid + 1; 
            } 
        } 
        return -1; 
    }
    ```

1. Commit this code to the branch and create a new merge request from it. After you do this, create a new branch:

1. Select **Code > Branches**.

1. Select **New branch**.

1. Add the branch name `conflict-2`.

1. Leave all other options as default and select **Create branch**.

1. Select the `index.js` file. At the top of the file, add a different comment to describe the function. An example comment is below:

    ```js
    //A binary search will search a list in log(n) time
    module.exports.binarySearch = function binarySearch(arr, val) { 
        let start = 0; 
        let end = arr.length - 1; 
        while (start <= end) { 
            let mid = Math.floor((start + end) / 2); 
            if (arr[mid] === val) { 
                return mid; 
            } 
            if (val < arr[mid]) { 
                end = mid - 1; 
            } else { 
                start = mid + 1; 
            } 
        } 
        return -1; 
    }
    ```

1. Commit this code to the branch and create a new merge request from it. 

1. Return to your `conflict` merge request and merge it into the repository. 

1. After it merges, navigate to your `conflict-2` merge request. You will now see that the merge is blocked, stating *Merge conflicts must be resolved*. 

1. Select the option **Resolve conflicts**. You will have the option to select either using the code in the current merge request, or using the code in main. 

1. Select your preferred option, then select **Commit** to source branch.

After doing this, you will now be able to merge your merge request! 

## Lab Guide Complete

You have completed this lab exercise. You can view the other [lab guides for this course](/handbook/customer-success/professional-services-engineering/education-services/ilt-labs/advgitlabcicdhandson).

## Suggestions?

If you wish to make a change to the *Hands-On Guide for GitLab CI/CD*, please submit your changes via Merge Request!
