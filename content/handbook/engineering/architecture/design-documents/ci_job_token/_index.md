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

### Goals

This proposal aims to decouple the access of the `CI_JOB_TOKEN` from a specific
user, assigning it instead to an entity with more limited access.

- We want to decouple the `CI_JOB_TOKEN` from the user who triggered the pipeline.
- We want to reduce the access granted to the `CI_JOB_TOKEN`.
- We want to provide a way to configure permissions for each CI pipeline.

### Non-Goals

- We will not add [auditing](https://gitlab.com/gitlab-org/gitlab/-/issues/480022) for token usage and generation.
- We will not create a [Security Token Service](https://datatracker.ietf.org/doc/html/rfc8693).
- We will not focus on reducing the duration of access for a `CI_JOB_TOKEN`.
- We will not unify [PAT scopes](https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html#personal-access-token-scopes) with existing [custom abilities](https://gitlab.com/gitlab-org/gitlab/-/tree/master/ee/config/custom_abilities).
- We will not unify the [types of tokens](https://docs.gitlab.com/ee/security/token_overview.html) into a single authoritative token.

## Proposal

Instead of generating a `CI_JOB_TOKEN` bound to the user who triggered the
CI pipeline, we will generate a `CI_JOB_TOKEN` bound to a separate entity.
This entity will be a specific account designated for use by CI jobs. This
account will have limited permissions defined by the assigned role, which
must be a [custom role](https://docs.gitlab.com/ee/user/custom_roles.html).

This functionality is only available to projects that are licensed to use the
custom role feature.

## Design and implementation details

The following stages are outlined below:

1. Use a Service Account
1. Use Declarative Permissions

### Use a Service Account

We will create a dedicated service account for each project that will be used
as the user bound to each CI job. This account can only be assigned to a custom
role to ensure that it is only granted custom permissions.

This service account can only be used to generate a `CI_JOB_TOKEN` for the
project that it is bound to. This account cannot be used to generate a
`CI_JOB_TOKEN` for any job belonging to any other project.

This service account can be granted membership to other projects so that it may
have read/write access to those projects via the REST API.

**Pros:**

- Does not occupy a licensed seat.

**Cons:**

- Creates a user record for every project.
- May add complexity to the UI for applying permissions to a service account.

### Use Declarative Permissions

We will introduce support for defining permissions for each pipeline using a
declarative syntax in the [`.gitlab-ci.yml`](https://docs.gitlab.com/ee/ci/yaml/)
file to allow the generation of a `CI_JOB_TOKEN` with a reduced set of
permissions than the full access available to the service account.

The `permissions` declared in the `.gitlab-ci.yml` file cannot be used to
request access. It is used to generate a `CI_JOB_TOKEN` with a subset of the
full set of permissions available to the service account. The access that is
granted to the service account will be determined through [project membership](https://docs.gitlab.com/ee/user/project/members/).

#### Syntax

The exact syntax for defining these permissions is yet to be determined.
Below are examples of what the syntax could look like:

**Example 1: Custom Ability Name Encoding**

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

**Example 2: Extended Custom Ability Name Encoding**

```yaml
permissions:
  repositories: ["read"]            # read any repository - simple config
  issues:
    - allow: ["read", "write"]      # read and write issues on specific project-1 and project-2
      projects: ["acme/project-1", "acme/project-2"]
    - allow: ["read"]
      projects: ["acme/project-3"]  # read issues on project-3
  packages:
    - allow: ["download"]
      projects: "acme/*"            # download packages from any projects in the group
```

**Example 3: Conventional Encoding**

```yaml
permissions:
  - write-issues@gitlab-com/www-gitlab-com
```

**Example 4: URI Encoding**

- **Scheme:** `write|read|admin`
- **Username:** Resource
- **Host:** Group
- **Path:** Project
- **Query String:** Optional configuration

```yaml
permissions:
  - write://issue@gitlab-com/www-gitlab-com?confidential=true
  - read://issue@gitlab-com/gitlab
  - read://repo@gitlab-com/gitlab
```

#### Usage

The permissions defined in the `.gitlab-ci.yml` file **limit** the access
available during pipeline execution. The service account linked to the CI job
must, at a minimum, have these permissions to perform the job. The purpose of
declaring these permissions is to specify the minimal **required** access.

To ensure the job receives a token with the necessary permissions, the service
account must be granted these permissions before pipeline execution.

If the service account lacks the permissions specified in the `permissions`
block of the `.gitlab-ci.yml` file, the pipeline will fail, with an error
indicating the missing permissions.

When the service account has the declared permissions, they will be encoded
into an ephemeral job token. This token, following the [JWT](https://datatracker.ietf.org/doc/html/rfc7519)
standard, will contain a digital signature that can be validated. When an API
receives the `CI_JOB_TOKEN`, it will verify the token's signature and process
the request according to the permissions defined in the token's `scope` claim.

This mechanism allows a token to be issued with reduced access, even if the
service account has broader permissions.

If the `permissions` section is not specified in the `.gitlab-ci.yml` file, the
`CI_JOB_TOKEN` will have full access to the service account's permissions.

#### Examples

**Example 1: Single Project Configuration**

```yaml
# .gitlab-ci.yml
permissions:
  read_issue:
    - project: self
  read_repo:
    - project: self
```

The configuration above will generate a `CI_JOB_TOKEN` with the following JWT
payload. The [scope](https://datatracker.ietf.org/doc/html/rfc8693#name-scope-scopes-claim)
claim specifies the list of permissions encoded into the token.

```json
{
  "iss": "gitlab.com",
  "sub": "gid://gitlab/User/SA-A",
  "aud": "",
  "exp": 1300819380,
  "scope": {
    "read_issue": ["gid://gitlab/Project/A"],
    "read_repo": ["gid://gitlab/Project/A"]
  }
}
```

**Example 2: Multi-Project Configuration**

When a pipeline in Project A (`P-A`) needs to access resources in Project B
(`P-B`), the service account for Project A (`SA-A`) must be granted membership
in Project B.

| Global ID                | Name            |
| ------------------------ | --------------- |
| "gid://gitlab/Project/A" | "acme-org/foo"  |
| "gid://gitlab/Project/B" | "acme-org/bar"  |

```yaml
# .gitlab-ci.yml
permissions:
  read_issue:
    - project: self
  read_repo:
    - project: self
    - project: acme-org/bar
```

Below is an example of the JWT payload containing the requested permissions:

```json
{
  "iss": "gitlab.com",
  "sub": "gid://gitlab/User/SA-A",
  "aud": "",
  "exp": 1300819380,
  "scope": {
    "read_issue": [
      "gid://gitlab/Project/A"
    ],
    "read_repo": [
      "gid://gitlab/Project/A",
      "gid://gitlab/Project/B"
    ]
  }
}
```

**Pros:**

- Removes the need to write additional data to the database to represent temporary roles for each job.
- Supports changes in permissions in the `.gitlab-ci.yml` file, allowing two concurrent pipelines in the same project for different commits to operate with appropriate access controls independently.

**Cons:**

- Token revocation is more challenging with a stateless token.
- Requires pipeline authors to opt in.
- Requires pipeline authors to understand the new syntax.
- Potential for over-permissioning if the new syntax is too complex or if pipelines are failing.

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
