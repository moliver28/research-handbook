---
# This is the title of your design document. Keep it short, simple, and descriptive. A
# good title can help communicate what the design document is and should be considered
# as part of any review.
title: Granular CI Job Token
status: proposed
creation-date: "2024-08-08"
authors: [ "@mokhax" ]
coaches: [ ]
dris: [ "@jrandazzo", "@jayswain" ]
owning-stage: "~govern::authorization"
participating-stages: []
# Hides this page in the left sidebar. Recommended so we don't pollute it.
toc_hide: true
---

<!--
Before you start:

- **Create a MR for this document.** Assign it to an Architecture Evolution Coach (i.e. a Principal+ engineer).
- **Merge early and iterate.** Avoid getting hung up on specific details and
  instead aim to get the goals of the document clarified and merged quickly.
  The best way to do this is to just start with the high-level sections and fill
  out details incrementally in subsequent MRs.

Document statuses you can use:

- "proposed"
- "accepted"
- "ongoing"
- "implemented"
- "postponed"
- "rejected"
-->

<!-- Design Documents often contain forward-looking statements -->
<!-- vale gitlab.FutureTense = NO -->

{{< design-document-header >}}

## Summary

GitLab CI is a Continuous Integration platform widely used to run various jobs,
builds, and pipelines.

Each CI job is provided with a [security token][1] that allows it to interact
with other GitLab APIs to accomplish a task. Currently, this token has the same
level of access as the user who triggered the pipeline, which violates the
[principle of least privilege (PoLP)][17].

This proposal outlines the stages of development needed to reduce the access
granted by this token in order to adhere to the principle of least privilege,
while delivering incremental value along the way.

## Motivation

Currently, when a CI job runs, it is provided with a [`CI_JOB_TOKEN`][1], which
the job can use to interact with other GitLab resources. This token is generated
on behalf of the user who triggered the CI pipeline, effectively granting the CI
job the same level of access as the user.

This poses a security risk, as it allows for token theft, enabling a malicious
actor to exploit the access of another user for the duration of the job for
which the token was generated.

### Goals

<!--
List the specific goals / opportunities of the document.

- What is it trying to achieve?
- How will we know that this has succeeded?
- What are other less tangible opportunities here?
-->

This proposal attempts to decouple the access that a [`CI_JOB_TOKEN`][1] has
away from a specific user to an entity with less access.

- Decouple [`CI_JOB_TOKEN`][1] from the [user][9] that triggered the pipeline.
- Apply the [PoLP][17] to each [`CI_JOB_TOKEN`][1]
- Provide a mechanism for the configuration of permissions for each CI Job

### Non-Goals

- Auditing of token usage and generation
- Changing the format of a token (e.g. [JWT][4])
- Creation of a [Secure Token Service][7]
- OAuth2 specific integration or compatibility
- Reducing the duration of access of a [`CI_JOB_TOKEN`][1]
- Unify the [PAT scopes][8] with the existing [custom abilities][6]
- Unifying the [types of tokens][3] into a single [authoritative token][10]
- [Removal of the runner registration token][2]

## Proposal

Instead of generating a [`CI_JOB_TOKEN`][1] bound to the user who triggered the
CI pipeline, we will generate a [`CI_JOB_TOKEN`][1] bound to a separate entity.
This entity will be a specific account designated for use by CI jobs. This
custom User will have limited permissions defined by the assigned Role, which
can be one of the [standard roles][18] or a [custom role][5].

At this time, it is uncertain whether we will need to manage CI job-specific
[custom abilities][6] that cannot be assigned to regular user accounts.

## Design and implementation details

The following stages are outlined below:

1. Use a User Account
1. Use a Service Account
1. Use an OAuth Access Token
1. Declarative permissions per job

### Stage 1: Use a User Account

Currently, project owners can invite a user to a project with specific
permissions using a [Custom Role][5]. We will leverage this mechanism to bind a
specific account to all CI jobs within a project by using a convention for
looking up the user account. This approach allows for quick feedback to identify
gaps in the existing custom permissions.

This immediate and temporary solution will help reduce the access currently
granted via the [`CI_JOB_TOKEN`][1].

When a new build is created, we will search for a specific user account based
on a naming convention. If the user account is found, it will be attached to
the build, thereby restricting the [`CI_JOB_TOKEN`][1] to the permissions
assigned to that account.

The convention for searching for a user is as follows:

1. The user must be a direct member of the project.
1. The username must match the pattern `<project-name>-ci_user`.

When a user is found matching this pattern, that user will be used as the
security principal for generating the [`CI_JOB_TOKEN`][1].

An example of how to implement this can be found in [this MR][15].

Pros:

