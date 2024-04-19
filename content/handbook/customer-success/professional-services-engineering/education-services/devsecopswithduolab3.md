---
title: "DevSecOps with GitLab Duo - Hands-On Lab: Working with Issues and Merge Requests"
description: "This Hands-On Guide walks you through the lab exercises used in the DevSecOps with GitLab Duo Course"
---

> Estimated time to complete: 30 minutes

## Objectives

GitLab Duo extends beyond just code generation. GitLab Duo can support you through any stage of the DevSecOps lifecycle! In this lab, you will see how GitLab Duo can work with issues and merge requests inside of a project.

## Task A. Creating an Issue with GitLab Duo

1. Navigate to your GitLab Duo Project.

1. In your project, from the left sidebar, select Plan > Issues

1. Select **New issue**.

1. For the Title, input `Update hello world visuals`.

1. Select `Switch to plain text editing` at the bottom of the issue description

> Note: The AI generation feature for issue descriptions will only display in plain text editing mode. If you do not see the Tanuki button, you are likely in rich text editing mode.

1. In the Description box, select the Tanuki button, then select **Generate issue description**. 

1. In the issue description generation box, type the prompt: `We want to make our "hello world" application more visually appealing for the end user. We want to incorporate the Go Figure module into our application to print out more exciting text.`

1. A response will look similar to the following:

```
Issue: The "hello world" application lacks visual appeal

The current "hello world" application prints basic text without any formatting or visual elements. We want to enhance the user experience and make the application output more interesting to look at. 

The Go Figure module allows printing text in different styles and formats. Integrating this module into our "hello world" code will let us customize how the message is displayed, such as changing fonts, colors, effects and more. This will make our application stand out more and be more enjoyable for end users to interact with.

***
_Description was generated using AI_

```

1. Assign the issue to yourself and select Create issue.

## Task B. Creating a Merge Request

1. From the issue you just created, select **Create merge request**.

1. In the template dropdown, select `basictemplate`. This will populate the description with some predefined topics an organization would want to capture information on.

1. Select **Apply template**

1. Select `Switch to plain text editing` at the bottom of the MR description.

1. Select the Tanuki icon, then select **Fill in merge request template**.

1. Select **Apply AI-generated description**.

> GitLab Duo can also provide a summary of code changes in an MR. We will return to this feature later in the course.

1. Leave all other options as default and select **Create merge request**

## Task C. Add Code to Your MR

1. In your MR, select **Code > Open in Web IDE**

1. Select the Tanuki icon from the left sidebar

1. In the chat, write the prompt: `how could I use the go-figure module of go to print hello world in a different font?`

You will get a response similar to this:

```
package main

import (
    "github.com/common-nighthawk/go-figure"
)

func main() {
    myFigure := figure.NewFigure("hello world", "", true)
    myFigure.Print()
}
```

1. Select the repository icon from the left sidebar

1. Select `main.go`

1. Replace the contents of `main.go` with the AI generated code.

1. Select Source Control from the left sidebar.

1. Select the Commit button to commit the code changes

1. Select **Go to MR** to return back to your merge request.

## Task D. Summarizing your Code Changes

1. Navigate to your MR.

1. Select **Edit**.

1. Just above the Description input, select **Summarize code changes**.

1. Select **Save changes**.

1. Note that at the bottom of the MR description, there is now an outline of the changes included in the MR.

## Task F. Root Cause Analysis

> Uh-oh! You may have noticed that our pipeline failed.

1. From the MR, click on the most recent pipeline run that failed. 

1. Click on the job that failed.

1. At the top of the output of the job click the button that says **Root cause analysis**.

1. This will generate a explaination on why the job failed an example fix. It will say something along the lines of a missing module. Try to implement the suggested fix in your `.gitlab-ci.yml` file by adding an additional `go` command in the `build app` job. Your configuration file should look like the file below: 

```yml
stages:
  - build

default:
  image: golang:latest

build app:
  stage: build
  script: 
    - go get github.com/common-nighthawk/go-figure
    - go run main.go
```

## Lab Guide Complete

You have completed this lab exercise. You can view the other [lab guides for this course](/handbook/customer-success/professional-services-engineering/education-services/devsecopswithduo).

## Suggestions?

If you’d like to suggest changes to the lab, please submit them via merge request.