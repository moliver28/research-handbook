---

title: "Code of Conduct Enforcement"
---







## Overview

The Developer Relations team will contribute to enforce the [GitLab Community Code of Conduct](https://about.gitlab.com/community/contribute/code-of-conduct) on GitLab.com, to ensure we keep a positive, welcoming and inclusive environment for everyone to contribute.

Currently, the team will engage in moderation if there is a discussion (generally on an issue or on a Merge Request) that requires urgent or a significant volume of moderation.

Please reach out in the [#developer-relations Slack channel](https://gitlab.slack.com/archives/C0R04UMT9) and tag `@dev-advocates` when urgent.

## Moderation process

Developer Relations team members should always use the [GitLab Conduct](https://gitlab.com/gitlabconduct) GitLab account when moderating instead of their personal accounts to provide anonymity while moderating.

> The login information can be found in the `GitLab Conduct User` section in the Marketing vault in 1Password.

- As a general practice, comments will not be deleted
- If a comment is deemed to violate the Code of Conduct, its content will be redacted
- The redacted text will be based on one of the [templates](#templates) to justify the motivation for moderating the comment
- Before starting the moderation process, a confidential issue must be created on the [Developer Evangelism Meta project](https://gitlab.com/gitlab-com/marketing/developer-relations/developer-advocacy/developer-advocacy-meta/-/issues/new?issuable_template=code-of-conduct-enforcement). The issue will document the code of conduct situation with full context and screenshots. It will help with a track record of comments which have been edited out.
- During the moderation process, the original content of each comment considered to violate the CoC will be moved over as a thread on the confidential issue. Threads allow for discussion around the comment and feedback from topic or language experts
- Threads opened on the confidential issue should include a link to the original public comment, the GitLab user name of the commenter, and the original comment (see [templates](/handbook/marketing/developer-relations/workflows-tools/code-of-conduct-enforcement/#templates)).
- Comments where the violation is unclear, or comments not in English will be marked for review on a subsequent moderation pass. Native language speakers in the GitLab team can help translate messages if necessary.
- If a discussion is deemed to become too toxic to enable participation, it might be locked or made confidential.

## Notification

As a further refinement, the e-mails sent to `conduct@gitlab.com` will be added to the Developer Relations' Zendesk instance on the next iteration of this process.

## Collaboration with the Abuse Operations team

As part of their charter, the Trust & Safety team will often detect and hand over CoC violations to the Developer Relations team. Generally discussions on a particular case will happen on a confidential issue, but we can also contact the Trust and Safety team directly in the `#abuse` channel.

## Templates

Please use these templates to replace public comments that violate the CoC.

### Thread on confidential moderation issue

You can use this template to move over the original public comment's content to the private issue opened for moderation.

```
https://gitlab.com/gitlab-com/<project>/issues/<issue number>#note_239807447

@username

> (username's original comment)
```

### Clear CoC violation

Use this template where the comment is a CoC violation

```
*This comment has been removed for violating the following rule in our [GitLab Code of Conduct](https://about.gitlab.com/community/contribute/code-of-conduct), which is against Rule 3 in our [Terms of Service](https://about.gitlab.com/terms/).*

> Trolling, insulting/derogatory comments, and personal or political attacks.

*Continuing to disregard our Code of Conduct will result in a ban of this account. For more information, please reach out to [conduct@gitlab.com](mailto:conduct@gitlab.com).*
```

### Needs review

Use this template where the comment needs further discussion to understand whether it is a CoC violation. You can discuss it with the other Advocates and ultimately decide whether the comment needs to be moderated or moved back to the original location.

```
Under Review
*This comment is currently under review for potential violation of the [GitLab Code of Conduct](https://about.gitlab.com/community/contribute/code-of-conduct).*

*For more information, please reach out to [conduct@gitlab.com](mailto:conduct@gitlab.com).*
```
