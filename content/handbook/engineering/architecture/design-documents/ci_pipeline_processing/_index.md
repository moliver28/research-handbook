---
title: "Future of CI Pipeline Processing"
status: proposed
creation-date: "2023-05-15"
authors: [ "@furkanayhan" ]
coach: "@ayufan"
approvers: [ "@jreporter", "@cheryl.li" ]
owning-stage: "~devops::verify"
participating-stages: []
toc_hide: true
---

{{< design-document-header >}}

## Summary

GitLab CI is one of the oldest and most complex features in GitLab.
Over the years its YAML syntax has considerably grown in size and complexity.
In order to keep the syntax highly stable over the years, we have primarily been making additive changes
on top of the existing design and patterns.
Our user base has grown exponentially over the past years. With that, the need to support
their use cases and customization of the workflows.

While delivering huge value over the years, the various additive changes to the syntax have also caused
some surprising behaviors in the pipeline processing logic.
Some keywords accumulated a number of responsibilities, and some ambiguous overlaps were discovered among
keywords and subtle differences in behavior were introduced over time.
The current implementation and YAML syntax also make it challenging to implement new features.

In this design document, we will discuss the problems and propose
a new architecture for pipeline processing. Most of these problems have been discussed before in the
["Restructure CI job when keyword"](https://gitlab.com/groups/gitlab-org/-/epics/6788) epic.

## Goals

- We want to make the pipeline processing more understandable, predictable and consistent.
- We want to unify the behaviors of DAG and STAGE. STAGE can be written as DAG and vice versa.
- We want to decouple the manual jobs' blocking behavior from the `allow_failure` keyword.
- We want to clarify the responsibilities of the `when` keyword.

## Non-Goals

We will not discuss how to avoid breaking changes for now.

## Motivation

The list of problems is the main motivation for this design document.

### Problem 1: The responsibility of the `when` keyword

Right now, the [`when`](https://docs.gitlab.com/ee/ci/yaml/index.html#when) keyword has many responsibilities;

> - `on_success` (default): Run the job only when no jobs in earlier stages fail or have `allow_failure: true`.
> - `on_failure`: Run the job only when at least one job in an earlier stage fails. A job in an earlier stage
>   with `allow_failure: true` is always considered successful.
> - `never`: Don't run the job regardless of the status of jobs in earlier stages.
>   Can only be used in a [`rules`](https://docs.gitlab.com/ee/ci/yaml/index.html#rules) section or `workflow: rules`.
> - `always`: Run the job regardless of the status of jobs in earlier stages. Can also be used in `workflow:rules`.
> - `manual`: Run the job only when [triggered manually](https://docs.gitlab.com/ee/ci/jobs/job_control.html#create-a-job-that-must-be-run-manually).
> - `delayed`: [Delay the execution of a job](https://docs.gitlab.com/ee/ci/jobs/job_control.html#run-a-job-after-a-delay)
>   for a specified duration.

It answers three questions;

- What's required to run? => `on_success`, `on_failure`, `always`
- How to run? => `manual`, `delayed`
- Add to the pipeline? => `never`

As a result, for example; we cannot create a `manual` job with `when: on_failure`.
This can be useful when persona wants to create a job that is only available on failure, but needs to be manually played.
For example; publishing failures to dedicated page or dedicated external service.

### Problem 2: Abuse of the `allow_failure` keyword

We control the blocker behavior of a manual job by the [`allow_failure`](https://docs.gitlab.com/ee/ci/yaml/index.html#allow_failure) keyword.
Actually, it has other responsibilities; _"determine whether a pipeline should continue running when a job fails"_.

Currently, a [manual job](https://docs.gitlab.com/ee/ci/jobs/job_control.html#create-a-job-that-must-be-run-manually);

- is not a blocker when it has `allow_failure: true` (by default)
- a blocker when it has `allow_failure: false`.

As a result, for example; we cannot create a `manual` job that is `allow_failure: false` and not a blocker.

```yaml
job1:
  stage: test
  when: manual
  allow_failure: true # default
  script: exit 0

job2:
  stage: deploy
  script: exit 0
```

![Problem 2 Example 1](/images/handbook/engineering/architecture/design-documents/ci_pipeline_processing/problem-2-example-1.png)

Currently;

- `job1` is skipped.
- `job2` runs because `job1` is ignored since it has `allow_failure: true`.
- When we run/play `job1`;
  - if it fails, it's marked as "success with warning".

#### `allow_failure` with `rules`

`allow_failure` becomes more confusing when using `rules`.

From [docs](https://docs.gitlab.com/ee/ci/yaml/index.html#when):

> The default behavior of `allow_failure` changes to true with `when: manual`.
> However, if you use `when: manual` with `rules`, `allow_failure` defaults to `false`.

From [docs](https://docs.gitlab.com/ee/ci/yaml/index.html#allow_failure):

> The default value for `allow_failure` is:
>
> - `true` for manual jobs.
> - `false` for jobs that use `when: manual` inside `rules`.
> - `false` in all other cases.

For example;

```yaml
job1:
  stage: build
  script: ls
  when: manual

next_job1:
  stage: test
  script: exit 0

job2:
  stage: test
  script: ls
  rules:
    - if: $ALWAYS_TRUE != "asdsad"
      when: manual

next_job2:
  stage: deploy
  script: exit 0
```

![Problem 2 Example 2](/images/handbook/engineering/architecture/design-documents/ci_pipeline_processing/problem-2-example-2.png)

`job1` and `job2` behave differently;

- `job1` is not a blocker because it has `allow_failure: true` by default.
- `job2` is a blocker `rules: when: manual` does not return `allow_failure: true` by default.

### Problem 3: Different behaviors in DAG/needs

The main behavioral difference between DAG and STAGE is about the "skipped" and "ignored" states.

**Background information:**

- skipped:
  - When a job is `when: on_success` and its previous status is failed, it's skipped.
  - When a job is `when: on_failure` and its previous status is not "failed", it's skipped.
- ignored:
  - When a job is `when: manual` with `allow_failure: true`, it's ignored.

**Problem:**

The `skipped` and `ignored` states are considered successful in the STAGE processing but not in the DAG processing.

#### Problem 3.1. Handling of ignored status with manual jobs

**Example 1:**

```yaml
build:
  stage: build
  script: exit 0
  when: manual
  allow_failure: true # by default

test:
  stage: test
  script: exit 0
  needs: [build]
```

![Problem 3-1 Example 1](/images/handbook/engineering/architecture/design-documents/ci_pipeline_processing/problem-3-1-example-1.png)

- `build` is ignored (skipped) because it's `when: manual` with `allow_failure: true`.
- `test` is skipped because "ignored" is not a successful state in the DAG processing.

**Example 2:**

```yaml
build:
  stage: build
  script: exit 0
  when: manual
  allow_failure: true # by default

test:
  stage: test
  script: exit 0
```

![Problem 3-1 Example 2](/images/handbook/engineering/architecture/design-documents/ci_pipeline_processing/problem-3-1-example-2.png)

- `build` is ignored (skipped) because it's `when: manual` with `allow_failure: true`.
- `test2` runs and succeeds.

#### Problem 3.2. Handling of skipped status with when: on_failure

**Example 1:**

```yaml
build_job:
  stage: build
  script: exit 1

test_job:
  stage: test
  script: exit 0

rollback_job:
  stage: deploy
  needs: [build_job, test_job]
  script: exit 0
  when: on_failure
```

![Problem 3-2 Example 1](/images/handbook/engineering/architecture/design-documents/ci_pipeline_processing/problem-3-2-example-1.png)

- `build_job` runs and fails.
- `test_job` is skipped.
- Even though `rollback_job` is `when: on_failure` and there is a failed job, it is skipped because the `needs` list has a "skipped" job.

**Example 2:**

```yaml
build_job:
  stage: build
  script: exit 1

test_job:
  stage: test
  script: exit 0

rollback_job:
  stage: deploy
  script: exit 0
  when: on_failure
```

![Problem 3-2 Example 2](/images/handbook/engineering/architecture/design-documents/ci_pipeline_processing/problem-3-2-example-2.png)

- `build_job` runs and fails.
- `test_job` is skipped.
- `rollback_job` runs because there is a failed job before.

### Problem 4: The skipped and ignored states

Let's assume that we solved the problem 3 and the "skipped" and "ignored" states are not different in DAG and STAGE.
How should they behave in general? Are they successful or not? Should "skipped" and "ignored" be different?

- Skipped jobs are those that don't meet the conditions to run (`when: on_success` or `when: on_failure`).
- Ignored jobs typically refer to manual jobs that are not blocking the pipeline (`allow_failure: true`),
which are treated as if they didn't exist in the pipeline.

Let's examine some examples;

**Example 4.1. The ignored status with manual jobs**

```yaml
build:
  stage: build
  script: exit 0
  when: manual
  allow_failure: true # by default

test:
  stage: test
  script: exit 0
```

![Problem 4-1 Example 1](/images/handbook/engineering/architecture/design-documents/ci_pipeline_processing/problem-4-1-example-1.png)

- `build` is in the "manual" state but considered as "skipped" (ignored) for the pipeline processing.
- `test` runs because "skipped" is a successful state.

Alternatively;

```yaml
build1:
  stage: build
  script: exit 0
  when: manual
  allow_failure: true # by default

build2:
  stage: build
  script: exit 0

test:
  stage: test
  script: exit 0
```

![Problem 4-1 Example 2](/images/handbook/engineering/architecture/design-documents/ci_pipeline_processing/problem-4-1-example-2.png)

- `build1` is in the "manual" state but considered as "skipped" (ignored) for the pipeline processing.
- `build2` runs and succeeds.
- `test` runs because "success" + "skipped" is a successful state.

**Example 4.2. The skipped status with when: on_failure**

```yaml
build:
  stage: build
  script: exit 0
  when: on_failure

test:
  stage: test
  script: exit 0
```

![Problem 4-2 Example 1](/images/handbook/engineering/architecture/design-documents/ci_pipeline_processing/problem-4-2-example-1.png)

- `build` is skipped because it's `when: on_failure` and its previous status is not "failed".
- `test` runs because "skipped" is a successful state.

Alternatively;

```yaml
build1:
  stage: build
  script: exit 0
  when: on_failure

build2:
  stage: build
  script: exit 0

test:
  stage: test
  script: exit 0
```

![Problem 4-2 Example 2](/images/handbook/engineering/architecture/design-documents/ci_pipeline_processing/problem-4-2-example-2.png)

- `build1` is skipped because it's `when: on_failure` and its previous status is not "failed".
- `build2` runs and succeeds.
- `test` runs because "success" + "skipped" is a successful state.

### Problem 5: The `dependencies` keyword

The [`dependencies`](https://docs.gitlab.com/ee/ci/yaml/index.html#dependencies) keyword is used to define a list of jobs to fetch
[artifacts](https://docs.gitlab.com/ee/ci/yaml/index.html#artifacts) from. It is a shared responsibility with the `needs` keyword.
Moreover, they can be used together in the same job. We may not need to discuss all possible scenarios but this example
is enough to show the confusion;

```yaml
test2:
  script: exit 0
  dependencies: [test1]
  needs:
    - job: test1
      artifacts: false
```

### Information 1: Canceled jobs

Are a canceled job and a failed job the same? They have many differences so we could easily say "no".
However, they have one similarity; they can be "allowed to fail".

Let's define their differences first;

- A canceled job;
  - It is not a finished job.
  - Canceled is a user requested interruption of the job. The intent is to abort the job or stop pipeline processing as soon as possible.
  - We don't know the result, there is no artifacts, etc.
  - Since it's never run, the `after_script` is not run.
  - Its eventual state is "canceled" so no job can run after it.
    - There is no `when: on_canceled`.
    - Even `when: always` is not run.
- A failed job;
  - It is a machine response of the CI system to executing the job content. It indicates that execution failed for some reason.
  - It is equal answer of the system to success. The fact that something is failed is relative,
    and might be desired outcome of CI execution, like in when executing tests that some are failing.
  - We know the result and [there can be artifacts](https://docs.gitlab.com/ee/ci/yaml/index.html#artifactswhen).
  - `after_script` is run.
  - Its eventual state is "failed" so subsequent jobs can run depending on their `when` values.
    - `when: on_failure` and `when: always` are run.

**The one similarity is; they can be "allowed to fail".**

```yaml
build:
  stage: build
  script:
    - sleep 10
    - exit 1
  allow_failure: true

test:
  stage: test
  script: exit 0
  when: on_success # default
```

If `build` runs and gets `canceled`, then `test` runs.

![Information 1 Example 1-a](/images/handbook/engineering/architecture/design-documents/ci_pipeline_processing/information-1-example-1-a.png)

If `build` runs and gets `failed`, then `test` runs.

![Information 1 Example 1-b](/images/handbook/engineering/architecture/design-documents/ci_pipeline_processing/information-1-example-1-b.png)

#### An idea on using `canceled` instead of `failed` for some cases

There is another aspect. We often drop jobs with a `failure_reason` before they get executed,
for example when the namespace ran out of compute minutes or when limits are exceeded.
Dropping jobs in the `failed` state has been handy because we could communicate to the user the `failure_reason`
for better feedback. When canceling jobs for various reasons we don't have a way to indicate that.
We cancel jobs because the user ran out of Compute Credits while the pipeline was running,
or because the pipeline is auto-canceled by another pipeline or other reasons.
If we had a `stop_reason` instead of `failure_reason` we could use that for both cancelled and failed jobs
and we could also use the `canceled` status more appropriately.

### Information 2: Empty state

We [recently updated](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/117856) the documentation of
[the `when` keyword](https://docs.gitlab.com/ee/ci/yaml/index.html#when) for clarification;

> - `on_success`: Run the job only when no jobs in earlier stages fail or have `allow_failure: true`.
> - `on_failure`: Run the job only when at least one job in an earlier stage fails.

For example;

```yaml
test1:
  when: on_success
  script: exit 0
  # needs: [] would lead to the same result

test2:
  when: on_failure
  script: exit 0
  # needs: [] would lead to the same result
```

![Information 2 Example 1](/images/handbook/engineering/architecture/design-documents/ci_pipeline_processing/information-2-example-1.png)

- `test1` runs because there is no job failed in the previous stages.
- `test2` does not run because there is no job failed in the previous stages.

The `on_success` means that "nothing failed", it does not mean that everything succeeded.
The same goes to `on_failure`, it does not mean that everything failed, but does mean that "something failed".
This semantic goes by a expectation that your pipeline succeeds, and this is happy path.
Not that your pipeline fails, because then it requires user intervention to fix it.

## Expectations

All proposals or future decisions must follow these goals;

1. The `allow_failure` keyword must only responsible for marking **failed** jobs as "success with warning".
    - Why: It should not have another responsibility, such as determining a manual job is a blocker or not.
    - How: Another keyword will be introduced to control the blocker behavior of a manual job.
1. With `allow_failure`, **canceled** jobs must not be marked as "success with warning".
    - Why: "canceled" is a different state than "failed".
    - How: Canceled with `allow_failure: true` jobs will not be marked as "success with warning".
1. The `when` keyword must only answer the question "What's required to run?". And it must be the only source of truth
   for deciding if a job should run or not.
1. The `when` keyword must not control if a job is added to the pipeline or not.
    - Why: It is not its responsibility.
    - How: Another keyword will be introduced to control if a job is added to the pipeline or not.
1. The "skipped" and "ignored" states must be reconsidered.
    - The "skipped" status should not be considered a success. Jobs with `when: on_success` should **not** run after it.
    - The "ignored" status (for non-blocking manual jobs) should also not be considered a success. However,
      it is also **not** a failure. Jobs with `when: on_success` should run after it.
1. A new keyword structure must be introduced to specify if a job is an "automatic", "manual", or "delayed" job.
    - Why: It is not the responsibility of the `when` keyword.
    - How: A new keyword will be introduced to control the behavior of a job.
1. The `needs` keyword must only control the order of the jobs. It must not be used to control the behavior of the jobs
   or to decide if a job should run or not. The DAG and STAGE behaviors must be the same.
    - Why: It leads to different behaviors and confuses users.
    - How: The `needs` keyword will only define previous jobs, like stage does.
1. The `needs` and `dependencies` keywords must not be used together in the same job.
    - Why: It is confusing.
    - How: The `needs` and `dependencies` keywords will be mutually exclusive.

## Proposal

**Introduce new keyword structures for job execution types**

- A new keyword, `execution`, will be introduced to specify whether a job is `automatic`, `manual`, or `delayed`.
  - `automatic`: Runs without user intervention.
  - `manual`: Requires manual triggering.
  - `delayed`: Runs after a specified delay.
- This separates job behavior from the `when` keyword, allowing `execution` to clearly define how the job is triggered.

**Introduce a new keyword to control manual job blocking behavior**

- A keyword (`blocker`) will be added to define whether a manual job blocks the pipeline from proceeding.
- This will remove the dependency on `allow_failure` for controlling blocking behavior.
- For example, a job with `execution: manual` and `blocker: false` will not block the pipeline.

**Clarify the behavior of the `when` keyword**

- The `when` keyword will continue to decide **under what conditions a job should run**. It will not control job types or pipeline inclusion.
- The `when` keyword will only answer the question: _What is required for this job to run?_
  - For example: `when: on_success`, `when: on_failure`, `when: always`.

**New way to control pipeline inclusion**

- A new keyword (`included`) will be introduced to control whether a job is included in the pipeline.
- This keyword will be used to define whether a job should be added to the pipeline or not.
- For example, a job with `included: false` will not be added to the pipeline.

**Standardize handling of the "skipped" and "ignored" states**

- **Skipped jobs** will be treated as **unsuccessful** for pipeline flow decisions. Jobs with `when: on_success` will not run after a skipped job.
- **Ignored jobs** (non-blocking manual jobs) will be treated as **neutral** and will not prevent `when: on_success` jobs from running.

**Unify DAG and Stage behaviors**

- The `needs` keyword will only define job dependencies, and its behavior will be aligned with `stage` so that DAG and stage processing work consistently.
- Both DAG and stage workflows will treat "ignored" jobs as neutral and "skipped" jobs as unsuccessful.

**Make `needs` and `dependencies` mutually exclusive**

- The `needs` and `dependencies` keywords should not be used together, as they serve different purposes.
  The `needs` keyword controls job ordering, while `dependencies` fetches artifacts.
- The usage of both will be simplified to prevent confusion.

### Examples

```yaml
job1:
  execution: automatic # default, options: automatic, manual, delayed
  when: on_success # default, options: on_success, on_failure, always
  included: true # default, options: true, false
  script: exit 0 # success

job2:
  execution: manual
  blocker: false # default, options: true, false
  script: exit 0 # success

job3:
  execution: delayed
  delay: 1h
  script: exit 0 # success

job4:
  execution: manual
  blocker: true
  script: exit 0 # success

job5:
  script: exit 1 # failed

job6:
  script: exit 0 # success
  needs: [job5] # job5 is failed; job6 is skipped

job7:
  script: exit 0 # success
  needs: [job1, job2] # job1 is successful, job2 is ignored; job7 runs

job8:
  script: exit 0 # success
  needs: [job4] # job4 is blocked; job8 is "created"

job9:
  script: exit 0 # success
  needs: [job1, job6] # job1 is successful, job6 is skipped; job9 is skipped
```

## Design and implementation details

This will be determined after the proposal is approved.
Breaking changes, implementation details, and migration paths will be discussed in this phase.

## Feedback

Please share your feedback at [the feedback issue](https://gitlab.com/gitlab-org/gitlab/-/issues/420616).
