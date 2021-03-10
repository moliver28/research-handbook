---
layout: handbook-page-toc
title: Secure, Composition Analysis
description: "The Composition Analysis group at GitLab is charged with developing solutions which perform Dependency Scanning and License Compliance."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Composition Analysis

The Composition Analysis group at GitLab is charged with developing solutions which perform
[Dependency Scanning](/direction/secure/composition-analysis/dependency-scanning/),
and [License Compliance](/direction/secure/composition-analysis/license-compliance/).
See [the exhaustive list of projects](#projects) the group maintains.

## Common Links

* Slack channel: #g_secure-composition-analysis
* Slack alias: @secure_composition_analysis_be
* Google groups: composition-analysis-be@gitlab.com

## How we work

### Workflow

The Composition Analysis group largely follows GitLab's [Product Development Flow](/handbook/product-development-flow/).

#### Experiments

In addition to the above workflows, the Composition Analysis group can be involved in some experiments, which might temporarily alter how we work

- [Leverage issue's health status to report progress - Composition Analysis](https://gitlab.com/gitlab-org/secure/general/-/issues/130)

### Reaction rotation

On top of our development roadmap, engineering teams need to respond to additional requests (support, community contributions, security vulnerabilities).
This increases context switching and depending on the load this can drastically impact our ability to achieve our plan.
As a result, the Composition Analysis Backend team is actively reserving capacity each iteration to triage and address these requests.
Each month, an engineer is designated to handle these responsibilities.
There is no formal designation process yet, volunteers are welcome and rotation is expected.

#### Responsibilities

1. Monitor slack channels for questions, support requests, and alerts. While other team members may respond to these requests, the engineer assigned to the reaction rotation is expected to handle them primarily.
    - [#g_secure-composition-analysis](https://gitlab.slack.com/archives/CKWHYU7U2)
    - [#s_secure](https://gitlab.slack.com/archives/C8S0HHM44)
    - [#s_secure-alerts](https://gitlab.slack.com/archives/CAU9SFKNU) 
1. Triage vulnerabilities reported on the projects we maintain and help resolving them depending on their priority. (See [Security vulnerabilities triaging process](#security-vulnerabilities-triaging-process))
1. Triage and work with community contributors to help drive their MRs to completion. (See [Community contributions triaging process](#community-contributions-triaging-process))
1. Triage bugs and resolve them when given `~priority::1`. (See [Bugs triaging process](#bugs-triaging-process))
1. Triage infradev issues and resolve them when given `~priority::1`. (See [Infradev triaging process](#infradev-triaging-process))

These items must be triaged continuously throughout the month which means they must be checked multiple times a week.

### Security vulnerabilities triaging process

1. Leverage the group level [Vulnerability Report of security-products/analyzers](https://gitlab.com/groups/gitlab-org/security-products/analyzers/-/security/vulnerabilities/?state=DETECTED&state=CONFIRMED&severity=HIGH&severity=CRITICAL&projectId=18446184&projectId=17987891&projectId=17450826&projectId=15369510&projectId=13922331&projectId=13150952&projectId=9450197&projectId=9450195&projectId=9450192&projectId=9396716&projectId=9358979&projectId=6126012) with filters to focus on vulnerabilities with High and Critical severity and reported on the relevant projects.
1. For each "Detected" item, investigate and either [dismiss it](#dismissing-a-vulnerabilty) or [create an issue](#creating-security-issues). When the vulnerability is impacting a dependency (software library, system library, base image, etc,), possibility of upgrade should be evaluated first, and investigate the issue only when the upgrade is not straightforward.

If necessary, escalate to our [Application Security team](/handbook/engineering/security/security-engineering-and-research/application-security/) to establish whether there's indeed a threat.

#### Dismissing a vulnerability

When there is no doubt a vulnerability is a false-positive, it can be "Dismissed".
When doing so, make sure to comment on the vulnerability status change to explain why.

#### Creating Security issues

Unfortunately, creating a security issue can't be done yet via the "create issue" button from the vulnerability page or security dashboard as this only works when creating an issue in the same project where the error was reported.
Instead, in our workflow we open all our issues in [the main GitLab project](https://gitlab.com/gitlab-org/gitlab/issues).
As a workaround, you can copy and paste the content of the vulnerability page (this keeps markdown formatting!). Please also follow our Security guidelines about [creating new security issues](/handbook/engineering/security/#creating-new-security-issues).
You can leverage quick actions to add the necessary labels.

    /confidential

    /label ~security ~bug
    /label ~"section::securedefend" ~"devops::secure" ~"group::composition analysis"

    <!-- depending on the affected project: -->
    /label ~"Category:Container Scanning"
    /label ~"Category:Dependency Scanning"
    /label ~"Category:License Compliance"
    /label ~"Category:SAST"

It's important to add the `~security` label as described above, because the [`AppSec Escalation Engine`](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/automation-team/appsec-escalator/-/blob/3a7e8a4baed7b7e54039558f4f76328046543a0c/README.md#L3) will automatically pick up any issues with this label and add additional labels `~security-sp-label-missing` and `~security-triage-appsec` as well as mention the issue in the `#sec-appsec` Slack channel. At this point, the [Stable Counterpart](/handbook/engineering/development/secure/#stable-counterparts) or [Application Security team](/handbook/engineering/security/security-engineering-and-research/application-security/) triage person will pick up the issue and assign a severity as part of the appsec triage rotation. 

Developers reporting the security issue should help the [Application Security team](/handbook/engineering/security/security-engineering-and-research/application-security/) assess the impact of the vulnerability, and update the issue description with an `Impact` section. 

If immediate feedback is required, then add a comment to the vulnerability issue with an `@`-mention directed at one of the Security Engineers listed in the [Stable Counterpart](/handbook/engineering/development/secure/#stable-counterparts) section, or ping them on slack.

### Community contributions triaging process

1. Leverage the group level [list of Merge Requests](https://gitlab.com/groups/gitlab-org/security-products/analyzers/-/merge_requests?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=group%3A%3Acomposition%20analysis) with the Composition Analysis group label.
1. For each open Merge Request whose author is not a GitLab team member, investigate and help moving it forward.

### Bugs triaging process

1. Leverage the [Bug scrub issues board](https://gitlab.com/groups/gitlab-org/-/boards/1077546?scope=all&utf8=%E2%9C%93&label_name[]=bug&label_name[]=devops%3A%3Asecure&label_name[]=group%3A%3Acomposition%20analysis).
1. For each open issue that has no Priority label ("Open" column), shortly investigate the bug (< 1h) and comment with your findings. Ideally you'd suggest Priority and Severity levels to guide PM decision.

### Infradev triaging process

1. Leverage the [Infra/Dev issues board](https://gitlab.com/groups/gitlab-org/-/boards/1193197?scope=all&utf8=%E2%9C%93&label_name[]=infradev&label_name[]=section%3A%3Asec) for Sec section. We target the whole section on purpose to cover a larger area and stay aware of other group's issues that could also affect us.
1. For each open issue that has no Priority label ("Open" column), shortly investigate the issue (< 1h) and comment with your findings. Make sure correct stage and group label are applied. 

Please refer to our [infradev process](https://about.gitlab.com/handbook/engineering/workflow/#infradev) for more details.

### Tech-debt and tooling triaging process

To help our Product Manager decide which tech-debt and tooling issues to include in the upcoming milestone, the engineering teams assign them a [priority label](https://about.gitlab.com/handbook/engineering/quality/issue-triage/#priority).
We regularly review unprioritized issues using these boards:

- [tech-debt issues](https://gitlab.com/groups/gitlab-org/-/boards/2168528?label_name[]=group%3A%3Acomposition%20analysis&label_name[]=technical%20debt)
- [tooling issues](https://gitlab.com/groups/gitlab-org/-/boards/2168528?label_name[]=group%3A%3Acomposition%20analysis&label_name[]=tooling)

## Projects

The Composition Analysis group maintains several projects to provide our scanning capabilities.

### Shared

- [common library](https://gitlab.com/gitlab-org/security-products/analyzers/common)

### Dependency Scanning

- [gemnasium analyzer](https://gitlab.com/gitlab-org/security-products/analyzers/gemnasium)
- [gemnasium-python analyzer](https://gitlab.com/gitlab-org/security-products/analyzers/gemnasium-python)
- [gemnasium-maven analyzer](https://gitlab.com/gitlab-org/security-products/analyzers/gemnasium-maven)
- [gemnasium-maven-plugin](https://gitlab.com/gitlab-org/security-products/analyzers/gemnasium-maven-plugin)
- [gemnasium-gradle-plugin](https://gitlab.com/gitlab-org/security-products/analyzers/gemnasium-gradle-plugin)
- [bundler-audit analyzer](https://gitlab.com/gitlab-org/security-products/analyzers/bundler-audit)
- [Retire.js analyzer](https://gitlab.com/gitlab-org/security-products/analyzers/retire.js)

Additional notes:

- [gemnasium-db](https://gitlab.com/gitlab-org/security-products/gemnasium-db) is maintained by [the Vulnerability Research group](/handbook/engineering/development/secure/vulnerability-research/).
- [npm-audit analyzer](https://gitlab.com/gitlab-org/security-products/analyzers/npm-audit) is not yet part of our public offering and maintained by [the Vulnerability Research group](/handbook/engineering/development/secure/vulnerability-research/).

### License Compliance

- [License-finder analyzer](https://gitlab.com/gitlab-org/security-products/analyzers/license-finder)
- [License-management](https://gitlab.com/gitlab-org/security-products/license-management) is the original project that needs to be maintained until [the migration](https://gitlab.com/gitlab-org/gitlab/-/issues/215933) is completed.

## Monitoring

- [Stage Group dashboad on Grafana](https://dashboards.gitlab.net/d/stage-groups-composition_analysis/stage-groups-group-dashboard-secure-composition-analysis?orgId=1)

### Largest Contentful Paint (LCP) 

As part of FY21-Q4 OKRs, we've started tracking and monitoring the Largest Contentful Paint for our web pages. The results can be viewed on [this Grafana dashboard](https://dashboards.gitlab.net/d/sftijGFMz/sitespeed-lcp-leaderboard?from=now-90d&orgId=1&to=now&var-browser=chrome&var-connectivity=cable&var-domains=gitlab_com&var-function=median&var-namespace=sitespeed_io&var-pages=Secure_Dependency_List&var-pages=Secure_License_Compliance&var-pages=Secure_Security_Configuration&var-path=desktop).


