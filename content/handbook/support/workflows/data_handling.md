---
title: Handling data as a Support Engineer
description: This is a guide to data handling best practices in Support
category: References
---

### Overview

Working directly with customers has the average Support Engineer working with some of the most sensitive data that our business handles. Proper data handling is crucial not only for maintaining customer trust but also for complying with various data protection regulations. This workflow outlines best practices for Support team members to ensure secure and efficient data handling.

### Frameworks

When initially approaching data classification, it can be quite confusing. GitLab has three primary ways of classifying data - and it's easy to get the different standards mixed up.

The three standards are:
 - [Data Classifcation Standard](/handbook/security/data-classification-standard/) - classifies data types according to their sensitivity.
 - [Confidentiality Levels](/handbook/communication/confidentiality-levels/) - classifies visibility of data/projects for different audiences.
 - [SAFE Framework](/handbook/legal/safe-framework/) and [Materially Non-Public Information (MNPI)](/handbook/product/product-processes/product-safe-guidance/#materially-non-public-information) - covers the specific kinds of information that cannot be shared publicly.


#### Data Classification Standard

The RED, ORANGE, YELLOW, GREEN data classification standard is the most important framework for day-to-day operations in Support. Knowing which data is allowed in which system is vital as you collaborate with colleagues.

Both Data _and_ Systems have data classification standards. When _data_ has a classification standard, it represents the impact of disclosing that data. When a system has a data classification standard associated with it, it represents what classification of data is allowed in that system.

Putting RED data into a system that's only authorized for ORANGE data represents risk to the company for two reasons:  

1. Systems with RED data have a special classification, and may have to be listed as a[Subprocessor](https://about.gitlab.com/privacy/subprocessors/) if the RED data includes Personal Data AND the data is specifically collected to provide the contractual services.  Listing a system as a Subprocessor means Customers must be notified about how the system will be used and provided a right to object to the system for a contractually stipulated period of time. (Compliance risk)
2. Systems with RED data can only be accessed by company-managed devices. (Security risk)

It's imperative that we keep RED data out of systems that aren't cleared for it.

References:

 * [Data classification examples](https://internal.gitlab.com/handbook/security/data_classification/) (GitLab Internal Handbook - employees only)
 * [Tech Stack](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml)
 * [GitLab Data Subprocesors](https://about.gitlab.com/privacy/subprocessors/)


#### Confidentiality Levels

Support team members are likely to encounter confidentiality levels in the course of working incidents or being involved in special projects.

Somewhat more frequently you'll need to think through confidentiality levels when creating Issues in [support-team-meta](https://gitlab.com/gitlab-com/support/support-team-meta/).

##### SAFE Framework and MNPI

The SAFE framework and the concept of MNPI are more relevant to Support team members as stewards of GitLab than any specific job responsibility. It's important to know that our actions in public can affect the company in a negative way, and potentially violate the law.

As part of your work, you may be exposed to SAFE information as part of your duties, or as a result of being a part of a special proejct. If you are, you may be classified as [Designated Insider](/handbook/legal/publiccompanyresources/#designated-insiders), which can affect your ability to trade stock. 


### What does it mean for a Support team member?

The standards themselves are important to be familiar with, but for Support generally:
 * Be aware of the data classification standard for any data you're working with 
 * NEVER move data to a system with a lower classification.
 * Think through confidentiality levels and the SAFE framework when working in public.  For example, GitLab.com may be cleared for RED data, but you might still expose that data by posting it in a public project, or forgetting that an Issue is public.

#### Examples

The following are examples only - the single source of truth for system classifications is the [Tech Stack](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml)

##### Slack (ORANGE)

During the course of working emergency tickets, you may be tempted to copy troubleshooting data such as relevant log snippets (RED) or screenshots (RED) from a ticket from Zendesk (RED) into a troubleshooting Slack (ORANGE) thread.
This would be inappropriate because RED data is not allowed in ORANGE systems.

Instead, consider sharing the troubleshooting data by:
 * Putting the relevant log snippets in an internal note
 * Sharing the information through a GitLab Issue

If you see RED data being shared in Slack, ask the team member who posted it to remove it.


##### GitLab.com (RED)

During the course of discussion Issues, you might have a relevant example screenshot that lists a customer name or a quote from a customer directly that identifies them. These are examples of ORANGE data, and GitLab.com is cleared for RED.

However, posting ORANGE data in a _public_ Issue would go against the confidentiality levels for that data, so would be inappropriate.

Instead, consider sharing the data by:
 * making the Issue confidential
 * creating a confidential comment

If you see internal-only data being shared publicly, you can:
 * edit the comment to remove the data
 * toggle the Issue to confidential
 * remind the team member who posted it about data classification and confidentiality levels

##### Building an integration between systems

As a productivity boost, you're considering creating a Slack workflow that will grab any negative customer comments and post them into Slack.

To do this, you're going to scrape Zendesk (RED) using GitLab CI (RED) then post the resulting data into Zapier (YELLOW) which will post in a channel in Slack (ORANGE).

Here, you're moving data between systems that aren't cleared for the data classification of data you're likely to be sending.

If you see an integration like this, declare a SIRT.

### Take-aways

* Know the classification level of data you're working with and which systems are cleared for which data.
* Avoid moving data between systems whenever possible: if you can share data within the system it's already contained in keep it there!
* Don't expose your teammates to data they aren't authorized to see: keep limited access data to those whom it should limited to.

