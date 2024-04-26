---
title: Articles
description: Support Operations documentation page for Zendesk articles
canonical_path: "/handbook/support/readiness/operations/docs/zendesk/articles"
---

## Change management

Keep in mind, all change management should be stemming from an issue, first and
foremost.

#### Creating a new article

You will first need to get the managed content file in the Support managed
content project. Remember to use the correct filenames for all of this to
prevent potential pipeline errors in the sync repo project later on.

After you have got the managed content file in the Support managed content
project all setup, you now need to go create a placeholder article within
Zendesk itself (as you will need the ID for the sync repo). To do this,
[access Guide](../guide#accessing-zendesk-guide), click `Add` in the top-left
corner, and then click `Article`. Doing so will open up the article editor page.

On this page, you will do the following:

- Set the `Title` of the article to "Placeholder for ISSUE_LINK" (replacing
  `ISSUE_LINK` with the link to the issue you are working out of).
- Set `Managed by` to `Administrators`
- Set `Visibile to` to `Agents and admins`
- Set `Public in section` to `GitLab Support > Support Pages`
- Ensure the checkbox by `Open for comments` is unchecked
- Ensure the checkbox by `PRomote article` is unchecked
- Set the `Owner` to yourself
- Set the `Author` to yourself
- Ensure the `Labels` box is empty
- Ensure the `Related to` box is empty

After doing so, click the blue `Save` button at the bottom-right of the screen.
You will then locate the placeholder article you just created via the
[List Articles](https://developer.zendesk.com/api-reference/help_center/help-center-api/articles/#list-articles)
API endpoint. How you do this exactly is up to you, but generally speaking
something like this will work:

```bash
curl -ss https://gitlab.zendesk.com/api/v2/help_center/articles \
  -u $ZD_USERNAME/token:$ZD_TOKEN \
  | jq '.articles[] | select(.title == "ARTICLE_TITLE") | .id'
```

Replacing:

- `ZD_USERNAME` with your Zendesk user's email address
- `ZD_TOKEN` with your Zendesk API token
- `ARTICLE_TITLE` with the title of the placeholder article

From here, create the merge request in the sync repo project. We highly
recommend referencing the already existing files to get an idea of what the new
YAML file will need within it.

#### Updating an existing article

Updating an existing article is considerably easier than creating a new one.
Simply change change the code in the source project and it will occur via the
sync repo.

#### Deactivating an article

To deactivate an article, you will simply change the article file in the source
sync repo project via your merge request. Ensure you merge request does the
following:

- Moves the file from the `data/articles/active` folder to the
  `data/articles/inactive` folder
- Set `draft` to `true`

## Source Projects

#### Zendesk Global

- [Support managed content project](https://gitlab.com/gitlab-com/support/support-pages)
- [Sync repo project](https://gitlab.com/gitlab-support-readiness/zendesk-global/articles)

#### Zendesk US Government

- [Support managed content project](https://gitlab.com/gitlab-com/support/support-pages)
- [Sync repo project](https://gitlab.com/gitlab-support-readiness/zendesk-us-government/articles)
