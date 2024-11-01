---
title: Knowledge Base
description:
---

The knowledge base (KB) is a repository of solutions to commonly-encountered problems, created and
maintained by support engineers. In the KB, we turn the knowledge created when we solve a ticket for
one customer into a public resource that helps others self-serve &ndash; leveraging one-time effort
into an article that can be used multiple times independently from the ticket assignee.

The KB complements our product docs. Where the docs provides an overview of our _current_ product
offerings and helps users learn to use and operate them, the KB provides solutions to problems users
encounter in current and _past_ versions of our product offerings. This narrow focus makes knowledge
more accessible to customers who may not always be on the latest version of our products.

## Principles

- **Turn it into a habit.** Write it down into the KB every time we solve a problem for customers,
  for a team member or for ourselves. The more we do it, the easier it becomes.
- **Accelerate knowledge capture.** Our tools and processes should enhance the speed at which we add
  knowledge to the KB, prioritizing capturing the right knowledge instead of capturing knowledge right.
- **Dogfood and update as we reuse.** The KB is as much for us as for our users. We review and
  update knowledge as we use and reuse it. If it isn't used, don't worry about it.

## Implementation

We use [Zendesk Guide](https://www.zendesk.com/sg/service/help-center/) to publish knowledge base
articles and suggest them to users who are seeking help.

A list of knowledge base articles can be found at:

- [Global support knowledge base](https://support.gitlab.com/hc/en-us/sections/15215649512604-Knowledge-Base)
- [US Government support knowledge base](https://federal-support.gitlab.com/hc/en-us/sections/29015014994068-Knowledge-Base)

Knowledge base articles are suggested when a user is submitting a ticket:

![Knowledge base suggestions in Zendesk](/images/support/kb-suggestions.gif)

We use the [Support Pages project](https://gitlab.com/gitlab-com/support/support-pages) to manage
knowledge base content. This has the following benefits:

- The project is open to public, allowing everyone to contribute.
- Avoid vendor lock-in of our knowledge base content.

## How to contribute

### Submitting a KB article

1. Pick the appropriate template in the [`/kb-documentation/templates`](https://gitlab.com/gitlab-com/support/support-pages/-/tree/master/kb-documentation/templates)
   directory:
   - [`break-fix.md`](https://gitlab.com/gitlab-com/support/support-pages/-/blob/master/kb-documentation/templates/break-fix.md): Specific issues encountered by users with one or more specific resolution steps.
   - Other types of content TBD.
1. Duplicate the template, placing the new file in the appropriate directory:
   - [`/knowledge-base/all_instances`](https://gitlab.com/gitlab-com/support/support-pages/-/tree/master/knowledge-base/all_instances):
     This is where the majority of knowledge base articles will live.
   - [`/knowledge-base/global_only`](https://gitlab.com/gitlab-com/support/support-pages/-/tree/master/knowledge-base/global_only):
     Typically for content specific to GitLab.com.
   - [`/knowledge-base/us_government_only`](https://gitlab.com/gitlab-com/support/support-pages/-/tree/master/knowledge-base/us_government_only):
     For content specific to our US Government product offerings.
1. Fill out the template with the content you'd like to contribute. Focus more on the technical
   content, while following the style and content guide in the template as closely as you can.
1. Create the merge request using the `Knowledge Base Article` template.
1. Assign reviewers:
   - If timeliness is important, assign a Staff Support Engineer or Support Manager for review.
   - Otherwise, assign a KB editor: currently @irisb or @weimeng-gtlb.
1. Create an entry in the [CODEOWNERS](https://gitlab.com/gitlab-com/support/support-pages/-/blob/master/.gitlab/CODEOWNERS) file that includes you as a maintainer.

### Reviewing a KB article

- Always. Be. Merging. Make suggestions and apply them yourself.
- It's more important to capture the knowledge than to capture it with the right style and formatting.

### Publishing a KB article

After the KB article is merged, send a request using the
[Support Super Form](https://support-super-form-gitlab-com-support-support-op-651f22e90ce6d7.gitlab.io/):

- What is this request concerning?: `Create a Zendesk article`
- Which Zendesk instance?: Select according to the directory the article is located in.

## Roles

### Contributors

Everyone can contribute. The most important thing is to capture the knowledge you've created while
solving a problem. You don't need any special training to begin.

### Rapid reviewers

Staff Support Engineers and Support Managers are KB rapid reviewers who can be called on to approve
and merge content without needing to wait for an editor to become available.

Rapid reviewers should:

- Be called upon when there is advantage to publishing changes quickly, i.e. when new product issues
  are encountered by users or as part of incident response.
- Collaborate with KB contributors on the technical accuracy of the content, prioritizing having
  updates published as soon as possible.
- Tag a KB editor after approving and merging a KB article merge request to ask for a style and
  format review and edit.

### Editors

KB editors help ensure KB articles are accessible to readers and have consistent style and
formatting.

To become a KB editor:

- Contribute KB articles.
- Talk to {{< member-by-name "Wei-Meng Lee" >}}.

The current KB editors are:

- {{< member-by-name "Iris Blackburn" >}}
- {{< member-by-name "Wei-Meng Lee" >}}
