---

title: "Okta FAQs"
---







Below are frequently asked questions about Okta and GitLab's implementation of it. If you have an additional question that is not listed here, please ask in #it_help.

## How do I use Okta to log into an application?

1. Visit [gitlab.okta.com](https://gitlab.okta.com) and you'll see a list of applications available to you.
2. Search for the application you want to log into and then click on it.
3. This will open a new tab and should automatically log you in.

*If you are having issues logging into an application with Okta SSO, please post in the `#it_help` channel in Slack. Please include a screenshot of the error that you're seeing.*

## How will Okta support GitLab's account creation?

The activation workflow is triggered by the creation of account within Workday.

## Which browsers does Okta work on?

Okta supports Firefox, Safari and Chrome.

## What is a plugin?

Plugins are applications that can easily be installed and are used as a part of a web browser.

## Do I have to use a plugin?

GitLab is using Secure Web Authentication (SWA) for many of its apps, and the Okta plugin is necessary to work with these applications. For applications that support SAML, the Plugin is not necessary. GitLab recommends all users install the browser plugin as required.

## Is it safe to install the Okta plugin?

Yes, the Okta plugin is very safe to install.

## How do I create a new tab?

To create a new tab, click on the '+' sign next to the last tab. You will be asked to enter a new tab name (for example, "Personal"). Enter the new name of the tab and click save to create it.

## How many tabs can I have?

You can have up to five tabs.

## How do I delete a tab?

To delete a tab, you will need to move all applications out of that tab into another one.  Once the tab has been emptied you will see a Delete Tab option.  Select that option and your tab will be deleted.

## How do I request an app to be added?

Application Requests are managed via a [Change Management Issue](https://gitlab.com/gitlab-com/business-technology/change-management/-/issues/new?issue%5Bmilestone_id%5D=#) within the Business Technology team. Please use the `okta_new_app_request` template to ensure all required information fields are inputted.

[All new software must go through Procurement](/handbook/finance/procurement/new-software/) before being added to Okta.

**Things to consider before opening a request:**

   - Has the Vendor Representative (AE, CSM) confirmed that SSO, SAML or SCIM is supported?
      - Please set up a call with a technical contact for the vendor and start an email thread to confirm available features for SSO and automated user management.
   - How should user creation, updates, and deactivation be processed?
   - Which groups of users need access to this? An exact list of existing Google groups or a list of users will be needed.
   - **Timeline:** Please allow up to *4 weeks* for an application integration to be completed. If the request is urgent, please tag your manager and explain the urgency and requested date of completion.

## How do I request an app to be updated?

Application Update Requests are managed via a [Change Management Issue](https://gitlab.com/gitlab-com/business-technology/change-management/-/issues/new?issue%5Bmilestone_id%5D=#) within the Business Technology team. Please use the `okta_existing_app_udate` template to ensure all required information fields are inputted.

## How can I change the order in which my apps appear?

To change the order of your apps, click and hold on an app icon, then drag and drop the app to the location you would like it to be displayed.

## How do I move an app from one tab to another?

To move an app from one tab to another, click and hold on the app icon, then drag and drop your app to the new tab.

## How do I remove an app?

Apps you've installed can be removed by hovering over the app and selecting the gear icon. In the app setting screen, you'll see the option to delete it. Apps issued by the GitLab Okta administrator cannot be removed, but there is a way to move the app out of sight. The best way to do so is to create a new tab to store unused and unwanted applications.

## What is a bookmark?

A bookmark is a way to save the URL login of an app not currently available to you. When you create a new bookmark, your Okta dashboard will display an app icon to that app URL login. This bookmark will only store the URL, not your username and password.

## How do I add a bookmark?

To add a bookmark, go to the "+Add Apps" button on the top right of your dashboard to open a search menu. Search for your app. If no app is found, Okta will display the option to create a bookmark.  Enter the URL of the app and the name of the bookmark you would like displayed. Click ‘Add’ button to create your bookmark.  Click on "Home” at the top of your dashboard to see your new bookmark.

## How do I Search an app if I can't remember which tab I put it on?

At the top of your dashboard, you can find apps in the "Launch App" search bar. If you can't remember which tab your app is on, go to the Launch App search, type in the name of your app and select the name to open it when it appears.

## Does Okta store our information entered into apps?

No, Okta only acts as an integrator to the various apps. The information that the user stores inside of the app, is not accessible by Okta. The usernames and passwords (user credentials) are encrypted using both an industry-­standard encrypted AES and a randomly generated symmetric key.

## What’s the difference between SWA and SAML?

**SWA** - A SWA integration provides single sign-on for apps that don't support proprietary federated sign-on methods; it works with any web-based app.  If your SWA app integration is successful, the following happens when end-users click the app chiclet:

- The username and password fields are populated.
- Users are signed in to the app automatically.

**SAML** - A SAML (Security Assertion Markup Language) integration provides Federated Authentication standards that allow end users one-click access to the app.
SAML is an XML-based standard for exchanging authentication and authorization data between an identity provider (IdP) such as Okta, and a service provider (SP).
If your Application supports SAML, then this is a better Authentication Protocol over SWA. When SAML is enabled Okta will be the Authentication provider for the application, also, this Authentication Protocol will give you more control over your users Authentication behavior.
Okta can authenticate to Cloud Applications using SAML Assertions, a “passwordless” assertion method that is authorised based on a trust decision from Okta based on its authentication policy. This reduces the exposure for credential leakage and eases auditability.

## How do self-service applications work with Okta?

There is an example of this in the Application configuration Video linked on the Okta page. In short, click on the Add Apps button, search for the App you want to request, and click the request button. As a best practice, link in the Access Request issue created so that the Application owner understands the requirements of the request!

## Can the apps be renamed or append their function?

Yes, we can add App Notes to each of the Apps, and will work through them to add intuitive labels. For an example, we have already enabled this on BambooHR and a few others. To configure Apps and improve your user experience, please see the Dashboard Tips video on the Okta main page.

## Is there a reason why my Application is not integrated via SAML2.0?

There are applications that may need conversion to SAML. Please open a [Change Management Issue](https://gitlab.com/gitlab-com/business-technology/change-management/-/issues/new?issue%5Bmilestone_id%5D=#) to request the update.

## What is my username and password for GitLab Okta?

At GitLab, your GitLab email address is your username. If you've forgotten your password, please reach out in #it_help.

## How do I make a safe password?

Okta supports strong passwords through the use of password complexity rules and length, consistent with our password policy. Please follow [GitLab’s Password Policy guidelines](/handbook/security/#GitLab-password-policy-guidelines) to determine the rules.

## How does Multi-­factor Authentication (MFA) work?

Your user credentials are encrypted using both an industry-­standard encrypted AES and a randomly generated symmetric key. This key-­store, containing your symmetric encryption keys, is then encrypted with a master key that is held only in memory and only accessible to the Okta app.  At startup, the app is provided a master passphrase allowing it to access, decrypt, and store the master key in memory. A technical operations administrator at your company inputs the master passphrase. Only a select number of administrators know this master passphrase. As a result, attackers can only decrypt the data if they have the master key, private key, as well as the user's app context.

## Why do I have to input my password for some apps and not others?

With Okta you can access your applications through a single, unified dashboard. Access to these applications is delivered through single sign-­on (SSO) technology via either Security Assertion Markup Language (SAML) or Okta’s Secure Web Authentication (SWA) technology.

With SWA, you may need to enter your username and password upon the first use of that application. If an app requires you to make a password change, you should do so within the Okta dashboard. With SAML, Okta automatically passes on access via a token, so you don’t need to manually make a change when the app requires an update.

## How do I change my password for an app?

To change your password for a specific application, hover your mouse over the app's icon. Click the gear to go to settings, which should open a menu that gives you the option to change your password for that specific application.

If you are not able to update the username and password, contact GitLab Okta support or the ITOps team.
Can I be confident my password is safe?
Yes, nobody (including GitLab administrators or IT support) have access or visibility into your password data.

## Where & how is my username and password stored?

Okta uses strong encryption to secure data and uses strong (256-­bit AES) encryption for username and password credentials. This information is stored and maintained by Okta.

## How long does my login last until I need to re-authenticate?

Okta has two controlled re-authentication parameters -- Factor Lifetime and Session Lifetime.

Factor Lifetime: Setting a factor lifetime is a way for end users to sign out for the amount of time noted in the Factor Lifetime and not have to authenticate again with MFA at the next sign in. End users must check a box to confirm that the setting should be applied. We have configured this to be 15 minutes. If you are logging on with a machine that isn't your usual device, make sure you don't check this button!

Session Lifetime: The maximum idle time before an authentication prompt is triggered. We have configured this to be 4 hrs.

If you are having issues with excessive authentication requests, please [log an issue](https://gitlab.com/gitlab-com/business-technology/change-management/) and we will investigate.

## Can my GitLab Okta admin see my login information?

The GitLab administrator can see your username, but he or she does not have access to your password or any other credentials or devices you use to authenticate.

## Will Okta support our password policy?

Yes, Okta has been configured such that - it adheres to the GitLab password policy and restrictions.

## Will users only use 1Password to store Okta credentials? As part of getting set up in Okta, will we move all of our stored creds from 1Password into Okta (and then delete from 1Password)?

For many applications, that’s correct. The goal will be to focus on Logins in 1Password and migrate as many of them (particularly shared passwords!) to Okta. There are other things like Secure Notes that don’t translate, so we won’t be completely getting rid of 1Password for a while.

## Any app that is already integrated and existing in Okta can be deleted from 1Password?

Yes, once you’ve put the credentials in Okta, you may delete it from 1password.

## Is it acceptable to continue using Google Oauth login for some of the apps (with its own 2FA)?

Yes, this is fine. Our end state will be to use Okta for most/all applications, but in the meantime existing authentication methods are fine. Once we have broader user adoption of Okta, we’ll be taking on migration of some of these apps to use Okta instead of Google OAuth, where this makes the most sense.

## Will Okta only be used for work-related credentials?  If so, how will it be enforced?

At this time there is nothing stopping someone from using personal credentials. See the video created about configuring Apps for more details.

## Does Okta have any visibility into MFA?

MFA is strictly enforced on Okta. This acts as a gateway to the services it manages.  So those services, in effect require MFA via Okta login.

## Will Okta be used to prevent logins from particular devices or conditions?

Yes, via Okta Device Trust and IP-based controls based on threat intelligence feeds.

## Why does my Okta session expire but some of the apps are still open?

Okta does not log you out of your applications even though you might be logged out of your Okta session.

## What happens if Okta goes down?

Okta is built on an “Always On” architecture. However, if their services were to go down, you would not be able to log in to your GitLab Okta platform and access your applications via Single Sign‐On. However, some applications might still be accessible through a direct link.
When Okta is down, basically GitLab will be down. Any mitigation strategy would enlarge our security surface area.

## Even though it’s rare or unlikely, what is our policy with regard to what employees should do in the event Okta is down? Just wait for it to come back, or is there some backup plan?

When Okta is down, we are down. Any mitigation strategy would enlarge our security surface area.
Okta is built on an “Always On” architecture. However, if their services were to go down, you would not be able to log in to your GitLab Okta platform and access your applications via Single Sign‐On. However, some applications might still be accessible through a direct link.

## Who do I contact in case of Okta emergencies?

Please reach out to #it_help channel on Slack.

## Is there any automated reporting? (e.g. Can we access logs emailed to the team and use that to kick off an access review?)

No, this does not exist within Okta.  But this should be something security automation team can help with. There are some automated security notifications already enabled for things like MFA or password changes, as well as connections from new and unrecognised devices. GitLab is able to perform reporting on these based on built-in reporting.

## What are some things Okta won’t be able to do yet?

Automating access requests is one such thing. Manager approval is not possible with Okta as yet. We are working towards other ways and means to achieve this.

## Does Okta integrate with a VPN provider that will allow everyone at GitLab (team members) to use a company wide VPN?

There is capacity to do this, but further research is needed to understand the application use case for this. At this stage, requirement for VPN is not enabled.

## For those of us who used our GitLab personal account when we were onboarded, what happens to my GitLab account when I am offboarded? Does Okta change anything about this, or any policy changes around accounts that might make it important for me to use a company account name?

For users who started prior to 2020-03-23, they are removed from GitLab groups. When offboarding happens, your Okta account and related accounts is Deactivated.
