---

title: Breach and Attack Simulation (BAS) Single-Engineer Group
---







## Breach and Attack Simulation (BAS) Single-Engineer Group

The Breach and Attack Simulation (BAS) SEG is a [Single-Engineer Group](/handbook/company/structure/#single-engineer-groups) within our [Incubation Engineering Department](/handbook/engineering/development/incubation/).

### Updates

The Single Source of Truth for status is tracked in the [Breach and Attack Simulation epic](https://gitlab.com/groups/gitlab-org/-/epics/10579).

### Product Development Group affinity

* [Composition Analysis group in the Secure stage](/handbook/product/categories/#composition-analysis-group) is charged with Dependency Scanning and [Operational] Container Scanning which both lend themselves to the reconnaissance.
* [Dynamic Analysis group in the Secure stage](/handbook/product/categories/#dynamic-analysis-group) owns API Security and DAST which can be expanded upon by emulating attacker behavior.
* [Threat Insights group in the Govern stage](/handbook/product/categories/#threat-insights-group) handles Vulnerability Management, Dependency Management, and Software Bill of Materials which all are great segues into targeted BAS scanning.
* [Vulnerability Research group in the Secure stage](/handbook/product/categories/#vulnerability-research-group) will provide benchmarking of our own scanners which can be augmented by extended coverage. The GitLab Advisory Database can be used as a source of threat intelligence for lining up vulnerabilities to target for emulation.

### Scope

Running exploits to confirm vulnerabilities is inherently risky. We must be intentional in how we define what is in scope or out of bounds for assessments.

This scope may include:

* A service container created inside of GitLab CI using [Services](https://docs.gitlab.com/ee/ci/services/#services).
* A self-hosted test server

Configuring targets is done inside a project's [Security Configuration](https://docs.gitlab.com/ee/user/application_security/configuration/). For example scan targets can currently be configured inside the DAST CI/CD configuration and DAST profiles for defining dynamic or on-demand targets.

Due to the added risk of simulating attacker behavior this scope **should not** include a production server. The documentation for [authenticated DAST scans](https://docs.gitlab.com/ee/user/application_security/dast/authentication.html) sets a clear precedent with a warning. An equivalent warning should be included in documentation surrounding any BAS focused scanners.

### Features

Breach and Attack Simulation has several areas that can be focused on. The goal for this SEG is to iterate on existing Secure functionality to highlight high-value targets found through reconnaissance through experiments around further features mentioned below.

#### Recon

To attack something one must first know what targets are available.

Some attacker techniques include:

* Enumerate subdomains of a target
* Port scanning known hosts

Inside of GitLab CI we're able to leverage the following:

* Manual entry of in/out of scope hosts (or URLs) to scan for vulnerabilities
  * These hosts should be accessible from the [GitLab Runner](https://docs.gitlab.com/runner/) you're using.
  * If using [Runner SaaS](https://docs.gitlab.com/ee/ci/runners/index.html) these hosts **must** be internet accessible.
* Use existing vulnerability report, e.g. of [Security scanner integration](https://docs.gitlab.com/ee/development/integrations/secure.html#security-scanner-integration), which includes hosts or URLs along with detected vulnerabilities.
* Service containers to run a specific ephemeral target.
  * [Accessing the services](https://docs.gitlab.com/ee/ci/services/#accessing-the-services) documents how to configure/access hostnames.
  * The default ports of an image can be inspected using `docker image inspect "$IMAGE"` under the path `.[0].Config.ExposedPorts`.

The following tools could come in handy for port scanning or subdomain enumeration phases of reconnaissance:

* Automated tools such as [Flan Scan](https://github.com/cloudflare/flan)?
* [subfinder][] allows enumeration of subdomains.
* [naabu][] allows quick enumeration of available ports for a list of hosts.

#### External Penetration

When a target system/application exposes vulnerabilities on a network an external system may exploit them.

After recon we discover which vulnerabilities we believe to be exploitable. We can then run exploits against vulnerabilities where there's a low risk of causing actual damage (or in a sandbox environment).

Dynamic Analysis functionality has been updated to [add active checks](https://gitlab.com/groups/gitlab-org/-/epics/8421) as well as callback checks which enable proving exfiltration of data during simulated attacks.

#### Privilege Escalation

In many cases privileges for the compromised service or user account may not be sufficient for collection or exfiltration of sensitive data. Through a secondary exploit an attacker can escalate to a more privileged account.

#### Command & Control

Command and Control, a.k.a.  as C2, is the process of creating a persistent channel for executing further commands after an initial compromise to maintain control of a compromised system.

Remote code execution vulnerabilities that are exploitable naturally give us the ability to simulate this behavior.

#### Lateral Movement

Once an attacker has compromised an asset in a network they gain even further network access via lateral movement from one asset to another.

#### Collection & Data Exfiltration

In main cases attackers are looking for data or sensitive information they can use for further compromise or financial gain. In many cases network access is restricted so obfuscation or unconventional methods must be used to get this data off of the target network.

To confirm exfiltration we could set up listeners on DNS, TCP, HTTP, etc. to confirm we can initiate egress including unique identifiers.
One such tool we could leverage is [interactsh][] which is designed for testing out-of-band (OOB) interactions.

Progress of this portion can be monitored in this issue at [gitlab-org/gitlab#333751](https://gitlab.com/gitlab-org/gitlab/-/issues/333751).

#### Destruction (Simulated)

In rarer cases an attacker's goal is simply denial of a service through maliciously destroying data or code required for a target system to run applications.

Evidence of code execution or command injection is sufficient for simulated destruction in some ways. Alternative proof of destruction could be a process similar to [Secret Detection post-processing and revocation](https://docs.gitlab.com/ee/user/application_security/secret_detection/post_processing.html).

We could introduce a feature flag in DAST to enable destructive behaviour when code injection is viable.
We **must** perform domain/subdomain validation before attempting to run destructive behaviour from Runners.

### Background

The complexity of public cloud networks means that a user may have ingress and egress points that are not adequately protected.
Using AI/ML, this SEG aims to determine what are the most vulnerable parts of a customers network, and suggest remedies to resolve.

This involves multiple entry point testing which can be simlated by building up a graph of all:

* Computers
* Devices
* Libraries
* Networks
* People
* Software (installed or specifically running)

Data sets:

* Authenticated datasets (audit keys for AWS/GCP to build out network maps, extract DNS records etc)
* Certificate Transparency logs
* Subdomain brute forcing
* URL collection/datasets

The first iteration where can immediately add value is to provide our users with asset discovery/attack surface & inventories. 

### Jobs to be Done

### Goals

Utilize JTBD and job statements to:

* Understand our users' underlying motivations
* Validate identified problem areas within the vulnerability assessment experience
* Create a common language across teams for better collaboration when working on improving the experience for GitLab vulnerability assessment
* Create a transparent view for our stakeholders into the current and future state of the product

### JTBD

#### Curate attack scenarios

| Job statements | Maturity | Research | Roadmap |
|----------------|----------|----------|---------|
| When configure run security scans, I want to run curated attack scenarios, so that I don't need to verify each individual vulnerability manually. | ![Category Maturity Scorecard Score: Unknown][] | [Issue](https://gitlab.com/gitlab-org/incubation-engineering/breach-and-attack-simulation/meta/-/issues/7) | [Issue](https://gitlab.com/gitlab-org/incubation-engineering/breach-and-attack-simulation/meta/-/issues/8) |

#### Report on attack scenarios

| Job statements | Maturity | Research | Roadmap |
|----------------|----------|----------|---------|
| When I have performed a DAST scan, I want to view exploited vulnerabilities, so I can prioritize remediation and mitigation. | ![Category Maturity Scorecard Score: Unknown][] | [Issue](https://gitlab.com/gitlab-org/incubation-engineering/breach-and-attack-simulation/meta/-/issues/9) | [Issue](https://gitlab.com/gitlab-org/incubation-engineering/breach-and-attack-simulation/meta/-/issues/10) |
| When I have performed a non-DAST scan, I want to view exploited vulnerabilities, so I can prioritize remediation and mitigation. | ![Category Maturity Scorecard Score: Unknown][] | [Issue](https://gitlab.com/gitlab-org/incubation-engineering/breach-and-attack-simulation/meta/-/issues/12) | [Issue](https://gitlab.com/gitlab-org/incubation-engineering/breach-and-attack-simulation/meta/-/issues/11) |

#### Simulate attack scenarios

| Job statements | Maturity | Research | Roadmap |
|----------------|----------|----------|---------|
| When I run my service inside a GitLab CI Service container, I want to simulate attacks, so that I can see which detected vulnerabilities are exploitable. | ![Category Maturity Scorecard Score: Unknown][] | [Issue](https://gitlab.com/gitlab-org/incubation-engineering/breach-and-attack-simulation/meta/-/issues/13) | [Issue](https://gitlab.com/gitlab-org/incubation-engineering/breach-and-attack-simulation/meta/-/issues/14) |
| When I run my service inside a pre-production environment, I want to simulate attacks against my own Kubernetes environment, so that I can see which detected vulnerabilities are exploitable. | ![Category Maturity Scorecard Score: Unknown][] | [Issue](https://gitlab.com/gitlab-org/incubation-engineering/breach-and-attack-simulation/meta/-/issues/15) | [Issue](https://gitlab.com/gitlab-org/incubation-engineering/breach-and-attack-simulation/meta/-/issues/16) |
| When I have successfully simulated an attack, I want to call out to a dedicated callback server, so that I can simulate exfiltration of data. | ![Category Maturity Scorecard Score: Unknown][] | [Issue](https://gitlab.com/gitlab-org/incubation-engineering/breach-and-attack-simulation/meta/-/issues/18) | [Issue](https://gitlab.com/gitlab-org/incubation-engineering/breach-and-attack-simulation/meta/-/issues/17) |
| When I have successfully simulated an attack, I want to detect accessible services on the network, so that I can view lateral movement potential. | ![Category Maturity Scorecard Score: Unknown][] | [Issue](https://gitlab.com/gitlab-org/incubation-engineering/breach-and-attack-simulation/meta/-/issues/20) | [Issue](https://gitlab.com/gitlab-org/incubation-engineering/breach-and-attack-simulation/meta/-/issues/19) |

[Category Maturity Scorecard Score: Unknown]: https://img.shields.io/badge/CM%20Score-—-777777?style=for-the-badge
[interactsh]: https://github.com/projectdiscovery/interactsh
[naabu]: https://github.com/projectdiscovery/naabu
[subfinder]: https://github.com/projectdiscovery/subfinder
