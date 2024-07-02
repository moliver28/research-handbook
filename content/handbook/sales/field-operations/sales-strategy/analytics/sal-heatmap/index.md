---
title: "Sales Strategy - SAE Heatmap dashboard"
---

## SAE Heatmap dashboard

### Goal

The SAE Heatmap provides a high level view of current achivement, pipe coverage to quota and pipe generation for each SAE within a region.

**Example screenshot of the SAE Heatmap:**

![SAE Heatmap](sal_heatmap.jpg "SAE Heatmap")

### Access

Please reach out to [@nfiguera](https://gitlab.com/nfiguera) or another member of the SS&A team.

### Metrics

- Achievement (Monthly reconciled from Xactly)
- Open Pipe by Stage 1+, 3+, 4+
- Coverage by Stage 1+, 3+, 4+
- Pipeline Generation in Quarter (Net ARR & deal count)
  - NFQ+: Pipeline generated, expected to land in future quarters.

Most of these metrics are available for current quarter, next quarter and next quarter + 1.

### OKRs

Each RD is able to set up a set of OKRs for their region, specially for future quarters. For current quarters and FY, the OKR is set as the median of all the team members. The colors of the heatmap are based on those OKRs.

![Color code](okrs_colorcode.jpg "SAE Heatmap")

### Coverage calculation

Coverage is calculated per SAE as `Open Pipe Stage X+ / Remainder to Quota`.

**Remainder to Target** is calculated as  `Quota - Booked Net ARR` for current quarter

### Refresh rates

The dashboard is refreshed once a day between 8:00 and 9:00 AM PST time for Salesforce data. Achievement data is only refreshed after month's end.
