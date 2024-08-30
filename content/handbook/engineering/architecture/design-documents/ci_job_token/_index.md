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

- Revoking a JWT token can be more challenging compared to other token types.
- Pipeline authors need to actively opt in to use the new syntax.
- Pipeline authors must understand the new syntax to implement it correctly.
- There's a risk of over-permissioning if the new syntax is too complex or if pipelines fail, leading to potential security concerns.

#### Permissions

Below is a proposed mapping of the name of permissions that can be defined in a
`.gitlab-ci.yml` file and how they can be mapped to internal declarative policy
abilities.

| Category     | Permission (`.gitlab-ci.yml`) | Abilities (declarative policy)                                                                      | Description                                                            |
| --------     | ----------                    | ---------                                                                                           | -----------                                                            |
| Containers   | :admin_containers             | :admin_container_image, :read_container_image, :destroy_container_image                             | CRUD all container images in a project                                 |
| Containers   | :read_containers              | :read_container_image                                                                               | Read all container images in a project                                 |
| Deployments  | :admin_deployments            | :create_deployment, :read_deployment, :update_deployment, :destroy_deployment                       | CRUD all deployments in a project                                      |
| Deployments  | :read_deployments             | :read_deployment                                                                                    | Read all deployments in a project                                      |
| Environments | :admin_environments           | :read_environment, create_environment, :update_environment, :destroy_environment, :stop_environment | CRUD + Stop all environments in a project                              |
| Environments | :read_environments            | :read_environment                                                                                   | Read all environments in a project                                     |
| Jobs         | :admin_jobs                   | :read_build, :read_job_artifacts, :update_pipeline                                                  | Read all job metadata, upload artifacts and update the pipeline status |
| Jobs         | :read_jobs                    | :read_build, :read_job_artifacts                                                                    | Read all job metadata and artifacts                                    |
| Packages     | :admin_packages               | :read_package, :create_package, :destroy_package                                                    | Read, create and delete packages                                       |
| Packages     | :read_packages                | :read_package                                                                                       | Read all packages                                                      |
| Releases     | :admin_releases               | :read_release, :create_release, :update_release, :destroy_release                                   | CRUD all releases in a project                                         |
| Releases     | :read_releases                | :read_release                                                                                       | Read all releases in a project                                         |
| Secure files | :admin_secure_files           | :admin_secure_files, :read_secure_files                                                             | CRUD all secure files in a project                                     |
| Secure files | :read_secure_files            | :read_secure_files                                                                                  | Read all secure files in a project                                     |
| Terraform    | :admin_terraform_state        | :admin_terraform_state, :read_terraform_state                                                       | CRUD all terraform state files/versions                                |
| Terraform    | :read_terraform_state         | :read_terraform_state                                                                               | Read all terraform state files/version                                 |

