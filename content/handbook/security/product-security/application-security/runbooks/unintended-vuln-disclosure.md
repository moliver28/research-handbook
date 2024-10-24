---
title: Handling unintended vulnerability disclosures
summary: The runbook for handling different scenarios of unintended vulnerability disclosures.

---

## Summary

There are situations where details about an unfixed (or insufficiently fixed) vulnerability can be inadvertently made public. This runbook includes specific processes for AppSec to follow in these situations.

## Instructions for paging SIRT

For actions outlined below that involve paging SIRT, please check the "page immediately box" for issues with severity above ~severity::4.

### Vulnerabilities fixed in canonical instead of security mirrors

#### Immediate response

1. Check whether the security issue is OK to be addressed in public. This is usually denoted by ~"security-fix-in-public" label and if this label is not there proceed to next step.
1. The AppSec engineer should page SIRT by using `/security` in Slack.

#### Mitigation

1. SIRT performs a [commit cleanup](https://internal.gitlab.com/handbook/security/security_operations/sirt/operations/ttps/procedures/accidental_commit_cleanup/)

#### Follow-up actions

1. SIRT performs monitoring to look for active exploitation attempts against the vulnerability.

### Insufficient fix of a different or related vulnerability

#### Immediate response

1. If the vulnerability is critical, SIRT must be paged via /security so they can begin working on detection and mitigation.
1. AppSec should create a new issue with the appropriate priority and severity labeling. The appropriate EM / PM should be pinged so they can work on it immediately.

#### Mitigation

1. Same as any other vulnerability report.

#### Follow-up actions

1. If the fix was found out to be insufficient shortly after it went out, consider opening an [AppSec review](/handbook/security/security-engineering/application-security/runbooks/review-process/) for that feature.
1. Consider opening an [RCA issue](/handbook/security/root-cause-analysis/) to figure out why the fix was insufficient.

### HackerOne reporter decides to make something public prior to a fix being made

#### Immediate response

1. The AppSec engineer should immediately page SIRT by using `/security` in Slack.

#### Mitigation

1. Bump up the SLA windows to urge the developers to work on fixing the vulnerability on priority.
1. Consider scheduling a security release, regular or critical - depending on the severity of the vulnerability.

#### Follow-up actions

1. Ban the HackerOne researcher from the program following [the code of conduct violation](/handbook/security/product-security/application-security/runbooks/hackerone-process/#addressing-rules-of-engagement-or-code-of-conduct-violations) process.
1. Communicate the situation to the Legal team via the `#legal` Slack channel or pinging them into the issue, so they can determine what (if any) steps need to be taken from a legal perspective
1. Involve Communications to alert any potentially impacted customers.

### Communication mistakes or other unintentional leaks

For the following:

- Titles revealed via email inbox leak in a YouTube video
- Someone accidentally gives too much information to a community member or customer

#### Immediate response

1. Figure out if enough information was leaked for an attacker to build a PoC to exploit the vulnerability. If yes, page SIRT by using `/security` in Slack.

#### Mitigation

1. [Make the YouTube video private by following these instructions](/handbook/marketing/marketing-operations/youtube/#make-private-quickly).
1. Communicate with the EMs, PMs, and development teams to urge them to work on fixing the vulnerability as a priority.
1. Consider starting a conversation with Delivery, Dedicated, and the relevant development teams about potentially scheduling an ad-hoc critical security release, depending on the severity of the vulnerability.

#### Follow-up actions

1. Reach out to the team member that caused the leak, and educate them on keeping [vulnerability-related data](https://internal.gitlab.com/handbook/security/data_classification/#data-classification-index) SAFE.

For the following:

- Vulnerability issue wasn't made as confidential, or accidentally becomes visible to everyone
- Accidentally added to the security release blog post even though the fix didn't make it into the release

#### Immediate response for Communication mistakes or other unintentional leaks

1. Change the confidentiality of the issue.
1. Edit the blogpost and ping the SRE on-call to merge it right away.
1. Page SIRT by using `/security` in Slack.

#### Mitigation for Communication mistakes or other unintentional leaks

1. Communicate with the EMs, PMs, and development teams to urge them to work on fixing the vulnerability as a priority.
1. Consider starting a conversation with Delivery, Dedicated, and the relevant development teams about potentially scheduling an ad-hoc critical security release, depending on the severity of the vulnerability.

#### Follow-up actions for Communication mistakes or other unintentional leaks

1. Was the confidentiality of the issue incorrectly changed by a team member? If yes, educate them on keeping [vulnerability-related data](https://internal.gitlab.com/handbook/security/data_classification/#data-classification-index) SAFE.
1. Ping the AppSec release managers about the incident, as before the release goes out, it is carefully vetted for such mishaps.
1. Addition of vulnerability details to the blogpost is automated by the Delivery team. Reach out to them to figure out if this was somehow a bug in their tooling.
