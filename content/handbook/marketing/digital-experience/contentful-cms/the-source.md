---
title: "Contentful CMS 'The Source' Pages"
description: "Editing and making unique The Source pages with Contentful and custom components from Buyer Experience"
---

## "The Source" Pages

The Digital Experience team has selected the solutions pages (`/the-source/*`) to be managed and served within Contentful. This page is designed to allow users to create a new "The Source" page from scratch using Contentful as CMS.

For in-depth information about Contentful CMS, please visit our [Resource Deep Dive page](/handbook/marketing/digital-experience/contentful-cms/#resource-deep-dive).

### How to Edit/Create pages using "The Source" template

For our [Buyer Experience Site](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/), creating or updating a **The Source page** requires the use of the [📄 The Source](https://app.contentful.com/spaces/xz1dnu24egyd/environments/master/content_types/article/fields) Content Type.
Each entry in this Content Type functions as a distinct page on the site, complete with its Metadata configuration, Routing configuration, Hero configuration and Content Body with markdown.

Here is [direct link](https://app.contentful.com/spaces/xz1dnu24egyd/environments/master/views/entries?searchText=&contentTypeId=&contentTypeIds=article&displayedFieldIds=contentType&displayedFieldIds=updatedAt&displayedFieldIds=author&order.direction=descending&order.fieldId=updatedAt&filters=) to view all of our source article entries in Contentful.

Click on the article you'd like to edit from that list. You can use also click the "add entry" blue bottom on the top left to create a new article. Select "The Source" content type.

#### Routing configuration

To configure the page's routing, it is essential to declare the `slug` field. The page routes can extend up to three levels being the first level `the-source`, for example, `the-source/level-2/level-3`.
The field won't accept routes with a trailing slash or a leading slash.

#### Metadata Configuration

To configure SEO metadata attributes of a *📄 The Sourcee* page, it's necessary to use the `SEO Title` and `SEO Description` fields of the [content type](https://app.contentful.com/spaces/xz1dnu24egyd/environments/master/content_types/article/fields)

To improve search engine results, use different language for the slug, Headline, SEO Title, and sSEO Description. 

URLs should be kept short and aim to include topical terms and no stop words. URLs that are concise, descriptive, and easy to understand are generally better for both SEO and user experience.

Title tag (SEO Title field) and H1 (Headline field) need to be interchangeable - a title tag is shown in SERPs and has to have a maximum length of 55-60 characters. H1s can be longer to be descriptive, also for optimisation purposes title tags need to be changeable/ similar for H1s, but independently.

The meta description (SEO Description feid) in SERPs is what entices action from a searcher, and should use as much of the 155-160 character limit as possible.

### Hero Configuration

To personalize the hero section, use the fields in the [📄 The Source](https://app.contentful.com/spaces/xz1dnu24egyd/environments/master/content_types/customPage/fields) Content Type. These fields are designed to let you customize the static Hero section, making it the first component that visitors see on the page.

| "The Source" Page Field | Description | Example Value | Localizable |
|-------------------|-------------|---------------|------|
| Headline | Main header of the Hero | "The Source Headline" | Yes |
| Date | Date of the article | "07/31/2024" | No |
| Time to read | Time to read the article | "7 min read" | Yes |
| Hero Image | Main hero image | Example image | No |
| Author Name | Name of the author | "Jane Doe" | No |
| Author Headshot | Photography of the author | Example image | No |

#### Visual representation

![The Source Hero](/images/handbook/contentful/the-source-hero.png)

### Key Takeaways section

This section is located aside from the main content of the article, use the `Key Takewaways` field in the [📄 The Source](https://app.contentful.com/spaces/xz1dnu24egyd/environments/master/content_types/customPage/fields) Content Type.

#### Visual representation

![The Source Key Takeaways](/images/handbook/contentful/the-source-hero.png)

### Body Content Section

This is the main article's content section, the field is called `Article Body`, this section can be edited using markdown and it has some features that can be used to render cards or buttons within markdown.

#### Buttons and Cards

To render buttons and cards using markdonw, The Source allows to do it following the next markdown formatting:

**Button**:

````markdown
[link](url){class=button}
````

**Card**:

````markdown

Card Content

````

**Visual Representation**

Example markdown:

````markdown
##### You may also be interested in

> ![image](url)
> #### Main Header
>
> Lorem ipsum dolor est
> [See how > ](/){class="button"}

![image](url)

````

![The Source markdown card and button ](/images/handbook/contentful/the-source-hero.png)
