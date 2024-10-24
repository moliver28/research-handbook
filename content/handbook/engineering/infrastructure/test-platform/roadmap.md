---
title: "Test Platform Roadmap"
description: "Roadmap for the Test Platform Sub-Department at GitLab"
---

The Test Platform sub-department roadmap is divided into multiple **[Tracks](#tracks)**.

* Each [track](#tracks) consists of smaller epics or issues.
* Each [track](#tracks) captures the type of work grouped by a theme. Each theme is broken down into categories and phases so they can be worked on in iterations and put on a delivery timeline.
* Each [Track](#tracks) maps directly to a track level epic. [They are labeled with "~Quality" and ending with "track"](https://gitlab.com/groups/gitlab-org/-/epics?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Quality&search=%22track%22)

Whole department roadmap view of all [tracks](#tracks).

* An umbrella epic [Test Platform sub-department Roadmap](https://gitlab.com/groups/gitlab-org/-/epics/1543) shows the timeline of everything.
* This epic is static and should not be edited. It is designed to only contain track level epics.

## Roadmap Management

**Linking epics**

* The [track](#tracks) level epics and the [Test Platform sub-department Roadmap](https://gitlab.com/groups/gitlab-org/-/epics/1543) epic are the only epics allowed to have child epics.
* Each numbered list item in the roadmap should be a link either to an epic or an issue. They should be added to one of the [track](#tracks) level epics.
* Child epics that form a [track](#tracks) should only have issues.
* Epic structure:
  1. Department roadmap.
  1. Tracks.
  1. Everything else.

**Creating new epics**

* In the spirit of keeping things easily discoverable and reducing unnecessary epics, please refrain from creating new epics unless there are 5 or more issues created/scoped for that new epic.
* Please refrain from creating new [tracks](#tracks) level epics unless it is really nessessary.

## Tracks

## Coverage track (roadmap view)

[Coverage track](https://gitlab.com/groups/gitlab-org/-/epics/1459) ([roadmap view](https://gitlab.com/groups/gitlab-org/-/epics/1459#roadmap))

Work to improve the overall test coverage.

### Testcase Management

A testcase management system to document all E2E tests and their types, and link to test reports.

1. Basic [Google spreadsheet](https://docs.google.com/spreadsheets/d/1RlLfXGboJmNVIPP9jgFV5sXIACGfdcFq1tKd7xnlb74/edit) to plan type of meta data. => Done
1. Use GitLab issues as testcase management using [gitlab-org/quality/testcases](https://gitlab.com/gitlab-org/quality/testcases) project.
1. Integration testcases in [gitlab-org/quality/testcases](https://gitlab.com/gitlab-org/quality/testcases) with automated tests. Rspec reporter that references testcase from code so they can be updated/synced dynamically.
1. Testcase Management as GitLab Native feature. [Epic](https://gitlab.com/groups/gitlab-org/-/epics/617)

### Cross-browser tests

Issues: [Crossbrowser & Mobile Browser testing coverage and infrastructure](https://gitlab.com/gitlab-org/quality/team-tasks/issues/45)

1. [Basic capability to run on other browsers besides chrome (IE11, Firefox)](https://gitlab.com/groups/gitlab-org/-/epics/609).
1. Internet Explorer, and Edge coverage.
1. Other desktop browsers.
1. Mobile browser coverage.
1. Run smoke test on soon to be new stable versions of important browsers to detect issues early.

### Ecosystem tests

Epic: [QA: GitLab 3rd party ecosystem testing](https://gitlab.com/groups/gitlab-org/-/epics/661)

1. Basic tests for LDAP and SAML.
1. Github and Google OAuth tests.
1. Jenkins and Jira integration tests.

### Visual-diff tests

Browser screenshot visual testing to catch visual bugs. Helps with validating layout, UX, and accessibility.

Issue: [End-to-end visual regression validation](https://gitlab.com/gitlab-org/quality/team-tasks/issues/47).

1. Lean on 3rd party tools to get something running fast and learn from the product.
1. Basic pixel to pixel comparison implemented as part of GitLab.
1. Visual coverage smoke test for all stage groups.
1. Use visual diff as a GitLab Native feature.

### Performance tests

1. Basic functional tests that creates a big issue and merge request. => Done
1. First stress test environment for on-prem customers with test runs and monitoring. => Done
1. Real 10,000 user reference architecture with customer reference traffic load testing.

### Security tests

1. XSS functional tests.

### Mutation tests

Issue: [Mutation tests](https://gitlab.com/gitlab-org/quality/team-tasks/issues/139)

1. Implement a POC for the ruby and JavaScript code to gather data
1. Data analysis and action items
1. Depends on the above

### Test planning

Test planning process.

1. Roll out testplan format and planning process.
1. Bake in test planning as part of feature planning process.
1. Iterate and come up with a shorter version of the [10 min ACC framework](https://testing.googleblog.com/2011/09/10-minute-test-plan.html).

## Efficiency track (roadmap view)

[Efficiency track](https://gitlab.com/groups/gitlab-org/-/epics/1460) ([roadmap view](https://gitlab.com/groups/gitlab-org/-/epics/1460#roadmap))

Work that increases our efficiency and productivity.

### Fault Tolerance

1. Test retry.
1. Dynamic Page Object locators validation.
1. API client automatically retries on 5xx errors.

### Faster Execution

Running test faster.

1. Basic parallelization via runners.
1. Parallelization at the process level for all E2E tests, exponential cost saving of CI runners.
1. Run all tests at the same time, the whole suite takes only as long as the longest test.
1. Evaluation of a subset of tests instead of running all the E2E tests depending on what changed.

   * Investigate the use of [running jobs when there are changes for a given path](https://gitlab.com/gitlab-org/gitlab-ce/issues/19232) for GitLab QA jobs.

### API Usage

Use API in all E2E tests. Achieve optimal test layering with API suite more than %60 of total tests.

1. [Use API calls to build the most used resources (Group, Project, User) in tests that are not focused on testing these resources behaviors](https://gitlab.com/gitlab-org/gitlab-ce/merge_requests/21302). => Done
1. Use API calls in login and logout for smoke tests.
1. Implement API fabrication for all the resources that support it.
1. Use API calls for setting up all resources in every E2E tests. Roll out as a standard for every new test.

### Lean pyramid

Optimize test coverage across the layers of the test pyramid, to remove redundant tests and achieve higher coverage with greater efficiency.

* **Phase 1**: TBD

### Test data

Come up with standardized test data that can be seeded in all environments for productivity.

1. Test data curation, define a test datamodel which is static.
Define better project structure for ease of debugging, more readability in automated test data output, better group, project and issue naming (not just using timestamps).
1. Script to setup testdata and clean them up.

   * Idempotent script based on API calls (E.g. adds project if missing, uses existing if exists).

1. Setup 50% of planned test data from Phase 2 in [GDK](https://gitlab.com/gitlab-org/gitlab-development-kit), Review Apps, Staging and Canary/Production.
1. Setup 100% of planned test data from Phase 2 in [GDK](https://gitlab.com/gitlab-org/gitlab-development-kit), Review Apps, Staging and Canary/Production.

### Test results

Work that will allow us to debug tests more easily. Includes better reporting and more informative artifacts.

1. Better readability in test output.
1. Basic HTML reporting.
1. Automated reporting into the Testcase management system.
1. Automated test name update via linking of issue ID in test code.

### Test readability

1. Standard Page Object method names for click navigation.
1. TBD

## Triage track (roadmap view)

[Triage track](https://gitlab.com/groups/gitlab-org/-/epics/1461) ([roadmap view](https://gitlab.com/groups/gitlab-org/-/epics/1461#roadmap))

Work that will help us triage issues and merge requests more efficiently.

### Triage reports

1. Team level triage reports. => Done
1. Group level triage reports. => Done
1. Summary report in group reports showing the amount of bugs for that group. Divide up into quadrants of severity and priority (S/P) labels [Generate 5x5 grid heat map report on existing open bugs for all group triage reports](https://gitlab.com/gitlab-org/quality/triage-ops/issues/166). => Done
1. Bug SLA summary report in group reports. [New issue first triage SLA](https://gitlab.com/gitlab-org/quality/team-tasks/issues/136)

### Refinement

1. Basic reminder for issues and merge requests. => Done

   * Merge requests that are open for a long time
   * Merge requests that do not have appropriate stage, group, and type labels.
   * Issues that are open for a long time (3 months / 6 months).
   * Merge requests that do not have any labels or milestones.

1. Enforce one team label per merge request.
1. Automatically infer stage and group label from category labels
1. Automatically infer team label from author.
1. Automatic labelling via [natural language processing](https://en.wikipedia.org/wiki/Natural_language_processing) of issue description.

   * Investigate integrating [https://gitlab.com/tromika/gitlab-issues-label-classification](https://gitlab.com/tromika/gitlab-issues-label-classification) with GitLab Insights.

## Measure track (roadmap view)

[Measure track](https://gitlab.com/groups/gitlab-org/-/epics/1462) ([roadmap view](https://gitlab.com/groups/gitlab-org/-/epics/1462#roadmap))

Work involving metrics that will allow us to make good data-driven decisions and report them to stakeholders early.

### Insights

1. GitLab Insights prototype with initial metrics. => Done.
1. Migrate GitLab Insights into GitLab. => Done.

### Bug metrics

1. Overall creation rate of bugs. => Done.
1. Creation rate of bugs displayed in each group stage's dashboard.
1. [On-prem customer incidents per month](https://gitlab.com/gitlab-org/quality/team-tasks/issues/135)

### SLA metrics

1. Mean time to resolve `priority::1` and `priority::2` defects.
1. New issue first triage

## Releases track (roadmap view)

[Releases track](https://gitlab.com/groups/gitlab-org/-/epics/1463) ([roadmap view](https://gitlab.com/groups/gitlab-org/-/epics/1463#roadmap))

Work that helps in validating the release process.

### Scheduling

1. Milestone refinement introduction [When a milestone ends, close expired milestone and bulk reschedule unfinished work (Issues& MRs) to the next milestone](https://gitlab.com/gitlab-com/www-gitlab-com/issues/3555) => Done
1. [Next iteration of closing milestones and moving issues and MRs to the next milestone](https://gitlab.com/gitlab-com/www-gitlab-com/issues/4593)

### Review apps

1. [Improve review apps reliability](https://gitlab.com/groups/gitlab-org/-/epics/605)
1. Make review app a mandatory testing gate with smoke tests.
1. Shift QA tests to completely run against review apps, only orchestrated test run in the test-on-omnibus job.
1. [Improve review apps usefulness, add testdata into review apps to ease testability](https://gitlab.com/groups/gitlab-org/-/epics/606).
