---
title: Navigation inventory
---

## Product contexts

{{% navigation-inventory %}}

## Missing a nav item?

Open an issue in [gitlab-org/gitlab](https://gitlab.com/gitlab-org/gitlab) describing the context, group, and name of the missing item. Include instructions on how to enable that item in the nav (e.g. set up X integration or enable Y setting). Add the ~"group::foundations" label and we'll pick it up in our next issue triage cycle.

## Updating this page

1. Generate the latest navigation information via `rake gitlab:nav:dump_structure > navigation.yml`
1. Copy `navigation.yml` into `handbook/data/navigation.yml`
1. Rebuild the handbook