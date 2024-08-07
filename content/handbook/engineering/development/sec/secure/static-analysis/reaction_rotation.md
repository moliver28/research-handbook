---
title: "Static Analysis Group Reaction Rotation"
---

## Reaction Rotation

Each iteration, two member of the Static Analysis blue team will be assigned the role of Reaction Rotation, one as Primary and the other as Secondary. The assigned engineers will be marked as primary and secondary in the "Reaction Rotation" section of the planning issue. For example, @craigmsmith was assigned as Primary and @adamcohen as Secondary in [17.3](https://gitlab.com/gitlab-org/gitlab/-/issues/472073#reaction-rotation).

## Primary Reaction Rotation

### Responsibilities

The Reaction Rotation role has three main responsibilities:

- [SAST Analyzer Vulnerability Management](#sast-analyzer-vulnerability-management)
- [Requests for Help](#requests-for-help)
- [Slack Questions](#slack-questions)

#### SAST Analyzer Vulnerability Management

The vulnerabilities for each SAST/IaC analyzer need to be triaged and addressed.

1. Go to the [list of vulnerabilities for SAST/IaC (sorted by SLO)](https://gitlab.com/gitlab-org/gitlab/-/issues/?sort=due_date_desc&state=opened&label_name%5B%5D=group%3A%3Astatic%20analysis&label_name%5B%5D=bug%3A%3Avulnerability&not%5Blabel_name%5D%5B%5D=Vulnerability%3A%3AVendor%20Package%3A%3AFix%20Unavailable&not%5Blabel_name%5D%5B%5D=Vulnerability%3A%3AVendor%20Package%3A%3AWill%20Not%20Be%20Fixed&not%5Blabel_name%5D%5B%5D=Vulnerability%3A%3AVendor%20Base%20Container%3A%3AFix%20Unavailable&not%5Blabel_name%5D%5B%5D=Vulnerability%3A%3AVendor%20Base%20Container%3A%3AWill%20Not%20Be%20Fixed&first_page_size=20)
1. Go through unassigned, prioritized bugs, by severity
1. Assign yourself
1. Fix the bug / determine whether it needs to remain open / provide a workaround, tag EM & PM 
1. Update the issue

#### Requests for Help

Periodically, questions are posted in the [section-sec-request-for-help](https://gitlab.com/gitlab-com/sec-sub-department/section-sec-request-for-help) project. During Reaction Rotation, the assigned engineer should review the [Static Analysis Requests for Help](https://gitlab.com/gitlab-com/sec-sub-department/section-sec-request-for-help/-/issues?first_page_size=20&label_name%5B%5D=Help%20group%3A%3Astatic%20analysis&sort=created_date&state=opened) and engage with each issue. If a request for help highlights a bug or feature request, create an issue for the bug, close the request for help and tag `@gitlab-org/secure/static-analysis/blue`, EM and PM so that the bug can be prioritized.

#### Slack Questions

Check the [Static Analysis Slack Channel](https://gitlab.enterprise.slack.com/archives/CLA54H7PY) and respond to any questions asked or delegate/ping a person that may know the answer. As with [Requests for Help](#requests-for-help), if the question concerns a bug or feature request, create an issue and tag `@gitlab-org/secure/static-analysis/blue`, EM and PM so that it can be prioritized.

## Secondary Reaction Roatation

### Responsibilities

The Secondary Reaction Rotation role is to support the Primary, stepping in only when the Primary is unavailable due to being over capacity or out of the office. In such instances, the Secondary will assume the same responsibilities as the Primary, ensuring continuity and efficiency in managing reaction rotation tasks. The goal is to provide seamless coverage, maintaining the same standards and quality of service as expected from the Primary.
