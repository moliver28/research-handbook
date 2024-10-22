---
title: Emails & Nurture Programs
description: An overview of emails and nurture programs at GitLab.
twitter_image: '/images/tweets/handbook-marketing.png'
twitter_site: "@gitlab"
twitter_creator: "@gitlab"
---

## Overview
<!-- DO NOT CHANGE THIS ANCHOR -->

This page focuses on emails and nurture programs, owned and managed by Lifecycle Marketing, Marketing Campaigns, and Marketing Operations. We are focused on progressing leads throughout their funnel and have programs encompassing prospects (aimed at progressing Unknown > Inquiry > MQL > SAO) and product user journeys (free > trial >paid campaigns).  We leverage "always on", logic-based, trigger-based, and persona-driven nurture engines.

Please visit our other pages for more information on [email best practices](/handbook/marketing/lifecycle-marketing/email-best-practices), [email processes and requests](/handbook/marketing/lifecycle-marketing/email-processes-requests), and [general team information](/handbook/marketing/lifecycle-marketing/).

**Related Handbook: [Email Management](/handbook/marketing/marketing-operations/email-management/)**

**Key foundational elements to achieve this:**

* A strategically segmented Marketo database
  * this is an ongoing effort led by MOps in collaboration with Campaigns
  * *please see [note below regarding segmentation and email requests](/handbook/marketing/lifecycle-marketing/emails-nurture/#one-time-emails)*
  * [see this documentation for Marketo segmentations](/handbook/marketing/marketing-operations/marketo/#segmentations)
* A prescriptive persona-based buyer's journey (Persona nurture)
  * this is an ongoing effort led by Lifecycle in collaboration with Campaigns, Content Marketing, and Product Marketing
  * [see this section of the handbook page for more info](handbook/marketing/lifecycle-marketing/emails-nurture/#persona-email-nurture)
  * [see the epic for more information](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1530)
* User nurtures and programs
  * this is an ongoing effort led by Lifecycle, and specifically spearheaded by our Manager, Lifecycle Marketing  [@Aklatzkin](https://gitlab.com/Aklatzkin).
* [see this epic for holding location of projects to be prioritized](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1040)

### Quick Links
<!-- DO NOT CHANGE THIS ANCHOR -->

* [Combine nurture epic](https://gitlab.com/groups/gitlab-com/marketing/-/epics/3979)
* [FY25 Persona Nurture epic](https://gitlab.com/groups/gitlab-com/marketing/-/epics/4798)
* [FY25 Ultimate + Duo Enterprise Trial Nurture](https://gitlab.com/groups/gitlab-com/marketing/-/epics/5243)
* [FY25 Trial Nurture epic](https://gitlab.com/groups/gitlab-com/marketing/-/epics/4797)
* [All nurtures: CTA & UTM documentation](https://docs.google.com/spreadsheets/d/1ra3jTCzYSZIE5nL_PsbDBSl9Bab9_Amr_sjLOJ-W1Ik/edit#gid=711539408)

## Email Nurture Programs

### Persona Email Nurture

*The [Persona Nurture](/handbook/marketing/lifecycle-marketing/emails-nurture/#persona-email-nurture) (formerly the Intelligent Nurture after relaunch on 2023-11-06) aims at progressing leads from RAW > INQ > MQL > SAO, and leverages segment/region data to provide the *right offer* to the *right person* at the *right time* - based on their region and persona.*

#### Quick Links

* [Overview Deck](https://docs.google.com/presentation/d/1N_VM8xHGiQ95PXt09xyuQAa9px0VGEGyJd0KtGdXjzg/edit#slide=id.g106e2c5ac6b_0_0)
* [Combine nurture epic](https://gitlab.com/groups/gitlab-com/marketing/-/epics/3979)
* [Intelligent Marketo Email Nurture Epic - FY24](https://gitlab.com/groups/gitlab-com/marketing/-/epics/3557)
* [Figjam of Persona Marketo Email Nurture](https://www.figma.com/file/Vh7k6ktDSsRVBTorRH034X/Persona-Email-Nurture-Engine_2023-08-22_10-19-49?type=whiteboard&t=AJ2Wv6vrripWJd4y-1)
* [Marketo Program](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/MF8561A1)
* [CTA & UTM documentation of existing nurture](https://docs.google.com/spreadsheets/d/1ra3jTCzYSZIE5nL_PsbDBSl9Bab9_Amr_sjLOJ-W1Ik/edit#gid=711539408)

#### Labels for Persona Nurture Progress

We created several GitLab labels for a better organization of each asset that we are adding to the intelligent nurture.

Below we explain the labels created and what each one is for:

* [intel-nurture](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/?sort=due_date&state=opened&label_name%5B%5D=intel-nurture&first_page_size=20): This label is global and will help us identify that the issue we are working on is directly for the intelligent nurture. All "add to intelligent nurture" issues must have this label, and it is included in the issue template.
* [intel-nurture::write-copy](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/?sort=due_date&state=opened&label_name%5B%5D=intel-nurture%3A%3Awrite-copy&first_page_size=20): This label helps us know that the issue is in the process of email copy development. We cannot move on to the next step (email-build) until the copy is final.
* [intel-nurture::email-build](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/?sort=due_date&state=opened&label_name%5B%5D=intel-nurture%3A%3Aemail-build&first_page_size=20): This label helps us to know that the email is in production. Verticurl is responsible for building the emails.
* [intel-nurture::email-test](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/?sort=due_date&state=opened&label_name%5B%5D=intel-nurture%3A%3Aemail-test&first_page_size=20): This label tells us that the email has already been built and that the Verticurl team has sent tests to both the requesters AND the lifecycle marketing team for review. In this step we check that the links work correctly, that the content of the email is correct and that the correct utm values are used for appropriate tracking of the links. Once the email is approved, we proceed to the last step.
* [intel-nurture::add-to-streams](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/?sort=due_date&state=opened&label_name%5B%5D=intel-nurture%3A%3Aadd-to-streams&first_page_size=20): This label helps us to identify that the issue is in its final stage where we proceed to add the email to the relevant nurture streams.
  * **PLEASE NOTE: the requester indicates the desired streams in the description of the issue, but the Lifecycle Marketing team makes the final decision on which streams are relevant. Please reference [the stream alignment rules](/handbook/marketing/lifecycle-marketing/email-processes-requests/#nurture-stream-offer-alignment) for what content type is relevant for each stream.**

### Persona Email Nurture Stream Schedule
<!-- DO NOT CHANGE THIS ANCHOR -->

The following shows the day of the week and cadence of the different streams in the Intelligent Nurture:

* AMER:  Thursday, 8:30 AM PT
* EMEA: Thursday, 1:00 AM PT
* APAC: Wednesday (Thursday APAC time), 6:30 PM PT
* LATAM: Thursday, 8:30 AM PT.
* Localized
  * Spanish: Inactive - leads rerouted to English nurtures
  * French: Thursday, 1:00AM PT
  * German: Inactive - relaunching end of Jan 2024
  * Japanese: Wednesday (Thursday JP time), 5:00PM PT
  * Korean: Wednesday (Thursday JP time), 5:00PM PT
  * Portuguese: Inactive - leads rerouted to English nurtures
* PubSec Default: Thursday, 7:00AM PT

### Persona Nurture Processes

Our Nurture processes have moved to our [email processes handbook page](/handbook/marketing/lifecycle-marketing/emails-processes-requests#intelligent-nurture-processes).

#### Persona Nurture Reporting Process

All Nurtures within persona nurture have their link directly to their specific report.

Which are formed as follows:

**REGIONAL NURTURES**

[AMER](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR4549A1LA1)
[APAC](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR4550A1LA1)
[EMEA](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR4552A1LA1)
[LATAM](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR4553A1LA1)
[PubSec general nurture](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3876A1LA1)

**LOCALIZED NURTURE:**

[LOC-FRENCH](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3045A1LA1)

[LOC-GERMAN](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3046A1LA1)

[LOC-JAPAN](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3047A1LA1)

[LOC-KOREA](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3048A1LA1)

[LOC-PORTUGUESE](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3049A1LA1)

[LOC-SPANISH](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3050A1LA1)

### User nurtures (GitLab product users)

#### Trial nurtures
<!-- DO NOT CHANGE THIS ANCHOR -->

* **Goal:** Educate trialers about key features to use during 60 day period and give them materials to consider upgrading or purchasing an add-on. 
* **Delivery System:** Iterable (GitLab.com) & Marketo (SM)

* [Figma file - with all trial experiences](https://www.figma.com/file/HKhm1PmEfqLfeM5UEO8v1a/Email-Marketing-%3E-Trial-nurture-updates-2023_2023-08-22_10-19-25?type=whiteboard&t=hPlLyXaGRSF8sgoP-0)
* [FY25 Ultimate + Duo Enterprise Trial Nurture](https://gitlab.com/groups/gitlab-com/marketing/-/epics/5243)
* [Email copy doc](https://docs.google.com/document/d/1Pz0RxtBUsJgkrbeHDN9Oh8xSsh2054C0-VPfn0Nf-kw/edit?usp=sharing)
* [FY25 Trial Nurture Epic - old](https://gitlab.com/groups/gitlab-com/marketing/-/epics/4797)

### Trial Nurture Variations

Following the launch of Duo Enterprise trials, we have several different trial nurtures running in either Iterable or Marketo.  These nurtures send to the Owner role who starts the trial. The goal of these programs is to drive usage for Ultimate + Duo Enterprise and in turn influence conversion: 
* Existing/New Free GitLab.com users – GitLab Ultimate + Duo Enterprise
  * [Copy](https://docs.google.com/document/d/1M51p0y3gy7su0pmGzxSyCvpGyX2MMX6EvrWR6i0pnz8/edit?tab=t.0#heading=h.6vgpxnyb4dh1)
  * [Figma](https://www.figma.com/board/HKhm1PmEfqLfeM5UEO8v1a/Email-Marketing-%3E-Trial-nurture-flow?node-id=427-547&t=dAK4P0jDMagKwjQi-4)
  * [All links & UTMs](https://docs.google.com/spreadsheets/d/1ra3jTCzYSZIE5nL_PsbDBSl9Bab9_Amr_sjLOJ-W1Ik/edit?gid=1610951020#gid=1610951020&range=A1:E1)
  * [Iterable link](https://app.iterable.com/workflows/542021/edit?mode=beta&workflowType=Published)
* Existing Premium SKU users – GitLab.com Ultimate + Duo Enterprise
  * [Copy](https://docs.google.com/document/d/1M51p0y3gy7su0pmGzxSyCvpGyX2MMX6EvrWR6i0pnz8/edit?tab=t.0#bookmark=id.szvw1qco6fce)
  * [Figma](https://www.figma.com/board/HKhm1PmEfqLfeM5UEO8v1a/Email-Marketing-%3E-Trial-nurture-flow?node-id=436-584&t=dAK4P0jDMagKwjQi-4)
  * [All links & UTMs](https://docs.google.com/spreadsheets/d/1ra3jTCzYSZIE5nL_PsbDBSl9Bab9_Amr_sjLOJ-W1Ik/edit?gid=1610951020#gid=1610951020&range=A56:E56)
  * [Iterable link](https://app.iterable.com/workflows/547740/edit?mode=beta&workflowType=Published)
* Existing Ultimate users – GitLab.com Duo Enterprise standalone
  * [Copy](https://docs.google.com/document/d/1M51p0y3gy7su0pmGzxSyCvpGyX2MMX6EvrWR6i0pnz8/edit?tab=t.0#bookmark=id.szvw1qco6fce)
  * [Figma](https://www.figma.com/board/HKhm1PmEfqLfeM5UEO8v1a/Email-Marketing-%3E-Trial-nurture-flow?node-id=406-243&t=dAK4P0jDMagKwjQi-4)
  * [All links & UTMs](https://docs.google.com/spreadsheets/d/1ra3jTCzYSZIE5nL_PsbDBSl9Bab9_Amr_sjLOJ-W1Ik/edit?gid=1610951020#gid=1610951020&range=A100:E100)
  * [Iterable link](https://app.iterable.com/workflows/543584/edit?mode=beta&workflowType=Published)
* Existing Premium SKU users - GitLab Duo Pro standalone
  * [Copy](https://docs.google.com/document/d/1FpdU3HSHHiUywC0VnBlKcVmATGn6Nhtgta4jXRuBAkU/edit?usp=sharing)
  * [Figma](https://www.figma.com/board/HKhm1PmEfqLfeM5UEO8v1a/Email-Marketing-%3E-Trial-nurture-flow?node-id=140-222&t=eyT857zkRpaDz15o-4)
  * [All links & UTMs](https://docs.google.com/spreadsheets/d/1ra3jTCzYSZIE5nL_PsbDBSl9Bab9_Amr_sjLOJ-W1Ik/edit?gid=1610951020#gid=1610951020&range=A71:E71)
  * [Iterable link](https://app.iterable.com/workflows/469713/edit?mode=beta&workflowType=Published)

Self-managed nurtures are sent from Marketo and are typically very similar to GitLab.com nurtures with slight variations (no login links)
* GitLab Self Managed Duo Enterprise - Ultimate only
  * [Figma](https://www.figma.com/board/HKhm1PmEfqLfeM5UEO8v1a/Email-Marketing-%3E-Trial-nurture-flow?node-id=406-243&t=dAK4P0jDMagKwjQi-4)
  * [Marketo link](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/NP20863A1)
* GitLab Self Managed Duo Pro - Premium only
  * [Figma](https://www.figma.com/board/HKhm1PmEfqLfeM5UEO8v1a/Email-Marketing-%3E-Trial-nurture-flow?node-id=140-222&t=eyT857zkRpaDz15o-4)
  * [Marketo link](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/NP18565A1)
* GitLab Self managed Ultimate trial
  * [Figma](https://www.figma.com/board/HKhm1PmEfqLfeM5UEO8v1a/Email-Marketing-%3E-Trial-nurture-flow?node-id=93-712&t=eyT857zkRpaDz15o-4)
  * [Marketo link](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/NP8569A1)


There are several localized nurtures that have launched for GitLab.com Trials. These are not up to date with Duo information, as Duo is only available in English currently. These are the localized nurtures:
* [Iterable routing](https://app.iterable.com/workflows/438798/edit?mode=beta&workflowType=Published)
* French:
  * [Figma](https://www.figma.com/board/HKhm1PmEfqLfeM5UEO8v1a/Email-Marketing-%3E-Trial-nurture-flow?node-id=427-726&t=X0kRQJyEFM6qUCgj-4)
  * [Iterable link](https://app.iterable.com/workflows/444999/edit?mode=beta&workflowType=Published)
* German:
  * [Figma](https://www.figma.com/board/HKhm1PmEfqLfeM5UEO8v1a/Email-Marketing-%3E-Trial-nurture-flow?node-id=427-727&t=X0kRQJyEFM6qUCgj-4)
  * [Iterable link](https://app.iterable.com/workflows/443446/edit?mode=beta&workflowType=Published)
* Japanese:
  * [Figma](https://www.figma.com/board/HKhm1PmEfqLfeM5UEO8v1a/Email-Marketing-%3E-Trial-nurture-flow?node-id=427-728&t=X0kRQJyEFM6qUCgj-4)
  * [Iterable link](https://app.iterable.com/workflows/432466/edit?mode=beta&workflowType=Published)



### Free User Onboarding Email Campaigns
<!-- DO NOT CHANGE THIS ANCHOR -->

**Sent through Iterable**
We recently moved what was formerly known as "In-product emails" from Mailgun to our newer Iterable system. This will allow greater flexibility and iteration.

* [Slide deck showing past and current state](https://docs.google.com/presentation/d/1nb26f7NJEY-_KNkQ3GjXVCnrBCo1Y3SeW7QTBCO_DYM/edit#slide=id.g224a1f3561e_2_3)
* [FY24 Epic](https://gitlab.com/groups/gitlab-com/marketing/-/epics/4315)
* [Figma journey](https://www.figma.com/file/FdF9bhLOtPKah7IxarPNjO/Aug-2023-Iterable-Free-User-Email-Journey?type=whiteboard&node-id=0%3A1&t=CsoAGTyGQ4j5rLR1-1)

**These are also known as:**

* User onboarding emails
* Free user nurture
* User nurture
* User emails
* Any sort of combination of the above

**We launched these for:**

* Free SaaS users - Beginning of Feb, 2021, moved to Iterable in August 2023
* Free Self-managed users - Launched mid-late May, 2021, moved to Iterable in August 2023

**Iterations:**
We relaunched these emails in Iterable and turned off Mailgun. Send time is now based on when the user joins GitLab and implemented skipping weekend send dates. In August 2023, we launched a welcome email and simplified some of the content. We will be iterating more on this program going forward.

**Who's part of this project?**

* Allie Klatzkin - email marketing DRI, Iterable analytics, & assist technical setup
* Paige Cordero (Growth)
* Gayle Doud (Growth)

**So what's the deal?**
Basically, we have a series of emails that deploy to net new namespaces. The goal is to get free users to use features of the product. There are 4 tracks - adopt Create, adopt Verify, invite Team, try a Trial. Each track has emails that try to nudge users to take action. If a user takes the action referenced in the email, they will not get the next email in the series and will move to the next series.

**From email and reply-to email**
`info@mg.gitlab.com` -  which is a group inbox. Amy is also a member of this group inbox.
**HTML files**
All of the HTML email files are in [Iterable](https://app.iterable.com/campaigns/manage?folderId=618897).

For a more in-depth look at how these emails work, please review the [Figma journey](https://www.figma.com/file/FdF9bhLOtPKah7IxarPNjO/Aug-2023-Iterable-Free-User-Email-Journey?type=whiteboard&node-id=0%3A1&t=CsoAGTyGQ4j5rLR1-1).


### Invited users 

Please note we are limited in what we can send to this audience.

* **Goal:*** Enable users who are invited to get started using GitLab
* **Delivery System:** Iterable (SaaS) & Marketo (SM)

**Programs:**

* [Onboarding](https://app.iterable.com/campaigns/8040520?view=Summary&templateEditor=open)
* [Duo Pro Seat allocation](https://app.iterable.com/workflows/469715/edit?mode=beta&workflowType=Published)
