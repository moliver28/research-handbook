---
title: "Adobe Marketo Measure (formerly known as Bizible)"
description: "Adobe Marketo Measure, AMM for short, unifies behavioral and ad data with sales outcomes and machine learning so you can make the right marketing decisions."
---

<!-- Please treat Bizible terms as proper nouns and capitalize them. Touchpoint instead of touchpoint. -->

## About Adobe Marketo Measure (formerly known as Bizible)

Adobe Marketo Measure (AMM) unifies behavioral and ad data with sales outcomes and machine learning so you can make the right marketing decisions.

### How Adobe Marketo Mesure Tracks Attribution

Marketing attribution is the process of assigning revenue credit to marketing activities. AMM tracks a prospect's entire customer journey, from their first interaction with GitLab to purchase. The revenue generated from the deal gets attributed back to the marketing Touchpoints that drove the sale (see below for details on Touchpoints). The amount of revenue credit given to a touchpoint depends on how much that Touchpoint influenced the customer's purchasing decision.

This process allows Marketing to understand the value of each marketing activity.

## Adobe Marketo Mesure Components

### Touchpoints

AMM defines a touchpoint as: Touchpoints refer to a prospect/lead's interactions with your online or offline marketing efforts.

Touchpoints capture a multitude of information, such as UTM parameters, the date and time of the interaction, and the type of interaction (form submission, campaign response, etc.). AMM stores Touchpoint records on the lead or contact record in SFDC.

### Buyer Touchpoints (BT)

Buyer Touchpoints are created on lead or contact objects directly. They do not relate to an opportunity and do not have a NET ARR value.

### Buyer Attribution Touchpoint (BAT)

AMM creates Buyer Attribution Touchpoints (BATs) when an opportunity is created on an account with Buyer Touchpoints, and they are created before the opportunity is accepted by Sales. These BATs are exact copies of the BT's already associated with the Contacts on the account and associated to an Opportunity. Addtionaly, when AMM creates BAT's it only does so from Contacts. Unlike Buyer Touchpoints, BATs have a NET ARR value.

When AMM creates BAT's, it uses all the BT's associated to any Contact on the account (not just those Contacts associated to an opportunity).

| Buyer Touchpoint (BT) | Buyer Attribution Touchpoint (BAT) |
| ----- | ----- |
| Relates to the Lead & Contact | Relates to the Contact, Account, and Opportunity Objects
| Does not relate to the Opportunity Object | Does not relate to the Lead Object |
| Revenue is not associated to a Buyer Touchpoint |	Assigned revenue when NET ARR of Opportunity is set |

### Channel and Subchannel

