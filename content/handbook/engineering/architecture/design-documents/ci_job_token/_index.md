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

- **Fill out this file as best you can.** At minimum, you should fill in the
  "Summary", and "Motivation" sections.  These can be brief and may be a copy
  of issue or epic descriptions if the initiative is already on Product's
  roadmap.
- **Create a MR for this document.** Assign it to an Architecture Evolution
  Coach (i.e. a Principal+ engineer).
- **Merge early and iterate.** Avoid getting hung up on specific details and
  instead aim to get the goals of the document clarified and merged quickly.
  The best way to do this is to just start with the high-level sections and fill
  out details incrementally in subsequent MRs.

Just because a document is merged does not mean it is complete or approved.
Any document is a working document and subject to change at any time.

When editing documents, aim for tightly-scoped, single-topic MRs to keep
discussions focused. If you disagree with what is already in a document, open a
new MR with suggested changes.

If there are new details that belong in the document, edit the document. Once
a feature has become "implemented", major changes should get new blueprints.

The canonical place for the latest set of instructions (and the likely source
of this file) is [here](/content/handbook/engineering/architecture/design-documents/_template.md).

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

This document outlines a proposal on how to reduce the access that a
[`CI_JOB_TOKEN`][1] has in the context for a CI job. Today, this token has the
save level of access as the user that initiated the pipeline and that violates
the [principle of least privilege][17].

The proposal in this document outlines several stages of development to work
towards reducing the scope and access of this token.

## Motivation

Today, when a CI job runs, it is provided with a [`CI_JOB_TOKEN`][1] that can be
used by the job to interact with other GitLab resources. This token is generated
on behalf of the user who triggered the CI pipeline, effectively granting the CI
job the same level of access as the user.

This poses a problem because it allows for token theft
(e.g. `$ echo $CI_JOB_TOKEN`), enabling a malicious actor to exploit another
user's access for the duration of the job for which the token was generated.


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
- Changing the format of a token (i.e. [JWT][4])
- Creation of a [Secure Token Service][7]
- OAuth2 specific integration or compatibility
- Reducing the duration of access of a [`CI_JOB_TOKEN`][1]
- Unify the [PAT scopes][8] with the existing [custom abilities][6]
- Unifying the [types of tokens][3] into a single [authoritative token][10]
- [Removal of the runner registration token][2]

## Proposal

Instead of creating a [`CI_JOB_TOKEN`][1] that is bound to the user that
triggered the CI pipeline we will generate a [`CI_JOB_TOKEN`][1] bound to a
separate entity. This entity will be a specific account for use by CI jobs.
This custom `User` will have limited permissions bound by the Role that it is
assigned. This role can be one of the [standard roles][18] or a [custom role][5].

At this time, it is uncertain if we will need to manage CI Job specific
[custom abilities][6] that cannot be assigned to regular user accounts.

## Design and implementation details

<!--
This section should contain enough information that the specifics of your
change are understandable. This may include API specs (though not always
required) or even code snippets. If there's any ambiguity about HOW your
proposal will be implemented, this is the place to discuss them.

If you are not sure how many implementation details you should include in the
document, the rule of thumb here is to provide enough context for people to
understand the proposal. As you move forward with the implementation, you may
need to add more implementation details to the document, as those may become
an important context for important technical decisions made along the way. A
document is also a register of such technical decisions. If a technical
decision requires additional context before it can be made, you probably should
document this context in a document. If it is a small technical decision that
can be made in a merge request by an author and a maintainer, you probably do
not need to document it here. The impact a technical decision will have is
another helpful information - if a technical decision is very impactful,
documenting it, along with associated implementation details, is advisable.

If it's helpful to include workflow diagrams or any other related images.
Diagrams authored in GitLab flavored markdown are preferred. In cases where
that is not feasible, images should be placed under `images/` in the same
directory as the `index.md` for the proposal.
-->

This problem can be broken down into the following categories:

1. Token Creation:
  * To inject a new token that has limited scope we may need to hook into how we create tokens for jobs.
1. Token Enforcement/Lookup
  * Any changes to the token creation may have an impact on how we lookup and
    enforce the authorization of the given token. We may need to update the [`api_guard`][14]

### Stage 1: Run jobs using a specific User Account

Today, project owners are able to invite a user to a project with specific
permissions via a [Custom Role][5]. We will use this mechanism to bind a
specific account to all CI Jobs within a project using a convention for looking
up the user account. This allows for fast feedback to identify gaps in the
current custom permissions that we offer today.

