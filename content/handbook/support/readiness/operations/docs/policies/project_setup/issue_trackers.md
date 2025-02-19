---
title: Issue trackers
description: Support Operations policies page for project setup for issue trackers
canonical_path: "/handbook/support/readiness/operations/docs/policies/project_setup/issue_trackers"
---

Issue tracker projects are a bit simpler to create, since they only serve for
issue management. There is only one step for this, and that is creating the
project itself. To accomplish this, navigate to the
[support-ops group](https://gitlab.com/gitlab-com/support/support-ops) and
click the blue `New project` button at the top-right of the page.

This will bring you to the new project page, showing various options to assist
in the project's creation. The option you want is `Create from template`. After
clicking that, you want to click the `Group` tab, locate the correct template to
use, and then click the blue `Use template` button on the right-hand side.

This will then import the template used into your new project. This can take a
bit of time, but once it is done, you have a pre-built form project to use.

You will want to double check all the settings being used are accurate before
proceeding.

<details>
<summary>Settings for source project</summary>

- General
  - Naming, topics, avatar
    - `Project Description (optional)`: Something to describe the issue
      tracker's use
  - Visibility, project features, permissions
    - `Project visibility`: Private
    - `Issues`: Checked
    - `Respository`: Checked
    - `Merge requests`: Checked
    - `Forks`: Unchecked
    - `CI/CD`: Checked
    - `Container registry`: Unchecked
    - `Analytics`: Unchecked
    - `Requirements`: Unchecked
    - `Security and Compliance`: Unchecked
    - `Wiki`: Unchecked
    - `Snippets`: Unchecked
    - `Package registry`: Unchecked
    - `Model experiments`: Unchecked
    - `Model registry`: Unchecked
    - `Pages`: Checked
    - `Monitor`: Unchecked
    - `Environments`: Unchecked
    - `Feature flags`: Unchecked
    - `Infrastructure`: Unchecked
    - `Releases`: Unchecked
    - `CI/CD Catalog resource`: Unchecked
    - `Enable email notifications`: Checked
    - `Show default emoji reactions`: Checked
    - `Warn about Potentially Unwanted Characters`: Checked
  - Badges
    - There should be no badges
  - Compliance framework
    - There should be no compliance framework
  - Service Desk
    - It should not be activated
- Integrations
  - There should be no activated integrations
- Webhooks
  - There should be no webhooks
- Access Tokens
  - There should be no access tokens
- Repository
  - Branch defaults
    - `Default branch`: master
    - `Auto-close referenced issues on default branch`: Checked
    - `Branch name template`: Leave it empty
  - Branch rules
    - No need to edit this, let it self-populate
  - Push rules
    - `Reject unverified users`: Unchecked
    - `Reject inconsistent user name`: Unchecked
    - `Reject unsigned commits`: Unchecked
    - `Reject commits that aren't DCO certified`: Unchecked
    - `Do not allow users to remove Git tags with git push`: Unchecked
    - `Check whether the commit author is a GitLab user`: Unchecked
    - `Prevent pushing secret files`: Unchecked
    - `Require expression in commit messages`: Leave it empty
    - `Reject expression in commit messages`: Leave it empty
    - `Branch name`: Leave it empty
    - `Commit author's email`: Leave it empty
    - `Prohibited file names`: Leave it empty
    - `Maximum file size (MB)`: 0
  - Mirroring repositories
    - There should be no mirrors setup as of yet (one will be made later)
  - Protected branches
    - There should be on entry:
      - `Branch`: master
      - `Allowed to merge`: Should be 6 users:
        - `jcolyer`
        - `nabeel.bilgrami`
        - `avilla4`
        - `dtragjasi`
        - `secole`
        - `rverschoor`
      - `Allowed to push and merge`: 1 user
        - `gl-support-bot`
      - `Allowed to force push`: Unchecked
      - `Code owner approval`: Checked
  - Protected tags
    - There should be no protected tags
  - Deploy tokens
    - There should be no deploy tokens
  - Deploy keys
    - There should be no deploy keys
- Merge Requests
  - `Merge method`: Merge commit
  - `Merge options`:
    - Enable merged results pipelines: Unchecked
    - Automatically resolve merge request diff threads when they become
      outdated: Unchecked
    - Show link to create or view a merge request when pushing from the command
      line: Checked
    - Enable "Delete source branch" option by default: Checked
  - `Squash commits when merging`: Require
  - `Merge checks`
    - Pipelines must succeed: Unchecked
    - All threads must be resolved: Checked
    - Status checks must succeed: Unchecked
  - `Merge suggestions`: Leave it empty
  - `Merge commit message template`:
    > Merge branch '%{source_branch}' into '%{target_branch}'
    >
    > %{title}
    >
    > %{issues}
    >
    > See merge request %{reference}

  - `Squash commit message template`:
    > %{title}

  - `Default description template for merge requests`: blank
  - `Merge request approvals`
    - Approval rules: Leave as is
    - Security Approvals: There should be none
    - Approval settings
      - Prevent approval by author: Checked
      - Prevent approvals by users who add commits: Checked
      - Prevent editing approval rules in merge requests: Checked
      - Require user re-authentication (password or SAML) to approve: Unchecked
      - When a commit is added: Remove all approvals
  - Suggested reviewers: Do not enable
  - Merge request branch workflow: There should be none
- CI/CD
  - Ensure `Public pipelines` under `General pipelines` is unchecked
  - Leave the rest as it
- Packages and registries
  - Leave as is
- Monitor
  - Leave as is
- Analytics
  - Leave as is
- Usage Quotas
  - Leave as is

</details>

After confirming the settings, you are done!

---

**NOTE** You probably need to update some form of our handbook for this new
project, so make sure that gets done!
