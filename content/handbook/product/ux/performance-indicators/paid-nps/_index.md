---
title: "Paid NPS (Deprecated)"
description: "The Paid NPS (Paid Net Promoter Score) was a survey metric previously used by the Product Division to measure customer satisfaction. This survey has been deprecated as of FY24 Q4 and replaced by the Customer Satisfaction (CSAT) survey."
---

## Paid NPS survey (PNPS)

### How PNPS works

We determine our Net Promoter Score for paid users of GitLab.com (SaaS) on a quarterly basis through a survey launched via Qualtrics. A [data collection and analysis issue](https://gitlab.com/gitlab-com/Product/-/blob/main/.gitlab/issue_templates/ProdOps-PNPS-Collection-Analysis.md) ([example](https://gitlab.com/gitlab-com/Product/-/issues/5025)) is automatically created at the beginning of each quarter which is the SSOT and outlines all tasks, DRIs, and due dates. Data is collected over a period of six weeks starting in the end of a quarter and the survey stays open until the last day of the quarter. The first two weeks of the new quarter are used to analyze and report data on the previous quarter. All documents created are stored in an [internal only Google Drive](https://drive.google.com/drive/folders/1KT5qpJVWFWY_3eVqQzK8tw7ktEKhyDPn).

### Current workflow 

#### Video overviews of PNPS workflow

The following videos are internal only on GitLab Unfiltered on YouTube:

- [Summary of documentation and templates for PNPS](https://www.youtube.com/watch?v=snb6G3qqZbc)
- [Obtaining user IDs and generating a distribution list](https://www.youtube.com/watch?v=408jgKiwy5Q)
- [Distributing a PNPS survey to a list of users on Qualtrics](https://www.youtube.com/watch?v=at12BAuS_wM) 
- [Analyzing survey data and tagging open ended responses](https://www.youtube.com/watch?v=tyRfUy9-vLQ)

#### Sample goals

We aim for a sample of at least 500 with plan type proportions for our sample to be +/- 3% compared to the population proportion. 

#### Data Analysis

Data analysis consists of two components: statistical analysis and open response coding.

1. **Statistical analysis:** The majority of the statistical analysis is accomplished by the [analysis template](https://docs.google.com/spreadsheets/d/1Ay8eTQIArnIXRzWmSllNNFEC-7OThfqKHNOBAfQO_KU/edit?usp=sharing). Drop the results CSV into it to generate the data provided in the results deck. Follow the instructions in the template.
2. **Open response coding:** There are instructions on how to code the responses in the [analysis template](https://docs.google.com/spreadsheets/d/1Ay8eTQIArnIXRzWmSllNNFEC-7OThfqKHNOBAfQO_KU/edit?usp=sharing).

#### Deployment

##### Generating a list of eligible users

At the beginning of each quarter a list of eligible users to send the survey to is generated, using the following steps:

1. Remove users that were contacted more than 12 months ago from [the list of previously contacted users](https://docs.google.com/spreadsheets/d/1Q9xOh5L9QJGdW9tq89rcADvo5jozRxdo7KiO2z0HLAU/edit#gid=0).
2. Generate a list of new eligible users using the [standard NPS user query](https://drive.google.com/file/d/1Qp2ux6s0pihJdWQeeOC5f_NN8yFNcKgA/view?usp=sharing) in Snowflake. Query for approximately 22k user IDs. Create a new [spreadsheet for this list of users](https://docs.google.com/spreadsheets/d/1AbtFF__3-1cKn4WuAiBLBjyAUvMg1uDlfF12rCkrVds/edit?usp=sharing) to track contacts for the quarter.
3. Calculate the [proportions of SaaS users by plan type](https://10az.online.tableau.com/#/site/gitlab/views/DraftTDLicensedUsersbyProductRatePlanName/TDLicensedUsersbyProductRatePlanName?:iid=1) for the current quarter. Add these percentages to the user list to help calculate how many users for each plan type you need to invite. The end goal is to achieve a sample breakdown that roughly matches the population's breakdown (+/- 3%).

##### Sending an email wave

1. Using the percentages you calculated, determine how many users for each plan type you need to contact for the wave. If it’s the first wave, use the population proportions. If it’s a subsequent wave, use the proportions you calculate based on the responses so far (see next point).
2. To calculate your current sample plan proportions, download your survey results from Qualtrics. Delete everything but the current quarter. Calculate the percentage breakdown of plans so far. Then subtract that number from the population percentage, and then add the result to the population percentage. 
An example with fake numbers: 
- Population percentage for Ultimate = 73%
- Percentage of Ultimate plan types after sending wave 1 = 65%
- wave 2 percentage for Ultimate: (73% - 65%) + 73% = 81%
In this example the sample is under the population, hence the next wave percentage is higher than the population to try and make that up. 
3. Waves should be ~5000 users. Mark the desired number of users out of that 5000 that fit your percentages for each plan type with the name of the wave you are sending.
4. Paste all the user IDs for that wave into a new sheet, following the [process for uploading user IDs into Qualtrics](/handbook/engineering/ux/qualtrics/#distributing-your-survey-to-gitlabcom-users).
5. Once the mailing list has been created in Qualtrics double-check that no @gitlab.com email addresses were included, and create a new email distribution for the SaaS PNPS survey in Qualtrics using the `PNPS Survey Distribution - Current Survey Template`. **Make sure to edit the advanced survey options to set the link expiration to the last day of the quarter**. 
6. Typically emails are scheduled to go out Monday - Friday early in the morning US time (8 - 9am Eastern Time) with the goal of maximizing visibility and responses, but this is far from scientific and open to change. Qualtrics supports scheduling email ahead of time.

Once all email waves have been sent, add the user IDs that were used this quarter to the previously contacted sheet, noting the quarter. This allows us to avoid contacting the same users too frequently. 

### Outreach to `PNPS` users

We give PNPS survey respondents the option to indicate whether they would be open to a follow-up interview when filling in the survey. As part of the analysis, a list of users that agreed to the follow-up is generated. 

After the quarterly analysis is shared out, UX Research initiates outreach to PNPS responders who opted into contact via this [automated issue](https://gitlab.com/gitlab-com/Product/-/blob/main/.gitlab/issue_templates/ProdOps-PNPS-Responder-Outreach.md). The detailed PNPS responder outreach workflow can be seen [here](/handbook/product/product-processes/#pnps-responder-outreach).

### Displaying the data

UX Research creates and communicates the [PNPS reports](/handbook/product/ux/performance-indicators/paid-nps/#past-pnps-reports) and partners with Product Analytics to maintain the [PNPS dashboards](https://internal.gitlab.com/handbook/company/performance-indicators/product/#paid-net-promoter-score-pnps). 

#### PNPS charts and maintenance
There are two charts in Sisense that we reference when analyzing the PNPS results:

- [Score by quarter](https://app.periscopedata.com/app/gitlab/1050043/PNPS-Dashboard?widget=14974938)
- [Current quarter detractor, passive, promoter](https://app.periscopedata.com/app/gitlab/1050043/PNPS-Dashboard?widget=14974956)

They can also [be found in the Product Performance Indicators section of the internal handbook](https://internal.gitlab.com/handbook/company/performance-indicators/product/#paid-net-promoter-score-pnps).

The survey responses in Qualtrics are synced to the `qualtrics_nps_scores` table which populates these charts.

#### Excluding Responses

There may be an occasional need to remove certain records (such as internal test records) from the data. The `pnps_excluded_response_ids` Sisense snippet is used to manage these excluded `response_id`s. When a response has to be excluded, go to [edit the PNPS Excluded Response IDs snippet](https://app.periscopedata.com/app/gitlab/snippet/pnps_excluded_response_ids/558761ad2812415aab07b2efafe46ff5/edit) and add the `response_id` to the list. Make sure to match the formatting of the other response IDs and eliminate any spaces. If you are working on a new chart and would like to incorporate this snippet, you just have to add `WHERE response_id NOT IN ([pnps_excluded_response_ids])` to the WHERE clause.

#### Backtracking Responses

For past reports, we have gotten requests to answer additional questions about the PNPS survey data. When these requests arise, we've partnered with Product Analytics to get support connecting PNPS respondents to internal data sources. We create an issue in the Product Data Insights project in GitLab and submit this  request to `@dpeterson1`. 

### Past PNPS Reports

#### FY24

- [Q4 FY24](https://docs.google.com/presentation/d/16Pp-0luW72Yi2GnDvzVLqxwSKlUo5zjqzvLDXpZDaas/edit#slide=id.g2313fc6cf8e_0_0)
- [Q3 FY24](https://docs.google.com/presentation/d/1-ku4U2NUZAQrSCSeH2mvZVaTkKajFa012uFSlLMKgvw/edit#slide=id.g2313fc6cf8e_0_0)
- [Q2 FY24](https://docs.google.com/presentation/d/1zAYvC2tehCsbTQ3WrED6q2jbg84-nv4NTj93VE0Eh6o/edit#slide=id.g2313fc6cf8e_0_0)
- [Q1 FY24](https://docs.google.com/presentation/d/1s3uVhZSdo5An0z3utSgrLdCiFLO-2H59WDyqSbhvGkM/edit#slide=id.g59bfc474c5_2_145)

#### FY23

- [Q4 FY23](https://docs.google.com/presentation/d/1uEGRYIR2fPpzsgTVrn1fXx-nv7BoFK_6Zjps_cc2sFE/edit#slide=id.g59bfc474c5_2_145)
- [Q3 FY23](https://docs.google.com/presentation/d/1vcEAEbWPolfS85NLzklBmlebcvykXOmEhR_qK63W-Fg/edit#slide=id.g59bfc474c5_2_145)
- [Q2 FY23](https://docs.google.com/presentation/d/13pkZne6go_mjLFr-azLdcufHHpf17wN_u-ubRhHiUco/edit#slide=id.g59bfc474c5_2_145)
- [Q1 FY23](https://docs.google.com/presentation/d/1z2odj2PhtsjxOnVhbxp6svAd5nBhHZ4TsDWZ_YmQOaQ/edit#slide=id.g59bfc474c5_2_145)

#### FY22

- [Q4 FY22](https://docs.google.com/presentation/d/1B_vQTZcQcDK0y81X7l7XgnbOUfN86MDR4z2QKAcAeEo/edit#slide=id.g59bfc474c5_2_145)
- [Q3 FY22](https://docs.google.com/presentation/d/1Ra_DuI5Uq6aCwDY-pr64qiwT8Oeoz4TWQq9Ag12FgOA/edit#slide=id.g59bfc474c5_2_145)
- [Q2 FY22](https://docs.google.com/presentation/d/1RoGZuDMSnC6c8DYu-_4ugOuRAOqrmm338mWwzp5_tSc/edit#slide=id.g59bfc474c5_2_145)
- [Q1 FY22](https://docs.google.com/presentation/d/14wBTy7mLd4qAOrsy36h7HjEWPXHxmYxK8c3l4Xw7hkM/edit#slide=id.g59bfc474c5_2_145)

#### FY21

- [Q4 FY21](https://docs.google.com/presentation/d/1BYh0gg8ogmmW8_hwmvi30Yr3Wh5aIXEa_M8RHrQ5ciw/edit#slide=id.g59bfc474c5_2_145)
- [Q3 FY21](https://docs.google.com/presentation/d/1bXM7hGlV_INTJrzObO_4VlIj1zkfYn6JIqvOCjHJHZo/edit#slide=id.g59bfc474c5_2_145)
- [Q2 FY21](https://docs.google.com/presentation/d/1hi0opmahxsv_FLVtSj6m4zMFmXWK0YfJxHq7wUqO-Zs/edit#slide=id.g59bfc474c5_2_145)
- [Q1 FY21](https://docs.google.com/presentation/d/1AqlpFl_3jUPyGHqCp9ZRy2NFOf-AyT-WhF-8JoIzgCk/edit#slide=id.g59bfc474c5_2_145)