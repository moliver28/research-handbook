---
title: Theme
description: Support Operations documentation page for our Zendesk theme
canonical_path: "/handbook/support/readiness/operations/docs/zendesk/theme"
---

### Change management

Keep in mind, all change management should be stemming from an issue, first and
foremost.

The process for modifying the theme should always be as follows:

1. [Create the merge request](#create-the-merge-request)
1. [Perform a full review of the changes](#perform-a-full-review-of-the-changes)
1. [Merge the changes into the master branch](#merge-the-changes-into-the-master-branch)

#### Never modify a theme in Zendesk itself

As we manage our themes via the API, you should **never** modify a theme
directly in Zendesk. Doing so will revert it from an "API theme" to a
"customized theme", making it no longer able to be managed via the API. As such,
you should only *ever* work out of merge requests from the source project.

If this should happen, please notify the team via our slack channel immediately.

#### Create the merge request

The first thing you should be doing is creating the merge request for the
changes. Doing so is *essential* for the rest of the process.

It is **critical** you ensure you update the theme's version in the
`data/theme/manifest.json` file. If this does not happen, the theme will fail to
actually update during the deployment sync.

To do this, locate the attribute `version` in the file and add 1 to the value
after the last decimal. As an example, if the version was `1.0.9`, you would
change it to `1.0.10`.

With your merge request created, a pipeline will automatically run to generate
a preview theme in the Sandbox. Once that pipeline compltes, it should add a
comment on the MR itself linking to it.

#### Perform a full review of the changes

With all that done, you can now review the changes and perform your testing. To
do that, use the theme URL from the job log. Navigating to it (once logged in)
will load the theme up and let you navigate its various pages.

**NOTE** Do not click `Edit code`! This will convert the theme to a non-API
theme, which might make it unable to be modified via the API.

#### Merge the changes into the master branch

Once all review and testing has been done, and the needed approvals have been
granted, you are good to merge the changes into the master branch. The preview
theme will be automatically removed from the corresponding Sandbox.

The changes will automatically be populated into both the production and sandbox
instances on the next deployment date.

### Source Projects

#### Zendesk Global

- [Sync repo project](https://gitlab.com/gitlab-support-readiness/zendesk-global/theme)

#### Zendesk US Government

- [Sync repo project](https://gitlab.com/gitlab-support-readiness/zendesk-us-government/theme)
