---

title: "CMS Troubleshooting Playbook"
description: "A guide for troubleshooting incidents that may occur on the Marketing site"
---

### Overview

1. The Marketing site is composed of multiple repositories: the [blog](https://gitlab.com/gitlab-com/marketing/digital-experience/gitlab-blog), [www](https://gitlab.com/gitlab-com/www-gitlab-com), [navigation](https://gitlab.com/gitlab-com/marketing/digital-experience/navigation), and [buyer experience](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience). 

2. The files for each of the pages in each of these repositories are generated at build time and uploaded as artifacts to GitLab pages. When a repository’s pipeline is run, all artifacts are fetched and merged together in the /public folder on our GCP bucket.

3. See [here](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab-ci.yml?ref_type=heads) for the www deployment script.

### If Blog pages are returning a 404

1. View the [GitLab Blog artifacts](https://gitlab.com/gitlab-com/marketing/digital-experience/gitlab-blog/-/artifacts). The artifact upload to GitLab Pages happens during the “Pages” job, and should be fairly large (over 80MiB)

2. If the artifact is smaller than that, it’s likely that most routes were not properly generated. Click into the job to view the build logs, and check for errors.

3. Check to see if that job itself has failed, and see if the logs give any indication of the failure. 

4. Occasionally, our requests will hit the Contentful rate limit, and need to be regenerated. The interval for requests has been set to 300ms to help mitigate this, but if the rate limit has been exceeded, re-run the pipeline.

5. If a corrupt artifact is introduced, we plan on implementing a test that checks for artifact size, which will alert the team that files are missing from the build.

   1. We’re planning to prioritize this feature in our 2024-01-03 to 2024-01-11 sprint.

5. Current fix: hardcode the routes in [route.contentful.js](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/route.contentful.js?ref_type=heads) (currently, some templated pages are built dynamically in their own functions at the top of that file). \[[Example MR](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/merge_requests/3339)]

### Testing

1. When working locally, run “yarn generate” with CTF\_CONTENT\_PREVIEW not active to ensure that the files are being generated properly.

   1. You will know the files are being generated properly as the log will begin outputting messages like “✔ Generated route "/page-name”

2. We currently check for crucial routes in [scripts/routeChecker](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/scripts/routeChecker.js?ref_type=heads), which runs during build time and should output if expected routes have not been properly generated. 

3. We are [investigating](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/issues/3270) a Cypress test that will check generated routes against a sitemap.

### Unpublishing a page in the CMS

To unpublish a page (either a blog post, or a marketing site page), navigate to the Page entry in Contentful. 

1. On the sidebar of the Page, click the Status dropdown, and select `Unpublish`. Note that you will need to have publishing permissions to access this functionality.

   - This pipeline takes about 15 minutes to run. You can check the status of the pipelines of the [Blog](https://gitlab.com/gitlab-com/marketing/digital-experience/gitlab-blog/-/pipelines) and the [Buyer Experience](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/pipelines)

2. Once that unpulish pipeline has completed, manually run the `deploy-cleanup-old-deleted-files` job in the www-gitlab-com project by clicking the [Pipeline Schedules page](https://gitlab.com/gitlab-com/www-gitlab-com/-/pipeline_schedules), and clicking the play button next to that job. 


### Disabling the Contentful Webhook

1. In order to prevent changes from being picked up by a pipeline, or to prevent users from hitting the rate limit when publishing many items in quick succession, you can disable the webhook in your contentful space: 

   1. Settings -> Webhooks -> CI Pipeline runner -> Webhook settings -> toggle the “Active” state to off. 

### CMS Support Plan
If non of the above is working, please refer to the [CMS Support Plan](/handbook/marketing/digital-experience/cms-support-plan/)
