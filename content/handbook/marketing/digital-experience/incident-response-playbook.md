---

title: "Incident Response Matrix"
description: "A guide for incidents that may occur on the Marketing site"
---


## Overview

This page offers insights into incidents occurring on the GitLab marketing site, delineates methods to assess severity levels, and outlines avenues for obtaining support.

At the outset, it's important to note the diverse composition of our marketing site, consisting of multiple projects. While all deployments converge into the same GCP bucket, they employ varying technologies for website generation.

1. The Marketing site is composed of multiple repositories: the [blog](https://gitlab.com/gitlab-com/marketing/digital-experience/gitlab-blog), [www](https://gitlab.com/gitlab-com/www-gitlab-com), [navigation](https://gitlab.com/gitlab-com/marketing/digital-experience/navigation), [slippers](https://gitlab.com/gitlab-com/marketing/digital-experience/slippers-ui) and [buyer experience](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience). 

1. www-gitlab-com, Buyer Experience, and the Blog generate pages during the build process and upload these artifacts to a single GCP bucket. Upon pipeline execution, all artifacts are consolidated within the `/public` directory on our GCP bucket.


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
<tr>
<td>See [reporting an incident](https://handbook.gitlab.com/handbook/marketing/digital-experience/incident-response-playbook/#reporting-an-incident) below.</td>
<td>Create an issue and post in #digital-experience Slack channel</td>
<td>Create an issue and post in #digital-experience Slack channel</td>
</tr>
</tbody>
</table>

## Reporting an incident

**Point person:** [Nathan Dubord](https://gitlab.enterprise.slack.com/archives/D021YDB4FM4) - Working hours: 9am - 6pm Eastern

1. Post in the #digital-experience Slack channel and tag @digital-experience.
1. If there is no response within five minutes, report an incident by typing `/gitlab incident declare` anywhere in Slack.
2. Inside the pop-up, select the `gitlab-com/marketing/digital-experience/buyer-experience` project from the dropdown, and fill in the required fields.
3. This will create an incident and notify PagerDuty to alert members of the Digital Experience team.
4. PagerDuty will continuely escalate until contact with a team member has been made.

## If there is a critical stop business 

Please text the following in order (numbers are in Slack profiles):

1. [Lauren Barker](https://gitlab.enterprise.slack.com/archives/D0168EQ62EP)
1. [Carrie Maynard](https://gitlab.enterprise.slack.com/archives/D03RZD1F2JV)

_Call on the phone if no response within 15 minutes_
