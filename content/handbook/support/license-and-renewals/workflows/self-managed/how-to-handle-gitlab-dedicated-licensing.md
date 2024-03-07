---

title: Handling GitLab Dedicated License Requests
description: "How to handle GitLab Dedicated License Requests"
category: GitLab Self-Managed licenses
---


## Workflow for handling GitLab Dedicated Licensing

Currently, GitLab Dedicated license provisioning needs to be handled manually whilst we await the implementation of the EPIC [GitLab Dedicated Automated Provisioning](https://gitlab.com/groups/gitlab-org/-/epics/8799)

In the interim the following steps are required in order to generate the license file and ensure that the request is tracked correctly.

### License requests for new GitLab Dedicated customers

1. Deal Desk manually creates the opportunity quote and adds the GitLab Dedicated SKUs.
1. The quote is synced to Zuora, where the subscription is created.
1. The GitLab Dedicated team can reach out to Support via an [internal request form](https://support-super-form-gitlab-com-support-support-op-651f22e90ce6d7.gitlab.io/) providing the SFDC opportunity link and requesting a license file is manually created. Use the **GitLab Support Internal Requests for Global customers** request option, and **Other Licenses and Renewals related issue** for the internal request type.
1. L&R Support verifies that the SFDC opportunity is `closed-won` and manually creates the license file.
   - The L&R support engineer adds an internal note containing a link to the license in CustomerDot so that that it can be tracked with the Accounting team for revenue recognition.
   - The L&R engineer sends the license file to the "sold-to" account owner and CC's the GitLab Dedicated team member who raised the ticket.
1. The GitLab Dedicated team notifies revenue recognition & AR for confirmation of provisioning.

### License requests for existing or multi-year licensed GitLab Dedicated customers

1. For renewing or multi-year licensed customers a new GitLab Dedicated license will need to be manually generated at the end date of the customer's subscription.
1. A request to renew a 1 year license subscription may be submitted by the GitLab Dedicated team or another stakeholder such as a customer, Sales or a CSM.
1. Requests should be submitted via the [internal request form](https://support-super-form-gitlab-com-support-support-op-651f22e90ce6d7.gitlab.io/) and should include the corresponding SFDC opportunity link. Use the **GitLab Support Internal Requests for Global customers** request option, and **Other Licenses and Renewals related issue** for the internal request type.
1. L&R Support should then implement steps 4 and 5 as detailed in the workflow [License requests for new GitLab Dedicated customers](#license-requests-for-existing-or-multi-year-licensed-gitlab-dedicated-customers). If the request did not orginate from a GitLab Dedicatad team member then please cc `cbalane@gitlab.com` on the ticket to inform him that a new license has been issued.

If you have any questions then please reach out to:

GitLab Dedicated Team Product Manager: Chris Balane | <cbalane@gitlab.com>
Support Engineering Manager: John Lyttle | <jlyttle@gitlab.com>
