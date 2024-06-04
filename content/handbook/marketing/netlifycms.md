---

title: Content contribution to the GitLab marketing website via Netlify CMS
description: How to contribute content to the GitLab marketing website using Netlify CMS
---






## Introduction

Thanks for checking out how to contribute to the GitLab marketing website with Netlify CMS! We have three goals:

1. Improve [efficiency for the right group](/handbook/values/#efficiency-for-the-right-group) and make [self-service](/handbook/values/#self-service-and-self-learning) easier for team members who are [collaborating](/handbook/values/#collaboration) on the GitLab marketing website.
2. Provide clear [documentation](/handbook/values/#write-things-down) about using [Netlify CMS](https://www.netlifycms.org/) to edit the GitLab marketing website.
3. Enable GitLabs marketing team to [iteraterate](/handbook/values/#iteration) efficiently on content

Netlify CMS is an open-source content management system for your Git workflow that enables you to provide editors with a friendly UI and intuitive workflows. Content is stored in your Git repository alongside your code for easier versioning, multi-channel publishing, and the option to handle content updates directly in Git.

## Resources

- [Netlify CMS docs](https://www.netlifycms.org/docs/intro/)
- [Developer documentation for our implementation](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/doc/netlifycms.md)
- [Current merge requests with the `netlify-cms/draft` label](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests?label_name%5B%5D=netlify-cms%2Fdraft)
- [Current merge requests with the `netlify-cms/pending_review` label](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests?label_name%5B%5D=netlify-cms%2Fpending_review)
- [Current merge requests with the `netlify-cms/pending_publish` label](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests?label_name%5B%5D=netlify-cms%2Fpending_publish)

## Accessing the admin

To access the Netlify CMS:

1. Visit [about.gitlab.com/admin](https://about.gitlab.com/admin)
1. Click "Login with GitLab" and use your GitLab account, the one with membership privileges in [`www-gitlab-com` repository](https://gitlab.com/gitlab-com/www-gitlab-com)
1. If you have sufficient authorization, you should be redirected to the Netlify CMS admin page.

## Editorial workflow process

The editorial workflow enables Netlify CMS to create corresponding merge requests with your changes. Netlify CMS will open a merge request and make a commit through your account to a merge request with your changes to a single page. Future changes to the draft will be additional commits by the user making the changes to the draft. We can also use a traditional git workflow once the MR is created if someone wants to pull your branch and make changes that way instead.

The editorial workflow is a powerful process that allows content contributors and developers to contribute to the same merge request with different tools.

Access the workflow tab in Netlify CMS by selecting "Workflow" at the top of the admin UI. You can also reach it directly at [https://about.gitlab.com/admin/#/workflow](https://about.gitlab.com/admin/#/workflow)

| Actions in Netlify UI      | Perform these Git actions |
| ----------- | ----------- |
| Save draft | Commits to a new branch (named according to the pattern cms/collectionName/entrySlug), opens a merge request, and applies the `netlify-cms/pending_draft` label |
| Edit draft   | Pushes another commit to the merge request |
| Move from `Drafts` to  `In Review` in workflow tab | Applies the `netlify-cms/pending_review` label to merge request |
| Move from `In Review` to `Ready` in workflow tab | Applies the `netlify-cms/pending_publish` label to merge request |
| Publish  | Adds merge request to the merge train and deletes branch after it's deployed to master |

[Netlify CMS documentation on the editorial workflow](https://www.netlifycms.org/docs/configuration-options/#publish-mode)

## Creating a new or editing an existing page with Netlify CMS

To edit an existing or create a new page in Netlify CMS, make sure that the [content type](/handbook/marketing/netlifycms#content-types-enabled-in-netlify-cms) is enabled. If it is one of the supported content types, follow these steps to create an MR with your changes using Netlify CMS:

1. Follow steps above for [accessing the admin](/handbook/marketing/netlifycms#accessing-the-admin)
2. Select the content type you wish to add **or** edit an existing page from the left sidebar.
3. Select the page you want to edit or select "New (content type)" from the top.
4. Update your content.
5. Select "save". This may take a minute to complete.
6. Switch to the "Workflow" tab to see your draft and what stage it is in the editorial process.
7. Visit GitLab and locate the associated merge request with your edit.
    - If it's in the draft stage, you can find the MR with the [netlify-cms/draft label](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests?scope=all&utf8=%E2%9C%93&state=opened&label_name%5B%5D=netlify-cms%2Fdraft)
8. Assign the merge request to yourself, and assign a reviewer if it's ready to be reviewed.
9. Assign a reviewer with maintainer access to the `www-gitlab-com` repository when it's ready to be merged. **Note**: There is a separate approval process if you are planning to publish a new blog post. Please see the [blog handbook](/handbook/marketing/blog/) for instructions.

## Content types enabled in Netlify CMS

### Topic pages and web articles (aka child topic pages)

A topic is an industry trend, theme, or technology related to GitLab and our customers. For example, DevOps, GDPR, Containers, etc. Topic pages on our website educate the reader about the topic and share GitLab’s point of view while providing additional links to resources related to that topic. These pages are intended to attract search traffic.

Topic pages managed through Netlify CMS exist at [https://about.gitlab.com/topics/](https://about.gitlab.com/topics/). The content is located stored in the [`/data/topic`](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/topic) and [`/data/topic_children`](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/topic_children) directory in the `www-gitlab-com` repository. Netlify CMS allows the user to edit these data files through the admin interface.

### Typeform quizzes/landing pages

A Typeform page is a landing page that includes an embeddable Typeform quiz on it. Here is an example: [https://about.gitlab.com/quiz/software-supply-chain-security/](https://about.gitlab.com/quiz/software-supply-chain-security/)

Typeform pages managed through Netlify CMS. The content is located/stored in the [/data/typeform](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/typeform) directory in the `www-gitlab-com` repository. Netlify CMS allows the user to edit these data files.

### GitLab blog posts

Blog posts can be created and edited using Netlify CMS. Netlify CMS is especially good for starting your blog post, creating the proper markdown file that is structured correctly, and starting a merge request. Blog posts can be created with the traditional merge request workflow or through the Netlify CMS workflow. Be sure to read the [Blog Handbook](/handbook/marketing/blog/) for all instructions related to writing and creating a blog post.

Blog posts managed through Netlify CMS can be found at [https://about.gitlab.com/blog/](https://about.gitlab.com/blog/). The content is located/stored in the [`/sites/uncategorized/source/blog/blog-posts`](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/sites/uncategorized/source/blog/blog-posts) directory in the `www-gitlab-com` repository. Netlify CMS allows the user to edit these markdown files.

Please note that it takes time for all existing blog posts to load in the admin. You can use the "sort by" functionality to view only posts from a certain category. If you are creating a new blog post, you do not have to wait for all blog posts to load in the admin.

### Case Studies/Customer pages

A case study page is a landing page where customers share how they've been able to shorten the software development lifecycle while using GitLab.

Case studies managed through Netlify CMS can be found at [https://about.gitlab.com/customers/](https://about.gitlab.com/customers/). The content is located/stored in the [/data/case_studies_slippers](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/case_studies_slippers) directory in the `www-gitlab-com` repository. Netlify CMS allows the user to edit these data files.

### Event landing pages

Event landing pages can be created and edited using Netlify CMS.

Event landing pages managed through Netlify CMS can be found at `http://localhost:4567/event-slippers/name-of-event`. The content is located at [`data/event_slippers/`](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/event_slippers) directory in the `www-gitlab-com` repository. Netlify CMS allows the user to edit these `yml` files.

Please note that not all event landing pages are built using this process.

If you'd like to [use this feature for production builds of about.gitlab.com](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/sites/uncategorized/config.rb#L371), please notify the Digital Experience team.

#### Icon library for event template

We have a selection of icons available for the event template. These are svgs and require a specific string to work properly. We are iterating to make this a visual experience in the admin, however for the current iteration you must place the exact string in the icon field for it to work properly.

The option of icon strings available are:

- /icons/slp-tracks.svg
- /icons/slp-separator-vertical.svg
- /icons/slp-resource-tracks.svg
- /icons/slp-plus.svg
- /icons/slp-minus.svg
- /icons/slp-list.svg
- /icons/slp-group.svg
- /icons/slp-earth.svg
- /icons/slp-devops.svg
- /icons/slp-dashed-line.svg
- /icons/slp-countdown.svg
- /icons/slp-continuous-delivery.svg
- /icons/slp-connect.svg
- /icons/slp-community.svg
- /icons/slp-cog.svg
- /icons/slp-cloud.svg
- /icons/slp-chevron-lg-down.svg
- /icons/slp-checkmark.svg
- /icons/slp-caret-up.svg
- /icons/slp-caret-down.svg
- /icons/slp-calendar.svg
- /icons/slp-bulb.svg
- /icons/slp-arrow-left.svg

If you do not designate an icon, we have default ones set up for each block.

#### Icon color for tracks

For the tracks module, you must designate a background color for the icon. Current options are listed in our [Slippers Tailwind Config](https://gitlab-com.gitlab.io/marketing/inbound-marketing/slippers-ui/tailwind/#Colors).

Place the class name of background color you'd like your icon displayed on. For example `slp-bg-brand-purple`.

### Solution landing pages

Solution landing pages can be created and edited using Netlify CMS.

Solution landing pages managed through Netlify CMS can be found at [https://about.gitlab.com/solutions/](https://about.gitlab.com/solutions/). The content is located at [`data/solution_slippers/`](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/solution_slippers) directory in the `www-gitlab-com` repository. Netlify CMS allows the user to edit these `yml` files.

Please note that not all solution landing pages are built using this process.

To migrate an existing solution landing page over to a new template, make sure to remove the existing one from [`/sites/uncategorized/source/solutions`](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/sites/uncategorized/source/solutions). Please verify your review app is displaying your migrated solutions page properly!

#### Solution child pages

Solution child pages can be created and edited using Netlify CMS.

The content is located at [`data/solution_children/`](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/solution_children) directory in the `www-gitlab-com` repository. Netlify CMS allows the user to edit these `yml` files.

Please note that a parent solution page needs to be built with a data file at [`data/solution_slippers/`](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/solution_slippers) for this feature to be available in Netlify CMS.

## Admin features

### Media library

The media library allows users to browse images uploaded to Netlify CMS. We have designated specific directories for each block of a content type if it uses an image. You can upload an image to these blocks using the widget in the admin, and it will automatically upload the image to the correct place. It's also good to verify your edits are working by taking a look at the review app associated with your changes.

### YouTube markdown widget

To add a YouTube iframe in a markdown widget using Netlify CMS, do the following:

1. Edit a markdown block
1. Select the `+` icon in the editor
1. Select `youtube`
1. Enter the YouTube Video ID
1. That's it! The widget will be building the `<iframe>` code for you!

## Learning resource videos

Every two weeks, we create a Netlify CMS learning resource video. In the video, we will demonstrate up to three features or tips about using Netlify CMS on the GitLab marketing site.

[See all the Netlify CMS learning resource videos by the Digital Experience team here!](https://www.youtube.com/playlist?list=PL05JrBw4t0KpF23RDebkNFjB4dNRlvoGN)

## Report an issue

If you experience an issue or bug using the system, submit an issue! GitLab's marketing website (about.gitlab.com) is led by the Inbound Marketing Team and anyone can contribute. Please visit the [the Inbound Marketing handbook](/handbook/marketing/inbound-marketing/#requesting-support) to submit a support issue and make merge requests.

### Known issues in Netlify CMS

#### Drafts missing from the workflow tab

Sometimes drafts in progress are missing from the workflow tab in Netlify CMS. This makes it hard for an editor to access the Netlify CMS UI to continue editing this draft! This is a known [issue](https://gitlab.com/gitlab-com/marketing/inbound-marketing/growth/-/issues/1166). However, you can still access the draft editing interface with a direct URL.

The URL structure to find the draft in Netlify CMS is `/admin/#/collections/COLLECTION_NAME/entries/BRANCH_NAME?ref=workflow`

- `COLLECTION_NAME` = topic, topic_child, or blog_posts
- `BRANCH_NAME` = `name_of_page_edited`, this is the last part of branch name created by Netlify CMS which is `cms/collection_name/name_of_page_edited`.

**Find this information from the MR associated with your change.**

Here is an example [MR #78654](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/78654):

- Branch Name: `cms/topic/ci-cd`
- Netlify CMS Direct URL: `/admin/#/collections/topic/entries/ci-cd?ref=workflow`

The Netlify CMS Direct URL will no longer work once a merge request has been merged with the master branch.

#### Netlify CMS branches not deleted after merging with master

When a branch is published through Netlify CMS, the `cms/` branch remains in the repo after it's merged with master. This was reported [here](https://gitlab.com/gitlab-com/marketing/inbound-marketing/growth/-/issues/1171). This causes an API error message when a editor goes to edit the same page at a later date.

As a stop-gap solution, we are manually deleting merged `cms/` branches at the end of every iteration cycle.

### Can I still edit content locally or via the GitLab interface?

We hope the Netlify CMS integration is easy and comprehensive enough to meet all your day-to-day content editing needs. But we also understand sometimes people might prefer to edit their content locally through an IDE, or directly through the GitLab interface.

Netlify CMS is a layer on top of data that still lives in this git repository, and is still accessibile via your local environment or the GitLab interface. In many cases, the content exists as markdown files (for example, blog posts in `sites/marketing/source/blog/blog-posts`). In other cases, the content exists as a YAML file (for example, topic pages in `data/topic`).

You can determine the relevant file path to content by referencing the [Netlify CMS configuration file](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/sites/uncategorized/source/admin/config.yml). Most of our content types are [folder collections](https://www.netlifycms.org/docs/collection-types/#folder-collections). So if you check the configuration file for `folder` underneath the collection you want to edit, you'll see the path to its data files. From there, you can make edits in your IDE or the GitLab interface.

Since this manual editing is outside of the Netlify CMS formatting rules, you'll have to be mindful of formatting issues with YAML and Markdown, and may want to double check your local environment or review app before publishing changes.
