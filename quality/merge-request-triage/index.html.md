---
layout: handbook-page-toc
title: Wider Community Merge Request Triage
description: "Guidelines for triaging new merge requests from the wider community opened on GitLab.com projects"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

At GitLab, our mission is to change all creative work from read-only to read-write so that [everyone can contribute](/company/mission/#mission). GitLab highly values community contribution and we want to continue growing community code contribution. GitLab encourages the community to file issues and open merge requests for our projects on [GitLab.com][GitLab.com]. Their contributions are valuable, and we should handle them as effectively as possible. A central part of this is triage - the process of categorization according to type and product group.

Any GitLab team-member can triage merge requests. Keeping the number of un-triaged merge requests low is essential for maintainability, and is our collective responsibility. Consider triaging a few merge requests around your other responsibilities, or scheduling some time for it on a regular basis.

Triaging all new community merge requests in our projects on [GitLab.com][GitLab.com] is divided between several departments. Quality Department maintains triage automation, [Merge Request Coaches](/handbook/marketing/community-relations/code-contributor-program/resources/merge-request-coach-lifecycle.html) take on a partial merge request triage, and finally Engineering Managers in each [Product Group](/handbook/product/categories/#devops-stages) are completing the triage process. Additionally, [Code Contributor Program](/handbook/marketing/community-relations/code-contributor-program/) drives the community collaboration efforts and works with our community to ensure they receive support and recognition for contributing to GitLab.

## Triage levels

We define three levels of triage.

### Initial Triage

A merge request is considered initially triaged when it has a:

- [`~"Community contribution"` label applied](/handbook/engineering/quality/triage-operations/#ensure-quick-feedback-for-community-contributions).
- [welcome message](https://gitlab.com/gitlab-org/quality/triage-ops/-/blob/master/triage/processor/thank_community_contribution.rb) from the [`@gitlab-bot`](https://gitlab.com/gitlab-bot) user with more details on the process.

The Initial triage is automated by the [Engineering Productivity team][Engineering Productivity team], please see [Community contributions on Triage Operations](/handbook/engineering/quality/triage-operations/#community-contributions) page for the full details.

### Partial Triage

A merge request is considered partially triaged when it has a:

- [type label](https://docs.gitlab.com/ee/development/contributing/issue_workflow.html#type-labels) applied.
  - (For `~"type::bug"` and `~"UX Debt"`) It has a [severity label](https://docs.gitlab.com/ee/development/contributing/issue_workflow.html#severity-labels) applied.
- [stage label](https://docs.gitlab.com/ee/development/contributing/issue_workflow.html#stage-labels) applied.
- [group label](https://docs.gitlab.com/ee/development/contributing/issue_workflow.html#group-labels) applied (e.g. `~"group:editor"`). If no group label exists, the stage label is enough.

The Partial triage is completed by [Merge Request Coaches](/handbook/marketing/community-relations/code-contributor-program/resources/merge-request-coach-lifecycle.html) via the [newly created Community contribution merge requests](/handbook/engineering/quality/triage-operations/#newly-created-community-contribution-merge-requests-requiring-first-triage) triage report.

### Complete Triage

The Complete Triage is divided into 3 subcategories depending on the community merge request state.

#### Complete Triage for Open Merge Requests

A merge request is considered completely triaged when it has:

- a reviewer assigned by [Engineering Managers](/handbook/engineering/quality/triage-operations/#community-merge-requests-requiring-attention).
- been reviewed by a reviewer.

#### Complete Triage for Merged Merge Requests

A merge request is considered completely triaged when it has a:

- milestone set if the merge request with the `~"Community contribution"` label is merged.

This triage process is automated by the [Engineering Productivity team][Engineering Productivity team] with Triage automation, please see [Add milestone to community contributions on Triage Operations](/handbook/engineering/quality/triage-operations/#add-milestone-to-community-merge-requests) page for the full details.

#### Complete Triage for Idle Merge Requests

A merge request is considered completely triaged when it:

- is closed following the [closing policy for issues and merge requests](https://docs.gitlab.com/ee/development/contributing/#closing-policy-for-issues-and-merge-requests).

This triage process is being done manually on a case-by-case basis by [Merge Request Coaches](/job-families/expert/merge-request-coach/#closing-merge-requests) or [Engineering Managers](/handbook/engineering/quality/triage-operations/#community-merge-requests-requiring-attention).

## Triage levels for the www-gitlab-com project

The GitLab Website is owned and managed by a different team than GitLab.org; thus, a further triage process must be defined.

### Initial Triage

A merge request is considered initially triaged when it has a:

- [`~"Community contribution"` label applied](/handbook/engineering/quality/triage-operations/#ensure-quick-feedback-for-community-contributions).
- [welcome message](https://gitlab.com/gitlab-org/quality/triage-ops/-/blob/master/triage/processor/thank_community_contribution.rb) from the [`@gitlab-bot`](https://gitlab.com/gitlab-bot) user with more details on the process.

The Initial triage is automated by the [Engineering Productivity team][Engineering Productivity team], please see [Community contributions on Triage Operations](/handbook/engineering/quality/triage-operations/#community-contributions) page for the full details.

### Complete Triage

The Complete Triage is divided into 3 subcategories depending on the community merge request state.

#### Complete Triage for Open Merge Requests

A merge request is considered completely triaged when it has:

- a reviewer assigned by a member of the [GitLab Website Community Team](https://gitlab.com/gitlab-com-community).
- been reviewed by a reviewer.

Typically, the reviewer is the [code owner](https://docs.gitlab.com/ee/user/project/code_owners.html) of the page the merge request is updated. If there is no code owner assigned, the triager will reach out to the relevant team the page belongs to identify a reviewer.


#### Complete Triage for Idle Merge Requests

A merge request is considered completely triaged when it:

- is closed following the [closing policy for issues and merge requests](https://docs.gitlab.com/ee/development/contributing/#closing-policy-for-issues-and-merge-requests).

This triage process is being done manually on a case-by-case basis by a member of the [GitLab Website Community Team](https://gitlab.com/gitlab-com-community) or the relevant [code owner](https://docs.gitlab.com/ee/user/project/code_owners.html).

## Inactive MR Triage Policy

The inactive merge request policy was created to enable GitLab teams to focus efforts on active merge request and prevent old merge requests from degrading into a state of disrepair. This is done by creating two thresholds at which GitLab team members attempt to move the merge request forward. Contributor Success team members attempt to move merge requests that have reached the first threshold forward. If that's not successful an Engineering Manager makes a decision at the second threshold. We value your effort - that's why all decisions to close a merge request are made by a human, and are not automated.

1. Merge Requests without human interaction for more than 28 days are labeled as [~idle](https://gitlab.com/groups/gitlab-org/-/merge_requests?label_name%5B%5D=idle)
    1. Idle Merge Reqeusts appear in the [weekly community contributions report](https://gitlab.com/gitlab-org/quality/triage-ops/-/blob/master/policies/groups/gitlab-org/quality/community-contribution-mr-report.yml) which the [Contributor Success team](https://about.gitlab.com/handbook/engineering/quality/contributor-success/) monitors.
    1. The [Contributor Success team](https://about.gitlab.com/handbook/engineering/quality/contributor-success/) will attempt to move these Merge Requests forward.
1. Merge Requests without human interaction for more than than 120 days are labeled as [~stale](https://gitlab.com/groups/gitlab-org/-/merge_requests?label_name%5B%5D=stale)
    1. Once a Merge Request becomes stale, an Engineering Manager is pinged to decide if a GitLab team member will pick up the work on it or close the Merge Request.

## Wider Community Merge Request Triage SLOs

Community contributions are valuable, and we should handle them as effectively as possible to ensure swift feedback to community and increase engagement. To achieve that we define the following [Service-level objectives (SLOs)](https://en.wikipedia.org/wiki/Service-level_objective):

| Triage Level                                                                            | Triage SLO                                 | Escalation path if SLO target is missed                                                                    |
|-----------------------------------------------------------------------------------------|--------------------------------------------|------------------------------------------------------------------------------------------------------------|
| [Initial Triage](#initial-triage)                                                       | 24 hours                                   | Reach out to [Engineering Productivity team][Engineering Productivity team]|
| [Partial Triage](#partial-triage)                                                        | 7 days                                     | Reach out to the [GitLab Website Community Team](https://gitlab.com/gitlab-com-community) by directly tagging `@gitlab-com-community` at the merge request.
| [Complete Triage for Open Merge Requests](#complete-triage-for-open-merge-requests)     | - 7 days to assign <br> - 7 days to review | Reach out to the [GitLab Website Community Team](https://gitlab.com/gitlab-com-community) by directly tagging `@gitlab-com-community` at the merge request.        |
| [Complete Triage for Merged Merge Requests](#complete-triage-for-merged-merge-requests) | 7 days                                     | Reach out to [Engineering Productivity team][Engineering Productivity team] |
| [Complete Triage for Idle Merge Requests](#complete-triage-for-idle-merge-requests)    | 7 days                                     | Reach out to the [GitLab Website Community Team](https://gitlab.com/gitlab-com-community) by directly tagging `@gitlab-com-community` at the merge request.      |

[GitLab.com]: https://gitlab.com/groups/gitlab-org
[Engineering Productivity team]: /handbook/engineering/quality/engineering-productivity/
