---

title: Marketing Site Handbook
description: >-
  GitLab's Marketing Website (about.gitlab.com) is led by the Inbound Marketing
  Team and anyone can contribute.
---

GitLab's Marketing Site (about.gitlab.com) is led by the [Digital Experience Team](/handbook/marketing/digital-experience) and anyone can contribute. Internal GitLab team members can drop questions in Slack at #digital-experience-team

## Objectives

Serve the needs and interests of our key audiences:

1. Users: software developers and IT operations practitioners.
1. Buyers of GitLab: IT management, software architects, development leads.
1. Users of and contributors to OSS on gitlab.com.
1. General public interest: job seekers, investors, press, etc.

Generate demand for GitLab by:

1. Providing a compelling landing page experience for organic search traffic visitors
1. Showcase the benefits of the most important GitLab features and how they can save time and money.
1. Educate existing and potential GitLab customers on GitLab vs competing products.
1. Provide customer case studies which illustrate 1 and 2.

## Scope

The GitLab marketing site, or simply the "GitLab Website" refers to all of the content on `` and the contents of `sites/uncategorized` in the www-gitlab-com rexcept for:

- The Docs: `docs.gitlab.com`
- The GitLab.com product: `gitlab.com`
- The Handbook: `about.gitlab.com/handbook`

