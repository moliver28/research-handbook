---

title: "GitLab Quick Start for New GitLab.com Customers"
description: "Tasks to complete when your subscription starts"
---
<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## GitLab Quickstart for New GitLab.com Customers

Congratulations on your new GitLab subscription! Here are some steps to complete to your onboarding as a new customer is successful. Consider this your hub for getting started.

## Key Terminology

| Term | Definition |
|------|----------- |
| [GitLab.com](https://gitlab.com/gitlab-org/gitlab) | Multi-tenant SaaS, subscription-based GitLab platform |
| [Namespace](https://docs.gitlab.com/ee/user/namespace/)| One place to organize different projects, can be a group or personal namespace |
| [Group](https://docs.gitlab.com/ee/user/group/) | Allows you to manage multiple projects and sub-groups |
| [Project](https://docs.gitlab.com/ee/user/project/) | A source code management (SCM) repository |
| [Member](https://docs.gitlab.com/ee/user/project/members/) | User who has access to your groups and projects |
| [Customer Portal](https://docs.gitlab.com/ee/subscriptions/customers_portal.html) | Place to complete tasks around account management, such as purchasing more seats or CI/CD minutes |

## Sign Into the Customer Portal

You can sign into the [Customer Portal](https://customers.gitlab.com) with your GitLab.com account. This is what you use to sign into [GitLab.com](https://gitlab.com).

### (Optional) Update Subscription and Billing Contacts

- Subscription Contact: The subscription contact is the primary contact for your billing account.
- Billing Contact: The billing contact receives all invoices and subscription event notifications.

Sometimes you may want another user to be the primary adminstrative owner of the GitLab subscription (Subscription Contact) or receive invoices (Billing Contact). You can edit the subscription and billing contacts by following [these instructions](https://docs.gitlab.com/ee/subscriptions/customers_portal.html#subscription-and-billing-contacts).

## Link Your Namespace to Your Subscription

In order to use your new GitLab subscription, be sure to link the subscription to your group-type namespace.

[Follow the instructions here](https://docs.gitlab.com/ee/subscriptions/gitlab_com/#change-the-linked-namespace) to link your subscription to a group.

Confirm the linkage by navigating to your group and selecting Settings > Billing.

## (Paid Customers Only) Confirm Support Entitlement

There are a few ways an account [may be created for you](https://about.gitlab.com/support/portal/#creating-a-support-portal-account) in the Support Portal. To access the Support Portal, first attempt to reset your password to see if an account was created for you. This may have happened on the backend if you are the named contact of your subscription, if you submitted a ticket via email, or if someone else from your organization added you as a support contact. Follow the reset instructions and then sign in.

If there is no existing account, create one manually and then sign in.

You can access the support portal [here](https://support.gitlab.com/hc/en-us).

### Manage Support Contacts

#### Via ticket

Add Support Contacts via ticket by clicking [the Support portal related matters form](https://support.gitlab.com/hc/en-us/requests/new?ticket_form_id=360001801419) and selecting the problem type `Manage my organization's contacts`. This has a limit of 30 contacts per Organization. You can add contacts via a new ticket with the same `Support portal related matters` form.

### Via contact management project (CMP)

Alternatively, request a CMP to be created. This project will manage your support contacts via a file called `contacts.yaml` that you can edit to add or remove support contacts. To get started, use the [Support portal related matters form](https://support.gitlab.com/hc/en-us/requests/new?ticket_form_id=360001801419) and select the problem type `Contacts management project setup/questions`. Please note if you choose to disable the CMP in the future it cannot be reenabled.

You can read more about managing support contacts [here](https://about.gitlab.com/support/managing-support-contacts/).

## Create GitLab Groups

It is recommended at this point to define your group structure. Groups are collections of projects, and projects are individual repositories that can act as standalone services or microservices.

Membership should also be considered at this point, as memberships are inherited by default from the top level group in nested sub-groups and projects therein.

### Recommended Group Structure Configuration

We have a few suggested models detailed [here](https://docs.gitlab.com/ee/user/group/#group-structure) on how to organize your groups based on your organization's needs. Some recommendations may include structuring groups by business unit, client, or functionaltity/application.

Keep in mind as you define your group structure that membership can be updated to be more permissive at each sub-group's level via direct memebership.

### (Optional) Import Projects from External SCM Sources

If you are migrating to GitLab from a different SCM tool such as BitBucket or GitHub, you can do so in a few ways, each with different considerations.

We list our supported imported sources [here](https://docs.gitlab.com/ee/user/project/import/#supported-import-sources).

You can also leverage [GitLab Professional Services](https://about.gitlab.com/services/#migration-services) to aid in migration via a tool called Congregate. Contact your Account Executive for more information on migration services.

You can also migrate groups and projects between GitLab instances (for example, from GitLab self-hosted to GitLab.com) via [Direct Transfer](https://docs.gitlab.com/ee/user/group/import/) subject to rate limits detailed [here](https://docs.gitlab.com/ee/user/group/import/#limits).

## Provision Users

Instead of manually adding users by invitation, you can configure SAML SSO for your GitLab top-level group. SCIM allows for the automatic addition and removal of users to the GitLab group as well as subgroups and projects.

Please note that deactivating the user on the identity provider does not deactivate users on GitLab.com, it removes their access to the group.

Resources for configuration on GitLab.com:

- [SAML SSO for GitLab.com groups](https://docs.gitlab.com/ee/user/group/saml_sso/)
- [Configure SCIM for GitLab.com groups](https://docs.gitlab.com/ee/user/group/saml_sso/scim_setup.html)

### Permissioning

Familiarize yourself with the Permissions of GitLab listed [here](https://docs.gitlab.com/ee/user/permissions.html). It is recommended to follow the principle of least privilege when providing access to users.

If you would like users to automatically have read-only access to not only the top level group, but sub-groups and projects, it is recommended you set the default role to `Guest`. Note that Ultimate customers have an unlimited number of `Guest` users. You can set the default role in Settings > SAML Single Sign On Settings > Configuration.

If you would like to restrict users from having access to any sub-groups or projects without explicit invitation, it is recommended you set the default role to `Minimal Access`. Note that `Minimal Access` users are billable.

#### Define Custom Roles

There are cases where you may want to customize the role a user can have. You can create a `Custom role` with any permissions listed [here](https://docs.gitlab.com/ee/user/custom_roles.html#available-permissions) expanding on a base role.

Please note you must be the Owner of the group to define a custom role. You can assign the custom role via UI or API to an existing user.

## Subscribe to Status Updates

You can monitor the status of GitLab.com at [status.gitlab.com](https://status.gitlab.com/). You can subscribe for updates by clicking the `Subscribe` button in the top right of the page, and receive updates via email, webhook, RSS, and more.

## Additonal Resources

- [Professional Services Catalog](https://about.gitlab.com/services/catalog/)
- [Get Started for Enterprise](https://about.gitlab.com/get-started/enterprise/)
- [Customer Portal Documentation](https://docs.gitlab.com/ee/subscriptions/customers_portal.html)
- [GitLab Adminstration on SaaS Webinar](https://www.youtube.com/watch?v=SWMD27dlnEc)
