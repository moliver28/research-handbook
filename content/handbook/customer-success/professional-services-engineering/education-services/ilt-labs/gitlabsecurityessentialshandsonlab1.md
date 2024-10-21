---
title: "GitLab Security Essentials - Hands-On Lab: SAST and Secret Detection"
description: "This Hands-On Guide walks you through the process of enabling and using SAST and secret detection in your projects"
---

### Task A. Create a Project

1. Click the **Create blank project** tile.

1. In the **Project name** field, enter `Security Labs`.

    > The project slug will automatically populate. You can change this to a shorter string if desired for your own project. Leave it at the default for this lab.

1. In the **Project URL** field, click the dropdown for the second half of the URL to make sure it's pointing to a **group name** (starts with `training-users/*`) and not a **username**. You should create this project inside a group, not directly in your user's namespace.

1. Under **Visibility Level**, click **Private**.

    > Since the parent group above your group is private, all child groups and projects below will be private. You can learn more about project visibility levels in the <a target="_blank" href="https://docs.gitlab.com/ee/user/public_access.html">documentation</a>.

1. Check **Initialize repository with a README**.

1. Ensure that the **Enable Static Application Security Testing (SAST)** checkbox remains unchecked. For this lab, we will add the SAST functionality manually.

1. Click **Create project**.

## Task B. Enable and Configure SAST

> Static Application Security Testing, or SAST, is the process of examining source code for vulnerabilities. You can use a SAST scan to automatically scan a code repository for known vulnerabilities. You can also use a SAST scan to check merge requests for vulnerabilities before merging the request. This process helps ensure that your code stays vulnerability free.

1. Create a new file in the `main` branch by clicking **(+) > This directory > New file**.

1. In the **Filename** field, type `.gitlab-ci.yml`. You will see a template appear automatically that you can leave blank for this task.

1. Define a single **test** stage:

    ```yml
    stages:
    - test
    ```

    > Keep in mind that YAML files should be indented with two spaces. Your web IDE may try to use a tab with 4 spaces. Simply use the backspace to set 2 spaces if you are not copying and pasting the examples.

1. Enable SAST by pasting the following text after the stages definition in `.gitlab-ci.yml`:

    ```yml
    include:
    - component: ilt.gitlabtraining.cloud/components/sast/sast@main
    ```

    > It is also possible to configure SAST through the GitLab UI by navigating to **Secure > Security configuration** and clicking the **Configure SAST** button. We will be configuring it by editing the CI file for this lab to help you learn more about how it works under the hood.

1. Add an inputs section to the end of your `.gitlab-ci.yml` file and set the `excluded_paths: venv/`.

    ```yml
    include:
      - component: ilt.gitlabtraining.cloud/components/sast/sast@main
      inputs:
        excluded_paths: venv
    ```

    > You can customize your SAST by adding configurations to the inputs section of the `.gitlab-ci.yml` file. For example, the `excluded_paths` variable can exclude project paths from the SAST scan. This option can be set to prevent unnecessary scanning of files.
    >
    > As an example, Python projects often contain a `venv` directory that contains packages used by the project. Since this directory does not contain our own source code, we should exclude it from the SAST scan.
    >
    > A full list of SAST variables can be found in the <a target="_blank" href="https://docs.gitlab.com/ee/user/application_security/sast/#available-cicd-variables">documentation</a>.

1. Add an appropriate commit message (ex. `Add SAST template to .gitlab-ci.yml`), set the **Target Branch** to `main`, then click the **Commit changes** button.

1. Once complete, you will have a `.gitlab-ci.yml` file that looks like this:

    ```yml
  stages:
    - test

  include:
    - component: ilt.gitlabtraining.cloud/components/sast/sast@main
      inputs:
        excluded_paths: venv
    ```

## Task D. Add a Vulnerability to the Application

> With SAST scanning in place, you are now able to see security vulnerabilities inside of merge requests. To demonstrate how this SAST scan works, let's create a branch with some vulnerable code.

1. Navigate to **Code > Repository** to see your project source code.

1. Add a new file by clicking **(+) > This directory > New file**.

1. Set the filename to `main.py`.

1. Introduce a new vulnerability (pretend this is accidental!) by adding the following code to your `main.py` file:

    ```python
    import subprocess

    in = input("Enter your server ip: ")
    subprocess.run(["ping", in])

    gitlab_token = 'glpat-hC5G3PrMaZ7UkVZhxhnx'
    rsa_data = '''
    -----BEGIN RSA PRIVATE KEY-----
    Proc-Type: 4,ENCRYPTED
    DEK-Info: DES-EDE3-CBC,86C3F4011519BFBB
    PxyzMAlAmEu/Qkx9nPh696SU7/MjXpCpOnfFiijLhJumNcRlWgsOiI9rfwlkh4aN
    -----END RSA PRIVATE KEY-----
    '''

    print("Attempting to connect to the server")
    print("Application authentication was successful")
    ```

1. Add an appropriate commit message (Ex. `Add prompt for server authentication`), set the target branch to `add_auth`.

    > Setting the target branch to `add_auth` will create a new branch named `add_auth`, and open a merge request on the branch.

