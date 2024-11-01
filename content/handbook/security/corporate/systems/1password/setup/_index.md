---
title: 1Password Setup Guide
---

You will receive an invitation to get started in your email on your first day. You will get access to service or team-specific vaults in your onboarding or through access requests.

As an added benefit, we give all team members a free [family account](https://support.1password.com/link-family/) for securing your personal passwords as well in two separate accounts with respective vaults.

- [Vendor Docs - Getting Started](https://support.1password.com/explore/team-member/)
- [Vendor Docs - Install Password on Mac](https://support.1password.com/get-the-apps/?mac)
- [1Password Chrome Extension](https://chromewebstore.google.com/detail/1password-%E2%80%93-password-mana/aeblfdkhhhdcdjpifhhbdiojplfjncoa?hl=en&pli=1)
- [Vendor Docs - Getting Started on Mac](https://support.1password.com/getting-started-mac/)
- [Vendor Docs - Save and Fill Passwords](https://support.1password.com/save-fill-passwords/)
- [Vendor Docs - Sharing a Password Securely](https://support.1password.com/share-items-security/)

## Troubleshooting Tips

### Admin Account 1Password Extension Integration

For users with access to secondary 1Password accounts, please make sure that the 1Password Chrome extension in your Black Chrome profile is NOT set to automatically integrate with the desktop app. This setting may re-enable itself after a major 1Password or Chrome update.

1. In the top right corner of Chrome, click the **plugin icon** (puzzle piece), click the **3 dots** dropdown menu next to 1Password, then choose **Settings**.
2. In the **General** section in the left sidebar, ensure that `Integrate this extension with the 1Password desktop app` is disabled.
3. In the left sidebar, navigate to **Accounts & vaults**.
4. If your normal user account (`{handle}@gitlab.com` and not `{handle}-admin@gitlab.com`) is listed, click the three dots and choose **Sign Out**. Repeat these actions for any other accounts that appear (ex. your personal 1Password email address).
5. If your admin account is not listed, click **Sign in to another account**. After redirecting to the 1Password website, choose the `gitlab.1password.com` tile and verify that your `{handle}-admin@gitlab.com` email address is shown, then type in your master password.
6. The 1Password extension in the top right corner should now show your admin creentials.
