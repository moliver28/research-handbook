---
title: Round Robin
description: Support Operations documentation page for our ticket round robin
canonical_path: "/handbook/support/readiness/operations/docs/zendesk/round_robin"
---

## How is it triggered

The round robin, only used for Zendesk US Government, runs via
[gitLab Scheduled pipelines](https://docs.gitlab.com/ee/ci/pipelines/schedules.html)
using a specific schedule for each Zendesk instance:

- Global: Every 10 minutes of every hour of every day (`*/10 * * * *`)
- US Government: Every 10 minutes between the hours 0500 to 1200 (Pacific time)
  Monday through Friday (`*/10 5-12 * * 1-5`)

## How it works

### Zendesk US Government

- Ruby version: 3.2.2
- Gems used:
  - [activesupport](https://rubygems.org/gems/activesupport)
  - [faraday_middleware](https://rubygems.org/gems/faraday_middleware)
  - [google-apis-calendar_v3](https://rubygems.org/gems/google-apis-calendar_v3)
  - [json](https://rubygems.org/gems/json)
  - [oj](https://rubygems.org/gems/oj)
  - [yaml](https://rubygems.org/gems/yaml)
- CI/CD image: `ruby:3.2.2`

Before each job runs, it performs a few actions to setup the image to perform
the needed actions:

- Output the response from running the command `ruby -v`
- Install the `bundler` gem
- Run the `bundle` command
- Put the values of the environment variable `SERVICE_CREDS` into the file
  `data/config.json`

After this, the `./bin/run` script is executed, which simply requires the script
files and runs the function `RoundRobin::Zendesk.run!`.

The script will then determine the current workloads of all agents that are part
of the round robin assignment used by US Government. This is done by first
determining the list of available agents.

To determine the list of available agents, the script will parse the file
`data/agents.yaml`. It will then gather the list of people on PTO at the current
time of the scripts run. Using this, it will remove agents from the list of
agents obtained when paring the `data/agents.yaml` file who are currently listed
as being on PTO.

Using this list of available agents, the script will then gather the current
workload of each agent, which is defined by reviewing the list of assigned
tickets to said agent that are currently have a status less than `solved`.

For each ticket found in this way, the ticket's `Ticket Weight` field is used to
determine the current total workload of said agent:

- In cases where the ticket is using the emergency form and has no
  `Ticket Weight` value, the assumed value is 5
- In cases where the ticket has no `Ticket Weight` value and is not using the
  emergency form, the assumed value is 1

Using the sum of all these values, the agent's workload value is calculated.

With that stored in memory, the script will then gather the list of tickets
currently awaiting assignment by fetching the tickets currently within the
[Not round robined view](https://gitlab-federal-support.zendesk.com/agent/filters/360240736651).

With that list in hand, the script determines who each ticket will be assigned to.
This is done by locating the lowest workload on all available agents, creating
an update object using that information (which is stored in memory), and
incrementing the agent's workload value by 1 (the default ticket weight for a
new ticket).

After processing all those, bulk updates are made via the Zendesk API for the
Zendesk instance to update the tickets.

## Source projects

- [Zendesk US Government](https://gitlab.com/gitlab-support-readiness/zendesk-us-government/tickets/round-robin)
