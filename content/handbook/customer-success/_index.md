---

title: Customer Success
description: >-
  The Customer Success department is part of the GitLab Sales function who
  partners with our customers to deliver value and positive business outcomes throughout
  their journey with GitLab
---
The Customer Success department is part of the [GitLab Sales](/handbook/sales/) function who partners with our customers to deliver value and positive business outcomes throughout their journey with GitLab.

The team can be reached in [Slack channel](https://gitlab.slack.com/archives/customer-success) (internal only).







## Mission Statement

To deliver value to all customers by engaging in a consistent, repeatable, scalable way across defined segments so that customers see the value in their investment with GitLab, and we retain and drive growth within our enterprise customers.

- The mission of the Customer Success Department is to provide these customers with experience in order to:
    - Accelerate initial customer value
    - Maximize long-term, sustainable customer value
    - Improve overall customer satisfaction & referenceability
    - Maximize the total value of the customer to GitLab

## Vision Page

The ["Customer Success Vision Page"](/handbook/customer-success/vision/) provides the long-term view of company wide success to which the customer success will be building in partnership with the value centers of the GitLab organization (i.e., Marketing, Sales, Product/Engineering, Support, Finance and IT).

## Department Initiatives

Our large and strategic customers are in need of an ongoing partnership that combines expert guidance with flexibility and adaptability to support their adoption and continuous improvement initiatives.

These customers expect that partner to provide a streamlined, consistent and fully coordinated experience that encompasses the full span of their needs as well as the fully lifecycle of the relationship.
Need to focus on 4 main areas in order to grow in our existing accounts as well as land large and strategic:

1. Awareness
1. Adoption
1. Usage
1. Performance

### Initiative: Awareness

Opportunity to improve the overall awareness of GitLab in order to promote and evangelize our brand and solution in a meaningful way to provide big business impact to our customers so that they believe in our vision and strategy.

### Initiative: Adoption

Ensuring paying customers are successful in their onboarding in order to gain adoption and get the most out of our platform and remain happy, paying GitLab team-members and brand advocates.

### Initiative: Usage

Collecting and making use of customer data and insights is key to customer success. It’s important to do more with data and when necessary share back with customers, which in turn helps and encourages our customers to improve and drive adoption.

### Initiative: Performance

Utilizing built-in monitoring instrumentation and [a scalable HA architecture](https://docs.gitlab.com/ee/administration/reference_architectures/index.html), the Customer Success team helps ensure implementations of GitLab are operating at peak performance as organization scale and adopt more features.

## Customer Success Playbooks

See the [Playbooks Page](/handbook/customer-success/playbooks/)

## Customer Terrain Mapping Engagements

Terrain Mapping discovery engagements provide customers with the benefit of GitLab's experience with DevOps methodologies, Git, GitLab, CI, CD and monitoring by brainstorming a high level, first draft discovery of the elements of a success plan to address various challenges. They are also mapped to professional services that can help with some of the elements identified in the engagement.

See the [Terrain Mapping Engagements Page](/handbook/customer-success/customer-terrain-mapping/)

## Customer Success Groups

### Solutions Architects

- [Solutions Architects handbook](/handbook/solutions-architects/)
- [Public Sector Solutions Architects handbook](/handbook/customer-success/public-sector/solutions-architects/)

### Professional Services

- [Professional Services handbook](/handbook/customer-success/professional-services-engineering/)

### Customer Success Managers

- [Customer Success Manager handbook](/handbook/customer-success/csm/)
- [Commercial CSM handbook](/handbook/customer-success/comm-sales/#customer-success-managers)

### Renewals Managers

- [Renewals Managers handbook](/handbook/customer-success/renewals-managers/home)


### Demo Systems

- [Demo Systems documentation](/handbook/customer-success/demo-systems/)

## Account Team

The account team is comprised of the Strategic Account Executive/Account Executive, Solutions Architect (Enterprise), and Customer Success Manager.

[More information about the account team](/handbook/customer-success/account-team/)

## Overlap Between Solution Architects and Customer Success Managers

SA owns 1) pre-sales technical evaluation and relationships prior to the initial sale and 2) tier upgrades and new business units (i.e., connected new) within an existing customer. CSM owns 1) post-sales customer relationship and 2) license upgrades within an existing customer.

[More information on the transition and ownership between Pre-Sales and Post-Sales](/handbook/customer-success/pre-sales-post-sales-transition/)

## Other Resources

### Education and Enablement

As a Solutions Architect, Customer Success Manager, or Professional Services Engineer, it is important to be continuously learning more about our product and related industry topics. The [education and enablement handbook page](/handbook/customer-success/education-enablement/) provides a dashboard of aggregated resources that we encourage you to use to get up to speed.

### Customer Workshops

