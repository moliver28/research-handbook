---
title: Low-Privilege CI Job Tokens
status: proposed
creation-date: "2024-08-08"
authors: [ "@mokhax" ]
coaches: ["@grzesiek", "@fabiopitino"]
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
on behalf of the user who triggered the CI job, effectively granting the CI
job the same level of access as the user.

This poses a security risk, as it allows for token theft, enabling a malicious
actor to exploit the access of another user for the duration of the job for
which the token was generated.

### Goals

This proposal attempts to decouple the access that a `CI_JOB_TOKEN` has away from a specific user to an entity with less access.

- We want to decouple the `CI_JOB_TOKEN` from the user that triggered the pipeline.
- We want to reduce the access available to the `CI_JOB_TOKEN`
- We want to provide a way to configure permissions for each CI Pipeline

### Non-Goals

- We will not add auditing of token usage and generation
- We will not create a [Security Token Service](https://datatracker.ietf.org/doc/html/rfc8693)
- We will not focus on reducing the duration of access of a `CI_JOB_TOKEN`
- We will not unify the [PAT scopes](https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html#personal-access-token-scopes) with the existing [custom abilities](https://gitlab.com/gitlab-org/gitlab/-/tree/master/ee/config/custom_abilities)
- We will not unify the [types of tokens](https://docs.gitlab.com/ee/security/token_overview.html) into a single authoritative token

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
1. Use Declarative Permissions
1. Integrate with our OAuth Provider

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
- Requires us to clean up the users after this stage is complete

### Stage 2: Use a Service Account

In this stage, we will replace the conventional user lookup with a dedicated
[Service Account](https://gitlab.com/gitlab-org/gitlab/-/blob/fe97111040fd82e283a0ac0034ed832cb592ba35/app/models/concerns/has_user_type.rb#L20).
This service account will be used as the User bound to each CI job. Project
Owners will be able to assign a role to this Service Account. If the project
has an Ultimate license, the service account can be assigned a custom role;
otherwise, a standard role can be selected.

Pros:

- Does not occupy a licensed seat

Cons:

- This creates a user record for every project.
- This may add complexity to the UI to apply a role to a service account.

### Stage 3: Use Declarative Permissions

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
  read_repo:
    - project: gitlab-org/gitlab
    - project: gitlab-org/www-gitlab-com
  create_release:
    - project: gitlab-org/gitlab
```

The permissions that are defined in the `.gitlab-ci.yml` file will restrict
which permissions are allowed to be used for the execution of the pipeline. The
assumption is that the service account bound to the CI job will, at a minimum,
have these permissions to perform the job. The intention of declaring these
permissions is to restrict which permissions are available to the token that is
generated for the CI job session.

These permissions will be encoded into an ephemeral job token that will be
digitally signed so that it can be verified for authenticity and to detect
tampering. The algorithm for the digital signature will use a public/private key
pair with a minimum of SHA256 for computing the digest.

When any API is presented with the `CI_JOB_TOKEN` it will verify the signature
of the token and honour the API request according to the permissions defined in
the `scope` claim.

Currently, when we authorize any request in the HTTP APIs we lookup a token in a
database and find the user that is associated with the token. We then look at
the role that this user has for a given resource (for example Project, Group).
After determining the role we enable `Declarative Policy` rules based on their
role (for example an Owner also has `read_issue` and `read_repo` on a project).

In this stage, we're going to look at the permissions that are encoded in the
token itself and enable those `Declarative Policy` rules after validating that
the provided token was issued from an authority that we trust. This allows us to
encode permissions bound to a specific CI job session without a significant
change to our authorization policies. The `Declarative Policy` checks require a
specific user account as the subject of the decision. We will use the service
account created in stage 2 as the subject of check.

Example 1: Single Project

| global_id | name |
| --------- | ---- |
| "gid://gitlab/Project/42"  | "acme-org/foo" |

The following `.gitlab-ci.yml` file can be used to configure what permissions
will be encoded into the `CI_JOB_TOKEN`.

```yaml
# .gitlab-ci.yml
permissions:
  read_issue:
    - project: self
  read_repo:
    - project: self
```

The following is the JWT body portion of the `CI_JOB_TOKEN` that contains some
of the standard claims as well as the [scope](https://datatracker.ietf.org/doc/html/rfc8693#name-scope-scopes-claim)
extension for encoding the necessary permissions. One thing to note is that the
`scope` claim is represented as an array rather than a single string value.

```json
{
  "iss": "gitlab.com",
  "sub": "gid://gitlab/Ci::Build/1",
  "aud": "",
  "exp": 1300819380,
  "scope": [
    "read_issue": ["gid://gitlab/Project/42"],
    "read_repo": ["gid://gitlab/Project/42"]
  ]
}
```

Example 2: Multi Project

| global_id | name |
| --------- | ---- |
| "gid://gitlab/Project/42"  | "acme-org/foo" |
| "gid://gitlab/Project/256" | "acme-org/bar" |

```yaml
# .gitlab-ci.yml
permissions:
  read_issue:
    - project: self
  read_repo:
    - project: self
    - project: acme-org/bar
```

Below is an example of the body of the JWT token that contains the requested
permissions.

```json
{
  "iss": "gitlab.com",
  "sub": "gid://gitlab/Ci::Build/1",
  "aud": "",
  "exp": 1300819380,
  "scope": [
    "read_issue": [
      "gid://gitlab/Project/42"
    ],
    "read_repo": [
      "gid://gitlab/Project/42",
      "gid://gitlab/Project/256"
    ]
  ]
}
```

In order to generate the token above the service account used for jobs will need
a membership to the downstream project with the `read_repo` permission.
Currently, this permission is not listed as one of the supported custom
abilities but it is implicitly available through one of the standard roles.
We will need to list each of the specific abilities to make it possible to
generate documentation to indicate which permissions can be configured through
the `.gitlab-ci.yml`.

Pros:

* This removes the need to write additional data to the database to represent temporary roles for each build.
* This design supports a change in permissions in the `.gitlab-ci.yml` file so
  that two concurrent pipelines in the same project for two different commits
  can operate with the appropriate access controls independent of each other.

Cons:

* Token revocation is trickier with a stateless token.
* Requires pipeline authors to opt-in
* Requires pipeline authors to understand the new syntax
* Still potential for over-permissioning if the new syntax is too tricky or pipelines are failing.

### Stage 4: Integrate with our OAuth Provider

In this stage, we will create and register a trusted OAuth app
(`Doorkeeper::Application`) and use it to generate OAuth access tokens on behalf
of the service account defined in stage 2. This approach will leverage our
existing OAuth implementation and provide an extension point for any API outside
of the [monolith](https://gitlab.com/gitlab-org/gitlab) to verify the claims
associated with a `CI_JOB_TOKEN` by making an API call to the
[token introspection endpoint](https://docs.gitlab.com/ee/api/oauth2.html#retrieve-the-token-information).

An example of how to implement this can be found in [this MR](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/162333).

Pros:

- The `CI_JOB_TOKEN` is an access token that is compatible with our OAuth Provider.
- This creates an extension point that is standards compatible for better
  interoperability between internal and external services.

Cons:

- Doesn't fully conform to the OAuth Token Exchange Protocol.
- This will create a new record in the `oauth_access_tokens` for each job.

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
