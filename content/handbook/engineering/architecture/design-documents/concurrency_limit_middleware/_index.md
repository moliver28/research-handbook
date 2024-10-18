---
title: "Concurrency Limit Middleware"
status: ongoing
creation-date: "2024-10-18"
authors: [ "@dgruzd" ]
coaches: [ "@DylanGriffith" ]
dris: []
owning-stage: "~devops::data stores"
participating-stages: ["~devops::platforms"]
toc_hide: true
---

<!-- Design Documents often contain forward-looking statements -->

<!-- This renders the design document header on the detail page, so don't remove it-->
{{< design-document-header >}}

## Summary

The Concurrency Limit Middleware is a Sidekiq middleware designed to control the concurrency of specific Sidekiq workers.
By limiting the number of concurrent jobs a worker can execute, we prevent system overloads and ensure reliable operations across both
.com and self-managed instances.

## Overview

The middleware intercepts job scheduling and execution to enforce concurrency limits. When the number of concurrent jobs exceeds the defined limit,
additional jobs are deferred and stored in a separate Redis list. A dedicated cron worker, `ConcurrencyLimit::ResumeWorker`,
periodically checks and re-enqueues deferred jobs when the concurrency falls below the limit.

## How It Works

### Job Scheduling and Execution Flow

When a job is scheduled or executed, the middleware checks if the concurrency limit has been reached:

1. **Job Scheduling**:
   - If the limit is not reached, the job is scheduled as usual.
   - If the limit is reached, the job is deferred and added to a Redis list.

2. **Job Execution**:
   - If the limit is not reached, the job is executed.
   - If the limit is reached, the job is deferred and added to the Redis list.

### Resuming Deferred Jobs

The `ConcurrencyLimit::ResumeWorker` periodically:

1. Checks if there are deferred jobs.
2. Determines the number of jobs that can be re-enqueued based on the current concurrency.
3. Re-enqueues the allowed number of jobs.
4. Updates metrics and cleans up stale execution trackers.

### Flow Diagram

Below is a sequence diagram illustrating the middleware's operation:

```mermaid
sequenceDiagram
    participant Client
    participant Middleware
    participant Redis
    participant Worker
    participant ResumeWorker

    Client->>Middleware: Schedule Job
    Middleware->>Middleware: Check Concurrency Limit
    alt Limit Not Reached
        Middleware->>Worker: Enqueue Job
    else Limit Reached
        Middleware->>Redis: Add Job to Deferred List
    end

    Note over ResumeWorker: Periodically executes
    ResumeWorker->>Redis: Check Deferred Jobs
    alt Deferred Jobs Exist
        ResumeWorker->>Redis: Calculate Jobs to Resume
        ResumeWorker->>Worker: Re-enqueue Jobs
        ResumeWorker->>Redis: Remove Re-enqueued Jobs from List
    end
```

## Setting Up Concurrency Limits

In order to see how the concurrency limit can be configured please follow this [documentation section](https://docs.gitlab.com/ee/development/sidekiq/#concurrency-limit).

## Prometheus Metrics

The middleware exposes the following Prometheus metrics to monitor its operation:

- `sidekiq_concurrency_limit_deferred_jobs_total`: Total number of jobs deferred.
- `sidekiq_concurrency_limit_queue_jobs`: Current number of jobs in the deferred queue.
- `sidekiq_concurrency_limit_max_concurrent_jobs`: Maximum number of concurrent jobs allowed.

## Considerations

- **Sustained Overload**: If there is a sustained workload over the limit, the deferred job list will grow indefinitely until the workload decreases or the limit is adjusted.
- **Zero or Negative Limits**:
  - If the limit returns `nil` or `0`, the concurrency limit is not applied.
  - Negative values pause job execution entirely.

## Future iterations

This middleware could become even more useful if we introduce addtional features like
an ability to group workers or having separate limits for
namespace/project/user.

Allowing to group workers:

```ruby
class FirstLimitedWorker
  include ApplicationWorker

  concurrency_limit -> { Gitlab::CI.default_concurrency_limit }, key: :ci
  # ...
end
```

```ruby
class SecondLimitedWorker
  include ApplicationWorker

  concurrency_limit -> { Gitlab::CI.default_concurrency_limit }, key: :ci
  # ...
end
```

That way we can ensure that these workers share the same limit.

Another is the ability to specify limits for a set of arguments:

```ruby
concurrency_limit -> { 1000 },
                     args: {
                        group_by: ->(args) { args[0] # project_id }
                        limit: ->(args) { 100 }
                     }
```

This could be useful if we want to limit it per project or per user, or some
other combination of arguments.

We need to ensure that we always check these in the correct order:

1. Global limit (with or without the key)
1. Argument-based limiting

We'll probably need to process all queues with a specific prefix in `ConcurrencyLimit::ResumeWorker` as opposed to the current approach where
we use `Gitlab::SidekiqMiddleware::ConcurrencyLimit::WorkersMap.workers` as the
single source of truth. That allows customers (team members) to safely change
the parameters of the `concurrency_limit` without thinking about the deprecation
process.