This immediate and temporary solution will make it possible to reduce the access
that is currently available vai a [`CI_JOB_TOKEN`][1].

When a new build is created we will search for a specific user account using
a convention to search for the user. If this user account is found we will
attach the user to the build so that the `CI_JOB_TOKEN` will be restricted to
whatever permissions that this account has been given.

An example of how to do this can be found in [this MR][15].

The convention for searching for a user is the following:

1. The user must be a direct member of the project
1. The username must match the pattern of `<project-name>-ci_user`.

When a user is found matching this pattern then that user will be used as the
security principal for the generation of the [`CI_JOB_TOKEN`][1].

Example:

1. Create a project (e.g. `my-project`)
1. Register a new user account with the username of `<project-name>-ci_user`. (e.g. `my-project-ci_user`)
1. Go to `Project > Manage > Members` and add the new user with a base role of `Guest`

### Stage 2: Attach a Service Account to each `Ci::Build`

In this stage we will create a specific Service Account for each project. This
service account will be used as the User to bind to each Build. Project Owners
will be able to assign a role to this Service Account. If the project has an
Ultimate license then this service account can be assigned to a [Custom Role][5].

### Stage 3: Define permissions via `.gitlab-ci.yml`

At this stage, we will add support for defining permissions for each Job via a
declarative syntax in the `.gitlab-ci.yml` file.

### Stage N: Generate an OAuth Access Token for each CI Job

With this option we would generate an OAuth App (`Doorkeeper::Application`) and
use that application to generate an OAuth Access Token for the service account
defined in stage 2. This option utilizes the existing custom roles and OAuth
functionality and provides an extension point for API's outside of the
`gitlab-rails` monolith to be able to look up the claims associated with a
`CI_JOB_TOKEN` by making an API call to the `GET /oauth/token/info` endpoint.

A proof of concept can be found in [this MR][16].

Pros:

* Injects a `CI_JOB_TOKEN` that is scoped to a specific user.
* The `CI_JOB_TOKEN` is an access token that is compatible with our OAuth Provider.
  * This creates an extension point to allow all GitLab Resource Servers to
    begin performing authz checks using an OAuth compatible token.

Cons:

* Doesn't fully conform to the [OAuth Token Exchange Protocol][7].
* This will create a new record in the `oauth_access_tokens` for each job. (This will have a significant database impact)
* This may require the creation of a new user record for every project that has CI enabled.
* This may require the creation of a new `oauth_applications` record for each project that has CI enabled.

```ruby
module Ci
  class Build < Ci::Processable
    # ...
    add_authentication_token_field :token,
      encrypted: :required,
      token_generator: ->(build) { build.create_oauth_access_token }, # provide :token_generator
      format_with_prefix: :prefix_and_partition_for_token

    def create_oauth_access_token
      application = project.ci_oauth_application # refers to an internal OAuth App that is generated for each project when CI is enabled.
      user = project.ci_user                     # refers to a specific service account for running CI jobs

      OauthAccessToken.create!(
        application_id: application.id,
        expires_in: 2.hours,                     # default to max timeout for pipeline
        resource_owner_id: user.id,
        token: Doorkeeper::OAuth::Helpers::UniqueToken.generate,
        scopes: application.scopes.to_s          # list the minimal scopes necessary to connect to the API
      )
    end
  end
end
```

To accomplish this we will need to:

1. Hook into the `CI::Build` state machine when transitioning to a [pending state][13].
1. Create a new [token generator][12].
1. Create a new [token authenticatable strategy][11].
1. Create a [service account][9] user for each project.

Sequence Diagram

```plaintext
   -------------   -----------------------   ---------------------------------------
   | CI::Build |  | TokenAuthenticatable |  | TokenAuthenticatableStrategies::Base |
   -------------   -----------------------   ---------------------------------------
         |                    |                 |
         |--> #ensure_token ->|
         |                    |
         |                    |--> .fabricate ->|
         |                                      |
         |<-- #create_oauth_access_token     <--|
```

#### Unknowns

1. How many projects do we have?
1. Which team owns the following relations:
  * `oauth_applications`
  * `oauth_access_tokens`
1. How does this impact the Cells work?

## Alternative Solutions

<!--
It might be a good idea to include a list of alternative solutions or paths
considered, although it is not required. Include pros and cons for each
alternative solution/path.

"Do nothing" and its pros and cons could be included in the list too.
-->

* Build a [Security Token Service][7]
* Migrating to the [GitLab OAuth2 provider][10]

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
