---
# This is the title of your design document. Keep it short, simple, and descriptive. A
# good title can help communicate what the design document is and should be considered
# as part of any review.
title: Rate Limiting Story
status: proposed
creation-date: "2024-09-24"
authors: [ "@sarahwalker" ]
coaches: [ "@andrewn" ]
dris: [ "@donnaalexandra", "@sabrams", "@swiskow" ]
owning-stage: "~devops::<stage>"
participating-stages: []
# Hides this page in the left sidebar. Recommended so we don't pollute it.
toc_hide: true
---

<!-- Design Doucments often contain forward-looking statements -->
<!-- vale gitlab.FutureTense = NO -->

<!-- This renders the design document header on the detail page, so don't remove it-->
{{< design-document-header >}}

## Summary

As GitLab.com has evolved, we've introduced many application limits to help with keeping our availability and user satisfaction at a desired level. This has often been reactionary, and we have not defined a consistent strategy for defining and enforcing application limits.

This lack of consistency can lead to confusion for our users and loss of productivity for our engineers, as well as difficulty when we wish to define and implement new limits. This Design Document aims to introduce a transparent strategy for application limits; firstly in order to enable our engineers to introduce sensible policies to enforce our availability goals, and secondly allow us transparency to expose these to our users.

This document is intended as the next iteration of [Next Rate Limiting Architecture](../rate_limiting/), which will be deprecated. This new proposal is written to more accurately reflect rate limiting in our 2024 architecture.

<!-- TODO: Deprecate old doc/point to commit -->

## Motivation

Presently the [Rate Limiting for GitLab.com](../../../infrastructure/rate-limiting/) is defined in several different places and in several different ways. This creates a number of challenges for our customers and team members alike.

Firstly, the spread of places rate limits exist can make it difficult to understand which limits have been applied to a request. This leads to confusion for our users and productivity loss for our support engineers and production engineering teams. Finding which limits have been applied can require investigation into several tools and codebase audits, since it is not always clear where a limit has been reached (for example in Cloudflare or RackAttack)

Secondly, it can be difficult to change or introduce new limits, and as such define policies for protecting our availability. As different limits are enforced in different places, there is no single way to change them for a namespace / project / user / customer.  This has led to inconsistencies when new services are deployed, further adding to the confusion of which limits are applied to a request, or can mean services are deployed without any rate limiting. Introducing throttling after a service is deployed can come with risks, as a change can impact users.

Finally, we have allowed rate limit bypasses for some marquee SaaS customers, which increases risk for our service and those customers. We would like to be able to set higher limits to allow us to protect our availability while also providing user satisfaction to those customers.

As GitLab.com transitions to a Cells architecture, we have a unique opportunity to create a single source of truth for our rate limits. In the longer term we will work towards a centralised location for rate limits to be configured with sensible defaults, that also allows for customisation for a namespace / project / user / customer / cell as needed. This will also provide a benefit of easily documentable and discoverable rate limits that we can publish to our users.

### Goals

Define a packaged story for team members to know when to change a rate limit, how to do this, and how to communicate to our customers when and why they are being rate limited.

- Consolidate rate limit configuration in one centralised place.
- Introduce a process for defining new rate limits.
- Introduce a set of "default" rate limits for new cells / services, and enforce limits on deployment of new services in an automated way.
- Simplify tweaking of limits for production engineers (for instance during an incident).
- Create transparency for our customers to understand where their requests are being limited and why.
- Enable support engineering to determine where customers are being rate limited.

### Non-Goals

- NOT to reimplement Cloudflare or Rack Attack or a throttling service - this is meant as a service for consolidating and defining limits, as an abstraction not a throttler.

## Proposal

Create a new Rate Limiting interface for configuration of rate limits across all parts of GitLab.com and Cells. While this interface will not be responsible for enforcing limits (throttling will still take place in Cloudflare, or the application itself, for example), it will provide a consolidated catalogue of limits, as well as providing a mechanism to override any limits per Cells/Namespace.

