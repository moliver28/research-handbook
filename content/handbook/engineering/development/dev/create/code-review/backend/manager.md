---
title: "Create:Code Review BE Engineering Manager Responsibilities"
description: A list of responsibilities and resources for the Create:Code Review BE Engineering Manager
---

The [Backend Engineering Manager role at GitLab](/job-families/engineering/backend-engineer/#backend-engineering-manager) is an exciting and dynamic position that encompasses a wide range of responsibilities. In addition to leading and managing a team of talented engineers, the role involves overseeing projects from start to finish, making sure everything runs smoothly and meets high standards. As an engineering manager, you'll also have the opportunity to shape the team by actively participating in recruiting and hiring. One of the key aspects of the role is setting ambitious goals and measuring progress through OKRs (Objectives and Key Results), providing a clear roadmap for success. Moreover, fostering collaboration between different departments and teams is vital to ensure a seamless and efficient workflow. It's a multifaceted role that combines the best of leadership, project management, and team building, making each day full of diverse and engaging challenges.

This page will capture some of the responsibilities and resources for the Create:Code Review Backend Engineering Manager.

## People Management

### Talent Assessments

Talent assessments happen [on a regular basis](/handbook/people-group/calendars/manager-calendar/).

## Milestone Planning

### Milestone Schedule

Here are the activities done by the engineering manager throughout the course of a milestone.

The release is on the [3rd Thursday of every month](https://about.gitlab.com/releases/). We use a cutoff date of the Friday before that to get any work completed.
You can see more about the [release process here](/handbook/engineering/releases/).

On the first of the month a new [planning issue](https://gitlab.com/gitlab-org/create-stage/-/issues/?sort=created_date&state=opened&label_name%5B%5D=group%3A%3Acode%20review&label_name%5B%5D=Planning%20Issue) is automatically created for the next milestone. Create a thread for **Backend** and tag the backend team to get ideas for issues to include in the upcoming milestone planning.

#### Starting a Milestone

Here are the tasks to do at the start of the milestone. For these dates, use the Monday before the 3rd Thusday as day 0 since the Friday before that is the engineering cutoff.

| Days into Milestone | Action |
|---------------------|--------|
| 0 | Label all issues with the `Deliverable` and `workflow::ready for development` labels. |
| 0 | Assign issues to team members based on capacity. |
| 0 | Send emails to team members with their current issue board. |
| 1 | Move all open issues from the previous milestone into this new milestone |
| 3 | Find issues to investigate as part of the [planning / backlog refinement process](/handbook/engineering/development/dev/create/code-review/backend/#planning). Create a new issue using the [backlog refinement template](https://gitlab.com/gitlab-com/create-stage/code-review-be/-/issues/new?issuable_template=backlog_refinement). |
| 3 | Calculate the percentage breakdown of features, bugs, and maintenance and add it to the current planning issue. |

#### Wrapping Up a Milestone

Here are the tasks to do at the end of the milestone. The dates are relative to the cutoff date, which is the Friday before the 3rd Thursday.

| Days before Cutoff | Action |
|--------------------|--------|
| 7 | Move any issues that still have the `workflow::ready for development` label to the next milestone because it is likely it will not make the current milestone if it has not been started yet. |
| 7 | Make sure we have a capacity estimate for the next milestone. Check with team members to make sure all PTO has been entered. Add the capacity estimate to the planning issue. |
| 4 | Move any issues that have the `workflow::in dev` label to the next milestone because if they are still in progress it is likely they will not make the current milestone. |
| 2 | Have a planning meeting with the PM for Code Review to prioritize and pick issues for the milestone that fit within the available capacity. |

### Capacity planning

We use a lightweight system of issue weighting to help with capacity planning.
These weights help us ensure that the amount of scheduled work in a cycle is
reasonable, both for the team as a whole and for each individual. The "weight
budget" for a given cycle is determined based on the team's recent output, as
well as the upcoming availability of each engineer.

Since [things take longer than you think], it's OK if an issue takes longer
than the weight indicates. The weights are intended to be used in aggregate, and
what takes one person a day might take another person a week, depending on their
level of background knowledge about the issue. **That's explicitly OK and expected.**
We should strive to be accurate, but understand that they are estimates!
Change the weight if it is not accurate or if the issue becomes harder than
originally expected. Leave a comment indicating why the weight was changed and tag
your EM so that we can better understand weighting and continue to improve.


[things take longer than you think]: https://erikbern.com/2019/04/15/why-software-projects-take-longer-than-you-think-a-statistical-model.html

#### Weights

The weights we use are:

{{% include "includes/engineering/create/weight_table.md" %}}

Anything larger than 5 should be broken down if possible.

Security issues are typically weighted one level higher than they would normally
appear from the table above. This is to account for the extra rigor of the
[security release process](https://gitlab.com/gitlab-org/release/docs/blob/master/general/security/developer.md).
In particular, the fix usually needs more-careful consideration, and must also
be backported across several releases.

### Availability

Approximately 5-10 business days before the start of a new release, the EM will begin determining how "available" the team will be. Some of the things that will be taken into account when determining availability are:

- Upcoming training
- Upcoming time off / holidays
- Upcoming on-call slots
- Potential time spent on another teams deliverables

Availability is a percentage calculated by _(work days available / work days in release) * 100_.

All individual contributors start with a "weight budget" of 7, meaning they are capable (based on historical data) of completing a maximum number of issues worth 7 weight points total. Then, based on their availability percentage, weight budgets are reduced individually. For example, if you are 70% available, your weight budget becomes 5.

Product will prioritize issues based on the teams total weight budget.

### Kickoff emails

Once availability has been determined, weights have been assigned, and the PM/EM finalize a list of prioritized issues for the upcoming release, kickoff emails will be sent. The intent of this email is to notify you of the work we intend to assign for the upcoming release. This email will be sent before the release begins. The kickoff email will include:

- Your availability, weight budget, and how it was calculated
- A list of the issues you will most probably be assigned as an individual
- A reasoning behind why you have been assigned more than your weight budget, if applicable\

Emails get sent to each individual contributor on the team in order to give a heads-up about the upcoming issues in the milestone and what the assignments will be.

## Project Management

### Service Level Objectives Monitoring

The Engineering Manager will take proactive steps to avoid having reported bugs to go past the target duration defined in [Severity SLOs](/handbook/engineering/infrastructure/engineering-productivity/issue-triage/#severity-slos).

The [Bug Triage Board](https://gitlab.com/groups/gitlab-org/-/boards/2546239) can be used to browse them together in one board.

### Priority Issues

There are some classifications of issues that need immediate attention. These could be reliability, security, or high-priority issues. The Engineering Manager needs to watch for these issues on a regular basis, typically multiple times per week.

The [Code Review Priority Issue Board](https://gitlab.com/groups/gitlab-org/-/boards/4778535) is a way to see all these issues in one place.
