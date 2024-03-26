---
title: Dynamic Analysis Group
---

## Dynamic Analysis

The Dynamic Analysis group at GitLab is charged with developing solutions which perform [Dynamic Analysis Software Testing (DAST)](https://about.gitlab.com/direction/secure/dynamic-analysis/dast/) and Fuzzing. Our work is a mix of open and closed source code.

### Mission

To support the success of GitLab by developing highly usable, hiqh quality tools for customers to build more secure software. The Dynamic Analysis group at GitLab is charged with developing solutions which perform API Security Testing, Dynamic Analysis Software Testing (DAST) and Fuzzing.

### Top Priorities (FY25)
**Theme: Increase adoption**

- **Unify DAST offerings** - Reduce confusion by removing proxy-based DAST and maturing browser-based DAST by adding active checks and improving performance 

- **API Discovery** - API discovery will analyze applications to produce an OpenAPI document describing the web APIs expected behavior. This schema document is then used by API Security testing (formerly called DAST API) to perform security scans.  Automating this will close the gap for customers whose applications include web APIs that haven’t been documented and aren’t being tested today.

- **API Security Checks refresh** - Comprehensively review and update API Security Testing checks (rules).  By ensuring we address both the OWASP API Security Top 10:2023 and the OWASP Top 10:2021 (web applications), our customers will be confident in our ability to detect critical risks.

- **DAST Performance** - Deduplicate scanning similar pages to reduce DAST scan times without reducing security coverage. Long scan times are a major barrier that discourages customers from incorporating DAST scans into DevSecOps processes.

### Customer outcomes We are Driving

The Dynamic Analysis team builds features for our API Security, DAST, and Fuzzing categories.  These features enable our Ultimate customers to incorporate security testing earlier in the development lifecycle for their web applications and APIs. By identifying vulnerabilities earlier in the SDLC, we enable customers to more efficiently reduce the security risks in their web apps and APIs.

Our features identify vulnerabilities in different ways than GitLab’s other security analyzers do, and each tool should be used in tandem with other security analyzers such as SAST, SCA (dependency scanning), and secret detection to provide full coverage.

API Security, DAST, and Fuzzing are Ultimate features. Increasing adoption of these features helps improve customer retention, and helps drive revenue for GitLab Ultimate.

### Metrics we Love

- **Cumulative Flow Diagram** - Kanban Progress (Team Metric)

- **Vulnerabilities Resolved** - Number of Vulnerabilities Customers have Resolved with DAST (Retention Metric)

- **False Positive Rate** - Customer Test Result Feedback (Accuracy Metric)

- **Monthly Active Users** - Running DAST, API Security, and Fuzzing Tests (Growth Metric)

### Important DAST Repositories

| Repo | Purpose |
| ---- | ------- |
| [DAST](https://gitlab.com/gitlab-org/security-products/dast) | The DAST Analyzer which is deployed as a docker image. |
| [Browserker](https://gitlab.com/gitlab-org/security-products/analyzers/browserker) | Private - GitLab's DAST browser-based analyzer. |
| [DAST CWE Checks](https://gitlab.com/gitlab-org/security-products/dast-cwe-checks) | Private - DAST browser-based analyzer vulnerability definitions. |
| [DAST Chromium](https://gitlab.com/gitlab-org/security-products/dast-chromium) | Private - DAST browser-based analyzer dependencies, such as the Chromium browser. |

### Important Fuzzing repositories

| Repo | Purpose |
| ---- | ------- |
| [API Security](https://gitlab.com/gitlab-org/security-products/analyzers/api-fuzzing-src) | Private - The API Security tool performs API Fuzzing and API DAST scans. |
| [GitLab Protocol Fuzzer (CE)](https://gitlab.com/gitlab-org/security-products/protocol-fuzzer-ce) | GitLab's Protocol Fuzzer (Community Edition), previously Peach Protocol Fuzzer. |
| [GitLab Protocol Fuzzer (EE)](https://gitlab.com/gitlab-org/security-products/protocol-fuzzer-ee) | Private - GitLab's Protocol Fuzzer (Enterprise Edition), previously Peach Protocol Fuzzer, includes licensed components. |
| [API Fuzzing E2E Tests](https://gitlab.com/gitlab-org/security-products/tests/api-fuzzing-e2e) | Private - API End to End Tests. |
| [GitLab Cov Fuzz](https://gitlab.com/gitlab-org/security-products/analyzers/gitlab-cov-fuzz-src) | Private - GitLab's coverage fuzzing orchestration that integrates fuzzing engines/results with GitLab CI and GitLab Security Dashboard. |
| [HAR Recorder](https://gitlab.com/gitlab-org/security-products/har-recorder) | A utility to record HAR files based on web traffic. |

##### Open Source Fuzzers

| Repo | Purpose |
| ---- | ------- |
| [JSfuzz](https://gitlab.com/gitlab-org/security-products/demos/coverage-fuzzing) | Javascript Fuzzer. |
| [Pythonfuzz](https://gitlab.com/gitlab-org/security-products/demos/coverage-fuzzing) | Python Fuzzer. |
| [Javafuzz](https://gitlab.com/gitlab-org/security-products/demos/coverage-fuzzing) | Java Fuzzer. |
| [Coverage Fuzzing Examples](https://gitlab.com/gitlab-org/security-products/demos/coverage-fuzzing) | Coverage fuzzing examples in 7+ languages/Fuzzers. |

## How to Contact Us

- Slack channel: #g_secure-dynamic-analysis, #f_secure-api-security, #f_secure-fuzz-testing
- Slack alias: @secure_dynamic_analysis_be
- Google groups: dynamic-analysis-be@gitlab.com
- GitLab mention: @gitlab-org/secure/dynamic-analysis-be

### Other Contact

The DAST team also monitors #s_secure and #sec-section. Both these channels are for wider Secure topics, however are a good place to start if you are not sure which group in Secure to contact.

## How We Work

The Dynamic Analysis group works according to kanban principles. While the group still follows the workflow states and activities articulated in GitLab's [Product Development Flow](/handbook/product-development-flow/), it operates on a
pull-based methodology once work is handed off to the development team for delivery. An issue is considered handed off into the development team when it is given the `~workflow::planning breakdown` label, and the team utilizes the following
labels as part of its work.

- [Official Dynamic Analysis Delivery board](https://gitlab.com/groups/gitlab-org/-/boards/5719921?label_name%5B%5D=group%3A%3Adynamic%20analysis)

| State | Expected Outcomes |
| ----- | ----------------- |
| `~workflow::planning breakdown` | Issues are optimized for delivery based on [Issue breakdown] principles. |
| `~workflow::refinement` | Implementation plan added to the issue description. Weights are not required due to the small size of issues. |
| `~workflow::ready for development` | Buffer queue - issue deemed to be `~Deliverable`, `~Stretch`, or possibly punted to a future iteration. |
| `~workflow::in dev` | Last MR is up and out of Draft or WIP status. |
| `~workflow::in review` | Last MR is merged. |
| `~workflow::verification` | Functionally working changes are available in a production environment. Record demo where possible. |
| `~workflow::complete` | Code is verified, the work is complete, and the issue is closed. |

### Additional notes

Issues worked by this team are backend-centric and are typically in one the above repos, [vendored templates](https://gitlab.com/gitlab-org/gitlab/-/tree/master/lib/gitlab/ci/templates/Security), and GitLab's [Rails monolith](https://gitlab.com/gitlab-org/gitlab). At times, issues can require support from Secure's frontend team if UI changes are required. We will require more notice for initiatives like these.

## Issue breakdown

Team members are empowered to create new issues, attach them to relevant epics, and collaborate with product management to determine if they are included in current scope.

### Breakdown principles

Issues are broken down according to the [INVEST mnemonic](https://en.wikipedia.org/wiki/INVEST_(mnemonic)).

- **Independent**, the issue should have minimal to no dependencies so it can be played in isolation of other issues.
- **Negotiable**, the issue should be structured such that the PM can prioritize or deprioritize it with minimal effect on the overall feature.
- **Valuable**, the issue should provide value when released to production.
- **Estimable**, the issue should make clear what is in scope and out of scope so that engineers can provide an estimate.
- **Small**, the issue must fit inside one milestone, ideally, design to delivery should take less than two weeks.
- **Testable**, the issue must be able to be tested. If it can't be tested, it can't be guaranteed to work in future.

### Vertically split

Issues should be split vertically rather than horizontally. Splitting vertically means the whole system will do something noticeably different; splitting horizontally results in trying to realize the fullest possible change in an individual component.

For example, imagine there is an epic to a CRUD feature to a site. Issues could be split up and played in the following order:

1. Read. This is independent, negotiable, estimable, small and testable. It is also valuable because in production an engineer could manually create the data to be read by users.
1. Create. This is independent, estimable, and small. It is testable because the Read functionality has already been built. It is valuable because engineers don't need to manually create data anymore, and it is negotiable because a PM may decide that engineers manually creating data is good enough.
1. Delete. Same as above, and it is valuable because engineers wouldn't need to manually delete records in production.
1. Update. Same as above, and it is often deprioritized by PMs because Create and Delete is often good enough.

## Repeated tasks

There are several maintenance tasks that need to be completed each milestone. Each iteration, an issue is opened and assigned to an engineer on a rotating basis. Those rotating tasks are:

- Review upstream changes, and open an issue to upgrade DAST if the upstream changes provide important improvements
- Review the [security dashboard](https://gitlab.com/gitlab-org/security-products/dast/-/security/vulnerability_report) for DAST and address all critical and high issues. Review the dashboards for upstream projects, [ZAP](https://gitlab.com/gitlab-org/security-products/dependencies/zaproxy) and [ZAP Extensions](https://gitlab.com/gitlab-org/security-products/dependencies/zap-extensions)

### Reaction rotation

DAST uses a reaction rotation to address support concerns. At each milestone planning meeting, an engineer is assigned as the person on reaction rotation.
Engineers rotate through the position to give everyone equal opportunity both in the role and away from the role. The milestone planning issue maintained by Product Management will include which engineer is on reaction rotation.

The reaction rotation aims to produce better support outcomes by encouraging knowledge sharing, reducing dependencies on individuals in knowledge silos, and clarifying who is responsible for responding to a support request.

Due to the unpredictable nature of support requests, it is hard to determine the impact of reaction rotation on an engineer's typical throughput. We minimize impact to predictability of DAST goals by reducing responsibilities of the person on reaction rotation.

#### In scope of role

The reaction rotation engineer should:

- Triage and respond to customer support requests via support [request for help issues](https://gitlab.com/gitlab-com/sec-sub-department/section-sec-request-for-help/-/issues/?sort=created_date&state=opened&label_name%5B%5D=Help%20group%3A%3Adynamic%20analysis&first_page_size=20). As an outcome of triage, create new issues and communicate with the product team to help assign priority.
- Triage and respond to customer support requests via Slack. Encourage customers/support teams to create support tickets because of Slack's short retention history.
- Ensure high-quality support request responses. Reach out to other engineers, teams, or people with knowledge to ensure customers get the best possible answers.
- Ensure security issues (for FedRAMP compliance or platform security) are created or updated, either manually or through automation. Follow up with creation of [Deviation Requests](/handbook/security/security-assurance/dedicated-compliance/poam-deviation-request-procedure/) if necessary.
- Act as an MR Coach for newly created community contributions.
- Continue normal DAST engineering activities.

#### Out of scope of role

The reaction rotation engineer should not:

- Directly fix issues as a result of customer support triage. The product team must prioritize any issue prior to an engineer picking it up.
- Exclusively work on community contributions, security issues, or bug fixes. These are the purview of the entire team.
- Take the time as slack time. Slack time is important in everyone's role and is captured as a constant when measuring team throughput to predict release dates.

### Security vulnerabilities triaging process

See the [Secure sub-department vulnerability management process](/handbook/engineering/development/sec/secure/#vulnerability-management-process).

### Team Organization

Our dynamic analysis testing group works primarily as 3 sub-teams, a DAST team(Go/Python/Rails), a coverage guided team(Go/Rails) and an API Security/Fuzzing team(C#/Python).

### DAST Technologies

The DAST analyzer we build relies heavily on OWASP's [ZAP](https://github.com/zaproxy/zaproxy) open source software and [ZAP Extensions](https://github.com/zaproxy/zap-extensions). This means the accuracy and quality of the DAST analyzer is impacted by the quality of the underlying OSS.

We [monitor the underlying tools](https://gitlab.com/gitlab-org/security-products/dependencies/zaproxy/-/security/dashboard) for changes and for vulnerabilities.

ZAProxy and ZAP Extensions do not have significant test coverage and therefore changes in those tools could impact DAST in unexpected ways. Since our expectation is that customers run
DAST in a CI environment and stability and security is of utmost importance, we do not necessarily ship the latest ZAP build. We actively review the ZAP changelog and evaluate whether
new updates deliver value to our customers and their use cases. We may ship a [pre-release build of ZAP or a versioned build](https://github.com/zaproxy/zaproxy/releases)
if we determine it contains valuable updates for customers and it passes our CI pipelines.

An assigned backend engineer reviews upstream updates at least monthly to identify new bug fixes or features.
Those changes are presented to the Product Manager for prioritization into DAST.

#### New DAST Technologies

The DAST analyzer is migrating towards using exclusively a browser-based DAST tool that is being built by GitLab. The tool has internally been referrred to as Browserker. Browser based DAST was released as GA in 15.7. The browser-based DAST is being delivered iteratively, with each new iteration taking over some parts of analysis previously done by ZAP, with the eventual goal of deprecating ZAP completely.

### Fuzzing Technologies

- The API Security product is built using mostly C# with some small amounts of Python. Our engineers use Windows VMs for development.
- The coverage guided fuzzing team works primarily in Go, but is also responsible for maintaining the open source fuzzers in JSFuzz, Pythonfuzz, and Javafuzz. The team also maintains the fuzzing examples in which we aim to cover all major programming languages.

### Our Approach to Fuzzing

- Fuzzing has one of the largest adoption hurdles of all the Secure products. Coverage fuzzing requires customers to write test harnesses, compile applications with special settings and generates highly technical output.

Web API Fuzzing requires generating files that allow the Web API fuzzing tool to know what parts of the application to fuzz.

Our goals is to simplify and reduce as many of the steps that a customer needs to do to get started. We want to focus our efforts on creating samples, defaults, and intelligence that will simplify fuzzing onboarding.

### Specialized Labels

We use additional labels to categorize different areas of the application.

```
~"Category:API Security"
~"Category:DAST"
```

For fuzzing we use the following labels.

```
~"fuzzing::coverage"
~"fuzzing::api"
~"fuzzing::protocol"
```

When opening up issues, the following label snippet often added:

API Fuzzing Issues:

```
/label ~"Category:API Security"
/label ~"group::dynamic analysis"
/label ~"devops::secure"
/label ~"backend"
/label ~"section::sec"
```

Coverage Fuzzing Issues:

```
/label ~"Category:Fuzz Testing"
/label ~"fuzzing::coverage"
/label ~"group::dynamic analysis"
/label ~"devops::secure"
/label ~"backend"
/label ~"section::sec"
```

DAST Issues

```
/label ~"Category:DAST"
/label ~"group::dynamic analysis"
/label ~"devops::secure"
/label ~"backend"
/label ~"section::sec"
```

### Community Contributions

The Dynamic Analysis welcomes community contributions. Community Contributors-- please make sure to add the label "group::dynamic analysis" to any Merge Requests or Issues to ensure the Dynamic Analysis team sees your contribution.

Community contributions should get prompt feedback from one of the DAST engineers. All engineers on the DAST team are responsible for working with community contributions. If a team member does not have time to review a community contribution, please tag the Engineering Manager, so that they can assign the community contribution to another team member.

### Dashboards

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="dynamic analysis" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
  {{< tableau/filters "GROUP_LABEL"="dynamic analysis" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/Flakytestissues/FlakyTestIssues" >}}
  {{< tableau/filters "GROUP_NAME"="dynamic analysis" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/SlowRSpecTestsIssues/SlowRSpecTestsIssuesDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="dynamic analysis" >}}
{{< /tableau >}}

#### Targets

For our Merge Request types, we have an initial soft target ratio of 60% features, 30% maintenance, and 10% bugs based on the [cross-functional prioritization process](/handbook/product/product-processes/#cross-functional-prioritization).  This is not a hard target and we expect to see variation in this ratio as we mature and our focus evolves.

### Support Requests

The Dynamic Analysis engineering team provides support to GitLab Support Engineers [following the process outlined in the Sec Section support project](https://gitlab.com/gitlab-com/sec-sub-department/section-sec-request-for-help/).

### OKRs

[Explore the DAST OKRs](https://app.ally.io/users/159480/objectives?time_period_id=135092&viewId=218529)

<iframe src="https://app.ally.io/public/KdMMLPthNGfIq9G" class="dashboard-embed" height="1500" width="100%" style="border:none;"> </iframe>

## Error Budgets

GitLab uses [error budgets to track availability](/handbook/engineering/error-budgets/).

- [DAST Overview Error Budget](https://dashboards.gitlab.net/d/stage-groups-dynamic_analysis/stage-groups-dynamic-analysis-group-dashboard?orgId=1)
- [DAST Error Budget Details](https://dashboards.gitlab.net/d/stage-groups-detail-dynamic_analysis/stage-groups-dynamic-analysis-group-error-budget-detail?orgId=1)

## Issue Boards

- [Dynamic Analysis Delivery Workflow Board](https://gitlab.com/groups/gitlab-org/-/boards/554644?scope=all&utf8=%E2%9C%93&state=opened&label_name%5B%5D=group%3A%3Adynamic%20analysis&label_name%5B%5D=devops%3A%3Asecure)
- [Dynamic Analysis Planning Board](https://gitlab.com/groups/gitlab-org/-/boards/1229233?label_name%5B%5D=group%3A%3Adynamic%20analysis)
- [Dynamic Analysis EM Board](https://gitlab.com/groups/gitlab-org/-/boards/1353832?scope=all&utf8=%E2%9C%93&state=opened)
- [CWE Board](https://gitlab.com/groups/gitlab-org/-/boards/2838626)
- [CWE Workflow Board](https://gitlab.com/groups/gitlab-org/-/boards/2838631)
