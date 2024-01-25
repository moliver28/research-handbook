---
title: "Handbook frontmatter"
description: "Information on what frontmatter entries are available and how to use them."
aliases:
- /docs/frontmatter/
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
