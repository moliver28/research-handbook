---
title: Pajamas Design System
description: "The goal of Pajamas is to be the single source of truth for the robust library of UI components that
we use to build the GitLab product"
---

## What is the Pajamas Design System?

Located at [design.gitlab.com](https://design.gitlab.com/), the goal of Pajamas
is to be the single source of truth for the robust library of UI components that
we use to build the GitLab product, including usage and implementation guidelines.

As a fully implemented design system, Pajamas includes:

- **UX/Design Philosophy:** GitLab has strong foundational principles by which
we work, and Pajamas reflects those values&mdash;helping to tell the story of
how we build products and translating “our way of working” to the outside world.
- **Contribution Guidelines:** We clearly outline how anyone can contribute to
GitLab through issue creation/discussions, component documentation, designs,
and/or code.
- **Component Documentation:** Every component includes guidelines for Interaction
(how it works), Visual (how it looks), and Usage (how you should use it).
- **Page Layouts:** We clearly document page layout options and our grid implementation.
- **Content Guidelines:** We provide voice and tone guidance for our UI that
aligns with GitLab’s brand standards.
- **Accessibility Guidelines:** As a company, GitLab strongly believes that
everyone should be able to contribute. That means we must always consider how to
design and code in an adaptive way to support our users, regardless of their abilities.
- **Developer Resources:** Our components include live code snippets and developer
documentation for our Vue.js based front end.
- **Designer Resources:** We provide tools to make designing for GitLab easier&mdash;for
example, our Sketch pattern library.

## Why is Pajamas important?

Pajamas enables anyone to contribute towards GitLab. It allows Product, Engineering,
UX Design, and Contributors to work together more seamlessly and improve our product faster.

**It’s efficient.**

- Product Designers can spend more time solving problems and less time designing
(and redesigning) UI components. Components can be reused, making design efforts
scalable and ensuring our UI stays [DRY](https://deviq.com/don-t-repeat-yourself/).
- Engineers can reference design documentation that enables them to easily eliminate
inconsistencies between design and code without assistance from a Product Designer.
- Engineers can find coding and development guidelines which will enable them to
write better code and conform to set practices more efficiently.
- Product Managers can quickly propose solutions that follow documented usability
guidelines.

**It creates a cohesive product.**

- GitLab Teams can make fast, continuous feature additions within their iterative
groups, while still maintaining consistency with other product areas.
- GitLab Users can get up to speed more quickly on new features, because they
don’t need to spend time learning how to interact with inconsistent UI patterns.
- Product Designers can feel more confident that their designs are visually
appealing, consistent, and on brand.
- It enables Marketing and UX to create consistent experiences across GitLab
through a shared visual language.

**It helps GitLab communicate.**

- We can more quickly envision and align on the details of how a proposed solution
might be implemented.
- It proves to our customers and Contributors that we have a deep commitment to
improving the experience of our UI.
- It improves alignment between departments through shared principles and personas.

## Who can contribute?

Everyone can contribute! Pajamas is a living system, meaning it continually evolves
to support new UI components and also deprecate outdated components. For this
evolution to be scalable, we encourage everyone to [contribute](https://design.gitlab.com/contribute/get-started)
ideas, designs, code, and bug reports.

External contributions can be particularly valuable, because GitLab Contributors
have experiences and insights we may not have considered.

We have specific rules around [design review](/handbook/product/ux/pajamas-design-system/design-review/).

## When do we add a new component to Pajamas?

Not every component used in the GitLab product must be codified as part of the
design system, because sometimes we create components that are relevant for only
a specific use case in a distinct product area.

To learn more about when to add a new component to Pajamas, read our [component
lifecycle documentation](https://design.gitlab.com/get-started/lifecycle#determining-whether-a-component-should-be-included-in-pajamas).

## What is the component development lifecycle?

The goal of this process is to make it easy to: submit new designs (including
documentation), propose changes to existing designs, and translate component
designs into built components.

To learn more about the stages of the component lifecycle, read our [component
lifecycle documentation](https://design.gitlab.com/get-started/lifecycle).

## Beautifying the GitLab UI

A design system is only valuable if it’s used consistently throughout the product
it supports. Because Pajamas is a new design system, we have to catch up the
existing product to using “single source of truth” Pajamas components.

To ramp up implementation, we commit to ensuring that:

- Building New Components: Starting in the 11.11 milestone, each stage group
commits to completing one Vue.js component per release within gitlab-ui, including
correct functionality and styling. The Product Designers in each stage group
will collaborate with the PM and Frontend Engineering Manager to determine
which component and how to prioritize.

## How do we measure success?

There are two avenues of success in relation to a design system: adoption and
goal achievement. Providing metrics for both adoption and goal achievement provides
the organization with a tangible way to measure the overall success of a design
system over time.

### Adoption

The value of a design system is only fully realized when the organization ships
product that uses its parts. A commitment to adopt is essential to ensuring that
the design system achieves the goals highlighted in this document.

To measure adoption, we:

- Track the status of individual components.
- TBD

### Goal Achievement

As design system adoption increases, we are able to measure the success of our
goals, which can be evaluated regularly at major adoption milestones (0%, 25%,
50%, 75%, 100%).

- The UX team sends surveys to Product Designers and Front-End Engineers to gather
data related to the time they spend building unique components.
- We pull reports to determine the number of `UI polish` and
[`Deferred UX`](https://docs.gitlab.com/ee/development/labels/index.html#technical-debt-and-deferred-ux)
issues to track trends over time. A reduction in overall issues affirms consistency
throughout the product.
