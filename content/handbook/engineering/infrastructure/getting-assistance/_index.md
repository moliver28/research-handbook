---
title: "Getting Assistance on SaaS Platforms"
description: "How to get assistance for problems on Production Platforms"
---

## GitLab.com

If you need to report an incident - follow the instructions on the [Report An Incident page](./incident-management/#reporting-an-incident).

If you are looking for help, and you know what service you need help with - find the owner in the [tech stack](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml). Check below to see if the team has a specific issue template or tracker for the help you seek or contact them via Slack.

If you need help, but you aren't sure who to ask, look through the teams below to see which team is the best fit for your question.

If you have read this whole page and are unsure how to proceed, please ask in the [#saas-platforms-help](https://gitlab.enterprise.slack.com/archives/C07DU5Z7V6V) channel. You will be redirected to the appropriate team for help.

We aim to respond to your request within 24 hours. If you raise your request on a Friday, it may only be responded to on Monday.

### Production Engineering - Ops

Contact us in: [#g_infra_ops](https://gitlab.enterprise.slack.com/archives/C04MH2L07JS)

Open an issue in our [Production engineering tracker](https://gitlab.com/gitlab-com/gl-infra/production-engineering/-/issues/new)

We can help with:

1. Disaster Recovery
2. Incident Management
3. System and OS level patching

### Production Engineering - Foundations

Contact us in: [#g_infra_foundations](https://gitlab.enterprise.slack.com/archives/C0313V3L5T6)

Open an issue in our [Production engineering tracker](https://gitlab.com/gitlab-com/gl-infra/production-engineering/-/issues/new?issuable_template=request-foundations)

We can help with:

1. Networking
1. Rate Limiting: create an issue with the [rate limiting request template](https://gitlab.com/gitlab-com/gl-infra/production-engineering/-/issues/new?issuable_template=request-rate-limiting)
1. K8s
1. Config
1. Service Discovery with Consul
1. Secrets Management with Vault
1. ops.gitlab.net and ops runners
1. CDN
1. DNS
1. Load Balancing
1. RBAC / IAM
1. Teleport connections: create an issue with the [teleport-troubleshooting template](https://gitlab.com/gitlab-com/gl-infra/production-engineering/-/issues/new?issuable_template=teleport-troubleshooting)
1. Cloudflare: create an issue with the [Cloudflare Troubleshooting template](https://gitlab.com/gitlab-com/gl-infra/production-engineering/-/issues/new?issuable_template=Cloudflare%20Troubleshooting)

### Delivery

Contact us in [#g_delivery](https://gitlab.enterprise.slack.com/archives/CCFV016SV)

-We can help with:

1. Deployments to GitLab.com
1. Post Deployment Migrations (in relation to deployments)
1. Auto-Deploy
1. Hot Patching Process
1. Mean Time To Production
1. Release Management
1. Release Processes
1. Maintenance Policy
1. Patch Releases
1. Monthly Releases
1. Backports

### Scalability - Observability

Contact us in: [#g_scalability-observability](https://gitlab.enterprise.slack.com/archives/C065RLJB8HK)

Open an issue in our [Scalability issue tracker](https://gitlab.com/gitlab-com/gl-infra/scalability/-/issues/new)

We can help with:

1. Observability
1. Logging
1. Metrics
1. Grafana / Kibana / Mimir / Prometheus
1. Error Budgets
1. Capacity Planning

### Scalability - Practices

Contact us in: [#g_scalability-practices](https://gitlab.enterprise.slack.com/archives/C04M6HVAY49)

Open an issue in our [Scalability issue tracker](https://gitlab.com/gitlab-com/gl-infra/scalability/-/issues/new)

We can help with:

1. Redis
1. Sidekiq
1. Runway: create an issue in the [Runway tracker](https://gitlab.com/gitlab-com/gl-infra/platform/runway/team/-/issues/new)

## Dedicated

Contact us in: [#f_gitlab_dedicated](https://gitlab.enterprise.slack.com/archives/C01S0QNSYJ2)

Raise an issue in the [GitLab Dedicated issue tracker](https://gitlab.com/gitlab-com/gl-infra/gitlab-dedicated/team) using the `Request for Help` template which will add the ~"Dedicated::Request for Help" label. For Switchboard requests use the `Request for Switchboard Help` template which will divert your request to the Switchboard team.

We can help with:

1. Questions and support for GitLab Dedicated
