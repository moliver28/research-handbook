---
title: "Security Assurance Automation"
---

## A dedicated resource

The Security Assurance department is continuously growing both in terms of personnel and breadth of the program. As we continue to scale, self-operating automated processes will become a critical catalyst to driving mission success.

Security Assurance Automation Engineers are a critical dedicated resource that enable the Security Assurance department through the development, implementation, and maintenance of automated processes and controls.

## How does Security Assurance Automation operate?

### Intake process

Security Assurance Automation maintains an internal [Security Assurance Automation project](https://gitlab.com/gitlab-com/gl-security/security-assurance/governance/security-assurance-automation) that is dedicated to the intake of Security Assurance related automation requests. As these requests are received, Security Assurance Automation Engineers triage and prioritize the requests. Once requests have been prioritized, an Epic is opened at the [GitLab Security Assurance Automation](https://gitlab.com/gitlab-com/gl-security/security-assurance/governance/security-assurance-automation-subgroup) sub-group level if appropriate or handled directly in the issue requesting the work. All work related to the automation request is tracked in its associated Epic.

#### Intake process - Control Related Automations

A specific `control_related_automation_request` template exists and should be used for any requests related to automating a component of control testing. These requests will always be promoted to an epic or added to an existing control-specific epic if one already exists. GitLab strives to have a true [Continous Control Monitoring](/handbook/security/security-assurance/#security-compliance-commercial-core-competencies) program in place, and iterating to that state for controls often involves many intermediate steps. For this reason, we aim to gather as many details up front about the MVP solution that we can work on and implement immediately for a control automation. Gaining an idea of "where we're going" enables a forward looking approach and allows us to maintain a healthy backlog of work to push forward and adapt as capabilities/systems shift throughout the company.

<a href="https://gitlab.com/gitlab-com/gl-security/security-assurance/governance/security-assurance-automation/-/issues/new?issuable_template=new_automation_issue" class="btn bg-primary text-white btn-lg">Open a Security Assurance Automation Request</a>

### SLAs

The Security Assurance team uses scoped labels to identify the priority and indicate the resolution time of automation requests.

- Priority Label - Security Assurance Automation (SAA) followed by the associated priority number.
- Color - The color of the label.
- Description - Criteria the issue must fit to be assigned the label.
- Provide Solution - The time it will take to update the issue and provide a solution to the automation request.


| Priority | Color | Description | Provide Solution |
| -------- | ---------- | --------- | --- |
| `~"SAA::1"` | Red | These issues have a direct, immediate impact on business continuity AND are critical for compliance engagements. These are “drop everything so the team can do work” types of requests.                 | 1 Business Day |
| `~"SAA::2"` | Orange   | These issues have an effect on business continuity or are critical for compliance engagements. | 3 Business Days |
| `~"SAA::3"` | Yellow | These issues are day to day automations that are not critical but greatly reduce time for manual tasks by the team. The bulk of automation issues will live here.                                  | 4 Business Days |
| `~"SAA::4"` | Blue    | These issues are automation ideas that may not have a clear path forward or need additional resources to accomplish.                                          | 7 Business Days |

### What does Security Assurance Automation own?

The Security Assurance Automation team is continuously engineering new automated solutions to manual processes. Below are a few projects that the team maintains.

#### Feedback Bot

[The Feedback Bot](https://gitlab.com/gitlab-com/gl-security/security-assurance/feedback-bot) - A bot that enables team members to send private feedback to other team members through Slack.

#### Escalation Engine

[The Escalation engine](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/automation-team/escalator) - An engine that allows users to take automated actions on issues based on a predetermined set of criteria. The engine runs in a scheduled CI pipeline.

#### Dashboarding

[Tableau Dashboarding](https://10az.online.tableau.com/#/site/gitlab/views/DRAFTZenGRCObservations/ZenGRCObservationsDashboard) - Custom dashboards using our analytic tool that integrates with data sources across GitLab.

[Insight Dashboarding](https://docs.gitlab.com/ee/user/group/insights/index.html#configure-your-insights) - Custom issue analytic dashboards native to GitLab.

#### Compliance control monitoring and evidence gathering automation

Conversion of manual compliance control monitoring and evidence gathering processes to partially or fully automated processes. This will save time and reduce the opportunity for human error or oversight as our control framework expands.

[User Access Review Automations](https://gitlab.com/gitlab-com/gl-security/security-assurance/governance-and-field-security/governance/security-assurance-automation-subgroup/user-access-review-pipelines) - Automations around UAR evidence requests (non-direct sync) and automations around access request auto creation upon change request receipt.

[GitLab Project Testing and Populations](https://gitlab.com/gitlab-com/gl-security/security-assurance/governance-and-field-security/governance/security-assurance-automation-subgroup/gitlab-testing-and-populations) - Automations around GitLab.com for gathering evidence and performing automated tests.

## Security Assurance Automation SDLC

### Planning

The planning stage occurs during 1:1s, bi-weekly sprint planning meetings, Slack conversations, epic/issue comments and other channels of communication. During this stage, we gather and record the following information in the corresponding issue or epic as appropriate:

- Who is requesting the automation project?
- What are they requesting?
- Why are they requesting this project?
    - What efficiencies will be gained?
    - How much time will be saved?
- When is this project expected to be completed by?
- How is the automation expected to function?
- What is the expected time savings? (If applicable)

As a result of the planning stage, we determine the feasibility of a particular project and attempt to draw out a rough roadmap to completion.

### Analysis

During the analysis stage, we continue to gather details to support accepted projects. Projects are broken down into individual components to support an agile approach to development. Those individual components are represented as child issues under the project Epic or associated tasks/issues for smaller bodies of work.

Each issue to be worked in a given iteration is assigned a weight. The total weight of the Epic allows us to gauge the level of effort required to accomplish a particular project as well as plan for each bi-weekly iteration so we maintain a consistent velocity. We assign time weights to issues according to the [Fibonacci sequence](https://en.wikipedia.org/wiki/Fibonacci_sequence) since the complexity of a problem does not increase linearly, but rather exponentially.

| Weight | Level of Effort |
| -------- | ---------- |
| 1 | Basic - Simple, typically sub-issues that can be resolved with minimal effort and have straightforward solutions. They usually don't involve dependencies. |
| 2 | Intermediate - Issues of moderate complexity that might have a few dependencies (ARs, specialized knowledge, API connections) or require some coordination amongst team members. |
| 3 | Advanced - More complex issues that have many dependencies and require coordination across teams to complete. These issues will take more time to reach a solution. |
| 5 | Challenging - Larger issue with some complexity that require specialized knowledge or substantial problem-solving. They might involve architectural designs and decisions. These issues will typically be broken down into smaller sub-issues. |
| 8 | Complex - Larger, more complex, issues that will require architectural designs and decisions. These issues are intricate, involve complex APIs, or require extensive changes. These issues will be broken down into smaller sub-issues. |

### Design

During the design stage, we aim to accomplish the following:

- Produce a design for the minimum viable product (MVP) solution that will satisfy the automation project's requirements.
- Design components that are modular
- Design components that can be reused to accelerate future development projects

### Development and Testing

During the this stage, code is written to satisfy the requirements of a particular project. Development is accomplished in an iterative manner through many small changes. Project stakeholders may be consulted to ensure continued alignment with project expectations as code is being written.

Security Assurance Automation Engineers run tests on their code to identify bugs, vulnerabilities, and usability conflicts.

### Implementation

During this stage, code is moved from the Sec Auto Dev pipeline into the Sec Auto Live pipeline. If an automation request requires web hosting or a server, the automation will live in the Sec Auto Live private GCP instance.

Once the code is ready for final review, a team member from Security Assurance will review the code and merge the branch. The project is moved to a "Done" state when the solution is operating in an automated private pipeline.

### Maintenance

Routine and break-fix maintenance of automated controls and processes is performed by Security Assurance Automation Engineers for automation related to the sub-department. Pro-active requests for maintenance can submitted through the [Security Assurance Automation project](https://gitlab.com/gitlab-com/gl-security/security-assurance/governance/security-assurance-automation/-/issues/new?issuable_template=new_automation_issue).

Maintenance tasks will be tracked via GitLab Issues similar to all other automation tasks.

## Maturity Model - (Non-control automation)

Maturity Model 1: At this stage, the primary objective is to establish the foundational aspects of automation functionality. The process involves a combination of both manual and automated steps. Data acquisition typically relies on manual pulling from sources, often utilizing .csv files. Basic scripts and tools are employed to execute tasks.

Maturity Model 2: In this phase, the emphasis is on advancing workflow automation by integrating more sophisticated components. Limited manual data extraction may persist, though the focus shifts towards leveraging enhanced scripting and tools. This stage is characterized by semi-automated processes that are not yet self-service and may require manual initiation.

Maturity Model 3: In this advanced stage, the primary objective is achieving a high level of automation while reducing reliance on manual data extraction. Integration with APIs is pivotal to eliminate manual intervention. The solution becomes self-service, with processes executed seamlessly within pipelines on scheduled intervals.

## Control Automation Maturity

Assessing control automation maturity in a `current state` and also a `potential state` can be helpful when considering where we'd like to move control tests and monitoring to state-wise and what the estimated benefit is from a strictly time-saving standpoint. To assess this, a general qualitative and quantitative definition can be used.

When considering `current` vs. `potential`, it's important to bear in mind that control processes and/or control-test processes may require adjustment to enable automation. For example, if a current process has high variability in how it operates with inconsistent workflows and record keeping, this may be something that we are able to account for when manually assessing the design and operation of the control. But, it's a barrier to automating testing into the later maturity stages and keeps manual oversight as a critical step in control monitoring (*on top of the obvious concern that a highly variable process is likely difficult to operate well and introduces significant risk of the control not operating as intended*).

### Control Automation Maturity Scale

| Level | Qualitative Definition                                                                                                                                                                                                                                                                             | Quantitative Definition         | Scalability Potential |
|-------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------|-----------------------|
| 1     | The majority of the testing process is manual, including evidence collection.                                                                                                                                                                                                                       | <10% testing workload automated | Low                   |
| 2     | There is minor automation in place (e.g. most evidence is collected automatically or upon a simple self-service request).                                                                                                                                                                            | ~30% testing workload automated | Low                   |
| 3     | There is moderate automation in place (e.g evidence is collected and compiled almost entirely through scheduled or self-service automation. Testing decisions are entirely human generated.                                                                                                        | ~60% testing workload automated | Moderate              |
| 4     | The control is automated to the point of decisioning for some components of the control (e.g. evidence is collected and compiled for review automatically. Some of the testing with 100% confidence in compiled evidence is conducted automatically and remaining testing is performed by a human). | ~80% testing workload automated | High                  |
| 5     | The control is automated entirely up to the point of human review over minor areas (e.g. evidence is collected and compiled with testing results, very few records require manual review and compiled testing provides insight to the reviewer for their consideration).                          | ~90% testing workload automated | Excellent             |
| 6     | The control is automated to the furthest extent. Alerting is the primary form of notice of control effectiveness. Testing documentation is done in the form of outputted reports vs. compiled tests.                                                                                               | ~95% testing workload automated | Excellent             |

### How to use the scale?

The assessed levels are intended to be formed by input from members of Security Assurance Automation for technical input and feasibility assessment as well as members of Security Compliance for current state understanding and knowledge of where the compliance program is prioritizing in the future.

The scale can be applied across controls but more accurate and likely is that the scale is applied across system/control combinations since many controls are designed and operate differently depending on the environment.

#### Assessing Current Level

When assessing control automation maturity, the first step is to assess the current state of maturity. While there may be some level of subjectivity in this, the qualitative definitions should help inform the assessed current level. Generally, this level will not change unless there are significant control changes OR work is completed advancing the current level of control automation.

Once current level is assessed - add the scoped label `ControlAutomationCurrentLevel::Level-X` to the epic/issue.

#### Assessing Potential Level

Next, the potential should be assessed. There is, inevitably, subjectivity in this assessment. This is intended to be a realistic but ambitious assessment of where we think the control's testing/monitoring could be matured to. When determining a control's potential level, adding a brief justification will help support that rating decision. Something like the "final phase" of the [control automation issue](#intake-process---control-related-automations) that is opened should already have this information as this is the end state we're working toward but if it does not already exist, please briefly justify the rating.

Potential ratings can and should change (hopefully for the better) through technology changes, process changes etc. Not every control will have a potential rating of 6 immediately, and that's OK. To reach the higher levels of maturity (4+), process changes from a control operator and assessor standpoint may need to adapt.

Once current level is assessed - add the scoped label `ControlAutomationPotentialLevel::Level-X` to the epic/issue.

 *Note: When assessing potential, try to be realistic but ambitious. If you're rating potential as a 6 because you think that if the entire platform a process is currently operated in were to change, the process could reach a level 6 but otherwise the potential level is a level 3, that may not be an appropriate rating. On the other hand, if you think a potential level is a 6 if the team that operates the control were to moderately adapt their processes, that may be an appropriate rating.*

## <i class="fas fa-id-card" style="color:rgb(110,73,203)" aria-hidden="true"></i> Contact the Team

[Donovan Felton](/handbook/company/team/#dfelton), @dfelton, Security Assurance Engineer, Automation

- [Automation design, development, and implementation]({{< ref "security-assurance-automation" >}})
- [GRC application administration]({{< ref "security-assurance#core-tools-and-systems-1" >}})