2021-01 [Skills Exchange Enablement on Customer Workshops](https://www.youtube.com/watch?v=kSbTZgPLKUE&feature=youtu.be)

CSM-Created, Enablement Focus:

- [All CSM-created workshops](/handbook/customer-success/csm/workshops/)

SA-Created, Hands-On Focus:

- [Hands-On Workshops](/handbook/solutions-architects/tools-and-resources/#hands-on-workshops)

### Using Salesforce within Customer Success

Visit [this page](/handbook/customer-success/using-salesforce-within-customer-success/) for more info on using Salesforce within Customer Success.

### Using Gainsight with Customer Success

Visit [this page](/handbook/customer-success/csm/gainsight/) for more information on using Gainsight within Customer Success.

### Dogfooding

Outside of Engineering the Customer Success team has the largest concentration of tooling development capability. The team has unique needs that can't always be solved by GitLab's single [DevOps platform](https://about.gitlab.com/solutions/devops-platform/). However, it is important to [dogfood](/handbook/values/#dogfooding) and avoid [dogfooding anti-patterns](/handbook/engineering/development/principles/#dogfooding-antipatterns). As a result the [Product organization heavily weights internal customers](/handbook/values/#dogfooding) when considering prioritization. If you are considering building tooling in support of Customer Success priorities outside of GitLab, please follow the [dogfooding process](/handbook/values/#dogfooding).

### Customer Success AWS Test Account

In an effort to keep AWS spend down, initiatives are being taken to automatically clean up our AWS account. This account is primarily used as a proof of concept for IaC and creating demos for GitLab customers. An automated cleanup script is currently being tested that will tag, shutdown and delete old resources as they are no longer needed. The automation will:

- Turn off and Tag Un-named resources. When resources are created a "Name" tag should be created with a value that's meaningful and indicates who deployed the resource. Example: {initials}-GitLabRunner
- New Resources will be automatically tagged with a Discovered and Expiration tag.
- The Expiration tag is 14 days after the discovery. The script will only a tag an instance once. If you need additional time, please change the date to a reasonable date for cleanup (Add a month or two for prospective customers).
- If a resource needs to be permanent please set termination protection on the instance. This should also include tagging the instance with an explanation on why it's permanent and what its for.
- On expiration the resource will be shut off and left for 7 days.
- In 7 days if the instance is still off a snapshot will be taken and it will be terminated.
- If the instance is still on but the expiration has not been changed it will be terminated.

### Customer Success Tools and Scripts

By customer or internal request, we sometimes develop tools to automate certain GitLab tasks using the API. The resulting tools and scripts are publicly available for everyone to use and contribute to in the [GitLab CS Tools group](https://gitlab.com/gitlab-cs-tools).
**Note : Those tools are not supported by GitLab Support.**

### Communities of Practice

[Community of Practice](initiatives/communities-of-practice.html) are cross-functional groups of SME's (or aspiring to be!) within the CS organization dedicated to a topic within GitLab or the broader DevOps space. The goal is to build assets, best practices, demonstrations, and share experiences we learn from prospects and customers. In turn, CoP will build broader technical depth within our CS organization to better advise our customers and influence our product roadmap.

Anyone can establish a [Community of Practice](initiatives/communities-of-practice.html), and anyone can be a part of one. To be [efficient](/handbook/values/?source=post_page---------------------------#efficiency) and [transparent](/handbook/values/?source=post_page---------------------------#transparency), we have set guidelines on how Communities of Practice should operate.

### Frequently Asked Questions

Customer Success team members maintain a [FAQ](/handbook/customer-success/faq/) to keep questions customers ask documented in a place where everyone can view and contribute to.

### Customer Success resource links outside handbook

- [Solutions Architects Onboarding Bootcamp](https://gitlab.com/gitlab-com/people-group/employment-templates/-/blob/main/.gitlab/issue_templates/onboarding.md)
- [Customer Reference Sheet](https://docs.google.com/a/gitlab.com/spreadsheets/d/1Off9pVkc2krT90TyOEevmr4ZtTEmutMj8dLgCnIbhRs/edit?usp=sharing)
- [Sales Collateral](https://drive.google.com/open?id=0B-ytP5bMib9TaUZQeDRzcE9idVk)
- [GitLab University](https://docs.gitlab.com/ee/university/)
- [Our Support Handbook](/handbook/support/)
- [Customer Collaboration Project template](https://gitlab.com/gitlab-com/account-management/customer-collaboration-project-template)
- [Workflow SA Demo Scenarios](https://docs.google.com/document/d/1kSVUNM4u6KI8M9FxoyiUbHEHAHIi34iiY25NhMxLucc/edit) (Internal Only)
- [GitLab Demo Portal](https://gitlabdemo.com)

### Other Sales Topics

- [Sales Handbook](/handbook/sales/)
- [Sales Operations](/handbook/business-technology/)
- [Sales Skills Best Practices](/handbook/sales/training/)
- [Sales Discovery Questions](/handbook/sales/qualification-questions/)
- [EE Product Qualification Questions](/handbook/sales/qualification-questions/)
- [GitLab Positioning](/handbook/positioning-faq/)
- [FAQ from prospects](/handbook/sales/faq-from-prospects/)
- [Client Use Cases](/handbook/use-cases/)
- [Proof of Value Guidelines](/handbook/solutions-architects/tools-and-resources/pov)
- [Account Planning Template for Large/Strategic Accounts](https://docs.google.com/presentation/d/1yQ6W7I30I4gW5Vi-TURIz8ZxnmL88uksCl0u9oyRrew/edit?ts=58b89146#slide=id.g1c9fcf1d5b_0_24))
- [Sales Demo](/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/demo/)
- [Sales Development Group Handbook](/handbook/marketing/sales-development/)
- [With Whom to Talk to Ask Questions or Give Feedback on a GitLab feature](/handbook/product/categories/#devops-stages)
- [CEO Preferences when speaking with prospects and customers](/handbook/ceo/#sales-meetings)

### Customer Success Meetings

Customer Success has a few standing meetings:

- All CS Team Call - Monthly on the first Thursday
- CS Skills Exchange - every other Wednesday, alternating between 7:30am PST and 11am PST
- Quarterly Reverse AMA with Sakamoto and Female+ Team Members

The different groups within CS also have standing meetings, including meetings for the SAs, PS, and CSMs groups, regional groups, and social calls.

