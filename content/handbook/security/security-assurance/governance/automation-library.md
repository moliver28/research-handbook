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

#### GitLab Export

- This automation allows users to generate listings of Accounts, Deployments, Issues, Label Usage, Group/Project Members, and Personal Access Tokens in an easy to use .csv format.
- [Primary GitLab Project Link](https://gitlab.com/gitlab-private/gl-security/security-assurance/sec-compliance/gitlab-export)
- Contact: [Byron Boots - Senior Security Assurance Engineer](https://gitlab.com/byronboots)

#### Automated Access Request Issue Creation
- This automation consumes a completed UAR output from our Access Review tool and parses the information into a standardized GitLab Issue Access Request for actioning by the appropriate systems owner.
- [Primary GitLab Project Link](https://gitlab.com/gitlab-private/gl-security/security-assurance/security-assurance-automation/uar-ar-autocreate)
- Contact: [Byron Boots - Senior Security Assurance Engineer](https://gitlab.com/byronboots)

### What can I trigger ad-hoc?

#### Header Title Anchor

- Brief Description
- Repository Link
- Point of Contact

## <i class="fas fa-id-card" style="color:rgb(110,73,203)" aria-hidden="true"></i> I have questions

[Donovan Felton](/handbook/company/team/#dfelton), @dfelton, Security Assurance Engineer, Automation

- [Automation design, development, and implementation]({{< ref "security-assurance-automation" >}})
- [GRC application administration]({{< ref "security-assurance#core-tools-and-systems-1" >}})
