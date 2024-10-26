## Overview

Code reviews are an important part of every merge request and a mandatory practice at GitLab. Code review not only helps prevent bugs, it improves code quality, helps spread knowledge throughout team members, and provides accountability in meeting our own standards.

## Roles

In infrastructure, sometimes roles can be unclear because some team members will have elevated permissions related to their role - for example a production engineering SRE will likely have Owner permissions for several projects, including projects they may not regularly contribute to. In this document, we discuss the roles of individuals involved in a code review, sometimes these roles are completed by people that have permissions greater than the role. For example, someone could act as a reviewer, but still request someone else conduct the "maintainer review" despite the original person having maintainer permissions.

- **[Author](#author)**: the individual who introduced the code change that is now under review in a merge request.
- **Assignee**: the individual who is actively making changes to the merge request based on reviewer feedback. While this is most commonly the Author, others can participate or take over this role throughout the review process.
- **[Reviewer](#reviewer)**: anyone who reviews the merge request. They may or may not be approvers.
- **[Approver](#approvers)**: an individual who adds approval to the merge request as required. Reviewers can provide approvals even when not required, this is a good practice, but when we talk about approvers in this document, we are talking about those who have control in whether or not a merge request has met the requiremenets to be merged.
- **[Maintainer](#maintainer)**: the final approver before the merge request is merged. Depending on the project, there may not be a distict maintainer, but rather a collection of approvers.

In a code review, everyone involved in the review has some ownership of the change. When a change is merged, it is no longer owned by the author, but is owned by all members of the project. So when you conduct a code review, treat the code as if you are preparing to take full responsibility and ownership of it.

### Author

The author is the person submitting code changes for review. Before a change is submitted, the author is the first reviewer. The author is responsible for ensuring their merge request meets the expectations of the project being contributed to. This may include, but is not limited to testing (both code and manual), adding a description that conveys "why" and not just "what". If there are any particular pieces that the author feels might be difficult to understand or not obvious to someone not as familiar with the change, it is a good practice to add comments to the merge request before submitting to review to help the reviewers and save a review cycle by pre-answering some questions.

### Approvers

Some projects have required approvers. Depending on how the project and approval rules are set up, the specified approvers may be approving the entire merge request, or one aspect of it based on their specialty. Approvers should have full confidence in the change they are approving frome whatever perspective they are approving from. Meaning, if they are approving from a specific specialty as required by CODEOWNERs or just based on their domain expertise, they should be confident in those changes being merge. If they are approving from the general maintainer perspective, they should be confident in the entire change and that all other approvers have signaled the merge request is ready.

### Reviewer

Anyone can be a reviewer on a merge request, so this term is used loosely. If you review but do not feel comfortable adding approval, communicate this to the author and suggest another reviewer. If you approve, but your approval does not have any affect, the approval still signifies your confidence in the parts of the change you were reviewing.

### Maintainer

The maintainer is the final reviewer of a merge request. When a maintainer gives approval, it not only meets all of the approval rules needed to be merged, but the merge request has been reviewed to the satisfaction of everyone involved (see [communicate roles](#communicate-roles) for why someone with merge permissions may not consider the merge request ready yet).

The maintainer should exercise bias for action in the spirit of our [efficiency value](https://handbook.gitlab.com/handbook/values/#efficiency) and merge the change unless the author [has explicitly communicated not to](#communicate-actions).

If there are non-blocking comments that are still open, the maintainer can choose to merge it and ask the author to followup when necessary, or they can add approval and communicate to the author that they are free to merge unless they want to address the non-blocking feedback.

## Merge request communication in Infrastructure

### Communicate roles

Because it is not uncommon for some team members in infrastructure to have maintainer or higher level permissions to several projects, including projects they may not regularly be involved in, it is important to communicate what you expect your role is, or what exactly you are reviewing and approving, when providing a review. Use [low-context communication](https://handbook.gitlab.com/handbook/company/culture/all-remote/effective-communication/#understanding-low-context-communication) to ensure no confusion takes place. We don't want an author to assume that they have maintainer approval and can merge, when the person who approved only did so from a small perspective and does not see themselves as having approved the entirety of the change.

For example, a production SRE at GitLab may provide a review and give an approval to a merge request in an area they are unfamiliar with. In this case, it is likely the SRE does not want to play the role of the maintainer because they may not have full confidence and context in the domain of the project. When they complete their review, they should comment that they are approving that everything looks good from their perspective, but they would like to have someone with more domain experience provide a final review before merging.

Leaving comments like

> "This LGTM, I'm approving the changes related to the nginx configuration."

or

> "This LGTM, I'm approving as maintainer, feel free to merge whenever you are ready."

help everyone involved in the review what the current state is. Reviewers can also use [bias for action](https://handbook.gitlab.com/handbook/values/#operate-with-a-bias-for-action) and assign directly to another reviewer if they know they are not giving the final approval:

> "This LGTM, but I'd like someone with more domain expertise to review and provide the final approval. @person, could you please review?"

By making it clear what your part is in a given review, the confidence that nothing has been missed is increased.

### Communicate actions

In some parts of GitLab, engineers expect the maintainer to merge the merge request upon approval. In some infrastructure situations, we have the opposite scenario where the merge request author does not want the maintainer to merge their merge request because it is part of a [Change Management Request](https://handbook.gitlab.com/handbook/engineering/infrastructure/change-management/) and the author has scheduled a specific time for the merge to happen.

It is the responsibility of the author to inform the reviewers and maintainer that they do not want their merge request merged after approval. This should be noted in the merge request description and in a comment when requesting the review. Keeping the merge request in "Draft" is also another helpful way to signal it should not be merged early.

### Communicate reasoning

Reviewers and maintainers should feel comfortable thinking outloud in the merge request, especially if they have things they are not sure about.

Using the [conventional comment format](https://conventionalcomments.org/#format) can help convey your intent so the author knows if something is a blocking suggestion or not.

### Merge Request Descriptions

A merge request description should allow the reviewer to have the necessary information for them to understand the change without necessarily having expertise or experience in the specific area being changed. While an issue should be linked in most cases, an issue link alone is not an acceptable merge request description. Issue descriptions and content can change, so the merge request should act as the single source of truth (SSOT) for the changes that eventually get merged. This can often mean some information is duplicated, but for historic reference, it can be a powerful tool. Links to other places are still helpful to provide ways for reviewers and future readers to dig in deeper.

Ensuring a high standard of merge request description is not only the responsibility of the author, but also the reviewers. Reviewers should ask for additional details to descriptions when they are missing or change over the course of development.
