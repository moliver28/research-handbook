---
title: "Facilitator Guide for Certified Trainers for the GitLab CI/CD course"
description: "This Facilitator Guide is intended to walk you through all important links, preparation items, and after class items for our GitLab CI/CD course."
---

## GitLab CI/CD Facilitator Guide

## Important Links

### For GitLab Certified Training Partners

1. Instructor Slides: Follow the link in your instructor kit provided by your organization from within the EdCast Marketplace.
2. Hands On Lab Environment: Use these [GitLab Template Projects VM Builds](https://gitlab.com/gitlab-com/customer-success/professional-services-group/partner-training-template-projects/gitlab-cicd-hands-on-demo)
3. [Hands On Guide](/handbook/customer-success/professional-services-engineering/education-services/gitlabcicdhandson.html)
4. [Remote Sessions Tips and Tricks](/handbook/customer-success/professional-services-engineering/remote-training-tips/)

### For GitLab Team Members and Contractors

1. Instructor Slides: You will make your own copy of this [Main Presentation](https://docs.google.com/presentation/d/1Eb7m7cGFrmMDfaHF3TRWLqhgSxZpYxl0RzA8DHWIcDU/edit?usp=sharing)-

   - Go to File > Make a Copy > Entire Presentation to save a copy of your deck.
   - PDF the presentation at the end of the course to send to the client
   - Save  your copy in the applicable [client folder](https://drive.google.com/drive/u/0/folders/1ozPKiAlUzbKwpkscaYVTp9PVoi9hWm4U)

2. Hands On Lab Environment: Use the sample projects located in the GitLab Demo Cloud
3. [Hands On Guide](/handbook/customer-success/professional-services-engineering/education-services/gitlabcicdhandson.html)
4. [Remote Sessions Tips and Tricks](/handbook/customer-success/professional-services-engineering/remote-training-tips/)

## Things to do Ahead

1. Lab set up and preparation
   1. Set up the lab environment for your organization (if not already done)
      - When building the lab environment in a standalone instance or a virtual machine, follow the step by step instructions in the [README](https://gitlab.com/gitlab-com/customer-success/professional-services-group/partner-training-template-projects/gitlab-cicd-hands-on-demo/-/blob/master/README.md) to ensure your Hands On environment is set up correctly prior to class.
   2. Provision learners
2. Hands-on walkthrough
   1. Practice each demo in the lab environment
   2. Test each hands-on activity in the lab environment
3. Websites to have up prior to class:
    1. [Related GitLab Docs pages](https://docs.gitlab.com/ee/ci/)
    2. [Hands on Guide](/handbook/customer-success/professional-services-engineering/education-services/gitlabcicdhandson.html)
    3. Lab environments
4. Slide Check
    1. Make sure you can access the slides with presenter notes

## Instructor Tips and Links by Module Number

### Module 1- GitLab Overview

1. Demo Environment: You will want to instruct learners to sign into this environment prior to labs and demos.
   1. https://www.gitlabdemo.com/invite
1. GitLab Maturity page: you may want to demo from this page to get the latest updates to the maturity model- the deck only has a screenshot.
   1. <https://about.gitlab.com/direction/#maturity>
1. GitLab.org: (Dogfooding slide)
   1. <https://gitlab.com/gitlab-org/gitlab>
1. Adjust agenda times and zones to reflect the time zone for the class for both Day 1 and Day 2- the master presentation is in Pacific Standard Time

### Module 3: Anatomy of a Pipeline

1. Be prepared to demo a YAML build- a simple "hello world" project is fine
1. Ensure attendees have the Hands On Guide open for their lab exercises
1. For lab 2- they can use any template they choose, but BASH covers the most characteristics and examples for them.
1. Be prepared to demo a merge request (from our lab guide)

### Battleship Challenge

(No longer available)

### Module 5: Variable Precedence and Scoping

1. Ensure learners have the link to the Sample Project titled "GitLab CICD Hands On Demo" in your envionment.
1. Ensure learners are able to access the Snippets section.

### Super Mario Adventure Game

(No longer available)

### Session End

1. Highlight the GitLab Certified CI/CD Specialist Certification and encourage attendees to complete the exams.
2. Ask attendees to access the link on the last slide to complete the [GitLab Training Survey](https://www.surveymonkey.com/r/proservtraining).

## Cleaning up your Local Comp and Hands on Environments After Class

Afer each class you will want to clean up your systems both locally and in your Hands On Environment so you do not end up with duplicates that intefere with future classes.

1. Remove the Training directory from your local system:  (rm -rf Training)
1. Navigate to the training users group and remove the projects you created in labs
1. If you followed the lab guide; the projects will be:

- Runner Demo
- CICD Hands On
