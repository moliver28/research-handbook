---
title: "Real-Time Working Group"
description: "The GitLab Real-Time Working Group aim is to ship one real-time feature to self-managed customers. Read more!"
no_list: true
---

## Attributes

| Property        | Value           |
|-----------------|-----------------|
| Date Created    | March 12, 2020 |
| Date Closed     | November 1, 2021 |
| Slack           | [#wg_real-time](https://app.slack.com/client/T02592416/CUX9Z2N66) (only accessible from within the company) |
| Google Doc      | [Real-Time Working Group Agenda](https://docs.google.com/document/d/1eqwiGKifpnE4XTog0dB4Lgb-Bx0cc8g8OejmWDoZabs/edit#) (only accessible from within the company) |
| Epic & Design Doc | [Use ActionCable for real-time features](https://gitlab.com/groups/gitlab-org/-/epics/3056)             |
| Feature Issue   | [View real-time updates of assignee in issue / merge request sidebar](https://gitlab.com/gitlab-org/gitlab/-/issues/17589) |
| Associated OKRs | [Plan: Support incremental ACV](https://gitlab.com/gitlab-com/www-gitlab-com/issues/6594) |

## Business Goal

To ship one real-time feature to self-managed customers.

## Exit Criteria - Phase 1

(✅ Done, ✏️ In-progress)

### One Real-Time Feature, Usable by Single Instance/Small Cluster, Self-Hosting Customers `=> 100%`

[Issue](https://gitlab.com/gitlab-org/gitlab/issues/17589)

- [Supports starting Action Cable in embedded mode](https://gitlab.com/gitlab-org/gitlab/-/issues/214061) ✅
- [Omnibus includes ability to start embedded Action Cable with config/cable.yml](https://gitlab.com/gitlab-org/omnibus-gitlab/-/merge_requests/4066) ✅
- [GDK supports configuration of Action Cable](https://gitlab.com/gitlab-org/gitlab-development-kit/-/merge_requests/1318) ✅
- Workhorse Proxies Action Cable requests ✅
- Backend work is complete to upgrade websocket connections and push signal when assignees are updated on an issue ✅
- Frontend work is complete to respond to WebSockets with an update to the sidebar ✅
- [Action Cable settings are exported to Prometheus](https://gitlab.com/gitlab-org/gitlab/-/issues/217314) ✅
- [Track ActionCable settings in Usage Ping](https://gitlab.com/gitlab-org/gitlab/-/issues/232807) ✅
- [Documentation enabled to advise customers on using the feature in small deployments](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/40500) ✅
- [Feature usable conditionally when Action Cable is enabled](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/38204) ✅

## Exit Criteria - Phase 2

(✅ Done, ✏️ In-progress)

### One Real-Time Feature, Usable on larger deployments `=> 100%`

[Issue](https://gitlab.com/gitlab-org/gitlab/issues/17589)

- Omnibus includes ability to start standalone Action Cable Puma Server with config/cable.yml ✅
- GDK allows configuration of standalone Action Cable and starts Puma server ✅
- Workhorse Proxies Action Cable requests ✅
- [Establish reference architectures for supporting WebSocket connections at scale](https://gitlab.com/gitlab-org/quality/performance/-/issues/256#note_348137517) ✅
- [Helm charts allow configuration of embedded Action Cable in `webservice` service](https://gitlab.com/gitlab-org/charts/gitlab/-/issues/2286) ✅
- [QA work complete to test initial feature](https://gitlab.com/gitlab-org/quality/testcases/-/issues/1048) ✅
- [Feature flag defaulted to on, with suitable fallback](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/71953) ✅

### Working, Real-Time Feature Available on .com `=> 100%`

[Epic](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/228)

- [Containerization of Real-Time Feature including Action Cable and Puma](https://gitlab.com/gitlab-org/gitlab/-/issues/213861) ✅
- [Update of Helm charts allowing use of multiple Redis instances](https://gitlab.com/gitlab-org/charts/gitlab/-/merge_requests/1287) ✅
- [WebSocket requests supported in Kubernetes](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/2702) ✅
- [Deployment to a non-production environment for manual, full-stack testing](https://gitlab.com/gitlab-com/gl-infra/delivery/-/issues/878) ✅
- [Action Cable requests served by Kubernetes pods on Staging](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/228#note_413686741) ✅
- [Action Cable requests served by Kubernetes pods on Canary](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/228#note_413686741) ✅
- [Readiness-review complete to ensure observabilty & contain risk](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/355#note_455583247) ✅
- [Action Cable requests served by Kubernetes pods on Production](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/228#note_413686741) ✅
- [Default to embedded Action Cable enabled](https://gitlab.com/gitlab-com/gl-infra/delivery/-/issues/1210) ✅

## Design Document

Technical decisions and rationale are captured in [this design document]({{<ref "design_document" >}}).

## Roles and Responsibilities

| Working Group Role    | Person                | Title                          |
|-----------------------|-----------------------|--------------------------------|
| Executive Sponsor     | Christopher Lefelhocz | VP of Development |
| Facilitator           | John Hope             | Engineering Manager, Plan      |
| Functional Lead       | Heinrich Lee Yu       | Senior Backend Engineer, Plan  |
| Functional Lead       | Gabe Weaver           | Senior Product Manager, Plan   |
| Functional Lead       | Sean McGivern         | Staff Backend Engineer, Scalability   |
| Member                | Scott Stern           | Frontend Engineer, Plan        |
| Member                | Ben Kochie            | Site Reliability Engineer      |
| Member                | Natalia Tepluhina     | Staff Frontend Engineer, Plan |
| Member                | Matthias Käppler      | Senior Engineer, Memory        |
| Member                | Jake Lear             | Engineering manager, Plan      |

## Meetings

Meetings are recorded and publicly available on
YouTube in the [Real-Time Working Group playlist](https://www.youtube.com/playlist?list=PL05JrBw4t0KoMOc_LID1fKWWR4H_2n2hQ).

<iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=PL05JrBw4t0KoMOc_LID1fKWWR4H_2n2hQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
