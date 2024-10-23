---
title: Localization
description: Handbook page for localization processes.
---

## Introduction

This page contains guidelines for localization at GitLab. This page is currently maintained by the Globalization & Localization team.

- Daniel Sullivan, Director, Globalization & Localization
- Oleks Pysaryuk, Sr. Manager, Globalization Technology
- Megumi Uchikawa, Senior Localization Content Manager
- Rasam Hossain, Senior Fullstack Engineer
- Noriko Akiyama, Localization Specialist, Japanese*
- Maud Leuenberger, Content Manager, French*
- María José Salmerón Ibanez, Product Manager, Globalization*

*temporary service provider

## Overview

GitLab is a global company that does business around the world. In order to best serve our global customers, we localize some of our content and campaigns into non-English languages.

The team is also building technical capabilities and vendor partnerships, to:

- Continue and augment the ongoing translation of GitLab product user interface text, using [Crowdin](/handbook/business-technology/tech-stack/#crowdincom)
- Develop, own and maintain integrations and automations between TMS (translation management systems) and GitLab internal systems, GitLab projects, CMSes such as Contentful, MarTech tools such as Marketo, etc.
- Develop integrations to support continuous and automated localization of technical documentation that meets the requirements of the Docs as Code methodology.
- Build solutions for [context-enhanced translation, copywriting and linguistic review](https://gitlab.com/groups/gitlab-com/localization/-/epics/8) of GitLab product and website surfaces.
- Scale the integration to support transcreation for top level website pages and blogs.
- Integrate AI-powered translation capabilities and solutions, leveraging LLMs, into existing systems and pipelines, to enhance human translation workflows.


## Current State

Our current localization capabilities are limited due to resources and bandwidth. Currently, we are focused on translating content that aligns to our Tier 1 and some Tier 2 countries. We are currently building a next generation technology platform for localization, with a bias for speed and automation. As we transition from our old platform, some steps for fulfilling localization requests are manual but will not remain as such. We are also working with several suppliers for translation.

### Localization Slack channels

We use Slack internally as a communication tool. The Localization channels are as follows:

- `#localization`: Central channel for translation and localization requests, and discussions and collaboration with the Globalization & Localization team.
- `#tech-docs-localization`: Channel for quick communication and interactions between, mainly, the Localization team and the Technical Writing team.
- `#blog-localization-content`: Channel for communication around our international blogs
- `#translated-team`: For communication with our language services provider, Translated.
- `#spartan-software`: For communication with our technology partner, Spartan.
- `#oban-international`: For communication with our copywriting and digital marketing agency, Oban International.
- `#crowdin_gitlab`: For communication with our technology provider specifically for product string localization, Crowdin.
- `#argos_multilingual`: For communication with our language and technology provider for product and docs specifically.

### Tools & Capabilities

| Vendor | Capabilities |
| ------ | ------------ |
| [Translated](https://gitlab.slack.com/archives/C0576F7T3L2) | Translation service provider |
| [Crowdin](https://gitlab.enterprise.slack.com/archives/CBJAG3VHB) | Translation management system (TMS) for translation of product UI text: [translate.gitlab.com](https://docs.gitlab.com/ee/development/i18n/translation.html) |
| [Spartan](https://gitlab.enterprise.slack.com/archives/C055FPHP287) | Suite of integrations between GitLab, MarTech, TMS, etc., for continuous localization of content |
| [Argos Multilingual](https://gitlab.enterprise.slack.com/archives/C0764ESN2PN) | Translation and technology service provider |

### Lables

#### Localization request status labels:

| Label | Purpose |
| ------ | ------------ |
| `L10n-status::triage` | To triage localization requests or initiatives |
| `L10n-status::New Request` | To indicate a new localization request |
| `L10n-status:in progress` | To indicate that a localization request is in progress |
| `L10n-status:Completed` | To indicate that a localization request is completed |
| `L10n-status:LQA` | To indicate that a localization request is under localization quality assurance (LQA) |
| `L10n-status-blocked`| To indicate that the localization request is blocked |
| `L10n:: business owner review` | To indicate that the requesting team/person is reviewing the translations. Also used when an [Internal Reviews](#internal-reviews) is happening |
| `L10n::backlog`| For tracking issues in our backlog | 

#### Labels for our main localization pillars:
| Label | Purpose |
| ------ | ------------ |
| `L10n-mktg` | for work on marketing localization | 
| `L10n-infrastructure`| for work on our localization infrastructure and technology |
| `L10n-training` | related to learning everything about localization at Gitlab |
| `L10n-partners` | for tracking work vendor related |
| `L10n-docs`| for tracking work related to the localization of Gitlab documentation | 
| `L10n-product`| for tracking work related to the localization Gitlab product UI

#### Locale labels
| Label | Purpose |
| ------ | ------------ |
| `fr-FR` | tracking content and localization work in French |
| `de-DE`| tracking content and localization work in German | 
| `es-International`| tracking content and localization work in Spanish|
| `ja-JP` | tracking content and localization work in Japanese|
| `pt-BR` | tracking content and localization work in Brazilian Portuguese|
| `it-IT` | tracking content and localization work in Italian|


## Localization Processes 

**Primary Method**
Submit an issue through our [Localization Issue Tracker](https://gitlab.com/gitlab-com/localization/issue-tracker/-/issues/new?issuable_template=localization-request) when your content is ready for localization or review.

**Additional Support**
For general localization questions: 
- Join our `#localization` Slack channel
- Add the L10n-attention label to issues, epics, or merge requests
- Here you can view the status of current localization requests: [Issue Tracker Board](https://gitlab.com/gitlab-com/localization/issue-tracker/-/boards/7726880)

Note: While you can contact the Translated or Argos Multilingual team directly via Slack, we prefer submission through the Issue Tracker.

### When to engage with us
We recommend connecting with the Localization Team early in your project, especially for global initiatives affecting users across all regions that have a specific timeline. While we can't begin translations until content is finalized and approved, early collaboration during planning and ideation will ensure success.

### Internal Reviews

We are currently moving the internal review process over to language leads and contractors, so that our in-market GitLab teams can focus on their normal duties. Please note, however, that we may need to engage the internal review team from time to time, as our new teams ramp up and build the context they need to successfully localize our content in a way that aligns to GitLab and local expectations.

At the moment, our internal reviewers are volunteers. We completely appreciate that this task is on top of your day job and will continue to respect that. Both translation and reviews are conducted in Translated tooling; processes for review are currently a work in progress.

### List of Localized Websites

| Language | Localized Landing Page | Status |
| ------ | ------------ | ------ |
| French | https://about.gitlab.com/fr-fr/ | Live |
| Japanese | https://about.gitlab.com/ja-jp/ | Live |
| German | https://about.gitlab.com/de-de/ | Live |
| Italian | https://about.gitlab.com/it-it/ | Live |
| Brazilian Portuguese | https://about.gitlab.com/pt-br/ | Live |
| Spanish | https://about.gitlab.com/es-es/ | Live


## Marketing Localization

Our website is now available in 6 languages. While we're still in the process polishing existing page translations and expanding into getting more parts of the website localized, you can verify what translated pages are live on production by viewing our Buyer Experience sitemap @ https://about.gitlab.com/buyer-experience/sitemap.xml.

The translations of our website are stored between our CMS and the Buyer Experience repository:

- German: [buyer-experience/-/tree/main/content/de-de](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/tree/main/content/de-de)
- French: [buyer-experience/-/tree/main/content/fr-fr](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/tree/main/content/fr-fr)
- Japanese:[buyer-experience/-/tree/main/content/ja-jp](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/tree/main/content/ja-jp)
- Spanish [buyer-experience/-/tree/main/content/es](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/tree/main/content/es)
- Italian [buyer-experience/-/tree/main/content/it-it](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/tree/main/content/it-it)
- Brazilian-Portuguese [buyer-experience/-/tree/main/content/pt-br](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/tree/main/content/pt-br)

You can go to the [Digital Experience's Localization Best Practices team Handbook page](https://handbook.gitlab.com/handbook/marketing/digital-experience/engineering/localization/) for further technical details on localizing content on the Buyer Experience project.

### Translating content for campaigns

The Integrated Marketing team typically drives which translations are required, based on current campaigns and regional need. Localized campaigns currently follow the [integrated campaign process](/handbook/marketing/campaigns/#campaign-planning). The Integrated Marketing team is responsible for content localization for integrated campaigns.

### Language preference segmentation

In order to offer content and events in preferred languages where available, we have a `Language Preference` Segmentation created in Marketo. Only Marketing Ops can edit these segments. Available languages for this segmentation can be found on the [Marketo page](/handbook/marketing/marketing-operations/marketo/#segmentations). A person will be added to a `Language Preference` segment if they complete a form on our website or respond to a campaign that was offered in one of the available languages.

### Translated URL structure

All translated pages live in a sub-folder dedicated to a specific language. These sub-folders use [ISO 639-1 codes](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes). 

### hreflang tagging

Search engines use the `hreflang` tag to determine a canonical version for translated pages. We'll use `hreflang` on our translated pages.

`hreflang` tags start with declaration `<link rel="alternate"`, adds URL `href={{url}}`, and ends with `hreflang={{language ISO}}`

Example of a hreflang tag for a URL translated to German.

`<link rel="alternate" href="https://about.gitlab.com/de-de/warum/nutze-continuous-integration-fuer-schnelleres-bauen-und-testen/" hreflang="de" />`

The canonical version of our site will the United States English version on `about.gitlab.com`. We need to add all versions of a page under the page title and link to each one with the appropriate language noted. [Google provides this example](https://developers.google.com/search/docs/advanced/crawling/localized-versions?visit_id=637504000817145606-3833240924&rd=1):

```html
<head>
 <title>Widgets, Inc</title>
  <link rel="alternate" hreflang="en-gb"
       href="http://en-gb.example.com/page.html" />
  <link rel="alternate" hreflang="en-us"
       href="http://en-us.example.com/page.html" />
  <link rel="alternate" hreflang="en"
       href="http://en.example.com/page.html" />
  <link rel="alternate" hreflang="de"
       href="http://de.example.com/page.html" />
 <link rel="alternate" hreflang="x-default"
       href="http://www.example.com/" />
</head>
```

It's important to note we need to declare the default page from our repository as the canonical version to avoid penalties across Google properties.

Aleyda Solis maintains a great [tool to build `hreflang` tags](https://www.aleydasolis.com/english/international-seo-tools/hreflang-tags-generator/) we can use for reference as well.

## International Blog

GitLab's blog is available in Japanese, French and German, with a dedicated content manager:

| Language | URL | Content Manager |
| ------ | ------------ | ------ |
| JA | https://about.gitlab.com/ja-jp/blog/ | [Megumi Uchikawa](https://gitlab.com/muchikawa)
| FR | https://about.gitlab.com/fr-fr/blog/ | [Maud Leuenberger](https://gitlab.com/maudl-ext)  
| DE | https://about.gitlab.com/de-de/blog/ | [Cecile Solkan](https://gitlab.com/csolkan-ext)

## docs.gitlab.com Localization
We're working on localizing Gitlab documentation. 
More detailed information coming soon, meanwhile head to our [Docs Site Localization project](https://gitlab.com/gitlab-com/localization/docs-site-localization) for a more detailed information.