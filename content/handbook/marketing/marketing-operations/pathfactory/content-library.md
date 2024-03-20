---

title: "Content Library"
description: "The content library is where all your uploaded assets are stored and tagged in PathFactory."
---







## Content Library

The content library is where all your uploaded assets are stored and tagged in PathFactory.

### Before uploading content

1. Use the search to determine if it’s already been added. Be thorough, as the asset could also have a different URL. If you try to add a file or URL that's already in the library, the system will tell you it already exists. For example, uploading `https://about.gitlab.com/customers/extra-hop-networks/` and `https://about.gitlab.com/customers/extra-hop-networks` would be considered different URLs and both would be uploaded to the library (note the trailing `/`).
1. Ensure you have the most valuable version of the asset (blog post vs. case study or PDF).
1. Ensure you have the most recent version of the asset.
1. Follow the [blog style guide](/handbook/marketing/brand-and-product-marketing/content/editorial-team/).

### How to upload content

1. Click `Add Content` in the top right of the content library.
1. Choose how you will upload the asset (Website URL, file upload, or CSV).
    - For a Website URL, copy/paste the URL. For multiple URLs, paste one per line.
    - For a file upload, select this option and either drag and drop the file onto the file upload window or select it from your computer. Files can be up to 100MB.
    - [Follow the bulk upload instructions](#bulk-upload) to upload multiple assets to the content library via CSV.
1. Enter the title of the asset under `Public Configurations`. Ensure that the title is free of SEO meta information such as `| GitLab`.
1. Provide a clear and concise description of the content if one does not exist.
1. Select the content type from the dropdown.
1. An engagement score will populate based on the `content type` selected. Scoring thresholds by `content type` can be referenced [here](https://docs.google.com/spreadsheets/d/1Ihl2i9PTdxaiH7EuFCgMjXT-iR7QjvQj9oy6VILRk28/edit#gid=0)
1. Copy and paste the public title into the internal title field.
1. Funnel stage and estimated cost is set automatically based on the content type you chose earlier. Please leave these auto-generated tags as is and do not force change.
1. Set the language of the asset.
1. Select the Business Unit of the asset based on [GTM motion](/handbook/marketing/plan-fy22/#gtm-motions).
1. Set the expiry date of the asset if one exists.
1. Leave External ID blank.
1. Select the content topics on the right-hand side that categorize the asset. Follow the [content tag map below](#tracking-content) when tagging content with topics.

### After adding the asset to the library

1. Select the asset you just added to the library. A preview of the content will appear on the right-hand side of the content library. Scroll down the window pane under `source URL` and locate `Custom URL slug`.
1. Update the custom URL slug to be descriptive of the content with no stop words (and, the, etc.).
    1. **Please Note:** DO NOT change a custom URL slug that is part of a `[LIVE]` content track. You can see whether an asset is part of a live content track by clicking on it in the content library and scrolling to the bottom of the preview pane. This action can affect any links to this item that have been previously shared.
    1. If a URL slug needs to be modified, please open an issue in the marketing operations project.
1. We force `https://` to content tracks by default. As a result, all assets must use `https://` in the link to work in the content track properly. If you upload content that is _not secure_, it _will not_ show a lock icon next to the URL and it will not work in a secure content track. Please manually add `https://` if it is not already there.

### Replacing or updating the verson of an asset after initial upload

If you need to replace an asset source but keep the same link, you can do so from the content library.
* Select the asset from the content library
* On the right side, in the preview panel, scroll until you see `Source URL`
* When you hover over `Source URL` a pencil appears to the right
* Click the pencil/edit icon
* In the popup that appears, choose `File Upload` or `Website URL` as relevant
* Choose the updated version from your computer (or paste the new URL in)
* Click upload
* QA that the new version appears in "Preview" mode
* If used in a track, QA that the correct version appears in the track preview

### Bulk upload

You can [bulk upload multiple new assets](https://nook.pathfactory.com/nook/s/article/csv-upload) to the content library via a CSV file.

1. Download this [CSV template](https://d1nk153xyqlyhl.cloudfront.net/Content_CSV_Template.csv). This CSV file has the exact format as the CSV bulk upload template.
1. Provide all the information in the template for your new assets and save as a CSV.
1. Follow the standard procedure for uploading content and select CSV upload.
1. Upload your file and select the checkbox `Overwrite all duplicate content assets`.
1. Select the `Upload File` button.

Content owners understand how their content should be tagged. Marketing operations can assist with a bulk upload but are not responible for tagging the content with metadata (types, topics, etc.). If you would like marketing operations assistance with a bulk upload, open an issue in the marketing operations project using the [PathFactory Bulk Upload](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=pathfactory_bulk_upload) template.

### Analyst reports

Expiry dates will not automatically deactive content after expiration. You must manually deactivate the content if it’s past the expiry date. To expire an analyst report from PathFactory, [open an issue](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=campaigns-expire-analyst) in the Campaigns project using the `campaigns-expire-analyst` issue template.

### Vimeo links

To upload a Vimeo video to PathFactory, you must first [upload your video to Vimeo](/handbook/marketing/marketing-operations/vimeo/#upload). Once your video is uploaded to Vimeo, follow these steps to add to PathFactory:

1. Navigate to the `Settings` of your video in Vimeo.
1. Under `General > Privacy`, select `Hide this video from vimeo.com`. **Note:** Other privacy settings will not allow the video to be embedded in a content track.
1. Under `Where can this be embedded?` select `Specific domains` and enter `https://learn.gitlab.com`.
1. Click on the plus sign and you'll see the subdomain added to under the field.
1. Click `save`, and you'll notice Vimeo now indicates the video is private (in the top right corner).
1. Click on `Embed` in the left sidebar.
1. Click on the `Embed Code` Button in the top right corner.
1. Copy the player URL from within the Embed Code modal window.
1. Add this URL to the content library, and configure as usual.

**Example embed code with Vimeo player URL:**

`<iframe src="https://player.vimeo.com/video/514439220" width="640" height="360" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>`

The Vimeo player URL is the `https://player.vimeo.com/video/514439220` link within the embed code. This is the link used to upload to PathFactory.

When the asset is added to a content track, you'll have a working, embedded, private Vimeo video.

### Removing an asset from the library

**Important:** Do not remove an asset from the content library without first checking which content tracks it is in and following the procedure below. Certain assets within content tracks may be directly tied to an integrated campaign, digital advertising, or other live campaign. If you remove the asset from the library, it consequently removes it from whatever content tracks it is in, thus breaking the campaign setup and tracking.

1. Select the asset from the content libarary. A preview pane will pop-up on the right side.
1. Scroll to the bottom of the preview pane to view which content tracks the asset is in.
1. Collaborate with the `Author` of the respective tracks the asset resides in to ensure it is not linked within an ad, email, etc.
1. After confirming the asset is not directly linked in any external channel, remove the asset first from each content track, and then from the content library.
1. Post this change in the [PathFactory changelog](/handbook/marketing/marketing-operations/pathfactory/#changelog).

### Asset thumbnails

For assets that don't pull in a relevant thumbnail image, you can choose to upload a thumbnail image that closely matches the topic of the asset. The design team has made [topical thumbnail images](https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing/-/tree/master/design/web-design/pathfactory/content-thumbnails) available for upload to PathFactory. The thumbnail images are available in either an orange or dark purple background for the following topics:

- Agile
- CI/CD
- Cloud Native
- DevOps
- Git
- IT Management
- Microservices
- Open Source
- Security
- Single app
- Digital transformation
- VSM
- Workflow

To use a thumbnail image, visit the [web design repository](https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing/-/tree/master/design/web-design/pathfactory/content-thumbnails) where they are stored, choose the `png` folder, choose your preferred background color, then select the `.png` that most closely matches the topic of the asset in PathFactory you're uploading the image to. Use the list of topics above to determine the best topic fit.

#### Adding a thumbnail for an existing asset in the content library

1. Select your asset from the content library.
1. When the preview pane appears on the right, hover over the image and click the edit icon.
1. Under the thumbnail images tab, click to upload the thumbnail image you just downloaded. All images are already properly sized for PathFactory.

#### Adding a thumbnail for newly uploaded content

1. [Follow the regular process](/handbook/marketing/marketing-operations/pathfactory/content-library/#how-to-upload-content) for uploading new content to the library.
1. Directly under `Public Configurations`, you'll find the thumbnail for the asset. Hover over the image and click the edit icon.
1. Under the thumbnail images tab, click to upload the thumbnail image you just downloaded. All images are already properly sized for PathFactory.

### Content types

Unsure what content types align with your asset? Use the table below as a guideline to tag content you upload to PathFactory accordingly.

| Type | Use | Example |
| ---- | --- | ------- |
| Analyst report | Third-party content licensed from an analyst firm | [Gartner Magic Quadrant for ARO](/analysts/gartner-aro19/) |
| Assessment | Content with the primary purpose of providing a self-assessment, quiz, or maturity model. |  |
| Case study | Web articles that focus on the stories and opinions of GitLab customers. | [Goldman Sachs improves from 1 build every two weeks to over a thousand per day](https://about.gitlab.com/customers/goldman-sachs/) |
| Data sheet | A document providing the specifications of GitLab the product or feature/feature set. | [GitLab data sheet](/images/press/gitlab-data-sheet.pdf) |
| Demo | A live-action video recording demonstrating how to do or use a technical product. | [GitLab Security & Compliance Capabilities Demo](https://www.youtube.com/watch?v=UgCHtr-6uG8) |
| eBook | An eBook presents educational information that helps the reader gain a comprehensive understanding of a subject. eBooks are casual in tone and are most often an awareness-stage asset. | [Modernize your CI/CD](https://about.gitlab.com/resources/ebook-fuel-growth-cicd/) |
| Infographic | A visual asset used to represent information or data. |  |
| Landing page | | |
| Presentation | Video recording or slides of a live talk. | [Multicloudcon Keynote: The Multicloud Maturity Model](https://www.youtube.com/watch?v=R1LWQPAXFEE) |
| Pricing | A document that details pricing for GitLab products. | (GitLab pricing)[https://about.gitlab.com/pricing/] |
| Product article |  |  |
| Research report | An informational report which uses a specific research metholody to validate findings. | [2019 Global Developer Survey: DevSecOps](/developer-survey/) |
| Solution article |  |  |
| Technical blog post |  |  |
| Testimonials | A formal statement from a customer or user regarding GitLab's value. |  |
| Thought leadership blog post |  |  |
| Topic article |  |  |
| Video | A scripted, edited, & post-produced video. Videos can be promotional, educational, and/or animated. | [GitLab Infomercial](https://www.youtube.com/watch?v=gzYTZhJlHoI) |
| Webcast | A live broadcast & recording that includes a presenter, slides, and a live audience. | [Cloud Native Transformation with Ask Media Group](https://www.youtube.com/watch?v=3ED5NrVoVzk) |
| Whitepaper | Whitepapers are data-driven, persuasive, and opinionated reports that address a specific problem for a niche audience. A whitepaper presents new research, addresses a specific problem, and argues in favor of a specific solution. Whitepapers are academic and authoritative in tone. Whitepapers are most often introduced in the consideration or decision making stage to prove or validate a concept or solution. | [A seismic shift in application security](https://about.gitlab.com/resources/whitepaper-seismic-shift-application-security/) |

### Content topics

Unsure what content topics align with your asset? Use the table below as a guideline to tag content you upload to PathFactory accordingly.

| Topic | Use | Example |
| ----- | --- | ------- |
| Agile | | |
| All-remote | Content that covers remote work, including best practices, stories, and advice. | [The case for all-remote companies](https://about.gitlab.com/blog/2018/10/18/the-case-for-all-remote-companies/) |
| Amazon Web Services (AWS) | Content that relates Amazon Web Services. Likely use cases are case studies where the customer uses GitLab + AWS and integration information & tutorials. | [How to set up multi-account AWS SAM deployments with GitLab CI/CD](https://about.gitlab.com/blog/2019/02/04/multi-account-aws-sam-deployments-with-gitlab-ci/) |
| Azure | Content that talks specifically about Microsoft Azure. Likely uses cases are tutorials on using GitLab + Azure cloud or competitive content. | [Competitive analysis page for Azure DevOps](https://about.gitlab.com/blog/2020/07/09/integrating-azure-devops-scm-and-gitlab/) |
| Bitbucket | | |
| Checkmarx | | |
| Cloud native | Content that relates container-based environments. Specifically, technologies are used to develop applications built with services packaged in containers, deployed as microservices and managed on elastic infrastructure through agile DevOps processes and continuous delivery workflows. | [A Cloud Native Transformation](https://about.gitlab.com//webcast/cloud-native-transformation/) |
| Continuous delivery | Content that covers methods and tools for delivering or updating software in smaller increments, resulting in a better end-user experience. Both technical and strategic content may be found. | [Securing the journey to Continuous Delivery](https://about.gitlab.com/blog/2019/10/30/secure-journey-continuous-delivery/) |
| Continuous integration |  |  |
| DevOps | Content that relates to DevOps methods, process, culture, and tooling. [Keys to DevOps success with Gene Kim](https://www.youtube.com/watch?v=dbkj0qXQ22A) |  |
| DevSecOps | Content that relates specifically to integrating and automating security into the software development lifecycle. Content that relates to cybersecurity should be tagged `security` and not `devsecops`. | [A seismic shift in application security](https://about.gitlab.com/resources/downloads/gitlab-seismic-shift-in-application-security-whitepaper.pdf) |
| Digital transformation | Content that covers the process, methods, and strategy of integrating technology into all aspects of business. This content also includes strategies, tools, and tactics for furthering innovation, building new efficiencies, and delivering higher value faster. | [The cloud adoption roadmap](https://about.gitlab.com/blog/2019/12/05/cloud-adoption-roadmap/) |
| GitHub | | |
| GitOps | | |
| Google Cloud Platform (GCP) | | |
| Hashicorp | | |
| Infrastructure as code | | |
| Infrastructure automation | | |
| Jenkins | Content that is specifically about Jenkins. Likely uses cases are integrations, competitive, comparisons, and case studies. | [3 Teams left Jenkins: Here's why](https://about.gitlab.com/blog/2019/07/23/three-teams-left-jenkins-heres-why/) |
| JFrog | | |
| Jira | | |
| Kubernetes | Content that relates to implementing and using kubernetes. Likely use cases are cost/benefits, tutorials, and use cases. | [Kubernetes and the future of cloud native: We chat with Kelsey Hightower](https://about.gitlab.com/blog/2019/05/13/kubernetes-chat-with-kelsey-hightower/) |
| Open source | Content that covers open source projects, partnershipship initiatives, and community contributions. | [What to consider with an open source business model](https://about.gitlab.com/blog/2019/07/05/thoughts-on-open-source/) |
| Pulumi | | |
| Rally | | |
| Source code management | Content that relates to source code management, Git, GitLab Flow, and version control. | [GitLab Workflow: An Overview](https://about.gitlab.com/topics/version-control/what-is-gitlab-flow/) |
| Veracode | | |
| Version control and collaboration | | |

### Industry Verticals

Industry verticals are set using a standard list in SFDC per [this issue](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/2500).

1. Aerospace & Defense
1. Agriculture
1. Apparel
1. Automotive
1. Banking
1. Biotechnology
1. Chemicals
1. Communications
1. Construction
1. Consulting
1. Education
1. Electronics
1. Energy
1. Engineering
1. Entertainment
1. Environmental
1. Finance
1. Food & Beverage
1. Government
1. Healthcare
1. Hospitality
1. Insurance
1. Local
1. Machinery
1. Manufacturing
1. Media
1. Not For Profit
1. Other
1. Recreation
1. Retail
1. Shipping
1. State
1. Technology
1. Telecommunications
1. Transportation
1. Utilities

### Personas

1. Software Developer
1. Application Development Director
1. Vice President Application Development
1. Security Analyst
1. Infosec Director
1. Chief Information Security Officer
1. Operations Engineer
1. Infra Engineering Director
1. Vice President Infrastructure and Operations
1. Program Manager

### Business Unit

1. CI/CD
1. DevOps Platform
1. GitOps

### Blocked Content from Third-Party Web Pages

If you try to upload a web page from a domain that you do not own and that web page has not whitelisted your PathFactory track URLs, you will be served an error message telling you that you cannot upload this content to the Content Library.

Because you do not own this web page, your options are limited. You will be unable to add these third party web pages to the Content Library. You can use this content in an [End Promoter](/handbook/marketing/marketing-operations/pathfactory/#promoters) in a content track if the following is true:

1. You are building your [Content Track in Target](/handbook/marketing/marketing-operations/pathfactory/#content-tracks) (this is not currently supported in Recommend)
1. You are using the [Flow or Signpost Promoter](/handbook/marketing/marketing-operations/pathfactory/#promoters) (this is not currently supported for other Target promoter types)

**What you can do:**

When you enable the `End Promoter`, add the destination URL of the blocked content. When a visitor reaches the end of the Content Track, they will be prompted with your call to action `End Promoter`. If the visitor clicks on this promoter, the destination URL (of the blocked content) will open in a new tab.

More on iFrame blocking can be found [here](/handbook/marketing/marketing-operations/pathfactory/#about-iframes).

When uploading third-party assets, always ensure they are secure URLs (`https://`). Content that is not secure will not display in content tracks. Also, third-party web pages would need to allow iFraming as PathFactory tracks are served within an iFrame.

### Content Expiration Policy

Two years from the day it was uploaded. Please review any assets in the library older than two years and consider expiring from the content library.

**Important:** Please consult with marketing operations before [removing an asset from the library](#removing-an-asset-from-the-library) as it can have negative impacts (reporting, attribution) on content tracks that are tied to integrated campaigns.

## PathFactory Content Audits

On a quarterly to bi-quarterly basis, the marketing operations and content teams will conduct content audits in PathFactory to ensure the assets in the library are tagged with the correct metadata. Content audits in PathFactory are done to ensure the content performance reports are accurate. This helps all teams understand how certain types and topics of content perform. Without an accurate tagging of assets in the library, the data in our reports would be skewed, and thus our understanding of how our content performs.

Both marketing operations and the content marketing team work in collaboration with demand generation and product marketing to ensure alignment to GTM strategies as well.
