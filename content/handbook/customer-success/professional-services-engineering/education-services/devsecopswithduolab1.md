---
title: "DevSecOps with GitLab Duo - Hands-On Lab: Getting Started with GitLab Duo"
description: "This Hands-On Guide walks you through the lab exercises used in the DevSecOps with GitLab Duo Course"
---

> Estimated time to complete: 15 minutes

## Objectives

GitLab Duo allows you to use AI-assisted features across GitLab. To get started with GitLab Duo, you will need to first generate a lab environment to work in. This lab environment will provide you with all the GitLab Duo features demonstrated in this course. 

## Task A. Access your Training Group Create a project

1. Navigate to [**https://gitlabdemo.com/invite**](https://gitlabdemo.com/invite) in a web browser.

1. In the **Invitation Code** field, enter the invitation code provided by your instructor or in the GitLab University LMS.

1. Select **Provision Training Environment**.

1. The system then prompts you for your **GitLab.com** username. Enter your GitLab.com user (excluding the leading @ sign) in the field provided. Select **Provision Training Environment**.

1. On the confirmation page, locate the `Your GitLab Credentials` section. Read this section carefully, noting the credential information provided and the expiration date. Your access to this group and all of the projects that you create is ephemeral and will be deleted after the expiration date.

1. Select **My Group** at the bottom of the page.

1. Sign in with your GitLab.com credentials.

1. You will be redirected to a **My Test Group** group that provides a sandbox for you to perform training lab steps in.

    > This group has a GitLab Ultimate license to see all of the features while your personal username namespace requires a paid subscription or a free trial to access all of the features.

1. From your **My Test Group** training subgroup, click the **New project** button.

1. Select the **Create blank project** tile.

1. In the **Project name** field, enter `GitLab Duo Project`.

    > The project slug will automatically populate. You can change this to a shorter string if desired for your own project. Leave it at the default for this lab.

1. In the **Project URL** field, click the dropdown for the second half of the URL to make sure it’s pointing to a **group name** (starts with `gitlab-learn-labs/*`) and not a **username**. You should create this project inside a group, not directly in your user’s namespace.

1. Under **Visibility Level**, ensure **Private** is selected.

    > Since the parent group above your group is private, all child groups and projects below will be private. You can learn more about project visibility levels in the [documentation](https://docs.gitlab.com/ee/user/public_access.html).

1. Check **Initialize repository with a README**.

1. Select **Create project**.

1. From your project, click the **GitLab Duo Chat** button in the top right corner.

1. A new chat window will appear on the right side of the screen. Try asking some questions and see how the GitLab Duo responds!

Here are a few demo questions you can ask Duo:

- `How do I move an issue from one project to another?`
- `What is a merged results pipeline?`
- `What is an example of a simple python function?`

## Lab Guide Complete

You have completed this lab exercise. You can view the other [lab guides for this course](/handbook/customer-success/professional-services-engineering/education-services/devsecopswithduo).

## Suggestions?

If you’d like to suggest changes to the lab, please submit them via merge request.