1. Make sure that the **Start a new merge request with these changes** checkbox is checked.

1. Click the **Commit changes** button.

1. In the resulting merge request, set the name to `Add prompt for server authentication`, and leave all the fields as default.

1. Click the **Create merge request** button.

1. On the merge request page, you will see your security pipeline running. Wait for the pipeline to complete.

1. Once the pipeline completes, a new section will appear in the merge request, showing the results of the security scan.

    > You may need to refresh the page to see the new security scan section.

1. In this example, the security scan will show 1 new high vulnerability. To view the details of the vulnerability report, click the **View all pipeline findings** button.

## Task C. Merge Request Vulnerability Report

> One of the main goals of security scanning is to prevent insecure code from making it into a repository. You can use the merge request vulnerability report to see all of the vulnerabilities that were detected in a single merge request. Note that this report will only show vulnerabilities that are newly introduced in the current merge request. If a vulnerability already exists in the repository, it will not show here, but will show in the project level vulnerability report.

1. In the vulnerability column, click the **Improper neutralization of special elements used in an OS Command ('OS Command Injection')** vulnerability.

1. In the resulting window, you will see details about the **OS Command Injection** vulnerability. Note that the detection shows the location of the vulnerability, which is line 4 of `main.py`. Click the X in the top right to close the modal window, or the `Cancel` button at the bottom.

1. In the sidebar, navigate to **Code > Merge requests**.

1. Click the merge request **Add prompt for server authentication**.

1. Click the Changes tab below the merge request title. On the `main.py` file, click **vertical ellipses -> Edit in single-file editor**.

1. The scan showed that line 4 contained a vulnerability.

    ```python
    # main.py Line 4
    subprocess.run(["ping", in])
    ```

    > The problem is that this line uses user input to run a system command. In this situation, a user could craft an input that causes the application to execute an unintended command. To resolve this, you can either remove the command, or remove the user input from the command.

1. Remove lines 1 through 4 from the code. This is what the file should look like now.

    ```python
    gitlab_token = 'glpat-hC5G3PrMaZ7UkVZhxhnx'
    rsa_data = '''
    -----BEGIN RSA PRIVATE KEY-----
    Proc-Type: 4,ENCRYPTED
    DEK-Info: DES-EDE3-CBC,86C3F4011519BFBB
    PxyzMAlAmEu/Qkx9nPh696SU7/MjXpCpOnfFiijLhJumNcRlWgsOiI9rfwlkh4aN
    -----END RSA PRIVATE KEY-----
    '''

    print("Attempting to connect to the server")
    print("Application authentication was successful")
    ```

1. Click the **Commit changes** button.

    > You may need to refresh the page to see the latest changes.

1. Click the **Overview** tab below the merge request title.

    > In the overview, you will see the security pipeline running. When the pipeline completes, refresh the page to see the security report. The security report will show no new potential vulnerabilities detected. With no new vulnerabilities detected, the branch is now safe to merge into main!

1. Leave `Delete source branch` checked and click **Merge**.

## Task F. Enable and Configure Secret Detection

> In the last section, you applied SAST to detect vulnerabilities in your source code. In addition to scanning code for vulnerabilities, GitLab can also scan your code for secrets like keys and API tokens. Adding secret detection to your code will prevent leaking sensitive data in your repositories.

> The Secret Detection job belongs to the **test** stage by default. Since your `.gitlab-ci.yml` already defines that stage, you don't need to define it again.

1. In the Left sidebar, navigate to **Code > Repository**.

1. Click the `.gitlab-ci.yml` file. In the top right above the code, navigate to **Edit > Edit single file**.

1. Enable Secret Detection by adding `template: Security/Secret-Detection.gitlab-ci.yml` at the end of the existing `include:` section in `.gitlab-ci.yml`, below the component for SAST. This indent should be at the same level as the previous template.

    ```yml
  include:
  - component: ilt.gitlabtraining.cloud/components/sast/sast@main
    inputs:
      excluded_paths: venv
  - component: ilt.gitlabtraining.cloud/components/secret-detection/secret-detection@main
    ```

    > It is also possible to configure Secret Detection through the GitLab UI by navigating to **Secure > Security configuration** and clicking the **Configure Secret Detection** button. We will be configuring it by editing the CI file for this lab to help you learn more about how it works under the hood.

1. Configure Secret Detection to ignore the test directory by pasting this job definition below your component import

    ```yml
    secret_detection:
      variables:
        SECRET_DETECTION_EXCLUDED_PATHS: tests/
    ```

    > To configure Secret Detection to use non-default behavior, you can override the **secret_detection** job definition and add variables inside it.
    >
    > A full list of Secret Detection variables can be found in the <a target="_blank" href="https://docs.gitlab.com/ee/user/application_security/secret_detection/#available-cicd-variables">documentation</a>.

