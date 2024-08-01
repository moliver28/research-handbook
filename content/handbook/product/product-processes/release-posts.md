---
title: Release posts
---

As a PM, you are [accountable](/handbook/marketing/blog/release-posts/#general-contributions)
for adding new features (under your umbrella) to the monthly release post, respecting the
guidelines defined in the
[release posts handbook](/handbook/marketing/blog/release-posts/) and its **due dates**.
Be sure to go over all the details.

Every month, a PM will take the
[leadership](/handbook/marketing/blog/release-posts/#authorship)
of the release post, and will be responsible for delivering it in time.

### Writing release blog posts

For every monthly release, there is a blog post announcing features.
The blog post should contain everything _exciting_ or _disruptive_.
We want to help people understand exciting features (which are often new), and increase adoption. In general, release posts should succinctly state the problem to solve, the solution, and how customers benefit from the solution.

Some guidelines to help promote consistency of what is included in the blog post between different Product Managers are below.

Depending on the [maturity level](https://about.gitlab.com/direction/#maturity) of your category should influence what you select for as a release post item.

**Minimal**

- Any new features.
- Any significant UI additions.
- Disruptive features that may significantly improve workflows or occasionally introduce unavoidable inconveniences.
  - We want to anticipate questions and avoid confusion by communicating these changes through the blog post.
- UX improvements that significantly adjust current workflow should be included.
- New API only functionality, if many users leverage the API instead or UI.
- Significant bug fixes.
- Any deprecations and breaking changes.
- Smaller tweaks, if interesting, can be included at the bottom of the post.

**Viable**

- Any user facing [direction](/handbook/product/product-processes/#managing-your-product-direction) delivery that is complete.
- Disruptive features that may significantly improve workflows or occasionally introduce unavoidable inconveniences.
- We want to anticipate questions and avoid confusion by communicating these changes through the blog post.
- UX improvements that significantly adjust current workflow should be included.
- New API only functionality, if many users leverage the API instead or UI.
- Significant bug fixes.
- Significant architecture changes that support future direction/maturity.
- Any deprecations and breaking changes.

**Complete**

- Any user facing [direction](/handbook/product/product-processes/#managing-your-product-direction) related delivery that is complete.
- UX improvements that significantly adjust current workflow should be included.
- Significant bug fixes.
- Any deprecations and breaking changes.

**Loveable**

- Any user facing [direction](/handbook/product/product-processes/#managing-your-product-direction) related delivery that is complete.
- Significant bug fixes.
- Any deprecations and breaking changes.

It is recommended to start writing your release post items as a part of your [Kickoff preparation](/handbook/product/product-processes/#prioritization-ahead-of-kickoff).
To reduce rework, use the headline of the release post as the issue or epic title. The description of the release post can simply be part of the description of the implementing issue.
Writing the release post early and consistently enables you and your team to [work backwards](https://www.product-frameworks.com/Amazon-Product-Management.html) and have the following benefits:

- Help improve kickoff videos by having customer-centric and result-oriented language in issues.
- Facilitates crisply communicating goals to all team members, including those not directly involved in development.
- Help to prevent the stressful mad-dash at the end to complete release posts.

### Writing to inspire action

As a PM, it is important to remember a [bias towards action](/handbook/values/#bias-for-action) (and other value actions like [sense of urgency](/handbook/values/#sense-of-urgency), [make a proposal](/handbook/values/#make-a-proposal), [boring solutions](/handbook/values/#boring-solutions), [write things down](/handbook/values/#write-things-down), [don't wait](/handbook/values/#dont-wait), [make two way doors decisions](/handbook/values/#make-two-way-door-decisions) and [accepting uncertainty](/handbook/values/#accepting-uncertainty)
which enables PMs to drive an async discussion to being action oriented. Every time you write a comment or create an issue ask yourself: Will this allow us to take an action and move us forward?

### Writing about features

As PMs we need to constantly write about the features and upgrades we ship: in a blog post,
internally to promote something, and in emails sent to customers. There are some
guidelines that one should take into account when writing about features,
the most important being a clear communication of the problem we're solving for users.

When writing about a feature, make sure to cover [these messaging guidelines](/handbook/marketing/blog/release-posts/#messaging-review)
which help produce clear internal and external
messaging. Please also keep in mind that we should avoid using acronyms that others my not recognize, such as "MVC" for Minimal Viable Change. For more guidance you can visit our [writing style guidelines](/handbook/communication/#writing-style-guidelines).

Let's highlight the messaging guidelines mentioned above with a concrete example, Preventing Secrets in your repositories,
that [we shipped in 8.12](https://about.gitlab.com/releases/2016/09/22/gitlab-8-12-released/#preventing-secrets-in-your-repositories-ee).

- Start with the context. Explain what the current situation is without the
feature. Describe the pain points and connect back to our [Value Drivers](/handbook/marketing/#go-to-market-value-drivers-and-customer-use-cases) (in this case `Reduce Security and Compliance Risk`).

> It's a bad idea to commit secrets (such as keys and certificates) to your
> repositories: they'll be cloned to the machines of anyone that has access to the
> repository. If just a single one is insecure, the information will be
> compromised. Unfortunately, it can happen quite easily. You write
> `git commit -am 'quickfix' && git push` and suddenly you've committed files that
> were meant to stay local!

- Explain what we've shipped to fix this problem.

> GitLab now has a new push rule that will prevent commits with secrets from entering the repository.

- Describe how to use the feature in simple terms.

> Just check the checkbox in the repository settings, under push rules and
> GitLab will prevent common unsafe files such as .pem and .key from being committed.

- Point to the documentation and any other relevant links (previous posts, etc).

Here are some additional examples of well written release blog posts for inspiration:

- [Issue Board Work In Progress Limits](https://about.gitlab.com/releases/2020/02/22/gitlab-12-8-released/#issue-board-work-in-progress-limits)
- [Parent-Child Pipelines](https://about.gitlab.com/releases/2020/01/22/gitlab-12-7-released/#parent-child-pipelines)
- [Drag-and-drop Design badges](https://about.gitlab.com/releases/2020/02/22/gitlab-12-8-released/#drag-and-drop-design-badges)
- [Render charts in GitLab issues using a Grafana URL](https://about.gitlab.com/releases/2019/11/22/gitlab-12-5-released/)

### Recording videos to showcase features

In addition to the written medium, video is an important medium that caters to the different goals you are trying to accomplish and learning styles of your audience.
Depending on the type of video you are recording, there are some guidelines to keep in mind.

As our documentation guidelines [actively encourage](https://docs.gitlab.com/ee/development/documentation/styleguide/#videos) linking video content,
please consider following the [Documentation Style Guide section on language](https://docs.gitlab.com/ee/development/documentation/styleguide/#language),
and working with your technical writing team to include links to your speed runs, walk-throughs and demos at relevant locations in the product documentation.

#### Using GIFs

Animated gifs are an awesome way of showing of features that need a little more than just an image, either for marketing purposes or explaining a feature in more detail. Checkout our guide to [Making Gifs](/handbook/product/making-gifs/)!

#### Speed Run

Speed runs are informal videos meant to focus on a single workflow and the experience for performing that workflow. It should not require much planning and is typically short in duration (less than 5 min.). This video type is meant to inform and not necessarily to influence buyers.

Examples:

- [GitLab Unfiltered Speed Runs Playlist](https://www.youtube.com/playlist?list=PL05JrBw4t0KqSF4RAEzwC0qCBrM85OP7r)
- [Remove docker images via CI/CD speed run](https://youtu.be/jDlFCrH9H7g)

#### Demo

Demos are scripted recordings meant to influence buyers. Generally has higher production value and typically involves both a slide-style presentation and/or live screen-sharing. Duration varies depending on the topics being covered.

Examples:

- [GitLab for the Enterprise Demo](https://youtu.be/aIYLxMXQiLI)

#### Walk-through

Product walk-throughs are informal videos meant primarily for an internal audience as a recorded, visual form of product critique. Walk-throughs typically focus on the user experience across categories and workflows within a Product Manager's [product scope](/handbook/product/categories/). There are particular benefits to walk-throughs which span [product hierarchy](/handbook/product/categories/#hierarchy) boundaries (multi-category, multi-stage, multi-section) as they help highlight disjointed experiences across our single-application.

Walk-throughs are typically longer in length as they cover more ground and often involve some "live" troubleshooting and are best performed with no planning. Use the [Product walk-through issue template](https://gitlab.com/gitlab-com/Product/issues/new?issuable_template=Product-Walk-Through) when creating a walk-through.

Examples:

- [Auto DevOps setup and usage walk-through](https://youtu.be/V4NX2j2HQAs)

### Including epics

One situation that can happen is that an epic contains many small issues that don't individually
meet the bar for the `direction` label, and therefore inclusion in the release post. More rarely, the last
issue of an MVC that took several releases isn't necessarily a capstone issue on its own. If you find yourself
in a situation where you have closed an epic during a release, you should also ensure that we communicate that
as a combined entity in a feature block, even if there is otherwise no single issue to mention.