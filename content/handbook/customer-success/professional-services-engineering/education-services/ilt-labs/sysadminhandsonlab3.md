---
title: "GitLab System Admin - Hands-On Lab: Backup and Restore"
description: "This Hands-On Guide demonstrates how to backup and restore your GitLab instance"
---

> Estimated time to complete: 30 minutes

## Objectives

The objective of this lab is to demonstrate how to back up a GitLab instance on a virtual machine, and restore said instance to a previous state. For more information about backing up/restoring a GitLab instance, click [here](https://docs.gitlab.com/ee/administration/backup_restore/).

### Task A. Configure backup settings

1. Open an SSH session on your GitLab instance server.

1. Search for the location of backup settings in gitlab.rb.

    ```bash
    sudo grep -n backup_path /etc/gitlab/gitlab.rb
    ```

1. Note the line number for the setting `gitlab_rails['backup_path']`.

1. Create a new directory to hold GitLab backups.

    ```bash
    sudo mkdir /tmp/backups
    ```

1. Edit gitlab.rb to change the backup path. First, open the file in a text editor. For example: `sudo nano /etc/gitlab/gitlab.rb`.

1. Search for the line `# gitlab_rails['backup_path'] = "/var/opt/gitlab/backups"`. If you are using `nano`, you can press `control-w` to search.

1. Remove the `#` character in front of the `gitlab_rails['backup_path']` line. This will uncomment the line, making it active.

1. Replace the path with `"/tmp/backups"`. The result is the following configuration line:

    ```bash
    gitlab_rails['backup_path'] = "/tmp/backups"
    ```

1. Save the resulting file. If you are using `nano`, you can do this by pressing `control-x`.

1. Reconfigure to apply the changes.

    ```bash
    sudo gitlab-ctl reconfigure
    ```

### Task B. Backup the GitLab instance

1. Take a full backup of the GitLab instance.

    ```bash
    sudo gitlab-backup create
    ```

    > In a production environment, you would also need to take a copy of the `/etc/gitlab/gitlab.rb` and `/etc/gitlab/gitlab-secrets.json`.

1. After the backup completes, go to the backup location and inspect the backup file.

    ```bash
    sudo ls /tmp/backups
    sudo tar -tvf /tmp/backups/<backup_filename>
    ```

### Task C. Make some changes to GitLab settings

1. Sign into your GitLab instance with a web browser and open your sidebar. In the bottom left corner, click **Admin area**.

2. In the left sidebar, select **Settings** > **General**.

3. Expand **Account and limit** and change the maximum attachment size to 500 MiB, and the default project limits to 10000.

4. Click **Save changes** to save the changes.

5. Refresh the page and verify your changes were applied.

### Task D. Restore from backup

1. Return to the SSH session on your GitLab instance server.

1. Move your backup file to the location GitLab requires for performing the restore.

    ```bash
    sudo cp /tmp/backups/<backup_filename> /var/opt/gitlab/backups/
    ```

1. Ensure the backup file has correct permissions for performing the restore.

    ```bash
    sudo chown git:git /var/opt/gitlab/backups/<backup_filename>
    ```

1. Stop the puma and sidekiq services before restoring.

    ```bash
    sudo gitlab-ctl stop puma
    sudo gitlab-ctl stop sidekiq
    sudo gitlab-ctl status
    ```

1. Restore from backup. Replace *<backup_timestamp>* with the portion of the backup filename up to and including `-ee`. For example, if the backup file name starts with `1663207732_2022_09_15_15.3.3-ee`, the command will be `sudo gitlab-backup restore BACKUP=1663207732_2022_09_15_15.3.3-ee`.

    ```bash
    sudo gitlab-backup restore BACKUP=<backup_timestamp>
    ```

1. Type `yes` when prompted during the restore operation. You may see what looks like error messages. That is normal.

1. When prompted to rebuild the `authorized_keys` file, type `yes`.

1. Restart sidekiq and puma services.

    ```bash
    sudo gitlab-ctl start sidekiq
    sudo gitlab-ctl start puma
    sudo gitlab-ctl status
    ```

1. Wait up to 5 minutes before refreshing GitLab in your web browser. Verify that the maximum attachment size and the default project limits you changed revert back to the defaults (i.e. when the backup was taken).

## Lab Guide Complete

You have completed this lab exercise. You can view the other [lab guides for this course](/handbook/customer-success/professional-services-engineering/education-services/ilt-labs/sysadminhandson).

### Suggestions?

If you'd like to suggest changes to the GitLab System Admin Basics Hands-on Guide, please submit them via merge request.
