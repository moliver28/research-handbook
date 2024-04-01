---

title: Handling trials and extensions for GitLab Self-Managed
category: GitLab Self-Managed licenses
description: Issuing a license to "extend" Self-managed trials and grace periods
---

## Overview

Self-managed trials and grace periods cannot be extended - a **trial** license must be issued and applied to the instance in order to "extend" a license.
Requests for grace period extensions, temporary keys, temporary extensions, temporary licenses,
and trial extensions all require generating a trial License.

Sales will often request through an [Internal Request / Zendesk Ticket](https://support-super-form-gitlab-com-support-support-op-651f22e90ce6d7.gitlab.io/) that we extend the duration of Self-Managed trials on behalf of their prospects. These tickets will always be raised from the GitLab Support End User `gitlab_support@example.com`, with the submitter cc'd on the ticket. The following workflow should be followed to service them.

If any fields when opening the ticket were filled out incorrectly, send a public reply in the ticket asking the submitter to supply the missing information.

> **NOTE**: Non-trial licenses are required to match an existing subscription and these licenses
generally have a span of 1 year. There is an
[ongoing discussion](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/3817) on
how to support complex subscription models.

Support tries as much as possible to refrain from issuing non-trial licenses.
We are allowed to issue trial licenses because they:

- Have no grace period
- Do not affect historical data tracking
- Are not tied to any subscriptions for revenue purposes

### How to extend an expired or soon to expire license

**Note:** Unlike [SaaS](/handbook/support/license-and-renewals/workflows/saas/trials_and_plan_change#extending-trials), a Self-managed extension does **not** require a pre-existing Trial license. Instead, start with the current almost-expired license, or most-recent expired license.


1. Open the expired or soon to expire license.
1. Confirm that:
    1. The license is a non-trial license and:
        - If the license expires **within the next 15 days**, redirect the salesperson to use the SFDC feature by using the `Deviation from SM License Extension Workflow` macro and close the ticket.
        - If it expires **more than 15 days later**, the salesperson should wait until the expiry is within 15 days and then use the SFDC feature. Redirect the salesperson to use the SFDC feature by using the `Deviation from SM License Extension Workflow` macro and close the ticket.
        - If the license expiry has passed, then proceed with step 2 (2).
    1. The customer does not have a valid temporary extension:
        1. Go to https://customers.gitlab.com/admin/temporary_extension_history
        1. Search using the `Subscription Name` that was in the license.
        1. If a temp extension exists **and** its expiry date is not within 5 days, tell the salesperson to open the request when the license will expire within 5 days and close the ticket.
        1. If a temp extension exists **and** its expiry date is in 5 days or less, proceed to step 2 (3).
        1. If a temp extension does not exist, proceed to step 2 (3).
    1. The ticket type is `Extend an (almost) expired subscription`.
        - If the salesperson selects a different form (e.g. the IR `Other`), then redirect them to submit a new ticket by using the `Deviation from SM License Extension Workflow` macro and close the ticket.
        - If the ticket type is correct and the license expiry has passed, then proceed with step 3.
1. Select `Duplicate License`.
1. Set the `License type` to `Legacy License`.
1. Delete the contents of `Zuora subscription ID` field if present.
1. Set the `Users count` number to what is requested.
1. Set the `Previous users count` number to the previous license **if there are trueups OR if the requested `User Count` is less than the `Previous User Count`**. Otherwise, delete the contents.
1. Set the `Trueup count` number if present.
1. Set the `Plan code` to what is requested.
1. Ensure the `Trial` checkbox is checked.
1. Set `Starts at` to today's date.
1. Set `Expires at` to the requested date (Expires at 0:00 on this date).
1. Set `Notes` to the ticket or issue URL.
1. Click `Save`. The license will be automatically sent to the email specified in the `Email` field.

If you need to [send a trial license to another contact](/handbook/support/license-and-renewals/workflows/self-managed/sending_license_to_different_email#overview),
use the `Forward license email` tab after saving the new license.

### How to create a new trial license

Users should initiate a request on their own by clicking on the following link:  <https://about.gitlab.com/free-trial/?hosted=self-managed>

### Emergency Weekend Licenses

If you're on call and you need a license generated, but don't have access to the CustomersDot interface, follow the [Weekend Emergencies - License Request](/handbook/support/license-and-renewals/workflows/self-managed/license_for_weekend_emergencies) workflow.

### SFDC generated trial license extensions

Account Executives (AEs) can now use SalesForce.com (SFDC) to issue a self-managed 21-day license extension to a customer when the renewal opportunity is taking longer than expected to close. When an AE uses this functionality, the license code is automatically generated and sent to the customer without any L&R Support involvement. The [Temporary renewal extensions](/handbook/product/fulfillment-guide/#temporary-renewal-extensions) handbook entry documents this approach. Note that there are guardrails in place to prevent abuse of this ability, and that as a result only one license extension can be generated per renewal event. Therefore on occasions L&R Support will still be required to generate further license extensions.


#### Sales AE requests for a manual temporary extension

An AE is expected to use the [SFDC process](#sfdc-generated-trial-license-extensions) first when a customer requires a self-managed license extension.  However, if an extension has elapsed then an AE can use the [Internal Request Form](https://support-super-form-gitlab-com-support-support-op-651f22e90ce6d7.gitlab.io/) to request a license extension directly from L&R support. Use the **GitLab Support Internal Requests for Global customers** request option, and **Extend an (almost) expired subscription** for the internal request type. There are some caveats to this process which are listed below:

- If the AE selects a different form (e.g. the IR `other`), then the L&R Support engineer should redirect the AE to submit a new ticket by using the `Deviation from SM License Extension Workflow` macro and close the ticket.
- If the AE has not first utilized the SFDC process, then the L&R Support engineer should direct them there by using the `Deviation from SM License Extension Workflow` macro and close the ticket.

The `Deviation from SM License Extension Workflow` macro is to be used to record an instance where there has been a deviation from the process for creating a self-managed license extension for a customer. When a customer needs a short-term extension for a self-managed subscription, the assigned account executive should initially utilize the SFDC process to automatically produce a temporary self-managed license, valid for 21 days. This enables the client to maintain access to GitLab while their subscription is being renewed. This macro should be used in situations such as the following:

- Sales/CSM has selected the incorrect form
- Sales/CSM approached Support out of Zendesk, via issues or Slack
- Sales/CSM provided incorrect or incomplete information
- Sales/CSM raised an IR instead of first using SFDC to generate a license extension

#### Customer requests for a license extension

For tracking customer requests for a license extension, we rely on the SE to review the problem type and fix it if it's wrong. When a customer submits a ticket requesting a license extension, we should apply the macro `Customer Request for SM License Extension` to redirect the customer to their AE.  In this scenario, we need to modify the template text to provide the customer with their AE’s email address.

This macro will automatically add the tag `lnr_sm_extension_customer_request` to track these instances.

### Licensing pathways for handling customer renewals and new sales that have become delayed

In certain scenarios where customer renewals or new customer sales are experiencing delays, the L&R Support process workflows provide flexibility to address these challenges. The following table outlines the options available to issue temporary trial licenses based on specific use cases:


| Use Case | Pathway |
| ------ | ------ |
|  Customer renewal is taking longer than expected      | The sales AE (Account Executive) generates a one-off 21 day [temporary renewal extension](/handbook/product/fulfillment-guide/#temporary-renewal-extensions) via SFDC        |
|  Customer renewal exceeds the additional 21 days     |  The sales AE can open a new Internal Request (IR) ticket with L&R support and request a trial license extension for up to 1 month      |
|  Customer renewal exceeds the additional 21 days + 1 month     | The sales AE can open a new Internal Request (IR) ticket with L&R support who request approval via the ticket from the senior director of revenue @andrew_murray       |
|  New customer potential sale     |  The sales AE can request up to 1 month trial extension via an IR with L&R support.|
|  New customer sale taking longer than 1 month | The sales AE generates a $0 dollar opportunity in SFDC, then opens a new IR ticket with L&R support who request approval via the ticket from the senior director of revenue @andrew_murray       |
