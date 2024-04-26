---

title: Secure Engineering Refinement
---







## Overview

Engineering refinement is the most important step to ensure an issue is ready to move into development and that the issue will match
everyone's expectations when the work is delivered.

The goal of the refinement process is to

- Identify and resolve outstanding questions or discussions.
- Raise any questions, concerns or alternative approaches.
- Outline an implementation plan.
- Ensure issue is ready to be worked on.
- Identify code boundaries, for example, does the issue change code maintained by another team.
- Notify other teams if the issue is relevant to them in some way.
- Assign a weight to the issue.

The refinement process can break down the issue into technical subtasks by following the [sub-issue convention](https://gitlab.com/gitlab-com/www-gitlab-com/issues/4588) but we should avoid redefining the scope of an implementation issue as this should have already been done during the Planning Breakdown with UX and PM.

## When engineering refinement should be completed

Engineering refinement should be an ongoing activity for all engineers.
Our aim is to have enough issues to fill two iterations ready to be scheduled.
Unless specified differently for your team, every engineer should try to refine enough issues each week to result in a total weight of at least 6, and should do this following the weekly team meetings.

*  [Composition Analysis][ca]
*  [Dynamic Analysis][da]
*  [Static Analysis][sa]
*  [Frontend][frontend]


[ca]:https://gitlab.com/gitlab-org/gitlab/issues?label_name%5B%5D=group%3A%3Acomposition+analysis&label_name[]=workflow%3A%3Aplanning%20breakdown&label_name%5B%5D=backend&scope=all&sort=milestone&state=opened&utf8=%E2%9C%93&weight=None
[da]:https://gitlab.com/gitlab-org/gitlab/issues?label_name%5B%5D=group%3A%3Adynamic+analysis&label_name[]=workflow%3A%3Aplanning%20breakdown&label_name%5B%5D=backend&scope=all&sort=milestone&state=opened&utf8=%E2%9C%93&weight=None
[sa]: https://gitlab.com/groups/gitlab-org/-/boards/1590105?label_name[]=group%3A%3Astatic%20analysis
[frontend]: https://gitlab.com/gitlab-org/gitlab/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=devops%3A%3Asecure&label_name[]=workflow%3A%3Aplanning%20breakdown&label_name[]=frontend&weight=None

## Steps

1.  Assign yourself the issue
2.  If an engineer is required for the issue, ensure the appropriate `~backend` or `~frontend` label is applied. Otherwise, remove any backend/frontend label, assign any relevant labels and you are done.
3.  Check the issue for completeness.
    *  Does it have the necessary designs?
    *  Is the functionality clearly articulated and there is a consensus or decision on how it should function.
    *  Are the technical details outlined? Has a consensus been reached or decision been made in areas of discussion?
    *  Are there dependencies? Call those out.
4. If the issue is not complete:
    *  Tag the relevant people that can help complete the issue and outline what is needed. Tag the appropriate EM and PM, so they know that the item can not be fully groomed.
5. Ensure the issue is fully understood.
    *  Update the issue description with the final description of what will be implemented.
    *  Update the issue description with an [implementation plan](#implementation-plan).
    *  Ensure the issue title is accurate for the work being done.
    *  Open up new issues for 'follow-up' work, or work that was forced out of scope.
6. Assign a [weight](#weights) and set the label `~workflow::scheduling`
7. Assign a [work type classification label](/handbook/engineering/metrics/#work-type-classification) e.g. `/label ~"type::feature" ~"feature::enhancement"`
8. Once refinement is done unassign yourself.

When you are done refining, anyone should be able to read the issue description and should know what the issue is solving, how it is solving the problem,
and the technical plan for implementing the issue.

In order for someone to understand the issue and its implementation, they should **not** have to read through all the comments. The important bits should be captured in the description, as the **single source of truth.**

## Failing Refinement

An issue should fail refinement if it can not be worked on without additional information or decisions to be made. To fail an issue:
1.  Leave a comment on the issue that it can not be worked on, and highlights what still needs to be done.
2.  Unassign yourself if you can not contribute further to issue at the current time.
3.  Assign the `blocked` label.


## Weights

Weights are used as a *rough* order of magnitude to help signal to the rest of the team how much work is involved.
Weights should be considered an output of the refinement process rather than its purpose.

The weighting system roughly aligns the scales used by other teams within GitLab. However, we use relative sizing rather than
assigning time estimates to possible values. A curated set of reference issues have been provided below, which will be updated periodically
to keep examples as current as possible.

### Possible Values

It is perfectly acceptable if items take longer than the initial weight. We do not want to inflate weights,
as [velocity is more important than predictability](/handbook/engineering/development/principles/#velocity-over-predictability) and weight inflation over-emphasizes predictability.

| Weight | Description | Reference issues |
| ------ | ----------- | ---------------- |
| 1 | Trivial task | [Update Bandit analyzer to v1.6.2](https://gitlab.com/gitlab-org/gitlab/-/issues/12926) |
| 2 | Small task | [Security Dashboard should show dismissal details on issues](https://gitlab.com/gitlab-org/gitlab/-/issues/9715) |
| 3 | Medium task | [Dependency Scanning Fails: "engine 'node' is incompatible with this module"](https://gitlab.com/gitlab-org/gitlab/-/issues/12471), [Dependency List contains duplicates (npm project)](https://gitlab.com/gitlab-org/gitlab/-/issues/12162), [Support setup.py in Dependency Scanning](https://gitlab.com/gitlab-org/gitlab/issues/11244), [Make vulnerability-details receive a vulnerability as a prop](https://gitlab.com/gitlab-org/gitlab/-/issues/14006) |
| 5 | Large task | [Engineering Discovery: reconsider Gemnasium client/server architecture](https://gitlab.com/gitlab-org/gitlab/issues/12930) |
| 8 | Extra-large task | [SAST for Apex](https://gitlab.com/gitlab-org/gitlab/-/issues/10680), [Add License information to the Dependency List - add license info backend](https://gitlab.com/gitlab-org/gitlab/issues/13084), [WAF statistics reporting](https://gitlab.com/gitlab-org/gitlab/-/issues/14707) |
| 13 | Extra-extra-large task | [Add support for REST API scans to DAST](https://gitlab.com/gitlab-org/gitlab/-/issues/10928) |
| Bigger | Epic in disguise |  |

### Things to keep in mind when estimating

* For tasks that involve making changes to the Rails codebase

  Sometimes the most challenging part of working on a Rails codebase issue or bug is the difficulty of reproducing the problem locally and
  writing tests to demonstrate that the fix correctly solves the issue. When estimating, make sure to take into account the time required
  for a developer to understand how test factories for the relevant code are used and if they'll need to be updated in order to produce data
  to create a failing test.

  Bear in mind that the review process will be much more involved than a change to one of the secure analyzer projects because the number
  of reviewers will be higher, sometimes requiring as many as 4 people, across different timezones. Keep in mind the turnover time
  required to respond to comments, receive feedback the next day due to timezone differences, and then re-address those comments.

  Also be careful when estimating issues that might have efficiency concerns, such as adding sorting code or anything that may increase
  computational complexity. If this might be applicable to the issue you're estimating, make sure to include additional headroom to account
  for the work required to possibly provide benchmarking details or the addition of feature flags to ensure that system performance isn't
  negatively impacted.

  In addition to the above concerns, running into flaky tests or unrelated failures can sometimes require
  re-running the entire test suite after re-basing, or at least re-running individual tests until the pipeline goes green.

  Because of these considerations, be careful when estimating issues with a weight of `1`, since this is extremely difficult to achieve
  unless it's a minor uncontentious documentation change or a simple update such as adding a new element to an array of menu options, for
  example.

### Capacity planning documentation from other teams

* [Plan:Project Management BE Team Capacity Planning](/handbook/engineering/development/dev/plan/plan-project-management-be/#capacity-planning)
* [Create: Source Code BE Team Weights](/handbook/engineering/development/dev/create/source-code-be/#weights)
* [Geo Team Weights](/handbook/engineering/infrastructure/core-platform/systems/geo/process.html#weights)
* [Enablement:Cloud Connector](/handbook/engineering/infrastructure/core-platform/systems/cloud-connector/)

## Implementation Plan

A list of the steps and the parts of the code that will need to get updated to implement this feature. The implementation plan should also
call out any responsibilities for other team members or teams. An example: [execution plan for a real issue](https://gitlab.com/gitlab-org/gitlab/issues/5656#execution).

The goal of the implementation plan is to spur critical analysis of the issue and have the groomer think through what parts of the application will get touched.
The implementation plan will also permit other engineers to review the issue and call out any areas of the application that might have dependencies or
been overlooked.

The implementation plan might be limited to a single step but it should not be skipped, even when the implementation is simple.
This improves consistency across issues, and communicates that issues have been properly refined.

## FAQs

**Q:** Should discovery issues be groomed?

**A:** Yes. Discovery issues should be groomed but some of the steps above may not be relevant. Use good judgement to apply the process above. The purpose of
refining a discovery issue is to make sure the scope of the discovery is clear, what the output will be and that the prerequisites for the discovery are known
and completed. Discovery issues can have a habit of dragging out or not creating actionable steps, the refinement process should lock down what needs to be answered
in the discovery process.


**Q:** If an issue has both frontend and backend work how should I weight it?

**A:** Issues that require both frontend and backend work can be broken into [sub-issues as outlined in this document](https://gitlab.com/gitlab-com/www-gitlab-com/issues/4588).
