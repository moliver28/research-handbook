---
title: Account Hold
category: Sales
subcategory: Accounts Receivable
description: "Workflow for handling inquiries on account / support holds"
---

## About account holds

An account hold happens if a customer doesn't pay their invoice on time. After several attempts to contact and reconcile the account, the accounts receivable team will:

- Chatter the AE responsible for the account
- Place the account on "Support Hold"

The result is that all tickets a customer on-hold attempts to create will get a reject with a message to contact their sales rep.

Once a hold is removed in Salesforce, the change will sync down to Zendesk and the account's contacts can open tickets.

## Support Workflow for accounts on hold

Occasionally you may see an internal request for help with an account hold.

This is not a Support issue, and needs to be worked out with the accounts receivable team.

1. Let the internal requester know that this is an accounts issue due to an unpaid invoice.
1. Direct them to Chatter `@[Shannon Williams]` (or the current Accounts Receivable Manager) on the SFDC account
1. Let them know that once the situation is resolved with AR, the changes will sync to Zendesk.

### Restoring access for accounts that have been removed from hold

Changes will sync from Salesforce to Zendesk relatively quickly after the change is made.

In the account view in Zendesk, you can look for the "Support Hold" checkbox - if it is unchecked, there is no hold on the account.

If you believe there is an issue with the sync, and Salesforce and Zendesk are showing different data you can Slack `#support_operations`.
