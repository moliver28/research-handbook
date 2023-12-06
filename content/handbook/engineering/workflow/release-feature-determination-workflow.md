---
title: "Release/Feature Determination Workflow"
---

This document explains the workflow for determining if a feature will be included in a milestone release for the purposes of inclusion in the release blog post.

## Release/Feature Determination Workflow

Each release post is composed of many MRs created by PMs to describe the various sections of the post. When these MRs have been reviewed and are ready to be published, they will be assigned to the relevant engineering manager at which point, this process begins. For example: [https://gitlab.com/gitlab-com/www-gitlab-com/merge_requests/32608](https://gitlab.com/gitlab-com/www-gitlab-com/merge_requests/32608).

## Automation

To help make this work a bit easier, a tool has been created to automate the manual process described below. The tool can be found here: [https://gitlab.com/darbyfrey/releasepost](https://gitlab.com/darbyfrey/releasepost).

## Manual Process

In some cases the automation won't be able to determine the status, in which case the manual process described below should be used.

### Step 1: Find the Relevant Issue

Each of these MRs contain one or more yaml files describing the updates. EMs will need to review these yaml files in order to determine if the feature is included in the release. To do so, look at the changes in the MR and find the `issue_url` referenced in the yaml file. That will point to the feature being described in the release post MR.

### Step 2: Find the Related MRs

From the relevant issue page, look at the related MRs for that issue. All related MRs assigned to the current milestone should be merged in order to be included in the release. If there are any MRs assigned to the current milestone that are not merged it should be determined that the feature is not complete.

If all the related MRs assigned to the current milestone have been merged, the next step will be to verify that those MRs have been deployed and are running in production. This can be done by [querying chatops with the sha of the merge commit](/handbook/engineering/infrastructure/test-platform/tips-and-tricks/#determine-if-a-change-has-been-deployed-to-an-environment-using-revision-sha).

If all of the chatops queries return a status indicating the sha is currently running in production, then it should be determined that the feature is complete.

If one or more of those queries return a status indicating that they are not currently running in production, it should be determined that the feature is not complete.

### Step 3: Update Release Post MR

When a featured is determined to be complete, the EM should merge the release post MR so the change can be included in the release post.

If a feature is not complete, the EM should update the milestone on the release post MR to be the milestone of the next release.

### Timeline

The release post MRs must be merged by the 17th of the month. In order to accommodate that timeline a EMs should evaluate release post MRs when they are ready and merge them early if possible. After the 17th of the month, any release post MRs not merged should be moved to the next milestone.

### Bugs and Performance Enhancements

Ensure [bug fixes and performance improvements](/handbook/marketing/blog/release-posts/#usability-improvements-performance-improvements-and-bug-fixes) are included in the Release Post by committing to the open MRs created by the Release Post Manager.
