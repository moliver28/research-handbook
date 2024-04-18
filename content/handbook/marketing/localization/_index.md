---

title: Localization
description: Handbook page for localization processes.
---

## Introduction

This page contains guidelines for localization at GitLab. This page is currently maintained by the Globalization & Localization team.
- Daniel Sullivan, Director, Globalization & Localization
- Oleks Pysaryuk, Sr. Manager, Globalization Technology
- [Sr. Localization Content Manager (Japan)](https://boards.greenhouse.io/gitlab/jobs/6881554002)
- more coming soon...

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

Our current localization capablities are limited due to resources and bandwidth. Currently, we are focused on translating content that aligns to our Tier 1 and some Tier 2 countries. The Integrated Marketing team typically drives which translations are required, based on current campaigns and regional need. We are currently building a next generation technology platoform for localization, with a bias for speed and automation. As we transition from our old platform, some steps for fulfilling localization requests are manual but will not remain as such. We are working with a new supplier, Translated (#translated-team), for translation. You may reach out to the Translated team directly in Slack, but would prefer that you submit requests in our tracker located [here](https://gitlab.com/gitlab-com/localization/issue-tracker/-/issues/new?issuable_template=localization-request).

### Internal Reviews

We are currently moving the internal review process over to language leads and constractors, so that our in-market GitLab teams can focus on their normal duties. Please note, however, that we may need to engage the internal review team from time to time, as our new teams ramp up and build the context they need to successfully localize our content in a way that aligns to GitLab and local expectations. 

At the moment, our internal reviewers are volunteers. We completely appreciate that this task is on top of your day job and will continue to respect that. Both translation and reviews are conducted in Translated tooling; processes for review are currently a work in progress.

### Priority Countries

Annually we prioritize countries that we believe offer the most opportunity for GitLab. A listing of those countries and our expected level of investment are tracked in an internal document called: [Globalization Tracker](https://docs.google.com/spreadsheets/d/14GOJvADjS7R-zonQvx3ejiCgJGsCks3U0IbjwiFChRQ/edit#gid=427771731). 

### Tools & Capabilities

| Vendor | Capabilities | How to Access |
| ------ | ------------ | ------ | 
| [Translated](https://gitlab.slack.com/archives/C0576F7T3L2) | Translation service provider 
| [Crowdin](https://gitlab.enterprise.slack.com/archives/CBJAG3VHB) | Translation management system (TMS) for translation of product UI text: [translate.gitlab.com](https://docs.gitlab.com/ee/development/i18n/translation.html)
| [Spartan](https://gitlab.enterprise.slack.com/archives/C055FPHP287) | Suite of integrations between GitLab, MarTech, TMS, etc., for continuous localization of content  



### Localization Slack channels

We use Slack internally as a communication tool. The Localization channels are as follows:

- `#localization`: Central channel for translation and localization requests, and discusisons and collabodration with the Globalization & Localization team.
- `#translated-team`: For communication with our langauge services provider, Translated.
- `#spartan-software`: For communication with our technology partner, Spartan.
- `#oban-international`: For communication with our copywriting and digital marketing agency, Oban International.
- `#crowdin_gitlab`: For communication with our technology provider specifically for product string localization, Crowdin.

### Translating content for campaigns

Localized campaigns currently follow the [integrated campaign process](/handbook/marketing/campaigns/#campaign-planning). The Integrated Marketing team is responsible for content localization for integrated campaigns. 

### Translating content for Field Events

Content localization requests should align to the Integrated Campaigns and be submitted at the beggining of each quarter (post quartely planning session & FMM/Campaign QBRs). The purpose of streamlined process is to minimise the ad-hoc requests throughout the quarter. Any requests outside of quarterly planning should be submitted directly to the localization team, following a standard process and managed by the Field Marketing Team. 

### Language preference segmentation

In order to offer content and events in preferred languages where available, we have a `Language Preference` Segmentation created in Marketo. Only Marketing Ops can edit these segments. Available languages for this segmentation can be found on the [Marketo page](/handbook/marketing/marketing-operations/marketo/#segmentations). A person will be added to a `Language Preference` segment if they complete a form on our website or respond to a campaign that was offered in one of the available languages.

### Translated URL structure

All translated pages live in a sub-folder dedicated to a specific language. These sub-folders use [ISO 639-1 codes](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes). For example, German pages live in the `/de-de/` sub-folder.

Here is where all translated content exists in the Buyer Experience repository: 

- German: [buyer-experience/-/tree/main/content/de-de](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/tree/main/content/de-de)
- French: [buyer-experience/-/tree/main/content/fr-fr](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/tree/main/content/fr-fr)
- Japanese:[buyer-experience/-/tree/main/content/ja-jp](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/tree/main/content/ja-jp)

You can verify what translated pages are live on production by viewing our Buyer Experience sitemap @ https://about.gitlab.com/buyer-experience/sitemap.xml. All german URLs are listed together, so search for `/de-de/` and you'll be brought to the line where we start listing German translated pages. Same goes for other langauages.

### hreflang tagging

Search engines use the `hreflang` tag to determine a canonical version for translated pages. We'll use `hreflang` on our translated pages.

`hreflang` tags start with declaration `<link rel="alternate"`, adds URL `href={{url}}`, and ends with `hreflang={{language ISO}}`

Example of a hreflang tag for a URL translated to German.

`<link rel="alternate" href="https://about.gitlab.com/de-de/warum/nutze-continuous-integration-fuer-schnelleres-bauen-und-testen/" hreflang="de" />`

The canonical version of our site will the United States English version on `about.gitlab.com`. We need to add all versions of a page under the page title and link to each one with the appropriate language noted. [Google provides this example](https://developers.google.com/search/docs/advanced/crawling/localized-versions?visit_id=637504000817145606-3833240924&rd=1):

```
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

It's important to note we need to declare the default page from our repository as the canonical version to avoid penalities across Google properties.

Aleyda Solis maintains a great [tool to build `hreflang` tags](https://www.aleydasolis.com/english/international-seo-tools/hreflang-tags-generator/) we can use for reference as well.

### List of Localized Websites

| Language | Localized Landing Page | Status |
| ------ | ------------ | ------ |
| French | https://about.gitlab.com/fr-fr/ | Live |
| Japanese | https://about.gitlab.com/ja-jp/ | Live |
| German | https://about.gitlab.com/de-de/ | Live |
