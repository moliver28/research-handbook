---
title: "Application Security Review Process"
---
<!-- markdownlint-disable MD052 -->

This page details the application security review process for appsec engineers.
The purpose of application security reviews are to proactively discover and
mitigate vulnerabilities in GitLab developed or deployed applications in order
to reduce risk and ultimately help make the company's mission successful.

An application security review may include any or all of the following stages:

- Threat modeling
- In-depth code review
- Dynamic testing

The results of each stage will inform the review done in the next stage.
Ideally, all new features would receive some threat modeling, with
the latter two stages being performed based on the risk profile. Features
already in development or production can receive an appsec review as
well. The testing done is dependent on the circumstances.

### What does an application security review mean for the team owning the feature?

A security review conducted by the application security team is non-blocking.
This means that the team owning the feature should continue with their development plan,
and the expected time investment should be limited to the time necessary to answer
questions asynchronously.

Security issues found, if any, will be triaged following [the standard process][4].
Application security reviews allow us to discover vulnerabilities that exist in GitLab
before they're discovered by a third party and, if the review is done for new features,
we might catch the vulnerabilities even before they make it into a release. It reduces
risk, gives us a better
understanding of the threat model of the given feature, and allows us to proactively
mitigate vulnerabilities.

## Roles & Responsibilities

### Teams

The team owning the feature should proactively involve the Stable Counterpart in
Epics, Issues, and/or MRs which might require a review or their attention. This is primarily the responsibility of the team's Engineering Manager(s) and the Engineer(s) working on the Issue / MR. Ideal trigger points (in order of preference) are when the Epic/Issue/MR is created/updated, when an engineering proposal is updated, or when an engineer is working on the MR.

Teams should have a bias towards involving the Stable Counterpart, to prevent potential
security-sensitive changes from being overlooked.

### Stable Counterparts

One of the goals of the [stable counterpart][3] is to help identify features that
need security review in the area to which they are assigned. Each week Stable Counterparts should
 review Issue boards and recorded weekly team meetings as part of this.

An Application Security team member is on rotation each week to triage Application Security Reviews.

## What Should Be Reviewed?

The application security review queue is a priority queue of application
features for security review. The priority can range from `priority::1` (Critical)
to `priority::4` (Low/Backlog).

