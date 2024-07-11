
---

title: "Secret Detection Metrics"
---


## Overview

This page documents the process used to add metrics to team projects.

## Metrics

For our use cases, we utilize Internal Tracking Events or Service Ping metrics
depending on the situation.

The Analytics Instrumentation team has great documentation
[here](https://docs.gitlab.com/ee/development/internal_analytics/internal_event_instrumentation/quick_start.html#quick-start-for-internal-event-tracking)
but we outline some of the learnings on implementing metrics for our use here.

### Internal Tracking Events

Internal Tracking Events capture discrete events and can be collected over 7 or
28 days or all time. These events require code changes to explicitly fire the
event.

```ruby
...

include Gitlab::InternalEventsTracking

...

track_internal_event(
  "create_ci_build",
  user: user,
  namespace: namespace,
  project: project
)

...
```

Each event has a descriptive name and, when possible, useful data for context like:
- user
- project
- namespace (which will be pulled from `project` if not supplied)

There's another field, `category` that is automatically set to the classname of
the class that the event was fired from. This is important to know for testing.

Each event can also have up to 3 additional data. Events support 2 string values, and 1 numeric.
These additional properties are stored in the `additional_properties` map in the
event and the keys are:
- `label` (string)
- `property` (string)
- `value` (numeric)
You should utilize them in that order when possible, i.e., `label` before
`property`.

#### Process for adding

You should follow the process Analytics Insturmentation has written in the above
linked docs.

TL;DR Run the `ruby scripts/internal_events/cli.rb` CLI tool and follow the
prompts. The event definition is necessary for the code to know what
events to output and the metric definition is what Snowflake and Tableau will
make available given the events.

#### Testing

There are shared examples that you can utilize to test firing of tracking
events:

```ruby
it_behaves_like 'internal event tracking' do
    let(:event) { "detect_secret_type_on_push" }
    let(:namespace) { project.namespace }
    let(:label) { "GitLab Personal Access Token" }
    let(:category) { described_class.name }

    ...
    subject
end

```

### Database Metric (Service Ping)

Database metrics, aka Service Pings, are metrics that can be collected with
database queries. These metrics are updated in a batch.

The batch of metrics is updated approximately every 7 days, but may vary
anywhere from 4-10 days.

#### Process for adding

Database metrics are not yet supported by the CLI so must be done by hand.

1. Create a yaml file in the appropriate subdirectory of `config/metrics` or `ee/config/metrics` if it's a metric
limited to an enterprise tier.
  - If the metric is meant to capture all time, use the `counts_all` subdirectory.
  - Otherwise use the appropriate `counts_7d` or `counts_28d` subdirectory for weekly and
monthly metrics respectively.
  - Use existing yaml files as templates
  - Use the schema defined [here](https://docs.gitlab.com/ee/development/internal_analytics/metrics/metrics_dictionary.html).
  - NOTE: Make sure that the milestone is a string

### Viewing and Analyzing

Metrics are collected into Snowflake which are then viewable in Tableau. Tableau
has a metrics explorer that shows the basic values and allows you see the last
5 values. Further analysis must be done either in Tableau or Snowflake.

With the `Explorer` role in Tableau, you will be able to create dashboards but
will be limited to using data sources created by someone with higher
permissions. Any new Internal Tracking Event or Database Metric should be
included in existing data sources
- `Mart Ping Instance Metric Monthly`
- `Mart Ping Instance Metric Weekly`
