---

title: "Contentful CMS"
description: "Editing and creating content using Contentful"
---



# Contentful Guide

The Digital Experience team is currently migrating the [marketing site](https://about.gitlab.com/) to our new CMS tool, Contentful. This work is ongoing throughout FY24Q4 and into the new year, but we are starting to onboard different teams onto Contentful so that they may self-serve their own content changes. 

### What is Contentful?

Contentful is a Content Management System. It replaces all of the text files in our marketing site (such as events.yml) and replaces them with different Content Entries. Contentful also has a Media Library, where we are moving our images. 

### Contentful terminology

- Content: A Catch-all term for text or images on the marketing site
- Content Type: A type of content. These include Cards, Heros, Buttons, etc and can all be viewed in Contentful under the Content Model tab. We have different classes of Content Types (Atoms, Molecules, Organisms)
  - Atoms: Base-level components that don't contain other Content Types within them. Example: Buttons, Text
  - Molecules: Typically contain a combination of Atoms. Example: Hero, Card Group
  - Organisms: Commonly contain many Molecules or Atoms and are considered more complex. Example: Page
- Entry: An Entry is considered one piece of content in a content type. For example, there are many Cards across the marketing site, but the Free card on the pricing page is one example of a Card Entry.
- Field: Even the most basic Content Type typically has multiple fields. For example, a Button may seem small, but some fields it contains include the url it points to, the text on the button, perhaps an icon, maybe some tracking data. Each of these are considered Fields of the Button Content Type. 


## Resource Deep Dive 


1. [Training Resources for Contentful](/handbook/marketing/digital-experience/contentful-cms/editing-content)
2. [Custom Pages](/handbook/marketing/digital-experience/contentful-cms/custom-pages)
2. [Solutions Pages](/handbook/marketing/digital-experience/contentful-cms/solutions-pages)
4. [Known knowns & feature wishlist](/handbook/marketing/digital-experience/contentful-cms/wishlist)


## Getting help with Contentful

## Making Changes in Contentful - Standard Operating Procedure

As owners of the marketing website, the digital experience team handles most large changes in order to drive business goals. However, we are not necessarily the subject matter experts and will defer to various teams when it comes to editing content. In general, these are the various processes we try to adhere to:

#### For Top 10 (most visited/impactful) Pages

Any change to these pages must be reviewed by [Lauren Barker](https://gitlab.com/laurenbarker) and/or [Filza Qureshi](https://gitlab.com/fqureshi). Please tag them in the Contentful comments section prior to publishing any content on these pages, and link to any issues or MRs that may have additional context about the changes. In the future, we may implement a tagging system that blocks most roles from publishing these pages. As we build more pages, this list may grow or shrink, but includes:

1. Homepage
2. Pricing page
3. Platform Page
TODO: add to this list
...

These pages typically also have design reources, so making any large or visual changes should be handled in an [issue request](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/issues/new#). 

#### For typos, broken links, small content changes

Contentful is great tool for making small updates to the content on any given page. 

- If you are a team that typically manages the content on the page in question, you should feel empowered to make the change and publish your changes. 
- If you're changing content on a page that typically doesn't belong to you but is an obvious mistake, please also go ahead and publish your changes.
- If you're making a change on a page that affects the tone of the page and are not an owner, please tag someone from the presiding team in the contentful comments section (or in an issue/MR/slack) prior to publishing your changes. This is not typically the Digital Experience team, but rather the relevant team that owns that content. We have created a rough table of ownership [here](TODO table) to be used as a guide only. 


### Digital Experience Slack Channel

Reach out to our team in #digital-experience-team on slack. 



## Getting access to Contentful

Please fill out an access request [here.](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/)




