---
title: Change management
description: Support Operations documentation page for Pagerduty change management
canonical_path: "/handbook/support/readiness/operations/docs/pagerduty/change_management"
---

<sup>*Introduced via [support-team-meta#4077](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/4077)*</sup>

## Schedule changes

**Note** This only applies for the non-shadow schedules. For changing shadow
schedules, please see [shadow schedule changes](#shadow-schedule-changes).

The process for this can be broken down into 3 sections:

1. [Notify DRIs about the upcoming implementation](#notify-dris-about-the-upcoming-implementation)
1. [Implement the changes](#implement-the-changes)
1. [Rotate the spreadsheet](#rotate-the-spreadsheet)

#### Notify DRIs about the upcoming implementation

On the first Monday of the second month of a given quarter, we notify the DRIs
about the upcoming implementation. This is done automatically via Slack
workflows, but for reference, the timing and messaging used is as follows:

<details>
<summary>0800 UTC - EMEA</summary>

> Greetings @support-managers-emea @Kate Grechishkina !
>
> This is your quarterly reminder that Support Readiness will be implementing
> next quarter's Pagerduty oncall schedules in about a month. As such, please
> remember to fill out the
> [Pagerduty spreadsheet](https://docs.google.com/spreadsheets/d/1FdUzVXCZleopfteC2QxW7LJwyylGWGl9hwXHMPkRHbQ/edit?usp=sharing)
> before the first of next month!
>
> The schedules you need to ensure are updated are
> [CEOC](https://gitlab.pagerduty.com/schedules#P9SV029),
> [CMOC](https://gitlab.pagerduty.com/schedules#P59382D),
> [Managers](https://gitlab.pagerduty.com/schedules#PXQ2ZAZ), and
> [SSAT](https://gitlab.pagerduty.com/schedules#P9UIIDY)
>
> Please remember any BLANK values at the time of implementation will be
> assigned to the Support Director for your region.

</details>
<details>
<summary>1400 UTC - AMER</summary>

> Greetings @support_managers_amer !
>
> This is your quarterly reminder that Support Readiness will be implementing
> next quarter's Pagerduty oncall schedules in about a month. As such, please
> remember to fill out the
> [Pagerduty spreadsheet](https://docs.google.com/spreadsheets/d/1FdUzVXCZleopfteC2QxW7LJwyylGWGl9hwXHMPkRHbQ/edit?usp=sharing)
> before the first of next month!
>
> The schedules you need to ensure are updated are
> [Global CEOC 1](https://gitlab.pagerduty.com/schedules#PBLAHV7),
> [Global CEOC 2](https://gitlab.pagerduty.com/schedules#P9FKYZC),
> [Global CEOC 3](https://gitlab.pagerduty.com/schedules#PP28N7L),
> [US Gov CEOC 1](https://gitlab.pagerduty.com/schedules#P89ZYHZ),
> [US Gov CEOC 2](https://gitlab.pagerduty.com/schedules#P89ZYHZ),
> [US Gov CEOC 3](https://gitlab.pagerduty.com/schedules#P89ZYHZ),
> [CMOC](https://gitlab.pagerduty.com/schedules#PG0SHU2),
> [Managers](https://gitlab.pagerduty.com/schedules#PTI56V1), and
> [SSAT](https://gitlab.pagerduty.com/schedules#P9UIIDY)
>
> Please remember any BLANK values at the time of implementation will be
> assigned to the Support Director for your region.

</details>
<details>
<summary>2130 UTC - APAC</summary>

> Greetings @support-managers-apac !
>
> This is your quarterly reminder that Support Readiness will be implementing
> next quarter's Pagerduty oncall schedules in about a month. As such, please
> remember to fill out the
> [Pagerduty spreadsheet](https://docs.google.com/spreadsheets/d/1FdUzVXCZleopfteC2QxW7LJwyylGWGl9hwXHMPkRHbQ/edit?usp=sharing)
> before the first of next month!
>
> The schedules you need to ensure are updated are
> [CEOC 1](https://gitlab.pagerduty.com/schedules#PQB9Q6K),
> [CEOC 2](https://gitlab.pagerduty.com/schedules#PKPXM8K),
> [CMOC 1](https://gitlab.pagerduty.com/schedules#PGUP5OB),
> [CMOC 2](https://gitlab.pagerduty.com/schedules#PMPKHZN),
> [Managers](https://gitlab.pagerduty.com/schedules#PWBXTYX), and
> [SSAT](https://gitlab.pagerduty.com/schedules#P9UIIDY)
>
> Please remember any BLANK values at the time of implementation will be
> assigned to the Support Director for your region.

</details>

#### Implement the changes

During the first week of the final month of the quarter, you need to setup all
the schedules we use to align with the requested changes in the
[Support Pagerduty Worksheet](https://docs.google.com/spreadsheets/d/1FdUzVXCZleopfteC2QxW7LJwyylGWGl9hwXHMPkRHbQ/edit?usp=sharing).

To do this, there is a script located in our
[Pagerduty project](https://gitlab.com/gitlab-com/support/support-ops/other-software/pagerduty)
called
[handle_pd_changes](https://gitlab.com/gitlab-com/support/support-ops/other-software/pagerduty/-/blob/master/handle_pd_changes).

To utilize this, you will need to download a CSV of each of the locked sheets.
To do that, you will go to the sheet in question, click `File` at the top menu,
hover over `Download`, and then click `Comma Separate Values (.csv)`. Doing so
will download that specific sheet to your computer. Keep in mind the CSV file
that is downloaded has the *entire spreadsheet* within it, so you **will** need
to modify the file to remove any entries beyond the following quarter.

You will then navigate to the location of the
[Pagerduty project](https://gitlab.com/gitlab-com/support/support-ops/other-software/pagerduty)
repo on your local computer.

Run the `bundle` command to download the needed gems. An example out this would
look like:

```bash
jason@laptop:~/dev/gitlab-com/support/support-ops/other-software/pagerduty$ bundle
Using concurrent-ruby 1.2.2
Using i18n 1.14.1
Using minitest 5.18.1
Using tzinfo 2.0.6
Using activesupport 7.0.6
Using bundler 2.4.10
Using faraday-em_http 1.0.0
Using faraday-em_synchrony 1.0.0
Using faraday-excon 1.1.0
Using faraday-httpclient 1.0.1
Using multipart-post 2.3.0
Using faraday-multipart 1.0.4
Using faraday-net_http 1.0.1
Using faraday-net_http_persistent 1.2.0
Using faraday-patron 1.0.0
Using faraday-rack 1.0.0
Using faraday-retry 1.0.3
Using ruby2_keywords 0.0.5
Using faraday 1.10.3
Using faraday_middleware 1.2.0
Using json 2.6.3
Using oj 3.13.23
Using yaml 0.2.1
Bundle complete! 5 Gemfile dependencies, 23 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.
```

After doing so, you should verify you have the five needed environment variables
set in your local environment (see the project's
[README](https://gitlab.com/gitlab-com/support/support-ops/other-software/pagerduty/-/tree/master#variables-needed)
for more details).

After that has been done, you will run the script with the needed parameters to
create all the overrides needed for the next quarter (again, see the project's
[README](https://gitlab.com/gitlab-com/support/support-ops/other-software/pagerduty/-/tree/master#definitions-for-running-the-script)
for more details). You can also run the commands `./handle_pd_changes HELP` and
`./handle_pd_changes DEFINE` to see more information on running the script.

The output should show you if each override was created correctly. If you see a
status of 201, it was successful. If you see anything else, it did not succeed
(and manual intervention will be required).

An example of the script running would look like:

```bash
jason@laptop:~/dev/gitlab-com/support/support-ops/other-software/pagerduty$ ./handle_pd_changes AMER Emergencies 1 temp.csv
Status 201 for 2024-01-29T16:00:00Z to 2024-01-29T22:00:00Z
Status 201 for 2024-01-30T16:00:00Z to 2024-01-30T22:00:00Z
Status 201 for 2024-01-31T16:00:00Z to 2024-01-31T22:00:00Z
```

After you have run that script, go into Pagerduty and check the corresponding
schedule for accuracy.

#### Rotate the spreadsheet

After you have [implemented the changes](#implement-the-changes) into Pagerduty,
the final thing you need to do is rotate the spreadsheet. How you do this is
really up to you, but the general recommended way is to do the following:

- Select the following quarter's entries on the spreadsheet and hit the `DEL`
  key on your keyboard *twice* (this ensures it fully deletes everything)
- Copy all the remaining entries and paste them from the 2nd line of the file
  (the one right after the headers).
- Navigate to the bottom of what you just copied, select the remaining entries,
  and hit the `DEL` key on your keyboard *twice* (this ensures it fully deletes
  everything)
- Select the last 5 rows on the spreadsheet, click the dot at the bottom-right
  of your selection (holding the mouse button down), and drag it down however
  many rows you need to add (if you are unsure, go down about 93 rows, as that
  should cover all the days). Doing this will automatically fill out the needed
  information for you.

## Shadow schedule changes

These are now fully automated via the Support Super form. As such, you should
never need to make modifications to them.

## Escalation policy changes

This can be a very destructive action. Due to the complexity involved, we do not
have a fully documented process for this at this time.

As such, please only have @jcolyer or @dtragjasi work these at this time.

## Service changes

This can be a very destructive action. Due to the complexity involved, we do not
have a fully documented process for this at this time.

As such, please only have @jcolyer or @dtragjasi work these at this time.

## Spreadsheet setup

The
[Support Pagerduty Worksheet](https://docs.google.com/spreadsheets/d/1FdUzVXCZleopfteC2QxW7LJwyylGWGl9hwXHMPkRHbQ/edit?usp=sharing)
is setup in a very specific way to facilitate planning for the next quarter's
changes.

#### Dropdowns reflect the entire pool of possible people for that dropdown

Each dropdown's content is determined based on the pool of possible people that
could be used. This is done via a range on the People sheet.

Never make edits directly to the dropdown values. If you need to add or remove
someone from the possible options, please do so on the People sheet. This is
usually done by provisioners during onboarding, offboarding, and team member
transfers.

#### We have many protections in place

We have several protections in place on the sheet to prevent editing cells that
are not meant to be edited:

| Name of protection                    | Sheet              | Definition                                      |
|---------------------------------------|--------------------|-------------------------------------------------|
| AMER - Customer Emergencies headers   | AMER - Emergencies | Whole sheet except F2:F1000, M2:M1000, T2:T1000 |
| AMER - CMOC headers                   | AMER - CMOC        | Whole sheet except F2:F1000                     |
| US Federal headers                    | US Federal         | Whole sheet except F2:F1000, M2:M1000, T2:T1000 |
| APAC - Customer Emergencies headers   | APAC - Emergencies | Whole sheet except F2:F1000, M2:M1000           |
| APAC - CMOC headers                   | APAC - CMOC        | Whole sheet except F2:F1000, M2:M1000           |
| EMEA headers                          | EMEA               | Whole sheet except F2:F1000, M2:M1000           |
| Managers headers                      | Managers           | Whole sheet except F2:F1000, M2:M1000, T2:T1000 |
| SSAT headers                          | SSAT               | Whole sheet except F2:F1000                     |
| Available persons                     | People             | Whole sheet                                     |
