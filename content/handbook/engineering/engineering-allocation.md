---
title: "Development Department - Engineering Allocation Dashboard"
---

Engineering Allocation for a stage/group is 0% and we are following normal [prioritization](https://about.gitlab.com/handbook/product/product-processes/#prioritization). More details can be found on the [Engineering Allocation section](https://about.gitlab.com/handbook/engineering/#engineering-allocation).

To help us stay on track, we track this in our [Engineering Allocation dashboard](https://app.periscopedata.com/app/gitlab/862396/Engineering-Allocation) which has the ability to filter down to a specific section, stage, or group. We monitor the number of closed issues and closed MRs with the ~Engineering Allocation label against closed issues and closed MRs without the label over time. These charts include data for all product MRs.

{{< sisense dashboard="862396" chart="11685310" >}}

{{< sisense dashboard="862396" chart="11695177" >}}

## Labels

Engineering allocation issues must have the following labels:

- `~Engineering Allocation` label to denote when issue is part of engineering allocation
- `~Eng-Consumer::*` label for the department making the request
- `~Eng-Producer::*` label for the department that will complete the request
- `~priority::*`
- `~severity::*` when the issue is a `~"type::bug"`

### Automation

The following automation has been implemented to ensure that issues are properly labelled to be visible in the [Engineering Allocation dashboard](https://app.periscopedata.com/app/gitlab/862396/).

1. Add `~Engineering Allocation` when a `~Eng-Producer::*` or `~Eng-Consumer::*` label is applied
1. Add `~Eng-Producer::Development` and `~Eng-Consumer::Infrastructure` when `~infradev` is applied
1. Reminder that required labels are not present when an issue is created or updated and has `~Engineering Allocation`
