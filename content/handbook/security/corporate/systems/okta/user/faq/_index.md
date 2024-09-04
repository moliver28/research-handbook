---
title: Okta User FAQ
---

## Frequently Asked Questions

If you have a question that is not answered here, please ask in `#it_help` on Slack or create an issue in the [Corporate Security Issue Tracker](https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new?issuable_template=okta_user_default).

### GitLab.com 2FA

> Why does GitLab.com ask for an additional MFA when I login using Okta?

Your gitlab.com account will have 2FA installed as required by our policy.

Note that the 2FA for GitLab.com is different to the MFA you use to log into Okta.

[This issue](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/7397) has been opened to propose a solution.

### Android Authentication Errors

> When adding my GitLab Google Workspace account to my Android device, the biometrics or security key verification never prompts after signing in to Okta.

When attempting to add a Google Workspace account to an Android device, Okta authentication proceeds in the Android's embedded browser (WebView).

Since [Okta does not support embedded web browsers for WebAuthn based verification](https://help.okta.com/en-us/Content/Topics/Security/mfa/webauthn-compatibility.htm), which causes an issue where nothing prompts you after you sign-in to Okta, so you cannot add the Google Workspace account to Android devices.

Please reach out to the `#it_help` Slack channel to request us to temporarily enable Okta Verify as a workaround.

### Browser Plugin

The Okta Browser Plugin is optional.

GitLab is using Secure Web Authentication (SWA) for some of its apps, and the Okta plugin is necessary to work with these applications. For applications that support SAML (most of them), the plugin is not necessary.

[Vendor Docs](https://help.okta.com/en-us/content/topics/browser-plugin/browser-plugin-main.htm)

### How can I change the order in which my apps appear?

You can click and hold on an app icon to drag and drop the app to the location that you would like it to be displayed.

### Bookmarks

A bookmark is a way to save the URL login of an app not currently available to you. When you create a new bookmark, your Okta dashboard will display an app icon to that app URL login. This bookmark will only store the URL, not your username and password.

To add a bookmark, go to the `+Add Apps` button on the top right of your dashboard to open a search menu. Search for your app. If no app is found, Okta will display the option to create a bookmark.  Enter the URL of the app and the name of the bookmark you would like displayed. Click the **Add** button to create your bookmark. Click on **Home** at the top of your dashboard to see your new bookmark.

### Remove Unused App

> How do I remove an app?

Apps that you've installed can be removed by hovering over the app and selecting the gear icon. In the app setting screen, you'll see the option to delete it.

Apps granted by Corporate Security or the tech stack owner cannot be removed, but there is a way to move the app out of sight. The best way to do so is to create a new tab to store unused and unwanted applications.

### Searching for Apps

> How do I search an app if I can't remember which tab I put it on?

At the top of your dashboard, you can find apps in the **Launch App** search bar. If you can't remember which tab your app is on, go to the Launch App search, type in the name of your app and select the name to open it when it appears.

### Application Data Privacy

> Does Okta store our information entered into apps like BambooHR, NexTravel, Carta etc?

No, Okta only acts as an integrator to the various apps. The information that the user stores inside of the app, is not accessible by Okta. The usernames and passwords (user credentials) are encrypted using both an industry-­standard encrypted AES and a randomly generated symmetric key.

### Session Expiration

> How long does my login last until I need to re-authenticate?

Okta does not log you out of your applications even though you might be logged out of your Okta session.

Okta has two controlled re-authentication parameters -- Factor Lifetime and Session Lifetime.

Factor Lifetime: Setting a factor lifetime is a way for end users to sign out for the amount of time noted in the Factor Lifetime and not have to authenticate again with MFA at the next sign in. End users must check a box to confirm that the setting should be applied. We have configured this to be 15 minutes. If you are logging on with a machine that isn't your usual device, make sure you don't check this button!

Session Lifetime: The maximum idle time before an authentication prompt is triggered. We have configured this to be 16 hrs. This is the more significant factor to note in relation to authentication, and should mean that if you log into the Okta dashboard using MFA, you should not be prompted for any additional authentication during your working day unless a specific application requires you to re-auth. For most people, this creates a straightforward daily process where they log into Okta once at the start of their day, and can keep their browser open to access applications for the rest of the day.

If you are having issues with excessive authentication requests, please [log an issue](https://gitlab.com/gitlab-com/business-technology/change-management/) and we will investigate.

### Google OAUTH

> Is it acceptable to continue using Google Oauth login for some of the apps (with its own 2FA)?

Yes, this is fine. Our end state will be to use Okta for most/all applications, but in the meantime existing authentication methods are fine. Once we have broader user adoption of Okta, we'll be taking on migration of some of these apps to use Okta instead of Google OAuth, where this makes the most sense.

### Outages

When Okta is down, basically GitLab will be down. Any mitigation strategy would enlarge our security surface area.

Okta is built on an *always on* architecture. However, if their services were to go down, you would not be able to log in to Okta or access your applications using single sign‐on.

Many applications have long lived sessions (ex. Slack, Gmail, GitLab) so it is likely that although not all applications would work, you could still get by with a few, or take a break for a while.

Any outages or incidents that are significantly disruptive will be posted in `#whats-happening-at-gitlab` on Slack.

### Emergency Contacts

We have 24x5 coverage in `#it_help` on Slack. Our Helpdesk Analysts will escalate to the CorpSec Engineers as needed.

In a Slack thread, tag `@sysowners-okta`. In a GitLab issue, tag `@gitlab-com/gl-security/corp/systems/okta`. You can hover over these group names in the respective app to see the latest list of members.

Weekend response is based on a best effort and will likely have a delayed response.
