---
stage: enablement
group: Tenant Scale
description: 'Cells: OAuth applications'
---

<!-- vale gitlab.FutureTense = NO -->

{{% alert %}}
This document is a work-in-progress and represents a very early state of the
Cells design. Significant aspects are not documented, though we expect to add
them in the future. This is one possible architecture for Cells, and we intend to
contrast this with alternatives before deciding which approach to implement.
This documentation will be kept even if we decide not to implement this so that
we can document the reasons for not choosing this approach.
{{% /alert %}}

# Cells: OAuth applications

## 1. Definition

OAuth applications can be used to grant third-party applications access to resources available to a GitLab user.
They allow secure authorization, and enable users to control what data they share with the third-party application.
OAuth application can be created at instance-owned, user-owned, project-owned and group-owned. But this solely for the
purpose of management, all the  applications are available across the instance.
A few examples of current instance-owned applications are CustomersDot, GitLab Pages, GitLab CLI, Web IDE, VS Code Extension.

OAuth applications with `openid` scope are considered as OIDC application.

## 2. Data flow

The data flow in OAuth applications are documented at [OAuth 2.0 identity provider API](https://docs.gitlab.com/ee/api/oauth2) and
[GitLab as OpenID Connect identity provider](https://docs.gitlab.com/ee/integration/openid_connect_provider.html)

OAuth and OIDC has multiple endpoints, and the way they get routed to correct cell may vary.

1. `/oauth/authorize`, `/oauth/token`, `/oauth/revoke`

These request will have `client_id` and `client_secret` either as request body or as request URI.

2. `/oauth/applications`, `/oauth/applications/new`, `/oauth/applications/:id` , `oauth/authorized_applications`

These requests is handled after current user session is set.

3. `/oauth/token/info`

This request is authenticated using oauth_token.

4. `.well-known/openid-configuration`, `/.well-known/webfinger` , `/.well-known/openid-configuration`, `/oauth/discovery/keys`

This request need to respond with configuration across the cells

5. `/userinfo`

This request need to be authenticated using access token sent via `Authorization` header

## 3. Proposal

### 3.1. Cluster-wide OAuth applications

OAuth applications are cluster-wide and synchronized across Cells, regardless of whether they exists at the instance, user, project or group owned.
OAuth access grants, OAuth access tokens, OAuth refresh tokens are scoped to an Organization.

Pros:

- Enables third-party applications to register a single OAuth application per GitLab cluster.
- Does not require admins of third-party applications to have visibility into GitLab infrastructure.
- Preserves existing workflows. As an example, VS Code Extension ships with the OAuth App ID hardcoded, simplifying the configuration of the extension for the end user.

Cons:

- More complex as OAuth applications need to be synced across Cells.
- Each organization requires diffrent token. As an example VS code extension need to store tokens per organization,
  and special case need to be made for git and docker access

## 4. Alternative approaches considered

### 4.1. OAuth applications scoped to Cells / Organizations

OAuth applications, OAuth access grants, OAuth access tokens, OAuth refresh tokens are scoped to an Organization.

Pros:

- Less complex as OAuth applications do not need to be synced across Cells.

Cons:

- Third-party applications need to install multiple OAuth applications: one per each Cell.
- Users of third-party applications need to understand which OAuth application is associated with a specific Cell to grant access.
- Admins of third party applications need to have visibility into GitLab infrastructure, and create OAuth applications as new Cells are created.

### 4.2. All OAuth entities are cluster-wide

OAuth applications, OAuth access grants, OAuth access tokens, OAuth refresh tokens are cluster-wide.

Pros:

- Similar to `Cluster-wide OAuth applications` approach, it enables third-party applications to register a single OAuth application per GitLab cluster.

- No changes required for docker,  git and api access credential storage

Cons:

- Routing might not work as OAuth access tokens do not have a clear owning Cell.
- Since OAuth access tokens are short-lived, a significant amount of data needs to be synchronized across Cells.
