## Overview

Code reviews are mandatory for every merge request.

## Roles

### Author

### Approvers

Some projects have required approvers. Depending on how the project and approval rules are set up, the specified approvers may be approving the entire merge request, or one aspect of it based on their specialty.

### Reviewer

While not every

### Maintainer

The maintainer is the final reviewer of a merge request. When a maintainer gives approval, it

## Merge request communication in Infrastructure

### Communicate roles

Because it is not uncommon for some team members in infrastructure to have maintainer or higher level permissions to several projects, including projects they may not regularly be involved in, it is important to communicate what you expect your role is, or what exactly you are reviewing and approving, when providing a review.

For example, a production SRE at GitLab may provide a review and give an approval to a merge request in an area they are unfamiliar with. In this case, it is likely the SRE does not want to play the role of the maintainer because they may not have full confidence and context in the domain of the project. When they complete their review, they should comment that they are approving that everything looks good from their perspective, but they would like to have someone with more domain experience provide a final review before merging.

### Communicate actions

In some parts of GitLab, engineers expect the maintainer to merge the merge request upon approval. In some infrastructure situations, we have the opposite scenario where the merge request author does not want the maintainer to merge their merge request because it is part of a Change Management Request and the author has scheduled a specific time for the merge to happen.

It is the responsibility of the author to inform the reviewers and maintainer that they do not want their merge request merged after approval. This is worth noting in the merge request description and in a comment when requesting the review. Keeping the merge request in "Draft" is also another helpful way to signal it should not be merged.

### Communicate reasoning

Reviewers and maintainers should feel comfortable thinking outloud in the merge request, especially if they have things they are not sure about.

Using the [conventional comment format](https://conventionalcomments.org/#format) can help convey your intent so the author knows if something is a blocking suggestion or not.
