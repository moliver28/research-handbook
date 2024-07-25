---
title: How We Work (Engineering)
---

This is a work in progress.

## Epics

TODO

## Issue Tracker

All issues are created in the [CorpSec issue tracker](https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues) for work that we have to either spend significant time performing or perform configuration and provisioning work that we need an easy-to-discover audit trail for. We can also be tagged in other team's issue trackers for consultative questions and support.

### Due Dates

Due dates are based on the delivery date by CorpSec, not the due date of the requester. Any expectations should be mentioned in the issue description or comments.

For example, the Infrastructure team works on 2 week agile iteration cadences and the due date is set to the last day of the iteration cadence that it was scheduled in. The date may be updated by the engineer as the work is performed to a more accurate date.

### Time Tracking

When issues are prioritized and scheduled to be worked on, they can optionally have a time estimate added (in hours) using `/estimate {##}h`. This allows the engineer to be a manager of one and work on the issue however they see fit by the iteration end date.

As engineers work on issues, they can optionally add `/spent {1.5}h` to keep track of their progress. This is optional has two benefits:

1. It allows the engineer to validate whether the time estimate was accurate.
2. It surfaces to the management team how much work was put into the issue.

Any issue that an engineer adds a time spent to will automatically show up on management and team status reports with the title and time spent. Any issue without a time spent will show up on status reports with the count of issues worked on in a specific project. A best practice is that if it takes more than 30-60 minutes, you should consider adding time spent. If something is important that should appear on a status report, then even a 5 minutes of time spent can be added.

