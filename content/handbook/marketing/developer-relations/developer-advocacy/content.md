---
title: "Content workflows for Developer Advocates"
aliases:
- /handbook/marketing/developer-relations/developer-evangelism/content/index.html
---


## Content Library

The Developer Advocacy team creates content that can be reused for campaigns. All contents and activities the team participates in are added to the team's technical content plan sheet (search for `Technical Content Plan` in Google Drive) and [epics roadmap](/handbook/marketing/developer-relations/developer-advocacy/workflow/#roadmap-view).

You can search for relevant content and contact the team in the linked content epics or in the [#dev-advocacy-team](https://app.slack.com/client/T02592416/CMELFQS4B) Slack channel.

### Product Adoption Initiatives

- [FY25 GitLab Duo adoption - Developer Relations epic](https://gitlab.com/groups/gitlab-com/marketing/developer-relations/-/epics/475) (internal).
- [FY25 CI/CD adoption - Developer Relations epic](https://gitlab.com/groups/gitlab-com/marketing/developer-relations/-/epics/466) (internal)

### Blog posts

- [Abubakar Siddiq Ango](https://about.gitlab.com/blog/authors/abuango/)
- [Cesar Saavedra](https://about.gitlab.com/blog/authors/csaavedra1/)
- [Fatima Sarah Khalid](https://about.gitlab.com/blog/authors/sugaroverflow/)
- [Fernando Diaz](https://about.gitlab.com/blog/authors/fjdiaz/)
- [John Coghlan](https://about.gitlab.com/blog/authors/johncoghlan/)
- [Itzik Gan Baruch](https://about.gitlab.com/blog/authors/iganbaruch/)
- [Michael Friedrich](https://about.gitlab.com/blog/authors/dnsmichi/)
- [William Arias](https://about.gitlab.com/blog/authors/warias/)

### Click-through Demos

Click-through demos are product simulation demonstrations that can be used for self-guided training. They are invaluable for delivering demos to customers in areas with limited internet connectivity or complex environments, where preparation is necessary to showcase the flow. Toggle off the click boxes and speaker notes using fn+F2 to experience the real look and feel of the product.

* [GitLab Duo (AI) - 2023-07-23](https://tech-marketing.gitlab.io/static-demos/ai-demos.html)
* [Remote Development - 2023-05-23](https://tech-marketing.gitlab.io/static-demos/workspaces/ws_html.html)
* [Feature Flags - 2023-06-23](https://tech-marketing.gitlab.io/static-demos/feature-flags/feature-flags-html.html)
* [CI Overview - 2023-10-23](https://tech-marketing.gitlab.io/static-demos/ci_overview_v1.html)

Note: The demos can be run offline in the absence of internet connectivity. To do so, you can directly obtain the necessary HTML files from [here](https://gitlab.com/tech-marketing/static-demos/-/tree/master/public).

### Product tours

Product tours are a self-guided journey emphasizing the 'What' of a feature, skipping the 'How-to' steps to directly showcase the value aspects.

* [Interactive infographic - 2024-03-24](https://tech-marketing.gitlab.io/static-demos/gitlab-infographic.html)
* [Resolving vulnerabilities with GitLab Duo (AI) - 2024-02-24](https://tech-marketing.gitlab.io/static-demos/pt-explain-vulnerability.html)
* [CI/CD Catalog beta - 2024-01-24](https://gitlab.navattic.com/cicd-catalog)
* [Integrating security to the pipeline - 2024-01-24](https://gitlab.navattic.com/gitlab-scans)
* [Code Suggestions - 2024-01-24](https://gitlab.navattic.com/code-suggestions)


### Projects

Source code, demo projects, workshops, tutorials, research, etc. are documented in the [Projects handbook](/handbook/marketing/developer-relations/developer-advocacy/projects/). This includes use cases for GitLab Duo (AI), CI/CD components, DevSecOps and Security, Remote Development, GitLab API, etc.

### YouTube playlists

- [Developer Advocacy](https://www.youtube.com/playlist?list=PL05JrBw4t0Kq-bYO9jCJaN45BBpzWSLAQ) with talks, workshops and community engagements.
- [GitLab Duo Coffee Chat](/handbook/marketing/developer-relations/developer-advocacy/projects/#gitlab-duo-coffee-chat)


## Content Distribution

### Highspot

The team's content is distributed in [Highspot](https://gitlab.highspot.com/) in topic and type-specific spots, for example, [GitLab Duo (AI)](https://gitlab.highspot.com/spots/64b14e7cc4b08381c0408bb4) and [Customer Outreach](https://gitlab.highspot.com/spots/615dd7c2506d3fc490ad78cd).

### UTMs for URL tagging and tracking

The Developer Advocacy team works with the Developer Relations Team [UTM Strategy](/handbook/marketing/developer-relations/utm-strategy/), which is based on the larger [Marketing UTM strategy](/handbook/marketing/utm-strategy/). The `utm_content` prefix for the Developer Evangelism team is `de_`, this allows for easily filtering of the team's data in Sisense.

You can use the [UTM Generator](/handbook/marketing/developer-relations/utm-strategy/#utm-generator) on the Community UTM Page to easily generate UTM Codes for your campaigns.

We use the following campaigns:

1. [Blog posts (general)](https://campaign-manager.gitlab.com/campaigns/view/17) - All GitLab blog where we are not authors. Content tracking for social media.
1. [Blog posts (authors)](https://campaign-manager.gitlab.com/campaigns/view/18) - GitLab blog posts where we are authors. Content tracking for social media.
1. [Talk resources (general)](https://campaign-manager.gitlab.com/campaigns/view/13) - QR codes and short URLs for talk slides.
1. [Community newsletter](https://campaign-manager.gitlab.com/campaigns/view/27) - community newsletter short URLs.
1. [Demos (TMM, DE)](https://campaign-manager.gitlab.com/campaigns/view/50) - technical demos with standalone URLs.
1. [Release Evangelism](https://campaign-manager.gitlab.com/campaigns/view/3) - [Release evangelism activities](/handbook/marketing/developer-relations/developer-advocacy/social-media/#release-evangelism).
1. [Podcast resources](https://campaign-manager.gitlab.com/campaigns/view/38) - URLs shared with podcast hosts.
1. [Contributed articles](https://campaign-manager.gitlab.com/campaigns/view/47) - external articles shared on social media.

Event and content specific tracking examples are [KubeCon EU 2023](https://campaign-manager.gitlab.com/campaigns/view/36).

### Content Distribution Workflow

After content has been crafted and published, the next step is distribution. Here are some steps to assist in the process:

1. Use the [UTM Generator](/handbook/marketing/developer-relations/utm-strategy/#utm-generator) to create UTM codes and short URLs for your content. Further insights about this can be found in the Developer Advocacy [UTM Strategy](/handbook/marketing/developer-relations/utm-strategy/).

For documentation and community:

1. Tutorial blog posts, demos, etc. that are helpful to everyone should be added to the [GitLab documentation](https://docs.gitlab.com/). Follow the contribution docs and create [related topics](https://docs.gitlab.com/ee/development/documentation/topic_types/#related-topics) headings if not existing. Raise an MR, use content short URLs, and ask the [designed technical writer](/handbook/product/ux/technical-writing/#designated-technical-writers) to review. Example MR: [Add tutorial blog posts to workspaces docs](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/127500)
1. Consider sharing your content on one of our community platforms like the [GitLab Forum](https://forum.gitlab.com/) or the [r/gitlab](https://www.reddit.com/r/gitlab) subreddit. If you're covering a topic that's broader than GitLab, you can also consider other subreddits or cross-posting your content on blogging sites like dev.to.

For social media:

1. Draft some copy for sharing your content on social media. See [Content Sharing](/handbook/marketing/developer-relations/developer-advocacy/social-media/#content) for tips and an overview of different platforms. Review the [message tips](/handbook/marketing/developer-relations/developer-advocacy/social-media/#message-tips) for additional engagement ideas, e.g. emojis.
1. Suggest your content as a story on Bambu so other GitLab team members can also share it. [Details on how to suggest content on Bambu](/handbook/marketing/integrated-marketing/digital-strategy/social-marketing/team-member-social-advocacy/#suggesting-content-for-team-members-to-share-on-bambu).
1. After posting your content on social media, share a link in the [`#social-media-action`](https://gitlab.slack.com/archives/C01AZ9C8Z4G) Slack channel to request promotion from the social media team.

For GitLab teams:

1. Content that can be useful to our Field Teams, should also be posted in [Highspot](https://gitlab.highspot.com/).
1. Share an update in the [#dev-advocacy-team](https://app.slack.com/client/T02592416/CMELFQS4B) Slack channel using the following message template:


```
:results-tanuki: <Content type> published: <title>

Social short UTM URLs:

1. LinkedIn:
2. Twitter:
3. Mastodon:

Content epic: <URL>

Thanks/cc @teammembers
```

Example:

```
:results-tanuki:  Blog published: Set up your infrastructure for on-demand, cloud-based development environments in GitLab

Social short UTM URLs:

1. LinkedIn: https://go.gitlab.com/EHIjRt
2. Twitter: https://go.gitlab.com/uz7OSE
3. Mastodon: https://go.gitlab.com/pFxdKa

Content epic: <URL>

Thanks a lot @HelpfulCoworker for editing this long read :handshake: :purple_heart:
```
