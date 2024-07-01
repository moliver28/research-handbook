---
title: "Sales Strategy Projects"
description: "Discover GitLab's Sales Strategy team's methods and goals"
---

The Sales Strategy team is involved in multiple projects in the areas of Analytics, GTM and Field Planning.

---

## Fortune Rank to SFDC

[Please see the Sales Handbook Definitions Doc](https://docs.google.com/document/d/1UaKPTQePAU1RxtGSVb-BujdKiPVoepevrRh8q5bvbBg/edit#bookmark=id.vkhb6a9ugrkh)

## Forbes 2000 to SFDC

[Please see the Sales Handbook Definitions Doc](https://docs.google.com/document/d/1UaKPTQePAU1RxtGSVb-BujdKiPVoepevrRh8q5bvbBg/edit#bookmark=id.hlidqemi1m03)

## Potential LAM

This placeholder will be updated once project is complete.

## Rosetta Stone

The purpose of the Rosetta Stone project is to ensure that we have clean, standardized reporting by segment, geo, region, and area that can be used to slice and dice all company metrics. This project is a collaborative, cross-functional effort involving many teams across GitLab, including Sales Strategy, Sales Ops, Sales Systems, Finance, Marketing, and the Data Team.

### Background

Prior to FY22, sales managers were comped based on who owned the *ACCOUNT* at the time of opportunity close. We therefore based our top level business reporting by sales team on the [account_owner_team stamped field](https://gitlab.my.salesforce.com/00N6100000ICas4?setupid=OpportunityFields) on the Opportunity object in Salesforce. However, there were also various other Salesforce fields that were used in certain reporting, which led to a lot of confusion and discrepancies between reports. For more details on historical reporting, please see [this slide deck](https://docs.google.com/presentation/d/1c3vu8K5U2q8hZKlTB3vkFCl1cimOn0KRMH-RLinjLc0/edit#slide=id.gb7e12c6784_0_40).

Starting in FY22, we made a change to our comp plans. We began paying both reps and managers based on who owns the *OPPORTUNITY* at the time of close. With this change, we also needed to change our reporting from being based on account ownership to being based on opportunity ownership. Thus the Rosetta Stone project was born, with the goal of not only building correct reporting based on opportunity ownership but also of cleaning up the Salesforce fields used for reporting so that we can all easily get the same correct answer.

### Key Salesforce Fields for Reporting by Sales Team

In order to achieve clean reporting by sales team based on opportunity ownership, in Dec 2020 we created 4 new fields on the User object in Salesforce:

- [User Segment](https://gitlab.my.salesforce.com/00N6100000ICbBT?setupid=UserFields)
- [User Geo](https://gitlab.my.salesforce.com/00N4M00000IbHo5?setupid=UserFields)
- [User Region](https://gitlab.my.salesforce.com/00N4M00000IbHo6?setupid=UserFields)
- [User Area](https://gitlab.my.salesforce.com/00N4M00000IbHo4?setupid=UserFields)

These fields are used to identify on which Sales team a Salesforce user works. If the user is not on the Enterprise or Commercial Sales teams (such as Channel reps, ISRs, BDRs, Community Advocates, or members of Sales Ops or Sales Strategy), the fields will default to "Other."

These fields are populated manually by Sales Ops on the user record as part of normal Salesforce license provisioning. Sales Ops populates the fields for every new user added to SFDC and updates the fields every time a user changes Sales teams.

We stamp the values from these fields onto our opportunity records at various points during the sales cycle, and we use these fields to tell us which sales team worked on each opportunity.

For more info on user hierarchy, please see [this page](/handbook/sales/sales-term-glossary/#user-hierarchy).

### Key Salesforce Fields for Reporting by Account Characteristics

We also have segment/geo/region/area fields on the Account object in Salesforce that mirror those on the User object. The Account fields sometimes share the same values as the User fields but are based on characteristics of the Account rather than characteristics of the sales rep who worked on the Account.

For example, a stamped opp owner user segment of "Large" indicates that a sales rep from our Enterprise Sales Team worked on that Account whereas an account sales segment of "Large" indicates that the account has a certain number of employees. In some cases the user segment and account segment can differ, such as if a sales rep from our Mid-Market Sales Team works on an Account that is in the "Large" sales segment based on its number of employees.

While most of our sales performance reporting is based on the sales team that worked on a particular opportunity, there are use cases in which we want to report on Account characteristics as well. It's important that we have clean, standardized reporting on both ends and that everyone understands the differences in these two types of reporting.

### Project Plan

The project plan for Rosetta Stone and all of the associated issues can be found [here](https://gitlab.com/gitlab-com/sales-team/field-operations/analytics/-/issues/242#note_495712375). To summarize, our steps are:

- Phase I: Reporting by Sales Team
  - align teams on key SFDC fields and account vs. opportunity ownership in reporting
  - fill in user segment/geo/region/area fields on all user records
  - ensure that we are correctly stamping user record values onto Opportunities
  - backfill the stamped Opportunity fields with accurate historical data
  - ensure that we have no blank or impossible combinations of segment/geo/region/area in our stamped fields
  - update existing reporting to use the new user segment/geo/region/area fields
- Phase II: Reporting by Account Characteristics
  - align teams on key SFDC fields
  - ensure that segment/geo/region/area fields on the Account object are working
  - create exception reporting and reconciliation process for mistmatches between sales team and Account segment/geo/region/area
- Clean up
  - audit existing fields on User, Opportunity, and Account objects. Deprecate any competing fields.

The ideal end state for this project would be that:

- we have ONLY 4 fields in SFDC that you could possibly use to answer any and all questions about sales team performance by segment/geo/region/area, which would align cleanly with our sales management structure (rep --> ASM --> RD --> CRO); and
- we have ONLY 4 fields that you could possibly use to answer any and all questions about account characteristics by segment/geo/region/area.

These fields would serve as key dimensions used to slice all reporting and would flow from SFDC into our trusted data framework in the data warehouse to be used for standardized reporting across the company.