The following list of permissions was compiled from [this investigation](https://gitlab.com/gitlab-org/govern/authorization/team-tasks/-/issues/55).

##### Containers

| Action                                                                                                                                      | Permission(s)                                        |
| --------                                                                                                                                    | -------------                                        |
| [Delete a registry repository tag](https://docs.gitlab.com/ee/api/container_registry.html#delete-a-registry-repository-tag)                 | `:admin_container_image OR :destroy_container_image` |
| [Delete a registry repository tags in bulk](https://docs.gitlab.com/ee/api/container_registry.html#delete-registry-repository-tags-in-bulk) | `:admin_container_image OR :destroy_container_image` |
| [Delete registry repository](https://docs.gitlab.com/ee/api/container_registry.html#delete-registry-repository)                             | `:admin_container_image OR :destroy_container_image` |
| [Get details of a registry repository tag](https://docs.gitlab.com/ee/api/container_registry.html#get-details-of-a-registry-repository-tag) | `:admin_container_image OR :read_container_image`    |
| [List registry repositories](https://docs.gitlab.com/ee/api/container_registry.html#list-registry-repository-tags)                          | `:admin_container_image OR :read_container_image`    |
| [List registry repository tags](https://docs.gitlab.com/ee/api/container_registry.html#list-registry-repository-tags)                       | `:admin_container_image OR :read_container_image`    |

##### Deployments

| Action                                                                                                       | Permission(s)                                |
| --------                                                                                                     | -------------                                |
| [List project deployments](https://docs.gitlab.com/ee/api/deployments.html#list-project-deployments)         | `:read_deployment`                           |
| [Get a specific deployment](https://docs.gitlab.com/ee/api/deployments.html#get-a-specific-deployment)       | `:read_deployment`                           |
| [Create a deployment](https://docs.gitlab.com/ee/api/deployments.html#create-a-deployment)                   | `:read_deployment AND :create_deployment` |
| [Update a deployment](https://docs.gitlab.com/ee/api/deployments.html#update-a-deployment)                   | `:read_deployment AND :update_deployment`    |
| [Delete a specific deployment](https://docs.gitlab.com/ee/api/deployments.html#delete-a-specific-deployment) | `:destroy_deployment`                        |

##### Environments

| Action                                                                                                                      | Permission(s)                                |
| --------                                                                                                                    | -------------                                |
| [List environments](https://docs.gitlab.com/ee/api/environments.html#list-environments)                                     | `:read_environment`                          |
| [Get a specific environment](https://docs.gitlab.com/ee/api/environments.html#get-a-specific-environment)                   | `:read_environment`                          |
| [Create a new environment](https://docs.gitlab.com/ee/api/environments.html#create-a-new-environment)                       | `:create_environment`                        |
| [Update an existing environment](https://docs.gitlab.com/ee/api/environments.html#update-an-existing-environment)           | `:update_environment`                        |
| [Delete an environment](https://docs.gitlab.com/ee/api/environments.html#delete-an-environment)                             | `:read_environment AND :destroy_environment` |
| [Delete multiple stopped review apps](https://docs.gitlab.com/ee/api/environments.html#delete-multiple-stopped-review-apps) | `:read_environment AND :destroy_environment` |
| [Stop an environment](https://docs.gitlab.com/ee/api/environments.html#stop-an-environment)                                 | `:read_environment AND :stop_environment`    |
| [Stop stale environments](https://docs.gitlab.com/ee/api/environments.html#stop-stale-environments)                         | `:read_environment AND :stop_environment`    |

##### Jobs

| Action                                                                                                                                                                         | Permission(s)                         |
| --------                                                                                                                                                                       | -------------                         |
| [Get job token's job](https://docs.gitlab.com/ee/api/jobs.html#get-job-tokens-job) | `:read_build` |
| [Get GitLab agent by `CI_JOB_TOKEN`](https://docs.gitlab.com/ee/api/jobs.html#get-gitlab-agent-by-ci_job_token) | `:read_build` |
| [Update pipeline metadata](https://docs.gitlab.com/ee/api/pipelines.html#update-pipeline-metadata) | `:update_pipeline` |
| [Get job artifacts](https://docs.gitlab.com/ee/api/job_artifacts.html#get-job-artifacts)                                                                                       | `:read_build AND :read_job_artifacts` |
| [Download the artifacts archive](https://docs.gitlab.com/ee/api/job_artifacts.html#download-the-artifacts-archive)                                                             | `:read_build AND :read_job_artifacts` |
| [Download a single artifact file by job ID](https://docs.gitlab.com/ee/api/job_artifacts.html#download-a-single-artifact-file-by-job-id)                                       | `:read_build AND :read_job_artifacts` |
| [Download a single artifact file from a specific tag or branch](https://docs.gitlab.com/ee/api/job_artifacts.html#download-a-single-artifact-file-from-specific-tag-or-branch) | `:read_build AND :read_job_artifacts` |

##### Packages

| Route                                                                                             | Permission(s)                     |
| -----                                                                                             | -------------                     |
| [List packages](https://docs.gitlab.com/ee/api/packages.html#for-a-project)                       | `:read_package`                   |
| [Get a project package](https://docs.gitlab.com/ee/api/packages.html#for-a-project)               | `:read_package`                   |
| [List package files](https://docs.gitlab.com/ee/api/packages.html#list-package-files)             | `:read_package`                   |
| [List package pipelines](https://docs.gitlab.com/ee/api/packages.html#list-package-pipelines)     | `:read_package + :read_pipeline`  |
| [Delete a project package](https://docs.gitlab.com/ee/api/packages.html#delete-a-project-package) | `:destroy_package`                |
| [Delete a package file](https://docs.gitlab.com/ee/api/packages.html#delete-a-package-file)       | `:destroy_package`                |
| PUT `/projects/:id/packages/generic/:package_name/*package_version/(*path/):file_name/authorize`  | `:read_project + :create_package` |
| GET `/projects/:id/packages/generic/:package_name/*package_version/(*path/):file_name`            | `:read_project + :read_package`   |
| PUT `/projects/:id/packages/generic/:package_name/*package_version/(*path/):file_name`            | `:read_project`                   |

**Maven**

| Permission(s)                                                                                                                                     | Route                             |
| -------------                                                                                                                                     | -----                             |
| [Download a package file at the instance level](https://docs.gitlab.com/ee/api/packages/maven.html#download-a-package-file-at-the-instance-level) | `:read_package`                   |
| [Download a package file at the group level](https://docs.gitlab.com/ee/api/packages/maven.html#download-a-package-file-at-the-group-level)       | `:read_group + :read_package`     |
| [Download a package file at the project level](https://docs.gitlab.com/ee/api/packages/maven.html#download-a-package-file-at-the-project-level)   | `:read_project + :read_package`   |
| [Upload a package file](https://docs.gitlab.com/ee/api/packages/maven.html#upload-a-package-file)                                                 | `:read_project + :create_package` |
| PUT `/projects/:id/packages/maven/*path/:file_name/authorize`                                                                                     | `:read_project + :create_package` |

**Pypi**

| Permission(s)                                                                                                                      | Route                             |
| -------------                                                                                                                      | -----                             |
| [Download a package file from a group](https://docs.gitlab.com/ee/api/packages/pypi.html#download-a-package-file-from-a-group)     | `:read_group + :read_package`     |
| [Group-level simple API index](https://docs.gitlab.com/ee/api/packages/pypi.html#group-level-simple-api-index)                     | `:read_group + :read_package`     |
| [Group level simple API entry point](https://docs.gitlab.com/ee/api/packages/pypi.html#group-level-simple-api-entry-point)         | `:read_group + :read_package`     |
| [Download a package file from a project](https://docs.gitlab.com/ee/api/packages/pypi.html#download-a-package-file-from-a-project) | `:read_project + :read_package`   |
| [Project-level simple API index](https://docs.gitlab.com/ee/api/packages/pypi.html#project-level-simple-api-index)                 | `:read_project + :read_package`   |
| [Project-level simple API entry point](https://docs.gitlab.com/ee/api/packages/pypi.html#project-level-simple-api-entry-point)     | `:read_project + :read_package`   |
| [Upload a package](https://docs.gitlab.com/ee/api/packages/pypi.html#upload-a-package)                                             | `:read_project + :create_package` |
| POST `/projects/:id/-/packages/pypi/authorize`                                                                                     | `:read_project + :create_package` |

**Composer**

| Permission(s)                                                                                            | Route             |
| -------------                                                                                            | -----             |
| [Base repository request](https://docs.gitlab.com/ee/api/packages/composer.html#base-repository-request) | `:read_group`     |
| [V1 packages list](https://docs.gitlab.com/ee/api/packages/composer.html#v1-packages-list)               | `:read_group`     |
| [V2 Package Metadata](https://docs.gitlab.com/ee/api/packages/composer.html#v2-package-metadata)         | `:read_group`     |
| [Create a package](https://docs.gitlab.com/ee/api/packages/composer.html#create-a-package)               | `:create_package` |

**NPM**

| Permission(s)                                                                                                    | Route              |
| -------------                                                                                                    | -----              |
| [Project-level: Download a package](https://docs.gitlab.com/ee/api/packages/npm.html#download-a-package)         | `:read_package`    |
| [Project-level: Upload a package](https://docs.gitlab.com/ee/api/packages/npm.html#upload-a-package-file)        | `:create_package`  |
| [Group-level: Package Metadata](https://docs.gitlab.com/ee/api/packages/npm.html#metadata)                       | `:read_package`    |
| [Project-level: Package Metadata](https://docs.gitlab.com/ee/api/packages/npm.html#metadata)                     | `:read_package`    |
| [Group-level: List tags](https://docs.gitlab.com/ee/api/packages/npm.html#list-tags)                             | `:read_package`    |
| [Project-level: List tags](https://docs.gitlab.com/ee/api/packages/npm.html#list-tags)                           | `:read_package`    |
| [Group-level: Create or update a tag](https://docs.gitlab.com/ee/api/packages/npm.html#create-or-update-a-tag)   | `:create_package`  |
| [Project-level: Create or update a tag](https://docs.gitlab.com/ee/api/packages/npm.html#create-or-update-a-tag) | `:create_package`  |
| [Group-level: Delete a tag](https://docs.gitlab.com/ee/api/packages/npm.html#delete-a-tag)                       | `:destroy_package` |
| [Group-level: Delete a tag](https://docs.gitlab.com/ee/api/packages/npm.html#delete-a-tag)                       | `:destroy_package` |
| POST `/groups/:id/-/packages/npm/-/npm/v1/security/advisories/bulk`                                              | `:read_package`    |
| POST `/groups/:id/-/packages/npm/-/npm/v1/security/audits/quick`                                                 | `:read_package`    |
| POST `/projects/:id/-/packages/npm/-/npm/v1/security/advisories/bulk`                                            | `:read_package`    |
| POST `/projects/:id/-/packages/npm/-/npm/v1/security/audits/quick`                                               | `:read_package`    |

**Go Proxy**

| Permission(s)                                                                                          | Route           |
| -------------                                                                                          | -----           |
| [List packages](https://docs.gitlab.com/ee/api/packages/go_proxy.html#list)                            | `:read_package` |
| [Version metadata](https://docs.gitlab.com/ee/api/packages/go_proxy.html#version-metadata)             | `:read_package` |
| [Download module file](https://docs.gitlab.com/ee/api/packages/go_proxy.html#download-module-file)     | `:read_package` |
| [Download module source](https://docs.gitlab.com/ee/api/packages/go_proxy.html#download-module-source) | `:read_package` |

##### Releases

| Action                                                                                            | Permission(s)      |
| --------                                                                                          | -------------      |
| [List links of a release](https://docs.gitlab.com/ee/api/releases/index.html)                     | `:read_release`    |
| [Get a release link](https://docs.gitlab.com/ee/api/releases/links.html#get-a-release-link)       | `:read_release`    |
| [Create a release link](https://docs.gitlab.com/ee/api/releases/links.html#create-a-release-link) | `:create_release`  |
| [Update a release link](https://docs.gitlab.com/ee/api/releases/links.html#update-a-release-link) | `:update_release`  |
| [Delete a release link](https://docs.gitlab.com/ee/api/releases/links.html#delete-a-release-link) | `:destroy_release` |

##### Secure Files

| Action                                                                                                  | Permission(s)                               |
| --------                                                                                                | -------------                               |
| [List project secure files](https://docs.gitlab.com/ee/api/secure_files.html#list-project-secure-files) | `:read_secure_files OR :admin_secure_files` |
| [Show secure file details](https://docs.gitlab.com/ee/api/secure_files.html#show-secure-file-details)   | `:read_secure_files OR :admin_secure_files` |
| [Create secure file](https://docs.gitlab.com/ee/api/secure_files.html#create-secure-file)               | `:admin_secure_files`                       |
| [Download secure file](https://docs.gitlab.com/ee/api/secure_files.html#download-secure-file)           | `:read_secure_files OR :admin_secure_files` |
| [Remove a secure file](https://docs.gitlab.com/ee/api/secure_files.html#remove-secure-file)             | `:admin_secure_files`                       |

##### Terraform

| Action                                                                                                                                                            | Permission(s)                                     |
| --------                                                                                                                                                          | -------------                                     |
| [Retrieve individual Terraform state version](https://docs.gitlab.com/ee/user/infrastructure/iac/terraform_state.html#manage-individual-terraform-state-versions) | `:read_terraform_state OR :admin_terraform_state` |
| [Remove individual Terraform state version](https://docs.gitlab.com/ee/user/infrastructure/iac/terraform_state.html#manage-individual-terraform-state-versions)   | `:admin_terraform_state`                          |
| [Remove a state file](https://docs.gitlab.com/ee/user/infrastructure/iac/terraform_state.html#remove-a-state-file-by-using-the-api)                               | `:admin_terraform_state`                          |
| Retrieve a state file                                                                                                                                             | `:read_terraform_state OR :admin_terraform_state` |
| Create a state file                                                                                                                                               | `:admin_terraform_state`                          |
| Create a lock file                                                                                                                                                | `:admin_terraform_state`                          |
| Delete a lock file                                                                                                                                                | `:admin_terraform_state`                          |

##### Internal

| Action                                                | Permission(s)                 |
| --------                                              | -------------                 |
| POST `/internal/dast/site_validations/:id/transition` | `:create_on_demand_dast_scan` |

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
