---
title: "GitLab for Education Program Workflows"
description: "Details on program-specific workflows related to the GitLab for Education Program"
---

## Overview

This page contains details regarding workflows specific to the [GitLab for Education Program](https://about.gitlab.com/solutions/education/).
GitLab uses a third party, [SheerID](https://www.sheerid.com/), for verification services.
The GitLab for Education Program provides SheerID with the [program requirements](https://about.gitlab.com/solutions/education/join/#requirements) and the SheerID platform is able to verify if an individual meets our requirements by matching applicant-provided data against authoritative data sources automatically.
SheerID instantly confirms whether or not there is a match and either successfully verifies the applicant or rejects the applicant.

## Managing application forms

SheerID hosts two separate forms for the GitLab for Education Program due to differences in the reference the data set: the University Teacher Program form and the K-12 Teacher Program form

### University Teacher Program Form

The [University Teacher Program form](https://offers.sheerid.com/gitlab/university/teacher/) is the form for all higher education institutions in 194 countries.
This form contains the following fields:

- First Name
- Last Name
- Email Address
- Job Title
- Country (drop down list)
- Institution Name (drop down list)

For reasons relating to trade controls, we are unable to accept applicants from Cuba, Iran, Syria, North Korea, Russia, Belarus, or Ukraine.

### K-12 Teacher Program Form

The [K‒12 Teacher Program form](https://offers.sheerid.com/gitlab/k12/teacher/) is the form for all K-12 institutions in the United States.
SheerID does not currently have the reference data for K-12 in other countries, therefore this verification form is limited to the United States.

This form contains the following fields:

- First Name
- Last Name
- Email Address
- Job Title
- Institution Name (drop down list)

GitLab currently does not have the legal and operational requirements in place to offer SaaS licenses to any institution that may have children under the age of 13.
The K-12 portion of the GitLab for Education Program is therefore on hold until the requirements are in place.

## Application verification workflow

The SheerID verification flow for the University Teacher Program Form and K-12 Teacher Program Form are detailed here in the [SheerID Flows](https://developer.sheerid.com/concepts#flows) section of the [SheerID Developer Center](https://developer.sheerid.com/).

If applicants are not successful with the automated verification process, they will be prompted to upload a document that shows: full name and school name with a date in the current year.
Acceptable examples include Teacher ID card with valid date and pay stub from within the last 60 days.

### Manual application review

Applicants will have 3 attempts to upload a document providing verification of eligibility.
SheerID will manually review these documents.  Upon the third unsuccessful attempt, applicant will be rejected.

If SheerID is unable to determine the eligibility based on the document review, SheerID will forward the applicant's record to education@gitlab.com.
The GitLab for Education team will review the documentation and determine eligibility.

### Verification limit

Any individual can apply through the form and verify up to 5 times per 365 days.
This limit provides room for error and allows a single individual at an institution to apply for licenses on behalf of individual sub-units within the institution.
For example, an information technology administrator may apply and hold the license for multiple colleges or departments on one campus.
This limit is determined by GitLab and set in the system by SheerID.
It can be changed at any time.

