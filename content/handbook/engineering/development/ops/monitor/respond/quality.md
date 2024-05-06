---

title: Group Respond - GitLab End-to-End (E2E) Testing for group Respond
---








## Overview:

The goal of this page is to summarize how Respond group can use our existing
[GitLab QA framework](https://gitlab.com/gitlab-org/gitlab-qa) to run and/or implement
[E2E tests](https://gitlab.com/gitlab-org/gitlab/-/blob/58cd4dfd8f1d00c2c47bcbd91421775ca2f924a7/doc/development/testing_guide/end_to_end/index.md).

### Why do we have them?

[E2E testing](https://docs.gitlab.com/ee/development/testing_guide/testing_levels.html) is a strategy used
to check whether our application works as expected across the entire software stack and architecture. This includes the
integration of all micro-services, features and components that are supposed to work together to satisfy any
meaningful and complete user workflow.


### Where are they?

In the [GitLab repository](https://gitlab.com/gitlab-org/gitlab/qa). The E2E tests for this group can
be found or added at:
- `qa/qa/specs/features/api/8_monitor/`
- `qa/qa/specs/features/browser_ui/8_monitor/`
- `qa/qa/specs/features/ee/api/8_monitor/`
- `qa/qa/specs/features/ee/browser_ui/8_monitor/`

### Limitations

Currently we have 2
[orchestrated](https://gitlab.com/gitlab-org/gitlab-qa/-/blob/master/docs/what_tests_can_be_run.md#orchestrated-tests)
tests - [email_notification_for_alert_spec.rb](https://gitlab.com/gitlab-org/gitlab/-/blob/master/qa/qa/specs/features/browser_ui/8_monitor/alert_management/email_notification_for_alert_spec.rb),
and [alert_with_escalation_policy_spec.rb](https://gitlab.com/gitlab-org/gitlab/-/blob/master/qa/qa/specs/features/ee/browser_ui/8_monitor/alert_management/alert_with_escalation_policy_spec.rb).
These tests can only be run using `gitlab-qa` gem. This gem will launch a separate container for Mailhog and set
Omnibus config for GitLab instance to receive SMTP delivery from this container. The current issue is that docker
doesn't recognize the `hostname` set in the command when run locally, it always ended up using `0.0.0.0` for hostname, which is not
what the test expected - expected `gitlab-smtp.test`. The only place where this test can be executed appropriately is
in our CI (MR pipelines, and pipelines for E2E tests against master - see [#qa-master](https://gitlab.slack.com/archives/CNV2N29DM))

**Note:** Orchestrated tests are not run in dotcom(s) because we cannot control the configuration of these
environments.

## FAQ:

#### 1. How to run orchestrated test?

First you will need to install `gitlab-qa` gem. Navigate to `gitlab/qa/`. Depends on the scenario and if your test is
for an EE feature or not, but for the benefit of this group, we use `email_notification_for_alert_spec.rb` as example:

```
$ gitlab-qa Test::Integration::SMTP CE qa/specs/features/browser_ui/8_monitor/alert_management/email_notification_for_alert_spec.rb
```

Notice we need to specify the scenario this spec belongs to `::SMTP`, the type of GitLab license is `CE`. For other types
of scenario and license, see -
[What tests can be run?](https://gitlab.com/gitlab-org/gitlab-qa/-/blob/master/docs/what_tests_can_be_run.md#what-tests-can-be-run).
The entire process will happen inside docker containers. You won't be able to see browser session.

#### 2. How to run instance scenario test?

`::Instance` scenario are regular tests that don't need special setups. Basically just login as a user and do his things
against a GitLab instance type of tests. For these you can also use `gitlab-qa` but you don't have to. You will still need
to be in `gitlab/qa/` and run `$ bundle install` first. Then depends on which environment you want to run tests against:

**GDK**

```
$ QA_GITLAB_URL=http://<your.gdk.hostname>:3000 bundle exec rspec qa/specs/features/path/to/your/spec.rb
```

For more tips on other
cases or how to config your GDK, see
[Run QA tests against your GDK setup](https://gitlab.com/gitlab-org/gitlab-qa/-/blob/master/docs/run_qa_against_gdk.md)

**Staging or other dotcoms**

```
$ GITLAB_USERNAME="gitlab-qa" GITLAB_PASSWORD=<in 1password> GITLAB_QA_USER_AGENT=<in 1password> QA_GITLAB_URL=https://staging.gitlab.com bundle exec rspec qa/specs/features/path/to/your/spec.rb
```

This way you can `export WEBDRIVER_HEADLESS=false` prior to running test to see browser session. Chrome is used by default,
so you need to have chromedriver installed. If the test is quarantined, you will need to pass in `--tag quarantine` in
the command to ignore this metadata. For list of supported environment variables, see
[Supported GitLab environment variables](https://gitlab.com/gitlab-org/gitlab-qa/-/blob/master/docs/what_tests_can_be_run.md#supported-gitlab-environment-variables)

#### 3. I triggered the e2e:package-and-test job. Where do I find the tests?

If you have an MR and want to make sure it is running all the non-quarantined E2E tests to ensure no regression introduced
anywhere, please trigger the manual `e2e:package-and-test` job under `qa` stage of the pipeline of your MR. After
the pipeline runs there will be a comment on your MR says "Allure report" with a test report link to show which test
example failed and their failure stacktrace. It is also possible to see which jobs failed in the `e2e:package-and-test`
pipeline directly. All test jobs will produce artifacts from test execution (logs, screenshots etc...).

**For example:** In this [MR](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/110829), `e2e:package-and-test` was run and triggered
a [downstream pipeline](https://gitlab.com/gitlab-org/gitlab/-/pipelines/767219117) that runs all E2E tests. You want to
inspect why [ee:instance-parallel 3/5](https://gitlab.com/gitlab-org/gitlab/-/jobs/3714070554) failed:
- First, check the the job log. It contains stacktrace that can be helpful for investigation.
- Or in the job's artifacts, under `gitlab-qa-run-*/gitlab-ee-qa-*/qa-test-*/`,  you will find screenshots of where
the test failed at during execution.

However, in non-dotcom env pipelines, we don't organize tests to be run in the same job if they are from the same
product group. We run them by [scenarios](https://gitlab.com/gitlab-org/gitlab-qa/blob/master/docs/what_tests_can_be_run.md) .
Therefore, to predict where your tests might be, first you need to know which scenario this test belongs to. Most tests belong
`Test::Instance` where no special setups needed, these can be found under all of the **parallel** job groups unless
specifically exclude with
[:except](https://docs.gitlab.com/ee/development/testing_guide/end_to_end/rspec_metadata_tests.html) metadata.

**Note:** Some tests that are tagged with `:smoke` metadata are already automatically run in
review-app pipeline - that is automatically triggered under `review` stage of your MR pipeline -
[Example review-app downstream pipeline](https://gitlab.com/gitlab-org/gitlab/-/pipelines/767219112).
These tests are considered blocking if they fail.

#### 4. How can I find tests results for staging or any other dotcom(s)?

Similar to test pipelines against master or nightly. There are dedicated slack channels that can direct you to the test
pipelines for that specific environment:

* Staging, staging-cananry, customers-dot: [#qa-staging](https://gitlab.slack.com/archives/CBS3YKMGD)
* Production, canary: [#qa-production](https://gitlab.slack.com/archives/CCNNKFP8B)
* Preprod: [#qa-preprod](https://gitlab.slack.com/archives/CR7QH0RV1)
* Release: [#qa-release](https://gitlab.slack.com/archives/C0154HCFLRE)
* Staging-ref: [#qa-staging-ref](https://gitlab.slack.com/archives/C02JGFF2EAZ)
* Master: [#qa-master](https://gitlab.slack.com/archives/CNV2N29DM)
* Nightly: [#qa-nightly](https://gitlab.slack.com/archives/CGLMP1G7M)

These pipelines' configuration can be found in [pipeline-common](https://gitlab.com/gitlab-org/quality/pipeline-common)
project.

Good news is on dotcom(s), group Respond tests are run in jobs specifically for them:

* `ee-qa-api` - if we have any API test added in the future, this includes API tests from other groups too but we don't
have a lot of these anyways, it shouldn't be too difficult to track
* `qa-browser_ui-8_monitor`
* `ee-qa-browser_ui-8_monitor` - this job will need to be defined when we have any non-orchestrated browser test for EE added in the future.

#### 5. How to find test resources (project, group, user, etc...) for investigation?

In non-dotcom pipelines, unfortunately all resources are wiped out when the docker container that hosted GitLab instance
for the pipeline got destroyed. Our only hopes are job logs, screenshots or maybe reproduce locally.
On dotcoms, we run test using `gitlab-qa` user. His login creds can be found in 1password **GitLab-QA** vault. The job
logs will have links to groups and/or projects that were created by the test or information for other resources
that can help with the search as well. Worry not, we have a mechanism in place that will only immediately delete resources
from passing tests. The ones that were created by a failing test will be retained until the Saturday of that week.
So you should have enough time to investigate what went wrong.

#### 6. What to do if I can't understand what I see?

Please reach out to [your counterpart SET](/handbook/engineering/quality/#individual-contributors)
or in the [#quality](https://gitlab.slack.com/archives/C3JJET4Q6) channel. Someone will gladly offer help!

### Helpful Documentation

- [Testing Guide - End-to-End Testing](https://docs.gitlab.com/ee/development/testing_guide/end_to_end/)
- [GitLab QA orchestration tool](https://gitlab.com/gitlab-org/gitlab-qa)
- [Run QA tests against your GDK setup](https://gitlab.com/gitlab-org/gitlab-qa/-/blob/master/docs/run_qa_against_gdk.md)
- [Beginner's Guide to writing End-to-End tests](https://docs.gitlab.com/ee/development/testing_guide/end_to_end/beginners_guide.html)

<h3 style="text-align: center;">Happy testing!!</h3>