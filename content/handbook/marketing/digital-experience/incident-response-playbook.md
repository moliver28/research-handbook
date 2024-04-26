---

title: "Incident Response Matris"
description: "A guide for incidents that may occur on the Marketing site"
---


## Overview

This page offers insights into incidents occurring on the GitLab marketing site, delineates methods to assess severity levels, and outlines avenues for obtaining support.

At the outset, it's important to note the diverse composition of our marketing site, consisting of multiple projects. While all deployments converge into the same GCP bucket, they employ varying technologies for website generation.

1. The Marketing site is composed of multiple repositories: the [blog](https://gitlab.com/gitlab-com/marketing/digital-experience/gitlab-blog), [www](https://gitlab.com/gitlab-com/www-gitlab-com), [navigation](https://gitlab.com/gitlab-com/marketing/digital-experience/navigation), and [buyer experience](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience). 

1. Each repository's pages are generated during the build process and uploaded as artifacts to a single GCP bucket. Upon pipeline execution, all artifacts are consolidated within the `/public` directory on our GCP bucket.

### Alerting

1. The Digital Experience Team receives automatic alerts for 404 incidents flagged by Quantum Metric in our [#dex-alerts](https://app.slack.com/client/E03N1RJJX7C/C04N3EBAR36) Slack channel.

2. An automated job runs every Friday, generating a issue for all broken links. [Example issue](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/issues/3676).

## Incident Matrix

<table class="table table-striped table-bordered">
<thead>
<tr>
<th style="background:red">Level 1</th>
<th  style="background:yellow">Level 2</th>
<th  style="background:pink">Level 3</th>
</tr>
</thead>
<tbody>
<tr>
<td>High risk</td>
<td>Medium risk</td>
<td>Low risk</td>
</tr>
<tr>
<td>Leaked mission-critical keys + env variables</td>
<td>Mission-critical / legal content errors (ex: incorrect pricing, drastic typos or verbiage errors on our high converting pages)</td>
<td>Section of site is missing (ex: events, press releases)</td>
</tr>
<tr>
<td>Major vendor failures related to infrastructure (GCP + Contentful).</td>
<td>Integration failures (6sense, GA, etc)</td>
<td>Performance issues</td>
</tr>
<tr>
<td>Mission-critical pages are missing (ex: Homepage, missing, primary navigation)</td>
<td>Significant performance issues</td>
<td></td>
</tr>
</tbody>
</table>


### What level is this incident?

The following are the questions to consider when determining incident severity:

1. What's the impact level of the marketing site outage?
1. Have you monitored the #digital-experience-team or #dex-alerts Slack channels for any ongoing incidents?
1. How extensive is the incident? It's crucial to assess beyond the number of affected individuals, considering:
  1. The total number of impacted users.
  1. The potential impact on various categories of our key stakeholders.
  1. Whether the incident affects significant customers or partners, regardless of the scale.
1. Are any affected individuals influential among our key audiences or stakeholders?
1. Does the incident directly affect our core business operations?
1. Have we encountered a similar incident in the past? In essence, is this a recurring issue for the company?
1. Is the incident linked to broader industry challenges or trends? Are competitors or others facing similar issues?
1. Are vital business pages currently accessible?

## During Digital Experience Team Working Hours

**Point person:** [Nathan Dubord](https://gitlab.enterprise.slack.com/archives/D021YDB4FM4)

Eastern Timezone (UTC−5)

Working hours: 9am - 6pm Eastern

1. The DEX team is spread across North American time zones. Regular working hours span from 6am - 5:30pm Pacific (Convert to local timezone [here](https://www.timeanddate.com/worldclock/converter.html)).
2. If you experience any issues related to our CMS that require immediate attention, please post in [#digital-experience-team](https://gitlab.enterprise.slack.com/archives/CN8AVSFEY)
    1. Please tag the following people:
        2. [Lauren Barker](https://gitlab.enterprise.slack.com/archives/D0168EQ62EP)
        3. [Nathan Dubord](https://gitlab.enterprise.slack.com/archives/D021YDB4FM4)
        4. [Megan Filo](https://gitlab.enterprise.slack.com/archives/D02SNEUHZ3L)
        5. [Laura Duggan](https://gitlab.enterprise.slack.com/archives/D01H18BBUTW)
3. You can expect a response within minutes.
4. All marketing site incidents related issues will be an immediate priority.

## Outside Of Digital Experience Team Working Hours

**Point person:** [Nathan Dubord](https://gitlab.enterprise.slack.com/archives/D021YDB4FM4)

Eastern Timezone (UTC−5)

Working hours: 9am - 6pm Eastern

1. The DEX team is spread across North American time zones. Regular working hours span from 6am - 5:30pm Pacific (Convert to local timezone [here](https://www.timeanddate.com/worldclock/converter.html)).
2. If your issue occurs +/- 2hrs of our working hours, please text (phone numbers are available in Slack profiles) the following people based on timezone
    1. Eastern Timezone (UTC−5):
        1. [Nathan Dubord](https://gitlab.enterprise.slack.com/archives/D021YDB4FM4)
        2. [Laura Duggan](https://gitlab.enterprise.slack.com/archives/D01H18BBUTW)
    2. Central Timezone (UTC−6):
        1. [Megan Filo](https://gitlab.enterprise.slack.com/archives/D02SNEUHZ3L)
    3. Pacific Timezone (UTC−8):
        2. [Lauren Barker](https://gitlab.enterprise.slack.com/archives/D0168EQ62EP)
3. If the issue occurs outside of our working hours, please post in our Slack channel at #digital-experience-team
    1. GitLab team members who may be able to assist via Slack include:
        1. [Hanif Smith-Watson](https://gitlab.enterprise.slack.com/team/U014T1XSKT6) (UK, UTC +0)
        2. [Gonzalo Servat](https://gitlab.enterprise.slack.com/team/U02QHDGTTD2) (Australia, UTC+10)
        3. [Nick Veenhof](https://gitlab.enterprise.slack.com/team/U03BDC9MVKR) (Belgium, UTC +1)
4. If you have to wait for a Digital Experience team member to come online, you could create an issue using this template that details the problem which will get a headstart: https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/issues/new

## If there is a critical stop business 

Please text the following in order (numbers are in Slack profiles):

1. [Lauren Barker](https://gitlab.enterprise.slack.com/archives/D0168EQ62EP)
1. [Carrie Maynard](https://gitlab.enterprise.slack.com/archives/D03RZD1F2JV)

_Call on the phone if no response within 15 minutes_