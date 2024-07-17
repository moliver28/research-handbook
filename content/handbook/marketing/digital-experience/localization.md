---
title: Localization best practices
description: >-
    How to have a smooth translation process on the Buyer Experience project from start to finish, with common pitfalls and tips to make that easy for translators, stakeholders, and engineers.
---

## Purpose

Now that the Digital Experience team and the [Localization team](/handbook/marketing/localization/) have collaborated for many quarters, we want to outline our learnings to work more efficiently together.

## Existing Labels

* `dex-L10N`: issues that involve both teams
* `L10N-attention`: how to raise awareness to localization team to efforts that require their insight

[List of all labels in the Digital Experience group](https://gitlab.com/groups/gitlab-com/marketing/digital-experience/-/labels?subscribed=&sort=relevance&search=l10n)

### Summary

![Flowchart of process current process](current-expected-localization-flow.png)

Right now, an issue is created leading to UX and content to start working. Ideally, when the content is completed, UX can begin their work. After the UX is completed, this allows engineering and localization to begin their work. When engineers kick off a merge request, this allows content, UX, and engineering to make adjustments to the page. Note that we need the source language to be completed before translations can begin.

### Challenges

All of this has been synthesized by the [following issue comment](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/issues/3855#note_1980717872) as well as from [Phase 1 of localizing content](https://gitlab.com/gitlab-com/localization/localization-team/-/issues/169#recycle-improvements-what-can-be-improved), which fall into two buckets:

1. Technology: The engineering review process, and integration with other tools
1. People: Project management, including flow and organization

### What is Argo? How do I request access to Argo?

Argo is a translation service used by the localization team to manage files and assets that are to be translated. This epic was created to track onboarding into [Argo](https://gitlab.com/gitlab-com/localization/localization-team/-/issues/156). Here are issues that talk about [assets](https://gitlab.com/gitlab-com/localization/localization-team/-/issues/173) and [requests](https://gitlab.com/gitlab-com/localization/localization-team/-/issues/174) in the UI. You can request content that lives in YAML, or that [exists in Contentful](https://gitlab.com/gitlab-com/localization/localization-team/-/issues/172)

### When should pages become translated? Is it possible to release pages in multiple languages?

We are not in a mature enough spot to release in multiple languages. In our current state, we struggle between the increased lead time for translators, more complex QA processes across languages, and alignment between different teams.

As a rule, we are firing off translation requests _after_ the page is live in English. This is to avoid back and forth between content and localization. This means that we cannot start translating a page until after the English page is released.

### Contentful

#### What are source entries in Contentful?

This content comes from this [issue](https://gitlab.com/gitlab-com/localization/localization-team/-/issues/68), where we define source entries as a relationship between the authored content and the localized version. This is so that updates to the authored content can be correctly changed on the corresponding cloned entry. Whenever an entry in a different language is created, we must link it back to its English equivalent. This is important for the continuous translation process. _This applies to entries created by engineering_.

Every Content Type needs to have a single Entry Reference field so updates to the source content are correctly put onto the corresponding translation Entry when translated. The reference field should only accept the same Content type as its source field, and it should be hidden from the edit view, to prevent users from accidentally changing it.

#### What is the difference between field-level and entry-level localization?

Field-level localization allows content in different locales to exist within the same entry, with each locale being a field of the entry. Entry-level localization is when every different localized content piece is used as unique net-new entries with each locale. One way to think about this is that field-level localization creates more fields, but fewer entries. Entry-level localization creates more entries, but fewer fields.

Per this [comment](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/issues/3683#note_1901051450), we typically use both field and entry-level localization. It is up to the localization team in collaboration with Digital Experience to see which approach makes the most sense. Right now, prioritize using field level over entry-level, as entry-level is a lot more complex both for the Argo integration and engineering.

### Engineering

#### How Engineering kicks off a translation request

Engineers can kick off the translation process by [creating a new issue using the localization template](https://gitlab.com/gitlab-com/localization/issue-tracker/-/issues/new?issuable_template=localization-request) in the [Localization Issue Tracker project](https://gitlab.com/gitlab-com/localization/issue-tracker). This eventually leads to an item being created in Argo.

The source language's content must be completed for this to go through. Given that it takes them between 5-7 days to translate, communicate that with your stakeholders before committing to work. As a general rule, content should be completed before the start of an iteration to give ample time for translations and LQA.

**Note**: we may need to kick off a translation request ourselves in Argo, but this part of the process is a work in progress.

#### Best practices when building marketing pages to support internationalization

* If pages are built in Contentful, **avoid custom JSON**. This is important.
  * Custom JSON creates delays in the translation process, which slows down the velocity of our progress
* Make sure to link source entries from different locales to their English version. This is crucial for the continuous translation process. If you create new entries in new locale, please link them to the source entry.
* Encourage UX and L10n to talk to each other.
  * When net new pages are created, we should use the `i10n-attention` [label](https://gitlab.com/groups/gitlab-com/-/labels?subscribed=&sort=relevance&search=l10n-attention)
  * [Overflowing text](https://gitlab.com/gitlab-com/localization/localization-team/-/issues/171) due to the length of different character averages among locales

#### How do we deal with Marketo Forms?

Right now, each Marketo form ID is unique per every locale. We are looking into a potential solution so that one form holds each locale's content. This is being scoped out in [this issue](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/issues/3873).
