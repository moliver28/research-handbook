---
title: "Release Artifacts"
description: "The Release Artifacts Working Group aims to create a new ubiqutious standard/spec to describe release artifacts within and outside of GitLab."
status: active
---

## Attributes

| Property        | Value                                                                                                                                             |
|:----------------|:--------------------------------------------------------------------------------------------------------------------------------------------------|
| Date Created    | 2024-01-01                                                                                                                                        |
| Target End Date | 2024-06-30                                                                                                                                               |
| Slack           | [#wg_release_artifacts]() (only accessible from within the company)                                         |
| Google Doc      | [Working Group Agenda]() (only accessible from within the company) |
| Issue Board     | [Issue Board]()                                                |
| Overview & Status | See [Exit Criteria](#exit-criteria) below |

## Goal

The overall business goal is position GitLab as a best-in-class release management tool for our Ultimate customers operating in highly regulated industries and for the wider cloud-native community.

The Release Artifacts Working Group wants to provide the product and R&D foundations of the business goal. The WG aims to 
create a new standard/spec to describe release artifacts within and outside of GitLab.

### Overview

We [identified](https://gitlab.com/gitlab-com/Product/-/issues/12815#note_1651889363) a large market opportunity with our financial customers. These customers require [a release artifact](https://about.gitlab.com/direction/delivery/glossary.html#release-artifact) that is worked on throughout the release process with specific parts being frozen after certain steps in the process.

> Think like an auditor (quote from a GitLab customer)

Today, no single tool provides or specification exists to describe a release artifact with strong auditing requirements. There are solutions for cloud native application delivery (CNAB, Terraform, Helm, Radar), but these tools don't include the scope of the approval process and auditing.

Moreover, while SBOMs are gaining adoption, there is no specification that would describe their usage in a standard format, to support the whole release process.

There is a clear miss in capturing the end to end business process of a release from a cross functional perspective instead of from the atomic point of view of a developer persona.

### Goals

- Create a specification for a new standard that we can donate to the CNCF
- Create a plan to implement the specification within GitLab

### Exit Criteria

The table below lists all exit criteria for the working group. See the top-level epic (TBD) for more details.

| # | Completed Date | Progress | DRI             | Criteria                                                                                                                                        |
|---|----------------|----------|-----------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| 1 | TBD | - | - | - |
| 2 | TBD | - | - | - |

## Roles and Responsibilities

| Working Group Role      | Username        | Person                                                                   | Title                                                           |
| :---------------------- | :-------------- | ------------------------------------------------------------------------ | :-------------------------------------------------------------- |
| Executive Stakeholder   | TBD     |        |                              |
| DRI             | @nagyv-gitlab  | [Viktor Nagy](/handbook/company/team/#nagyv-gitlab)   | Product Manager, Deploy:Environments                     |
| Facilitator             | @swiskow      | [Sam Wiskow](/handbook/company/team/#swiskow)        | Product Manager, Delivery & Scalability                  |
| Facilitator             | @nmezzopera     | [Nico Mezzopera](/handbook/company/team/#nmezzopera)        | Engineering Manager, Deploy:Environments                  |
| Functional Lead         |          |             |                  |
| Functional Lead         |          |             |                  |
| Functional Lead         |          |             |                  |
| Member         |          |             |                  |

## Jobs to be done

- I want to add various evidence to a release artifact (RA)
- I want to be able to collaborate on a RA, to add comments, invite others to comment
- I want to ensure that certain aspects of the RA are immutable after a specific step in the release process
- I want to deploy to non-production and production environments based on the RA
  - I want the RA to include all the environment variables and references to secrets needed for a successful deployment
  - I want to RA to support my deployment independently of the deployment target and the technology used for the deployment
- I want to roll out a new version to its users based on the information available in the RA
  - I want to switch feature flags outside of the RA, but feature flags might be defined within the RA
  - I want to switch load balancers / networking outside of the RA and it should be reflected on the state of the RA
- I want to define or reference metrics needed to evaluate a deployment or a rollout within the RA, I want to use these metrics to drive the rollout process
- When I receive an audit question. I want the release artifact to be my SSoT for answers

### Prior art

- [SBOM](https://www.ntia.gov/page/software-bill-materials)
- Within GitLab, [Release evidence](https://docs.gitlab.com/ee/user/project/releases/release_evidence.html)
- Outside of GitLab
  - Helm, Kustomize
  - Radar
  - CNAB

