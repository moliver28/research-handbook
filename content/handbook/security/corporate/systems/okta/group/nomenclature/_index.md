---
title: Okta Group Nomenclature
---

## Overview

Okta Groups need to follow standardized naming conventions for better discovery, tracking, and automation potential.

### Syntax for user-metadata groups

`{department_slug}.{functional_team_slug}.{specific_role_if_applicable}`

**Example:** `sales.account_exec.amer`

### Syntax punctuation

- periods (.) as separators
- underscores (_) for spaces
- not using hyphens (-) or camelCase

### App assignments groups

`app.{name_of_app}.{environment}.{role/permission}`

**Example:** `app.salesforce.prod.account_exec_emea`
