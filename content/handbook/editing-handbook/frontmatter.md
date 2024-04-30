---
title: "Handbook frontmatter"
description: "Information on what frontmatter entries are available and how to use them."
aliases:
- /docs/frontmatter/
controlled_document: true
---

This page covers what frontmatter information is available on handbook pages, and their usage.

## Format and title

At the top of the file, start with three hyphens, frontmatter entries, closing with
three more hyphens:

```plain
---
title: "Page title"
other_attribute: "see other sections for what's valid"
---
```

Every page should have a title at minimum.

## Description

A description is very useful to provide a summary and will be displayed in the list of leaf pages.

Whether a list of leaf pages is displayed depends on the layout.
By default, the list is shown at the bottom of the page.

```plain
description: "Summary of page content."
```

## Aliases

The aliases provide a list of other paths the current page should be for.
Essentially, it's providing redirect paths.

If a user visits one of the listed aliases, it will redirect to the current page.

```plain
aliases:
- /handbook/page/path/
- /handbook/old/page/location/
```

## Controlled Documents

[Controlled documents](/handbook/security/controlled-document-procedure/) require the handbook frontmatter attribute `controlled_document` set to `true`. This attribute also renders the warning header, linking to [controlled documents review section](/handbook/security/controlled-document-procedure/#review). Example:

```markdown
---
title: "Controlled Document Procedure"
description: "GitLab deploys control activities through policies and standards that establish what is expected and procedures that put policies and standards into action."
controlled_document: true
---

```

Some pages might not need the warning banner which can optionally be disabled using the `controlled_document_banner_disabled` attribute.

```markdown
---
title: "Public document without banner"
description: "..."
controlled_document: true
controlled_document_banner_disabled: true
---

```

## Page Types (Layouts)

**Note:** To keep the handbook consistent, we discourage overriding the page `type` (aka layout).

You may notice that some pages have `layout` in the frontmatter, such as:

```plain
---
title: "Some page"
layout: default
---
```

The `layout` keyword was used in the old `www-gitlab-com` project and is no longer relevant. Please remove it if you see it.

We now use the docsy theme, which includes some [provided layouts](https://www.docsy.dev/docs/adding-content/content/#content-sections-and-templates). By default, all handbook pages inherit the `docs` type specified [in `content/handbook/_index.md`](https://gitlab.com/gitlab-com/content-sites/handbook/-/blob/main/content/handbook/_index.md?ref_type=heads&plain=1#L8-9).

If you are adding a new top-level section to the site, we encourage you to do the same:

```md
<!-- content/<new_section>/_index.md -->
---
title: New Section
cascade:
- type: docs
---

Welcome to this new section of the handbook site!
```

One exception to this is the "news" section of the internal-handbook which [inherits the `blog` page type.](https://gitlab.com/gitlab-com/content-sites/internal-handbook/-/blob/main/content/news/_index.md?ref_type=heads&plain=1#L4)
