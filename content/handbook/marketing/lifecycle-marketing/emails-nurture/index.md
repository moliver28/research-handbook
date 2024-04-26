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


*The [Intelligent Email Nurture](/handbook/marketing/lifecycle-marketing/emails-nurture/#intelligent-email-nurture) (launched originally 2021-12-17, re-launched 2023-11-06) aims at progressing leads from INQ > SAO, and leverages segment/region data to provide the *right offer* to the *right person* at the *right time* - based on their region and persona.*

**Related Handbook: [Email Management](/handbook/marketing/marketing-operations/email-management/)**

**Key foundational elements to achieve this:**
* A strategically segmented Marketo database
    - this is an ongoing effort led by MOps in collaboration with Campaigns
    - *please see [note below regarding segmentation and email requests](/handbook/marketing/lifecycle-marketing/emails-nurture/#one-time-emails)*
    - [see the overall database segmentation epic](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1331)
    - [see this epic for more campaign-based tactical segmentations](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1467)
* A persona-based prescriptive buyer journey
    - this is an ongoing effort led by Campaigns in collaboration with Content Mktg, Product Mktg, Technical Mktg
    - [see the epic](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1530)
* Logic-based Marketo nurture programs by segment
    - this is an ongoing effort led by Campaigns, and specifically spearheaded by our Email Marketing Campaign Manager [@Aklatzkin](https://gitlab.com/Aklatzkin).
    - [see this epic for holding location of projects to be prioritized](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1040)

### Quick Links
<!-- DO NOT CHANGE THIS ANCHOR -->

- [Combine nurture epic](https://gitlab.com/groups/gitlab-com/marketing/-/epics/3979)
- [FY24 Intelligent Nurture epic](https://gitlab.com/groups/gitlab-com/marketing/-/epics/3557)
- [Iterable phase 2](https://gitlab.com/groups/gitlab-com/marketing/-/epics/3986)
- [FY24 Trial Nurture epic](https://gitlab.com/groups/gitlab-com/marketing/-/epics/3559)
- [All nurtures: CTA & UTM documentation](https://docs.google.com/spreadsheets/d/1ra3jTCzYSZIE5nL_PsbDBSl9Bab9_Amr_sjLOJ-W1Ik/edit#gid=711539408)
## Email Nurture Programs
<!-- DO NOT CHANGE THIS ANCHOR -->

### Intelligent Email Nurture
<!-- DO NOT CHANGE THIS ANCHOR -->

#### Quick Links
<!-- DO NOT CHANGE THIS ANCHOR -->
* [Overview Deck](https://docs.google.com/presentation/d/1N_VM8xHGiQ95PXt09xyuQAa9px0VGEGyJd0KtGdXjzg/edit#slide=id.g106e2c5ac6b_0_0)
- [Combine nurture epic](https://gitlab.com/groups/gitlab-com/marketing/-/epics/3979)
* [Intelligent Marketo Email Nurture Epic - FY24](https://gitlab.com/groups/gitlab-com/marketing/-/epics/3557)
* [Figjam of Persona Marketo Email Nurture](https://www.figma.com/file/Vh7k6ktDSsRVBTorRH034X/Persona-Email-Nurture-Engine_2023-08-22_10-19-49?type=whiteboard&t=AJ2Wv6vrripWJd4y-1)
* [Marketo Program](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/MF8561A1)
* [CTA & UTM documentation of existing nurture](https://docs.google.com/spreadsheets/d/1ra3jTCzYSZIE5nL_PsbDBSl9Bab9_Amr_sjLOJ-W1Ik/edit#gid=711539408)

#### Labels for Intelligent Nurture Progress
<!-- DO NOT CHANGE THIS ANCHOR -->

We created several GitLab labels for a better organization of each asset that we are adding to the intelligent nurture.

Below we explain the labels created and what each one is for:

* [intel-nurture](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/?sort=due_date&state=opened&label_name%5B%5D=intel-nurture&first_page_size=20): This label is global and will help us identify that the issue we are working on is directly for the intelligent nurture. All "add to intelligent nurture" issues must have this label, and it is included in the issue template.
* [intel-nurture::write-copy](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/?sort=due_date&state=opened&label_name%5B%5D=intel-nurture%3A%3Awrite-copy&first_page_size=20): This label helps us know that the issue is in the process of email copy development. We cannot move on to the next step (email-build) until the copy is final.
* [intel-nurture::email-build](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/?sort=due_date&state=opened&label_name%5B%5D=intel-nurture%3A%3Aemail-build&first_page_size=20): This label helps us to know that the email is in production. Verticurl is responsible for building the emails.
* [intel-nurture::email-test](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/?sort=due_date&state=opened&label_name%5B%5D=intel-nurture%3A%3Aemail-test&first_page_size=20): This label tells us that the email has already been built and that the Verticurl team has sent tests to both the requesters AND the lifecycle marketing team for review. In this step we check that the links work correctly, that the content of the email is correct and that the correct utm values are used for appropriate tracking of the links. Once the email is approved, we proceed to the last step.
* [intel-nurture::add-to-streams](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/?sort=due_date&state=opened&label_name%5B%5D=intel-nurture%3A%3Aadd-to-streams&first_page_size=20): This label helps us to identify that the issue is in its final stage where we proceed to add the email to the relevant nurture streams.
   - **PLEASE NOTE: the requester indicates the desired streams in the description of the issue, but the Lifecycle Marketing team makes the final decision on which streams are relevant. Please reference [the stream alignment rules](/handbook/marketing/lifecycle-marketing/email-processes-requests/#nurture-stream-offer-alignment) for what content type is relevant for each stream.**

### Intelligent Email Nurture Stream Schedule
<!-- DO NOT CHANGE THIS ANCHOR -->
The following shows the day of the week and cadence of the different streams in the Intelligent Nurture:

* AMER:  Thursday, 8:30 AM PT
* EMEA: Thursday, 1:00 AM PT
* APAC: Wednesday (Thursday APAC time), 6:30 PM PT
* LATAM: Thursday, 8:30 AM PT. 
* Localized
   - Spanish: Inactive - leads rerouted to English nurtures
   - French: Thursday, 1:00AM PT
   - German: Inactive - relaunching end of Jan 2024
   - Japanese: Wednesday (Thursday JP time), 5:00PM PT
   - Korean: Wednesday (Thursday JP time), 5:00PM PT
   - Portuguese: Inactive - leads rerouted to English nurtures
* PubSec
   - PubSec Default: Thursday, 7:00AM PT 
   - Civilian (CIV): Thursday, 7:00AM PT
   - Department of Defense (DoD): Thursday, 7:00 AM PT
   - Federal Systems Integrators (FSI): Thursday, 7:00AM PT
   - National Security Group (NSG): Thursday, 7:00AM PT
   - SLED: Thursday, 7:00AM PT 
* Non-Demand Generation Nurture
   - All Remote: Thursday, 6:00AM PDT (not actively being maintained)

### Intelligent Nurture Processes
<!-- DO NOT CHANGE THIS ANCHOR -->

Our Intelligent Nurture processes have moved to our [email processes handbook page](/handbook/marketing/lifecycle-marketing/emails-processes-requests#intelligent-nurture-processes).

#### Reading for those unfamiliar with Marketo
{: #marketo-nurutre-reading}
<!-- DO NOT CHANGE THIS ANCHOR -->
* [Adding a Program to an Engagement Program Stream](https://experienceleague.adobe.com/docs/marketo/using/product-docs/email-marketing/drip-nurturing/creating-an-engagement-program/adding-a-program-to-an-engagement-program-stream.html?lang=en) - we will be employing this advanced setup
* [Add People to an Engagement Program](https://experienceleague.adobe.com/docs/marketo/using/product-docs/email-marketing/drip-nurturing/creating-an-engagement-program/add-people-to-an-engagement-program.html?lang=en) - Amy will be managing this in a single automation engine ("air traffic control") to ensure no mailable lead is left behind.
* [Understanding Engagement Programs](https://experienceleague.adobe.com/docs/marketo/using/product-docs/email-marketing/drip-nurturing/creating-an-engagement-program/understanding-engagement-programs.html?lang=en)

<!--
### Visualization of active nurture streams
{: #active-nurtures-visualization}

To be updated and documented upon revamp of nurture engine and database nurturing FY22 Q2.
- [Epic for Marketo database audience strategy for lifecycle marketing engine](https://gitlab.com/groups/gitlab-com/marketing/-/epics/2022)
- [Epic for overall nurture strategy - no lead left behind](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1836)
--->

### Marketo Email Journey
<!-- DO NOT CHANGE THIS ANCHOR -->
What happens to Marketo when a contact is a member of a program equal to True.
Marketo within the engagement programs will try to send the number 1 email of the stream. If the contact does not comply with the requirements, Marketo will try to send the mail number 2 and so on until only 2 things happen: 1 – that the mail is sent or 2 – that no mail is sent from the stream and the contact becomes exhausted.
In the image below there is an explicit way on how Marketo “plays” with the send controller of 2 different emails on the same day.
![Marketo-Journey](/uploads/668ae822065318dc3ebc6c8910a70a77/Screen_Shot_2022-04-28_at_8.56.57_AM.png)
The ONLY way for a contact to advance from one stream to another is when it generates enough interaction and its scoring increases enough to move it from RAW to INQ from INQ to MQL or from MQL to SAO.
 
Also the only way for a contact who already has exhausted status to change status is to continue adding new content in the streams.
 
Which would lead us to the next solution. Once the contacts fall into exhausted status they should be moved to a list of "Non-Responders" and then moved to a specific Nurture to increase interaction with the company.



## Intelligent Nurture Reporting Process 
<!-- DO NOT CHANGE THIS ANCHOR -->
Intelligent Nurture Reporting Process

All Nurtures within intelligent nurture have their link directly to their specific report.

Which are formed as follows:

**REGIONAL NURTURES**

[AMER](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR4549A1LA1)
[APAC](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR4550A1LA1)
[EMEA](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR4552A1LA1)
[LATAM](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR4553A1LA1)

**PUBSEC NURTURE:**

[PubSec general nurture](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3876A1LA1)
[Civilian (CIV)](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR4486A1LA1)
[Department of Defense (DoD)](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR4488A1LA1)
[Federal Systems Integrators (FSI)](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR4490A1LA1)
[National Security Group (NSG)](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR4492A1LA1)
[State, local, and education (SLED)](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR4494A1LA1)

**ALL-REMOTE NURTURE**

[All Remote](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3044A1LA1)

LOCALIZED NURTURE:

[LOC-FRENCH](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3045A1LA1)

[LOC-GERMAN](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3046A1LA1)

[LOC-JAPAN](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3047A1LA1)

[LOC-KOREA](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3048A1LA1)

[LOC-PORTUGUESE](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3049A1LA1)

[LOC-SPANISH](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3050A1LA1)

To be able to extract a complete report of email metrics, you just must click on the link corresponding to the Nurture where your email is.

Also, in case of not having access to Marketo to download the report you can go to the following folder where the reports of each nurture are uploaded on a monthly basis. [Intelligent Nurture KPI](https://drive.google.com/drive/folders/1bpopmeEE9DDA0g50pw6Pr_PO_FPsS9-d?usp=sharing)

#### Trial nurture
<!-- DO NOT CHANGE THIS ANCHOR -->

* **Goal:** Educate trialers about key features to use during 30 day period.
* **Delivery System:** Iterable
* **Trial Key Email:** the self-managed trial sign-up triggers a unique trial key email confirmation before launching the 30 day email series.
* [Figma file - with trial experience](https://www.figma.com/file/HKhm1PmEfqLfeM5UEO8v1a/Email-Marketing-%3E-Trial-nurture-updates-2023_2023-08-22_10-19-25?type=whiteboard&t=hPlLyXaGRSF8sgoP-0)
* [FY24 Trial Nurture Epic](https://gitlab.com/groups/gitlab-com/marketing/-/epics/3559)
* [Email copy doc](https://docs.google.com/document/d/1Pz0RxtBUsJgkrbeHDN9Oh8xSsh2054C0-VPfn0Nf-kw/edit?usp=sharing)

##### Setup for Trial Nurture
<!-- DO NOT CHANGE THIS ANCHOR -->

Self Managed owners go through the [Marketo Program](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/NP8569A1)

UTMs: ?utm_medium=email&utm_source=marketo&utm_campaign=trial-nurture&utm_content=(custom per email)

SaaS owners are now going through the program in [Iterable](https://app.iterable.com/workflows/361081/edit?mode=beta&workflowType=Published).

UTMs: ?utm_source=Iterable&utm_medium=email&utm_campaign=trial-nurture


#### Free User Onboarding Email Campaigns
<!-- DO NOT CHANGE THIS ANCHOR -->
**Sent through Iterable**  
We recenlty moved what was formerly known as "In-product emails" from Mailgun to our newer Iterable system. This will allow greater flexibility and iteration. 

* [Slide deck showing past and current state](https://docs.google.com/presentation/d/1nb26f7NJEY-_KNkQ3GjXVCnrBCo1Y3SeW7QTBCO_DYM/edit#slide=id.g224a1f3561e_2_3)
* [FY24 Epic](https://gitlab.com/groups/gitlab-com/marketing/-/epics/4315)
* [Figma journey](https://www.figma.com/file/FdF9bhLOtPKah7IxarPNjO/Aug-2023-Iterable-Free-User-Email-Journey?type=whiteboard&node-id=0%3A1&t=CsoAGTyGQ4j5rLR1-1)

**These are also known as:**
- User onboarding emails
- Free user nurture
- User nurture
- User emails
- Any sort of combination of the above

**We launched these for:**  
- Free SaaS users - Beginning of Feb, 2021, moved to Iterable in August 2023
- Free Self-managed users - Launched mid-late May, 2021, moved to Iterable in August 2023

**Iterations:**  
We relaunched these emails in Iterable and turned off Mailgun. Send time is now based on when the user joins GitLab and implemented skipping weekend send dates. In August 2023, we launched a welcome email and simplified some of the content. We will be iterating more on this program going forward. 

**Who’s part of this project?**  
- Allie Klatzkin - email marketing DRI, Iterable analytics, & assist technical setup
- Paige Cordero (Growth)
- Sam Awezec (Growth)
- Gayle Doud (Growth)

**So what’s the deal?**  
Basically, we have a series of emails that deploy to net new namespaces. The goal is to get free users to use features of the product. There are 4 tracks - adopt Create, adopt Verify, invite Team, try a Trial. Each track has emails that try to nudge users to take action. If a user takes the action referenced in the email, they will not get the next email in the series and will move to the next series. 


**From email and reply-to email**  
`info@mg.gitlab.com` -  which is a group inbox. Amy is also a member of this group inbox.
**HTML files**  
All of the HTML email files are in [Iterable](https://app.iterable.com/campaigns/manage?folderId=618897).

For a more in-depth look at how these emails work, please review the [Figma journey](https://www.figma.com/file/FdF9bhLOtPKah7IxarPNjO/Aug-2023-Iterable-Free-User-Email-Journey?type=whiteboard&node-id=0%3A1&t=CsoAGTyGQ4j5rLR1-1).