Some guidelines for which features should be added to the queue are:
- All new major features
- Features that have had repeat vulnerabilities
- Features related to authorization or authentication
- Features that handle [Red or Orange data][1]
- Features that work with cryptography or other data protection solutions
- Features which touch on topics mentioned in the [secure coding guidelines](https://docs.gitlab.com/ee/development/secure_coding_guidelines.html)

The idea is to capture features determined to be higher risk for
vulnerabilities. It is quite probable that all features, especially `priority::4`
issues, will not get a full review, but by capturing those that are at higher
risk, we can track additional statistics. For example, how many related
vulnerabilities were reported in the bug bounty program. This data can help us
to help iterate on priority.

### Single Issue / MR Pings

Single Issue/MR pings that can be completed by the engineer on triage rotation
do not need a separate issue. This process is primarily for tracking features
over time. With that in mind, if a ping will need additional review, an issue
should be created.

### Adding Features to the Queue / Requesting a Security Review

Separate issues will be used to track the appsec review process, as this
process could outlive the original issue/merge request.

The process is the same for appsec engineers adding something to the backlog
or for team members requesting a review for a GitLab feature:

1. Create an issue in the [Appsec Reviews issue tracker][2] using the [Appsec Review template](https://gitlab.com/gitlab-com/gl-security/product-security/appsec/appsec-reviews/-/issues/new?issueable_tempalte=AppSec%20Review)
    1. Set the title to a unique name for the feature
1. Follow the description in the template

### Assigning Priority

Every issue should have a priority assigned to help team members plan
testing. It is up to the application security engineer creating the issue to
determine priority based on the data available to them. If you are not sure
of the appropriate priority, be conservative and assign a higher priority.
It can always be adjusted given feedback from other team members.

Guidelines for Priority (Not comprehensive, please build upon)

| Priority | Criteria |
|----------|----------|
| priority::1       | Red data, AuthN/AuthZ, Crypto, Single severity::1, Repeat severity::2 vulns |
| priority::2       | Orange data, Single severity::2 vulns |
| priority::3       | Yellow data |
| priority::4       | Only standard secure practices necessary |

### Including Threat Modeling in the review

When [threat modeling]({{< ref "../../threat-modeling" >}}) should be done
during the review add the `threat model::needed` label to the original issue or epic and the
appsec review issue. That way we can track the adoption of threat modeling throughout GitLab. When
the threat modeling step is done the
`threat model::done` label should be added to all involved issues and epics. The process for
threat modeling is further defined in its [own handbook page]({{< ref "./runbooks/threat-modeling" >}}).

### Quantifying interactions

The engineering team has created multiple labels with the purpose of quantifying
interactions done by stable counterparts and tracking the status of these interactions.
Stable counterparts should add the right label depending on the status of the interaction
following the conditions below:

- `~sec-planning::in-progress`: The issue or MR is under review.
- `~sec-planning::pending-followup`: Stable counterpart expects to follow up on the review.
- `~sec-planning::complete`: Review finished with comments.
- `~sec-planning::no-action`: Review completed and no action required.

[1]: https://docs.google.com/document/d/15eNKGA3zyZazsJMldqTBFbYMnVUSQSpU14lo22JMZQY/edit
[2]: https://gitlab.com/gitlab-com/gl-security/product-security/appsec/appsec-reviews/issues
[3]: {{< ref "./_index.md#stable-counterparts" >}}
[4]: {{< ref "/handbook/security#issue-triage" >}}

## Internal Application Security Reviews

For systems built (or significantly modified) by Departments that house customer and other sensitive data, the Security Team should perform applicable application security reviews to ensure the systems are hardened. Security reviews aim to help reduce vulnerabilities and to create a more secure product.

### When to request a security review?

This short questionnaire below should help you in quickly deciding if you should engage the [application security team](https://gitlab.com/gitlab-com/gl-security/product-security/appsec):

If the change is doing one or more of the following:

1. Processing, storing, or transferring any kind of [RED or ORANGE data]({{< ref "data-classification-standard" >}})
1. If your changes have a goal which requires a **cryptographic function** such as: confidentiality, integrity, authentication, or non-repudiation, it *should* be reviewed by the [application security team](https://gitlab.com/gitlab-com/gl-security/product-security/appsec).
1. Deployment of a customer facing application into a new environment
1. Changes to an existing security control
1. Modification of any pipeline security checks or scans
1. A new authentication mechanism
1. Adding code that touches the authentication model, tokens or sessions
1. Dealing with user supplied data
1. Touching cryptography functions, see the [GitLab Cryptography Standard]({{< ref "cryptographic-standard" >}}) for more details
1. Touching the permission model
1. Implement new security controls (i.e. new library for a specific protection, HTTP header, ...)
1. Exposing a new API endpoint, or modifying an existing one
1. Introducing new database queries
1. Using regex to :
  - validate user supplied data
  - make decisions related to authorisation and authentication
1. A new feature that can manipulate or display sensitive data (i.e PII), see our [Data Classification Standard]({{< ref "data-classification-standard" >}}) for more details
1. Persisting sensitive data such as tokens, crypto keys, credentials, PII in temp storages/files/DB, manipulating or displaying sensitive data (i.e PII), see our [Data Classification Standard]({{< ref "data-classification-standard" >}}) for more details

You should engage `@gitlab-com/gl-security/product-security/appsec`.

### How to request a security review?

There are two ways to request a security review depending on how significant the changes are. It is divided between individual merge requests and larger scale initiatives.

#### Individual merge requests or issues

Loop in the application security team by `/cc @gitlab-com/gl-security/product-security/appsec` in your merge request or issue.

These reviews are intended to be faster, more lightweight, and have a lower barrier of entry.

#### Larger scale initiatives

To get started, create an issue in the [internal application security reviews repository](https://gitlab.com/gitlab-com/gl-security/product-security/appsec/appsec-reviews/issues) using the [Appsec Review template](https://gitlab.com/gitlab-com/gl-security/product-security/appsec/appsec-reviews/-/issues/new?issueable_tempalte=AppSec%20Review). The complete process can be found at [here](/handbook/security/product-security/application-security/appsec-reviews.html).

Some use cases of this are for epics, milestones, reviewing for a common security weakness in the entire codebase, or larger features.

### Is security approval required to progress?

No, code changes do *not* require security approval to progress. Non-blocking reviews enables the freedom for our code to [keep shipping]({{< ref "ceo#how-do-we-keep-shipping" >}}) fast, and it closer aligns with our values of [iteration and efficiency]({{< ref "values#iteration" >}}). They operate more as guardrails instead of a gate.

### What should I provide when requesting a security review?

To help speed up a review, it's recommended to provide any or all of the following:

- The background and context of the changes being made.
- Any documentation or diagrams which help provide a clear understanding its purpose and use cases.
- The type of data it's processing or storing.
- The security requirements for the data.
- Your security concerns and a worst case scenario that could happen.
- A test environment.

### What does the security process look like?

The current process for larger scale internal application security reviews be found [here]({{< ref "appsec-reviews" >}})

### My changes have been reviewed by security, so is my project now secure?

Security reviews are not proof or certification that the code changes are secure. They are best effort, and additional vulnerabilities may exist after a review.

It's important to note here that application security reviews are not a one-and-done, but can be ongoing as the application under review evolves.

### Using third party libraries ?

If you are using third party libraries make sure that:

1. You use the latest stable and available version
1. Your team has the ability to support and upgrade this library as security patches are published
1. The maintainer has a security policy
