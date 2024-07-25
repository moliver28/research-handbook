
---
title: "CSM/A: Managing Dedicated Customers"
---

View the [CSM Handbook homepage](/handbook/customer-success/csm/) for additional CSM-related handbook pages.

---

Managing GitLab Dedicated customers requires a few addtional guidelines. This page discusses the nuiances and additional steps a CSM/A would need to take to successfully manage their GitLab Dedicated customers. 

## Useful Dedicated Links

- [GitLab Dedicated Offering](https://about.gitlab.com/dedicated/)
- [GitLab Deidcated Documentation](https://docs.gitlab.com/ee/subscriptions/gitlab_dedicated/)
- Internal Handbook: [Engaging with GitLab Dedicated Customers](/customer-success/csm/gitlab-dedicated/)
- [GitLab Dedicated Support](/support/workflows/dedicated/)
- [Category Direction: GitLab Dedicated](/direction/saas-platforms/dedicated/)

## Onboarding Dedicated Customers

Customers moving to Dedicated will use Professional Services to migrate from their existing platform to GitLab Dedicated. This will likely be done in migration waves. The CSM should be aligned on the Professional Services engagement, and continue to support the customer through onboarding. 

During onboarding, the Dedicated customer is assigned a [codename](https://gitlab.com/gitlab-com/gl-infra/gitlab-dedicated/team/-/issues/3555). This codename will be used in all internal Slack channels, issues, etc. 

## Dedicated Offering and Customization 

GitLab Dedicated offers slightly different offerings and customization than self-managed or GitLab.com instances, CSMs should understand:

- The [available features](https://docs.gitlab.com/ee/subscriptions/gitlab_dedicated/#available-features) for Dedicated customers
  - Before pitching a feature to a Dedicated customer, [confirm it is available to them](https://gitlab-com.gitlab.io/cs-tools/gitlab-cs-tools/what-is-new-since/?tab=features)
- Understand [features that are not available](https://docs.gitlab.com/ee/subscriptions/gitlab_dedicated/#features-that-are-not-available) for Dedicated customers.
- GitLab Dedicated runs [one release behind](https://docs.gitlab.com/ee/subscriptions/gitlab_dedicated/#upgrades) the latest GitLab release (See Upgrades and Maintenance for more)
- Dedicated customers do NOT have access to the [Rails Console](https://docs.gitlab.com/ee/administration/operations/rails_console.html)

## Tools and Maintenance

The GitLab SRE team manages upgrades and maintenance for Dedicated customers. Below is a list of resources to help manage upgrades and maintenance:

1. [Maintenance](https://docs.gitlab.com/ee/subscriptions/gitlab_dedicated/#maintenance) 
    1. Weekly maintenance windows for security fixes and other fixes to ensure reliability
        1. Dedicated customer choose a [maintenance window](https://docs.gitlab.com/ee/administration/dedicated/create_instance.html#maintenance-window) during onboarding
    2. [Release and rollout schedule](https://docs.gitlab.com/ee/administration/dedicated/create_instance.html#gitlab-release-rollout-schedule)
2. [Instrumentor](https://gitlab.com/gitlab-com/gl-infra/gitlab-dedicated/instrumentor)
    1. A project used by Gitlab Dedicated SRE team to provision, configure and orchestrate a Gitlab Dedicated customer tenant account setup and maintenance 
3. [Switchboard](https://gitlab.com/gitlab-com/gl-infra/gitlab-dedicated/switchboard)
    1. Tool for GitLab Dedicated customers to manage their tenant environments
    2. CSM/A's managing GitLab Deidcated customers should request access to switchboard by opening an [access request](https://handbook.gitlab.com/handbook/engineering/infrastructure/team/gitlab-dedicated/switchboard/#requesting-access-to-the-switchboard-application:~:text=Create%20an-,Access%20Request,-specifying)
4. [Transistor](https://gitlab.com/gitlab-com/gl-infra/gitlab-dedicated/transistor)
    1. Project used by GitLab Dedicated SRE team to provision, configure and orchestrate runners for Dedicated customers. 

## Support

1. [GitLab Dedicated Support Workflows](https://handbook.gitlab.com/handbook/support/workflows/dedicated/)
2. [Dedicated Emergency Support](https://handbook.gitlab.com/handbook/support/workflows/customer_emergencies_workflows/#gitlab-dedicated-emergencies)
3. Support Best Practices for the CSM
    1. Customer creates a support ticket, and support will frequently pull in the dedicated team for assistance. This may result in delays in ticket handling. 
    2. CSM should STAR tickets if they pass SLA, are urgent or are not addressed by the next day. 
    3. The Dedicated SRE team is EMEA based and PM team is in the US.

## Slack/Help Channels

Do not use customer names in any channels, only refer to customers using their [codename](https://gitlab.com/gitlab-com/gl-infra/gitlab-dedicated/team/-/issues/3555).

1. #g_dedicated-team
1. #f_gitlab_dedicated
    1. For questions specifically related to Engineering i.e. if customer has a question on their infrastructure but it isn’t a support ticket, you can start here