1. Your `.gitlab-ci.yml` file will now look like this.

    ```yml
    stages:
        - test

    include:
      - component: ilt.gitlabtraining.cloud/components/sast/sast@main
        inputs:
          excluded_paths: venv/
      - component: ilt.gitlabtraining.cloud/components/secret-detection/secret-detection@main

    secret_detection:
      variables:
        SECRET_DETECTION_EXCLUDED_PATHS: tests
    ```

1. You have already learned how to commit your changes to a new branch and create a merge request. Commit your changes to the `add_secret_detection` target branch. The commit message can be left at default or updated to `Add Secret Detection to .gitlab-ci.yml`. For single commit branches, the commit message is used as the merge request title.

    > If you look at the security report on this merge request, you will notice that no vulnerabilities have been detected. This occurs because the secrets in `main.py` already exist in the main branch. The scan that occurs in the merge request will only show vulnerabilities that are newly introduced in the merge request. To see existing vulnerabilities, you will need to look at the project level vulnerability report covered in the next section.

1. Click the `Merge` button on your merge request after the pipeline passes.

## Task G. View the Project Level Vulnerability Report

> Every time you merge code into the main branch, the security pipeline will run and generate a project level vulnerability report that shows all vulnerabilities in *the latest commit to the default branch.* Think of this as the baseline set of vulnerabilities that you'll compare to vulnerabilities on other branches.

1. Navigate to **Secure > Vulnerability Report**.

1. Looking at the **Tool** column in the **Development vulnerabilities table**, you'll see two critical vulnerabilities detected by the Secret Detection scan you just added.

1. Click on some of vulnerabilities to learn more about them, and to see where they occur in the code.

1. Experiment with the **Status**, **Severity**, and **Tool** filters.

## Task H. Confirm the Vulnerability

> When the security scanners find vulnerabilities, you need to keep track of whether they should be fixed or ignored. You do this by setting a vulnerability's **status**. There are several ways to do so, but in this lab you'll set status inside the Vulnerability Report.

1. There is a vulnerability in the report with the description `RSA private key`. This vulnerability indicates that a RSA private key is written in our repository. By looking at the code, we can confirm that there is an RSA private key in the code.

1. The second vulnerability, `GitLab Personal Access Token` implies that a GitLab token is present in the code. By looking at the code, we can confirm that this is true as well.

1. Since the vulnerabilities do exist in the code, click the checkbox next to each vulnerability. In the **Set status** dropdown, click **Confirm**. Click **Change status**.

## Task I. Create a Branch and Merge Request

> You'll need a branch and an MR to fix the RSA private key vulnerability.

1. Navigate to **Code > Branches**.

1. Click the **New branch** button.

1. Name the branch `fix-rsa`.

1. Leave the **Create from** dropdown as the default value `main`.

1. Click the **Create branch** button.

1. You'll be returned to the **Files** page for the `fix-rsa` branch. Click the file `main.py`.

1. In the top right above the code, navigate to **Edit > Edit single file**.

1. The code currently looks like this.

    ```python
    gitlab_token = 'glpat-hC5G3PrMaZ7UkVZhxhnx'
    rsa_data = '''
    -----BEGIN RSA PRIVATE KEY-----
    Proc-Type: 4,ENCRYPTED
    DEK-Info: DES-EDE3-CBC,86C3F4011519BFBB
    PxyzMAlAmEu/Qkx9nPh696SU7/MjXpCpOnfFiijLhJumNcRlWgsOiI9rfwlkh4aN
    -----END RSA PRIVATE KEY-----
    '''

    print("Attempting to connect to the server")
    print("Application authentication was successful")

    ```

1. Remove the first two variables to get the following result.

    ```python
    print("Attempting to connect to the server")
    print("Application authentication was successful")
    ```

    > In this example, we remove the token and API key. If these values are needed for the code to function, they are often stored as environment variables (or CI variables) rather than written into the code. Doing this helps prevent leaking this data to anyone who can view the code.

1. Click the **Commit changes** button.

1. At the top of the change confirmation page, click the **Create merge request** button.

1. Leave all of the fields at their default values, then click the **Create merge request** button.

1. On the merge request page, wait for the pipeline to complete.

1. Once the pipeline completes, the security scan will display in the merge request. Click the **Full report** button.

    > You may need to refresh the page for the security scan to show.

1. Examine the report. You should no longer see any vulnerabilities.

    > Although we have removed the keys in this merge request, they may still exist in the repository history. It is always advised to rotate keys if they are ever detected in a repository.

## Task J. Merge your branch and resolve the fixed vulnerability

1. In the merge request, click the **Merge** button.

1. Navigate to **Build > Pipelines**.

1. Click the status icon of the pipeline that triggered when you merged your branch.

1. Once all the jobs have finished, navigate to **Secure > Vulnerability Report**.

1. Click the checkbox next to the **RSA private key** and **GitLab Personal Access Token** vulnerability. In the **Set status** dropdown, click **Resolve**. Click **Change status**.

## Lab Guide Complete

You have completed this lab exercise. You can view the other [lab guides for this course](/handbook/customer-success/professional-services-engineering/education-services/secessentialshandson).

## Suggestions?

If you'd like to suggest changes to the *GitLab Security Essentials Hands-On Guide*, please submit them via merge request.
