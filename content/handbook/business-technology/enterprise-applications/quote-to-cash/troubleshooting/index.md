---

title: "Troubleshooting: True Ups, Licenses + EULAs"
---







## Important Links Internal

- [L&R Notice Board](https://gitlab.com/gitlab-com/support/license-and-renewals/-/issues/1)
- Need Access to [CustomersDot?](https://customers.gitlab.com/admins/sign_in)
    - to get a login to the CustomersDot, by [opening an access request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=Individual_Bulk_Access_Request); remove all systems in the list except for the CustomersDot row.
Make sure to save these credentials as distinct from your regular GitLab credentials.
- Need Access to the [Version Application?](https://version.gitlab.com/users/sign_in)
    - to get a login to the version application, [open an access request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=Individual_Bulk_Access_Request) and remove all systems in the list except for the row for `GitLab DEV` which you will use to OAuth into the application.
Make sure to save these credentials as distinct from your regular GitLab credentials.
- [Kyla's Quote Creation Videos](https://drive.google.com/drive/u/0/folders/1CAXWx2SSXbIIW5bmPv4Lahlv_VPYdJce)
- [Support: Common Licensing, Transaction and Billing Troubleshooting](/handbook/support/license-and-renewals/workflows/license_troubleshooting/)
- [Sales Enablement Renewal Doc](https://docs.google.com/document/d/15WKHS-LxE4c4BbZ4eNREwwH_n_DhX_Q2yzT0OYTNjh0/edit)
- How to create a quote
    - [new subscription quote](/handbook/sales/field-operations/sales-operations/deal-desk/#new-subscription-quote)
    - [amend subscription quote](/handbook/sales/field-operations/sales-operations/deal-desk/#amend-subscription-quote)
    - [renew subscription quote](/handbook/sales/field-operations/sales-operations/deal-desk/#renew-subscription-quote)
- [Quote Approval instruction](/handbook/sales/field-operations/order-processing/#how-to-submit-a-quote-for-discount-and-payment-term-approval)
- [Good resource of helpful links from CSMs](https://gitlab.com/gitlab-com/account-management/commercial/triage/blob/master/LINKS.md)
- [How GitLab.com Subscriptions Work](/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/enablement/dotcom-subscriptions/)

## Important Links for Customers and Prospects

- Resources for Prospects who are trialing and need direction
    - [Get started with GitLab](https://docs.gitlab.com/ee/intro/)
    - [GitLab epics](https://docs.gitlab.com/ee/user/group/epics/)
- [Instructions on how to renew self-managed](https://about.gitlab.com/pricing/licensing-faq/#how-do-i-renew-my-subscription)
- [Customer Facing: Licensing, Renewing, and Subscription FAQ](https://about.gitlab.com/pricing/licensing-faq/)
- [Subscription Setup and Management (user facing)](https://docs.gitlab.com/ee/subscriptions/)

## True-Ups, Adding Seats, Users

### User Counts: True Ups, Add-ons, Users Over License

##### What is a True Up?

A true-up is a back payment for a customer going over their license count during the previous year.
We use the true-up model so that the license never becomes a barrier to adoption for the client.

##### What causes a true-up error?

At renewal, it is possible that our customers have miscalculated the number of true-up users required for their license.

The true-up must match the number of users over license data collected on their admin dashboard or else the license will fail to activate.

Example:

Customer purchased 10 users at the start of their subscription; during the year of their subscription, they had 12 total users in license, adding 2 additional.
Their admin dashboard would read 2 users over license.
At the time of their renewal, they will be responsible for paying for those 2 users over license (as true-up users), along with the number of total number of users they want in the renewal subscription.
If the true-up is not added or has the incorrect number of users over the license, the license key will not work.

The customer is always free to renew for as many users as they would like, even if this number is lower than the previous year; the true-up amount just needs to be paid for in full.

If a customer is having issues obtaining the number of licenses needed to purchase, you can [request a screenshot](/handbook/business-technology/enterprise-applications/quote-to-cash/troubleshooting/#how-to-ask-the-customer-for-a-screenshot-needed-for-users-over-license-with-self-managed) from them or else access their usage ping data through the [version application](https://version.gitlab.com/).
If there is no data available through usage ping, we can conclude that the usage ping has been disabled in the instance, and you will need to obtain this information manually.

##### Customer Question: Why is there a discrepancy between “Maximum Users” and “Users” on the admin dashboard? (self-managed)

Everyday during the subscription, the instance records the Active User count for the day.

The following users *do not* count as billable Active Users:

- Guest users on Ultimate plans
- GitLab generate bots like Support Bot and Alert Bot
- Ghost users
- Blocked users
- Deactivated users

The “Maximum Users” count in the instance refers to this running list of active user counts and displays the maximum value.

##### Customer Question: How do I purchase more user seats for a self-managed instance of GitLab?

Communicate to customer

>>>
- Navigate to the [CustomersDot](http://customers.gitlab.com/admin) and sign in or [reset the password](https://customers.gitlab.com/customers/password/new) if required
- Go to `Manage Purchases`
- Locate the subscription you wish to add more users to and click the button `Add more seats`
- Enter the additional amount of users you wish to have (i.e. you have 50 but want to have 60, so you have to enter 10)
- Click `Proceed to checkout` and finalize the purchase
- You will receive amended license key via email afterward
>>>

## Licenses

##### What is a license?

- A license is only generated for **self-managed** customers or trials - SaaS does not utilize a license.
- The license is generated by our CustomersDot application and the customer will be emailed a license key. The license will also be available in the CustomersDot application.
- It is possible to generate license keys manually.
- If you need access to the license or the version applications, [open an access request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=Individual_Bulk_Access_Request) and remove all systems in the list except for the row `GitLab DEV (required for license and version access)`.
You will use the dev credentials to OAuth into the license and version apps using `login with GitLab` so make sure to save these credentials in a way to differentiate them from your other GitLab credentials.

##### How do I know a license was sent?

When a license is sent, whether automated or manually, an activity is recorded in SFDC on the contact record.

##### How to ask the customer for a screenshot needed for users over license with Self-managed

Communicate to the customer

>>>
To help me provide better support for your renewal I'll need some more information, could you please provide a screenshot following the below instructions?

1. Navigate to Admin Area
1. Click `License` as it's shown [here](https://docs.gitlab.com/ee/administration/img/license_details.png) and send it to me
   - For GitLab.com
1. Navigate to group settings
1. Navigate to billing
   - If you can share the details found there under Maximum Users and Users over License, then I will be able to send a quote over to you.
>>>

##### How can I ask Support to resend a license?

[Open an issue](https://gitlab.com/gitlab-com/support/internal-requests/issues/new?issuable_template=license%20issue) using the `License Issue` template.

##### How do I change the license owner for self-managed instances with license.gitlab

Two options:

Support Request

[Open an issue](https://gitlab.com/gitlab-com/support/internal-requests/issues/new?issuable_template=license%20issue) and request Support to do this.

Self Service: CustomersDot

1. Navigate to the [CustomersDot](https://customers.gitlab.com/admin) admin dashboard
2. Select 'Licenses' from the side menu on the left
3. Find the company account through the search option
4. Select their most recent license that needs to be sent
5. Scroll down to the bottom and select duplicate license
6. After duplicate license change the email address

##### When might a license be manually generated?

Licenses only apply to self managed.

- In order to fix a problem/error: This would generally occur around a renewal after a customer tried to use the Web Store and entered in users counts that didn't match what the system expected.
- In order for a customer to trial a different tier than Ultimate.
- When a reseller has different discount rates for renewals and add-ons.
For this scenario, an order will be created with two lines of the same product but if a license gets automatically created in such case it will only be pulled for the first line of product and won't be complete so this requires manual license creation.
- Licenses are sometimes generated manually when a customer has add-ons for multi-year deals.

##### Manually Generate License for a Trial or to Amend a True Up Problem

*Note: There are no license keys provided for GitLab.com subscriptions*

Please [open an issue](https://gitlab.com/gitlab-com/support/internal-requests/issues/new?issuable_template=license%20issue) and request Support to do this.

For Trial Licenses:

1. Navigate to the [CustomersDot](https://customers.gitlab.com/admin) admin dashboard
2. Select 'Licenses' from the side menu
3. Type in customer name (exactly as it is in Salesforce) or use the domain name in their email address
4. When the license comes up, there might be one or there might be multiple
    - Navigate to the most recent license based on `expires at` date
    - Click on the `Name`
    - Scroll down to `duplicate license`
    - Type in the correct number of users
    - Check the box indicating this is a trial
    - Select the plan: make sure the `starts at` and `expires at` reflect the accurate dates for the trial *because we cannot retract a license* if you accidentally make the expiration date for a year from now they’ll have free access for a year
    - Add notes
    - Click `Create License`
5. The license will automatically be sent to the email you enter, and you can also download the license from that screen and send as an attachment to prospect directly.

Generate License to Amend a True Up Problem (not for trial)

1. Navigate to the [CustomersDot](https://customers.gitlab.com/admin) admin dashboard
2. Select 'Licenses' from the side menu
3. Type in customer name (exactly as it is in Salesforce) or use the domain name in their email address
4. When the license comes up, there might be one or there might be multiple
    - Navigate to the most recent license based on `expires at` date
    - Click on the `Name`
    - Scroll down to `duplicate license`
    - Type in the correct number of users or true-ups
    - Make sure the `starts at` and `expires at` dates are not changed
    - Add notes to give reference as to why you’re amending the license along with the name of the manager who approved the true-up adjustment
    - Click `Create License`
5. The license will automatically be sent to the email on file, and you can also download the license from that screen and send as an attachment to prospect directly.

## Terms (EULAs/TOS/T&Cs)

##### Overview

End User License Agreement (EULA), Terms of Service (TOS), or Term & Conditions (T&Cs) will be referred to generally as "Terms" in this documentation. Terms are applicable to all customers and are required to be accepted before using GitLab (self-managed or .com) even if it's a trial version.

##### When are Terms required to be acknowledged?

- Customers who purchase through the web store are required to acknowledge Terms during the process of purchasing.
- Customers who purchase from Sales accept Terms when they sign the order form.
- Users who want to trial a product.
- Customers who want to upload license to an instance.

##### What about EULA problems?

- [Open an issue](https://gitlab.com/gitlab-com/support/internal-requests/issues/new?issuable_template=EULA) for EULA problems
- [Open an issue](https://gitlab.com/gitlab-com/support/internal-requests/issues/new?issuable_template=license%20issue) for license problems

##### Who accepts the EULA?

The Terms are accepted upon installing the license into the Self-managed instance.

##### What is the difference between Terms (EULA/T&Cs/TOS) and a License?

- A *EULA (End User License Agreement)* or *T&Cs (Terms and Conditions)* are the legal agreements for the terms of use and privacy policy that customers and users must agree to before using our software.
    You can read through them on our [company website.](https://about.gitlab.com/terms/)

- A *license* is a string of characters that is tied to the customer's subscription or trial that has a start and end date.
    Without applying the license, the self managed software won't work as expected.
    It is sent to the customer via email or available for download **after** Terms have been accepted.

##### How to check if a EULA has been sent?

EULAs are no longer sent to the end user.
The Terms are accepted upon installing the license into the Self-managed instance.

## Trials

##### How do I request a trial for SaaS customer?

Submit an issue using the `Plan Change Request` [template](https://gitlab.com/gitlab-com/support/internal-requests/issues).

##### How long do trials last? Where can I see the end date?

Thirty days - you can see the end date if a namespace is on a trial in the CustomersDot admin.

##### How do I request to extend a SaaS trial for a customer?

For trial extensions [open an issue](https://gitlab.com/gitlab-com/support/internal-requests/issues/new?issuable_template=Trial%20Extension).

##### How do I request a tier other than Gold or Ultimate for a customer?

1. [open an issue](https://gitlab.com/gitlab-com/support/internal-requests/issues/new?issuable_template=Plan%20Change%20Request) using the `Plan Change Request` template.
    - **NOTE**: It's not yet possible for users or GitLab employees to directly start a Bronze or Silver trial on a namespace.
    - If one is needed, have the user initiate a Gold trial and then open an issue per the above link using the `Plan Change Request` template to have the plan manually changed.
Implementation of this feature is being discussed in [this epic](https://gitlab.com/groups/gitlab-org/-/epics/3475).

##### Customer Question: how do I setup a SaaS trial?

Communicate to customer

>>>
- Have you created a group?
- If not, please do so; this documentation will help: <https://docs.gitlab.com/ee/user/group/#create-a-new-group>
- When you've created a group try the trial again using the email associated with that group here: <https://customers.gitlab.com/trials/new?gl_com=true>
- If you still run into an error please let me know and I'll have support manually upgrade your trial group.
>>>

##### Trial users who need help

- Trial users are not entitled to access support unless they are sales assisted
- If a prospect working with Sales needs help they should email `trials@gitlab.zendesk.com` and there is no SLA

## Subscription or Plan Problems

##### My customer is unable to apply a purchased subscription to their GitLab.com group

Ask the user to open a [support ticket](https://support.gitlab.com/hc/en-us/requests/new?ticket_form_id=334447)

##### I want to change the plan of a GitLab.com user or group

[Open an issue](https://gitlab.com/gitlab-com/support/internal-requests/issues/new?issuable_template=Plan%20Change%20Request) using the `Plan Change Request` template.

##### I got downgraded to Free/Core after my renewal, what happened?

Always go to customers.gitlab.com and check whether their namespace is linked first.
If not, then ask customer to login in their Web Store account and then click on change linked namespace to do so.
It will resolve this issue.
In case above method does not solves then ask the customer to open a Support ticket.

## Common Questions from Customers

##### Customer Question: Where can I track how many compute minutes I've used?

For individuals on GitLab.com, go to the user settings and at the bottom you see `pipeline quotas` where it shows the usage.
Group settings have a similar page, but they’ll see `Usage Quotas`.

##### Customer Question: I bought a subscription for my personal account, how can I apply it to my group?

*They just need to reassociate it with the group.*

Communicate to the customer:

>>>
To do this:

- Log into: <https://customers.gitlab.com/customers/sign_in> using email **EMAIL**
- Navigate to **Manage Purchases**
- Select **Change linked group**
- Select the desired group from the **This subscription is for dropdown**
- Select Proceed to checkout

Note, if there are more users associated with the group (including its subgroups and nested projects) than what is included in your subscription, you will be charged for the overage of users during this last step.
>>>

##### How do I upgrade a customer?

1. Navigate to customer’s account in [Salesforce](https://login.salesforce.com/).
1. Navigate to `opportunities` and click into most recent purchase: should be `renewal` or `new business`, *not add-on*
1. From the opportunity view, navigate and click `New Add On Opportunity`
   - This will create a new oppty for your upgrade
   - Name the oppty appropriately
   - From the new add-on oppty view click `New Quote`
   - [Amend subscription](/handbook/sales/field-operations/sales-operations/deal-desk/#amend-subscription-quote)
     - add the new SKU
     - remove the old items
     - `Save`
     - Generate PDF

## Billing

##### How does a customer pay with a credit card for a direct order?

**Self-managed**

Communicate to the customer

>>>
- To finalize the order, please sign and date it on the second page and return all pages back to me.
- Afterward, you will receive an automated email with the license key as well as the invoice and we will charge your credit card.

*Make sure they have added a credit card on the payment methods within the customers.gitlab.com Web Store.*

**SaaS**
Communicate to the customer

>>>
To finalize the order, please sign and date it on the second page and return all pages back to me.
Afterward, your group will be upgraded with new users and you will receive the invoice and we will charge your credit card.
>>>

**Make sure that the customer has created an account, *as well as a group*, in order for us to apply the subscription to their group appropriately.**

##### Payment by credit card (new customer) e-Sertifi

1. Start within quote object *not* from opportunity page
1. Sertifi e-sign
    - Email invite message
    - Email address, click `next`
    - Click `related notes and attachments` and select correct quote
    - Click on `preview/prefill document`
1. Navigate on lefthand bar to `payment authorization without address`
1. Move box to right of signature field
1. `Save`
1. `Exit`
1. `send for signature`

*When they return the signed quote, no need to ping deal-desk on chatter.*

OR

*tag Billing Ops in chatter on the opportunity with this request*

##### How can a customer pay via wire transfer for a direct order?

Communicate to the customer

**Self-managed:**

>>>
To finalize the order, please sign and date it on the second page and return all pages back to me.
Afterward, you will receive an automated email with the license key as well as the invoice for the wire transfer.
>>>

**SaaS**

Find the quote attached.
To finalize the order, please sign and date it on the second page and return all pages back to me.

Afterward, your group will be upgraded with new users and you will receive the invoice for the wire transfer.
>>>

*Note: SaaS does not have licenses.*

##### Customer Question: How can I initiate a refund or downgrade?

*If a customer requests to downgrade the product they are currently using, we are unable to process refunds within 45 days of purchase; however, we are able to downgrade their plan.*

A customer can initiate a refund themselves:

Communicate to the customer:

>>>
You can get this charged reversed by reaching out directly to `AR@gitlab.com`

1. Add your invoice
1. Request a refund explaining that the second charge was an error purchase
1. You must do this within 45 days of your original purchase

If you have additional questions, please let me know!
>>>

##### How do I initiate a refund or downgrade for a customer?

If a customer requests to downgrade the product they are currently using, we are unable to process refunds within 45 days of purchase; however, we are able to downgrade their plan.
You can initiate the refund for the customer:

- Send an email to `ar@gitlab.com` to request a refund for the customer.
- Include all subscription information and link to SFDC account record.

## Quotes

##### What do the terms "Sold to" and "Bill to" mean on a quote?

- `Sold To` email address is the on for which customers.gitlab.com account is generated and where the license key is sent to
- `Bill To` email address is the email address to which automatic message with the final invoice will be sent to only

##### Entity

All web direct orders are GitLab Inc.
However, say you have an upcoming renewal that will be sales assisted where the customer previously purchased web direct, if the customer is located in one of the countries where we have another entity (UK, Germany, Netherlands, Australia), the renewal quote must reflect the correct entity.
E.g. Customer in UK purchased web direct, at renewal (if sales assisted) the quote should reflect GitLab Ltd. (UK entity).
This is to make sure we ask for Tax ID or VAT ID which prevents a customer from paying tax or VAT charges.

The following image reflects how inside the quote object you can change the entity to US.
<img src="/handbook/business-technology/enterprise-applications/applications/troubleshooting/entity2.png" class="full-width">

## Checklists for quotes

##### Add-on opportunity quotes

- Do I have address on account?
- Do I have address on contact?
- What is the original entity and does it match on the add-on quote?
- Is the payment correct - CC or wire transfer?

##### Information required for normal quote

- Full company name
- Full company address
- Sold To Contact person title, name, surname, email address
- Bill To Contact person title, name, surname, email address
- Plan
- Number of users

##### Copy/paste for renewals

1. Screenshot of customer admin area
1. Sold To Contact first/last name, email address, mailing address
1. Bill To Contact person first/last name, email address, mailing address
1. Plan
1. Number of users

##### Information required for a reseller Quote

1. Reseller Name
1. Contact Name
1. Contact Email
1. Reseller Address
1. End User Company Name
1. Contact Name
1. Contact Email

## General Communications to Customers

##### Budget

Ask:

> Is there a budget that you are looking to stay within that we should be mindful when considering your use case?

## Documentation Needed

- What do I do when I get a report of a bug or a problem with the renewal or purchase process?
- What are the instructions to process a sales assisted wire transfer?
