---

title: "Core Web Vitals on about.gitlab.com"
description: "Core Web Vitals are a key way Google and other search engines measure about.gitlab.com and we share our goals and insights here."
---







# Core Web Vitals

[Core Web Vitals](https://web.dev/vitals/) are a set of performance metrics to determine the health and user experience for all pages of a website. It's been popularized by Google and is measured most often with their [Lighthouse CI](https://web.dev/lighthouse-ci/).

For quick reference we're providing a reference to the major aspects of a Core Web Vitals report.

- **FCP**, or [First Contentful Paint](https://web.dev/fcp/), measures from when a page starts loading and any part of the page's content becomes visible in the viewport. This can include text, images, svg elements, or non-white canvas elements.
- **Speed Index** shows [how quickly the contents of a page are visibly populated](https://web.dev/speed-index).
- **LCP**, or [Largest Contentful Paint](https://web.dev/lcp/), measures how fast a page loads by looking at how long it takes the largest image or text block to become visible in the viewport.
- **TTI**, or [Time to Interactive](https://web.dev/interactive/) measures how long it takes a page to become fully interactive. A page is fully interactive for this test after First Contentful Paint, all event handlers are registered for visible page elements, and the page responds to use interactions within 50 milliseconds. Any resources with delays impact this number, so keep an eye on external resources in reporting. It's possible external resources particularly wreak havoc on this report.
- **TBT**, or [Total Blocking Time](https://web.dev/lighthouse-total-blocking-time/), measures how long a page blocks interactions with any task length over 50 milliseconds as it loads between First Contentful Paint and Time to Interactive.
- **CLS**, or [Cumulative Layout Shift](https://web.dev/cls/) measures how much elements on page move as a page loads. This helps teams make sure interactions on their pages meet visitor expectations.

## about.gitlab.com Core Web Vitals reports

| Date       | FCP  | Speed Index | LCP   | TTI   | TBT     | CLS   |
| ---------- | ---- | ----------- | ----- | ----- | ------- | ----- |
| 2021-01-20 | 2.6s | 4.4s        | 11.3s | 13.4s | 1,370ms | 0.036 |
| 2021-01-22 | 2.6s | 4.7s        | 6.2s  | 10.1s | 900ms   | 0.09  |
| 2021-01-25 | 2.3s | 3.9s        | 6.7s  | 13.1s | 690ms   | 0.133 |

## Future iterations

We can incorporate Lighthouse CI to our pipeline stack for the www-gitlab-com project to deliver regular reports on performance. This would help us identify specific resources that consistently have problems loading and create targets for iterative improvements to page performance.

- Stage 0, current phase, with ad-hoc reports run to spot check performance.
- Stage 1, daily checks for homepage of [about.gitlab.com](https://about.gitlab.com/) to establish performance baselines and create improvement plan.
- Stage 2, weekly checks for 25% of pages in www-gitlab-com project to create average performance across the entire website.
- Stage 3, daily checks for 25% of pages in www-gitlab-com with weekly coverage for the entire project.
