---

title: Service Desk Ticket Work Item
description: >-
  Project plan for the Service Desk Ticket Work Item project.
---







## Weekly Project Plan

Epic: [https://gitlab.com/groups/gitlab-org/-/epics/10419](https://gitlab.com/groups/gitlab-org/-/epics/10419)

**Week of 2023-08-07**
- A Work Item type called `Ticket` exists
- Tickets can only be created via the Rails console

**Week of 2023-08-14**
- Emails sent to Service Desk create `Tickets`, not `Issues`
  - The Service Desk issue list still works since `Tickets` are all created by `User.support_bot`
- The migration to convert Service Desk `Issues` to `Tickets` is merged in 16.3
- Service Desk `Issues` on GitLab.com start being converted to `Tickets` (database migration begins)
- Tristan is attending the Melbourne Engineering get-together

**Week of 2023-08-21**
- There is a toggle in the UI to switch between `Issue` view (old) and `Ticket` view (new), behind a feature flag
- All Service Desk `Issues` on GitLab.com are now `Tickets` (database migration completed)

**Week of 2023-08-28**
- The breadcrumbs and URLs for `Tickets` are updated, behind a feature flag

**September 2023**
- The `service_desk_ticket` feature flag is turned on for all users on GitLab.com, allowing users to toggle between both views
- Documentation is updated to replace mentions of "Service Desk Ticket" with "Service Desk Issue"
