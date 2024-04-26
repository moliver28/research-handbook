---

title: Collaboration on shared feature and experience areas
description: "Collaboration process and documentation of shared feature areas for product groups"
---

## Cross-stage feature collaboration

Each stage is responsible for building functionality that furthers their vision and direction. Even if some components of that functionality happen to cross into spaces typically owned by other stages, they should still build it (if it's important to them).

If the feature isn't _necessary or urgently needed to move forward_ (for example, it won't block another feature's development), then you can always consider putting it on the backlog of the stage that owns that feature.

Here are some guidelines for thinking about "Which stage should do this work?":

1. If a stage wants to develop new functionality that is core to their value, even if it _happens to live inside_ a feature owned by another stage, they should still build it.
1. Alternately, if the functionality lives inside another stage's feature, but is also very-much a _"nice-to-have"_, they should consider putting it in an issue and labeling it appropriately. This way, the stage that owns that feature can prioritize it at a later date when it makes sense for them to do so.
1. External requests for integration with 3rd-party systems will be handled by the [`Manage:Import and Integrate` group](https://about.gitlab.com/direction/manage/import_and_integrate/) by default. But again, if the feature is core to a stage's value proposition, they should go ahead and build it themselves.

This model allows teams to be flexible and calibrate their priorities accordingly, and no team should ever be "blocked." Exceptions may be items where a change requires anything that a software engineer would not be allowed to do, such as a production change, in which case the infrastructure team would be the blocker.

While any team can contribute features to any stage, it is recommended to loop in the most relevant PM from that Group to provide strategic support to help the contributing team align to the Group's broader plan and vision.

Below is a guide to help other product groups understand how to work on these areas and quickly locate the best parties who may assist on the subject matter.

This section is modeled after the engineering handbook version of [ownership of shared services and components](/handbook/engineering/development/#ownership-of-shared-services-and-components).

### Existing Cross-Stage Capabilities
- [Merge Requests](https://docs.gitlab.com/ee/user/project/merge_requests/) - also see [collaboration process](/handbook/product/cross-stage-features/merge-requests) 
- [Define your CI/CD pipelines directly in your repository](https://docs.gitlab.com/ee/ci/yaml/gitlab_ci_yaml.html)
- [Releases associated to milestones](https://docs.gitlab.com/ee/user/project/releases/#associate-milestones-with-a-release)
- [Generate a Release from .gitlab-ci.yml](https://docs.gitlab.com/ee/ci/yaml/#release)
- [Create a GitLab or Jira issue from a vulnerability](https://docs.gitlab.com/ee/user/application_security/vulnerabilities/#create-an-issue-for-a-vulnerability)
- [Create a merge request from an issue](https://docs.gitlab.com/ee/user/project/repository/web_editor.html#create-a-new-branch-from-an-issue)
- [Measure DevOps success via the DORA metrics](https://docs.gitlab.com/ee/api/dora4_project_analytics.html)
- [Create Incidents as an Issue Type](https://docs.gitlab.com/ee/operations/incident_management/manage_incidents.html#from-the-issues-list)
- [Connect your clusters via the CI/CD Tunnel](https://docs.gitlab.com/ee/user/clusters/agent/ci_cd_tunnel.html)
- [Relate issues and Feature Flags](https://docs.gitlab.com/ee/operations/feature_flags.html#feature-flag-related-issues)
- [Run multiple pipelines and project dependencies with multi-project pipelines](https://docs.gitlab.com/ee/ci/pipelines/multi_project_pipelines.html)
- [Enable concurrency control during deployments with Resource Groups](https://docs.gitlab.com/ee/ci/resource_groups/)
- [Associate job artifacts, or a generic package to a Release](https://docs.gitlab.com/ee/user/project/releases/)

### Planned Cross-Stage Improvements
- [Software Supply Chain Security](https://about.gitlab.com/direction/supply-chain/)
