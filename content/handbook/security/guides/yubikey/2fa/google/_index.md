---
title: "YubiKey User Guide for Google"
description: "This guide shows you how to add your YubiKey as a 2FA authenticator on your Google account."
---

## Using your YubiKey

**Do not enroll your YubiKey with your Google account since it would require configuring a pin on your YubiKey that has technical limitations with Okta authentication policies that use your YubiKey.**

Due to conflict with Okta 2FA that does not allow a pin to be set (authenticator will be recognized as a generic `Authenticator` instead of `YubiKey 5 FIPS` that is used by authentication policy string matching), you would need to configure Slot 1 (short press) without a pin and Slot 2 (long press) with a pin using the YubiKey manager software.

Since we have Okta configured as our SSO Identity Provider (IdP), you will be redirected to Okta to sign in (that will use your YubiKey for that authentication) without needing to use 2FA in Google separately.

If you do accidentally configure a pin on your YubiKey, it is likely that we will need to reset your YubiKey and re-enroll it on all applications that you have it enrolled in.

## Sign In with your YubiKey

When signing in to your Google Account, you will be redirected to Okta usually since it is configured as our SSO Identity Provider (IdP). Since Google has long lived sessions by default, we use Google 2FA with your YubiKey when accessing sensitive Google services to verify that it's you.

Due to vendor user experience that we cannot control, this may be presented as a prompt for Mac Touch ID, QR code, or Passkey. Simply **touch the gold contact on your YubiKey** and it will automatically authenticate.

## Lost YubiKey

Please reach out to `#it_help` for assistance with resetting your two factor authentication.
