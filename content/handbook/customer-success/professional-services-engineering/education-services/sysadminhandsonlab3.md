---
title: "GitLab System Administration - Hands-on Lab: Configure GitLab Runners"
description: "This hands-on lab guide is designed to walk you through the lab exercises used in the GitLab System Administration course."
---


> Estimated time to complete: 40 minutes

> **You are viewing the latest Version 16.x instructions.** If you are using `https://spt.gitlabtraining.cloud`, please use the [Version 15.x instructions](https://gitlab.com/gitlab-com/content-sites/handbook/-/blob/d14ee71aeac2054c72ce96e8b35ba2511f86a7ca/content/handbook/customer-success/professional-services-engineering/education-services/sysadminhandson3.md).

### Task A. Install the gitlab-runner package

1. Use your assigned IP address and SSH key file to log into your **GitLab Runner** server (*not* your Omnibus server).

  ```bash
  ssh -i YOUR_ASSIGNED_SSH_KEYFILE ec2-user@YOUR_RUNNER_SERVER_PUBLIC_IP
  ```

1. If your system displays an authentication warning, type `yes` and press <kbd>Enter</kbd>

1. Add the GitLab Runner installation repository.

  ```bash
  curl -L "https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.rpm.sh" | sudo bash
  ```

4. Install the GitLab Runner agent.

  ```bash
  sudo dnf install -y gitlab-runner
  ```

5. Once the install completes, check that the service is running.

  ```bash
  sudo gitlab-runner status
  ```

### Task B. Register a runner with GitLab

1. Sign into your GitLab instance with a web browser and select **Menu > Admin Area**.

1. In the left sidebar, under **CI/CD**, select **Runners**.

1. Select **New instance runner**.

1. In the **Operating systems** section, select **Linux**.

1. In the **Tags** section, select **Run untagged jobs**.

  > This will allow the runner to pick up any jobs rather than just jobs with specific tags.

1. Leave all other options as default and select **Create runner**.

1. Copy the command in **Step 1** and run it in your command prompt.

1. The command will first prompt you for your GitLab instance URL. Verify that this URL matches your GitLab instance, then press <kbd>Enter</kbd>

1.  Enter any appropriate name for your runner.

1. When you are prompted for an executor, type `shell`.

  > A shell executor will run jobs using your instance's shell. For more information about executors, check the [documentation](https://docs.gitlab.com/runner/executors/).

1. Run `sudo gitlab-runner list` to verify the runner after registration.

1. Return to your web browser and select **Go to runners page**. Verify the runner you registered appears in the list and shows as online.

### Task C. Test the runner with a CI/CD pipeline

1. Navigate back to the homepage of your GitLab instance by selecting the GitLab icon at the top of the left sidebar.

1. Select **Create a project**.

1. Select **Create blank project**.

1. Enter `CICD Test` as the project name. 

1. In the `Project URL`, select `root` from the namespace dropdown.

1. Leave all other settings as they are and click **Create project**.

1. In the middle of the project landing page, under the project title, select the **+** dropdown. Select **New file**.

1. On the new file page, enter `.gitlab-ci.yml` as the file name.

1. Paste the following code into the body of the file.

  ```yml
  stages:
    - build
    - test

  build_app:
    stage: build
    script:
      - echo "The build stage requires at least one job"

  test_app:
    stage: test
    script:
      - echo "The test stage requires at least one job"
  ```

8. Select **Commit changes**.

9. In the left sidebar, select **Build > Pipelines**.

10. Select the pipeline status (it should say **passed**).

11. Click into each of the **build_app** and **test_app** jobs to see the job logs and commands that were executed on the runner.

## Lab Guide Complete

You have completed this lab exercise. You can view the other [lab guides for this course](/handbook/customer-success/professional-services-engineering/education-services/sysadminhandson).

### Suggestions?

If you’d like to suggest changes to the GitLab System Admin Hands-on Guide, please submit them via merge request.

