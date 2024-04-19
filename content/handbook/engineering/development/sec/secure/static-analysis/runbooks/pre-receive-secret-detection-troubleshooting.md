---
title: "Pre-receive secret detection troubleshooting"
---

### When to use this runbook?

Use this runbook for troubleshooting Production issues related to the
[pre-receive secret
detection](https://docs.gitlab.com/ee/user/application_security/secret_detection/pre_receive/index.html) feature.

### Relevant settings

| Setting | Type | Level | Visibility |
|---------|------|-------|------------|
| `pre_receive_secret_detection_enabled` | Database | Instance | \* Only
in a **Dedicated instance**, or with
**`pre_receive_secret_detection_beta_release` enabled** and only when
the feature is **licensed (in Ultimate)**. |
| `pre_receive_secret_detection_push_check` | Feature Flag | Project |
Not visible, has to be toggled via `ChatOps`. |
| `pre_receive_secret_detection_beta_release` | Feature Flag | Instance
| Not visible, has to be toggled via `ChatOps`. |
| `pre_receive_secret_detection_enabled` | Database Setting | Project |
Being worked on in
https://gitlab.com/groups/gitlab-org/-/epics/13151. |

# Monitoring

[Gitaly Latency Dashboard for the PreReceiveHook method](https://dashboards.gitlab.net/d/PqeIQ9Iik/gitaly-feature-latency-detail?from=now-1h&orgId=1&refresh=5m&to=now&var-job=gitaly&var-method=PreReceiveHook)

This dashboard represents all the time Gitaly spends in the PreReceiveHook, of
which pre-receive secret detection is only a portion.

The average latency for the PreReceiveHook is between 300ms and 350ms,
when pre-receive secret detection is not enabled.

We do not currently have a latency threshold at which we should disable
the feature. We will be using the
[Dogfood Pre-receive SD on internal GitLab projects](https://gitlab.com/groups/gitlab-org/-/epics/13523) epic to help us
determine that number.

# Enabling/Disabling

## Enabling/Disabling for gitlab.com

To **disable the feature across all of gitlab.com**, disable pre-receive
secret detection, [as described in the
docs](https://docs.gitlab.com/ee/user/application_security/secret_detection/pre_receive/index.html#enable-pre-receive-secret-detection). This will require a change access request ([staging example](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/17838)), as it requires administrator access.

This will disable the feature for all gitlab.com users and should be
used in cases where the feature is causing significant performance degradition.

## Other properties that can be enabled/disabled

### The `pre_receive_secret_detection_beta_release` flag

The `pre_receive_secret_detection_beta_release` flag will be used to
enable the [Secret Detection section in the Security and Compliance Admin
section](https://gitlab.com/admin/application_settings/security_and_compliance
) (https://gitlab.com/admin -> Settings -> Security and Compliance)
, but _**turning the flag on does not turn on pre receive secret
detection**_. Conversely, turning the flag off does not turn
the feature off.

Check the status of the `pre_receive_secret_detection_beta_release`
feature flag:

`/chatops run feature get pre_receive_secret_detection_beta_release`

Enable the feature flag:

`/chatops run feature set pre_receive_secret_detection_beta_release true`

Disable the feature flag:

`/chatops run feature set pre_receive_secret_detection_beta_release
false`

## The `pre_receive_secret_detection_push_check` feature flag

The `pre_receive_secret_detection_push_check` feature flag will be used
to enable/disable pre-receive secret detection for a given project.

It will also be used in conjunction with the pre-receive secret
detection setting in a project's Security Configuration. Both the
feature flag and the setting will need to be on for pre-receive secret
detection to work for a given project.

Check status:

`/chatops run feature get pre_receive_secret_detection_push_check `

Enable for a project:

`/chatops run feature set --project=the-namespace/of-the-project
pre_receive_secret_detection_push_check true`

Disable for a project:

`/chatops run feature set --project=the-namespace/of-the-project
pre_receive_secret_detection_push_check false`

## Project pre-receive secret detection setting

With the `pre_receive_secret_detection_push_check` feature flag on for a
given project, pre-receive secret detection can be toggled for the
project through the security configuration page for the project.
Instructions can be found in the [implementing MR](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/149167#screenshots-or-screen-recordings),
but will eventually be added to the docs.

When both the feature flag and the setting are on, git pushes to the
project should be stopped when they contain a secret. As a test,
`glpat-12345678901234567890` should be prevented when pushing
(from the terminal, the Web IDE, etc.)
