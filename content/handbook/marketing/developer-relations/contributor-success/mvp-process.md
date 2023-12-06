---
title: "GitLab MVP Selection Process"
description: Process for Contributor Success to select GitLab MVPs
---


## GitLab MVP

Each release post GitLab recognizes a community contributor as the MVP ("Most Valuable Person") for the release. Beginning with the 15.9 release, the Contributor Success team took over the nomination and selection process for the GitLab MVP. These community contributors are recognized within the GitLab release post and across Slack and Discord. MVPs also receive a GitLab swag pack in celebration of their contribution.

- Hall of fame list of [GitLab MVPs](https://about.gitlab.com/community/mvp/)
- [Release posts](https://about.gitlab.com/releases/categories/releases/) on GitLab blog

## Workflow for selecting GitLab MVP

1. A [nomination issue](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/issue_templates/release-post-mvp-nominations.md) is automatically generated on 3rd of the month.
1. Link the nomination issue in the `#whats-happening-at-gitlab` Slack channel.
   ```md
   :mega: Time to Nominate the __RELEASE_VERSION__ :letter_m: :letter_v: :letter_p: :mega:

   Please spread the word and add your nominations for the next :mvpcrown:  MVP :mvpcrown:  in __INSERT_MVP_NOMINATION_ISSUE__
   @contributor-success-team will make a selection on the __INSERT_SECOND_THURSDAY_OF_THE_MONTH__. Nominating an MVP could be your act of kindness of the day. It is also helpful to level up yourselves and the nominated contributor.
   ```
1. Share the post in `#release-post`, `#developer-relations`, `#mr-coaching`, and `#core`.
1. Link the nomination issue in the `#announcements` Discord channel.
1. Encourage team members and the wider community to vote by sharing reminders in the above Slack and Discord channels.
  - Complete by the Monday before the MVP is selected.
1. Select the MVP in the nomination issue by choosing the [eligible nominee](/handbook/marketing/developer-relations/contributor-success/mvp-process.html#mvp-eligibility) with the most votes
  - Votes are cast as :thumbsup: emoji under the nominee thread in the issue. Other emoji are not counted, but if a vote is close please remind voters they must use the :thumbsup: to vote.
  - Complete by the second Thursday of the month.
  - If no MVP nominations have been added to the MVP issue by the second Thursday of the month, resend reminders to the Slack/Discord channels by sharing the original solicitation posts again. Ping the channel and note the lack of nominations and due date. E.g. in #developer-relations:
      ```md
      @community-team - We only have one (or none) MVP nomination. I’m going to wait until the end of the day, 12pm UTC for other nominations. Please nominate a community contributor that delivered something great for X-Y!
      ```
1. From the current release branch, draft a merge request for adding the new MVP
  - The first step is switching to the current release branch `release-x-y` in the `www-gitlab-org` project. Using the 15.8 release as an example, navigate to the current release branch directly on GitLab by selecting the `release-15-8` branch from the dropdown menu. If working locally, checkout the `release-15-8` branch.
  - Navigate to the `mvp.yml` file inside the current release folder under `data/release_posts/x_y`. In this example it would be the `15_8` folder which has a placeholder `mvp.yml` file inside.
  - Begin drafting the merge request by updating the new MVP name and user handle. Remove the placeholder text for the write-up blurb. Commit the changes on a new branch. When creating the merge request on GitLab make sure your branch is targeting the current release branch `release-x-y` and not targeting `master`.
  - Follow the steps to collaborate the [MVP write-up blurb](#mvp-write-up-blurb)
  - Update the [data/mvps.yml](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/mvps.yml) file from your existing merge request
  - Add release version, MVP name, user handle, release post date and release post URL
  - Assign another Contributor Success team member to review/merge and double check the merge request is targeting the correct release branch
  - Ping the [release post manager](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/release_post_managers.yml) into the MR for awareness.
  - Merge by the Tuesday of release week.
1. Award the MVP winner with the MVP achievement using the `MVP Achievements` group access token from the Contributor Success vault.\
   NOTE: You will need the [1Password cli](/handbook/security/password-guidelines.html#cli-integration) installed:
   ```shell
   curl -g \
   -X POST \
   -H "Content-Type: application/json" \
   -H "Authorization: Bearer $(op read 'op://Contributor Success Team/GitLab MVP Achievements Group Access Token/password')" \
   -d '{"query":"mutation{achievementsAward(input:{achievementId: \"gid://gitlab/Achievements::Achievement/53\" userId: \"gid://gitlab/User/<user_id>\"}){errors}}"}' \
   https://gitlab.com/api/graphql
   ```
1. Link to the decision (the nomination issue) in the `#whats-happening-at-gitlab` Slack channel.
   ```md
   :tada: Congratulations to our 16.4 :letter_m: :letter_v: :letter_p: winner X https://gitlab.com/x
   Note about X's contribution(s).

   A huge thank you to A B and C for nominating MVPs and X Y and Z for voting.
   https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/x
   ```
1. Share the post in `#release-post`, `#developer-relations`, `#mr-coaching`, and `#core`.
1. Link to the decision (the nomination issue) in the `#announcements` Discord channel.
   In the Discord message, thank any wider community members who participated.
1. Follow the steps for [Sending MVP Appreciation Gifts](#sending-mvp-appreciation-gifts).

### MVP Eligibility

- The Contributor Success team will make the final choice on the GitLab MVP within the nomination issue and should not wait for consensus.
- While there is usually one MVP per release post, we would consider more.
- A contributor is eligible to be MVP once per major release cycle. For example, if they are MVP during any 13.* milestone, they cannot be an MVP again until the 14.0 milestone.
- A quick way to check past MVPs is to view [`/data/mvps.yaml`.](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/mvps.yml).
- Contributors may be nominated whether they have contributed to the current release cycle or not. Contributors are recognized for previous and ongoing contributions to GitLab.
  - E.g. See the [15.8 MVP](https://about.gitlab.com/releases/2023/01/22/gitlab-15-8-released/#mvp) selected for prior release work and the [15.7 MVP](https://about.gitlab.com/releases/2022/12/22/gitlab-15-7-released/#mvp) selected for steady contributions.

### MVP Write-Up Blurb

Use the `data/release_posts/x_y/mvp.yml` merge request to collaborate on the MVP write-up with the MVP winner, nominator and other team members.

The MVP write-up section should:
- Contain a brief description of the MVP's release contribution and summary of prior GitLab contributions.
- A link to the MVP's GitLab profile.
- Any links to relevant issues, MRs, issue boards or epics the MVP contributed to.
- Contributor Success is responsible for reviewing the entry for:
  - Consistency and accuracy
  - Correct and working links for user information, issues, MRs, etc.
  - Correct spelling of names, organizations, product features, etc.
  - Correct [prounoun](/handbook/people-group/pronouns/) usage
- The write-up should be merged by the Tuesday of release week to the `data/release_posts/x_y/mvp.yml` file targeting the specific release branch

You can use the sample message below when pinging the MVP winner and team members into the merge request:
```
Hi **{MVP_WINNER}** :wave:

Congrats on being selected as GitLab's **{X.Y}** MVP!

We are working on a write-up for you that will be included in the **{X.Y}** release post. For reference you can check out our past [MVPs list](https://about.gitlab.com/community/mvp/) and here are a few notable examples:
- https://about.gitlab.com/releases/2023/02/22/gitlab-15-9-released/#mvp
- https://about.gitlab.com/releases/2022/10/22/gitlab-15-5-released/#mvp
- https://about.gitlab.com/releases/2022/03/22/gitlab-14-9-released/#mvp
- https://about.gitlab.com/releases/2022/02/22/gitlab-14-8-released/#mvp
- https://about.gitlab.com/releases/2021/05/22/gitlab-13-12-released/#mvp

Please let us know if there are any details you would like us to highlight about yourself, your work or your contributions to the GitLab community.

I'm also pinging **{NOMINATOR}** **{COMMENTER}** who either nominated or commented on your contributions in the **{NOMINATION_ISSUE}**. They can also chime in with anything worth noting for the release post write-up or a quote about your contributions.

We only have a few days to put this together. If we don't hear back or you don't have the time we will do our best to put something together! The **{X.Y}** release post will go live on the [release date](https://about.gitlab.com/handbook/engineering/releases/).

Finally we will work to get your GitLab swag sent over soon!
```

## Sending MVP Appreciation Gifts

Every release GitLab chooses a [Most Valuable Person (MVP)](https://about.gitlab.com/community/mvp/) and the Developer Relations team recognizes them for their contributions.

1. Determine MVP after release post is published to the [blog](https://about.gitlab.com/releases/categories/releases/)
1. Find MVP's contact information
  * [Contacting contributors](/handbook/marketing/developer-relations/contributor-success/community-contributors-workflows.html#contacting-contributors)
1. Send Swag according to our [SWAG operations guide](/handbook/marketing/developer-relations/workflows-tools/swag/)
  * Note that MVPs currently receive a Tier 3 swag prize
