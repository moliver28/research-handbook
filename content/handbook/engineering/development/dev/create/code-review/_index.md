---
title: "Create:Code Review Group"
description: The Create:Code Review Group is responsible for all product categories that fall under the Code Review group of the Create stage.
---

The Create:Code Review Group is responsible for all aspects of the product categories that fall under the [Code Review group][group] of the [Create stage][stage] of the [DevOps lifecycle][lifecycle].

[group]: /handbook/product/categories/#code-review-group
[stage]: /handbook/product/categories/#create-stage
[lifecycle]: /handbook/product/categories/#devops-stages

## Group overview

### Group members

The following people are permanent members of the Create:Code Review Group:

{{<team-by-departments "Create:Code Review" >}}

### Sub-department specific pages

- [Backend](/handbook/engineering/development/dev/create/code-review/backend/)
- [Frontend](/handbook/engineering/development/dev/create/code-review/frontend/)

### Product categories

The Code Review group is responsible for the following product categories:

- [Code Review](https://about.gitlab.com/direction/create/code_review_workflow/)
- [GitLab CLI](https://about.gitlab.com/direction/create/gitlab_cli/)

### Category performance indicators

 - [Code Review Category MAU](https://internal.gitlab.com/handbook/company/performance-indicators/product/dev-section/#createcode-review---category-mau---unique-users-using-merge-requests) (Internal Only)
 - [Editor Extension Category MAU](https://internal.gitlab.com/handbook/company/performance-indicators/product/dev-section/#createcode-review---editor-extension---category-mau) (Internal Only)

## Work

In general, we use the standard GitLab [engineering workflow]. To get in touch with the Create:Code Review team, it's best to create an issue in the relevant project (typically [GitLab]) and add the `~"group::code review"` label, along with any other appropriate labels (`~devops::create`, `~section::dev`). Then, feel free to ping the relevant Product Manager and/or Engineering Manager as listed above.

For more urgent items, feel free to use [#g_create_code_review] on Slack.

Work on the [GitLab VS Code Extension] follows a simplified development process. Learn more about it by looking at [CONTRIBUTING.md].

[Take a look at the features we support per category here.](/handbook/product/categories/features/#createcode-review-group)

[engineering workflow]: /handbook/engineering/workflow/
[GitLab]: https://gitlab.com/gitlab-org/gitlab
[#g_create_code_review]: https://gitlab.slack.com/archives/g_create_code-review
[#g_create_code_review_fe]: https://gitlab.slack.com/archives/g_create_source-code-review-fe
[GitLab VS Code Extension]: https://gitlab.com/gitlab-org/gitlab-vscode-extension
[CONTRIBUTING.md]: https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/blob/main/CONTRIBUTING.md

## Metrics of success

The metrics by which we measure the success of the Code Review category are aligned with our [goals for code review](#where-we-are-headed), specifically ease of use, love-ability, and efficiency.

### Primary metric

Our _primary_ metric is: **reducing the duration of the Code Review**. This is measured as the duration from the first merge request version to merged.

The MTTM can be found on this [dashboard](https://10az.online.tableau.com/#/site/gitlab/workbooks/2372920/views).

### Secondary metrics

_Secondary_ metrics of success act as support for the primary metric, helping build a more complete picture of how successful the category is.

Once in a while, we conduct [UX scorecards](/handbook/product/ux/ux-scorecards/) to track the user experience through [various heuristics](/handbook/product/ux/heuristics/) — [see all UX scorecards for Code Review](https://gitlab.com/groups/gitlab-org/-/epics/5913). At the Create stage level, we conduct [usability benchmarking studies](https://about.gitlab.com/direction/create/#usability-benchmark).

Right now we're focused on measuring and improving [**perceived performance**](https://developer.mozilla.org/en-US/docs/Glossary/Perceived_performance): “how fast, responsive, and reliable a website feels to its users. The perception of how well a site is performing can have more impact on the user experience that the actual load and response times.” Perceived performance is not only _technical_ performance (i.e. load and response times), but also _user_ performance (i.e. efficiency in completing tasks), and can be [formulated](https://youtu.be/7ubJzEi3HuA?t=405) as:

```text
perceived performance = f(expected performance, UX, actual performance)
experience = f(perceived performance, task completion)
```

| Aspect | Measured by | Results |
|-|-|-|
| `Expected performance` and `UX` | Primarily by user’s feedback, and secondarily by actual performance of competitors. | [SaaS user’s feedback](https://gitlab.com/gitlab-org/ux-research/-/issues/1475) (in progress)<br>[Competitor performance (Software Forge Performance Index)](https://forgeperf.org/) (maintained by SourceHut)<br>[Largest Contentful Paint of SaaS vs GitHub.com for key pages](https://dashboards.gitlab.net/d/performance-comparison/github-gitlab-performance?orgId=1) |
| `Actual performance` (load and response times) | Primarily by the [Largest Contentful Paint (LCP) metric](https://web.dev/lcp), and secondarily by [other important metrics](https://web.dev/user-centric-performance-metrics/#important-metrics-to-measure). | [Test instance](https://gitlab.com/gitlab-org/quality/performance/-/wikis/Benchmarks/SiteSpeed/10k) (test samples: [large MR overview and changes tabs](https://staging.gitlab.com/gpt/large_projects/gitlabhq1/-/merge_requests/8785/diffs), [large MR commits tab](https://staging.gitlab.com/gpt/large_projects/gitlabhq1/-/merge_requests/4954/commits))<br>[SaaS: `gitlab-foss` large MR overview tab](https://dashboards.gitlab.net/d/000000043/sitespeed-page-summary?orgId=1&var-base=sitespeed_io&var-path=desktop&var-testname=gitlab&var-group=gitlab_com&var-page=_gitlab-org_gitlab-foss_merge_requests_9546&var-browser=chrome&var-connectivity=cable&var-function=median&var-resulturl=https:%2F%2Fs3.amazonaws.com%2Fresults.sitespeed.io&var-screenshottype=jpg) ([test sample](https://gitlab.com/gitlab-org/gitlab-foss/-/merge_requests/9546))<br>[SaaS: `gitlab-foss` large MR changes tab](https://dashboards.gitlab.net/d/000000043/sitespeed-page-summary?orgId=1&var-base=sitespeed_io&var-path=desktop&var-testname=gitlab&var-group=gitlab_com&var-page=_gitlab-org_gitlab-foss_-_merge_requests_9546_diffs&var-browser=chrome&var-connectivity=cable&var-function=median&var-resulturl=https:%2F%2Fs3.amazonaws.com%2Fresults.sitespeed.io&var-screenshottype=jpg) ([test sample](https://gitlab.com/gitlab-org/gitlab-foss/-/merge_requests/9546/diffs))<br>[SaaS: `gitlab-foss` empty MR overview tab](https://dashboards.gitlab.net/d/000000043/sitespeed-page-summary?orgId=1&var-base=sitespeed_io&var-path=desktop&var-testname=gitlab&var-group=gitlab_com&var-page=_gitlab-org_gitlab-foss_merge_requests_12419&var-browser=chrome&var-connectivity=cable&var-function=median&var-resulturl=https:%2F%2Fs3.amazonaws.com%2Fresults.sitespeed.io&var-screenshottype=jpg) ([test sample](https://gitlab.com/gitlab-org/gitlab-foss/-/merge_requests/12419))<br>[SaaS: `gitlab` large MR overview tab](https://dashboards.gitlab.net/d/000000043/sitespeed-page-summary?orgId=1&var-base=sitespeed_io&var-path=desktop&var-testname=gitlab&var-group=gitlab_com&var-page=SourceCode_MR_Large&var-browser=chrome&var-connectivity=cable&var-function=median&var-resulturl=https:%2F%2Fs3.amazonaws.com%2Fresults.sitespeed.io&var-screenshottype=jpg) ([test sample](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/22439))<br>[SaaS: `gitlab` small MR overview tab](https://dashboards.gitlab.net/d/000000043/sitespeed-page-summary?orgId=1&var-base=sitespeed_io&var-path=desktop&var-testname=gitlab&var-group=gitlab_com&var-page=SourceCode_MR_Small&var-browser=chrome&var-connectivity=cable&var-function=median&var-resulturl=https:%2F%2Fs3.amazonaws.com%2Fresults.sitespeed.io&var-screenshottype=jpg) ([test sample](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/34944))<br>[SaaS: Other project MR overview tab](https://dashboards.gitlab.net/d/000000043/sitespeed-page-summary?orgId=1&var-base=sitespeed_io&var-path=desktop&var-testname=gitlab&var-group=gitlab_com&var-page=GitLab_Merge_Detail&var-browser=chrome&var-connectivity=cable&var-function=median&var-resulturl=https:%2F%2Fs3.amazonaws.com%2Fresults.sitespeed.io&var-screenshottype=jpg) ([test sample](https://gitlab.com/postmarketOS/pmaports/-/merge_requests/1002)) |
| `Task completion` (task times) | Estimates of user’s execution time of primary tasks through the [GOMS approach](https://en.wikipedia.org/wiki/GOMS). We focus on the percentage difference of GitLab and competitors, or of current and proposed designs. | [July 2021 estimates](https://gitlab.com/gitlab-org/ux-research/-/issues/1474#results) |

### Development Metrics

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="code review" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
  {{< tableau/filters "GROUP_LABEL"="code review" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/Flakytestissues/FlakyTestIssues" >}}
  {{< tableau/filters "GROUP_NAME"="code review" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/SlowRSpecTestsIssues/SlowRSpecTestsIssuesDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="code review" >}}
{{< /tableau >}}

### Exploration and experimentation

The Code Review group believes it's important that team members are empowered to explore and experiment with areas of the product that interest them. Sometimes, the best way to get the conversation started is [with a merge request](/handbook/communication/#start-with-a-merge-request).

#### Allocate time

In order to better provide opportunities for team members to pursue interest areas, engineers are encouraged to reserve about 10% of their scheduled capacity.

#### Setting expectations

If you're choosing to work in these areas or explore new ideas, there's a few ground rules to make sure we're all on the same page:

1. Work in these areas doesn't come at the cost of planned deliverables for the milestone
1. Not all efforts in these areas will be merged into the product, but sharing them with product and design can help steer conversations for future work
1. Work does **not** need to be in the code review area; engineers are encouraged to explore areas of interest

#### Areas of inspiration

It can be hard to figure out where to get started, so here's a handy list of places you might look for inspiration:

1. [Top level Code Review epic](https://gitlab.com/groups/gitlab-org/-/epics/688) - Epics in this list are loosely sorted by importance
1. [Top level Editor Extension epic](https://gitlab.com/groups/gitlab-org/-/epics/3322) - Epics in this list encompass an entire category of features, but the group is primarily focused only on VS Code
1. [Group level `gitlab-org` issue list](https://gitlab.com/groups/gitlab-org/-/issues) - filter this to issues with labels you're interested in
1. [Code review issues ready for development](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=group%3A%3Acode%20review&label_name[]=workflow%3A%3Aready%20for%20development)
1. [Performance](https://gitlab.com/gitlab-org/gitlab/-/boards/706619?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=group%3A%3Acode%20review&label_name[]=performance) and [Performance Refinement](https://gitlab.com/gitlab-org/gitlab/-/boards/706619?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=group%3A%3Acode%20review&label_name[]=performance-refinement) issues
1. [Easy wins](https://gitlab.com/gitlab-org/gitlab/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=group%3A%3Acode%20review&label_name[]=%F0%9F%8D%8E)

### Meetings

Whenever possible, we prefer to communicate asynchronously using issues, merge requests, and Slack. However, face-to-face meetings are useful to establish personal connection and to address items that would be more efficiently discussed synchronously such as blockers.

We record our meetings and upload them to the [Create Code Review Playlist](https://www.youtube.com/playlist?list=PL05JrBw4t0KpxYDEB9t5231bq775u_Ia3) on GitLab Unfiltered.

#### Code Review Weekly

This is a chance for all members of the Code Review Group to meet to discuss current priorities, blockers, planning, and discuss the [middle of milestone check-in](#middle-of-milestone-check-in).

The agenda for this meeting is set in advance and anyone can contribute topics. If there are no items on the agenda 30 minutes before the meeting is scheduled to start, we cancel the meeting.

#### Code Review UX Sync

This meeting is focused on collaboration between UX and PM, though all are welcome to attend and contribute.

#### Code Review Performance Round Table

This meeting is for discussing new performance topics, project proposals, and ongoing performance work or concerns.

The [catch-all issue](https://gitlab.com/gitlab-org/create-stage/-/issues/13110) includes the agenda, issue board, and goals.

## Working with product

Weekly calls between the product manager and engineering managers (frontend and backend) are listed in the "Code Review Group" calendar. Everyone is welcome to join and these calls are used to discuss any roadblocks, concerns, status updates, deliverables, or other thoughts that impact the group. Every 2 weeks (in the middle of a release), a [mid-milestone check-in](#middle-of-milestone-check-in) occurs, to report on the current status of ~"Deliverable"s. Monthly calls occurs under the same calendar where the entire group is encouraged to join, in order to highlight accomplishments/improvements, discuss future iterations, review retrospective concerns and action items, and any other general items that impact the group.

### Collaborating with other counter parts

You are encouraged to work as closely as needed with stable counterparts outside of the PM. We specifically include quality engineering and application security counterparts prior to a release kickoff and as-needed during code reviews or issue concerns.

Quality engineering is included in our workflow via the [Quad Planning Process](https://gitlab.com/gitlab-com/www-gitlab-com/issues/6318).

Application Security will be involved in our workflow at the same time that [kickoff emails](#kickoff-emails) are sent to the team, so that they are able to review the upcoming milestone work, and notate any concerns or potential risks that we should be aware of.

### Working with the wider GitLab community

Since we support such a large feature set, our team often reviews community contributions from the wider GitLab community. You're encouraged to give each contributor our version of "[white glove treatment](https://www.merriam-webster.com/dictionary/white-glove)". Providing recognition for their donated time, giving exceedingly helpful reviews, and encouraging them in their contribution are all excellent ways to build a sense of community. If you don't have time to respond to a ping for a review or suggestion, please quickly let the person who pinged you know so they can ping someone else.

#### Tips and Tricks

For tips, tricks, or quick shell scripts that aren't "ready" or sufficient enough to add to our developer documentation or handbook, we use [the Create stage wiki](https://gitlab.com/groups/gitlab-com/create-stage/-/wikis/home).

### Middle of milestone check-in

{{% include "includes/engineering/midmilestone.md" %}}

### Workflow labels

{{% engineering/workflow-labels "group::code review" %}}

### Async standup

{{% include "includes/engineering/create-async-standup.md" %}}

Our team is encouraged to post links to their deliverable issues or merge requests when they are mentioned in relation to the second question. This helps other team members to understand what others are working on, and in the case that they come across something similar in the future, they have a good reference point.

### Retrospectives

We have 1 regularly scheduled "Per Milestone" retrospective, and can have ad-hoc "Per Feature" retrospectives more focused at analyzing a specific case, usually looking into the Iteration approach.

#### Per Milestone

{{% engineering/create-retrospectives group-label="Code Review" group-slug="code-review" %}}

#### Per Project

If a particular issue, feature, or other sort of project turns into a particularly useful learning experience, we may hold a synchronous or asynchronous retrospective to learn from it. If you feel like something you're working on deserves a retrospective:

1. [Create an issue](https://gitlab.com/gl-retrospectives/create-stage/code-review/issues) explaining why you want to have a retrospective and indicate whether this should be synchronous or asynchronous
1. Include your EM and anyone else who should be involved (PM, counterparts, etc)
1. Coordinate a synchronous meeting if applicable

All feedback from the retrospective should ultimately end up in the issue for reference purposes.

## Merge Request Report Widgets shared responsibility

Even though the topic of Merge Request falls under Code Review, the code powering the Merge Request Report Widgets (see [Working Group](/handbook/company/working-groups/merge-request-report-widgets/)) is written and maintained by a larger group.

Please refer to the [List of DRIs](/handbook/engineering/development/dev/create/code-review/report-widgets-dri-list.html) for communication and troubleshooting purposes relating to these Widgets.
