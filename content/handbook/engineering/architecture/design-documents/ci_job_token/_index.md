---
title: Low-Privilege CI Job Tokens
status: proposed
creation-date: "2024-08-08"
authors: [ "@mokhax" ]
coaches: [ ]
dris: [ "@jrandazzo", "@jayswain" ]
owning-stage: "~govern::authorization"
participating-stages: [ "~devops::verify" ]
toc_hide: true
---

<!-- vale gitlab.FutureTense = NO -->
{{< design-document-header >}}

## Summary

GitLab CI is a Continuous Integration platform widely used to run various jobs,
builds, and pipelines.

Each CI job is provided with a [security token](https://docs.gitlab.com/ee/ci/jobs/ci_job_token.html) that allows it to interact
with other GitLab APIs to accomplish a task. Currently, this token has the same
level of access as the user who triggered the pipeline, which violates the
[principle of least privilege (PoLP)](https://csrc.nist.gov/glossary/term/least_privilege).

This proposal outlines the stages of development needed to reduce the access
granted by this token in order to adhere to the principle of least privilege,
while delivering incremental value along the way.

## Motivation

Currently, when a CI job runs, it is provided with a `CI_JOB_TOKEN`, which the
job can use to interact with other GitLab resources. This token is generated
on behalf of the user who triggered the CI pipeline, effectively granting the CI
job the same level of access as the user.

This poses a security risk, as it allows for token theft, enabling a malicious
actor to exploit the access of another user for the duration of the job for
which the token was generated.

### Goals

This proposal attempts to decouple the access that a `CI_JOB_TOKEN` has away from a specific user to an entity with less access.

- Decouple `CI_JOB_TOKEN` from the user that triggered the pipeline.
- Apply the PoLP to each `CI_JOB_TOKEN`
- Provide a mechanism for the configuration of permissions for each CI Job

### Non-Goals

- Auditing of token usage and generation
- Changing the format of a token (for example [JWT](https://datatracker.ietf.org/doc/html/rfc7519))
- Creation of a [Security Token Service](https://datatracker.ietf.org/doc/html/rfc8693)
- OAuth2 specific integration or compatibility
- Reducing the duration of access of a `CI_JOB_TOKEN`
- Unify the [PAT scopes](https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html#personal-access-token-scopes) with the existing [custom abilities](https://gitlab.com/gitlab-org/gitlab/-/tree/master/ee/config/custom_abilities)
- Unifying the [types of tokens](https://docs.gitlab.com/ee/security/token_overview.html) into a single authoritative token
- [Removal of the runner registration token](../runner_tokens/)

## Proposal

Instead of generating a `CI_JOB_TOKEN` bound to the user who triggered the
CI pipeline, we will generate a `CI_JOB_TOKEN` bound to a separate entity.
This entity will be a specific account designated for use by CI jobs. This
custom User will have limited permissions defined by the assigned Role, which
can be one of the [standard roles](https://docs.gitlab.com/ee/user/permissions.html#roles) or a [custom role](https://docs.gitlab.com/ee/user/custom_roles/abilities.html).

At this time, it is uncertain whether we will need to manage CI job-specific
custom abilities that cannot be assigned to regular user accounts.

## Design and implementation details

The following stages are outlined below:

1. Use a User Account
1. Use a Service Account
1. Use an OAuth Access Token
1. Declarative permissions

### Stage 1: Use a User Account

Currently, project owners can invite a user to a project with specific
permissions using a custom role. We will leverage this mechanism to bind a
specific account to all CI jobs within a project by using a convention for
looking up the user account. This approach allows for quick feedback to identify
gaps in the existing custom permissions.

This immediate and temporary solution will help reduce the access currently
granted through the `CI_JOB_TOKEN`.

When a new build is created, we will search for a specific user account based
on a naming convention. If the user account is found, it will be attached to
the build, thereby restricting the `CI_JOB_TOKEN` to the permissions
assigned to that account.

The convention for searching for a user is as follows:

1. The user must be a direct member of the project.
1. The username must match the pattern `<project-name>-ci_user`.

When a user is found matching this pattern, that user will be used as the
security principal for generating the `CI_JOB_TOKEN`.

An example of how to implement this can be found in [this MR](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/162599). Below is a
snippet of code that summarizes the idea.

```ruby
module Gitlab
  module Ci
    module Pipeline
      module Chain
        class Build < Chain::Base
          def perform!
            @pipeline.assign_attributes(user: ci_user)
          end

          private

          def ci_user
            conventional_username = "#{@command.project.name}-ci_user"
            @command.project.users.find_by(username: conventional_username) || current_user
          end
        end
      end
    end
  end
end
```

Pros:

- It is a straightforward solution.
- It allows for fast feedback to help identify gaps in our custom permissions.
- It can be used today.

Cons:

- This occupies a licensed seat.
- It is not intuitive.
- This artificially increases the number of registered users in the product metrics.

### Stage 2: Use a Service Account

In this stage, we will replace the conventional user lookup with a dedicated
[Service Account](https://gitlab.com/gitlab-org/gitlab/-/blob/fe97111040fd82e283a0ac0034ed832cb592ba35/app/models/concerns/has_user_type.rb#L20) for each project. This service account will be used as the
User bound to each CI job. Project Owners will be able to assign a role to this
Service Account. If the project has an Ultimate license, the service account can
be assigned a custom role; otherwise, a standard role can be selected.

Below is a snippet of code that summarizes the idea.

```ruby
module Users
  class Internal
    class << self
      def ci_bot
        email_pattern = "ci-bot%s@#{Settings.gitlab.host}"

        unique_internal(User.where(user_type: :ci_bot), 'GitLab-CI', email_pattern) do |u|
          u.bio = 'The bot for GitLab CI'
          u.name = 'Continuous Integration'
          u.avatar = bot_avatar(image: 'ci-bot.png')
          u.confirmed_at = Time.zone.now
          u.private_profile = true
        end
      end
    end
  end
end
```

Pros:

- Does not occupy a licensed seat

Cons:

- This creates a user record for every project.
- This may add complexity to the UI to apply a role to a service account.

### Stage 3: Use an OAuth Access Token

In this stage, we will create and register a trusted OAuth app
(`Doorkeeper::Application`) and use it to generate OAuth access tokens on behalf
of the service account defined in stage 2. This approach will leverage our
existing OAuth implementation and provide an extension point for any API outside
of the [monolith](https://gitlab.com/gitlab-org/gitlab) to verify the claims associated with a `CI_JOB_TOKEN` by
making an API call to the [token introspection endpoint](https://docs.gitlab.com/ee/api/oauth2.html#retrieve-the-token-information).

An example of how to implement this can be found in [this MR](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/162333). Below is a
snippet of code that summarizes the idea.

```ruby
module Ci
  class Build < Ci::Processable
    add_authentication_token_field :token,
      encrypted: :required,
      token_generator: ->(build) { build.create_oauth_access_token },
      format_with_prefix: :prefix_and_partition_for_token

    private

    def oauth_application
      Doorkeeper::Application.find_or_create_by!(
        name: 'GitLab CI',
        redirect_uri: Gitlab::Routing.url_helpers.root_url,
        scopes: [:api],
        trusted: true,
        confidential: false
      )
    end

    def create_oauth_access_token
      application = oauth_application

      OauthAccessToken.create!(
        application_id: application.id,
        expires_in: 2.hours,                     # default to max timeout for pipeline
        resource_owner_id: user&.id,             # this is the service account
        token: Doorkeeper::OAuth::Helpers::UniqueToken.generate,
        scopes: application.scopes.to_s
      ).token
    end
```

Pros:

- The `CI_JOB_TOKEN` is an access token that is compatible with our OAuth Provider.
- This creates an extension point that is standards compatible for better
  interoperability between internal and external services.

Cons:

- Doesn't fully conform to the OAuth Token Exchange Protocol.
- This will create a new record in the `oauth_access_tokens` for each job. (This will have a significant database impact)
- This may require the creation of a new user record for every project that has CI enabled.
- This may require the creation of a new `oauth_applications` record for each project that has CI enabled.

### Stage 4: Declarative permissions

In this stage, we will introduce support for defining permissions for each job
using a declarative syntax in the [`.gitlab-ci.yml`](https://docs.gitlab.com/ee/ci/yaml/) file.

The exact syntax for defining these permissions is yet to be determined, but the
goal of this stage is to enable the specification of different permissions for
different jobs within the same pipeline.

Below are examples of what the syntax could look like:

```yaml
permissions:
  read_issue:
    - project: gitlab-org/gitlab
      confidential: false
  read_repo:
    - project: gitlab-org/gitlab
    - project: gitlab-org/www-gitlab-com
  create_release:
    - project: gitlab-org/gitlab
```

## Alternative Solutions

- Build a Security Token Service
  - Pros: Standards compliant solution
  - Cons: Additional up front effort and maintenance is required before we can
    realize any value.
- Migrating to the [GitLab OAuth2 provider](https://docs.gitlab.com/ee/api/oauth2.html)
  - Pros: Standards compliant solution
  - Cons: More effort is required up front before any value can be realized
- Do nothing
  - Pros: No work required
  - Cons: See the Motivation section of this document for details
