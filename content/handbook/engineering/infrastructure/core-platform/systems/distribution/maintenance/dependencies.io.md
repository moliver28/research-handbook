---
aliases: /handbook/engineering/infrastructure/core-platform/systems/distribution/maintenance/dependencies.io.html

title: "Distribution Team usage of dependencies.io"
description: "Describes the external GitLab Projects used by the Distribution Team, how to handle MRs from these, and how to maintain dependencies.io for new dependencies."
---







## Common links

* [dependencies.io](https://dependencies.io)
* [depenencies.io docs](https://docs.dependencies.io/)

## Introduction

We use dependencies.io to monitor external repositories, and open a merge request to the appropriate project when an upgrade is release.

The projects currently using this are

* [omnibus-gitlab](https://gitlab.com/gitlab-org/omnibus-gitlab)
  * [Open Merge Requests](https://gitlab.com/gitlab-org/omnibus-gitlab/merge_requests?scope=all&utf8=%E2%9C%93&state=opened&label_name%5B%5D=dependencies.io&label_name%5B%5D=maintenance)
* [CNG images](https://gitlab.com/gitlab-org/build/CNG)
  * [Open Merge Requests](https://gitlab.com/gitlab-org/build/CNG/merge_requests?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=dependencies.io&label_name[]=maintenance)
* [charts/gitlab](https://gitlab.com/gitlab-org/charts/gitlab)
  * [Open Merge Requests](https://gitlab.com/gitlab-org/charts/gitlab/merge_requests?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=dependencies.io&label_name[]=maintenance)

Each repository contains a config file for the integration

* deps.yml - This is the configuration for dependencies.io and includes the settings for the Merge Requests the integration will open, as well as settings for the software components we're monitoring using the [git component](https://docs.dependencies.io/git/).

## Handling Merge Requests

When a merge request for the project is opened, it should automatically assign to
all the project's maintainers. The pipelines are configured to automatically build
and test (where appropriate) a project using the new software.

It is the responsibility of the entire Distribution team to ensure the merge requests
are handled in a timely fashion. Team members should assign available merge requests
to themselves, removing the other assignees, when they are going to work on them.
The team member needs to determine the appropriate milestone to target for the upgrade,
and verify the new software version works as expected. If everything looks good,
a changelog entry should be added, and the merge request assigned to a maintainer.

### omnibus-gitlab

The pipeline for the merge requests should run a triggered pipeline, which will build a package, and run gitlab-qa
against the package. Depending on the software, manual testing may be required. Once satisfied, a changleog entry
should be made, and the merge request should be assigned to a maintainer.

### CNG

The pipeline will build a new set of images using the required software. An instance of the helm charts should be
started, and testing done against that instance. Once complete, the MR should be assigned to a maintainer for
merging.

### charts/gitlab

The pipeline will install a review app version of the chart, and both spec and
QA tests are run against the review app. Depending on the software, manual testing
may be required. Once satisfied, a changelog entry should be made, and the merge
request should be assigned to a maintainer.

## Running dependencies.io locally

Running dependencies.io locally is useful for debugging issues or changes to the deps.yml.

In order to run locally, you need to have the [deps cli binary](https://docs.dependencies.io/local/)
installed, then navigate to the root directory of the project you want to run it
on, and run the following from your shell:

```bash
deps upgrade
```

For debugging it's useful to run with the `-v` flag for verbose output.

## Adding new dependencies

Add new dependencies to track to the `deps.yml` file. See the [depenencies.io git component documentation](https://docs.dependencies.io/git/)
for specifics on the syntax.

The typical process involves:

1. Adding the git repository as a key.
1. Specifying the list of files, with replacement pattern
1. Apply appropriate tag filtering settings (`semver`, `tag_prefix`, `prereleases`, `tag_filter`)
1. Verifying the [deps.yml works locally](#running-dependenciesio-locally)
