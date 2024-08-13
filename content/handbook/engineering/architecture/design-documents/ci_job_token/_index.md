---
# This is the title of your design document. Keep it short, simple, and descriptive. A
# good title can help communicate what the design document is and should be considered
# as part of any review.
title: Granular CI Job Token
status: proposed
creation-date: "2024-08-08"
authors: [ "@mokhax" ]
coaches: [ ]
dris: [ "@jrandazzo", "@jayswain" ]
owning-stage: "~govern::authorization"
participating-stages: []
# Hides this page in the left sidebar. Recommended so we don't pollute it.
toc_hide: true
---

<!--
Before you start:

- Copy this file to a sub-directory and call it `_index.md` for it to appear in
  the design documents list.
- Remove comment blocks for sections you've filled in.
  When your document ready for review, all of these comment blocks should be
  removed.

To get started with a document you can use this template to inform you about
what you may want to document in it at the beginning. This content will change
/ evolve as you move forward with the proposal.  You are not constrained by the
content in this template. If you have a good idea about what should be in your
document, you can ignore the template, but if you don't know yet what should
be in it, this template might be handy.

- **Fill out this file as best you can.** At minimum, you should fill in the
  "Summary", and "Motivation" sections.  These can be brief and may be a copy
  of issue or epic descriptions if the initiative is already on Product's
  roadmap.
- **Create a MR for this document.** Assign it to an Architecture Evolution
  Coach (i.e. a Principal+ engineer).
- **Merge early and iterate.** Avoid getting hung up on specific details and
  instead aim to get the goals of the document clarified and merged quickly.
  The best way to do this is to just start with the high-level sections and fill
  out details incrementally in subsequent MRs.

Just because a document is merged does not mean it is complete or approved.
Any document is a working document and subject to change at any time.

When editing documents, aim for tightly-scoped, single-topic MRs to keep
discussions focused. If you disagree with what is already in a document, open a
new MR with suggested changes.

If there are new details that belong in the document, edit the document. Once
a feature has become "implemented", major changes should get new blueprints.

The canonical place for the latest set of instructions (and the likely source
of this file) is [here](/content/handbook/engineering/architecture/design-documents/_template.md).

Document statuses you can use:

- "proposed"
- "accepted"
- "ongoing"
- "implemented"
- "postponed"
- "rejected"

-->

<!-- Design Documents often contain forward-looking statements -->
<!-- vale gitlab.FutureTense = NO -->

<!-- This renders the design document header on the detail page, so don't remove it-->
{{< design-document-header >}}

<!--
Don't add a h1 headline. It'll be added automatically from the title front matter attribute.

For long pages, consider creating a table of contents.
-->

## Summary

<!--
This section is very important, because very often it is the only section that
will be read by team members. We sometimes call it an "Executive summary",
because executives usually don't have time to read entire document like this.
Focus on writing this section in a way that anyone can understand what it says,
the audience here is everyone: executives, product managers, engineers, wider
community members.

A good summary is probably at least a paragraph in length.
-->

This document outlines a proposal on how to reduce the access that a
[`CI_JOB_TOKEN`][1] has in the context for a CI job. This proposal identifies a
series of stages to limit the duration and scope of these tokens through a
series of phases to allow generating tokens with the least privilege necessary
to adequately perform its' desired function.

## Motivation

<!--
This section is for explicitly listing the motivation, goals and non-goals of
this document. Describe why the change is important, all the opportunities,
and the benefits to users.

The motivation section can optionally provide links to issues that demonstrate
interest in a document within the wider GitLab community. Links to
documentation for competing products and services is also encouraged in cases
where they demonstrate clear gaps in the functionality GitLab provides.

For concrete proposals we recommend laying out goals and non-goals explicitly,
but this section may be framed in terms of problem statements, challenges, or
opportunities. The latter may be a more suitable framework in cases where the
problem is not well-defined or design details not yet established.
-->

Today, when a CI job runs it is provided with a [`CI_JOB_TOKEN`][1] that can be
used by the job to interact with other GitLab resources. This token is generated
on behalf of the user that triggered the CI pipeline, effectively giving the CI
job full the same level of access as the user.

This is a problem because it allows for token theft (i.e. `$ echo $CI_JOB_TOKEN`)
allowing a bad actor to make use of another users access for the duration of the
job that the token was generated for.

### Goals

<!--
List the specific goals / opportunities of the document.

- What is it trying to achieve?
- How will we know that this has succeeded?
- What are other less tangible opportunities here?
-->

This proposal attempts to decouple the access that a [`CI_JOB_TOKEN`][1] has
away from a specific user to an entity with less access.

