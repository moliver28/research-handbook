---
aliases: /handbook/engineering/development/analytics/analytics-instrumentation/gitlab_com_performance_dashboard.html
title: GitLab performance snowplow dashboards
description: "GitLab.com performance dashboards"
---

## Purpose

The purpose of these dashboards is to show performance of GitLab.com for users who allow us to collect performance data via snowplow. This
can be used to determine where there are potential performance issues in the product in order to improve the overall user experience.


[Overall performance dashboard](https://app.periscopedata.com/app/gitlab/790506/gitlab.com-performance-per-snowplow-dashboard)
{.h3}

This dashboard shows:

### Graph: Per week for the last 3 months

- Average and 50/90/99th percentiles for total load time
- Percentage of total page hits for the time period (to see if there is a relationship between page hits and response time)
- Average and 99th percentile time for key subcomponents of the total load time such as request, redirect, DOM, and processing time.

This can answer questions such as:
- Is performance improving over time?
- Is performance correlated to the amount of page hits?
- Where is most of the time spent in terms of components of the web pages loading?

{{< sisense dashboard="790506" chart="10800614" >}}

{{< sisense dashboard="790506" chart="10889514" >}}

{{< sisense dashboard="790506" chart="10964702" >}}

### Graph: Per hour for the last 2 weeks

*All times are UTC*

- Average and 50/90/99th percentiles for total load time
- Percentage of total page hits for the time period

This can answer questions such as:
- When did performance issues spike?
- Were there incidents during those times?
- Was there background maintenance going on during those times?
- Are there other causes?
- Is performance correlated to the amount of page hits?

### Graph: Per day of the week for the last 2 weeks

*0 = Sunday*

- Average and 50/90/99th percentiles for total load time
- Percentage of total page hits for the time period

This can answer questions such as:

- Is performance better on certain days of the week?
- Is performance correlated to the amount of page hits?

### Graph: Per hour of the day for the last 2 weeks

- Average and 50/90/99th percentiles for total load time
- Percentage of total page hits for the time period

This can answer questions such as:

- Is performance better on certain hours of the day?
- Is performance correlated to the amount of page hits?

### Table: Metrics per route

- Route name (a summary of the type of page being displayed, such as `merge_list` or `sourcecode_mr`)
- Average and 50/90/99th percentiles for total load time
- Percentage of total time on this route compared with all routes
- Percentage of total page hits analyzed
- Percentage of domains that used this page

This can answer questions such as:

- Which routes are used most often (by hits and/or by domains)?
- What are the performance metrics of these routes?
- Based on above, which routes should be analzyed for potential performance improvements?


## [Route drilldown dashboard](https://app.periscopedata.com/app/gitlab/815841/gitlab.com-performance-per-snowplow-per-route)

### How to use this page

Choose filters and then choose a route.  Note that if you don't see any data in this dashboard, it is likely because you haven't chosen a route [filter](https://documentation.sisense.com/latest/creating-dashboards/filtering-dashboards-and-widgets/designer-filters/interact-filter-viewer.htm#gsc.tab=0) yet.

### What does it contain in common with the main dashboard?

This has all of the same graphs as the same dashboard, but limited to a specific route.

This can be used to get more information on a specific route to identify trends for the route that should be considered for prioritization to resolve.

### Route Table

This dashboard also contains a route table that shows the slowest hits for the `gitlab-org` project for the route selected in the filter:

- Route name
- Timestamp
- Clickable URL
- Perfomance metrics from snowplow including: total time, redirect, unload, app cache, dns, tcp, request, response, processing, dom loading to interactive, dom interactiveto complete, and onload time.

This can be used to determine:

- When is this page slow (by day, by hour, by hour of the day, by day of the week)?
- What are some examples that were slow that can be analyzed to determine the causes as to why?
 

## Snowplow metrics

More information on snowplow metrics:

- [Snowplow performance timing fields](https://github.com/snowplow/snowplow-web-data-model/blob/master/README.md#3114-performance-timing-fields)
- [Measuring page load times](https://discourse.snowplowanalytics.com/t/measuring-page-load-times-with-the-performance-timing-context-tutorial/100)
- [Snowplow infrastructure](https://gitlab.com/gitlab-com/gl-infra/readiness/-/tree/master/library/snowplow)
- [Sitespeed dashboards](/handbook/engineering/performance/#all-sitespeed-dashboards)
- [Flow of a web request](/handbook/engineering/performance/#flow-of-web-request)


## How is this different than LCP?

[LCP (Largest Contentful Paint)](/handbook/engineering/development/performance-indicators/#largest-contentful-paint-lcp) measures the time to make a web page available for a user to see.  We measure this by periodically polling `specific pages` from a `specific user account`.  This is an excellent way to measure performance for end-users.

sitespeed.io measures hundreds of data points with a major focus is around loading performance on the different [web vitals](https://web.dev/vitals/) where LCP is one of them. It is a synthetic measurement by a docker container that does multiple runs against the specified URL's every 3 hours.

The dashboards described on this page use snowplow performance metrics which provide a different but also useful picture of end-user performance.  They don't show LCP but other related metrics and for `all pages` for `all users` (for users that allow us to collect this data).

They should be used in conjunction with each other to provide a thorough picture of the user performance experience.

## Videos

- [YouTube walkhrough of dashboards](https://www.youtube.com/watch?v=rcfO5RrpdDM)

{{< youtube rcfO5RrpdDM >}}
