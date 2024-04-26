---
title: GitLab Dedicated Switchboard Troubleshooting
category: GitLab Dedicated
description: "GitLab Dedicated Support - Switchboard"
---

## Overview

Switchboard is a portal customers use to manage their GitLab Dedicated instance. Select GitLab team members have access to Switchboard.
Read more about what the goals of Switchboard are on the [Category Direction page](https://about.gitlab.com/direction/saas-platforms/switchboard/).

## Accessing Switchboard

GitLab Support Engineers can access the [Switchboard](https://about.gitlab.com/direction/saas-platforms/switchboard/) application via [Okta](/handbook/business-technology/okta/index.html).

1. Log in to Okta at `https://gitlab.okta.com`
1. Search for and click on the **Switchboard (production)** app
1. Click **Sign in**
1. Under **Sign in with your corporate ID**, select **Okta**

You should now be in **Switchboard**.

{{% alert title="Note" color="info" %}}

If you get a `403 Forbidden` message while using a VPN, turn it off temporarily. The WAF rules may be blocking VPN endpoints.
{{% /alert %}}

During [onboarding](https://docs.gitlab.com/ee/administration/dedicated/#onboarding-to-gitlab-dedicated-using-switchboard), GitLab Dedicated customers get access to Switchboard. Temporary credentials are sent to these customers via email. If these credentials expire, customers may open a Support ticket. Support Engineers should raise an issue in the [GitLab Dedicated issue tracker](https://gitlab.com/gitlab-com/gl-infra/gitlab-dedicated/team/-/issues) using [the `request_for_switchboard_help.md` template](https://gitlab.com/gitlab-com/gl-infra/gitlab-dedicated/team/-/issues/new?issuable_template=request_for_switchboard_help).

## Accessing customer configuration

When launching Switchboard, you should default to the `/tenants` page with a list of tenant customers.
**Name**, **Identifier** (codename), and **External URL** are listed in a table.
Click on **Manage** to view settings for that customer.

### Version information

Check the `Tenant Details` collapsible section.

### Maintenance schedule

Check the `Maintenance` collapsible section.

### Opensearch links

Currently not available. There is an open [feature request](https://gitlab.com/gitlab-com/gl-infra/gitlab-dedicated/team/-/issues/2307) to add that functionality.

### Customer contacts

Check the `Customer Communications` collapsible section.

Customer CSM (formerly TAM) is also included in this section.

### AWS regions

Check the `Cloud Account Config` collapsible section.

### View history

- Click the **Audit Logs** link at the top of the page.
- Filter for `Tenant`.
- Check the **Tenant#<tenant_id>** records to view changes.

