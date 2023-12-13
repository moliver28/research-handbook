---

title: "GitLab for Open Source Program Verification"
description: "Read details regarding the process of verification for the GitLab for Open Source Program."
---

## Overview

This page contains details regarding the process of verifying applications for [GitLab for Open Source Program](/solutions/open-source/). Because the GitLab for Open Source Program is part of GitLab's [Community Programs](/handbook/marketing/developer-relations/community-programs/), team members verify applications by using the seven-step [Community Programs Automation Workflow](/handbook/marketing/developer-relations/community-programs/automated-community-programs). See the handbook page on that workflow for details that pertain to all GitLab community programs.

## Program application form

GitLab engages a third party, [SheerID](https://www.sheerid.com/), to assist with processing program applications and verifying that applicants meet program requirements.
Applicants must complete [a SheerID form](https://offers.sheerid.com/gitlab/member/) to apply for the GitLab for Open Source Program:
This SheerID form contains the following fields:

- First Name
- Last Name
- Email Address
- Country (drop down list)[^1]
- Open Source Organization or Project Name
- Project Description
- Publicly Visible Project on GitLab
- OSI Approved License
- Not Seeking Profile (checkbox)
- Marketing email opt-in (checkbox)

The SheerID form also includes the following statement, added with help from GitLab's legal team:

> By submitting this form, you understand that your information will be shared with GitLab by SheerID and used for verification purposes.
> 
> For more information please see the [GitLab's Privacy Policy](/privacy/).
> 
> If you are accepted into the GitLab for Open Source Program, you will be subject to [GitLab's terms and conditions](/handbook/legal/opensource-agreement/). All use of GitLab products must comply with United States export control and economic sanction laws.

## Verifying applicants

Eligibility requirements for the GitLab for Open Source Program are listed in the [program's handbook page](/handbook/marketing/developer-relations/community-programs/open-source-program/).
SheerID assists GitLab with reviewing program applications and ensuring applicants meet these program requirements.

SheerID is not able to completely automate the [Verification phase](/handbook/marketing/developer-relations/community-programs/automated-community-programs/#verification) of the application workflow for the GitLab for Open Source Program.
This means the program manager and other trained team members must verify applications with some amount of manual effort.
However, while unable to fully automate the Verification phase, SheerID is able to make the reviewing process easier by doing the following:

* Requesting screenshots to verify the project's publicly visible status and application of OSI-approved licenses
* Asking the applicant to check a box to certify they are not seeking profit with their project

When applicants submit forms to the GitLab for Open Source Program, those forms enter a review queue. Note that:

* Applications in the queue expire after 20 days
* The queue displays only the 20 most recently submitted applications; when processed, older applications become visible

Verification for the GitLab for Open Source Program will require an application processing team until further automation is implemented.
The team plans to explore ways to more fully automate the application process of the program in the future.

Applicants have two attempts to upload a documentation verifying their eligibility for the GitLab for Open Source Program.
Upon two unsuccessful attempts, applicant will be rejected.

Use SheerID to review these documents via the [SheerID Review Portal](https://my.sheerid.com/) according to the following process:

 1. Login to MySheerID. Go to the "Document review" section.
 1. Click "Begin" or click on any open application to view.
 1. _Verify license type:_ Make sure that an OSI approved license is being used by checking the screenshot against this [OSI license list](https://opensource.org/licenses/alphabetical). If you find a match, check the box on the right about license type.
 1. _Verify public settings:_ make sure there is a screenshot showing that the project is publicly visible. If it is, click on the checkbox saying you've verified this.
 1. Visit the applying namespace on GitLab to verify that all remaining projects in the namespace meet program requirements.
 1. If all requested screenshots are present, `Approve` the application. Click `Hold` if you need more time to decide, or `Reject` if they do not meet the criteria.

Reviewers should be sure to check different views in the "Review Documents" section.
A drop-down field takes reveals applications "On Hold" and "Escalated."

Successfully verified applicants receive a welcome email containing a coupon code and instructions for activating their subscriptions.
See the [Community Applications Workflow](/handbook/marketing/developer-relations/community-programs/community-programs-workflows/) for additional details on what follows.

If the GitLab review team is unable to determine an applicant's eligibility based on the screenshots that the applicant provided via the SheerID Review Portal, the GitLab review the applicant's namespace directly.
In cases where a namespace contains several projects in need to verification, the team will use the [OS License Checker tool](https://gitlab.com/gitlab-org/os-license-checker) to automate scanning and validation of the namespace.
If the namespace does not qualify for the program, the team will send the applicant a rejection email that follows [the team's correspondence template](https://gitlab.com/gitlab-com/marketing/developer-relations/community-programs/operations/-/tree/main/support-macros/opensource).
Applicants can then contact `opensource@gitlab.com` if they believe the rejection was sent in error, or if they have additional questions about eligibility.

## Verification limit

Any individual can apply through the form and attempt verification up to five times per 365-day period.
This limit provides room for error and allows a single individual to apply for licenses on behalf of multiple open source projects.
This limit is determined by GitLab and set by SheerID.
It can be changed at any time.

[^1] The GitLab for Open Source Program cannnot accept applications US embargoed countries.
SheerID is not able to separate out the two different regions in Ukraine, so we have asked them to remove Ukraine entirely from the list of countries.
Applicants from Ukraine will need to contact the team directly at `opensource@gitlab.com`, and team members determine whether they qualify based on their region of origin.
