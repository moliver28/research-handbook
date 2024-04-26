---

title: "GitLab for Education Program Workflows"
description: "Details on program-specific workflows related to the GitLab for Education Program"
---

## Overview

This page contains details regarding workflows specific to the [GitLab for Education Program](https://about.gitlab.com/solutions/education/).
GitLab uses a third party, [SheerID](https://www.sheerid.com/), for verification services.
The GitLab for Education Program provides SheerID with the [program requirements](https://about.gitlab.com/solutions/education/join/#requirements) and the SheerID platform is able to verify if an individual meets our requirements by matching applicant-provided data against authoritative data sources automatically.
SheerID instantly confirms whether or not there is a match and either successfully verifies the applicant or rejects the applicant.

## Managing application forms

SheerID hosts two separate forms for the GitLab for Education Program due to differences in the reference the data set: the University Teacher Program form and the K-12 Teacher Program form

### University Teacher Program Form

The [University Teacher Program form](https://offers.sheerid.com/gitlab/university/teacher/) is the form for all higher education institutions in 194 countries.
This form contains the following fields:

- First Name
- Last Name
- Email Address
- Job Title
- Country (drop down list)
- Institution Name (drop down list)

For reasons relating to trade controls, we are unable to accept applicants from Cuba, Iran, Syria, North Korea, Russia, Belarus, or Ukraine.

### K-12 Teacher Program Form

The [K‒12 Teacher Program form](https://offers.sheerid.com/gitlab/k12/teacher/) is the form for all K-12 institutions in the United States.
SheerID does not currently have the reference data for K-12 in other countries, therefore this verification form is limited to the United States.

This form contains the following fields:

- First Name
- Last Name
- Email Address
- Job Title
- Institution Name (drop down list)

GitLab currently does not have the legal and operational requirements in place to offer SaaS licenses to any institution that may have children under the age of 13.
The K-12 portion of the GitLab for Education Program is therefore on hold until the requirements are in place.

## Application verification workflow

The SheerID verification flow for the University Teacher Program Form and K-12 Teacher Program Form are detailed here in the [SheerID Flows](https://developer.sheerid.com/concepts#flows) section of the [SheerID Developer Center](https://developer.sheerid.com/).

If applicants are not successful with the automated verification process, they will be prompted to upload a document that shows: full name and school name with a date in the current year.
Acceptable examples include Teacher ID card with valid date and pay stub from within the last 60 days.

### Manual application review

Applicants will have 3 attempts to upload a document providing verification of eligibility.
SheerID will manually review these documents.  Upon the third unsuccessful attempt, applicant will be rejected.

If SheerID is unable to determine the eligibility based on the document review, SheerID will forward the applicant's record to education@gitlab.com.
The GitLab for Education team will review the documentation and determine eligibility.

### Verification limit

Any individual can apply through the form and verify up to 5 times per 365 days.
This limit provides room for error and allows a single individual at an institution to apply for licenses on behalf of individual sub-units within the institution.
For example, an information technology administrator may apply and hold the license for multiple colleges or departments on one campus.
This limit is determined by GitLab and set in the system by SheerID.
It can be changed at any time.

## GitLab in Academic Research Citation Index

We have an MVC [GitLab in Academic Research Citation Index](https://about.gitlab.com/solutions/education/##gitlab-in-research) on the GitLab for Education Home page.
EndNote web will serve as the SSoT for the GitLab in Academic Research Citation Index displayed on our webpage.
EndNote is an online tool that stores citations, allows collaboration, and has search functions.
An added benefit of EndNote web is that we can export the citations in any standard citation format.

The workflow for updating and tracking the citation index is below.

You'll need to create an EndNote account from the [EndNote homepage](https://endnote.com/) and notify the Developer Relations team who will share the **GitLab Citation Index Group** with you.

### Finding and adding citations to the index

1. Find relevant citations on [Google Scholar](https://scholar.google.com/).
1. Save the citations your Google Scholar Library
1. Export the citations in EndNote format.
1. Log into your [EndNote account](https://endnote.com/). See note below if you do not have an account. Import the citations from Google Scholar
  - From the `Collect` menu go to `Import References`
  - Choose the File
  - For `Import Option` choose EndNote
  - For `To` choose **GitLab Citation Index Webpage** Group
1. View each citation from the `My References` menu
1. Update any relevant information that may have not imported correctly
1. Add relevant keywords
1. Save the citation

### Adding citations to the web page

1. Prepare a row in the citation index table on the webpage to store the new citation
1. In EndNote Web, go to `Format` and `Bibliography`
1. In `References` choose GitLab Citation Index Webpage
1. In `Bibliographic style` choose `Cite Them-Right Harvard`
1. In `Format Style` choose `HTML`
1. Preview and Print the index
1. Find the relevant citation
1. Copy and paste the citation into the placeholder
1. Update the `Notes` field in the citation record in EndNote with `added to website` so we are able to track which citations have been added.

## Producing content on Twitch

The following sections detail common Twitch streaming scenarios and explain best practices for using Twitch for education evangelism at GitLab.

### Selecting applications

1. [OBS](https://obsproject.com/). These apps are designed to create a stream that is them sent to Twitch. This is a way to stream if you are only hosting yourself, though Restream works well for this purpose. OBS allows for a more customizable approach to streaming, but Restream is an easier to pick up and use tool.
1. [Blackhole](https://existential.audio/blackhole/). OBS is unable to access Mac output audio natively. This 3rd party app allows for the output sound to be captured. If you don't plan to use any sounds other than your microphone, you won't need this, but a better viewer experience is achieved with desktop sounds including background music, sound effects, and guest audio.
1. [Restream](https://app.restream.io/home). Restream is a web app studio where you can host guests and stream to multiple destinations like Twitch, YouTube, and others. Restream is currently used as the method for streaming with guests. The account for restream is under the community team email and is available in the Marketing 1Password vault. The Education Evangelist is the only current role that uses it, but future shows may involve other hosts.

### Selecting hardware

Good headphones are paramount to good quality audio.
It's important to put the audio being listened to, or guests audio directly into your ears rather than into your room to avoid poor sound.
An external microphone and camera are an important part of a professional stream.
Microphones and Headphones can be [expensed](/handbook/finance/expenses/) as part of working at GitLab.

1. [Stream Deck](https://www.elgato.com/en/stream-deck). A Stream Deck allows you to have even more control over your stream. You can change scenes, control music and sound effects, there's even a plug in for common commands in VSCode. A stream deck is not required, but is part of many common streaming set ups.

### Streaming on Twitch

Using Twitch as part of the Education program involves using an Education Evangelists' personal Twitch account. You can find help creating one [here](https://help.twitch.tv/s/article/creating-an-account-with-twitch?language=en_US). Make sure to use your personal email and not your GitLab email.

#### Meet the Tanukis

If you are a GitLab team member and you would like to join an episode of ["Meet the Tanukis"]([Meet The Tanukis](https://www.youtube.com/playlist?list=PL05JrBw4t0KoNJYDi1ozN45tvstdwEy04)
), please create an issue with the [`edu_twitch_internal_request` template](https://gitlab.com/gitlab-com/marketing/community-relations/community-programs/education-program/outreach/-/issues/new?issuable_template=edu_twitch_internal_request).

The goal of "Meet the Tanukis” is to add a vehicle for Developer Relations and broader team members to reach out to their communities. Twitch is valuable in creating a show format that helps create audience participation as well as a valuable source for future content by uploading the show to the [GitLab Unfiltered YouTube Channel](https://www.youtube.com/c/GitLabUnfiltered/videos) after. By creating a show featuring team members, any outreach goals they have for their own program can be highlighted on the show and utilized for future content as well to promote their KRs or other goals.

The structure of the show is a talk show where the guest is able to highlight and discuss anything they'd like. It's a casual conversation with an ["at-the-table"](https://design.gitlab.com/brand/overview#tone-of-voice) tone. The conversation can move and change as the show goes on, but the host will always bring it back to the preferred topics provided by the team member.

Shows should last no more than an hour and no less than 30 minutes. Audience participation can be highlighted by including comments on the stream. This brings the commenters into the conversation and helps create the `at-the-table` tone of the show.

The show should consist of three parts: a prologue with only the host, the "interview" with the guest, and a goodbye with final thoughts. An introductory video and outro should be utilized to start and end the stream. An intro video is useful to give viewers time to show up to the stream, as well as eliminate any time where Twitch is "booting up" and you're not technically live. This also eliminates a hard beginning where the viewers have no time to adjust to the show. These videos can be created in Canva or any preferred tool.

The host should schedule a meeting with the guest some time before show itself to go over format and any ideas for the show so the structure and style are clear. This is a chance to give the guest any questions that might be asked so the guest has time to consider answers they might give. This also allows the guest to become comfortable with the restream interface and check any technical issues as well. Notes should be taken in the same issue the guest created to appear on the show. Guests are asked to wear headphones and use an external microphone for the show in order to ensure clear audio quality.

It's important to keep track of what must be done after a show. Are you using the stream for more content? Did you upload it to YouTube? In order to keep track of what has been done after a stream, use the issue template [`edu_twitch_template`](https://gitlab.com/gitlab-com/marketing/community-relations/community-programs/education-program/outreach/-/blob/main/.gitlab/issue_templates/edu_twitch_template.md). It asks you if you have created an article based on the stream. This is not necessary, but if you do you should link it here. The four other checkboxes are to remind you to upload it to the GitLab Unfiltered page, that you add it to a playlist for the show, post the link to the YouTube video in slack and post it on twitter as well.

There is also a dev.to series article checkbox. This is done in order to have a single area that fans and viewers can access all the episodes, articles, and information about the show [Meet the Tanukis](https://dev.to/metzinaround/series/14323) in one location. It's a regular dev.to article that is named after the show and contains links to all the content for each guest. The final action to complete is posting the video in the [education impressions excel sheet](https://docs.google.com/spreadsheets/d/1k1ci9BPEDDb_CxrR9-uQ_YQD_UXBMDeAU-KTpfQfHD4/edit?usp=sharing).

Once you've finished a stream, make sure to download the video so you can upload it to the [Unfiltered YouTube Channel](/handbook/marketing/marketing-operations/youtube/). Follow the upload procedures found in the [handbook](/handbook/marketing/marketing-operations/youtube/#uploading-conversations-to-youtube). Make sure to name the upload according to the following template:

`Name of Show season.episode: Name of Guest`

In the description, make sure to include any relevant links, especially ones you shared onstream. Be sure to include the [GitLab for Education](https://about.gitlab.com/solutions/education/) link every time as well. While uploading, make sure to add it to the correct playlist: `Meet the Tanukis`.

There is a Dev.to series page for the shows. Add a new article to Dev.to and give each episode its own article with the YouTube video in the article as well as all the links discussed or important to the show. The text for each individual article should read:

Meet the Tanukis: `Meet the Tanukis is a stream about the amazing Team members at GitLab. Each episode focuses on a team member discussing issues in tech that are important to them. This episode features <team member name>, <title of team member>`

Indicate that it is a part of the series ["Meet the Tanukis"](https://dev.to/metzinaround/series/14323) by selecting it from the hexagon at the bottom of the article editor. The series lists all the articles related to the episode.

Finally, post the link to the youtube video in any relevant slack channels, including [#dev-advocacy-team](https://gitlab.slack.com/archives/CMELFQS4B), [#education-evangelism](https://gitlab.slack.com/archives/C024ZBWK5KJ), and [#social_media_action](https://gitlab.slack.com/archives/C01AZ9C8Z4G).

### Locating Streams

Streams can be found live at our [Educator Evangelist's twitch](https://www.twitch.tv/metzinaround).
After they are released, they remain available on that channel as a replay for 14 days.
You can view those same streams on YouTube at the [GitLab Unfiltered page](https://www.youtube.com/channel/UCMtZ0sc1HHNtGGWZFDRTh5A).
Those videos are also embedded into Dev.to articles posted to the Educator Evangelist's [Practical Dev page](https://dev.to/metzinaround).
