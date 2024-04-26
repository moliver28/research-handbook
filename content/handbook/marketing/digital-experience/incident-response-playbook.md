---

title: "Incident Response Matris"
description: "A guide for incidents that may occur on the Marketing site"
---


### Overview

This page provides information on incidents with the GitLab marketing Site, ho tot determine the level of severity, and how to get support. 

Some things to note at the start - are marketing site is comprised of many projects. While everything get's deployed to the same GCP bucket, they do not all use the same technilogy to generate our website. 

1. The Marketing site is composed of multiple repositories: the [blog](https://gitlab.com/gitlab-com/marketing/digital-experience/gitlab-blog), [www](https://gitlab.com/gitlab-com/www-gitlab-com), [navigation](https://gitlab.com/gitlab-com/marketing/digital-experience/navigation), and [buyer experience](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience). 

2. The files for each of the pages in each of these repositories are generated at build time and uploaded as artifacts to GitLab pages. When a repository’s pipeline is run, all artifacts are fetched and merged together in the /public folder on our GCP bucket.

### Alerting

1. The Digital Experience Team is automatically alerted of 404 incidents flagged by Quantum Metric in our [#dex-alerts](https://app.slack.com/client/E03N1RJJX7C/C04N3EBAR36) slack channel.

2. We have a automated job that runs every Friday and creates a issue for all broken links.

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

1. How significant is the marketing site outage?
1. What is the scale of the incident? Importantly, the scale may correlate to the number of people impacted, but other factors must be considered. The team should ask:
  1. How many people are impacted?
  1. How many categories of our key stakeholders are impacted or could potentially be impacted?
  1. Even if the numbers are modest, does the incident impact one of your largest or most important customers or partners?
  1. Is anyone who is impacted particularly influential among other key audiences/stakeholders?
1. Is the incident tied to our core business?
1. Does the incident directly threaten or contradict our core CREDIT values?
1. Did the incident arise from an existing known problem within the company? For example:
  1. Has there been a lingering marketing site issue?
  1. Have there been whispers of team member dissatisfaction or complaints about culture, processes, and systems?
1. Has a similar incident occurred in the past? In other words, is this a repeated problem for the company?
1. Is the incident tied to or associated with a problem larger than the company? Is this a problem competitors or others in the industry have faced or are currently facing?
1. If the answer to any of the above is yes:
  1. How long was the company or a senior member of the company aware of the problem?
  1. Should the situation have been reported? Is there a question of negligence that needs to be addressed?
  1. How long did the situation go unaddressed?

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
4. All CMS related issues will be an immediate priority.

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
3. If the issue occurs outside of our working hours, please refer to our CMS Troubleshooting Playbook.
    1. GitLab team members who may be able to assist via Slack include:
        1. [Hanif Smith-Watson](https://gitlab.enterprise.slack.com/team/U014T1XSKT6) (UK, UTC +0)
        2. [Gonzalo Servat](https://gitlab.enterprise.slack.com/team/U02QHDGTTD2) (Australia, UTC+10)
        3. [Nick Veenhof](https://gitlab.enterprise.slack.com/team/U03BDC9MVKR) (Belgium, UTC +1)
4. If you have to wait for a Digital Experience team member to come online, you could create an issue using this template that details the problem which will get a headstart: https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/issues/new

## If there is a critical stop business (on the web) error
### Immediately Text
In order (numbers are in Slack profiles):

1. [Lauren Barker](https://gitlab.enterprise.slack.com/archives/D0168EQ62EP)
1. [Carrie Maynard](https://gitlab.enterprise.slack.com/archives/D03RZD1F2JV)

_Call on the phone if no response within 15 minutes_