- Decouple `CI_JOB_TOKEN` from a [`human` user account][9].
- Propose a plan towards allowing the configuration of granular permissions for `CI_JOB_TOKEN`
- Reduce the access that is available to the `CI_JOB_TOKEN`.

### Non-Goals

<!--
Listing non-goals helps to focus discussion and make progress. This section is
optional.

- What is out of scope for this document?
-->

- Auditing of token usage and generation
- Changing the format of a token (i.e. [JWT][4])
- Creation of a [Secure Token Service][7]
- OAuth2 specific integration or compatibility
- Reducing the duration of access of a [`CI_JOB_TOKEN`][1]
- Unify the [PAT scopes][8] with the existing [custom abilities][6]
- Unifying the many different [types of tokens][3] into a single [authoritative token][10]
- [Removal of the runner registration token][2]

## Proposal

<!--
This is where we get down to the specifics of what the proposal actually is,
but keep it simple!  This should have enough detail that reviewers can
understand exactly what you're proposing, but should not include things like
API designs or implementation. The "Design Details" section below is for the
real nitty-gritty.

You might want to consider including the pros and cons of the proposed solution
so that they can be compared with the pros and cons of alternatives.
-->

Instead of creating a [`CI_JOB_TOKEN`][1] that is bound to the user that
triggered the CI pipeline we will generate a [`CI_JOB_TOKEN`][1] bound to a
specific type of `User` record with a custom `user_type` field. In other words,
we will use a service account or CI job runner specific account. This custom
`User` will have limited permissions based on the [Custom Role][5] that it is
bound to.

At this time, it is uncertain if we will need to manage CI Job specific
[custom abilities][6] that cannot be assigned to regular user accounts.


## Design and implementation details

<!--
This section should contain enough information that the specifics of your
change are understandable. This may include API specs (though not always
required) or even code snippets. If there's any ambiguity about HOW your
proposal will be implemented, this is the place to discuss them.

If you are not sure how many implementation details you should include in the
document, the rule of thumb here is to provide enough context for people to
understand the proposal. As you move forward with the implementation, you may
need to add more implementation details to the document, as those may become
an important context for important technical decisions made along the way. A
document is also a register of such technical decisions. If a technical
decision requires additional context before it can be made, you probably should
document this context in a document. If it is a small technical decision that
can be made in a merge request by an author and a maintainer, you probably do
not need to document it here. The impact a technical decision will have is
another helpful information - if a technical decision is very impactful,
documenting it, along with associated implementation details, is advisable.

If it's helpful to include workflow diagrams or any other related images.
Diagrams authored in GitLab flavored markdown are preferred. In cases where
that is not feasible, images should be placed under `images/` in the same
directory as the `index.md` for the proposal.
-->

This problem can be broken down into the following categories:

1. Token Creation
  * To inject a new token that has limited scope we will need to hook into how we create tokens for jobs.
1. Token Enforcement/Lookup
  * Any changes to the token creation may have an impact on how we lookup and
    enforce the authorization on the token. We will probably need to update the [`api_guard`][14]

### Option 1: Generate an OAuth Access Token for each CI Job

With this option we could generate an OAuth App (`Doorkeeper::Application`) for
each project and use that application to generate an OAuth Access Token for a
service account user that is associated with of a custom role containing custom
permissions. This option utilizes the existing custom roles and OAuth
functionality and provides an extension point for API's outside of the
`gitlab-rails` monolith to be able to look up the claims associated with a
`CI_JOB_TOKEN` by making an API call to the `GET /oauth/token/info` endpoint.

Pros:

* Injects a `CI_JOB_TOKEN` that is scoped to a specific user.
* The `CI_JOB_TOKEN` is an access token that is compatible with our OAuth Provider.
  * This creates an extension point to allow all GitLab Resource Servers to
    begin performing authz checks using an OAuth compatible token.

Cons:

* Doesn't fully conform to the [OAuth Token Exchange Protocol][7].
* This will create a new record in the `oauth_access_tokens` for each job. (This will have a significant database impact)
* This may require the creation of a new user record for every project that has CI enabled.
* This may require the creation of a new `oauth_applications` record for each project that has CI enabled.

```ruby
module Ci
  class Build < Ci::Processable
    # ...
    add_authentication_token_field :token,
      encrypted: :required,
      token_generator: ->(build) { build.create_oauth_access_token }, # provide :token_generator
      format_with_prefix: :prefix_and_partition_for_token

    def create_oauth_access_token
      application = project.ci_oauth_application # refers to an internal OAuth App that is generated for each project when CI is enabled.
      user = project.ci_user                     # refers to a specific service account for running CI jobs

      OauthAccessToken.create!(
        application_id: application.id,
        expires_in: 2.hours,                     # default to max timeout for pipeline
        resource_owner_id: user.id,
        token: Doorkeeper::OAuth::Helpers::UniqueToken.generate,
        scopes: application.scopes.to_s          # list the minimal scopes necessary to connect to the API
      )
    end
  end
end
```