Pros:

- Consolidation of the definitions of our limits into one place. This will streamline creating or changing any rate limits.
- The catalog can be pumped into documentation and published. Changes here will be reflected in docs and streamline the documentation process, creating more transparency for users and keeping documentation up to date.
- We are not rewriting throttling functionality, and will keep our swiss cheese model of rate limiting at different layers of the product.
- We can build this to customise rate limits on a per cell basis, allowing more configuration per namespace / project / user / customer.

Cons:

- This does not solve the problem of easier triaging for support when a customer is throttled.
- Not all application rate limiting configuration is currently exposed via an API. We will need a product team to build this functionality for RackAttack limits or the ApplicationRateLimiter.
- No obvious way to enforce use of this Rate Limiting Service as new services are created for GitLab.com.

## Design and implementation details

Create a service for defining and configuring rate limits, this will largely consist of two pieces:

1. A catalogue of rate limits, defined in YAML. This will contain many different types of limits which can be set using a type/location flag (for example: `type: firewall` for Cloudflare WAF rules).
1. A service to implement these limits in the correct part of the app. This will call the appropriate APIs when changes are made to the limits catalogue to update limits for the appropriate cells.

Since we want this service to be able to set limits for all cells, we will want it to live in the Routing Layer, probably alongside [Tissue](https://gitlab.com/gitlab-com/gl-infra/cells/tissue), and would be built in Go or Ruby. From here, the service would be able to configure rate limits in Cloudflare for a cell, as well as application or RackAttack limits.

### Setting Cloudflare Rate Limits

Since Cells is implemented in a similar way to Dedicated, it will use the [Cloudflare WAF Rules Terraform module](https://gitlab.com/gitlab-com/gl-infra/terraform-modules/cloudflare/cloudflare-waf-rules). Since we built this to be extensible, we will be able to leverage this module and Tissue to be able to configure rate limits in Cloudflare. As such, we propose WAF rules to be the first "integration" built into our service.

#### Setting Application Rate Limits

Rate Limit configuration within the application will be slightly more difficult. At present these limits are configured within the Rails app, and do not have an API for changes. We would need buy in from a product or backend engineer to expose limits configured in our application via an API in order for this service to change or create them.

#### New Services

When new services are added to GitLab.com, sometimes they are added without rate limits, and it can be hard to add limits in after the fact without impact to users. Any new services created should also be added to our Rate Limit Service. We would add this as a step to the Production Readiness check, and set suggested defaults for rate limits for new services.

#### Publishing Rate Limits

One advantage of having all rate limits declared in YAML is a centralised source of truth for limits that are imposed on requests to GitLab.com. This YAML will be directly published to our documentation or handbook, allowing for greater transparency for our users. An added bonus is that any changes to the service would automatically update our documentation, and save manual updates needed to be published.

### Proposed Implementation Plan

1. Create service - this would be done by Production Engineering::Foundations, to create the service running and define a structure for the limit catalogue.
1. Enable service to configure limits in Cloudflare - we propose Cloudflare as the initial 'integration' as Foundations is familiar with it, and our module is extensible.
1. Expose application rate limits - this will require assistance from a Product or backend engineer
1. Build pipeline to automatically publish limits to documentation.
1. Enable satellite services to use the Rate Limiting Service - eg Cloud Connector, Registry.

## Alternative Solutions

<!--
It might be a good idea to include a list of alternative solutions or paths considered, although it is not required. Include pros and cons for
each alternative solution/path.

"Do nothing" and its pros and cons could be included in the list too.
-->

- Building the service using Cloudflare workers

The [HTTP Routing Service](../cells/http_routing_service.md) was considered as a place to house this rate limiting service, as it would be application-aware. However the HTTP Router (Cloudflare worker) doesn't provide any additional intelligence over what we already have with our existing Cloudflare setup, as it will be reading the headers and path to make a routing decision, so this will not gain us any benefit over the existing rate limit architecture.
