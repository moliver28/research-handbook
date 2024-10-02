---
stage: core platform
group: Tenant Scale
title: 'Cells: Routable Tokens'
status: proposed
---

This document describes design goals and architecture of Routable Tokens
used by Cells. This document explicitly focuses on objectives
of [Phase 4](https://gitlab.com/groups/gitlab-org/-/epics/14510).

## Purpose

GitLab uses machine-generated tokens extensively to provide various ways for Users/Services to interact with GitLab, for example, the [REST API Authentication](https://docs.gitlab.com/ee/api/rest/#authentication) and the [Token Overview](https://docs.gitlab.com/ee/security/token_overview.html).
Tokens have different scopes as for example User, [project](https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html), and [group](https://docs.gitlab.com/ee/user/group/settings/group_access_tokens.html)

[HTTP Routing Service](http_routing_service.md) require the tokens to be routable,
so it can route the request to the correct Cell.

## Goals

This documents tries to describe the following goals:

- Routable tokens to be decoded by HTTP Router.
- Capture and describe usage of existing tokens.

## Non-goals

This document is not meant to re-assess the need for the following non-goals:

- The need for the secret in the first place, and their lifecycle or how they are managed by the application.
- Define support for many encryption keys
- Define the pattern allowing online encryption keys rotation
- Document how to deprecate and remove legacy encryption keys, or legacy strategies
- Unify storing of secrets and tokens
- Move away from `attr_encrypted` to use a single secrets framework
- Introduce transit/shared key to be used with [Org Mover](https://gitlab.com/groups/gitlab-org/-/epics/12857)

Those non-goals are meant to be solved with a new design document describing secrets management by the application.

### Tokens and cookies

The list of tokens at a current moment is shared as a [Google Spreadsheet](https://docs.google.com/spreadsheets/d/1n54lCX2axsTIt8DZBRFj9p44s6YcFp-UechVEHEim8Y/) to ease editing.

### Secrets

This document focuses only on Routable Tokens, not secrets stored at rest, like `CI Variables`.

## Existing implementation

### TokenAuthenticatable

Majority of the tokens in application use `TokenAuthenticatable` framework making it easy to change how the token is generated. Only some of the tokens use a custom `token_generator`, as in the following example:

```ruby
module Clusters
  class AgentToken < ApplicationRecord
    TOKEN_PREFIX = "glagent-"

    add_authentication_token_field :token,
      encrypted: :required,
      token_generator: -> { Devise.friendly_token(50) },
      format_with_prefix: :glagent_prefix

    def glagent_prefix
      TOKEN_PREFIX
    end
  end
end
```

## Proposal

This proposal is to make all tokens to encode routable information about object
to which the token is attached. This document does focus specifically first on tokens
that are required to be made routable in the Phase 4: [Personal Access Token](https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html), [CI/CD Job Token](https://docs.gitlab.com/ee/ci/jobs/ci_job_token.html) and [Runner Authentication Token](https://docs.gitlab.com/ee/security/tokens/#runner-authentication-tokens):

- Currently tokens are generated with the following pattern: `<prefix><random-string>`.
- The Routable Token would change the `<random-string>` to become a `<payload>`. Likely, the `<payload>` will have a longer length than the previous `<random-string>`, due to the need to encode more information.
- The ability to decode `<payload>` is a feature reserved for the HTTP Router.
- Application should never decode `<payload>` and use it for authentication purposes.
- The generated token is stored in whole as-is and is validated against its full value.
  This is contrary to JWT which usually a signature is used to validate authenticity of the token itself.
- The `<payload>` contains encoded information about the cell where the token can be used.
- The `<payload>` is `base64` encoded structured string that is line delimited.
- Each line starts with a character indicating a type of value it describes. We also use a `:` to delimit between type, and value.
- The tokens as stored and validated by the application would not change.
- Extend `TokensAuthenticatable` framework to allow generating a structured routable token.
- The high entropy of a token is provided by requiring `r` parameter with 16 random bytes, so the token cannot be forged.
- The `base64` encoded `<payload>` should not change a character set of a random string. Looking at existing character sets used for secret detection it is important to ensure that tokens follows the `<prefix>[0-9a-zA-Z_-]*` format. It seems to be valid to use `Base64.urlsafe_encode64` without padding to force the usage of the `[0-9a-zA-Z_-]` character set.
- The secret detection script at `app/assets/javascripts/lib/utils/secret_detection_patterns.js` will need to be modified as the `<payload>` length will change. Note also the `<payload>` length will be variable as the encoded information contains varying sizes (for example `u: 1` vs `u: 9223372036854775807`).

### Pseudo code generation

The Routable Token pseudo code generation:

```ruby
def generate_pat(user, project)
  params = {
    c: Gitlab.cell.id.to_s(36),
    o: project.organization_id.to_s(36),
    u: user.id.to_s(36),
    r: SecureRandom.random_bytes(16)
  }

  payload = params.map{|k,v| "#{k}:#{v}"}.join("\n")

  "#{PersonalAccessToken.token_prefix}#{Base64.urlsafe_encode64(payload, padding: false)}"
end
```

Note that we use base36 for bigint to shorten the length of the eventual token.
It's also the reason why we're using raw random bytes instead of encoding them
in text. Users do not need to look at the random bytes and we encode the
eventual token in base64 anyway.

Here's an example of a token having maximum ids, showing the maximum length of
a token:

`glpat-YzozdzVlMTEyNjRzZ3NmCm86M3c1ZTExMjY0c2dzZgp1OjN3NWUxMTI2NHNnc2YKcjoryxlMTQzr4jrHd3j4gOoL`
encodes the following payload:

```text
c:3w5e11264sgsf
o:3w5e11264sgsf
u:3w5e11264sgsf
r:+\xCB\x19LM\f\xEB\xE2:\xC7wx\xF8\x80\xEA\v
```

Note that `3w5e11264sgsf` is `(2**64-1).to_s(36)` which is the largest number
for a bigint. `+\xCB\x19LM\f\xEB\xE2:\xC7wx\xF8\x80\xEA\v` is 16 random bytes.

### Meaning of fields

Since the payload holds a structured information, each single letter has a particular meaning:

- `c`: Cell ID
- `o`: Organization ID
- `g`: Group ID
- `p`: Project ID
- `u`: User ID
- `r`: Random string to increase the token entropy

### Adding Classify to Topology Service

It is strongly desired that Classify endpoint of Topology Service could accept routable token payload in full (except for `r`), and make the best routing decision on its own based on available information.

The Topology Service once it receives the full payload should look at making routing decision
based on ID cardinality, preferring to search by Project ID, Group ID, Organization ID, User ID, Cell ID. As such adding support for new identifiers in Topology Service will not change HTTP Router implementation,
and will make those be automatically supported by Topology Service.

The request sent to Topology Service should never include `r` field that is meant to ensure that token is truly unique. Sending `r` is not required, and by us not sending it reduces attack surface on Topology Service, since Topology Service without `r` cannot reconstruct the token.

```proto
enum ClassifyType {
  ROUTABLE_TOKEN = 3;
}

message ClassifyRequest {
  ClassifyType type = 2;
  oneof value {
    string str = 3;
    map<string,string> routable_token = 4;
  };
}

service ClassifyService {
  rpc Classify(ClassifyRequest) returns (ClassifyResponse) {
    option (google.api.http) = {
      post: "/v1/classify",
      body: "*"
    };
  }
}
```

Assuming that we send to classify based on payload from the previous point
we would send the following request to Topology Service:

```ruby
classify_service.classify(
  ClassifyRequest.new(
    type: ClassifyType.ROUTABLE_TOKEN,
    routable_token: {
      "c": "100",
      "o": "1",
      "u": "100"
    }
  )
)
```

The Topology Service routes by the available information following this precedence: `o`, otherwise `u`, and otherwise `c`.

### Integration into Token Authenticatable

The Routable Token is meant to be integrated into TokenAuthenticatable as a first-class
supported syntax. Once the `routable_token:` is used, it will change how the payload is generated.
The usage of `routable_token:` should not be used with `generator:` which is sometimes used to generate a random string of a different format.

```ruby
class PersonalAccessToken
  add_authentication_token_field :token,
    encrypted: :required,
    format_with_prefix: :prefix_from_application_current_settings,
    routable_token: {
      c: -> (token) { Gitlab.cell.id },
      o: -> (token) { token.user.user_preference.home_organization_id },
      u: -> (token) { token.user.id }
    }
end
```

### Integration into Rules engine of HTTP Router

We intentionally encode more information to be able to change over time
the routing criteria by modifying HTTP Router rules. The HTTP Router would
introduce a stage of transforming information: `transform`.

```json
[
  {
    "match": [
      {
        "type": "header",
        "key": "private-token",
        "value": "^glpat-(?<payload>.*)$"
      }
    ],
    "transform": [
      {
        "type": "base64-line-delimited",
        "key": "decoded",
        "value": "{payload}"
      }
    ],
    "action": "classify",
    "classify": {
      "type": "ROUTABLE_TOKEN",
      "routable_token": {
        "cell_id": "{decoded.c}",
        "organization_id": "{decoded.o}",
        "user_id": "{decoded.u}"
      }
    }
  }
]
```

Here, we explicitly pass `c`, `o`, and `u` fields. If the field is missing it would not be ignored. We intentionally do not pass `r`.

#### HTTP Router support for JWT

Some tokens like `CI_JOB_TOKEN` will be [converted to JWT](../../ci_job_token/index.md).
The [JWT](https://en.wikipedia.org/wiki/JSON_Web_Token) is built from 3 different dot
separated base64 url encoded sections: JSON header, JSON payload and signature.

Support for `CI_JOB_TOKEN` is tracked at: [Phase 4.3: Routable Tokens of CI Job Token](https://gitlab.com/groups/gitlab-org/-/epics/15281).

In the following example, we assume that JWT payload does have `cell_id`
or `organization_id` or `user_id` fields. We explicitly re-map them to be
queried by `ROUTABLE_TOKEN`.

```json
[
  {
    "match": [
      {
        "type": "header",
        "key": "CI_JOB_JWT",
        "value": "^(?<headers>\w+)\.(?<payload>\w+)\.(?<signature>\w+)$"
      }
    ],
    "transform": [
      {
        "type": "base64-json",
        "key": "decoded",
        "value": "{payload}"
      }
    ],
    "action": "classify",
    "classify": {
      "type": "ROUTABLE_TOKEN",
      "routable_token": {
        "cell_id": "{decoded.cell_id}",
        "organization_id": "{decoded.organization_id}",
        "user_id": "{decoded.user_id}"
      }
    }
  }
]
```

##### Validating JWT signature

Potentially we could also support checking JWT signature. However, this
does require HTTP Router to be aware of JWT secrets in order to validate signature.
Since signature check is an expensive operation this will have meaningful impact
on CPU compute cost:

```json
[
  {
    "match": [
      {
        "type": "header",
        "key": "CI_JOB_JWT",
        "value": "^(?<headers>\w+)\.(?<payload>\w+)\.(?<signature>\w+)$"
      }
    ],
    "transform": [
      {
        "type": "jwt-signature",
        "key": "env.GITLAB_CI_JWT_PUBLIC_KEY",
        "value": "{headers}.{payload}"
      },
      {
        "type": "base64-json",
        "key": "decoded",
        "value": "{payload}"
      },
    ],
    "action": "classify",
    "classify": {
      "type": "ROUTABLE_TOKEN",
      "routable_token": {
        "cell_id": "{decoded.cell_id}",
        "organization_id": "{decoded.organization_id}",
        "user_id": "{decoded.user_id}"
      }
    }
  }
]
```

## Problems

- Passing `CI Job Token` as part of [POST body](https://docs.gitlab.com/ee/ci/jobs/ci_job_token.html#to-authenticate-a-rest-api-request).
- Passing `CI Trigger token` as part of [POST body](https://docs.gitlab.com/ee/ci/triggers/#use-curl).
- Some tokens use their own implementation instead of `TokensAuthenticatable`, like `EE::Project#external_webhook_token`.

## Questions

1. Application has a number of existing tokens generated in an old way. What happens with the legacy tokens?

- This document assumes that tokens have expiry date set.
- It means that over-time most of tokens will be rotated by the user.
- If some tokens cannot be made routable, they will be forever tied to Cell 1.
- In such case migrating organization to Cell 2 will imply that all tokens used
  by organization are to be rotated first before they can be migrated.
  This might require the organization to perform self-rotation of such tokens.

1. Why don't we use JWT?

The JWT is truly meant to be used as an ephemeral token, usually tied with the time-limited operation. It is strongly not preferred to store JWT for a long periods of time. JWT is also not user-friendly, and should rather be used in a concept of IDP frameworks like OAuth2.

1. What impact on changing Cell ID or Organization ID by an attacker has on the security of the token? What impact does lack of signature has, similar to the one present in JWT?

- This proposal does not change how "we use tokens", nor how we store them in database. The only thing it changes is to bring some additional meaning to random string.
- We do not treat the `payload` as security feature, rather as an aid to make a routing decision.
- Application does not decode payload, so if attacker changes Cell ID in a payload of the token such token will still be invalid from the perspective of the application.
- Application should always treat the token as a whole string without trying to understand its meaning.
- The only impact it might have is that attacker might force a request to be directed to a particular Cell, by forcing routing decision by HTTP Router.
- The HTTP Router will decode payload exclusively for the purpose of the making routing decision. Routing decision over time can be made on other factors as well, like hostname, URL path, or other parameters.
- The ability to validate authenticity of the payload is not a goal of this change. In case of DoS type of attack additional measures needs to be in place, like rate limiting to prevent those types of attacks.

## References

- [Token Prefixes documentation](https://docs.gitlab.com/ee/security/tokens/index.html#token-prefixes)
- [Routable Token generation PoC in Rails](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/157440)
- [Technical proposal for routable tokens](https://gitlab.com/gitlab-com/content-sites/handbook/-/merge_requests/8527)
- (Internal) Google Spreadsheet of various [tokens](https://docs.google.com/spreadsheets/d/1n54lCX2axsTIt8DZBRFj9p44s6YcFp-UechVEHEim8Y/) used by the GitLab.
- [Phase 4](https://gitlab.com/groups/gitlab-org/-/epics/14510).