See [Where should content go?](/handbook/editing-handbook/#where-should-content-go) to learn which web property is the most appropriate place to put different types of content. To learn what section of the website different content belongs see [definitions](#definitions).

Known Issue: There is an [ongoing issue](https://gitlab.com/gitlab-com/Product/-/issues/1869) to further clarify the DRI(s) for various parts of the www-gitlab-com repo and project, and this is a [Q2 FY22 OKR for Inbound Marketing](https://gitlab.com/groups/gitlab-com/marketing/inbound-marketing/-/epics/332#note_602431848)

## Metrics

- Increase clicks from search engine results pages (SERPs)
- Increase unique visitors
- Increase page views
- Increase time on site
- Improve form conversion rates (e.g trial signups)
- Reduce bounce rates

## Tracking Tools

As of 2021-04-27, we are [actively auditing](https://gitlab.com/gitlab-com/marketing/inbound-marketing/marketing-website/-/issues/125) the tracking, cookies, and other 3rd party personalization tools installed on the GitLab Website to ensure we are only collecting the information needed to deliver our service.

* Last audit complete date with link to issue: TBD - audit underwawy

### List of Tracking Tools

TBD - format will be a table with a list of tracking tools and brief description of purpose.

For example: Google Analytics web metrics

GitLab also publishes a [list of all the technology](/handbook/business-technology/tech-stack-applications/) that GitLab currently uses to support the business.

## Definitions

### Topics

A topic is an industry trend, theme, or technology related to GitLab and our customers. For example, DevOps, GDPR, Containers, etc. Topic pages on our website educate the reader about the topic and share GitLab’s point of view while providing additional links to resources related to that topic. These pages are intended to attract search traffic.

Topic pages should exist at the root level of the website without being nested inside of another directory. e.g. `/continuous-integration`

Examples of other companies who have topic pages:

- [https://www.redhat.com/en/topics/containers](https://www.redhat.com/en/topics/containers)
- [https://pivotal.io/containers](https://pivotal.io/containers)
- [https://pivotal.io/topics](https://www.redhat.com/en/topics/containers)

### Solutions

A solution is a combination of products and services that solve a business problem. For example, accelerating software delivery, enabling remote teams, ensuring compliance, etc. Solution pages on our website show the application of GitLab capabilities and services to address a business problem while providing additional links to resources related to that solution.

Solution pages should be nested inside of the solutions directory. e.g. `/solutions/continuous-integration`

Examples of other companies who have solutions pages:

- [https://www.redhat.com/en/challenges](https://www.redhat.com/en/challenges)

### Product section

The product section of our website has pages that describe what GitLab does and the value provided. The functionality of GitLab is ordered in a hierarchy with 4 levels: Stage, Categories, Capabilities, and Features. You can find details on the [Product Categories Handbook](/handbook/product/categories/)

- Stages relevant to users are listed on the [product overview page](https://about.gitlab.com/stages-devops-lifecycle/) with details about the stage on the [stages page](https://gitlab.com/gitlab-com/www-gitlab-com/issues/2428).
- Categories relevant to users are listed on the [product overview page](https://about.gitlab.com/stages-devops-lifecycle/).
- Capabilities are listed on the category page they belong to. Capabilities may also have their own landing page.
- Features are listed in many places on the website: on the features page, the capabilities page they belong to, the pricing page, comparison pages, and the ROI calculator.

Category pages should be nested inside of the product directory. e.g. `/product/continuous-integration`

Examples of companies who have product/features pages:
[https://mailchimp.com/features/](https://mailchimp.com/features/)
[https://www.groovehq.com/features](https://www.groovehq.com/features)

### Compare sections

There are two comparison sections on our website, `/compare/` and [DevOps tools](https://about.gitlab.com/why-gitlab/).

The DevOps tools section provides an in-depth, feature by feature comparison of GitLab and our competitors. Pages in the DevOps tools section are maintained by the Competitive Intelligence team, which is part of the [Product and Solution Marketing](/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/) team.

Pages in `/compare/` are shorter and focused on a single Call to Action that offers relevant resources to visitors arriving via paid advertising. Pages in `/compare/` are maintained by Growth Marketing team and Marketing Program Managers.

Examples of companies who have comparison pages:
[https://postmarkapp.com/compare/sendgrid-alternative](https://postmarkapp.com/compare/sendgrid-alternative)
[https://www.zendesk.com/support/features/zendesk-vs-intercom/](https://www.zendesk.com/support/features/zendesk-vs-intercom/)

### Overlap

Similar content can appear as a topic, solution, and in the product section with different emphases on each page. For example continuous integration:

- A topic page: `/continuous-integration` would talk about what CI is at a functional level.
- A solutions: `/solutions/continuous-integration`. would talk about why CI is important for businesses to adopt.
- A category page `/product/continuous-integration` would talk about the capabilities and features that are part of GitLab's CI functionality and the value it has.

## Requesting Support
If you need support please review the information on the [Digital Experience Hanbook Page](/handbook/marketing/digital-experience/#requesting-support)

## Updating the Marketing Website

### Naming conventions

Use consistent language across the site when naming links, page names, directory names, page titles, etc. If you see inconsistent language, [log an issue](https://gitlab.com/gitlab-com/www-gitlab-com/issues) to correct. We use [american english](/handbook/communication/#writing-style-guidelines) on the site. Here are some examples below. If in doubt, ask in the `#marketing` slack channel for language help.

Do use nouns when appropriate

- `/product/`
- `/community/`
- `/events/`

Do use the imperative tense as much as possible

- Get started
- Install
- Contribute

Don't use noun forms of verbs

- Installation
- Contribution

Don't use present participle ("ing" words)

- Installing
- Getting started
- Contributing

Nouns may end in "ing"

- Pricing (link to with the imperative "Get pricing" or "See pricing")
- Training (link to with the imperative "Get training" or "Find training")

### Creating new pages

Use [MVCs](/handbook/values/#iteration) to update the website. Create new pages and add the minimal amount of viable content. You can add images and more content in iterative steps.

All pages should use lowercase URLs to help avoid unintentional errors when linking to pages on about.gitlab.com.

We have 10-20 seconds to tell visitors why they should stay on our pages. Tell visitors what value the page will give them. Start with a high-level summary opening the page. This could be as simple as a single sentence, but we shouldn’t put the burden of discovering the value of the page on visitors.

The page title and URL should include keywords visitors might use to discover the page you’re creating. If you’re not sure what terms a visitor might use, ask the Growth Marketing team for suggestions in your Merge Request. We have a list of high priority topics and recommended keywords to use.

### Creating a new page

#### As an Engineer

If you are an engineer, be sure to check out our [developer docs in Buyer Experience](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/tree/main/docs?ref_type=heads).

Pages are built in the code under [/pages/](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/tree/main/pages?ref_type=heads), and they fetch content from Contentful. Documentation coming soon.

#### As a Non-engineer

To create a new page, work with the Digital Experience team by creating an issue in the [Buyer Experience repo](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/issues/new#)

### Updating an existing page

1. To edit the existing content of a page, check out our Contentful CMS documentation.
1. To add a visual component or section to a page, please fill out an [issue](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/issues/new#) for the Digital Experience team.

### Optimize images

When adding an image to a webpage, be sure that you optimize the image first.

1. Select the image you'd like to add to a page and save a copy to your computer.
1. Add your local copy to [ImageOptim](https://imageoptim.com/howto.html) and optimize the image for the web.

### Working with Stages, Groups, and Categories

[Categories and stages](/handbook/product/categories/) are defined in the product handbook. Stages are stored in [`data/stages.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/stages.yml) and categories are stored in [`data/categories.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/categories.yml) as the single source of truth for engineering and marketing.

These two files power various parts of the website:

- [homepage](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/sites/uncategorized/source/includes/home/sdlc.html.haml)
- [product pages](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/source/product/index.html.haml)
- [product categories handbook](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/source/includes/product/_categories.erb)
- [feature page](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/pages/features/index.vue)
- [platform page](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/pages/platform.vue)

Note: The [categories table](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/components/common/categories-table.vue) on the [platform page](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/pages/platform.vue) is populated by [`data/categories.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/categories.yml) for each feature which has the `marketing` key set to True. When clicking on a feature in the table, you are redirected in the following orders:

1. `marketing_page` key: Points to the appropriate marketing or solution page
2. `feature_page` key: Points to the appropriate section of the [feature page](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/pages/features/index.vue)
3. `documentation` key: Points to the appropriate documentation for the feature
4. `direction` key (planned maturity only): Points to the appropriate direction page

They are also used by the automated triage operation ["Stage and group labels inference from category labels"](/handbook/engineering/infrastructure/engineering-productivity/triage-operations/).

#### Stage attributes

Below are attributes that can be added to a stage in `data/stages.yml`. Each of these properties is accessed via `stages.<stage_key>.foo`

- `display_name`: the name of the Stage in sentence case
- `pm`: the PM leader for this stage
- `marketing`: boolean, whether or not the stage is a "marketed" stage and should be displayed
- `tw`: boolean, if supported by technical writing
- `image`: the logo for the stage
- `description`: a short description of what the stage covers
- `body`: a longer-form description of what the stage covers
- `direction`: where the direction page can be located (ex: `/direction/foo`)
- `roadmap`: a URL to where the roadmap for the stage can be found
- `established`: the year the stage was established (ex: `2020`)
- `lifecycle`: integer (1-7), where the stage falls in the devops lifecycle
- `usage_driver_score`:the Product Usage Driver score, used on [/handbook/product/investment](https://internal.gitlab.com/handbook/product/investment/)
- `revenue_driver_score`:the Revenue Driver score, used on [/handbook/product/investment](https://internal.gitlab.com/handbook/product/investment/)
- `sam_driver_score`:the Service Addressable Market score, used on [/handbook/product/investment](https://internal.gitlab.com/handbook/product/investment/)
- `stage_development_spend_percent`:
- `analyst_reports`: a list of links to relevant analyst reports
    - `analyst_reports.title`: the title of the report
    - `analyst_reports.url`: the URL of the report
- `related`: the stages related to this stage
- `section`: the section this stage belongs to
- `groups`: a list of groups that belong to this stage. [definitions for their properties below](#group-attributes)

##### Group Attributes

Below are attributes that can be added to a group in `data/stages.yml`. Groups are defined in the `groups` property of a stage. Each of these properties is accessed via `stages.<stage_key>.groups.<group_key>.foo`

- `name`: the name of the Group in sentence case
- `label`: The group [label in the `gitlab-org` group](https://gitlab.com/groups/gitlab-org/-/labels?utf8=%E2%9C%93&subscribed=&search=group%3A%3A).
By default, the group label is inferred from its name.
For instance, the `import` group is represented by the
[`group::import` label in the `gitlab-org` group](https://gitlab.com/groups/gitlab-org/-/labels?utf8=%E2%9C%93&subscribed=&search=group%3A%3Aimport).
This attribute allows to override that.
For instance, the `gitlab-org` label for the `Distribution Deploy`
group is [`group::distribution`](https://gitlab.com/groups/gitlab-org/-/labels?utf8=%E2%9C%93&subscribed=&search=group%3A%3Adistribution).
- `focus`:
- `pm`: the Product Manager
- `pmm`: the Product Marketing Manager
- `cm`: the Content Marketer
- `backend_engineering_manager`: the Backend Engineering Manager
- `frontend_engineering_manager`: the Frontend Engineering Manager
- `support`: the Support Engineer
- `pdm`: the Product Design Manager
- `ux`: a list of Product Designers
- `uxr`: the User Experience Researcher
- `sets`: a list of Software Engineers in Test
- `tech_writer`: the Technical Writer
- `appsec_engineer`: the Application Security Engineer
- `be_team_tag`: the "tag" being used in the `department` field in `team.yml` for Backend Engineers on this team
- `fe_team_tag`: the "tag" being used in the `department` field in `team.yml` for Frontend Engineers on this team
- `cs_team_tag`: the "tag" being used in the `department` field in `team.yml` for Customer Success on this team
- `internal_customers`: a list of internal customers/stakeholders for this group
- `internal_customers.department`: the name of the internal customer
- `internal_customers.dri`: the DRI assigned for this relationship
- `usage_driver_score`: the Product Usage Driver score, used on [/handbook/product/investment](https://internal.gitlab.com/handbook/product/investment/)
- `asp_driver_score`: the ASP score, used on [/handbook/product/investment](https://internal.gitlab.com/handbook/product/investment/)
- `sam_driver_score`: the Served Addressable Market score, used on [/handbook/product/investment](https://internal.gitlab.com/handbook/product/investment/)
- `pi_gmau`: A link to the dashboard that displays GMAU for this group
- `pi_pgmau`: A link to the dashboard that displays _Paid_ GMAU for this group
- `analyst_reports`: A link to a location where relevant analyst reports are available
- `comp_comparison`: A link to a location where comparisons with competitive products are available
- `categories`: a list of categories that are owned by this group. [definitions for their properties below](#category-attributes)

#### Category attributes

Below are attributes that can be added to a category in `data/categories.yml`. Each of these properties is accessed via `categories.<category_key>.foo`.

- `name`: the name of the category in quotes
- `stage`: what stage the category belongs to.
- `label`: The category [label in the `gitlab-org` group](https://gitlab.com/groups/gitlab-org/-/labels?utf8=%E2%9C%93&subscribed=&search=Category%3A).
By default, the category label is inferred from its name.
For instance, the `Code Analytics` category is represented by the
[`Category:Code Analytics` label in the `gitlab-org` group](https://gitlab.com/groups/gitlab-org/-/labels?utf8=%E2%9C%93&subscribed=&search=Category%3ACode+Analytics).
This attribute allows to override that.
For instance, the `gitlab-org` label for the `Kanban Boards`
category is [`Category:Issue Boards`](https://gitlab.com/groups/gitlab-org/-/labels?utf8=%E2%9C%93&subscribed=&search=Category%3AIssue+Boards).
- `feature_labels`: A list of all the feature labels that are associated with this category.
This list is used in the automated triage operation ["Stage and group labels inference from category labels"](/handbook/engineering/infrastructure/engineering-productivity/triage-operations/).
- `marketing_page` (optional): the path of marketing page for the category. If you include a `body` section, then a marketing page will be auto-generated at `/product/${lowercase-category-name}`
- `documentation` (optional): the URL of the docs page for the category, required if the category maturity is minimal or above.
- `direction` (required): the URL of the category direction page. Optionally could be the URL of an issue, epic, or issue label search query if a direction page has not yet been created.
- `description`: a short description of the category.
- `roi`: `true | false` should this category appear in the ROI calculator. (omitting the line is the same as `false`)
- `percent_of_focus`: A value of `0-1` detailing the percent of the group this category is assigned to's focus on this category in terms of developing improvements
- `available`: an ISO date for when the feature was or will be available.
- `viable`: an ISO date for when the category will/did move from minimum to viable on the [maturity handbook page](https://about.gitlab.com/direction/maturity/).
- `complete`: an ISO date for when the category will/did move from viable to complete on the [maturity handbook page](https://about.gitlab.com/direction/maturity/).
- `lovable`: an ISO date for when the category will/did move from complete to loveable on the [maturity handbook page](https://about.gitlab.com/direction/maturity/).
- `maturity`: the current maturity of the category on the [maturity handbook page](https://about.gitlab.com/direction/maturity/). Valid values are `planned`, `minimal` (available), `viable`, `complete`, and `lovable`. Provided `marketing = true`, a value of `planned` will cause the category to appear in the "coming soon" section of the homepage, while other values will cause it to appear in the "Since 20XX GitLab added" section.
- `marketing`: A value of `true` will cause this category to appear on our marketing pages, in addition to our [handbook](/handbook/product/categories/). For the home page, a `maturity` state is also required. [Internationalizaion](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/categories.yml) is a good example of a category the engineering team works on, but is not a "customer-facing category" that appears on marketing pages.
- `body`: content added in markdown will be [auto-generated](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/config.rb#L133) and turned into a page at `/product/<category>/`. Features and missing features sections are automatically added to the generated category pages based on what category a feature belongs to in `features.yml`. c.f. [Project Management](https://about.gitlab.com/solutions/agile-delivery/) (and auto-generated page from the [`body` section in `categories.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/categories.yml#L148)) with [Continuous Integration](/features/continuous-integration/) (a [custom page](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/source/features/continuous-integration/index.html.haml).)
- `opportunity`: values can be `Core`, `Adjacent`, `Distant` - is this category considered part of our existing `Core` DevOps platform, a directly `Adjacent` set of capabilities or a `Distant` vision for future breadth.
- `differentiation`: values can be `Winning`,`Compelling`,`Minimal` - is this category sufficiently differentiated from competitors to be considered capable of consistently `winning`, providing an `compelling` additive component to our single platform value or adding only `minimal` differentiated value.
- `ux_scorecard_score`: value should be a letter score, following the [grading rubric](/handbook/product/ux/ux-scorecards/#grading-rubric)
- `ux_scorecard_link`: should link to the specific issue for the scorecard for this category. More details on [UX Scorecards here](/handbook/product/ux/ux-scorecards/#setup)
- `dogfooding_status`: values can be `planned`, `limited`, and `exclusive`. Described in detail and used on `/source/direction/dogfooding`
- `dogfooding_issue`: should link to the specific issue tracking dogfooding for this issue, per the [Dogfooding process](/handbook/product/product-processes/#dogfooding-process)
- `dogfooding_group`: should list the right group/team/role/individual inside GitLab that should use the capability

#### Working with category maturity

There are five fields in `categories.yml` that control a category's maturity. These work together to define what the maturity currently is, how it has evolved over time, and our plans to improve in the future.

- `maturity` which represents the current maturity of the category
- `available`, `viable`, `complete`, and `lovable` which are set to ISO dates when we achieved, or plan to achieve, the given maturity.

To change or update the current maturity, set the `maturity` field to the desired value: `planned` (or empty), `minimal` (available), `viable`, `complete`, and `lovable`. Next, ensure that the historical and future maturity values are still consistent. For example, if you incremented the maturity of the category from viable to complete, you should also set the field `complete` to the date of the GitLab release when it changed.

#### Sample template

```
authentication_and_authorization:
  name: "Authentication and Authorization"
  stage: manage
  documentation: https://docs.gitlab.com/ee/administration/auth/
  vision: https://gitlab.com/groups/gitlab-org/-/epics/628
  description: "GitLab features multiple auth mechanisms including LDAP (including Active Directory), OmniAuth, CAS, SAML, Okta, and Authentiq."
  roi: true
  available: 2017-10-01
  viable: 2019-05-22
  complete: 2019-12-22
  lovable:
  maturity: minimal
```

#### Proposing a change

Due to their importance and wide usage throughout the company, changes to Stages, Groups, and Categories need to be reviewed. Open a merge request [using the `Group-Stage-Category-Change` template](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Group-Stage-Category-Change.md) to get started.

**Major changes**

Any change to a Stage or Group, or a significant change to a Category, is a major change. Examples of significant category changes include their names, their group membership, and presence on our marketing page.

Due to their impact, executive approval for major changes is required in addition to the PMs, PMMs, and EMs responsible. Follow the approval process defined on the [categories page](/handbook/product/categories/#changes).

After merging, changes to feature categories will trickle down into [error budgets](/handbook/engineering/error-budgets#how-to-change-error-budget-attribution) at the start of next month when the [Scalability group](/handbook/engineering/infrastructure/team/scalability) gets an automated issue [like this one](https://gitlab.com/gitlab-com/gl-infra/scalability/-/issues/2040). Someone from the [Projections team](/handbook/engineering/infrastructure/team/scalability/projections.html) will change the ownership in the application, and update error budgets accordingly. As a product manager, nothing more needs to be done. The Projections team might reach out on the original merge request for clarification if needed.

**Minor changes**

Minor changes to Categories are generally routine changes, like updates to maturity and content links. For example, upon shipping an MVC the maturity would change to `minimal`, and a link to the documentation would be added.

Approvals should be gathered from the responsible PMs, PMMs, and EMs. Also mention the relevant engineering and product directors, so they are aware of the changes. If changes are included in a release post, ensure the approval team and directors are mentioned on the MR.

##### Updating responsible persons for a Group

To update the responsible person for a role, follow these steps:

1. Go to the [GitLab.com / www-gitlab-com](https://gitlab.com/gitlab-com/www-gitlab-com) project
1. Change the name of the responsible person in `data/stages.yml` at the relevant position e.g. `pm: John Doe`.
1. Add the markdown reference link of the responsible person in `sites/handbook/source/includes/product/_categories-names.erb`

Here's an [example Merge Request](https://gitlab.com/gitlab-com/www-gitlab-com/merge_requests/22765).

If the person is not yet listed on the [team page](/handbook/company/team/), please follow [these instructions](/handbook/editing-handbook/#add-yourself-to-the-team-page) to add them.

### Adding features to webpages

All features and capabilities are listed in a single yaml file
([`features.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/features.yml)) under the `features` section.
It is the single source of truth for multiple pages across the website including:

- [Product pages](https://about.gitlab.com/stages-devops-lifecycle/) e.g. [code review](https://about.gitlab.com/stages-devops-lifecycle/create/)
- [Pricing](https://about.gitlab.com/pricing/)
- [Features](https://about.gitlab.com/features/)
- [Solutions](https://about.gitlab.com/solutions/)
- [Platform](/platform/)

To add a new feature, add a feature block to under the `features:` section of the page. Add the following attributes:

- **title**: the name of the feature in quotes
- **description**: a plaintext summary of the value the feature provides in quotes
- **link_description**: OPTIONAL, anchor text of a link that will appear below the descriptions e.g. `link: https://docs.gitlab.com/ee/user/project/milestones/`
- **link**: OPTIONAL, the URL of the link (no quotes)
- **category**: a list of one or more categories that this features belongs to. Adding a category to a feature causes it to show up in the features section on the product page for that category (e.g. see the [Continuous Integration page](/features/continuous-integration/))
- **solution**: REQUIRED legacy field. A [stage of the DevOps lifecycle](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/stages.yml). Will be [removed soon](https://gitlab.com/gitlab-com/www-gitlab-com/issues/2435).
- **tier**: `true` or `false` is this feature or capability available in this tier? `gitlab_core`, `gitlab_starter`, `gitlab_premium`, `gitlab_ultimate`. Note - it's assumed that any feature in a lower tier is also available in the higher tiers. For example a feature listed as in Core is also considered present in Starter, Premium and Ultimate.
- **self_managed**: `true`, `false` or `not_applicable`, defaults to `true`. Is this feature or capability available for self-managed users? Use `not_applicable` for features that do not apply to a self-managed service, for example the operational characteristics of our SaaS services.
- **dedicated**: `true`, `false` or `not_applicable`, defaults to `true`. Is this feature or capability available for GitLab Dedicated? Use `not_applicable` for features that do not apply to a SaaS service, such as the operational details of the service itself, like `Fault-tolerant PostgreSQL`.
- **gitlab_com**: `true`, `false` or `not_applicable`, defaults to `true`. Is this feature or capability available on GitLab.com? Because GitLab.com tiers map 1:1 to self-managed tiers setting this will automatically assign the GitLab.com tier. E.g. `gitlab_core: true` + `gitlab_com: true` == `GitLab.com Free`. Adding a tiers fields is what powers the tier badges on product pages and comparison pages, as well as powers the tier [feature comparison of the pricing page](https://about.gitlab.com/pricing/feature-comparison/). Use `not_applicable` for features that do not apply to GitLab.com, such as the operational details of the service itself, like `Fault-tolerant PostgreSQL`.
- **gitlab_com_parity**: For features which are currently not available on GitLab.com, but still applicable, this field should used to provide a rationale or path towards parity. Supports markdown, links to issues are encouraged. Content shows up on the [GitLab.com missing features list](https://about.gitlab.com/features/).
- **toolname**<a name="feature_status_defs"></a>: any tool from the `devops_tools:` section such as `jira:`, `circle_ci:`, `blackduck:`, etc. that does or does not have this feature. Holds a value of either `true` or `false` or `partially` or is blank (indicating subfields with details should exist).
    - `true` or `false` or `partially`: Examples of `partially` are if a DevOps tool has some but not all of the feature described, or if they have the feature, but only through a plugin. If using `partially` it is highly recommended to instead add `details` as to what partially actually means (see next)
    - <blank>:<a name="feature_status_details"></a> Means that the feature for this particular toolname have a sub-section with details:
        - `valid`: Same as `true` or `false` or `paritally` above
        - `details`: A short statement about the details that need to be shared. For example: "supports 11 languages", or "only supported through 3rd party plug-ins"
- **pricing_page**: `true` or `false`: This currently has no impact on the primary [pricing page](https://about.gitlab.com/pricing/), which is driven off themes. This does still apply to the ([self-managed comparison](https://about.gitlab.com/pricing/feature-comparison/) and [GitLab.com comparison](https://about.gitlab.com/pricing/feature-comparison/)) pages.
- **pricing_theme**: Use this option to mark this feature as part of a [pricing theme](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/pricing_themes.yml). The value is a string, which should match the desired string. Features that align to Themes are shown on our [pricing page](https://about.gitlab.com/pricing/).

For example:

```
- title: "Group Milestones"
  description: "Create and manage milestones across projects, to work towards a target date from the group level. View all the issues for the milestone you’re currently working on across multiple projects."
  link_description: "Learn more about Group Milestones"
  link: https://docs.gitlab.com/ee/user/project/milestones/
  solution: plan
  category:
      - portfolio_management
  gitlab_core: true
  gitlab_starter: true
  gitlab_premium: true
  gitlab_ultimate: true
  gitlab_com: true
  github_com: false
  github_enterprise: false
  bitbucket_org: false
  bitbucket_data_center: false
  gogs: false
  jira:
    valid: true
    details: 'only through 3rd party extension'
  ca_agile_central: false
```

Copy and paste this template:

```
- title: ""
  description: ""
  link_description: ""
  link:
  solution:
  category:
    -
  gitlab_core:
  gitlab_starter:
  gitlab_premium:
  gitlab_ultimate:
  gitlab_com:
  github_com:
```

### Updating content on GitLab Learn

The underlying data shown on the [GitLab Learn](https://about.gitlab.com/learn/) page is available in [https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/content/learn/index.yml](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/content/learn/index.yml)

To update the course content data:
1. Open an MR to the [learn.yml](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/content/learn/index.yml) file. Follow the existing syntax in the file. For ease of adding a new course, we recommend copying an existing entry and updating the values based on the new course being added, populating every field.
1. Add content to the list as soon as it is planned.
1. To indicate that a course is planned for the future, include a live_date in the future. You can see an example in [this MR #94773](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/94773).

Important guidelines to keep in mind:
1. [learn.yml](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/content/learn/index.yml) is our SSOT for GitLab-produced content, including all existing and future planned content.
1. When planning new learning content, add it to [learn.yml]https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/content/learn/index.yml) as soon as possible, at a minimum monthly, and aim to include what you plan to produce over the upcoming 6 months or more. This gives visibility to all other GitLab team members producing learning content as to what has been planned.
1. Before producing new content, check [learn.yml](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/content/learn/index.yml) for redundancy, as other teams may have developed or plan to develop similar content.
1. Communicate updates with other DRIs working on learning content by posting on the #gitlab-learn-updates Slack channel (available to team members only)


### Contentful CMS

The Digital Experience team is implementing [Contentful CMS](https://www.contentful.com/) for the marketing website. It offers a more user-friendly way of editing the marketing site.

- Team members will need to fill out an [Access Request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/) to gain access to Contentful.
- Some content will only be available to certain teams, based on roles and permissions.
- New pages and new components will need an [issue](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/issues/new#) with the Digital Experience team to work with design and engineering.

Read the [Contentful handbook page](/handbook/marketing/digital-experience/contentful-cms/) for up to date directions and status of the system.


# Merge requests

For best practices regarding testing and reviewing merge requests, please see our related handbook page for [reviewing merge requests](/handbook/marketing/digital-experience/website/merge-requests/).

# Working in Modules

##### What is a module?

1. A module is a section where the presentation, goal, and required functionality remains the same, but content can be updated (wording, imagery, links, etc).
1. A module is a block, box, or section of the page, generally kept as small as possible. It's usually a horizontal slice of layer cake across the page but can also be a chunk of a sidebar.
1. Modules often have configurable options to facilitate reuse with different configurations. It might not always be desirable to have a title block or buttons might need to expire after a date.

##### Why is it important for a module to be reusable?

1. In order to facilitate updates, the code needs to be reusable. It's not an easy update if you have to build it again.
1. Implementing the same thing over and over again is not an efficient use of resources.
1. In order to keep the codebase clean, navigable, and easy to understand it's important to maintain SSOT.
1. If the same code is implemented several times in several spots then the chance for bugs increases. One of those spots might have a bug where the others don't.
1. Much of what goes into building code is unseen on the page. This includes things like optimizing performance, setting up tracking, preparing assets such as formatting images & videos, building responsive views and layouts, human physiology (fingers on a touchscreen, eyes and perception, etc). Testing and building all of these things takes time, so it's important to reuse and reduce code as much as possible.

##### Why is it important for a module to have a single-purpose?

1. In order to facilitate updates, the code needs to be easy to operate.
1. Having a clearly defined purpose for each module enhances the goals of the page and assists with navigation and conversion goals. If a module tries to do 5 things or there are 3 different modules on the page doing the same thing it's easy to spot.
1. An end user might be confused if duplicate modules are on the page.
1. If a module gets too large then it becomes harder to understand the code. Keeping a module single-purpose keeps the module small.
1. Tracking the performance of a module becomes more difficult the more a module changes.
1. When examining from a distance, it's hard to know what module to use if the modules all have several different purposes, sometimes overlapping purposes. "Do I use this module or that one?"


# Digital FAQ

<details markdown="1">

<summary>Why can't I see something in the review apps?</summary>

### Why can't I see something in the review apps?

Because of how our infrastructure is setup, certain third party content (such as youtube embeds) or advanced javascript may not appear on review apps. If you are unsure of the cause, please contact us so we can help review what might be impacting your project.

If you need to **temporarily** preview an item in the review app before release, you can try to add the following attribute to the frontmatter of the file: `manual_cookiebot: true`. **Do not commit that change without removing it before your final merge.** Alternately, you can follow this tutorial for steps on [how to use developer tools to view a review-app video blocked by cookiebot](https://drive.google.com/file/d/17pveEE_M7TXzar7b69ZhuwFKhKLgRZ8n/view?usp=sharing).
</details>
<details markdown="1">

<summary>What logos do we have permission to use?</summary>

### What logos do we have permission to use?

On the about.gitlab.com website we have approval to use the customer logos lisited at the following link, [Approved customer logos for promotion](/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/customer-advocacy/#approved-customer-logos-for-promotion)
</details>
<details markdown="1">

<summary>Can I request a specific project release time?</summary>

### Can I request a release time?

- Due to how CI/CD deployment pipelines work, release times will NOT be exact. Please plan accordingly. We try to have releases live within 1 hour of the requested timeframe.
- When requesting a release time, please specify a timezone.
- Reasons we can't guarantee a release time include:
    - We don't have a dynamic server, all items are pre-compiled and static.
    - Pipelines might have hundreds of people already in the queue before you.
    - Pipelines might be broken.
    - It takes an unknown amount of time for pipelines to allocate resources, build, run tests, and deploy.
    - It takes time for our CDN to propagate any changes across their network.
    - We don't have dedicated QA resources to ensure that things will happen as expected.
- If planning to release AT a specific time...
    - Request a time an hour before the expected release.
    - Plan for your item to appear before the expected release time. This might mean supplying alternate visuals or copy.
- If planning to release AFTER a specific time...
    - Plan for the preexisting content to cover that time range.
- Please ensure requested times are during normal business hours for the person making the changes.
    - If any changes are requested outside of their normal business hours, please ask before hand if that is possible or if someone else who is available can work on it to ensure that it releases in a timely fashion.

</details>