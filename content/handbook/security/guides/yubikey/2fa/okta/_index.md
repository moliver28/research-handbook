---
title: "YubiKey User Guide for Okta"
description: "This guide shows you how to add your YubiKey as a 2FA authenticator on your Okta account."
---

## Pre-Requisites

1. Your YubiKey should already be inserted into a USB port on your computer, monitor, or docking station.

1. This assumes that you can already sign in to Okta with a different 2FA factor (ex. Touch ID or another YubiKey). The initial two factor configuration for an Okta account is covered in the onboarding guide.

1. Your YubiKey cannot be configured with a pin. If you have already configured it with a pin, you should use the YubiKey Manager to configure Slot 1 (short press) and Slot 2 (long press) so one of the FIDO slots does not have a pin and use that slot for Okta authentication. Okta has a technical limitation where any YubiKey slot with a pin is recognized a generic authenticator and not as a `YubiKey 5 FIPS` series that is used for string matching with our application authentication policies.

## Enrolling your YubiKey

You will be enrolling your YubiKey as a WebAuthn device.

1. Navigate to [https://gitlab.okta.com](https://gitlab.okta.com) and sign in using your existing 2FA factor (ex. Touch ID).

1. On the Okta dashboard, click on the drop down arrow next to your name in the top right corner of the page and choose **Settings**, or visit [https://gitlab.okta.com/enduser/settings](https://gitlab.okta.com/enduser/settings)

1. In the Security Methods section on the right side, locate the `Security Key or Biometric Authenticator` section and click the **Set up another** button.

    <img src="/handbook/security/guides/yubikey/2fa/images/yubikey-okta-step1-set-up-another.png" alt="YubiKey" style="width: 250px; border: 1px #888 solid; padding: 3px;" /><br />

1. You will be prompted for your Okta password.

    <img src="/handbook/security/guides/yubikey/2fa/images/yubikey-okta-step2-password.png" alt="YubiKey" style="width: 250px; border: 1px #888 solid; padding: 3px;" /><br />

1. When prompted for a passkey, this your **existing** 2FA TouchID or YubiKey, **not the new YubiKey** you are trying to enroll.

    <img src="/handbook/security/guides/yubikey/2fa/images/yubikey-okta-step3-passkey-qr.png" alt="YubiKey" style="width: 250px; border: 1px #888 solid; padding: 3px;" /><br />

1. You will be prompted to set up the new authenticator. Click the **Set up** button, and the **Set up** button again on the next page.

    <img src="/handbook/security/guides/yubikey/2fa/images/yubikey-okta-step4-enroll-button.png" alt="YubiKey" style="width: 250px; border: 1px #888 solid; padding: 3px;" /><br />

    <img src="/handbook/security/guides/yubikey/2fa/images/yubikey-okta-step5-setup-button.png" alt="YubiKey" style="width: 250px; border: 1px #888 solid; padding: 3px;" /><br />

1. If you have the 1Password browser extension installed, a `Save passkey` window will appear and you should click on the **USB key icon in the top right corner**. If you do not see this window, proceed to the next step.

    <img src="/handbook/security/guides/yubikey/2fa/images/yubikey-okta-step6-1password-key.png" alt="YubiKey" style="width: 250px; border: 1px #888 solid; padding: 3px;" /><br />

1. You will be prompted by Chrome to `Create a passkey`. Click the `Use a phone, tablet, or security key`. In some cases, you can **take a shortcut and touch the gold contacts on the YubiKey** and it will auto recognize it and skip the QR code window.

    <img src="/handbook/security/guides/yubikey/2fa/images/yubikey-okta-step7-chrome-key.png" alt="YubiKey" style="width: 250px; border: 1px #888 solid; padding: 3px;" /><br />

1. When the QR code appears, you will see a message at the bottom `If you want to create a passkey for gitlab.okta.com on a USB security key, insert and touch it now`. **Touch the gold contact on your YubiKey**.

    <img src="/handbook/security/guides/yubikey/2fa/images/yubikey-okta-step8-chrome-qr.png" alt="YubiKey" style="width: 250px; border: 1px #888 solid; padding: 3px;" /><br />

1. When prompted for `Allow this site to see your security key?`, press the **Allow** button.

    <img src="/handbook/security/guides/yubikey/2fa/images/yubikey-okta-step9-allow.png" alt="YubiKey" style="width: 250px; border: 1px #888 solid; padding: 3px;" /><br />

1. You will be redirected back to the User Settings page and will see the new `YubiKey 5 FIPS` listed under the `Security Methods` in the `Security Key or Biometric Authenticator` list.

1. **Important Verification:** If the newly enrolled authenticator shows the label `Authenticator` instead of `YubiKey 5 FIPS`, this is due to the YubiKey using a pin that Okta does not recognize as being a YubiKey anymore. You will need to configure Slot 1 (short touch) and Slot 2 (long touch) so that one of your slots does not use a pin and is recognized by Okta to meet GitLab's authentication policies. Please reach out to `#it_help` if you need assistance.

    <img src="/handbook/security/guides/yubikey/2fa/images/yubikey-okta-generic-authenticator-error.png" alt="YubiKey" style="width: 250px; border: 1px #888 solid; padding: 3px;" /><br />

1. Repeat these steps for your secondary/backup YubiKey if you have one.

## Sign In with your YubiKey

When signing in to `https://gitlab.okta.com`, you will be prompted for your two factor authentication after attempting to sign in with your username and password. Due to vendor user experience that we cannot control, this may be presented as a prompt for Mac Touch ID or a Passkey. Simply **touch the gold contact on your YubiKey** and it will automatically authenticate.

Most applications allow Touch ID or YubiKey (any authenticator), while some more sensitive application tiles will require `YubiKey 5 FIPS`. You will see an error if you need to use the YubiKey authenticator instead. It is a personal preference whether or not to remove the MacBook Touch ID authenticator entirely to avoid any confusion.

## Lost YubiKey

Please reach out to `#it_help` for assistance with resetting your two factor authentication.
