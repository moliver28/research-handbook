---
title: Manually Deleting a User
category: GitLab.com
description: "Workflow to follow if manually deleting a user"
---

## Overview

This workflow covers the process of manually deleting a user in Gitlab.com.

This process should only be used in extenuating circumstances for paid namespaces:
    - [User initiated self-serve deletion](/handbook/support/workflows/reinstating-blocked-accounts/#user-initiated-self-serve-deletion)

This action should only be taken if given explicit permission in a ticket from the paid customer.

## Prerequisites

- Explicit permission in a ticket from the paid namespace
- Account to be deleted has an email that matches the paid namespace
- Gitlab.com admin access

## Workflow

1. Confirm / add the spt_meta_5144 tag to the ticket tags. This will automatically be done if the [Support::SaaS::Gitlab.com::Blocked Accounts::Blocked due to account deletio](https://gitlab.com/gitlab-com/support/zendesk-global/macros/-/blob/master/active/Support/SaaS/GitLab.com/Blocked%20Accounts/Blocked%20due%20to%20account%20deletion.md?ref_type=heads) macro was used earlier.
1. Access the user account from the admin account - https://gitlab.com/admin/users/example_username
1. Verify the Admin Note says `User deleted own account on {timestamp}`
1. Click the **elipses icon (kabab) > Delete User**
1. Complete the confirmation pop-up

Deletion will not be immediate, but should complete within the hour if not sooner.

## Troubleshooting

If the user has not been deleted within a reasonable amount of time, verify the jobs have completed in Kibana.

- Check the delete request from the UI went through

```
View: pubsub-rails-inf-gprd*

Search: json.action: destroy AND json.meta.user: "<your-admin-username>"
```

- Check the delete user worker completed

```
View: pubsub-sidekiq-inf-gprd*

Search: json.class: DeleteUserWorker AND json.meta.user: "<your-admin-username>"
 ```

- Check the users_migrate_records_to_ghost_user_in_batches_worker cron job is completing. This job runs every 2 minutes. There might be a delay depending on how many batches there are.

```
View: pubsub-sidekiq-inf-gprd*

Search: json.class: Users::MigrateRecordsToGhostUserInBatchesWorker
```
