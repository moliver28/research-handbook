---
title: "Security Assurance - Automations Library"
---

## Has this been automated for the team yet?

This page is intended to provide a jumping off point for what components of Security Assurance have been automated and are available for use by team members. It includes ad-hoc automations that should be triggered by team members whenever desired as well as ongoing scheduled automations in place.

## Layout

Each automation added to this page should contain the below details at minimum:

- Header title as anchor
- Brief Description
- Repository Link (may be a private/limited access project)
- Best Point of Contact for Questions

### What is in place and always running?

#### Header Title Anchor

- Brief Description
- Repository Link
- Point of Contact

#### Authomize Sync

- This automation syncs user listings from various systems into Authomize (User Access Review Tool) on a daily basis. A manual sync can be triggered if required.
- [Primary GitLab Project Link](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/automation-team/authomize)
- Contact: [Byron Boots - Senior Security Assurance Engineer](https://gitlab.com/byronboots)

#### Automated Testing of CM-5 (Testing for Project Settings to enforce SOD)

- This automation generates a testing workbook on a weekly basis with details of which projects in a curated list of critical projects are configured in a way to enforce SOD for repository changes by reviewing MR Approvals, Approval Rules, and Protected Branch settings. The output is an excel workbook with details of which individual settings caused any noted failures where SOD wouldn't be enforced.
- [Primary GitLab Project Link](https://gitlab.com/gitlab-com/gl-security/security-assurance/governance-and-field-security/governance/security-assurance-automation-subgroup/gitlab-testing-and-populations)
- Contact: [Byron Boots - Senior Security Assurance Engineer](https://gitlab.com/byronboots)

#### User Access Review Listing Requests

- This automation generates UAR listing requests for those systems unable to be/not yet integrated into Authomize (User Access Review Tool). The schedule for requests is defined per listing and issues are automatically assigned to the correct team members for actioning.
- [Primary GitLab Project Link](https://gitlab.com/gitlab-com/gl-security/security-assurance/governance-and-field-security/governance/security-assurance-automation-subgroup/user-access-review-pipelines)
- Contact: [Byron Boots - Senior Security Assurance Engineer](https://gitlab.com/byronboots)

#### Audit Support Requests

- This automation generates issues with requests/milestones/action items associated with audit activities. The schedule for issues that are created is defined per issue to be created and issues are automatically assigned to the correct team members for actioning.
- [Primary GitLab Project Link](https://gitlab.com/gitlab-com/gl-security/security-assurance/governance-and-field-security/governance/security-assurance-automation-subgroup/recurring-audit-prep)
- Contact: [Byron Boots - Senior Security Assurance Engineer](https://gitlab.com/byronboots)

#### Recurring Team Action Issues

- These automations generate issues on a weekly basis to track weekly action items, highlights and other recurring work activities.
- Project Links
    - [Risk Team](https://gitlab.com/gitlab-com/gl-security/security-assurance/governance-and-field-security/governance/security-assurance-automation-subgroup/security-risk-recurring-issues)
    - [Commercial Compliance](https://gitlab.com/gitlab-com/gl-security/security-assurance/governance-and-field-security/governance/security-assurance-automation-subgroup/security-risk-recurring-issues)
- Contact: [Byron Boots - Senior Security Assurance Engineer](https://gitlab.com/byronboots)

### What can I trigger ad-hoc?

#### GitLab Export

- This automation allows users to generate listings of Accounts, Deployments, Issues, Label Usage, Group/Project Members, and Personal Access Tokens in an easy to use .csv format.
- [Primary GitLab Project Link](https://gitlab.com/gitlab-private/gl-security/security-assurance/sec-compliance/gitlab-export)
- Contact: [Byron Boots - Senior Security Assurance Engineer](https://gitlab.com/byronboots)

#### Automated Access Request Issue Creation

- This automation consumes a completed UAR output from our Access Review tool and parses the information into a standardized GitLab Issue Access Request for actioning by the appropriate systems owner.
- [Primary GitLab Project Link](https://gitlab.com/gitlab-private/gl-security/security-assurance/security-assurance-automation/uar-ar-autocreate)
- Contact: [Byron Boots - Senior Security Assurance Engineer](https://gitlab.com/byronboots)

#### Automated Terminated Access Review

- This automation consumes a UAR output from our Access Review tool and performs a review for terminated users against team member and contractor records. Account details are populated for strongly matched identities and weakly matched identities have found details compiled for ease of review.
- [Primary GitLab Project Link](https://gitlab.com/gitlab-private/gl-security/security-assurance/security-assurance-automation/uar-terminations-check)
- Contact: [Byron Boots - Senior Security Assurance Engineer](https://gitlab.com/byronboots)

#### Merged MRs Listing

- This automation allows users to generate listings of GitLab MRs for a desired project in a defined time period with the output into an easy to use .csv format.
- [Primary GitLab Project Link](https://gitlab.com/gitlab-com/gl-security/security-assurance/governance-and-field-security/governance/security-assurance-automation-subgroup/gitlab-testing-and-populations)
- Contact: [Byron Boots - Senior Security Assurance Engineer](https://gitlab.com/byronboots)

#### Closed or Open Issues Listing

- This automation allows users to generate listings of GitLab Issues for a desired project in a defined time period with the output into an easy to use .csv format.
- [Primary GitLab Project Link](https://gitlab.com/gitlab-com/gl-security/security-assurance/governance-and-field-security/governance/security-assurance-automation-subgroup/gitlab-testing-and-populations)
- Contact: [Byron Boots - Senior Security Assurance Engineer](https://gitlab.com/byronboots)

#### Automated Testing of CM-3 (Test for MRs with SOD violations)

- This automation allows users to generate a testing workbook for a project in a given time period with details on whether MRs that were merged contained SOD violations such as a user making changes to an MR after approvals were captured without requesting a new review.
- [Primary GitLab Project Link](https://gitlab.com/gitlab-com/gl-security/security-assurance/governance-and-field-security/governance/security-assurance-automation-subgroup/gitlab-testing-and-populations)
- Contact: [Byron Boots - Senior Security Assurance Engineer](https://gitlab.com/byronboots)

#### Header Title Anchor

- Brief Description
- Repository Link
- Point of Contact

## <i class="fas fa-id-card" style="color:rgb(110,73,203)" aria-hidden="true"></i> I have questions

- [Donovan Felton](/handbook/company/team/#dfelton), @dfelton, Security Assurance Engineer, Automation
- [James Sandlin](/handbook/company/team/#jsandlin), @jsandlin, Staff Security Assurance Engineer, Automation
- [Byron Boots](/handbook/company/team/#byronboots), @byronboots, Senior Security Assurance Engineer, Compliance