To accomplish this we will need to:

1. Hook into the `CI::Build` state machine when transitioning to a [pending state][13].
1. Create a new [token generator][12].
1. Create a new [token authenticatable strategy][11].
1. Create a [service account][9] user for each project.

Sequence Diagram

```plaintext
   -------------   -----------------------   ---------------------------------------
   | CI::Build |  | TokenAuthenticatable |  | TokenAuthenticatableStrategies::Base |
   -------------   -----------------------   ---------------------------------------
         |                    |                 |
         |--> #ensure_token ->|
         |                    |
         |                    |--> .fabricate ->|
         |                                      |
         |<-- #create_oauth_access_token     <--|
```

#### Unknowns

1. How many projects do we have?
1. Which team owns the following relations:
  * `oauth_applications`
  * `oauth_access_tokens`
1. How does this impact the Cells work?

## Alternative Solutions

<!--
It might be a good idea to include a list of alternative solutions or paths
considered, although it is not required. Include pros and cons for each
alternative solution/path.

"Do nothing" and its pros and cons could be included in the list too.
-->

* Build a [Security Token Service][7]
* Migrating to the [GitLab OAuth2 provider][10]

### Option 2: Attach a Service Account to each `Ci::Build`

This option changes the user that is associated with each `Ci::Build` record to
a service account that can be attached to a custom role with custom permissions.

```diff
diff --git a/lib/gitlab/ci/pipeline/chain/build.rb b/lib/gitlab/ci/pipeline/chain/build.rb
index 6feb693221b5..ef8688dfd6ef 100644
--- a/lib/gitlab/ci/pipeline/chain/build.rb
+++ b/lib/gitlab/ci/pipeline/chain/build.rb
@@ -16,7 +16,7 @@ def perform!
               target_sha: @command.target_sha,
               tag: @command.tag_exists?,
               trigger_requests: Array(@command.trigger_request),
-              user: @command.current_user,
+              user: user_for(@command),
               pipeline_schedule: @command.schedule,
               merge_request: @command.merge_request,
               external_pull_request: @command.external_pull_request,
@@ -26,6 +26,18 @@ def perform!
           def break?
             @pipeline.errors.any?
           end
+
+          def user_for(command)
+            Feature.enabled?(:use_ci_user_account, command.project) ? current_user : service_user
+          end
+
+          def current_user
+            @command.current_user
+          end
+
+          def service_user
+            # TODO:: discover the service account to use for this build
+          end
         end
       end
     end
```

[1]: https://docs.gitlab.com/ee/ci/jobs/ci_job_token.html
[2]: https://handbook.gitlab.com/handbook/engineering/architecture/design-documents/runner_tokens/
[3]: https://docs.gitlab.com/ee/security/token_overview.html
[4]: https://datatracker.ietf.org/doc/html/rfc7519
[5]: https://docs.gitlab.com/ee/user/custom_roles/abilities.html
[6]: https://gitlab.com/gitlab-org/gitlab/-/tree/master/ee/config/custom_abilities
[7]: https://datatracker.ietf.org/doc/html/rfc8693
[8]: https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html#personal-access-token-scopes
[9]: https://gitlab.com/gitlab-org/gitlab/-/blob/4633bdb43e637c60f80c4dd1ee8cf92f2e0739e7/app/models/concerns/has_user_type.rb#L7
[10]: https://docs.gitlab.com/ee/api/oauth2.html
[11]: https://gitlab.com/gitlab-org/gitlab/-/blob/22e3d6c41c1e6472d4ba665232634c827af20083/app/models/concerns/token_authenticatable_strategies/base.rb#L84-96
[12]: https://gitlab.com/gitlab-org/gitlab/-/blob/e79ca748658b7d34fc36c32e15091d2cac12f256/app/models/concerns/token_authenticatable_strategies/base.rb#L133
[13]: https://gitlab.com/gitlab-org/gitlab/-/blob/e79ca748658b7d34fc36c32e15091d2cac12f256/app/models/ci/build.rb#L305
[14]: https://gitlab.com/gitlab-org/gitlab/-/blob/6d1f895398aa08f2398bb0775ebc88dd23526f26/lib/api/api_guard.rb#L69-81
