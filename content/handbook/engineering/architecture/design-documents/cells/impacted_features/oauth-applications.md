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

OAuth applications allow third-party applications to securely access resources associated with a GitLab user.
Users control what data they share with these applications.
OAuth applications can be created at different levels: instance-owned, user-owned, project-owned, and group-owned.
However, this is only for management purposes—**all OAuth applications are available instance-wide**.

Examples of instance-owned applications include: CustomersDot, GitLab Pages, GitLab CLI, Web IDE, and the VS Code Extension.

OAuth applications that include the `openid` scope are considered OpenID Connect (OIDC) applications.

## 2. Data Flow

The data flow for OAuth applications is detailed in the following documentation:

- [OAuth 2.0 identity provider API](https://docs.gitlab.com/ee/api/oauth2)
- [GitLab as an OpenID Connect identity provider](https://docs.gitlab.com/ee/integration/openid_connect_provider.html)

OAuth and OIDC have multiple endpoints, with variations in how these requests are routed to the appropriate Cell:

1. **Endpoints with `client_id` and `client_secret`:**
   Requests like `/oauth/authorize`, `/oauth/token`, and `/oauth/revoke` include these values either in the request body or URI.

1. **User session-based endpoints:**
   Endpoints like `/oauth/applications`, `/oauth/applications/new`, `/oauth/applications/:id`, and `/oauth/authorized_applications` are processed after the user session is established.

1. **Token-authenticated endpoints:**
   `/oauth/token/info` is authenticated using an OAuth token.

1. **Configuration endpoints:**
   Requests such as `.well-known/openid-configuration`, `.well-known/webfinger`, and `/oauth/discovery/keys` return configurations relevant across all Cells.

1. **User info endpoints:**
   `/userinfo` is authenticated via the access token sent in the `Authorization` header.

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
- Each organization requires different token. As an example VS code extension need to store tokens per organization,
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
- No special handling required for Git, Docker, and API access credentials.

Cons:

- Routing will not work as OAuth access tokens do not have a clear owning Cell.
- Since OAuth access tokens are short-lived, a significant amount of data needs to be synchronized across Cells.
