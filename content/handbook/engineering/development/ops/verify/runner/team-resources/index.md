---

title: Runner Group - Team Resources
description: "The goal of this page is to document resources needed for day-to-day work within the Runner group."
---







## Overview

The goal of this page is to document resources needed for day-to-day work within the Runner group.

## Good bookmarks

- [Team Handbook](/handbook/engineering/development/ops/verify/runner/)
- [Internal Engineering Handbook](https://internal.gitlab.com/handbook/engineering/)
- [Runner SaaS HQ issue](https://gitlab.com/groups/gitlab-org/-/epics/9969)
- [Public Runner Docs](https://docs.gitlab.com/runner/)
- [Public Development Docs](https://docs.gitlab.com/runner/development/)
- [Runner Runbooks](https://gitlab.com/gitlab-com/runbooks/-/tree/master/docs/ci-runners)
- [GitLab.com Triage](https://dashboards.gitlab.net/d/RZmbBr7mk/gitlab-triage?orgId=1) (for situational awareness)
- [Blueprints](https://gitlab.com/gitlab-org/gitlab/-/tree/master/doc/architecture/blueprints) (search for `runner`)

### Metrics and logs

- Dashboards
  - [Runner Service Overview](https://dashboards.gitlab.net/d/ci-runners-main/ci-runners-overview?orgId=1)
  - Additional dashboards can be found in the dropdowns along the top bar:

![runner-dashboards](runner-dashboards.png)

- Metrics
  - [Runner Metrics](https://docs.gitlab.com/runner/monitoring/index.html)
- Logs
  - [Runner Logs](https://log.gprd.gitlab.net/goto/3d8891e0-2035-11ee-8afc-c9851e4645c0) (filter by shard)
  - You can find a list of shards in the the dropdown along the top baf of any service dashboard:

![runner-shards](runner-shards.png)

## Internal tools

### Merge Request Bot

For
[`gitlab-org/gitlab-runner`](https://gitlab.com/gitlab-org/gitlab-runner)
we have the [Merge Request
Bot](https://gitlab.com/merge-request-bot/merge-request-bot) enabled which posts
[comments for community
contributions](https://gitlab.com/gitlab-org/gitlab-runner/-/merge_requests/2407#note_411098266).
This is configured via [Merge Request webhook
events](https://gitlab.com/gitlab-org/gitlab-runner/hooks).

- [Appliation code](https://gitlab.com/merge-request-bot/merge-request-bot)
- [CloudRun deployment](https://gitlab.com/gitlab-org/ci-cd/merge-request-bot/infrastructure/cloud-run)
- [Logs](https://console.cloud.google.com/logs/query;query=resource.type%20%3D%20%22cloud_run_revision%22%0Aresource.labels.service_name%20%3D%20%22merge-request-bot%22%0Aresource.labels.location%20%3D%20%22europe-west4%22%0A%20severity%3E%3DDEFAULT%0Atimestamp%3E%3D%222020-09-11T10:25:17.532Z%22%20timestamp%3C%3D%222020-09-11T11:25:17.532Z%22;timeRange=PT1H;summaryFields=:true:32:beginning?customFacets=&scrollTimestamp=2020-09-11T11:25:01.157050000Z&project=group-verify-df9383)

## Developing / Testing for Windows

Our [development docs for Windows](https://docs.gitlab.com/runner/development/#developing-for-windows-on-a-non-windows-environment) suggest using Vagrant and Virtualbox.
But the easiest way to get started is just to create a Google Compute Engine Windows instance and RDP into it.
Create an instance from [this magical image](https://console.cloud.google.com/compute/imagesDetail/projects/group-verify-df9383/global/images/runners-windows-2004-core-containers-beta?project=group-verify-df9383).

### Supported versions

We support some pretty old versions of Windows because they are [LTSC](https://learn.microsoft.com/en-us/lifecycle/products/windows-10-enterprise-ltsc-2019)

## Third-party infrastructure

### Testing on IBM Z/OS

To facilitate testing the `s390x` architecture artifacts,
a Z/OS VM is available to GitLab team members.

#### Logging in

1. In [1Password](/handbook/security/#1password-guide),
   under the `Verify` vault, download the `zOS login - gitlabkey02.pem` file.
1. From the `zOS login` entry in the same vault, take note of the `user` and `address` fields.
1. SSH into the Z/OS VM:

    ```shell
    ssh -i "zOS login - gitlabkey02.pem" <user>@<address>
    ```

   Note: You'll be requested the password to unlock the .pem file. Enter the password attached
   to the `zOS login - gitlabkey02.pem` entry.

#### Testing helper image

Assuming you want to test a `prebuilt-s390x.tar.xz` image produced by a CI/CD pipeline,
and already have the .pem file from the [previous point](#logging-in),
the steps would be the following:

1. Copy the `prebuilt-s390x.tar.xz` file to the Z/OS VM:

    ```shell script
    scp -i "zOS login - gitlabkey02.pem" prebuilt-s390x.tar.xz <user>@<address>:/home/ubuntu/
    ```

   Note: You'll be requested the password to unlock the .pem file. Enter the password attached
   to the `zOS login - gitlabkey02.pem` entry.

1. SSH into the VM:

    ```shell
    ssh -i "zOS login - gitlabkey02.pem" <user>@<address>
    ```

1. Import the image and run it:

    ```shell
    sudo docker import ./prebuilt-s390x.tar.xz gitlab/gitlab-runner-helper:s390x-dev
    sudo docker run -it gitlab/gitlab-runner-helper:s390x-dev bash
    gitlab-runner-helper help
    ```

## Accessing Mac Runner AWS environments

GitLab SaaS Mac Runners are running on AWS.
We have production, staging, team sandbox and individual sandbox environments.
An individual sandbox can be created via [Hackystack(https://gitlabsandbox.cloud/cloud)].
Be sure to keep an eye on unused resources to reduce cost -- [oh-my-cost](https://gitlab.com/josephburnett/oh-my-cost) can help.
We also have a [team sandbox](https://gitlabsandbox.cloud/cloud/accounts/5442c67c-1673-4351-b85d-e366c328bfea) in Hackystack which is used to host our Mac Job Image builder instance.
Access to the team sandbox can be acquired via access request.
Within the team sandbox is also a role which has access to the staging and production Mac environments.

### Access Mac Runner Production

From the team sandbox, activate a role named `eng_dev_verify_runner` with the account ID `251165465090` (staging).

### Access Mac Runner Production

From the team sandbox, activate a role named `eng_dev_verify_runner` with the account ID `215928322474` (production).

## Load Testing

The group [`gitlab-runner-stress`](https://gitlab.com/gitlab-org/ci-cd/gitlab-runner-stress) has a suite of tools for stress testing a GitLab and Runner instance.
Our canonical benchmark for Mac Runners is [`XcodeBenchmark`](https://gitlab.com/gitlab-org/ci-cd/tests/saas-runners-tests/macos-platform/XcodeBenchmark) (our fork).

## Runner Vending Machine (AWS Cloud Formation Templates)

The Partner Solution group maintains a curated collection of AWS Cloud Formation Templates for deploying Runner in AWS called the ["Runner Vending Machine"](https://gitlab.com/guided-explorations/aws/gitlab-runner-autoscaling-aws-asg#easy-buttons-provided).
We should keep them in the loop as we change how Runner works and is deployed so these templates can stay up-to-date.
Our point-of-contact is [DarwinJS](https://gitlab.slack.com/team/UPCBGABMK).

## Secrets

How we manage secrets for Runner and how they get into the right place is a whole thing.
This needs documenting: https://gitlab.com/gitlab-org/gitlab-runner/-/issues/29823.
