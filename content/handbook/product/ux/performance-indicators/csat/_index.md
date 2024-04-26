---
title: "CSAT"
description: "The Customer Satisfaction (CSAT) survey is a performance indicator we use within the Product division to measure the customer satisfaction of our product."
---

## Customer Satisfaction (CSAT) survey 

### How CSAT works

UX Research determines our Product CSAT score for paid users of GitLab.com, self-managed GitLab, and GitLab Dedicated on a quarterly basis through a survey launched through Qualtrics. A [CSAT template issue](https://gitlab.com/gitlab-org/ux-research/-/blob/master/.gitlab/issue_templates/CSAT%20Survey.md) is created by the UX Research DRI at the beginning of each quarter. The issue template contains background information, research goals, and processes on conducting the survey from start to finish. Data is collected over a period of four weeks starting in the beginning of a quarter and the survey stays open until we have met our [data collection goals](/handbook/product/ux/performance-indicators/csat/sample-goals). The next two weeks after data collection are used to clean, analyze, and report on the survey responses. All documents created are stored in an [internal only Google Drive within UX Research](https://drive.google.com/drive/u/0/folders/1ia-SJujFRWgOpnBGUdLE6gAWE8ldf0DM).

### Current workflow 

#### Sample goals

UX Research aims for a sample size of 400 total responses with plan type proportions for our sample to be +/- 3% compared to the population proportion. Self-managed users are excluded from this proportion because we've traditionally had difficulty recruiting them for research. Thus, we aim for 80-100 responses from self-managed users, which is based on the number of responses to past System Usability Scale surveys.

#### Data analysis

Data analysis consists of two components: quantitative analysis and open response coding.

1. **Quantitative analysis:** The majority of the quantitative analysis is accomplished by using the [analysis template](https://docs.google.com/spreadsheets/d/1Klb9RO83F7EiB6TojIxvr-qEqyXjr36P7LJ-S4b0924/edit?usp=sharing). The final cleaned data inserted in the `completed` tab automatically updates information in the `summary` tab, which shows the overall results. From there, the UX Research DRI can transpose the results from the `summary` tab and insert them into the [CSAT Google Slide deck template](https://docs.google.com/presentation/d/1HZybf-BPssjsI0ppen5ehdGSJ5vOqr1Socjg2g0jErs/edit?usp=sharing).
2. **Open response coding:** The UX Research DRI will review the open response feedback left by CSAT respondents in the `open ended feedback` tab of the [analysis template](https://docs.google.com/spreadsheets/d/1Klb9RO83F7EiB6TojIxvr-qEqyXjr36P7LJ-S4b0924/edit?usp=sharing) and categorize the data into a list of pre-defined themes (see `theme glossary` tab for descriptions and examples for each theme).

#### Deployment

##### Generating a list of eligible users

At the beginning of each quarter, the UX Research DRI will generate a list of eligible users to distribute the CSAT survey through the following steps:

1. Generate a new list of paid GitLab.com users to contact by using the following [query](https://docs.google.com/document/d/1XSABfApXJY_VHm7Q9j4V64xsMNkSorb5SWcLn-b4Tfk/edit?usp=sharing) in Snowflake. Query for approximately 22,000 user IDs and email addresses. Note: You will need access to Snowflake and SAFE data to query the data tables in this step. If you do not have access to one or both, please create an [Access Request issue](https://handbook.gitlab.com/handbook/business-technology/end-user-services/onboarding-access-requests/access-requests/#individual-or-bulk-access-request).
2. Contact the Research Operations Coordinator through a [recruiting request issue](https://gitlab.com/gitlab-org/ux-research/-/blob/master/.gitlab/issue_templates/Recruiting%20request.md?ref_type=heads) template to generate a list of paid self-managed GitLab users.
3. Contact Marketing Analytics in the `#mktg-analytics` channel in Slack to get help with generating a list of GitLab Dedicated users.
4. Create a list of users you've compiled in steps 1-3 within the [CSAT user Google Sheet template](https://docs.google.com/spreadsheets/d/1y9cedI2uoHNaoZ1IgXkH7CB0fecvlg-RGsJp_mihpEI/edit#gid=0) to track contacts for the quarter.
5. Remove users that were contacted more than 12 months ago from [the list of previously contacted users](https://docs.google.com/spreadsheets/d/1Q9xOh5L9QJGdW9tq89rcADvo5jozRxdo7KiO2z0HLAU/edit#gid=0).
6. Create a copy of the sheet containing the users you will contact this quarter and insert it in the [CSM / UX Survey Participants Google Drive Folder](https://drive.google.com/drive/folders/1ecM1ptkaNfNA0Im9wHulcl64QrCBOybQ), so Customer Success can avoid contacting the same users in their CSAT survey.
7. Calculate the [proportions by plan type](https://10az.online.tableau.com/#/site/gitlab/views/DraftTDLicensedUsersbyProductRatePlanName/TDLicensedUsersbyProductRatePlanName?:iid=1) for the current quarter. Add these percentages to the user list to help calculate how many users for each plan type you need to invite. The end goal is to achieve a sample breakdown that roughly matches the population's breakdown (+/- 3%). Note: You will need access to Tableau and SAFE data to view the link in this step. If you do not have access to one or both, please create an [Access Request issue](https://handbook.gitlab.com/handbook/business-technology/end-user-services/onboarding-access-requests/access-requests/#individual-or-bulk-access-request).

##### Sending an email wave

1. Using the percentages you calculated in the `percentages` tab of the [CSAT user list Google Sheet template](https://docs.google.com/spreadsheets/d/1y9cedI2uoHNaoZ1IgXkH7CB0fecvlg-RGsJp_mihpEI/edit#gid=776912528), determine how many users for each plan type you need to contact for the wave. If it’s the first wave, use the population proportions. If it’s a subsequent wave, use the proportions you calculate based on the responses so far (see next point).
2. To calculate your current sample plan proportions, download your survey results from Qualtrics. Calculate the percentage breakdown of plans so far. Then subtract that number from the population percentage and add the result to the population percentage. 
An example with fake numbers: 
- Population percentage for Ultimate = 73%
- Percentage of Ultimate plan types after sending wave 1 = 65%
- Wave 2 percentage for Ultimate: (73% - 65%) + 73% = 81%
In this example, the sample is under the population, hence the next wave percentage is higher than the population to try to get within 3% of the population percentage for Ultimate. 
3. Waves should be ~2,000 users. Mark the desired number of users out of that 2,000 that fit your percentages for each plan type with the name of the wave you are sending.
4. Paste all the emails for that wave into a new sheet and upload them into the participant list for your CSAT project in Rally.
5. Once the mailing list has been uploaded to Rally, filter out `@gitlab.com` email addresses and people contacted about previous CSAT surveys from the past 12 months.
6. Create a new email distribution using the `CSAT survey template` email in Rally.
7. Typically emails are scheduled to go out Monday - Friday early in the morning US time (8 - 9am Eastern Time) with the goal of maximizing visibility and responses. 

Once all email waves have been sent, add the user IDs and email that were used this quarter to the [previously contacted sheet](https://docs.google.com/spreadsheets/d/1Q9xOh5L9QJGdW9tq89rcADvo5jozRxdo7KiO2z0HLAU/edit#gid=0), noting the quarter they were contacted. This allows us to avoid contacting the same users too frequently. 

### Outreach to CSAT responders

When filling in the survey, UX Research gives CSAT respondents the option to indicate whether they would be open to a follow up interview. As part of the analysis, the UX Research DRI will compile a list of users who agreed to the follow up interview (see [Google Sheet template for CSAT follow up users](https://docs.google.com/spreadsheets/d/1425a6pwfjTKjTpiNKPGYzvwzEHUgm5L3JorFv8cE2wk/edit?usp=sharing)). 

After the research report is shared out, the UX Research DRI will notify Product Managers, Product Designers, and Customer Success Managers about CSAT responders who opted into contact via this [CSAT Responder Outreach issue template](https://gitlab.com/gitlab-org/ux-research/-/blob/master/.gitlab/issue_templates/CSAT%20Responder%20Outreach.md). The CSAT responder outreach workflow is described in more detail [here](/handbook/product/product-processes/#csat-responder-outreach).

### Displaying the data

UX Research creates and communicates the [CSAT reports](/handbook/product/ux/performance-indicators/csat/#past-csat-reports) and partners with Product Data Insights to maintain the [CSAT dashboards for the UX department](/handbook/product/ux/performance-indicators/#regular-performance-indicators). 

#### CSAT dashboards and maintenance
There are two internal dashboards in Tableau meant for presenting CSAT results:

- [CSAT Scores](https://10az.online.tableau.com/#/site/gitlab/views/DRAFT-UXKPIs/WIPDRAFTCSATScores?:iid=7): This dashboard shows the number and percentage of responses between those who are satisfied with GitLab the product (ratings of `satisfied` and `very satisfied`) and those who are not (ratings of `neutral`, `dissatisfied`, and `very dissatisfied`).
- [CSAT Line Chart](https://10az.online.tableau.com/#/site/gitlab/views/DRAFT-UXKPIs/WIPDRAFTCSATLineChart?:iid=7): This dashboard

These dashboards can also be found in the [UX Department Performance Indicators page](https://handbook.gitlab.com/handbook/product/ux/performance-indicators/#regular-performance-indicators).

The survey data in the [analysis template](https://docs.google.com/spreadsheets/d/1Klb9RO83F7EiB6TojIxvr-qEqyXjr36P7LJ-S4b0924/edit?usp=sharing) gets connected to Tableau to show data from the current and previous quarters. UX Research is responsible for working with Product Data Insights to update these Tableau dashboards each quarter.

#### Follow up questions

For past reports, UX Research has gotten requests to answer follow up questions about the CSAT survey data (for example: What is the breakdown of company size across the survey responses?). When these requests arise, we've partnered with Product Data Insights to get support connecting CSAT respondents to internal data sources (i.e., Snowflake). We create an `ad hoc request` issue in the [Product Data Insights project](https://gitlab.com/gitlab-data/product-analytics) in GitLab and submit this request to a [member of their team](https://handbook.gitlab.com/handbook/product/product-analysis/#team-members). 

### Past CSAT reports

#### FY24 reports

- [FY24 Q3 Pilot](https://docs.google.com/presentation/d/1Y31vrGL9DUY_3K5OYXwtpDqVY3l_9I9M3X1v2jsYCRk/edit?usp=sharing)
