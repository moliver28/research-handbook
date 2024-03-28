---
title: Enabling US Government Support
description: Support Operations policies page for enabling US Government Support for organizations that don't sync automatically
canonical_path: "/handbook/support/readiness/operations/docs/policies/enable_us_gov_support"
---

## Which organizations sync to the US Government instance by default?

As the exact conditions of this can change at any time, it is best to refer to
our documentation page on the ZD-SFDC sync, specially the section concerning the
[Zendesk US Federal organizations sync](../../zendesk/zendesk_salesforce_sync#zendesk-us-federal-organizations-sync)
and the SOQL query documented within.

## Process

For this process, the
[Support Super Form Processor](https://gitlab.com/gitlab-support-readiness/processors/support-super-form-processor)
and the scripts in the
[Enable US Gov Support project](https://gitlab.com/gitlab-support-readiness/zendesk-us-government/enable-us-gov-support)
do all the heavy lifting, we we just need to double-check the data provided in
the generated issue and kick off the pipeline that does the change itself.

To start, a requester (with Zendesk US Government agent access) will fill out
the
[Support Super Form](https://support-super-form-gitlab-com-support-support-op-651f22e90ce6d7.gitlab.io/)
using the `What is this request concerning?` of
`Enable US Government Support for an Account`. In this form, they will provide
links to the SFDC account and the related SFDC opportunity that sold the US
Government SKU.

This information is then sent to the
[Support Super Form Processor](https://gitlab.com/gitlab-support-readiness/processors/support-super-form-processor)
which will do the following checks before creating an issue:

- Does the provided requester email correlate to a gitlab.com account?
- Does the requester have a Zendesk US Government agent account?
- Does the SFDC account provided correlate to an actual SFDC account?
- Does the SFDC opportunity provided correlate to an actual SFDC opportunity?
- Is the SFDC account already entitled to US Government Support?
- Does the SFDC Account have the US Government SKU present on it?

Should any of those checks fail, an email will be sent to the requester via
Mailgun indicating the request was not able to be processed (indicating the
checks it did not pass).

If all checks pass, an issue is then created within our
[issue tracker](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project)
for us to work.

Your task at this point will be to review the issue to ensure the data looks
accurate. This is done just to be sure we are not making improper changes to any
SFDC accounts. The biggest thing to check for is the approval of a Vice
President at Enterprise Sales, Public Sector on the opportunity provided. If we
do not see that, we cannot proceed (reply on the issue stating as much).

If everything looks good, you will then navigate to the
[Enable US Gov Support project](https://gitlab.com/gitlab-support-readiness/zendesk-us-government/enable-us-gov-support)
to run a pipeline. This is done by hovering over Builds on the left-hand side
and clicking on the
[Pipelines](https://gitlab.com/gitlab-support-readiness/zendesk-us-government/enable-us-gov-support/-/pipelines)
option.

From here, you will want to click the blue
[Run pipeline](https://gitlab.com/gitlab-support-readiness/zendesk-us-government/enable-us-gov-support/-/pipelines/new)
button at the top-right of the page. Doing so will bring up a page asking you
for some information, namely the variables to use. You will want to fill that
out like so:

| Type     | Input variable key | Input variable value  |
|----------|--------------------|-----------------------|
| Variable | ACCOUNT_ID         | The SFDC Account's ID |

After doing so, click on the blue `Run pipeline` button to create your pipeline.

You will then locate the newly created pipeline in question via the
[Pipelines](https://gitlab.com/gitlab-support-readiness/zendesk-us-government/enable-us-gov-support/-/pipelines)
page and clicking on it. Doing so will show you the jobs related to your
pipeline. Click on the one job that should be running. To ensure others can
assist or review this in the future, make sure to make a comment on the issue
linking to the job itself.

You will want to monitor the job to completion and see what the output is. Using
this, you can determine your next steps:

- If the job fails, please see the [Troubleshooting](#troubleshooting) section
  to resolve the problem. Once you have resolved the problem, one of the other
  options in this list should indicate what to do.
- If the job succeeds with a message of `6: Already entitled`, reply on the
  issue with the following:
  > We are seeing the SFDC account you provided is already entitled to US
  > Government Support at this time. As such, there would not be anything
  > further needed. If you are seeing issues on the organization within the
  > Zendesk US Government instance, please post the SFDC account and Zendesk US
  > Government organization links in slack via the #support_operations channel
  > with details of the problems you are seeing so we can assist you further.
  >
  > /close

- If the job succeeds with a message indicating the `Support_Instance__c` value
  for the SFDC account has been updated to `federal-support`, reply on the issue
  with the following:
  > US Government Support has been enabled for the SFDC account provided at this
  > time. It should be created and start syncing to our Zendesk US Government
  > instance within the next hour. Please remember to ensure the contacts listed
  > under the SFDC account are setup and ready, as we perform contact syncing on
  > the Zendesk US Government instance.
  >
  > For more information on contact syncing for the Zendesk US Government
  > instance, please see our documentation page at
  > https://handbook.gitlab.com/handbook/support/readiness/operations/docs/zendesk/zendesk_salesforce_sync/#zendesk-us-federal-users-sync
  >
  > /close


## Troubleshooting

#### Pipeline Error '1: Restforce::ErrorCode::UnableToLockRow'

This will cause an actual pipeline failure.

This error indicates that when trying to do a create/update, which requires
locking a row in SFDC, it was was unable to do so. This usually means something
in either the specific reference (i.e. the case) or the parent reference (i.e
the SFDC account) already had a lock in place that conflicts with the newly
needed lock.

When this error occurs, the sync is set to retry the attempt 3 times (with 5
second back-off timers in-between attempts). If it continues to hit the same
error after those attempts, the script ultimately reports the error and exits
with a status code of 1.

To rectify this, you should wait about 10 minutes or so and retry the pipeline
itself. If the results are the same after your manual retrying of the pipeline,
it is best to create an issue in our
[issue tracker](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new)
to have this investigated further by the team. Make sure to link to the failed
pipeline!

#### Pipeline Error '2: Faraday::ConnectionFailed'

This will cause an actual pipeline failure.

This means the Faraday connection attempt failed to fully connect. There can be
a plethora of reasons for this to occur.

When this error occurs, the sync is set to retry the attempt 3 times (with 5
second back-off timers in-between attempts). If it continues to hit the same
error after those attempts, the script ultimately reports the error and exits
with a status code of 1.

To rectify this, you should wait about 10 minutes or so and retry the pipeline
itself. If the results are the same after your manual retrying of the pipeline,
it is best to create an issue in our
[issue tracker](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new)
to have this investigated further by the team. Make sure to link to the failed
pipeline!

#### Pipeline Error '3: Net::OpenTimeout'

This will cause an actual pipeline failure.

This means the Faraday connection never got a response back from the host (SFDC)
in an acceptable time frame. There can be a plethora of reasons for this to
occur.

When this error occurs, the sync is set to retry the attempt 3 times (with 5
second back-off timers in-between attempts). If it continues to hit the same
error after those attempts, the script ultimately reports the error and exits
with a status code of 1.

To rectify this, you should wait about 10 minutes or so and retry the pipeline
itself. If the results are the same after your manual retrying of the pipeline,
it is best to create an issue in our
[issue tracker](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new)
to have this investigated further by the team. Make sure to link to the failed
pipeline!

#### Pipeline Error '4: No Account ID Provided'

This will cause an actual pipeline failure.

This indicates that you did not do one of the following when creating the
pipeline:

- Set the variable's key to `ACCOUNT_ID`
- Provide a value on the variable `ACCOUNT_ID`

To rectify this, you should run a new pipeline, ensuring the information
provided in the form to run a new pipeline is filled out as per the process
detailed above.

#### Pipeline Error '5: No SFDC Account found for ID'

This will cause an actual pipeline failure.

This indicates the SFDC account you were trying to point to via the pipeline's
variable was not able to be found.

To rectify this, locate the account you are working with in SFDC and copy the
`Account ID (18)` value from the page. Run a new pipeline using that value for
the variable `ACCOUNT_ID`.

#### Pipeline Error '6: Already entitled'

This is a silent error, meaning that while it did occur, the code exits with a
code of 0 (and thus, the pipeline does not actually fail).

This indicates that the SFDC account located via the value of the pipeline
variable `ACCOUNT_ID` is already entitled to US Government support (and thus no
changes are required at this time).

#### Pipeline Error '7: Failed to update'

This will cause an actual pipeline failure.

This indicates something went wrong in enabling US Government Support for the
SFDC account. You will want to investigate this manually to determine what the
blocker might be.

If you require further assistance, it is best to create an issue in our
[issue tracker](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new)
to have this investigated further by the team. Make sure to link to the failed
pipeline!
