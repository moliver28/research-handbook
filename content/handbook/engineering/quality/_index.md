---
title: Quality Department
description: >-
  The Quality Department in Engineering Division
---


## Staffing planning

We staff our department with the following gearing ratios:

### Software Engineer in Test

- **Primary Ratio**: 1 Software Engineer in Test per [Product Group](/handbook/product/categories/#hierarchy).
  - This ratio is captured as a department [performance indicator](/handbook/engineering/quality/performance-indicators/#software-engineer-in-test-gearing-ratio).
  - We are improving this ratio by factoring additional facets of each product group and not blanket allocating staffing to every product group. These facets include:
     1. Driver scores (Usage, SMAU, SAM)
     1. Revenue path (ARR, Uptier)
     1. Customer adoption journey
     1. Self-manage & Reference Architecture impact
     1. Must work areas
     1. Development and UX facets (number of Engineers, SUS issues)
  - For more information, please see the [SET Gearing Prioritization Model for more (GitLab Only)](https://docs.google.com/spreadsheets/d/e/2PACX-1vRM5jmGgT5H1kDOi6UwHTbK7PnoPYTYATnLe5HgVkJqe2VvaWo9fKpbnB6gR4vhx3UDby4wUeGwPYEq/pubhtml?gid=2059771943&single=true){:target="_blank"}. With these adjustments, we would be at ~85% of the 1:1 ratio to every product group.
    - Product groups with high complexity may need more than one SET.
    - Newly formed product groups may not have an allocated SET. They may be allocated one in the future.
- Secondary Ratio: Approximately a 1:8 ratio of Software Engineer in Test to Development Department Engineers.

### Engineering Productivity Engineer

- **Primary Ratio**: 1 Engineering Productivity Engineer per [Product Stage](/handbook/product/categories/#hierarchy).
  - This ratio is captured as a department [performance indicator](/handbook/engineering/quality/performance-indicators/#engineering-productivity-engineer-gearing-ratio).
- Secondary Ratio: Approximately a 1:40 ratio of Engineering Productivity Engineers to Development Department Engineers.

### Quality Engineering Manager

- **Primary Ratio**: 1 Quality Engineering Manager per [Product Section](/handbook/product/categories/#hierarchy).
  - This ratio is captured as a department [performance indicator](/handbook/engineering/quality/performance-indicators/#quality-engineering-manager-gearing-ratio).
- Secondary Ratio: Approximately a 1:1 ratio of Quality Engineering Manager to Development Department Directors.

## Engineering Metrics task process

We track work related to Engineering performance indicators in the [Engineering Analytics](https://gitlab.com/gitlab-org/quality/engineering-analytics/team-tasks/-/boards/2650515?group_by=epic) board.

This board is used by the Engineering Analytics team to:

- Summarize status and progress on work related to Engineering's KPIs and metrics.
- Distinguish between planned projects for the current quarter and ad-hoc requests received by the Engineering Analytics team.

The work effort on Engineering Division and Departments' KPIs/RPIs is owned by the [Engineering Analytics team](/handbook/engineering/quality/engineering-analytics/). This group maintains the [Engineering Metrics](/handbook/engineering/metrics/) page.

### DRIs

The [Engineering Analytics](https://gitlab.com/gitlab-org/quality/engineering-analytics/team-tasks/-/boards/2650515?group_by=epic) board is structured by the analytics needs within each Engineering Department. At the beginning of each quarter, the team declares and prioritizes projects related to long-standing analytics needs for one or more Engineering Departments. In addition, the team also takes on ad-hoc requests ranging from maintenance of existing KPIs and dashboards to consultation on new metrics and data related to Engineering operations.

The ownership of the work columns follows the [stable counterpart assignment](/handbook/engineering/quality/engineering-analytics/#counterpart-assignments) of the Engineering Analytics team to each Engineering Department.

In order to engage with the team, please refer to the [Engineering Analytics team's handbook page](/handbook/engineering/quality/engineering-analytics/#how-to-engage-with-us) for the appropriate Slack channels and projects for creating issues for our team.

#### DRI Responsibilities

- Prepare the board before the data team sync meeting.
- Interface with the Department leader you report to in your 1-1, capture the ask and relative prioritization and populate the board.
- Please work on capturing the ask as issues and reorder them for prioritization.
- Issues not of importance or not currently worked on can be below the cutline.
- In the data team sync meeting, ensure that the data team is aware of dependencies and blockers.

### Process

- [Create an issue](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/new) with `~"Engineering Metrics"` to be added to the [Engineering Analytics](https://gitlab.com/gitlab-org/quality/engineering-analytics/team-tasks/-/boards/2650515?group_by=epic) board.
    - State clearly what are the requirements and measures of the performance indicator.
- The [Director of Engineering Analytics](https://gitlab.com/cdeleon_gitlab) is the DRI for triage, prioritization, and assignment.
    - If work can be done without the need of new data warehouse capabilities, the DRI will schedule and assign the work within Engineering.
    - If new Data warehouse capabilities are needed from the Data team, a linked issue will be created on the [Data team's Engineering](https://gitlab.com/groups/gitlab-data/-/boards/1496166?label_name%5B%5D=Engineering) board.
        - Requests for support from the Data Team will be reviewed during Data Triage or by [requesting an expedition](/handbook/business-technology/data-team/how-we-work/#request-to-expedite-responses)
- Every KPI issue is either assigned to the backlog or given a due date. The Engineering team will propose first a due date, which the Results DRI will confirm if possible or the provide the next possible date.
    - Discussions to take place in [#eng-data-kpi](https://gitlab.slack.com/archives/C0166JCH85U) as needed.
- Every new KPI/RPI should follow our [standardized format](/handbook/engineering/performance-indicators/#guidelines).
- The closure of the issue should be done with a merge request to the performance indicator page(s).

## Task management

We have top level boards (at the `gitlab-org` level) to communicate what is being worked on for all teams in quality engineering.
Each board has a cut-line on every column that is owned by an individual. Tasks can be moved vertically to be above or below the cut-line.
The cut-line is used to determine team member capacity, it is assigned to the `Backlog` milestone. The board itself pulls from `any milestone` as a catch-all so we have insights into past, current and future milestones.
The cut-line also serves as a healthy discussion between engineers and their manager in their 1:1s. Every task on the board should be sized according to our [weight definitions](/handbook/engineering/infrastructure/test-platform/#weights).

### How to use the board and cut-line

- Items above the cut-line are issues in-progress and have current priority.
- Items under the cut-line are not being actively worked on.
- Engineers should self-update content in their column, in addition to being aware of their overall assignments before coming to their 1:1s
- Managers should be aware of their overall team assignments. Please review your boards and refine them frequently according to the department goals and business needs.
- Highlight blockers and tasks that are under in weight. Consider adjusting the weights to communicate the challenges/roadblocks broadly. Use `~"workflow::blocked"` to indicate a blocked issue.
- Weight adjustments are a healthy discussion. Sometimes an issue maybe overweight or underweight, this calibration should be an continuous process. Nothing is perfect, we take learnings as feedback to future improvements.
- We aim to have roughly 15 weights assigned to any person at a given time to ensure that engineers are not overloaded and prevent burnout. The number may change due to on-boarding period and etc.

[Discussion on the intent and how to use the board](https://drive.google.com/open?id=1w3z9u_VCvMSpg7OOWvOW17mEMpezi6jH)

### Team boards

- [Dev & Analytics QE Team](https://gitlab.com/groups/gitlab-org/-/boards/425899)
- [Ops QE Team](https://gitlab.com/groups/gitlab-org/-/boards/978348)
- [Self Managed Platform Team](https://gitlab.com/groups/gitlab-org/-/boards/978354)
- [Fulfillment QE Team](https://gitlab.com/groups/gitlab-org/-/boards/1512645)
- [Sec & Data Science QE Team](https://gitlab.com/groups/gitlab-org/-/boards/1524991)
- [Engineering Productivity Team](https://gitlab.com/groups/gitlab-org/-/boards/978615)
- [Quality Management Team](https://gitlab.com/groups/gitlab-org/quality/-/boards/4518177)

The boards serve as a single pane of glass view for each team and help in communicating the overall status broadly, transparently and asynchronously.

## Refinement processes

Below mentioned are few venues of collaboration with [Development](/handbook/engineering/development/) department.

### Bug Refinement

To mitigate high priority issues like [performance bugs](/handbook/engineering/infrastructure/engineering-productivity/issue-triage/#severity) and [transient bugs](/handbook/engineering/infrastructure/engineering-productivity/issue-triage/#transient-bugs), Quality Engineering will triage and refine those issues for Product Management and Development via a bi-weekly Bug Refinement process.

#### Goals

- To make the performance of various aspects of our application empirical with tests, environments, and metrics.
- To minimise the [transient bugs](/handbook/engineering/infrastructure/engineering-productivity/issue-triage/#transient-bugs) seen in our application, thereby improving usability.

#### Identifying Issues

Quality Engineering will do the following in order to identify the issues to be highlighted in the refinement meeting:

- Review existing customer impacting performance bugs [in our issue tracker](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name%5B%5D=performance&label_name%5B%5D=customer&label_name[]=type::bug) and add the ~"bug::performance" label.
- Review issues raised due to failures in the daily performance tests and identify early warning on performance degradation which have not had customer exposure but poses a risk in the future. Apply the ~"bug::performance" label for these issues as well.
- Review all issues labelled as ~"bug::transient".

#### Process

- A manager in the Quality Engineering department will lead refinement with issues populated beforehand in the issue boards.
    - The [performance refinement board](https://gitlab.com/groups/gitlab-org/-/boards/1233204?&label_name%5B%5D=performance-refinement) is used to triage performance issues. 
    - The [transient bugs board](https://gitlab.com/groups/gitlab-org/-/boards/2206756?&label_name[]=type::bug%3A%3Atransient) is used to triage transient issues.
- Before each meeting, for issues that are not yet fully triaged, the QEM meeting lead will assign the QEM of the appropriate stage or group to prioritize them.
- The QEM meeting lead should review the board for long running issues that do not have meaningful activity and add them to the agenda to be considered for closure if no longer actionable.
- Any high impact issues which need wider awareness should be added to the agenda for discussion by the relevant stakeholder. This includes urgent performance/transient issues as well as those that have been surfaced as important for customers.
- These issues that are surfaced to the refinement meeting will be severitized and prioritized according to our definitions.
- Guest attendees who may be relevant for a topic on the agenda (product group engineering managers or product managers, technical account managers, support engineers, or others) should be added to the calendar invite.

### Development request issues

Quality Engineering will track productivity, metric and process automation improvement work items
in the [Development-Quality](https://gitlab.com/groups/gitlab-org/-/boards/1262515) board to service the [Development](/handbook/engineering/development/) department.
Requirements and requests are to be created with the label `~dev-quality`. The head of both departments will review and refine the board on an on-going basis.
Issues will be assigned and worked on by an Engineer in the [Engineering Productivity team](engineering-productivity) team and [communicated broadly](/handbook/engineering/infrastructure/engineering-productivity/triage-operations/#communicate-early-and-broadly-about-expected-automation-impact) when each work item is completed.

### Release process overview

Moved to [release documentation](https://gitlab.com/gitlab-org/release/docs/).

### Security Questionnaires

The Quality department collaborates with the [Security department's compliance team](/handbook/security/#security-compliance) to handle requests from customers and prospects.

The Risk and Field Security team maintains the current state of answers to these questions, please follow the process to [request completion of assessment questionnaire](/handbook/security/security-assurance/field-security/customer-security-assessment-process.html).

If additional input is needed from the Quality team, the DRI for this is the Director of Quality. Tracking of supplemental requests will be via a confidential issue in the [compliance issue tracker](https://gitlab.com/gitlab-com/gl-security/security-assurance/sec-compliance/compliance). Once the additional inputs have been supplied, this is stored in the Compliance team's domain for efficiency.

## Department recurring event DRIs

| Recurring event | Primary DRI | Backup DRI | Cadence | Format |
| --------------- | ----------- | ---------- | ------- | ------ |
| Quality Key Review | `@meks` | `@vincywilson` | Every 8 weeks | Review meeting |
| Group conversation | `@meks` | `@at.ramya` <br>`@vincywilson` <br>`@vincywilson` | Every 8 weeks | [Group Conversations](#group-conversations) |
| [GitLab SaaS Infrastructure Weekly](/handbook/engineering/infrastructure/#gitlab-saas-infrastructure) | Rotates between @vincywilson` | `@vincywilson` | Weekly | Incident review and corrective action tracking |
| [Incident management](/handbook/engineering/infrastructure/incident-management/) | Rotates between `@at.ramya`, and `@vincywilson` | All managers | Weekly | Incident monitoring, response, and management as needed to represent Quality |
| [Reference Architectures](/handbook/engineering/infrastructure/test-platform/self-managed-excellence/#reference-architectures) | `@ksvoboda` | `@vincywilson` | Every 2 weeks | Sync stand-up |
| [Bug refinement](/handbook/engineering/quality/#bug-refinement) | Rotates between `@at.ramya` <br>`@vincywilson` | Weekly | Review meeting |
| Security Vulnerability review | `@meks` | `TBD` | Every 4 weeks | Review meeting |
| Quality Department Staff Meeting | `@meks` | `TBD` | Weekly | Review meeting |
| Quality Department Bi-Weekly | Department management team | `@meks` | Every 2 weeks | Review meeting |
| Quality Department Social Call | All team members | All team members | Every 2 weeks | Meet and Greet |
| Quality Hiring Bi-Weekly | All QEMs, Directors, and VP | `TBD` | Every 2 weeks | Review meeting |
| Ops section stakeholder review | `TBD` | `@dcroft` | Every 4 weeks | Review meeting |
| Enablement Sync with AppSec | `@vincywilson` | `TBD` | Monthly | Review meeting |

## Quality Engineering initiatives

### Triage Efficiency

Due to the volume of issues, one team cannot handle the triage process.
We have invented [Triage Reports](/handbook/engineering/infrastructure/engineering-productivity/triage-operations/#triage-reports) to scale the triage process within Engineering horizontally.

More on our [Triage Operations](/handbook/engineering/infrastructure/engineering-productivity/triage-operations/)

### Test Automation Framework

The GitLab test automation framework is distributed across two projects:

- [GitLab QA], the test orchestration tool.
- The scenarios and spec files within the GitLab codebase under `/qa` in [GitLab].

#### Installation and execution

- Install and set up the [GitLab Development Kit](https://gitlab.com/gitlab-org/gitlab-development-kit)
- Install and run [GitLab QA] to kick off test execution.
    - The spec files (test cases) can be found in the [GitLab codebase](https://gitlab.com/gitlab-org/gitlab/tree/master/qa)

### Test results tracking

Technical details about our test results tracking can be found in the [Test results tracking](https://docs.gitlab.com/ee/development/testing_guide/test_results_tracking.html) page.

#### Individual test tracking

- Within an E2E test file, each test is associated with one [GitLab testcase](https://gitlab.com/gitlab-org/gitlab/-/quality/test_cases).

```ruby
RSpec.describe 'Stage' do
  describe 'General description of the feature under test' do
    it 'test name', testcase: 'https://gitlab.com/gitlab-org/gitlab/-/quality/test_cases/:test_case_id' do
      ...
    end

    it 'another test', testcase: 'https://gitlab.com/gitlab-org/gitlab/-/quality/test_cases/:another_test_case_id' do
      ...
    end
  end
end
```

  The test failure stack trace and the issue stack trace are compared, and the existing issue for which the stack trace is the most similar (under a 15% difference threshold) to the test failure is used.
  The test failure job is then added to the failure report list in the issue.
  Group label is automatically inferred based on the `product_group` metadata of the test.

#### Test session tracking

For each end-to-end pipeline that runs in the various environments we automatically test, we create a [test session issue](https://gitlab.com/gitlab-org/quality/testcase-sessions/-/issues) that contains the test session information.

Test session issues group test results by DevOps stages, and link to [test cases](https://gitlab.com/gitlab-org/gitlab/-/quality/test_cases), and [test failure issues](https://gitlab.com/gitlab-org/gitlab/-/issues/?label_name%5B%5D=QA).

Example of a test session issue: <https://gitlab.com/gitlab-org/quality/testcase-sessions/-/issues/72516>

Test session issues are [working around missing GitLab feature](https://gitlab.com/groups/gitlab-org/-/epics/3129).

Once GitLab stores test data, we can improve failure reporting and management.

#### Documentation and videos

- [GitLab QA Documentation](https://gitlab.com/gitlab-org/gitlab-qa/blob/master/docs)
- [Architecture overview](https://gitlab.com/gitlab-org/gitlab-qa/blob/master/docs/architecture.md)
- [End-to-end testing at GitLab](https://docs.gitlab.com/ee/development/testing_guide/end_to_end/index.html)
- [What tests can be run with GitLab QA](https://gitlab.com/gitlab-org/gitlab-qa/-/blob/master/docs/what_tests_can_be_run.md)
- (Video) [GitLab Automated Test Suite Overview](https://youtu.be/r0ZicFxtfgI)
- (Video) [Orchestrated end-to-end tests at GitLab - Part 1](https://youtu.be/wWC7r3l0u1Y)
- (Video) [Orchestrated end-to-end tests at GitLab - Part 2](https://youtu.be/U8zCle_Up6I)
- (Video) [How to use GitLab QA to test a self-managed GitLab instance](https://youtu.be/VpT6fF6kO_U)
- (Video) [How to run an end-to-end test interactively (debugging)](https://youtu.be/SO2U8gpLSeM)

### Performance and Scalability

The Quality Department is committed to ensuring that self-managed customers have performant and scalable configurations.
To that end, we are focused on creating a variety of tested and certified [Reference Architectures]. Additionally, we
have developed the [GitLab Performance Tool], which provides several tools for measuring the performance of any GitLab
instance. We use the Tool every day to monitor for potential performance degradations, and this tool can also be used
by GitLab customers to directly test their on-premise instances. More information is available on our
[Performance and Scalability](/handbook/engineering/quality/performance-and-scalability/) page.

### Demo and Test Data

Whether automatically generating production-like data, test data, or [data to be used for a demo](https://gitlab.com/gitlab-learn-labs/webinars/project-management/gitlab-project-management-data-import); the Data Seeder can be used to generate this data.

See the [GitLab Data Seeder](/handbook/engineering/quality/gitlab-data-seeder) documentation for more information.

## Other related pages

- [Issue Triage Policies](/handbook/engineering/infrastructure/engineering-productivity/issue-triage/)
- [Performance of GitLab](/handbook/engineering/performance/)
- [Monitoring of GitLab.com](/handbook/engineering/monitoring/)
- [Production Readiness Guide](https://gitlab.com/gitlab-com/infrastructure/blob/master/.gitlab/issue_templates/production_readiness.md)

[GitLab QA]: https://gitlab.com/gitlab-org/gitlab-qa
[GitLab Insights]: https://gitlab.com/gitlab-org/gitlab-insights
[GitLab Performance Tool]: https://gitlab.com/gitlab-org/quality/performance
[GitLab Triage]: https://gitlab.com/gitlab-org/gitlab-triage
[GitLab]: https://gitlab.com/gitlab-org/gitlab
[Reference Architectures]: https://docs.gitlab.com/ee/administration/reference_architectures/index.html
