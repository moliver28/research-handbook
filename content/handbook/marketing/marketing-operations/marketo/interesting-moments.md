---
title: "Marketo Interesting Moments"
description: "Commonly used Interesting Moments and what they mean"
---

## Overview

[Interesting moments](https://experienceleague.adobe.com/docs/marketo/using/product-docs/marketo-sales-insight/msi-for-salesforce/features/tabs-in-the-msi-panel/interesting-moments/using-interesting-moments.html?lang=en) are used by Marketo to show relevant information to the sales team and others in Salesforce.com

Interesting Moments show in two places on records, in the Marketo Sales Insight window or in the `Last Intersting Moment Description` field. This field updates dynamically every time an Interesting Moment is updated and date stamped.

## Common Interesting Moments

|Interesting Moment|Description|SFDC Campaign|SDR Action|
|-----------|--------------|------------|----------|
|`This lead is part of a namespace that has checked to setup GitLab for Company/Team use`|Owner indicated on signup that this namespace is for company or team use. This person is a member of that namespace|n/a|no action, more of an FYI|
|`Filled out Contact Us Form - GitLab Dedicated`|Filled out an interest form for GitLab Dedicated|[Request - GitLab Dedicated](https://gitlab.my.salesforce.com/7018X000001lp32?srPos=0&srKp=701)|No action necessary|
|`Filled out startup application form`|Startup applicant|[FY20_Startup Application](https://gitlab.my.salesforce.com/7014M000001lkwy?srPos=0&srKp=701)|Pass to `User: Community Advocate`|
|`HandRaise PQL - Contact Us`|Requested contact via in product [handraise](/handbook/product/product-principles/)|[Request - Hand Raise PQL](https://gitlab.my.salesforce.com/7014M000001viyX?srPos=0&srKp=701)|Follow Up|
|`Engaged with Content Track: {{lead.PathFactory Experience Name}}, Session Engagement Time (seconds): {{lead.PathFactory Engagement Time}}`| Fast Moving Buyer alert from PathFactory |[PF - Fast Moving Buyer Alert](https://gitlab.my.salesforce.com/7014M000001derO?srPos=0&srKp=701)| No action necessary|
|`Created from GitLab Subscription Portal`|Lead started the web direct purchase process (may or may not be completed)|N/A|Check for duplicates with `Web Direct`|
|`Downloaded XX from 3rd Party site: Integrate`| GitLab owned assets downloaded via content syndication platform|Various|Navigate to Campaign history/campaign details to see the asset and campaign description|
|`Lead has reached 6QA status, and this SMB lead has been autosequenced in Outreach`| New SMB 6QA lead has been created and is autosequenced in Outreach. | N/A| Monitor the progress of the [sequence](https://web.outreach.io/sequences/13896/overview) for any replies. |
|`Lead has reached 6QA status and this MM/ENTG lead has been added to the SFDC dashboard. Proceed with outreach.` | New MM/ENTG 6QA lead has been created.| N/A|  Review leads in the [SFDC dashboard](https://gitlab.my.salesforce.com/01ZPL000000kAPN) and proceed with outreach.|