* This is a straightforward solution.
* It allows for fast feedback to help identify gaps in our custom permissions.

Cons:

* This occupies a licensed seat.
* It is not intuitive.
* This artificially increases the number of registered users in the product metrics.

### Stage 2: Use a Service Account

In this stage, we will replace the conventional user lookup with a dedicated
[Service Account][19] for each project. This service account will be used as the
User bound to each CI job. Project Owners will be able to assign a role to this
Service Account. If the project has an Ultimate license, the service account can
be assigned a [custom role][5]; otherwise, a [standard role][18] can be selected.

### Stage 3: Use an OAuth Access Token

In this stage of development, we will create and register a trusted OAuth app
(`Doorkeeper::Application`) and use it to generate OAuth access tokens on behalf
of the service account defined in stage 2. This approach will leverage our
existing OAuth implementation and provide an extension point for any API outside
of the [monolith][20] to verify the claims associated with a [`CI_JOB_TOKEN`][1]
by making an API call to the [token introspection endpoint][21].

A proof of concept can be found in [this MR][16].

Pros:

* The `CI_JOB_TOKEN` is an access token that is compatible with our OAuth Provider.
* This creates an extension point that is standards compatible for better
  interoperability between internal and external services.

Cons:

* Doesn't fully conform to the [OAuth Token Exchange Protocol][7].
* This will create a new record in the `oauth_access_tokens` for each job. (This will have a significant database impact)
* This may require the creation of a new user record for every project that has CI enabled.
* This may require the creation of a new `oauth_applications` record for each project that has CI enabled.

### Stage 4: Declarative permissions per job

In this stage, we will introduce support for defining permissions for each job
using a declarative syntax in the [`.gitlab-ci.yml`][22] file.

The exact syntax for defining these permissions is yet to be determined, but the
goal of this stage is to enable the specification of different permissions for
different jobs within the same pipeline.


## Alternative Solutions

* Build a [Security Token Service][7]
  * Pros: Standards compliant solution
  * Cons: Additional up front effort and maintenance is required before we can
    realize any value.
* Migrating to the [GitLab OAuth2 provider][10]
  * Pros: Standards compliant solution
  * Cons: More effort is required up front before any value can be realized
* Do nothing
  * Pros: No work required
  * Cons: See the Motivation section of this document for details

[1]: https://docs.gitlab.com/ee/ci/jobs/ci_job_token.html
[2]: https://handbook.gitlab.com/handbook/engineering/architecture/design-documents/runner_tokens/
[3]: https://docs.gitlab.com/ee/security/token_overview.html
[4]: https://datatracker.ietf.org/doc/html/rfc7519
[5]: https://docs.gitlab.com/ee/user/custom_roles/abilities.html
[6]: https://gitlab.com/gitlab-org/gitlab/-/tree/master/ee/config/custom_abilities
[7]: https://datatracker.ietf.org/doc/html/rfc8693
[8]: https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html#personal-access-token-scopes
[9]: https://gitlab.com/gitlab-org/gitlab/-/blob/4633bdb43e637c60f80c4dd1ee8cf92f2e0739e7/app/models/concerns/has_user_type.rb#L7
[10]: https://docs.gitlab.com/ee/api/oauth2.html
[11]: https://gitlab.com/gitlab-org/gitlab/-/blob/22e3d6c41c1e6472d4ba665232634c827af20083/app/models/concerns/token_authenticatable_strategies/base.rb#L84-96
[12]: https://gitlab.com/gitlab-org/gitlab/-/blob/e79ca748658b7d34fc36c32e15091d2cac12f256/app/models/concerns/token_authenticatable_strategies/base.rb#L133
[13]: https://gitlab.com/gitlab-org/gitlab/-/blob/e79ca748658b7d34fc36c32e15091d2cac12f256/app/models/ci/build.rb#L305
[14]: https://gitlab.com/gitlab-org/gitlab/-/blob/6d1f895398aa08f2398bb0775ebc88dd23526f26/lib/api/api_guard.rb#L69-81
[15]: https://gitlab.com/gitlab-org/gitlab/-/merge_requests/162599
[16]: https://gitlab.com/gitlab-org/gitlab/-/merge_requests/162333
[17]: https://csrc.nist.gov/glossary/term/least_privilege
[18]: https://docs.gitlab.com/ee/user/permissions.html#roles
[19]: https://gitlab.com/gitlab-org/gitlab/-/blob/fe97111040fd82e283a0ac0034ed832cb592ba35/app/models/concerns/has_user_type.rb#L20
[20]: https://gitlab.com/gitlab-org/gitlab
[21]: https://docs.gitlab.com/ee/api/oauth2.html#retrieve-the-token-information
[22]: https://docs.gitlab.com/ee/ci/yaml/
