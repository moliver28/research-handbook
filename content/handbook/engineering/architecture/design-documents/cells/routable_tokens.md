---
stage: core platform
group: Tenant Scale
title: 'Cells: Routable Tokens'
status: proposed
---

This document describes design goals and architecture of Routable Tokens
used by Cells.

## Purpose

GitLab uses machine generated tokens extensively to provide a various way to
authenticate users, or provide a project specific tokens. Some of the, but not all
include: [REST API Authentication](https://docs.gitlab.com/ee/api/rest/#authentication).

[HTTP Routing Service](http_routing_service.md) does require that tokens are routable,
so we can make decision based on a token itself which Cell is the correct one to
authenticate the token.

## Goals

This documents tries to describe the following goals:

- Routable tokens to be decode by HTTP Router
- Capture and describe usage of existing tokens
- Define support for many encryption keys
- Define the pattern allowing online encryption keys rotation
- Deprecate and remove legacy encryption keys, or legacy strategies
- Unify storing of secrets and tokens
- Move away from `attr-encrypted` to use a single secrets framework
- Introduce transit/shared key to be used with Org Mover

## Non-goals

This document is not meant to re-asses the need for the secrets,
their lifecycle or how they are managed by the application.

### Tokens and cookies

The list of tokens at a current moment is shared as a [Google Spreadsheet](https://docs.google.com/spreadsheets/d/1n54lCX2axsTIt8DZBRFj9p44s6YcFp-UechVEHEim8Y/) to ease editing.

### Secrets

This document focuses only on Routable Tokens, not secrets stored at rest, like `CI Variables`.

### Encryption keys

All (or almost all) tokens today are encrypted with a single `db_key_base` secret stored in `secrets.yml`.
This single secret used makes it impossible to rotate tokens for a live system.

## Existing implementation

### TokenAuthenticatable

Majority of the tokens in application use `TokenAuthenticatable` framework making it easy to change how the token is generated. Only some of the tokens use a custom `generator`.

```ruby
module Clusters
  class AgentToken < ApplicationRecord
    add_authentication_token_field :token,
      encrypted: :required,
      token_generator: -> { Devise.friendly_token(50) },
      format_with_prefix: :glagent_prefix
  end
end
```

All places that are today using `TokenAuthenticatable`:

```ruby
app/models/application_setting.rb:  add_authentication_token_field :runners_registration_token, encrypted: :required
app/models/application_setting.rb:  add_authentication_token_field :health_check_access_token
app/models/application_setting.rb:  add_authentication_token_field :static_objects_external_storage_auth_token, encrypted: :required
app/models/application_setting.rb:  add_authentication_token_field :error_tracking_access_token, encrypted: :required
app/models/project.rb:  add_authentication_token_field :runners_token,
app/models/group.rb:  add_authentication_token_field :runners_token,
app/models/personal_access_token.rb:  add_authentication_token_field :token,
app/models/deploy_token.rb:  add_authentication_token_field :token, encrypted: :required, format_with_prefix: :prefix_for_deploy_token
app/models/user.rb:  add_authentication_token_field :incoming_email_token, token_generator: -> { self.generate_incoming_mail_token }
app/models/user.rb:  add_authentication_token_field :feed_token, format_with_prefix: :prefix_for_feed_token
app/models/user.rb:  add_authentication_token_field :static_object_token, encrypted: :optional
app/models/operations/feature_flags_client.rb:    add_authentication_token_field :token,
app/models/clusters/agent_token.rb:    add_authentication_token_field :token,
app/models/ci/build.rb:    add_authentication_token_field :token,
app/models/ci/runner.rb:    add_authentication_token_field :token,
ee/app/models/scim_oauth_access_token.rb:  add_authentication_token_field :token, encrypted: :required, format_with_prefix: :prefix_for_token
ee/app/models/ee/group.rb:      add_authentication_token_field :saml_discovery_token, unique: false, token_generator: -> { Devise.friendly_token(8) }
```

Currently the strategy that `TokenAuthenticatable` uses is deduced based on hash parameters,
and sometimes there are many strategies hidden behind the name:

```ruby
  add_authentication_token_field :token,
    digest: true,
    format_with_prefix: :prefix_from_application_current_settings
```

That configuration implies usage of the sha256 hashing function with salt stored as `token_digest`.
If the `fallback: true` is additionally configured it will try to get/check token by plaintext value in `token` value when trying to access it.

```ruby
  add_authentication_token_field :token, encrypted: :required, format_with_prefix: :prefix_for_deploy_token
```

That configuration encrypts tokens using `db_key_base`. The `encrypted:` in fact at somepoint changed it's encryption scheme and introduced dynamic nonce generated from the token itself. However, that change uses
the same column `token_encrypted` for both so we do not know which values stored use which scheme:

- Old with static nonce: `#{base64}`: `aes256_gcm_decrypt(base64_decode(token_encrypted), nonce: db_key_base[0:12])`
- New with dynamic nonce: `|#{base64}#{nonce}`: `aes256_gcm_decrypt(base64_decode(token_encrypted[1..-12]), nonce: token_encrypted[-12..])`

```ruby
    add_authentication_token_field :token,
      encrypted: :optional,
      expires_at: :compute_token_expiration,
      format_with_prefix: :prefix_for_new_and_legacy_runner
```

In this case since encryption is optional, if token is being accessed it is to also be checked by plaintext value stored in `token` column.

### attr_encrypted

This framework is used to store encrypted data at rest. It is not required to change `attr_encrypted` usage by Routable Tokens. However, there would be a big benefit of moving away from using `attr_encrypted` framework in favour of using a single `TokensAuthenticatable` as a single framework to offer encryption of data at rest, with an ability to manage many keys.

## Proposal

There are two changes proposed in this document:

- Routable Tokens: directly required by Cells 1.0.
- Support for many encryption keys: directly required by Org Mover to be able to re-encrypt data stored at rest.

### Routable Tokens

This proposal is to make all tokens to encode Routable information about object
for which the token is attached. This document does focus specifically first on tokens
that are required to be made Routable in Phase 4: Personal Access Token, CI Job Token and CI Runner Token:

- Currently tokens are generated with the follow pattern: `<prefix>-<random-string>`.
- The Routable Token would change the `<random-string>` to become a `<payload>` that is base64 encoded.
- The `<payload>` encodes a easily decodable information about the cell.
- The tokens as stored and validated by the application would not change. We would still store the whole token
  as-is and validate it by value as we are doing today. This is contrary to JWT which usually a signature is used
  to validate authenticity of the token itself.
- The ability to decode `<payload>` is a feature at least now reserved for HTTP Router.
- The `<payload>` is `base64` encoded structured string that is line delimited.
- Each line starts with a character indicating a type of value it describes.
- The high entropy of a token is provided by required usage of `r:` param with a random string, so the token cannot be forged.
- The `base64` encoding should not change a character set of a random string. Looking at existing character sets used for secret detection it is important to ensure that tokens follows the `<prefix>-[0-9a-zA-Z_-]*` format. It seems to be valid to use `Base64.urlsafe_encode64` to force the usage of the `[0-9a-zA-Z_-]` character set.

### Pseudo code generation

The Routable Token pseudo code generation:

```ruby
def generate_pat(user, project)
  params = {
    c: Gitlab.cell.id,
    o: project.organization_id,
    u: user.id,
    r: Devise.friendly_token(16)
  }

  payload = params.map { |k, v| "#{k}#{v}" }.join("\n")

  "glpat-#{Base64.urlsafe_encode64(payload, padding: false)}"
end
```

For example the token `glpat-YzEwMApvMQp1MTAwCnJkMWMzNDc1ODAzYThjN2VhZDJlMDUzZGE2OTA4ZjQ2Yg` encodes
the following payload:

```text
c100
o1
u100
rd1c3475803a8c7ead2e053da6908f46b
```

### Integration into Token Authenticatable

The Routable Token is meant to be integrated into TokenAuthenticatable as a first-class
supported syntax. Once the `routable_token:` is used, it will change how the payload is generated.
The usage of `routable_token:` is conflicting with `generator:` which sometimes is to be used to generate
a different random string.

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

We intentionally encode more information to be able to change over-time the routing criteria
by modifying HTTP Router rules. The HTTP Router would introduce a stage of processing information:
`validate`. Initially we would support only `base64-line-delimited`. At later point we could support
decoding other payloads, like `JWT` tokens.

```json
[
  {
    "match": [
      {
        "type": "header",
        "key": "PRIVATE-TOKEN",
        "value": "^glpat-(?<payload>.*)$"
      }
    ],
    "validate": [
      {
        "type": "base64-line-delimited",
        "key": "decoded",
        "value": "{payload}"
      }
    ],
    "action": "classify",
    "classify": {
      "type": "CellID",
      "value": "{decoded.c}"
    }
  }
]
```

#### HTTP Router support for JWT tokens

The [JWT](https://en.wikipedia.org/wiki/JSON_Web_Token) is built from 3 different dot separated base64 url encoded sections:
JSON header, JSON payload and signature.

```json
[
  {
    "match": [
      {
        "type": "header",
        "key": "CI_JOB_JWT",
        "value": "^(.*)\.(<payload>\.(.*)$"
      }
    ],
    "validate": [
      {
        "type": "base64-json",
        "key": "decoded",
        "value": "{payload}"
      }
    ],
    "action": "classify",
    "classify": {
      "type": "CellID",
      "value": "{decoded.cell_id}"
    }
  }
]
```

Potentially we could also support checking JWT signature:

```json
[
  {
    "match": [
      {
        "type": "header",
        "key": "CI_JOB_JWT",
        "value": "^(?<jwt_token>.*\.(?<payload>)\..*)$"
      }
    ],
    "validate": [
      {
        "type": "jwt-signature",
        "key": "env.GITLAB_CI_JWT_PUBLIC_KEY",
        "value": "{jwt_token}"
      },
      {
        "type": "base64-json",
        "key": "decoded",
        "value": "{payload}"
      },
    ],
    "action": "classify",
    "classify": {
      "type": "CellID",
      "value": "{decoded.cell_id}"
    }
  }
]
```

### Change how TokenAuthenticatable defines what strategy to use

- Remove the usage of `encrypted:`, `digest:` and `fallback:` and instead use `strategy:`
  and `fallback_strategies:` to clearly describe all different use cases.
- Remove the usage of `digest: true` as a `strategy:`, in a interim period allow to use
  it as a `fallback_strategy:`.
- Extend `secrets.yml` to support many named `db_key_base`.

```ruby
class PersonalAccessToken
  add_authentication_token_field :token,
    strategy: :generated_nonce,
    fallback_strategies: [:legacy_digest],
    format_with_prefix: :prefix_from_application_current_settings,
    routable_token: {
      c: -> (token) { Gitlab.cell.id },
      o: -> (token) { token.user.user_preference.home_organization_id },
      u: -> (token) { token.user.id }
    }
end

class Ci::Runner
  add_authentication_token_field :token,
    strategy: :generated_nonce,
    fallback_strategies: [:legacy_generated_nonce, :legacy_static_nonce, :legacy_plaintext],
    expires_at: :compute_token_expiration,
    format_with_prefix: :prefix_for_new_and_legacy_runner,
    routable_token: ...
end
```

This change would imply the following:

- A strategy is meant to only implement a single way to store encrypted information. As such a new strategy
  should be introduced if encryption scheme changes.
- A `legacy_*` strategies depends on usage of `db_key_base`.
- A `legacy_*` can only be used as a `fallback_strategy`.
  As such legacy strategies cannot be used to store new data.
- A new strategy `generated_nonce` is introduced that supports new `secrets.yml:encryption_keys` which retains
  information about used encryption key hash.
- A new strategy `generated_nonce` requires an introduction of a new column to store structured
  information about the encryption scheme used: `<token>_payload_json jsonb`.
- The `jsonb` column would hold a structured information about strategy used,
  used encryption key (hash of it), and ciphertext. Ex.: `{"strategy": 100, "key_hash": "fingerprint of encryption key", "ciphertext": "payload", "iv": ...}`.
- The `<token>_payload_json` would be null for all legacy keys. We expect to migrate
  all existing legacy tokens to `<token>_payload_json`.
- The usage of `json` would allow us to add temporary or permanent indexes to look for
  all tokens using a particular `key_hash`.

The `secrets.yml` structure:

```yaml
production:
  db_key_base: 123dbkeybasesecret # legacy encryption key
  encryption_keys:
    default: 123dbkeybasesecret # a current encryption key used, it is ok to re-use `db_key_base`
    fallback:
      2021_01_01: abcdef123567890 # a first fallback key used for decrypting data
      2023_01_01: abcdef123567890 # a second fallback key used for decrypting data
    shared:
      org_mover: abcdef123567890 # a name of shared key used by a particular org mover instance
                                 # there could be many shared keys
```

## Integration phases

1. Reconsider how the `TokenAuthenticatable` defines strategy for storing tokens. In particular evaluate an ability to support many encryption keys.
1. Ban usage of `digest:` for storing tokens in database.
1. Change `Personal Access Token` to use encryption instead of `digest` to allow this token to re-encrypted.
1. Extend `TokenAuthenticatable` framework with ability to generate Routable Tokens.
1. Update `PersonalAccessToken`, `Ci::Runner` and `Ci::Build` tokens generation to include an information about the cell, user, project that would make those token routable.
1. Change all other tokens to use `TokenAuthenticatable` framework. Get rid of `attr_encrypted`. Re-implement strategies used by `attr_encrypted` on top of `TokenAuthenticatable` framework.
1. Phase-out usage of `db_key_base` key, use it only for old keys. Introduce a new `encryption_keys:` in `secrets.yml`.
1. Introduce `fallback` keys as an additional encryption secrets that are used to decrypt existing tokens.
1. Introduce `shared` keys to allow to be used with Org Mover. The secret will be used to re-encrypt all user data with a shared key before it is moved to another Cell. Then the user data will be re-encrypted with designed cell key.
1. Ban use of `attr_encrypted` or usage of custom made encryption frameworks to store secrets in database.
1. Make all existing tokens routable by injecting additional metadata.

## Problems

- Passing `CI Job Token` as part of [POST body](https://docs.gitlab.com/ee/ci/jobs/ci_job_token.html#to-authenticate-a-rest-api-request).
- Passing `CI Trigger token` as part of [POST body](https://docs.gitlab.com/ee/ci/triggers/#use-curl).
- Number of tokens stored use digest (mostly `sha256` with salt) in database making it impossible to rotate.
- Some tokens use its own implementation instead of `TokensAuthenticatable`, like `EE::Project#external_webhook_token`.

## Questions

1. Application has a number of existing tokens generated in an old way. What happens with the legacy tokens?

This document assumes that tokens have expiry date set. It means that over-time most of tokens will be rotated
by the user. For tokens that cannot this document assumes that: they will be tied always to Cell 1, and as such
migrating organization to Cell 2 will imply that all tokens used by organization are rotated first before
they can be migrated. This to be happen by the organization itself.

## References

- https://docs.gitlab.com/ee/security/token_overview.html#token-prefixes