See [weight](#weight) as an alternative to time tracking.

### Weight

Some engineers do not like tracking their time and just see the list of issues to work on.

Instead of time tracking, you can add a weight to share how difficult it was to work on.

1. Very Easy/Tiny (<60 Minutes)
2. Not Hard (1-3 Hours)
3. Moderate (3-8 Hours)
4. Harder (6-20 Hours)
5. Very Hard (20+ Hours)

Any issue that an engineer adds a weight to will automatically show up on management and team status reports with the title and weight along with a time estimate if it was set. Any issue without a weight will show up on status reports with the count of issues worked on in a specific project. A best practice is that if it takes more than 30-60 minutes, you should consider adding a weight.

## Labels

### Priority

- `sec-priority::ar` - Business as usual access requests
- `sec-priority::ops` - Business as usual day-to-day requests (non-ARs)
- `sec-priority::p0` - Project Fire Drill
- `sec-priority::p1` - Project in next few weeks
- `sec-priority::p2` - Project this quarter
- `sec-priority::p3` - Project next quarter
- `sec-priority::p4` - Project on wishlist

### Status

- `sec-status::inbox` - This issue is new and has not been evaluated yet.
- `sec-status::backlog` - This issue is in our backlog (see priority).
- `sec-status::scheduled` - This issue has been scheduled to be worked on in an upcoming iteration milestone. A due date is added to the issue with the iteration end date.
- `sec-status::blocked` - This issue has started but is blocked for a technical reason. Blocked issues get attention of engineers.
- `sec-status::waiting` - This issue has started but is waiting for a business reason or review. Same as "on hold". Waiting issues get attention of managers.
- `sec-status::wip` - This issue is a work in progress. The engineer will assign this status when they pick it up.
- `sec-status::wip-review` - The work is mostly complete and is waiting on final review or cleanup work by CorpSec.
- `sec-status::done` - This work is done and is almost ready to close once comments are resolved by non-CorpSec team members.
- `sec-status::stale` - For any issues that become dormant and should be close but could be reviewed later to re-open.

### Team

These labels are subscribed to be respective team members to get notifications for issues instead of needing to carbon copy (CC) or mention team members in issues, and are also used for any issues to identify which team is working on it. These labels are included in many issue templates. These labels can be added to any epic or issue anywhere in `gitlab.com/gitlab-com`. We do not use scoped labels since multiple teams may need to work on the same issue.

These are used for broad teams and not specific systems. Please check if a system label is appropriate to directly notify the system owners.

- `corpsec-device`
- `corpsec-helpdesk`
- `corpsec-identity`
- `corpsec-infra`
- `corpsec-laptop`
- `corpsec-platform`
- `corpsec-saas`

### System

These labels are subscribed to be respective team members to get notifications for issues instead of needing to carbon copy (CC) or mention team members in issues, and are also used for any issues to identify which system the issue relates to. These labels can be added to any epic or issue anywhere in `gitlab.com/gitlab-com`. We do not use scoped labels since multiple systems may be worked on in the same issue.

For broader needs, see the [team](#team) labels.

- `corpsys-1password`
- `corpsys-accessctl`
- `corpsys-aws-billing`
- `corpsys-aws-services`
- `corpsys-aws-sandbox`
- `corpsys-aws-systems`
- `corpsys-aws-dedicated-dev`
- `corpsys-aws-dedicated-prd`
- `corpsys-aws-dedicated-pubsec`
- `corpsys-azure`
- `corpsys-domains`
- `corpsys-dns`
- `corpsys-drivestrike`
- `corpsys-gitlab-com` - gitlab.com
- `corpsys-gitlab-ops` - ops.gitlab.net
- `corpsys-gitlab-dev` - dev.gitlab.org
- `corpsys-gitlab-stg` - staging.gitlab.com
- `corpsys-gitlab-cfg` - cfg.gitlab.systems
- `corpsys-gcp-billing`
- `corpsys-gcp-com` - gitlab.com
- `corpsys-gcp-sandbox` - gitlabsandbox.cloud
- `corpsys-gcp-systems` - gitlab.systems
- `corpsys-gcp-cells-dev` - gitlab-cells.dev
- `corpsys-gcp-cells-prd` - gitlab-cells.com
- `corpsys-gcp-dedicated-dev` - gitlab-private.org
- `corpsys-gcp-dedicated-prd` - gitlab-dedicated.com
- `corpsys-google-app` - Google Apps
- `corpsys-google-cal` - Google Calendar
- `corpsys-google-drive` - Google Drive
- `corpsys-google-group` - Google Groups
- `corpsys-google-org` - Google Workspace Organization Configuration
- `corpsys-jamf`
- `corpsys-linux`
- `corpsys-macos`
- `corpsys-nira`
- `corpsys-okta-app`
- `corpsys-okta-group`
- `corpsys-okta-org`
- `corpsys-okta-user`
- `corpsys-okta-flow`
- `corpsys-sandbox-cloud`
- `corpsys-sentinelone`
- `corpsys-slack`
- `corpsys-yubikey`
- `corpsys-zoom`

### Metric

To help reporting with what issues are related to since we share the same issue tracker and epics, you can add labels for categorizing the type of work.

- Business as Usual
  - `sec-metric::ar`
  - `sec-metric::ops`
- Engineering
  - `sec-metric::automation` - No-code or script automation work
  - `sec-metric::change` - Standardized change management
  - `sec-metric::config` - Non-standardized changes or engineering work during normal iteration windows
  - `sec-metric::consult` - Consultative questions or support
  - `sec-metric::discovery` - Research and discovery work (for assigned initiatives or side projects)
- Initiatives
  - `sec-metric::crisis` - Unplanned initiatives that require urgent attention.
  - `sec-metric::initiative` - Used for planned large or meta-level issues and epics. Child issues should use `build` or `config` or `testing`.
  - `sec-metric::discovery` - Research and discovery work (for assigned initiatives or side projects)
  - `sec-metric::build` - Implementation work for initiatives
  - `sec-metric::testing` - Testing work for initiatives

### Approvals

- Business or Technical Owner
  - `sec-sysowner-review::not-ready`
  - `sec-sysowner-review::waiting`
  - `sec-sysowner-review::approved`
- Engineer Peer Review
  - `sec-peer-review::not-ready`
  - `sec-peer-review::waiting`
  - `sec-peer-review::approved`
- Post Implementation Review
  - `sec-post-review::not-ready`
  - `sec-post-review::waiting`
  - `sec-post-review::approved`
- Management Approval
  - `sec-mgmt-review::not-ready`
  - `sec-mgmt-review::waiting`
  - `sec-mgmt-review::approved`
