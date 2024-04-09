---

title: "Contentful CMS"
description: "Editing and creating content using Contentful"
---


## What is Contentful?

The Digital Experience team has migrated the [marketing site](https://about.gitlab.com/) to our new CMS tool, Contentful. Contentful is a Content Management System - it replaces all of the text files in our marketing site and replaces them with different Content Entries. Contentful also has a Media Library, where we are moving our images. 

## Why transition to a CMS? 

As the GitLab marketing team and the marketing site evolves, we need a collaborative tool that allows for consistency across the marketing site. 

### Contentful terminology

- Content: A Catch-all term for text or images on the marketing site
- Content Type: A type of content. These include Cards, Heros, Buttons, etc and can all be viewed in Contentful under the Content Model tab. We have different classes of Content Types (Atoms, Molecules, Organisms)
  - Atoms: Base-level components that don't contain other Content Types within them. Example: Buttons, Text
  - Molecules: Typically contain a combination of Atoms. Example: Hero, Card Group
  - Organisms: Commonly contain many Molecules or Atoms and are considered more complex. Example: Page
- Entry: An Entry is considered one piece of content in a content type. For example, there are many Cards across the marketing site, but the Free card on the pricing page is one example of a Card Entry.
- Field: Even the most basic Content Type typically has multiple fields. For example, a Button may seem small, but some fields it contains include the url it points to, the text on the button, perhaps an icon, maybe some tracking data. Each of these are considered Fields of the Button Content Type. 

## How do we make changes to the marketing site with the CMS?

As owners of the marketing website, the digital experience team handles most large changes in order to drive business goals. However, we are not necessarily the subject matter experts and will defer to various teams when it comes to editing content. In general, these are the processes we try to adhere to:

### For Top 10 (most visited/impactful) Pages

Any changes required for the following changes, must begin with an issue for the DEX team to reivew. Please create an issue per [this process](https://handbook.gitlab.com/handbook/marketing/digital-experience/#issue-template-to-submit-an-idea-to-drive-our-business-goals). 

- [Homepage](https://about.gitlab.com/)
- [Pricing](https://about.gitlab.com/pricing/)
- [Free Trial](https://about.gitlab.com/free-trial/devsecops/)
- [Why GitLab](https://about.gitlab.com/why-gitlab/) 
- [GitLab Duo](https://about.gitlab.com/gitlab-duo/)
- [Platform](https://about.gitlab.com/platform/)

These pages have been developed through a data-driven design process with cross-functional collaboration and approval. Changes can be suggested however changes will only be made if they are alignment with GitLab marketing goals. 

### For component editing, re-arranging, adding new page sections, significant content changes

If you'd like to make changes to a page that typically is managed by another team, please tag that team prior to publishing your changes. A rough overview of ownership of different sections can be seen in the table below:

#### Table of page ownership

| Team | Pages/Sections |
| ------ | ------ |
| CMSO - Chief of Staff |Company Announcements |
| Marketing Operations and analytics - Globalization & Localization | Marketing site localization |
| Integrated Marketing - Digital Strategy | SEO |
| Integrated Marketing - Corporate Events | Events pages |
| Integrated Marketing - Regional Marketing | Events, Resources, Marketing pages |
| Product Marketing - Global Content | Blog, Case studies |
| Product Marketing - Product & Solutions Marketing | Solutions pages, Topics pages |
| Product Marketing - Brand Strategy | Brand activations, Assets |
| Dev Relations & Community - Contributor Success | Technical articles |
| Dev Relations & Community - Developer Relations | Technical articles, Community pages |
| Corporate Communications | Company Announcements, Press releases |

### For typos, broken links, small content changes

Contentful is great tool for making small updates to the content on any given page. 

- If you are a team that typically manages the content on the page in question, you should feel empowered to make the change and publish your changes. 
- If you're changing content on a page that typically doesn't belong to you but is an obvious mistake, please also go ahead and publish your changes.
- If you're making a change on a page that affects the tone of the page and are not an owner, please tag someone from the presiding team in the contentful comments section (or in an issue/MR/slack) prior to publishing your changes. This is not typically the Digital Experience team, but rather the relevant team that owns that content. We have created a rough table of ownership [here](#table-of-page-ownership) to be used as a guide. 

### Roles and Permissions

We have various levels of access in Contentful. Most new members that are invited to the CMS are given Creator access, which allows them to edit content without publishing it. To get upgraded to Publisher access, please [reach out to the digital experience team](#requesting-assistance-from-digital-experience) in slack.

- *Administrator*: has full access to everything in the space.
- *CMS Administrator*: can create, read, update, publish, and delete all content aside from `Confidential` entries. Can modify space settings, access existing API keys, and can create and update API keys.
- *Confidential*: can create, edit, publish, archive and delete all content in a space, including `Confidential` content.
- *Creator*: can create and edit all content in a space (aside from `Confidential` content), but cannot publish it.
- *Publisher*: can create, edit, publish, archive and delete all content in a space (aside from `Confidential` content). This person should be able to administer their own team.

## Resources for learning 

1. [Editing Content](/handbook/marketing/digital-experience/contentful-cms/editing-content)
2. [Custom Pages](/handbook/marketing/digital-experience/contentful-cms/custom-pages)
2. [Solutions Pages](/handbook/marketing/digital-experience/contentful-cms/solutions-pages)
4. [Caveats and Feature Wishlist](/handbook/marketing/digital-experience/contentful-cms/wishlist)

### Requesting assistance from Digital Experience

- Reach out to our team via `#digital-experience-team` on slack
- Open an issue using our [issue template](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/issues/new#)

## Getting access to Contentful

Please fill out an access request [here](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/) and tag your manager for approval as well as `@lbarker` from Digital Experience, and include the purpose for your request (i.e. to edit the marketing site, to edit the blog - these are managed in different spaces in Contentful). You will recieve an email invitation to Contentful as a `Creator` unless publish access is necessary. 




