---
title: "YubiKey User Guide for GitLab.com User Accounts"
description: "This guide shows you how to add your YubiKey as a 2FA authenticator on your GitLab.com SaaS or self-managed instance account."
---

## Pre-Requisites

1. You should already be signed into https://gitlab.com or the GitLab instance with the user account that you are using your YubiKey with.
1. Your YubiKey should already be inserted into a USB port on your computer, monitor, or docking station.

## Enrolling your YubiKey

You will be enrolling your YubiKey as a WebAuthn device.

1. In GitLab, click on your avatar picture in the top left corner and choose **Preferences**. You can also visit [https://gitlab.com/-/profile/preferences](https://gitlab.com/-/profile/preferences).
2. In the left sidebar, navigate to **Account**.
3. In the `Two-factor authentication` section, click the **Enable Two-Factor Authentication** or **Manage two-factor authentication** button.
4. In the `Register a WebAuthn device` section, click the **Set up new device** button.
5. If you have the 1Password browser extension installed, a `Save passkey` window will appear and you should click on the **USB key icon in the top right corner**. If you do not see this window, proceed to the next step.
6. You will be prompted by Chrome to `Create a passkey`. Click the `Use a phone, tablet, or security key`. In some cases, you can **take a shortcut and touch the gold contacts on the YubiKey** and it will auto recognize it and skip the QR code window.
7. When the QR code appears, you will see a message at the bottom `If you want to create a passkey for gitlab.com on a USB security key, insert and touch it now. **Touch the gold contact on your YubiKey**.
8. You will be prompted for your `Current password` and to provide a `Device name`. Use `YubiKey 5 Nano FIPS` or `YubiKey 5 NFC FIPS` for the device name based on the model that you are using to easily identify it. You can use a different device name at your discretion if you want to be more specific to identify your key.
9. You will now see the new YubiKey listed under the WebAuthn devices list.
10. To test your YubiKey, you should sign out and sign back in by clicking on your avatar in the top left corner and choosing `Sign out` from the drop down menu.
11. When signing in, you may see a Touch ID pop up. This will still recognize your YubiKey when you press the gold contacts instead of using Touch ID.
12. After you touch your key, you will see a message that will appear for just a moment with `We heard back from your device...` and you will be redirected to your dashboard in GitLab.

See the [GitLab documentation](https://docs.gitlab.com/ee/user/profile/account/two_factor_authentication.html#set-up-a-webauthn-device) for additional assistance.

## Sign In with your YubiKey

When signing in to `https://gitlab.com` or another GitLab self-managed instance that you have enrolled your YubiKey in, you will be prompted for your two factor authentication after attempting to sign in with your username and password. Due to vendor user experience that we can control, this may be presented as a prompt for Mac Touch ID or a Passkey. Simply **touch the gold contact on your YubiKey** and it will automatically authenticate.

## Lost YubiKey

Please reach out to `#it_help` for assistance with resetting your two factor authentication.
