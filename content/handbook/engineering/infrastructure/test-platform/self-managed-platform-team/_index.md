---
title: "Self-Managed Platform team"
description: "Self-Managed Platform team in Test Platform sub-department"
---

## Common Links

| S.No 	| Section     	          |
|------	|-------------------------|
| **GitLab Team Handle** | [`@gl-quality/tp-self-managed-platform`](https://gitlab.com/gl-quality/enablement-qe) |
| **Team Boards** | [Team Board](https://gitlab.com/groups/gitlab-org/-/boards/978354) |
| **Self-Managed Platform Team Projects** | [Tools Page](/handbook/engineering/infrastructure/test-platform/self-managed-excellence/) |

Engineers in this team support the product sections supported by the [Core Platform], [SaaS Platforms] along with maintaining the self managed platform tools.

## Team members

Engineering Manager: Kassandra Svoboda

| S.No 	| Section     	          | Stage/ Group/ Tool         | SET Counterpart    |
|------	|-------------------------|----------------------------|--------------------|
| 1    	| [Core Platform]    	  | [Data Stores]              | John McDonnell     |
| 2     | [Core Platform]         | [Tenant Scale]             | Andy Hohenner      |
| 3     | [Core Platform]         | [Systems]                  | Vishal Patel       |
| 4     | [Core Platform]         | [Geo]                      | Nick Westbury      |
| 5    	| [SaaS Platforms]        | [GitLab Dedicated]         | Brittany Wilkerson |
| 6    	| [SaaS Platforms]        | [US Public Sector Services] | Jim Baumgardner    |
| 7    	|          -              | [GitLab Environment Toolkit] & [Reference Architectures]  | Grant Young    |
| 8    	|          -              | [GitLab Performance Tool]   | Nailia Iskhakova    |

## OKRs

Every quarter, the team commits to [Objectives and Key Results (OKRs)](/handbook/company/okrs/). The below shows current quarter OKRs and is updated regularly as the quarter progresses.

Here is an [Overview](https://gitlab.com/gitlab-com/gitlab-OKRs/-/work_items/4938) of our current Self-Managed Platform team OKR.

## Projects

* [GitLab Performance Tool]
* [GitLab Browser Performance Tool]
* [GitLab Environment Toolkit]
* [Performance Test Data]
* [Performance Docker Images]
* [Zero Downtime Testing Tool]
* [Reference Architectures]

## Working with us

There are occasions where the expertise of the Reference Architecture or Self-Managed Platform team may be needed in support of a customer issue.

For any requests relating to customer environments, either proposed or existing, they must be raised in the [Reference Architectures](https://gitlab.com/gitlab-org/quality/reference-architectures/-/issues/new) project with the appropriate template. Requests should be opened two or more business days before action is needed to ensure the team has time to prepare and we kindly ask for this process to be followed for tracking and capacity reasons. Any requests made outside of this process such as direct asks to join customer calls or projects will be rejected and should instead be directed to Support or Professional Services accordingly.

For issues specifically with the [GitLab Environment Toolkit](https://gitlab.com/gitlab-org/gitlab-environment-toolkit/-/issues/new) or [GitLab Performance Tool](https://gitlab.com/gitlab-org/quality/performance/-/issues/new) issues can be raised in each respective project.

For individual questions please reach out to the team via our slack channels.

### Slack Channels

| Channel | Purpose |
| :---: | :--- |
| [#reference-architectures](https://gitlab.slack.com/archives/C015V8PDUSW) | Channel to ask questions relating to Reference Architectures |
| [#gitlab_environment_toolkit](https://gitlab.slack.com/archives/C01DE8TA545) | Channel to discuss and any ask questions relating to GitLab Environment Toolkit |
| [#gitlab_performance_tool](https://gitlab.slack.com/archives/C02JMABFT2R) | Channel to discuss and ask any questions relating to GitLab Performance Tool and QE performance testing |
| [#self-managed-platform-team](https://gitlab.slack.com/archives/CTP7N0PM4) | Channel to engage with the Self-Managed Platform Team |

## How we work

### Meetings and Scheduled Calls
Our preference is to work asynchronously, within our projects issues trackers.

The team does have a set of regular synchronous calls:
- Self-Managed Environment Triage
- GitLab Environment ToolKit Bi-Weekly Sync
- 1-1s between the Individual Contributors and Engineering Manager

Stand-up twice per week on Tuesday and Thursday via our teams slack channel

### Project Management

### Issue Boards

We track our work on the following issue boards:

- [Test Platform: Self-Managed Platform Team Milestones](https://gitlab.com/groups/gitlab-org/-/boards/7333962?label_name[]=team%3A%3ASelf-Managed%20Platform)
- [Test Platform: Self-Managed Platform Team Members](https://gitlab.com/groups/gitlab-org/-/boards/978354?label_name%5B%5D=team%3A%3ASelf-Managed%20Platform)

### Capacity Planning

We use a simple issue weighting system for capacity planning, ensuring a
manageable amount of work for each milestone. We consider both the team's
throughput and each engineer's upcoming availability from Time Off by Deel.

The weights are intended to be used in aggregate, and what takes one person a
certain amount of time may be different for another, depending on their level of
knowledge of the issue. We should strive to be accurate, but understand that
they are estimates. We will change the weight if it is not accurate or if the issue
becomes more difficult than originally expected, leave a comment indicating why the
weight was changed, and tag the EM and any assigned DRIs so we can better understand the scope
and continue to improve.

#### Weights

To weigh an issue, consider the following important factors:

- Volume of work: expected size of the change to the code base or validation testing required.
- Amount of investigation or research expected.
- Complexity:
  - Problem understanding: how well the problem is understood.
  - Problem-solving difficulty: the level of difficulty we expect to encounter.

The following weights are available based on the Fibonacci Series with 8 being the highest assignable number. The definitions are as below:

| Weight | Description | Examples |
| ------ | ----------- | -------- |
| 1 - Trivial | Simple and quick changes | Documentation fixes or smaller additions. |
| 2 - Small | Straight forward changes, no underlying dependencies needed with little investigation or research required. | Smaller Ansible additions or changes, e.g. within one role. |
| 3 - Medium | Well understood changes with a few dependencies that should only require a reasonable amount of investigation or research. | Large Ansible changes, e.g. affecting multiple roles. <br/> Small Terraform additions or changes, such as an additional setting for a Cloud Service. |
| 5 - Large | A larger task that will require a notable amount investigation and research. <br/> All changes relating to security. | Large Terraform additions or changes such as a new Cloud Service or changes affecting multiple components. |
| 8 - X-large | A very large task that will require a significant amount of investigation and research. Pushing initiative level. | Large GitLab changes such as new component that will require joint Reference Architecture, GET and GPT work |

Anything that would be assigned a weight of 8 or larger should be broken down.

### Status Updates 
- By 20:00 UTC / 03:00 PM ET on Fridays DRIs of OKRs to provide a status update in the comment section of the OKR
     - Format for weekly update:
          - Date of Update (YYYY-MM-DD)
          - Brief update (~sentence or couple bullets) for each of these four bullets:
               - Status update - Progress has been updated to X %.    
               - What was done :white_check_mark: - Unblocked blockers, any other progress acheived
               - Next steps :construction_worker: 
               - Blockers :octagonal_sign: - Issues or unexpected work that blocked/affected progress. For example, customer escalations/on-call DRI
- ASYNC Standup on Tuesdays and Thursdays - Reply to GeekBot questionaire on Slack. 

## Test Platform process across product sections:

Overall we follow the same process as [defined](/handbook/engineering/infrastructure/test-platform/#how-we-work) in our Test Platform handbook across all groups in Core Platform and SaaS Platform
except for a few exceptions curated to fit the needs of specific groups.

- [Test Platform in Distribution group](/handbook/engineering/infrastructure/test-platform/self-managed-platform-team/distribution/index.html)

[Core Platform]: /handbook/product/categories/#core-platform-section
[Systems]: /handbook/product/categories/#systems-stage
[Data Stores]: /handbook/product/categories/#data-stores-stage
[Geo]: /handbook/product/categories/#geo-group
[Tenant Scale]: /handbook/product/categories/#tenant-scale-group
[SaaS Platforms]: /handbook/product/categories/#saas-platforms-section
[SaaS Platforms]: /handbook/product/categories/#saas-platforms-stage
[GitLab Dedicated]: /handbook/product/categories/#gitlab-dedicated-group
[US Public Sector Services]: /handbook/product/categories/#us-public-sector-services-group
[GitLab Performance Tool]: https://gitlab.com/gitlab-org/quality/performance
[GitLab Browser Performance Tool]: https://gitlab.com/gitlab-org/quality/performance-sitespeed
[GitLab Environment Toolkit]: https://gitlab.com/gitlab-org/gitlab-environment-toolkit
[Performance Test Data]: https://gitlab.com/gitlab-org/quality/performance-data
[Performance Docker Images]: https://gitlab.com/gitlab-org/quality/performance-images
[Zero Downtime Testing Tool]: https://gitlab.com/gitlab-org/quality/zero-downtime-testing-tool
[Reference Architectures]: https://gitlab.com/gitlab-org/quality/reference-architectures