[AMM maps Touchpoints](#amm-channel-and-subchannel-mapping) in [channels and subchannels](https://experienceleague.adobe.com/docs/marketo-measure/using/channel-tracking-and-setup/online-channels/marketing-channels-and-subchannels.html?lang=en).

- Channels - Are the broadest level of Touchpoint groupings and contain many subchannels. Examples of channels include Events, Organic Search, Paid Search, Digital, etc.
- Subchannels - Give more specific information about the source. Examples include Google (for Paid Search channel, LinkedIn (for Paid Social channel), Executive Roundtable (for events)

AMM presents channels and subchannels in dot notation. Where `Paid Search.Google` has a channel of `Paid Search` and subchannel of `Google`.

### Touchpoint Position

AMM tracks the position of a touchpoint based on its timing to other touchpoints per person. The abbreviations below are shown in the `Touchpoint Position` field in SFDC.

- FT - First Touch, a prospect's first-ever interaction
- LC - Lead Created, prospect submits information
- OC - Opportunity Creation, prospect intentionally moves toward a purchase decision
- Closed - Customer Close, prospect makes a purchase
- Pending - [The Pending touchpoint position](https://nation.marketo.com/t5/marketo-whisperer-blogs/bizible-s-pending-touchpoint-position/ba-p/312477) is stamped only on BATs (Buyer Attribution Touchpoints), not on BTs (Buyer Touchpoints). This touchpoint position is shown **only when the opportunity is still open**, providing a temporary value to allow the opportunity credit to sum to 100%.

### Attribution Models

GitLab uses [AMM's Custom Attribution model](/handbook/marketing/marketing-operations/bizible/#custom-attribution-based-on-bizible-machine-learning-algorithm) based on a unique machine learning algorithm from AMM. The Custom model uses our touchpoint data to calculate attribution weights for each stage based on how much each opportunity stage drove the deal to close.

Adobe Marketo Mesure supports [other attribution methods](https://www.bizible.com/blog/marketing-attribution-models-complete-list) not used by GitLab.

**How is the Machine Learning model Calculated?**

AMM calculates the importance of each custom stage by using all of GitLab's touchpoint data. The criteria used to determine the importance of each stage are:

- **Model Accuracy:** If we build a predictive model with the touchpoint data to predict whether we will win a deal eventually, how accurate will the model be? Higher predictive accuracy means that the details of this stage correlates more with whether a deal will close
- **Conversion Rate:** If Leads or Opportunities at this certain stage convert to the next stage at a high rate, this suggests that the marketing activities that occurred at this stage didn't matter very much. Conversely, if a certain stage converts to the next stage at a low rate, this can suggest that the marketing activities that occurred at this stage were influential in driving the conversion.
- **Touchpoint Uniqueness Weight:** If a stage occurs as a standalone transition, meaning there weren't any other stage transitions that occurred at the same time, this stage could receive a higher attribution weight. Conversely, if a touchpoint for a stage is shared with other stages (e.g. the touchpoint shares the First Touch, Lead Conversion, and Opportunity Conversion stages) this stage could receive a lower attribution weighting.
The final weight for a custom stage is calculated as such:

```text
Model Percentage = Model Accuracy x Conversion Rate x Touchpoint Uniqueness Weight
```

The Custom Attribution Model's machine learning algorithm improves as it collects more data but does not automatically adjust stage weights. To ensure GitLab is using the best model, during the first month of the fiscal year, the Marketing Operations team updates the weight of each stage. The previous weights can be seen [on this Google Sheet](https://docs.google.com/spreadsheets/d/1gE0rLgVjz04kEEaZtw763SLcKlRcq5y4/edit#gid=1524071528).

Currently the Custom Model has the following weights for each stage (updated February 1st, 2024):

- **First Touch** - 19.2%
- **Opportunity Creation** - 22.5%
- **SAO** - 15.9%
- **Closed (Lost, Won)** - 29.2%
- **Middle Touches** - 13.2%


### Online vs. Offline Touchpoints

AMM generates Touchpoints as either online or offline based on how they were created.

#### Online

Online Touchpoints are created when users submit a form on a GitLab web property. They are sourced from traditional online marketing channels, including display advertising, paid search, paid social, organic search, organic social, email, chatbots, etc.

While offline Touchpoints need an SFDC campaign created beforehand to create touchpoints, online Touchpoints do not.

**Important:** Users must have allowed or not rejected cookies for AMM to create online Touchpoints. GitLab uses OneTrust to manage user [consent on our web properties](/handbook/marketing/digital-experience/onetrust/#consent-models), [depending on the user's location](/handbook/marketing/digital-experience/onetrust/#banner-rules) they may have to allow cookies for the AMM script to load. **If the user rejects or opts out of OneTrust consent, AMM will not create online Touchpoints.**

#### Offline

Offline Touchpoints are created from interactions outside the web, including visiting a trade show booth, attending a hospitality event, and being sent a direct mailer. These interactions are for channels where a person's engagement cannot be tracked digitally or where they physically attended an event. A quick rule of thumb: if there is a list uploaded and the person took action, they are offline buyer touchpoints.

Offline buyer touchpoints are created either by:

1. Adjusting the `Enable Bizible Touchpoints` field on the Salesforce Campaign object to either `Include only "Responded" Campaign Members` or `Include All Campaign Members`
1. Through campaign sync rules, which generate TPs for based on well defined criteria. To learn how these rules work please see this [Custom Campaign Sync Adobe Marketo Measure documentation](https://experienceleague.adobe.com/docs/marketo-measure/using/channel-tracking-and-setup/offline-channels/custom-campaign-sync.html?lang=en).

As of January 2023, we are creating offline Touchpoints through the campaign sync rules. This switch decreases manual setup work for the Marketing Operations Team.

The [current campaign sync rules](https://docs.google.com/spreadsheets/d/1xR2Q7YKskfNaxclnfGOkK8Vi739zdKypQ6GgF9MLG58/edit#gid=92970564) and are largely based on the `Campaign Type`, `Campaign Member Status`, `Campaign Name`, and `Campaign Member Created Date` fields in SFDC.

[See progression statuses for the standard `Campaign Types` that will have offline buyer touchpoints enabled](/handbook/marketing/marketing-operations/)

### Page View Tracking

We have disabled page view tracking in AMM. We found that recording page views into our attribution data [skews the data considerably](https://gitlab.com/gitlab-com/marketing/marketing-strategy-performance/-/issues/887#note_1130386743).

## Touchpoint Generation & Mapping

Touchpoints are generated one of three ways, on GitLab's Websites, Offline, or through Sales activity. The table below gives examples of how each are sourced.

Once a Touchpoint is created, AMM uses a set of predefined [mapping rules](#amm-channel-and-subchannel-mapping) to assign a [channel and subchannel](#channel-and-subchannel) to each Touchpoint based on how the Touchpoint was generated.

| Type of Interaction     | Example                                                                                                                                       | Touchpoint Generation Method                                                                                                                                                                                    | Mapping Method                                                                                                   |
|-------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------|
| Online, via our website | Form fill                                                                                                                                     | AMM JavaScript                                                                                                                                                                                                  | By referencing UTM values, session landing page, referring page information |
| Offline                 | Tradeshows; BrightTalk Webcasts (for Attended status TPs), Content syndication partner delivers a list of leads who engaged with your content | CRM Campaign membership by enabling Touchpoint Generation on the campaign Object, by configuring campaign sync rules in AMM, Brighttalk Webcasts via Marketo Programs Integration through Marketo Program Rules | By referencing Campaign Type or the Marketo Program Channel Mapping    |
| Sales activity          | Outbound call by SDR                                                                                                                          | CRM Activity (Task or Event) record synced to AMM, through logic on the Activities page in AMM                                                                                                                  | By referencing the Campaign Name assigned on the Activities page        |

AMM has more extensive documentation on how [Touchpoints are generated and mapped](https://docs.marketo.com/display/BIZ/Touchpoint+Generation+and+Mapping).


## AMM Channel and Subchannel Mapping

Abode Marketo Measure stores a customizable set of rules for online and offline touchpoints separately. They can be edited through either the Online Channels page or Offline Channels page in AMM.

**Important:** AMM rule changes can only be made once every 7 days. AMM uses this time to re-process all touchpoint data with the new rules.

### Online Channel Mapping

The channels and subchannels are mapped based on 5 attributes:

1. Campaign - taken from the `utm_campaign` value on the session landing page or form URL where form submission occurs.
1. Medium - taken from the `utm_medium` value on the session landing page or form URL where form submission occurs.
1. Source - taken from the `utm_source` value on the session landing page or form URL where form submission occurs.
1. Landing Page - this is the landing page URL that the form submission occurs on.
1. Referring Website - this is the website that referred the submitter to the form submission page.

These rules are hierarchical and will operate top-down, so the first rule is checked, then the second, and so on.

Note: Some Online Touchpoints do not fall into a specific rule with a well-defined source. For example, these Touchpoints could be missing a UTM parameter or have no tracking information. These Touchpoints are mapped to either Direct or Other:

- Other - Touchpoints with tracking information (utm_source, utm_medium, etc.) that does not match any rule.
- Direct - Touchpoints that do not have tracking information, e.g. visitors who may have manually typed in a URL or came from another site with no referring URL.

| Channel        | Subchannel        | Campaign                   | Medium                             | Source                             | Landing Page                              | Referring Website        |
|----------------|--------------------|----------------------------|------------------------------------|------------------------------------|--------------------------------------------|--------------------------|
| Paid Search    | Google             |                            | cpc                                | google                             |                                            |                          |
| Paid Search    | Google             |                            |                                    |                                    |                                            | [AdWords Paid Search]    |
| Paid Search    | Bing               |                            | cpc                                | bing_yahoo                         |                                            |                          |
| Paid Search    | Bing               |                            |                                    |                                    |                                            | [Bing Paid Search]       |
| Paid Search    | Yahoo              |                            |                                    |                                    |                                            | [Yahoo Paid Search]      |
| Paid Search    | Other              |                            | cpc                                |                                    |                                            |                          |
| Paid Search    | Other              |                            |                                    |                                    |                                            | [Other Paid Search]      |
| Display        | DoubleClick        |                            |                                    |                                    |                                            | [DoubleClick]            |
| Display        | Google             |                            | display                            | google                             |                                            |                          |
| Display        | Google             |                            |                                    |                                    |                                            | [AdWords Display]        |
| Display        | Demandbase         |                            |                                    | ddbase;demandbase                  |                                            |                          |
| Display        | Other              |                            | display                            |                                    |                                            |                          |
| Display        | Other              |                            |                                    | display                            |                                            |                          |
| Paid Social    | Facebook           |                            | paidsocial                         | facebook                           |                                            |                          |
| Paid Social    | Facebook           |                            |                                    |                                    |                                            | [Facebook Paid]          |
| Paid Social    | LinkedIn           |                            | paidsocial                         | linkedin                           |                                            |                          |
| Paid Social    | LinkedIn           |                            |                                    |                                    |                                            | [LinkedIn Paid]          |
| Paid Social    | Twitter            |                            | paidsocial                         | twitter                            |                                            |                          |
| Paid Social    | Other              |                            | paidsocial                         |                                    |                                            |                          |
| Paid Social    | Other              |                            |                                    |                                    |                                            | [Other Paid Search]      |
| Organic Search | Google             |                            |                                    |                                    |                                            | [Google Organic Search]  |
| Organic Search | Bing               |                            |                                    |                                    |                                            | [Bing Organic Search]    |
| Organic Search | Yahoo              |                            |                                    |                                    |                                            | [Yahoo Organic Search]   |
| Organic Search | Other              |                            |                                    |                                    |                                            | [Other Organic Search]   |
| Social         | Facebook           |                            |                                    | Facebook                           |                                            |                          |
| Social         | Facebook           |                            | Facebook                           |                                    |                                            |                          |
| Social         | Facebook           |                            |                                    |                                    |                                            | [Facebook]               |
| Social         | LinkedIn           |                            |                                    | LinkedIn                           |                                            |                          |
| Social         | LinkedIn           |                            | LinkedIn                           |                                    |                                            |                          |
| Social         | LinkedIn           |                            |                                    |                                    |                                            | [LinkedIn]               |
| Social         | Twitter            |                            |                                    | Twitter                            |                                            |                          |
| Social         | Twitter            |                            | Twitter                            |                                    |                                            |                          |
| Social         | Twitter            |                            |                                    |                                    |                                            | [Twitter]                |
| Social         | YouTube            |                            | social                             | youtube                            |                                            |                          |
| Social         | YouTube            |                            |                                    |                                    |                                            | YouTube                  |
| Social         | Other              |                            |                                    | social                             |                                            |                          |
| Social         | Other              |                            | social                             |                                    |                                            |                          |
| Referral       | Partners           |                            |                                    |                                    | *partnerid=*                               |                          |
| Referral       | Partners           |                            |                                    |                                    | *glm_source=partner*                       |                          |
| Referral       | Partners           |                            |                                    | *partner*                          |                                            |                          |
| Referral       | Partners           |                            | *partner*                          |                                    |                                            |                          |
| Email          |                    |                            |                                    | email;eml;e-mail;hs-email;emailsig |                                            |                          |
| Email          |                    |                            | email;eml;e-mail;hs-email;emailsig |                                    |                                            |                          |
| Email          |                    |                            |                                    |                                    |                                            | *email.gitlab.com*       |
| Email          |                    |                            |                                    |                                    |                                            | [Web Mail]               |
| Other         |                    |                            | Any Value                                |                                   |                                            |                          |
| Other         |                    |                            |                                |          Any Value                          |                                            |                          |
| Direct         | Self Managed Trial |                            |                                    |                                    | *about.gitlab.com/free-trial/self-managed/*|                          |
| Direct         | Trial Home         |                            |                                    |                                    | *about.gitlab.com/free-trial/*             |                          |
| Direct         | GitLabCom Trial    |                            |                                    |                                    | *gitlab.com/-/trials/new*                  |                          |
| Direct         |                    |                            |                                    |                                    |                                            | direct;[Account Website] |
| Web Referral   |                    |                            |                                    |                                    |                                            | Any Value                        |

### Bucket Channel Mapping

 These channels and subchannels are pulled into Salesforce and can be further filtered by using `medium` for those channels with overlap or with `Ad Campaign name` to search for specific UTMs or campaigns. The `Bucket Mapping` is a high-level grouping of each subchannel set to allow for additional reporting.:

| AMM Channel.SubChannel | Bucket Mapping | Online/Offline | Type of Marketing                                                                                                                                                                                          |
|----------------------------- | -------------- | -------------- |---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Content.Content Syndication | Inbound Paid | Offline | White Paper or other content offer that is hosted by a third party.                                                                                                                                         |
| Content.Gated Content | Inbound Paid | Offline | White Paper or other content offer.                                                                                                                                                                               |
| Content.PF Content | Inbound Free Channels | Online | This campaign type is used to track consumption of specific PathFactory assets.                                                                                                                             |
| Digital.Inbound Request | Inbound Free Channels | Online | Any type of inbound request that requires follow up.                                                                                                                                                                                |
| Direct | Inbound Free Channels | Online | Unknown or direct (NOTE: this is not the same as Web direct/self-serve in SFDC, this is a Web referral where the original source was not captured)                                                                      |
| Display.Google | Inbound Paid | Online | A display ad from Google                                                                                                                                                                                                 |
| Display.Other | Inbound Paid | Online | A display ad from an unspecified source                                                                                                                                                                                   |
| Email | Inbound Free Channels | Online | Email driven engagement                                                                                                                                                                                                  |
| Event.Conference | Inbound Paid | Offline | Any large event run by Corporate Marketing that we have paid to sponsor, have a booth/presence and are sending representatives from GitLab (example: AWS re:Invent, DevOps Enterprise Summit).                         |
| Event.Executive Roundtables | Inbound Paid | Offline |  This is used for campaigns that can either be organised through a 3rd party vendor or GitLab, covering both in-person and virtual roundtables.                                                              |
| Event.Field Event | Inbound Paid | Offline | This is an event run by Field Marketing that we have paid to participate in                                                                                                                                           |
| Event.Owned Event | Inbound Paid | Offline | This is an event that we have created, own registration and arrange speaker/venue                                                                                                                                     |
| Event.Self-Service Virtual Event | Inbound Free Channels | Offline | This is a light weight virtual event that can be hosted on GitLabber's personal zoom.                                                                                                         |
| Event.Speaking Session | Inbound Paid | Offline | It is for tracking attendance at our speaking engagements.                                                                                                                                                       |
| Event.Sponsored Webcast | Inbound Paid | Offline | This is webcast hosted on an external partner/vendor platform. The                                                                                                                                              |
| Event.Vendor Arranged Meetings | Inbound Paid | Offline | Used for campaigns where a third party vendor is organizing one-to-one meetings with prospect or customer accounts.                                                                                      |
| Event.Virtual Sponsorship | Inbound Paid | Offline | A virtual event that we sponsor and/or participate in that we do not own the registration but will generate a list of attendees, engagement and has on-demand content consumption post-live virtual event. In |
| Event.Webcast | Inbound Free Channels | Offline | Any webcast that is hosted and held by GitLab.                                                                                                                                                                   |
| Event.Workshop | Inbound Free Channels | Offline | An in-person or virtual workshop where the attendees are guided through an agenda of real life use cases within GitLab.                                                                                         |
| Organic Search.Bing | Inbound Free Channels | Online | Organic Search through Bing                                                                                                                                                                                |
| Organic Search.Google | Inbound Free Channels | Online | Organic Search through Google                                                                                                                                                                            |
| Organic Search.Other | Inbound Free Channels | Online | Organic Search through an unspecified search engine                                                                                                                                                       |
| Organic Search.Yahoo | Inbound Free Channels | Online | Organic Search through Yahoo search                                                                                                                                                                       |
| Other | Other | Online | Unknown/unspecified UTMs                                                                                                                                                                                                                 |
| Other.Direct Mail | Inbound Paid | Offline | This is when a package or piece of mail is sent out.                                                                                                                                                                  |
| Other.Survey | Inbound Paid | Offline | A survey that we or a 3rd party sends out.                                                                                                                                                                                 |
| Paid Search.AdWords | Inbound Paid | Online |  Google AdWords Paid Search                                                                                                                                                                                          |
| Paid Search.Bing | Inbound Paid | Online | Bing Paid Search                                                                                                                                                                                                       |
| Paid Search.Other | Inbound Paid | Online | Unspecified Paid Search                                                                                                                                                                                               |
| Paid Social.Facebook | Inbound Paid | Online | Facebook Paid Ads                                                                                                                                                                                                  |
| Paid Social.LinkedIn | Inbound Paid | Online | LinkedIn Paid Ads                                                                                                                                                                                                  |
| Paid Social.Other | Inbound Paid | Online | Unspecified Paid Ads                                                                                                                                                                                                  |
| Paid Social.Twitter | Inbound Paid | Online | Twitter Paid Ads                                                                                                                                                                                                    |
| Referral.Referral Program | Inbound Paid | Online | This campaign type is used for our third party prospecting vendors or meeting setting services                                                                                                                |
| Social.Facebook | Inbound Free Channels | Online | Referral from Facebook                                                                                                                                                                                         |
| Social.LinkedIn | Inbound Free Channels | Online | Referral from LinkedIn                                                                                                                                                                                         |
| Social.Other | Inbound Free Channels | Online | Referral from an unspecified social platform                                                                                                                                                                      |
| Social.Twitter | Inbound Free Channels | Online | Referral from Twitter                                                                                                                                                                                           |
| Trial.Trial | Trial | Online | SaaS Trials                                                                                                                                                                                                                        |
| Web Referral | Inbound Free Channels | Online | Referral from any site not otherwise defined                                                                                                                                                                      |

## AMM Attribution with Pathfactory

**Asset Viewed**

A buyer touchpoint will be created, based on the [Content Engagement Time Threshold](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/4945). If the *known* user spends the required amount of time on a PathFactory asset, a script in the backend will be executed, pushing the event to AMM.

A touchpoint will only be generated if the user has accepted the `Cookie Policy` and is identified by PathFactory via the `lb_email` parameter.

AMM parses the referral URL it receives for: `utm_medium`, `utm_campaign`, `utm_source`.

**Form Fill**

Similarly to asset views, upon a successfull form submission on a PathFactory asset, a buyer touchpoint will be created.

**Downloaded Asset**
When an asset is downloaded on a PathFactory track, a buyer touchpoint is being generated by the backend script.

<!-- This diagram is to be used internally and with Pathfactory to understand the attribution touchpoints created through our setup of Pathfactory listening campaigns and how the tracks are used in integrated campaigns and other tactics that drive straight to pathfactory. -->

See [figjam flow chart](https://www.figma.com/file/QFHpUhzIyAim0B7ELOh1gO/Bizible-Online-an-Offline-Touchpoints-with-Pathfactory_2023-08-22_10-59-44?type=whiteboard&t=HDkNJDbCt6265Ezf-1)

## AMM in SFDC

### [AMM] SFDC Campaigns

These are part of AMM's native and automatic functionality. AMM will for every channel and subchannel, create a generic `[Bizible]` campaign within SFDC in order to attribute touchpoints.

But these are not official campaigns, that is why there are no members, but the touchpoints will reference these campaigns for use in reporting and analytics.

Example: [Web Direct [Bizible]](https://gitlab.my.salesforce.com/70161000000Cnzk)

### Bizible Reports in SFDC

Below are some frequently used bizible reports in SFDC and their use cases.

#### Use case: Track registration by source for GitLab owned gated landing pages

**Bizible report type used: Bizible person with Bizible touchpoints (Custom)**

Below are step-by-step instructions on how to track registration by driving channel for zoom webcasts, where the registration is set up on about.gitlab or Marketo pages.

- Step 1: Click SFDC report tab.
- Step 2: Create new report. In the search bar, type and select report type:`Bizible person with Bizible touchpoints (Custom)` and click `create`.
- Step 3: Within the SFDC report, make sure at the top the filters as set as `Show All bizible persons` and `Date Field Range is set to All Time`.
- Step 4: Add filter:  `Form url contains [insert webcast landing page unique identifier]` (e.g: Form url contains automate-security-ci)
- Step 5: Select summary format and group by `Marketing Channel - Path`.

Training Video:

{{< youtube "VbmqYu7WFOU" >}}

## AMM Review Process

### Online Channel Mapping

The review of online touchpoints and of the rules governing the creation of touchpoints based on online activities takes place once per month and includes the following checks:

- Pull a Marketo Measure Touchpoint SFDC report, grouped by channel and monitor for touchpoints associated to “Other” as the channel;
- Review the Landing Page Raw field data for the “Other” touchpoints and identify if there are new or rogue utm parameters that need to be added to our online rule sheet;
- Additionally review the [UTM Generator spreadsheet](https://docs.google.com/spreadsheets/d/12jm8q13e3-JNDbJ5-DBJbSAGprLamrilWIBka875gDI/edit#gid=2043976569) which contains the urls that are used in our various online campaigns and make sure any newly added utm parameters are included in the online rules sheet;
- Finalize all updates to the online touchpoint rules sheet and re-upload it back into Marketo Measure > Online Channels section;
- Lastly, if the rule changes require any additions/substractions to our Channel/Sub-Channel mapping, make sure to have those included in the Marketo Measure > Create Channels section.

### Offline Channel Mapping

The review of the campaign sync rules, the rules that govern the creation of touchpoints for offline activities takes place once per month and is based on the [Adobe Marketo Measure Best Practices for Maintenance](https://experienceleague.adobe.com/docs/marketo-measure/using/channel-tracking-and-setup/offline-channels/best-practices-for-offline-channels.html?lang=en). It includes the following checks:

- Pull a Marketo Measure touchpoint grouped by channel, report and monitor if we're seeing many touchpoints associated to NULL as the channel;
- Review the Campaign Ad Name data field for the NULL touchpoints and identify if the Campaign Type is selected. If so, then ensure that Campaign Type is visible in Marketo Measure under Offline Channels, and it is mapped to the correct Channel;
- Under CRM > Offline Channels ensure all offline campaign types are mapped to the proper Marketo Measure channel/Sub-Channel.
- Under CRM > Campaigns ensure the rules setup are still up-to-date and accurate. Run a test on any campaigns that are not tracking properly.
- Publish any changes we make to retroactively update the touchpoints.

### AMM data updates

To view all AMM data related updates please visit the [marketing changelog spreadsheet](https://docs.google.com/spreadsheets/d/1FHiKhQukMVfwKsBJDzyrsuzuw2bv97xQFhegvFXTeNQ/edit#gid=613524344). All updates are documented there along with additional information like the date of the update, level of impact and the type of the change.
