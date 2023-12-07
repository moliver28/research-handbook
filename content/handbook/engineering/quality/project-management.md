---

title: "Engineering productivity Project Management"
description: "Guidelines for project management for the Engineering Productivity team at GitLab"
---








## Projects

The Quality team currently works cross-functionally and our task ownership spans multiple projects.

- **GitLab.org**
  - [GitLab](https://gitlab.com/gitlab-org/gitlab)
  - [GitLab Triage](https://gitlab.com/gitlab-org/ruby/gems/gitlab-triage)
  - [GitLab Roulette](https://gitlab.com/gitlab-org/gitlab-roulette)
  - [GitLab Development Kit](https://gitlab.com/gitlab-org/gitlab-development-kit)
  - **Ruby gems**
    - [GitLab Styles](https://gitlab.com/gitlab-org/ruby/gems/gitlab-styles)
    - [GitLab Dangerfiles](https://gitlab.com/gitlab-org/ruby/gems/gitlab-dangerfiles)
    - [GitLab Quality Test Tooling](https://gitlab.com/gitlab-org/ruby/gems/gitlab_quality-test_tooling)
  - **Quality Group**
    - [Triage-Ops](https://gitlab.com/gitlab-org/quality/triage-ops)
    - [Quality toolbox](https://gitlab.com/gitlab-org/quality/toolbox)

### Reviewers and maintainers

Upon joining the Quality department, team members are granted either developer, maintainer, or owner access to a variety of core projects. For projects where only developer access is initially granted, there are some criteria that should be met before maintainer access is granted.

- [GitLab Tooling and Pipeline configuration](https://gitlab.com/gitlab-org/gitlab/-/blob/35789a64a6519ee764c8cb3b98f9287915e96e9d/.gitlab/CODEOWNERS#L82-117)
  - GitLab Tooling and Pipeline configuration consists of scripts and config files used for both local development and for CI pipelines. Changes made to these files have wide impact to developer experience at GitLab.
    - Please note: despite being two different code categories, the [Reviewer roulette](https://gitlab-org.gitlab.io/gitlab-roulette/) is designed to suggest `@gl-quality/tooling-maintainers` to review both `Tooling` and `Pipeline configuration` MRs. We have [an issue](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/34708) to split up maintainers for `Gitlab Tooling` and `Gitlab Pipeline configuration` into `@gl-quality/tooling-maintainers` and `@gl-quality/pipeline-maintainers`. For now, everyone in `@gl-quality/tooling-maintainers` is required to have the knowledge to review both code changes.
  - To become a Tooling and Pipeline configuration maintainer, one must have:
    - Read https://docs.gitlab.com/ee/development/pipelines/index.html and https://docs.gitlab.com/ee/development/pipelines/internals.html and is familiar with GitLab's internal pipeline configuration rules and patterns.
    - Authored 5 merged MRs for Tooling maintenance and improvements.
    - Authored 5 merged MRs for Pipeline configuration maintenance and improvements.
    - Reviewed 10 MRs demonstrate good understanding of tooling and GitLab pipeline configurations.
    - After completing the above requirements, a merge request is created in the [handbook](https://gitlab.com/gitlab-com/www-gitlab-com) to update their [team member YAML](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/team_members/person?ref_type=heads) outlining the reasons why they should be a maintainer and list all 20 merge requests to help aid with review. This MR must be approved by a member of `@gl-quality/tooling-maintainers`.
- [GitLab Triage](https://gitlab.com/gitlab-org/ruby/gems/gitlab-triage)
  - Authored 5 merged MRs.
  - Reviewed 5 MRs.
  - After completing the above requirement the maintainer should be vetted by an existing maintainer in the Engineering Productivity team. An issue should be created in the project outlining the reasons why this person should be a maintainer. List all 10 MRs in the issue to help aid with review.
  - After the issue has been reviewed and approved by manager of the Engineering Productivity team, an access request will be created to grant the engineer maintainer role.
- [GitLab Roulette](https://gitlab.com/gitlab-org/gitlab-roulette)
  - Authored or reviewed 2 MRs in total.
- [GitLab Development Kit](https://gitlab.com/gitlab-org/gitlab-development-kit)
  - In general, we expect that team members will generally feel comfortable and will be granted maintainer access once they have:
    - Authored 5 MRs related to new features or improvements for GDK.
    - Reviewed 10 MRs.
  - After completing the above requirement, the maintainer should be vetted by an existing maintainer in GDK. A merge request should be created in the `www-gitlab-com` repository outlining the reasons why this person should be a maintainer.
- [GitLab Styles](https://gitlab.com/gitlab-org/ruby/gems/gitlab-styles)
  - Authored or reviewed 2 MRs in total.
- [GitLab Dangerfiles](https://gitlab.com/gitlab-org/ruby/gems/gitlab-dangerfiles)
  - Authored or reviewed 5 MRs in total.
- [GitLab Quality Test Tooling](https://gitlab.com/gitlab-org/ruby/gems/gitlab_quality-test_tooling)
  - Authored or reviewed 5 MRs in total.
- [Triage Ops](https://gitlab.com/gitlab-org/quality/triage-ops)
  - Authored or reviewed 10 MRs in total.

#### Becoming a maintainer

The following guidelines will help you to become a maintainer. Remember that there is no specific
timeline on this, and that you should work together with your manager and current maintainers.

To start the process of becoming a maintainer, see the [maintainer section](/handbook/engineering/workflow/code-review/#how-to-become-a-project-maintainer)
of the code review guidelines.

In general, you're required to author and review 3 - 10 MRs that demonstrate good overall understanding
of the existing codebase and framework. See the section above for [further details of the requirements](#reviewers-and-maintainers).
You can seek out more opportunities to work on framework improvements by asking on the `#quality` Slack channel.

Your reviews should aim to cover maintainer responsibilities as well as reviewer responsibilities.
Your approval means you think it is ready to merge.

It is your responsibility to set up any necessary meetings to discuss your
progress with current maintainers, as well as your manager. These can be at any
frequency that is right for you.

## Project Management

Our team's [Quality: Engineering Productivity board](https://gitlab.com/groups/gitlab-org/-/boards/978615?label_name[]=Engineering%20Productivity) shows the current ownership of workload / issues maintained by team members in Engineering Productivity team.

