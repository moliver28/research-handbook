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

This proposal outlines the development needed to reduce the access granted by
this token in order to adhere to the principle of least privilege, while
delivering incremental value along the way.

## Motivation

Currently, when a CI job runs, it is provided with a `CI_JOB_TOKEN`, which the
job can use to interact with other GitLab resources. This token is generated
on behalf of the user who triggered the CI job, effectively granting the CI
job the same level of access as the user.

### Goals

This proposal seeks to limit the scope of access granted to the `CI_JOB_TOKEN`
by introducing a mechanism to define the minimum necessary permissions for the
token.

- The `CI_JOB_TOKEN` should be ephemeral and grant minimal access.
- Configuration of permissions should be straightforward for Pipeline authors.
- Permissions should be customizable for each CI pipeline.
- The token should support extensions for additional fields, like [`organization_id`](https://gitlab.com/gitlab-com/content-sites/handbook/-/merge_requests/7856).
- Existing [permissions](https://gitlab.com/gitlab-com/content-sites/handbook/-/merge_requests/7856) for the `CI_JOB_TOKEN` should be maintained.

### Non-Goals

- [Auditing](https://gitlab.com/gitlab-org/gitlab/-/issues/480022) for token usage and generation will not be added.
- A [Security Token Service](https://datatracker.ietf.org/doc/html/rfc8693) will not be created.
- Reducing the duration of `CI_JOB_TOKEN` access is not a focus.
- Unifying [PAT scopes](https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html#personal-access-token-scopes) with [custom abilities](https://gitlab.com/gitlab-org/gitlab/-/tree/master/ee/config/custom_abilities) will not be pursued.
- [Token types](https://docs.gitlab.com/ee/security/token_overview.html) will not be consolidated into a single token.
- The [permission set](https://gitlab.com/gitlab-com/content-sites/handbook/-/merge_requests/7856) for the `CI_JOB_TOKEN` will not be expanded.

## Proposal

Rather than generating a `CI_JOB_TOKEN` with full access to all resources
available to the user who triggered the pipeline, we will generate a token with
a reduced set of permissions that grants access only to the specific resources
defined in the `.gitlab-ci.yml` file.

## Design and implementation details

We will introduce support for defining permissions for each pipeline using a
declarative syntax in the [`.gitlab-ci.yml`](https://docs.gitlab.com/ee/ci/yaml/)
file to allow the generation of a `CI_JOB_TOKEN` with a reduced set of
permissions than the full access available to the user that triggerred the
pipeline.

The `permissions` declared in the `.gitlab-ci.yml` file cannot be used to
request access. It is used to generate a `CI_JOB_TOKEN` with a subset of the
full set of permissions available to the user. The access that is granted will
be determined through [project membership](https://docs.gitlab.com/ee/user/project/members/).

#### Syntax

The exact syntax for defining these permissions is yet to be determined.
Below are examples of what the syntax could look like:

**Example 1: Ability Name Encoding**

```yaml
permissions:
  read_issue:
    - project: gitlab-org/gitlab
    - project: self
      confidential: true
  read_repo:
    - project: gitlab-org/gitlab
    - project: gitlab-org/www-gitlab-com
  create_release:
    - project: gitlab-org/gitlab
```

**Example 2: Extended Ability Name Encoding**

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

#### Usage

The permissions defined in the `.gitlab-ci.yml` file **limit** the access
available during pipeline execution. The user who triggers the CI job must have,
at a minimum, these permissions to perform the job. The purpose of declaring
these permissions is to specify the minimal **required** access.

To ensure the job receives a token with the necessary permissions, the user's
account must be granted these permissions before pipeline execution.

If the user's account lacks the permissions specified in the `permissions` block
of the `.gitlab-ci.yml` file, the pipeline will fail with an error indicating
the missing permissions.

When the user has the declared permissions, they will be encoded into an
ephemeral job token. This token, adhering to the [JWT](https://datatracker.ietf.org/doc/html/rfc7519)
standard, will include a digital signature that can be validated. When an API
receives the `CI_JOB_TOKEN`, it will verify the token's signature and process
the request according to the permissions defined in the token's `scope` claim.

This mechanism allows a token to be issued with reduced access, even if the
user's account has broader permissions.

If the `permissions` section is not specified in the `.gitlab-ci.yml` file, the
`CI_JOB_TOKEN` will have full access to the user's permissions. This default
behavior will change in a future major release, where the token will be encoded
with only the minimum permissions required to complete a build (e.g., updating
job status, uploading artifacts, sending job logs, and retrieving Git
repositories).

##### .gitlab-ci.yml

**Example 1: Single Project Configuration**

```yaml
# .gitlab-ci.yml
permissions:
  read_issue:
    - project: self
  read_repo:
    - project: self
```

**Example 2: Multi-Project Configuration**

```yaml
# .gitlab-ci.yml
permissions:
  read_issue:
    - project: self
  read_repo:
    - project: self
    - project: acme-org/bar
```

##### JWT Schema

The `CI_JOB_TOKEN` will be encoded with the following JWT payload.

```json
{
  "iss": "gitlab.com",
  "sub": "gid://gitlab/User/1",
  "aud": "",
  "exp": 1300819380,
  "scope": {
    "read_issue": [
      "gid://gitlab/Project/42"
    ],
    "read_repo": [
      "gid://gitlab/Project/42",
      "gid://gitlab/Project/43"
    ]
  }
}



```

- [`iss`](https://datatracker.ietf.org/doc/html/rfc7519#section-4.1.1): The entity that issued the token.
- [`sub`](https://datatracker.ietf.org/doc/html/rfc7519#section-4.1.2): The subject of the token, represented as a [Global ID](https://docs.gitlab.com/ee/api/graphql/#global-ids).
- [`aud`](https://datatracker.ietf.org/doc/html/rfc7519#section-4.1.3): The intended audience of the token (e.g., the REST API, GraphQL API, Docker Registry API, etc.).
- [`exp`](https://datatracker.ietf.org/doc/html/rfc7519#section-4.1.4): The token's expiration time (defaults to the maximum duration of a CI job).
- [`scope`](https://datatracker.ietf.org/doc/html/rfc8693#name-scope-scopes-claim): The list of permissions available to the token. See the [Permissions](#permissions) section below for a comprehensive list.

**Pros:**

- Removes the need to write additional data to the database to represent temporary roles for each job.
- Supports changes in permissions in the `.gitlab-ci.yml` file, allowing two concurrent pipelines in the same project for different commits to operate with appropriate access controls independently.

**Cons:**

- Token revocation is more challenging with a stateless token.
- Requires pipeline authors to opt in.
- Requires pipeline authors to understand the new syntax.
- Potential for over-permissioning if the new syntax is too complex or if pipelines are failing.

#### Permissions

The following list of permissions was compiled from [this investigation](https://gitlab.com/gitlab-org/govern/authorization/team-tasks/-/issues/55).

##### Containers

| Endpoint                                                                                                                                    | Permission(s)                                        |
| --------                                                                                                                                    | -------------                                        |
| [Delete a registry repository tag](https://docs.gitlab.com/ee/api/container_registry.html#delete-a-registry-repository-tag)                 | `:admin_container_image OR :destroy_container_image` |
| [Delete a registry repository tags in bulk](https://docs.gitlab.com/ee/api/container_registry.html#delete-registry-repository-tags-in-bulk) | `:admin_container_image OR :destroy_container_image` |
| [Delete registry repository](https://docs.gitlab.com/ee/api/container_registry.html#delete-registry-repository)                             | `:admin_container_image OR :destroy_container_image` |
| [Get details of a registry repository tag](https://docs.gitlab.com/ee/api/container_registry.html#get-details-of-a-registry-repository-tag) | `:admin_container_image OR :read_container_image`    |
| [List registry repositories](https://docs.gitlab.com/ee/api/container_registry.html#list-registry-repository-tags)                          | `:admin_container_image OR :read_container_image`    |
| [List registry repository tags](https://docs.gitlab.com/ee/api/container_registry.html#list-registry-repository-tags)                       | `:admin_container_image OR :read_container_image`    |

##### Deployments

| Endpoint                                                                                                     | Permission(s)                                |
| --------                                                                                                     | -------------                                |
| [List project deployments](https://docs.gitlab.com/ee/api/deployments.html#list-project-deployments)         | `:read_deployment`                           |
| [Get a specific deployment](https://docs.gitlab.com/ee/api/deployments.html#get-a-specific-deployment)       | `:read_deployment`                           |
| [Create a deployment](https://docs.gitlab.com/ee/api/deployments.html#create-a-deployment)                   | `:create_deployment AND :create_environment` |
| [Update a deployment](https://docs.gitlab.com/ee/api/deployments.html#update-a-deployment)                   | `:read_deployment AND :update_deployment`    |
| [Delete a specific deployment](https://docs.gitlab.com/ee/api/deployments.html#delete-a-specific-deployment) | `:destroy_deployment`                        |

##### Environments

| Endpoint                                                                                                                    | Permission(s)                                |
| --------                                                                                                                    | -------------                                |
| [List environments](https://docs.gitlab.com/ee/api/environments.html#list-environments)                                     | `:read_environment`                          |
| [Get a specific environment](https://docs.gitlab.com/ee/api/environments.html#get-a-specific-environment)                   | `:read_environment`                          |
| [Create a new environment](https://docs.gitlab.com/ee/api/environments.html#create-a-new-environment)                       | `:create_environment`                        |
| [Update an existing environment](https://docs.gitlab.com/ee/api/environments.html#update-an-existing-environment)           | `:update_environment`                        |
| [Delete an environment](https://docs.gitlab.com/ee/api/environments.html#delete-an-environment)                             | `:read_environment AND :destroy_environment` |
| [Delete multiple stopped review apps](https://docs.gitlab.com/ee/api/environments.html#delete-multiple-stopped-review-apps) | `:read_environment AND :destroy_environment` |
| [Stop an environment](https://docs.gitlab.com/ee/api/environments.html#stop-an-environment)                                 | `:read_environment AND :stop_environment`    |
| [Stop stale environments](https://docs.gitlab.com/ee/api/environments.html#stop-stale-environments)                         | `:read_environment AND :stop_environment`    |


##### [Job Artifacts](https://docs.gitlab.com/ee/api/job_artifacts.html#get-job-artifacts)

| Permission(s)                       | Route                                                           |
| -------------                       | -----                                                           |
| `:read_build + :read_job_artifacts` | GET `/projects/:id/jobs/:job_id/artifacts/*artifact_path`       |
| `:read_build + :read_job_artifacts` | GET `/projects/:id/jobs/:job_id/artifacts`                      |
| `:read_build + :read_job_artifacts` | GET `/projects/:id/jobs/artifacts/:ref_name/download`           |
| `:read_build + :read_job_artifacts` | GET `/projects/:id/jobs/artifacts/:ref_name/raw/*artifact_path` |

##### [Jobs](https://docs.gitlab.com/ee/api/jobs.html#get-job-tokens-job)

| Permission(s)      | Route                                               |
| -------------      | -----                                               |
| `:read_build`      | GET `/job/allowed_agents`                           |
| `:read_build`      | GET `/job`                                          |
| `:read_build`      | GET `/jobs/:id/artifacts`                           |
| `:update_pipeline` | PUT `/projects/:id/pipelines/:pipeline_id/metadata` |

##### [Packages](https://docs.gitlab.com/ee/api/packages.html)

| Permission(s)                     | Route                                                                                            |
| -------------                     | -----                                                                                            |
| `:create_package`                 | POST `/groups/:id/-/packages/npm/*package_name/dist-tags`                                        |
| `:create_package`                 | POST `/projects/:id/-/packages/npm/*package_name/dist-tags`                                      |
| `:create_package`                 | POST `/projects/:id/packages/composer`                                                           |
| `:create_package`                 | PUT `/groups/:id/-/packages/npm/*package_name/dist-tags/:tag`                                    |
| `:create_package`                 | PUT `/projects/:id/-/packages/npm/*package_name/dist-tags/:tag`                                  |
| `:destroy_package`                | DELETE `/groups/:id/-/packages/npm/*package_name/dist-tags/:tag`                                 |
| `:destroy_package`                | DELETE `/projects/:id/-/packages/npm/*package_name/dist-tags/:tag`                               |
| `:destroy_package`                | DELETE `/projects/:id/packages/:package_id/package_files/:package_file_id`                       |
| `:destroy_package`                | DELETE `/projects/:id/packages/:package_id`                                                      |
| `:read_group + :read_package`     | GET `/groups/:id/-/packages/maven/*path/:file_name`                                              |
| `:read_group + :read_package`     | GET `/groups/:id/-/packages/maven/*path/:file_name`                                              |
| `:read_group + :read_package`     | GET `/groups/:id/-/packages/pypi/files/:sha256/*file_identifier`                                 |
| `:read_group + :read_package`     | GET `/groups/:id/-/packages/pypi/simple/*package_name`                                           |
| `:read_group + :read_package`     | GET `/groups/:id/-/packages/pypi/simple`                                                         |
| `:read_group`                     | GET `/group/:id/-/packages/composer/:package_name`                                               |
| `:read_group`                     | GET `/group/:id/-/packages/composer/p/:sha`                                                      |
| `:read_group`                     | GET `/group/:id/-/packages/composer/p2/:package_name`                                            |
| `:read_group`                     | GET `/group/:id/-/packages/composer/package`                                                     |
| `:read_package + :read_pipeline`  | GET `/projects/:id/packages/:package_id/pipelines`                                               |
| `:read_package`                   | GET `/groups/:id/-/packages/npm/*package_name/dist-tags`                                         |
| `:read_package`                   | GET `/groups/:id/-/packages/npm/*package_name`                                                   |
| `:read_package`                   | GET `/packages/maven/*path/:file_name`                                                           |
| `:read_package`                   | GET `/packages/maven/*path/:file_name`                                                           |
| `:read_package`                   | GET `/projects/:id/packages/:package_id/package_files`                                           |
| `:read_package`                   | GET `/projects/:id/packages/:package_id`                                                         |
| `:read_package`                   | GET `/projects/:id/packages/go/*module_name/@v/:module_version.info`                             |
| `:read_package`                   | GET `/projects/:id/packages/go/*module_name/@v/:module_version.mod`                              |
| `:read_package`                   | GET `/projects/:id/packages/go/*module_name/@v/:module_version.zip`                              |
| `:read_package`                   | GET `/projects/:id/packages/go/*module_name/@v/list`                                             |
| `:read_package`                   | GET `/projects/:id/packages/npm/*package_name/-/*file_name`                                      |
| `:read_package`                   | GET `/projects/:id/packages/npm/*package_name`                                                   |
| `:read_package`                   | GET `/projects/:id/packages/npm/-/package/*package_name/dist-tags`                               |
| `:read_package`                   | GET `/projects/:id/packages`                                                                     |
| `:read_package`                   | POST `/groups/:id/-/packages/npm/-/npm/v1/security/advisories/bulk`                              |
| `:read_package`                   | POST `/groups/:id/-/packages/npm/-/npm/v1/security/audits/quick`                                 |
| `:read_package`                   | POST `/projects/:id/-/packages/npm/-/npm/v1/security/advisories/bulk`                            |
| `:read_package`                   | POST `/projects/:id/-/packages/npm/-/npm/v1/security/audits/quick`                               |
| `:read_project + :create_package` | POST `/projects/:id/-/packages/pypi/authorize`                                                   |
| `:read_project + :create_package` | POST `/projects/:id/-/packages/pypi`                                                             |
| `:read_project + :create_package` | PUT `/projects/:id/packages/generic/:package_name/*package_version/(*path/):file_name/authorize` |
| `:read_project + :create_package` | PUT `/projects/:id/packages/maven/*path/:file_name/authorize`                                    |
| `:read_project + :create_package` | PUT `/projects/:id/packages/maven/*path/:file_name/authorize`                                    |
| `:read_project + :create_package` | PUT `/projects/:id/packages/maven/*path/:file_name`                                              |
| `:read_project + :read_package`   | GET `/projects/:id/-/packages/pypi/files/:sha256/*file_identifier`                               |
| `:read_project + :read_package`   | GET `/projects/:id/-/packages/pypi/simple/*package_name`                                         |
| `:read_project + :read_package`   | GET `/projects/:id/-/packages/pypi/simple`                                                       |
| `:read_project + :read_package`   | GET `/projects/:id/packages/generic/:package_name/*package_version/(*path/):file_name`           |
| `:read_project + :read_package`   | GET `/projects/:id/packages/maven/*path/:file_name`                                              |
| `:read_project + :read_package`   | GET `/projects/:id/packages/maven/*path/:file_name`                                              |
| `:read_project`                   | PUT `/projects/:id/packages/generic/:package_name/*package_version/(*path/):file_name`           |
| `:read_project`                   | PUT `/projects/:id/packages/maven/*path/:file_name`                                              |

##### [Releases](https://docs.gitlab.com/ee/api/releases/index.html)

| Permission(s)      | Route                                                          |
| -------------      | -----                                                          |
| `:create_release`  | POST `/projects/:id/releases/:tag_name/assets/links`           |
| `:destroy_release` | DELETE `/projects/:id/releases/:tag_name/assets/links/:link_i` |
| `:read_release`    | GET `/projects/:id/releases/:tag_name/assets/links/:link_id`   |
| `:read_release`    | GET `/projects/:id/releases/:tag_name/assets/links`            |
| `:update_release`  | PUT `/projects/:id/releases/:tag_name/assets/links/:link_id`   |

##### [Secure Files](https://docs.gitlab.com/ee/ci/secure_files/index.html#use-secure-files-in-cicd-jobs)

| Permission(s)         | Route                                                     |
| -------------         | -----                                                     |
| `:admin_secure_files` | DELETE `/projects/:id/secure_files/:secure_file_id`       |
| `:admin_secure_files` | POST `/projects/:id/secure_files`                         |
| `:read_secure_files`  | GET `/projects/:id/secure_files/:secure_file_id/download` |
| `:read_secure_files`  | GET `/projects/:id/secure_files/:secure_file_id`          |
| `:read_secure_files`  | GET `/projects/:id/secure_files`                          |

##### [Terraform](https://docs.gitlab.com/ee/user/infrastructure/index.html)

| Permission(s)            | Route                                                         |
| -------------            | -----                                                         |
| `:admin_terraform_state` | DELETE `/projects/:id/terraform/state/:name/lock`             |
| `:admin_terraform_state` | DELETE `/projects/:id/terraform/state/:name/versions/:serial` |
| `:admin_terraform_state` | DELETE `/projects/:id/terraform/state/:name`                  |
| `:admin_terraform_state` | POST `/projects/:id/terraform/state/:name/lock`               |
| `:admin_terraform_state` | POST `/projects/:id/terraform/state/:name`                    |
| `:read_terraform_state`  | GET `/projects/:id/terraform/state/:name/versions/:serial`    |
| `:read_terraform_state`  | GET `/projects/:id/terraform/state/:name`                     |

##### Miscellaneous

| Permission(s)                 | Route                                                 |
| -------------                 | -----                                                 |
| `:create_on_demand_dast_scan` | POST `/internal/dast/site_validations/:id/transition` |

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
