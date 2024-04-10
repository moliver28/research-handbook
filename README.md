# GitLab Handbook

## Introduction

Welcome to the GitLab Handbook.  This repository contains all of the content
for the Handbook on <https://handbook.gitlab.com/>.

The handbook site uses [Hugo](https://gohugo.io/) for static page generation
from Markdown.

The handbook uses a base theme called [Docsy](https://www.docsy.dev/). A custom theme override is located in the [Docsy GitLab Theme](https://gitlab.com/gitlab-com/content-sites/docsy-gitlab) project and automatically included in the handbook setup.

## Requirements

The recommended and documented way for building the handbook locally is using Docker or a compatible container runtime.

- Command line: git, wget (for syncing data)
- Docker or compatible runtime (for running the Hugo environment in a container)
    - On [macOS](https://handbook.gitlab.com/handbook/tools-and-tips/mac/#docker-desktop): Docker Desktop, Rancher Desktop, etc.
    - On [Linux](https://handbook.gitlab.com/handbook/tools-and-tips/linux/#production-engineering): Docker engine, Podman, etc.

## Getting started

1. [Clone this repository](#clone-this-repository)
1. [Set up the repository](#set-up-the-repository)
1. [Running Hugo](#running-hugo)
1. [Parameters for Hugo](#parameters-for-hugo)
1. [Build static files](#build-static-files)
1. [Linting content](#linting-content)

### Clone this repository

Cloning the repository allows you to manually edit the handbook locally. If you prefer to use the Web IDE, please continue reading the [editing the handbook](https://handbook.gitlab.com/handbook/editing-handbook/) documentation.

We recommend using git to clone the repository and then editing the handbook with a text editor such
as [Visual Studio Code](https://code.visualstudio.com/), [Typora](https://typora.io/),
[Nova](https://nova.app/) or [Sublime](https://www.sublimetext.com/) to name a few.

Clone the repo with HTTPS or SSH:

```shell
# HTTPS
git clone https://gitlab.com/gitlab-com/content-sites/handbook.git

# SSH
git clone git@gitlab.com:gitlab-com/content-sites/handbook.git
```

### Set up the repository

After cloning the repository, sync the required data files from the
data file location (currently the `www-gitlab-com` repository).  Without this
step, the handbook cannot be run locally.

Open a terminal, navigate into the cloned handbook repository path, and run the `sync-data.sh` script.

```shell
cd handbook

./scripts/sync-data.sh
```

### Running Hugo

Hugo needs to be run to generate the static files from the handbook markdown content.

You can use the Hugo container to start a locally running instance of the handbook, and verify how your changes look.

The following command starts the Hugo server, using the [`hugomods/hugo` container image](https://hugomods.com/docs/docker/#image-tags).
The `exts` container image tag is important, as it provides the required SASS/CSS conversion tools.

```sh
docker run --rm -v $(pwd):$(pwd) -w $(pwd) --network host hugomods/hugo:exts hugo server
```

This will start the Hugo server listening on `http://localhost:1313`. If that doesn't work, try `http://127.0.0.1:1313`. It may take a couple of minutes to load the first time.

You can also start a new container, and run the commands with Hugo manually.

```sh
docker run --rm -it -v $(pwd):$(pwd) -w $(pwd) --network host hugomods/hugo:exts sh

hugo server

ctrl+d # to quit
```

### Parameters for Hugo

The handbook is huge, and by default, the `hugo server` command loads everything to memory.

The following options for the `hugo` command can be helpful for debugging or otherwise running locally:

- `--environment=production`: generate a production build (asset minification, checksums, etc)
  - **Note:** `hugo v0.x.x+extended` version must be installed, use `hugo version` to check
  - **Note:** `npm i` must be run as a prerequisite to install `postcss` and `autoprefixer` dependencies
- `--renderToDisk`: slower but requires less memory to run. Useful if you have <16GB allocated to docker machine
- `--verbose`: enables verbose logging output
- `--templateMetrics` and `--templateMetricsHints`: prints metrics related to how frequently templates are invoked and how much time is being spent evaluating them
- `--printMemoryUsage`: periodically prints memory usage while the site is building

### Build static files

To render the entire site to disk (and inspect the output in `${PWD}/public`),
purge the generated files first, and then run Hugo.

```sh
make clean

docker run --rm -v $(pwd):$(pwd) -w $(pwd) hugomods/hugo:exts hugo
```

### Linting content

We use [`markdownlint-cli2`](https://github.com/DavidAnson/markdownlint-cli2) and [Vale](https://vale.sh) to enforce
rules in handbook content.

#### Markdownlint

We use `markdownlint-cli2` in our pipelines with a slightly customized set of rules. Before pushing any changes, you
should run `markdownlint-cli2` and fix any suggested changes to avoid pipeline failures.

To run `markdownlint-cli2` using Docker, run:

```sh
docker run --rm -v $(pwd):$(pwd) -w $(pwd) davidanson/markdownlint-cli2 content/**/*.md
```

#### Vale

We use Vale to warn when some rules from the
[Handbook Markdown Guide](https://gitlab.com/gitlab-com/content-sites/docsy-gitlab/-/blob/main/content/docs/markdown-guide.md?ref_type=heads#markdown-style-guide-for-the-handbook).
are broken. Vale is not run in pipelines.

To run Vale using Docker, run:

```sh
docker run --rm -v $(pwd):$(pwd) -w $(pwd) jdkato/vale content
```

## Support

For help and support with the development environment, please reach out in the public [#handbook](https://gitlab.slack.com/archives/C81PT2ALD) Slack channel.

If you encounter a problem or bug, please open an issue or MR.

## Contribution guidelines

For contribution guidelines see the [dedicated handbook page](https://handbook.gitlab.com/docs/).

## Architecture

The Markdown files get parsed by Hugo, and converted into static HTML files, including all assets (JS, CSS, images, etc.). The static files are uploaded to GitLab Pages.

### Required development versions

The handbook development environment requires the **extended** version of [Hugo](https://gohugo.io/). The extended version is required for the [Docsy GitLab theme](https://gitlab.com/gitlab-com/content-sites/docsy-gitlab) as we use SASS for generating the CSS stylesheets for the site.  This will also require the installation of Node/NPM.

Additionally, more software is required to develop the handbook:

1. Install Hugo following [their documentation](https://gohugo.io/getting-started/installing).
1. Install NodeJS through a package manager or [asdf](https://asdf-vm.com/guide/getting-started.html), and run `npm install`.
1. Install Git, curl, wget for sync scripts.
1. Install the GitLab CLI for linting jobs.
1. Install Golang for theme dependency development.

### Theme dependency

The [Docsy GitLab theme](https://gitlab.com/gitlab-com/content-sites/docsy-gitlab) is integrated into the handbook repository through a Go module in [go.mod](https://gitlab.com/gitlab-com/content-sites/docsy-gitlab/-/blob/main/go.mod?ref_type=heads).

### Templates and Partials

Review the Hugo development documentation to learn more.

- https://gohugo.io/templates/introduction/
- https://gohugo.io/functions/partials/

### CI/CD pipeline

The CI/CD pipeline uses GitLab Pages for Review Apps to preview the changes in the same environment.

#### Reviewer Roulette

The project uses [Reviewer Roulette](https://docs.gitlab.com/ee/development/code_review.html#reviewer-roulette) feature of [`danger-review` CI/CD component](https://gitlab.com/gitlab-org/components/danger-review/-/tree/main).
