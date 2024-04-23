---
title: "GitLab Security Essentials - Hands-On Lab: Enable and Configure Dependency Scanning"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab Security Essentials course."
---


> Estimated time to complete: 15 to 30 minutes

## Objectives

Many projects depend on open source software and libraries. The dependencies that a project uses can also contain security vulnerabilities.

In this lab, you will learn how to scan for vulnerabilities in your project dependencies.

## Prerequisites

Before beginning this lab and all later labs, you should disable any scanners that you enabled in previous labs to speed up pipeline runtime.

1. Open your browser to to the **Security Labs** project that you created in Lab 1.

    > If you closed the tab or lost the link, open a browser tab and start typing `https://gitlab.com/gitlab-learn-labs` in your URL and the group should appear in your history.

2. To disable a scanner, add a hash before the template that enables it in `.gitlab-ci.yml`. For example, the DAST scanner takes some time to run, so, to disable the DAST scanner configured in Lab 1, make these edits to your existing `.gitlab-ci.yml`.

    ```yml
    stages:
    - test
    #- dast

    include:
    - template: Security/SAST.gitlab-ci.yml
    - template: Security/Secret-Detection.gitlab-ci.yml
    #- template: DAST.gitlab-ci.yml

    variables:
      SAST_EXCLUDED_PATHS: venv/
      #DAST_WEBSITE: https://example.com

    secret_detection:
      variables:
        SECRET_DETECTION_EXCLUDED_PATHS: tests/
    ```

    > It is also possible to disable these features by setting CI variables on the project, such as `DAST_DISABLE=true` and `SECRET_DETECTION_DISABLE=true`. Learn more in the <a target="_blank" href="https://docs.gitlab.com/ee/topics/autodevops/cicd_variables.html#job-disabling-variables">documentation</a>.

    > It is important to leave at least one job active in your `.gitlab-ci.yml` file. If there are no jobs defined in the pipeline, it will fail to run.

## Turn Off Auto DevOps

> Before proceeding with this section, to avoid any conflicts between our CI/CD configuration and Auto DevOps, you should confirm that Auto DevOps is disabled in your project.

1. In the left sidebar, navigate to **Settings > CI/CD**.

1. Click on the **Expand** button next to Auto DevOps.

1. Ensure that **Default to Auto DevOps pipeline** is unchecked.

1. Click the **Save changes** button.

1. In the left sidebar, navigate to **Code > Repository** to return to your code.

## Task A. Add Project Dependencies

> Python-based projects often use pip for package management. With pip, developers will often provide a list of dependencies in a file called `requirements.txt`.

> Although this example uses Python with the pip package manager, GitLab supports various other package managers. For a full list of supported languages and package managers, click [here](https://docs.gitlab.com/ee/user/application_security/dependency_scanning/#supported-languages-and-package-managers).

1. In your `Security Labs` project, navigate to **Code > Repository**.

1. Create a file by clicking **+ > This directory > New file**

1. Set the Filename to `requirements.txt` and add the following text.

    ```
    requests==2.27.1
    ```

1. Enter an appropriate commit message (ex. `Adding requirements file`), set the **Target Branch** to `main`, and click the **Commit changes** button.

## Task B. Enable Dependency Scanning

> The Dependency Scanner will traverse your project dependencies looking for security vulnerabilities.

> You’ll enable Dependency Scanning by including a GitLab-provided template in your CI/CD configuration file. You can do this manually, or you can use the GitLab GUI to make a merge request that does it for you. Since you used the manual technique to enable SAST, Secret Detection, and DAST in the last lab, use the GUI to enable Dependency Scanning in this lab.

1. Navigate to **Secure > Security configuration**.

1. In the **Dependency Scanning** pane, click **Configure with a merge request**. This does 3 things for you:
    1. Creates a new branch
    2. Adds a commit to the branch which edits your CI/CD configuration file to enable Dependency Scanning
    3. Redirects you to a page for creating an MR for that branch

1. On the merge request (MR) creation page, leave all fields at their default values and click the **Create merge request** button. You will be redirected to the details page for the MR that you just created.

1. In the middle of the page, find the notification that a pipeline is running on the MR’s branch.

    1. It could take a few minutes for the pipeline to finish, even if you've disabled scans from the previous lab.
    2. Do **not** click **Auto-merge** button since that can lead to unexpected behavior.
    3. Wait for the pipeline to finish. You can watch it by navigating to **Build > Pipelines** or clicking on the pipeline number in the merge request.

1. After the pipeline has finished, click the **Merge** button in the MR. You might need to refresh the page to see this button.

1. Navigate to **Code > Repository** and open `.gitlab-ci.yml`. Notice that the MR has added documentation at the top, reformatted the file, and added a Dependency Scanning template in the `include:` section.

## Task D. Configure Dependency Scanning

> You can configure Dependency Scanning by setting variables in your the `gitlab-ci.yml` file. In this task, you’ll change the Dependency Scanner's log level to `info`.

1. Navigate to **Build > Pipeline editor**.

1. Add this job definition to the bottom of your `.gitlab-ci.yml` file. It overrides an existing job that’s defined by the Dependency Scanning template. *Note that there are 2 hyphens and 1 underscore in the first line.*

    ```yml
    gemnasium-python-dependency_scanning:
      variables:
        SECURE_LOG_LEVEL: "info"
    ```

    > For a full list of variables available for dependency scanning, see the <a target="_blank" href="https://docs.gitlab.com/ee/user/application_security/dependency_scanning/#available-cicd-variables">documentation</a>.

1. Commit this change to the **main** branch, using `Change log level for Python dependency scanner` as a commit message. Click **Commit changes**. 

    > This commit triggers a pipeline run using your new Dependency Scanning configuration.

1. Navigate to **Build > Pipelines** and wait for the most recent pipeline to finish. If you want to watch its progress, go to the pipeline’s details page and click on the job the **gemnasium-python-dependency_scanning** pill button to see the console output for the job. Remember that Dependency Scanning can take a few minutes to run.

## Task E. Take Action on Vulnerabilities

> The first step in managing dependency based vulnerabilities is to verify that the vulnerability does exist in your usage of the dependency. If the vulnerability does exist in your project, you should take steps to remedy the issue.

1. Navigate to **Secure > Vulnerability Report**.

1. In the **Tool** filter, click **Dependency Scanning**. Notice any security vulnerabilities Dependency Scanning found in the requirements file.

1. There is a single vulnerability in the project dependencies, with a description of **Unintended leak of Proxy-Authorization header in requests**. Click the description.

1. On the description page, you will see a description of the vulnerability, including the impact of the vulnerability. You will additionally see information about the patch and workaround for the vulnerability.

1. In the top right corner, click the **Status** dropdown and choose **Confirm**.

1. In the **Linked items** section of the vulnerability description, click the **Create issue** button.

1. Assign the issue to yourself and click the **Create issue** button.

    > Note that the description of the vulnerability was copied to the issue.

1. Navigate back to **Secure > Vulnerability report**. Notice that the vulnerability you just created an issue for has a link to that issue in the **Activity** column.

## Lab Guide Complete

You have completed this lab exercise. You can view the other [lab guides for this course](/handbook/customer-success/professional-services-engineering/education-services/secessentialshandson).

## Suggestions?

If you’d like to suggest changes to the *GitLab Security Essentials Hands-on Guide*, please submit them via merge request.
