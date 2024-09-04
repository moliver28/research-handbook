---
title: "Direct Mail"
description: "Overview of direct mail programs as a tactic used within marketing campaigns, including account centric campaigns."
twitter_image: '/images/tweets/handbook-marketing.png'
twitter_site: "@gitlab"
twitter_creator: "@gitlab"
---

## Overview

This page focuses on direct mail as a tactic used within marketing campaigns, including account centric campaigns.

If you are interested in running a content syndication campaign, then please reach out to the  Demand Generation team. If you are in Field Marketing, please see [this page](/handbook/marketing/field-marketing/field-marketing-epics/#content-syndication) for Field Marketing epic details.

### Process in GitLab to organize a direct mail

The project owner is responsible for following the steps below to create the epic and related issues in GitLab.

1. Project owner creates the main tactic issue
1. Project owner creates the epic to house all related issues (code below)
1. Project owner creates the relevant issues required (shortcut links in epic code below)
1. Project owner associates all the relevant issues to the newly created epic, as well as the original issue
1. Project owner sets due dates for each issue, based on agreed upon SLAs between teams for each task, and confirms accurate ownership for each issue

*Note: if the date of a direct mail changes, project owner is responsible for changing the due dates of all related issues to match the new date, and alerting the team members involved.*

### Code for direct mail epic

```markdown
<--- Name this epic using the following format, then delete this line: Direct Mail - [Vendor] - [3-letter Month] [Date], [Year] --->

## [Main Issue >>]()

## [Copy for landing page and emails >>]() - template: https://docs.google.com/document/d/1j43mf7Lsq2AXoNwiygGAr_laiFzmokNCfMHi7KNLjuA/edit

## :notepad_spiral: Key Details
* **Project Owner:**
* **Coordinator:**
* **Type:** Direct Mail
* **Campaign Tag:**
* **Sales Segment (choose primary):** `Large, Mid-Market, or SMB`
* **Sales Region (choose one):** `AMER, EMEA, APAC`
* **Sales Territory (optional, if specific):**
* **Goal:** `Please be specific on the metric this is meant to impact.`
* **Budget:**
* **Launch Date:**  [MM-DD-YYYY] (this is the date of the first email, everything is in place to execute on this date)
* [ ] [main salesforce program]()
* [ ] [main marketo campaign]()
* [ ] Campaign UTM - FM to fill in (Format: campaign tag - change to all lowercase, no spaces, hyphens, underscores, or special characters)

## User Experience
[Tactic owner to provide a description of the user journey - from communication plan, to what the user experiences upon reciept, plus triggers on our end like confirmation email and how GitLab fulfils with the vendor, up until receipt by the user and answering whether or not we get confirmation that they received it... what is the anticipated journey after that?]

## Additional description and notes about the tactic
[Tactic owner add whatever additional notes are relevant here]

## Issue creation

* [ ] [Program Tracking](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=request-program-tracking)
* [ ] [List clean and upload issue](https://gitlab.com/gitlab-com/marketing/marketing-operations/issues/new?issuable_template=event-clean-upload-list)
* [ ] [Follow up email issue](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=request-email-followup)
* [ ] [Add to nurture issue](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=request-add-nurture)

/label ~"Direct Mail" ~"mktg-status::wip"
```
