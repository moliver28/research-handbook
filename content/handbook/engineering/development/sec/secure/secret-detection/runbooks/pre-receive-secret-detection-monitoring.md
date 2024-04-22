---
title: "Pre-receive secret detection monitoring"
---

### When to use this runbook?

This runbook is intended to be used when monitoring the [pre-receive secret detection](https://docs.gitlab.com/ee/user/application_security/secret_detection/pre_receive.html) feature to identify and mitigate any reliability issues or performance regressions that may occur when it is enabled on Gitlab.com. The runbook can also be used to understand more about relevant dashboards and how to improve them:

* [Pre-receive Secret Detection – Overview Dashboard]()

### What to monitor?

While the feature, in its [current form](https://docs.gitlab.com/ee/architecture/blueprints/secret_detection/#high-level-architecture), doesn't have any external components and is entirely encapsulated within the application server as a dependency, it does interact with a number of components as can be seen in this [push event sequence diagram](https://docs.gitlab.com/ee/architecture/blueprints/secret_detection/#push-event-detection-flow). Those components are:

* Workhorse:
    * `git-receive-pack`
* Gitaly:
    * `PostReceivePack`
    * `PreReceiveHook`
    * `ListAllBlobs()` RPC
    * `ListBlobs()` RPC
    * `GetTreeEntries()` RPC
* Rails:
    * `/internal/allowed` Endpoint

_Note: `PreReceiveHook` is not to be confused with git's [pre-receive hook](https://git-scm.com/docs/githooks#pre-receive). In fact, it's a [binary wrapper](https://gitlab.com/gitlab-org/gitaly/-/tree/master/cmd/gitaly-hooks) around the actual git hook. Please read more about the [hook setup](https://gitlab.com/gitlab-org/gitaly/-/blob/master/doc/hooks.md#hook-setup) in Gitaly's documentation._

These components are therefore the main elements we are trying to focus on when monitoring the feature.

### How we monitor the feature?

As discussed above, the functionality spans a number of components. Therefore, are three main tools we could use for monitoring the feature:

* Kibana (Logs)
    * [Staging](https://nonprod-log.gitlab.net)
        * `pubsub-rails-inf-gstg`
        * `pubsub-gitaly-inf-gstg`
        * `pubsub-workhorse-inf-gstg`
    * [Production](https://log.gprd.gitlab.net)
        * `pubsub-rails-inf-gprd`
        * `pubsub-gitaly-inf-gprd`
        * `pubsub-workhorse-inf-gprd`
* Prometheus/Grafana (Metrics)
    * [Internal API](https://dashboards.gitlab.net/dashboards/f/internal-api/internal-api)
    * [Gitaly](https://dashboards.gitlab.net/dashboards/f/gitaly/gitaly-service)
* Sentry (Error Tracking)
    * [Gitlab.com](https://new-sentry.gitlab.net/organizations/gitlab/projects/gitlabcom)
    * [Gitaly](https://new-sentry.gitlab.net/organizations/gitlab/projects/gitaly)
    * [Workhorse](https://new-sentry.gitlab.net/organizations/gitlab/projects/workhorse-gprd)

This runbook focuses primarly on the Prometheus metrics available in Grafana, but also shares brief information about other tools and how they could be used. In later iterations, this may change as the feature grows and develops.

### How to identify and mitigate a reliability or performance issue with the feature?

The [overview dashboard]() is the main dashboard we have built to monitor the feature. That's where anyone should start to look when trying to identify reliability or performance issues.

The dashboard itself is split into 3 rows (or sections), with each containing a number of panels as below.

#### Workhorse

This is the first row.

#### Gitaly

This is the second row.

#### Rails

This is the third row.

### Where else to look for help?

If you're unsure, you can always ask for help in `#g_secure-secret-detection` channel.

### How to improve this runbook?

The runbook needs to be updated as the feature evolves and progresses.

### How to contribute to relevant dashboards?

Dashboards discussed in this runbook can be improved as follows.
