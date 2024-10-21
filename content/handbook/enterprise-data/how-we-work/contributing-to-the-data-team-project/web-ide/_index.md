---
title: "Working in the GitLab Web IDE"
description: "This handbook page provides a comprehensive guide on using the GitLab Integrated Development Environment (IDE) for Data Team projects. It covers essential features, best practices, and workflows specific to our data analytics work."
---

## Introduction

The GitLab IDE is a powerful tool that allows us to write, test, and debug code directly within our GitLab instance. For the Data Team, this means we can efficiently work on our dbt models, SQL queries, and other data-related code without leaving the GitLab environment.

Before getting started, make sure you have created an issue using the appropriate template, most likely the "Standard Data Team Issue" template and let's get started.

### Create a new branch 

1. Non-confidential issues

To create a branch and a merge request from a non-confidential issue, you can simply click the "Create merge request" button in your issue

![Create merge request](/static/images/handbook/enterprise-data/platform/tableau/create-merge-request.png)
<img src="create-merge-request.png" alt="Create merge request" width="900"/>

While you have the option to create only the branch and not the merge request, and also to update your branch name and source by using the dropdown next to the 'Create merge request' button, it's best to create the merge request and branch simultaneously, using the default branch name and source (master). 

2. Confidential issues

When working on a confidential issue, you may notice that you can't create an MR directly in the project. Instead, you're only presented with the option to create your branch and MR in a fork

![Confidential issue MR](/static/images/handbook/enterprise-data/platform/tableau/confidential-issue-mr.png)

However, you can still create a branch within the project for your work. To do this, click on 'Code' in the left sidebar, then select 'Branches'. 

![Branches](/static/images/handbook/enterprise-data/platform/tableau/branches.png)

From there, click on the 'New branch' button to begin the process of creating your branch.

![Create branch](/static/images/handbook/enterprise-data/platform/tableau/create-branch.png)

When creating your new branch, you'll need to consider the naming convention. Start the branch name with the issue ID (e.g., `21949-`) to automatically link the future MR to the existing issue. Follow this with a descriptive name that closely aligns with the issue. For consistency, use `snake_case` or `kebab-case` (e.g., `21949-creating-a-branch-and-mr-from-confidential-issue`). You'll also need to choose the source branch from which to create your new branch. In most cases, this will be the default branch 'master'.

![branch name](/static/images/handbook/enterprise-data/platform/tableau/branch-name.png)

Once you've created your branch for this confidential issue, you'll usually be prompted to create a merge request on the next screen. If you don't see this prompt, don't worry. You can go to 'Merge requests' in the left sidebar, where you should see an option to 'Create merge request' for your recently created branch. Alternatively, you can click on 'New merge request' and choose your newly created branch as the source branch. Both methods will allow you to start the merge request process.

![Create merge request](/static/images/handbook/enterprise-data/platform/tableau/merge-request-create.png)

### Create a merge request
