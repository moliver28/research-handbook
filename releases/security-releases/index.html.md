---
layout: markdown_page
title: "Security Releases"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Security release overview

Security vulnerabilities in GitLab and its dependencies are to be addressed following the [Security Remediation SLAs](https://handbook.gitlab.com/handbook/security/threat-management/vulnerability-management/#remediation-slas)

At GitLab, we have two types of security releases:
1. Scheduled: A planned security release to publish all available vulnerability fixes to [the current, and previous two GitLab versions](https://docs.gitlab.com/ee/policy/maintenance.html). Scheduled security releases normally take place after the [monthly release](https://about.gitlab.com/releases/)
1. Critical: An unplanned, immediate patch and mitigation is required for a single issue. 

Security releases are prepared in parallel with regular GitLab.com deployments so that continuous deployment is not blocked. In this way we can apply security fixes to GitLab.com instances before the public release. 

## Security release process 

Security releases have multiple touchpoints between many teams to prepare, validate and release fixes. An overview of both types of security release and their touchpoints is included below.  

If you're a GitLab engineer looking to include a fix in a security release, please follow the steps on the [security release runbook for GitLab engineers](https://gitlab.com/gitlab-org/release/docs/-/blob/master/general/security/process.md#guides-by-role).

### Scheduled security release process

One security release is scheduled each month, usually in the week following the monthly release. In line with our current maintenance policy [we release security fixes to the current GitLab version, and the previous two versions](https://docs.gitlab.com/ee/policy/maintenance.html). 

The scheduled security release includes all security fixes ready at the time of release preparation. Security fixes are worked on in the mirrored GitLab security repositories to avoid revealing vulnerabilities before the release. 

![Scheduled security release overview](security-release-overview.png)
* [Diagram source](https://docs.google.com/presentation/d/1YRjA1dYCXNXp06VltDYlik1MdFyzUvaeXKk69mMPcA4/edit#slide=id.g1597ba158b2_0_0)

- **Step 1: Vulnerability fix prepared** - Throughout a milestone engineers fix vulnerabilities in the relevant Security repository.  A fix is considered complete only when it has a [security implementation issue] with the following:
    - All checkboxes checked to show all steps have been completed.
    - An AppSec and Maintainer approved MR targeting the default branch. 
    - A backport MR for each intended version. In most cases this will mean 4 MRs to cover each supported version. Each MR must have passing pipelines, required approvals and be assigned to the release bot for processing. 
    - The `~"security-target"` label is applied. This will automatically review the issue and link it to the security release tracking issue if it is ready.
- **Step 2: Security release** - Release Managers start working on a security release several days ahead of the planned due date. 
Release Managers coordinate the release steps to make sure that all prepared fixes are safely released. Deployments to GitLab.com run in parallel. A release has the following phases:
    - **Step 3: First steps** - Release preparation begins when release managers run the `prepare` chatops command to create the new release task issue to guide the security release. From here they follow the checklist to complete the initial set up and communication issues needed to prepare the release.
    - **Step 4: Early Merge Phase** - One to two days before the release due date the Release Managers deploy fixes to GitLab.com. Fixes with the `~"security-target"` label that are linked to the security release tracking issue will have the MR targeting the default branch merged. This allows fixes to be deployed to GitLab.com before they are released to self-managed users. 
    - **Step 5: Release preparation** - the day before the release due date, Release Managers merge backports onto stable branches. Everything included must be deployed to GitLab.com, and backports must apply to all stable branches. Anything preventing this leads to fixes missing the release, or the release becoming delayed. When all fixes are merged, the Release Managers prepare and test the packages. If all tests pass, the packages can be published and an AppSec-prepared blog post is merged. At this point, the release is available to all users.
- **Step 6: Resync the security and canonical repos**. To complete the release we re-sync the default branches, stable branches and tags to return to our default state of working in the open. 

## Security release FAQs

### A security issue was assigned to me, where should I start?

See the [Security Release process as Developer] documentation for more information.

Also, make sure to see [Security Releases How to video] for a broad explanation about all the steps required as a Developer when working on a security fix.

### Why wasn't my security fix included in the Security Release?

Security issues created on [GitLab Security] need to be associated with the Security Release Tracking issue for them to be included on the Security
Release. Make sure to use the [security issue template] and follow the listed steps.

### How many backports do I need when working on a security issue?

Besides the merge request targeting `master`, three backports will be needed targeting the last two monthly releases and the current release. 
For more information, see [security release backports].

### How can I revert a security merge request?

Once a security merge request has been merged, it's not advisable to revert it for multiple reasons:

1. Reverting requires rolling back a security fix, compromising the integrity of GitLab.com and self-managed instances
1. Reverting without making another fix into the release risks disclosing the vulnerability to the public when we make the release.
   This is unacceptable
1. Security releases are performed in a restricted time constraint, reverting a security merge request requires another fix to be
   prepared in time to avoid impacting the security release timeframe 

If a security vulnerability introduced a non-vulnerability bug, in most cases, the appropriate path forward is to fix the issue in the canonical repository (after the security release has been published).

If a security vulnerability introduced a high severity non-vulnerability bug, engage with AppSec and release managers to coordinate next steps. 

For more information, see [revert a security merge request] runbook.

[security release backports]: https://gitlab.com/gitlab-org/release/docs/-/blob/master/general/security/developer.md#backports
[GitLab Security]: https://gitlab.com/gitlab-org/security/
[Security Releases How to video]: https://www.youtube.com/watch?v=ixtUDxM3nWA
[Security Release process as Developer]: https://gitlab.com/gitlab-org/release/docs/-/blob/master/general/security/developer.md
[security implementation issue]: https://gitlab.com/gitlab-org/release/docs/-/blob/master/general/security/process.md#terminology
[revert a security merge request]: https://gitlab.com/gitlab-org/release/docs/-/blob/master/general/security/runbooks/revert-security-merge-request.md
