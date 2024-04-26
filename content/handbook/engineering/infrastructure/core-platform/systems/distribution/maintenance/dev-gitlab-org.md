---
aliases: /handbook/engineering/infrastructure/core-platform/systems/distribution/maintenance/dev-gitlab-org.html

title: "Distribution Team Infrastructure and Maintenance - dev.gitlab.org"
description: "Guidelines for maintaining dev.gitlab.org, including manual package upgrades/downgrades, and GitLab configuration changes."
---







## Common links

* [Distribution Team Handbook](/handbook/engineering/infrastructure/core-platform/systems/distribution/)
* [Distribution Team Infrastructure and Maintenance](/handbook/engineering/infrastructure/core-platform/systems/distribution/maintenance/)

## dev.gitlab.org

This is an internal GitLab instance running GitLab CE. The omnibus-gitlab
package on this server is a stock package with required configuration to keep it
operational.  Regular omnibus-gitlab commands can be used on this node.

### Automated tasks

1. Nightly builds: Every day at 1:30 UTC, a nightly build gets triggered on
   dev.gitlab.org. The cron trigger times are currently defined at
   [the scheduled pipeline page on dev.gitlab.org](https://dev.gitlab.org/gitlab/omnibus-gitlab/pipeline_schedules).

1. Deployments: Every day at 7:20 UTC, the nightly CE packages gets
   automatically deployed on dev.gitlab.org. Any errors in the install process
   will be logged in [Sentry](https://sentry.gitlab.net/gitlab/devgitlaborg/).
   Slack notifications will appear in #dev-gitlab. The cron task is currently
   defined in [role file](https://gitlab.com/gitlab-com/gl-infra/chef-repo/-/blob/master/roles/dev-gitlab-org.json#L304-319).

### Maintenance tasks

It is Distribution team's responsibility to make sure that the GitLab instance
on this server is operational.

**Requirements**:

* Access to the node

* Depending on whether the task requires permanent changes to
  `/etc/gitlab/gitlab.rb`, access to the [Chef repo](https://gitlab.com/gitlab-com/gl-infra/chef-repo/).
  If you do not have access to this repository, make sure you create
  [an issue in Infrastructure issue tracker](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=)
  and label it `access request`.


#### Manually upgrading/downgrading packages

In case of an issue with the latest deploy, we might need to revert the
installation to a previous nightly version and lock the deployment until the
fixes are ready. This is done to ensure stability of dev.gitlab.org for others
using the instance.

1. To start, create an issue in a team-tasks [issue-tracker] detailing that you
   will be downgrading installed version, and adding links to related issues.
   Assign the issue to yourself.

1. Next, make an announcement in `#announcements` slack channel before
   downgrading the package:

    ```
    I will be manually downgrading package on dev.gitlab.org to <version> as latest nightly is not working as expected. <link to issue>
    ```

1. Stop sidekiq and unicorn to be sure that data doesn't get altered during the
   upgrade.

    ```bash
    sudo gitlab-ctl stop sidekiq
    sudo gitlab-ctl stop unicorn
    ```

1. Find the previous working version of the package and downgrade to this
   version:

    ```bash
    sudo apt-get install gitlab-ce=<version to be installed>
    ```

    For example, if the version is `10.4.0+rnightly.75436.44501791-0`, you would
    run:

    ```bash
    sudo apt-get install gitlab-ce=10.4.0+rnightly.75436.44501791-0
    ```

    This will automatically run reconfigure and apply the necessary changes.

1. Once the reconfigure is done, confirm all the services are up and running.

    ```bash
    sudo gitlab-ctl status
    ```

1. Confirm the correct version is deployed by visiting
   `https://dev.gitlab.org/help`.

1. Create a package hold to prevent auto-upgrade:

    ```bash
    sudo apt-mark hold gitlab-ce
    ```
    and verify the hold is in place.

    ```bash
    sudo apt-mark showhold
    ```

1. Back in the `#announcements` channel, leave a message that the downgrade is
   completed:

    ```
    Downgrade completed. The package has also been put on hold to prevent automatic upgrades. <link to issue>
    ```

**Once the issue has been resolved, unhold the package and upgrade to the latest
version.**

1. Start by announcing this in `#announcements` channel

    ```
    I will be removing the package hold and manually upgrading package on dev.gitlab.org to the latest nightly. <link to issue>
    ```

1. Next, unhold the package:

    ```bash
    sudo apt-mark unhold gitlab-ce
    ```

1. Continue with upgrading:

    ```bash
    sudo apt-get update
    sudo apt-get install gitlab-ce
    ```

1. Once the upgrade is completed, verify that the latest version is installed
   by visiting `https://dev.gitlab.org/help`.

1. Finally, leave a note at the `#announcements` channel

    ```
    Upgrade completed. dev.gitlab.org now runs <version>.
    ```

#### Changing GitLab configuration

If, for some reason, you need to apply a change to `/etc/gitlab/gitlab.rb`, this
change needs to be introduced in the
[dev-gitlab-org role](https://dev.gitlab.org/cookbooks/chef-repo/blob/fa6131d9d06299940a72c51cf60ea62c54fe3461/job-families/dev-gitlab-org.json).

If you do not have access to this repository, but you need to do a hot-patch or
configuration testing, the following steps can be performed:

1. Stop chef-client on this node:

    ```
    sudo service chef-client stop
    ```

1. Make the necessary change to get the instance running again. If that requires
   change in gitlab.rb file, change it manually and run reconfigure.

1. Reach out to Production team to get help on getting your `gitlab.rb`
   configuration change committed to the Chef server.

1. After this has been applied, start the chef-client on the node: `sudo service
   chef-client start`

1. Make sure that any change you did is noted in an issue! It is your
   responsibility to revert the change on this node once the fix is in place in
   the package!
