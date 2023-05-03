---
layout: handbook-page-toc
title: "GitLab Data Seeder (GDS)"
description: "Demo and Test Data generator"
---

## What is the GitLab Data Seeder (GDS)?

The GitLab Data Seeder (GDS) (formerly AwesomeCo) is a technical implementation in GitLab to allow engineers, testers, and customers alike to generate seed data in their GitLab instances for various purposes.

The Data Seeder tool was devised as a result of the [Demo & Test Data working group's][working-group] effort to address this gap.

## How it works?

GitLab's Data Seeder hinges in the following pieces of software currently in use by the GitLab project:

- [FactoryBot](https://github.com/thoughtbot/factory_bot), which is used during GitLab's feature development to fabricate and permute Rails [Models](https://www.rubydoc.info/gems/activemodel) that exist within the GitLab source.
- [Rake](https://ruby.github.io/rake), which is a Make-like program implemented in Ruby. Rake is included by default in all GitLab installations.

By providing a seed file which contains the representation of data to be created in GitLab, one can run Rake to generate the data in the GitLab UI.

[Documentation](https://docs.gitlab.com/ee/topics/data_seeder.html)

## How can it be used?

### Demoing GitLab

[Solutions Architects](https://about.gitlab.com/handbook/customer-success/solutions-architects/tools-and-resources/#data-seeding-demo-data) can create seed files, which demonstrate specific pieces of GitLab that they would like to showcase to customers.

This capability can be most helpful when demoing parts of the UI that rely on data that is time-sensitive or process-intensive to get data loaded.

This data could include, but is not limited to:

- Boards
- Epics
- Labels
- Iterations
- Milestones
- Merge Requests
- Issues
- Repositories
- Vulnerabilities

### Test Data Generation

Engineers can create specific sets of data in seed files that they would like to test.

Some examples include, but are not limited to:

- Showing burndown charts in GitLab to highlight a gap in planning.
- Loading a list of historical pipelines and their job logs.
- Testing a feature on GitLab's UI that requires a specific dataset.
- Fabricating a small or large dataset that will be used for feature and end-to-end testing.

## Working Group Information

The [Demo & Test Data working group][working-group] was created on January 19th, 2022 to solve the problem of having no uniform way
of generating data to be used with testing or demoing.

### Links

- [Working Group page][working-group]
- [Working Group Slack channel](https://gitlab.slack.com/archives/C02M7GX1SBE)
- [Ongoing Data Seeder work](https://gitlab.com/gitlab-org/gitlab/-/boards/3766722?label_name[]=wg_demo-test-data)

[working-group]: https://about.gitlab.com/company/team/structure/working-groups/demo-test-data/
