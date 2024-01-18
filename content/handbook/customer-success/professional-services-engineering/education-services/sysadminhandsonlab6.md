---
title: "GitLab System Administration - Hands-on Lab 6"
description: "This hands-on lab guide is designed to walk you through the lab exercises used in the GitLab System Administration course."
---

## Lab 6 - Manage GitLab Logs

> Estimated time to complete: 30 minutes

> **You are viewing the latest Version 16.x instructions.** You are using v16 if your group URL is `https://gitlab.com/gitlab-learn-labs/...`. If your group URL starts with `https://ilt.gitlabtraining.cloud` or `https://spt.gitlabtraining.cloud`, please use the [Version 15.x instructions](https://gitlab.com/gitlab-com/content-sites/handbook/-/blob/d14ee71aeac2054c72ce96e8b35ba2511f86a7ca/content/handbook/customer-success/professional-services-engineering/education-services/sysadminhandson6.md).

### Task A. View active logs

The `gitlab-ctl` command allows you to tail all GitLab log files as well as filter by GitLab service.

1. From a shell session on your GitLab instance, run the following command to view all active GitLab logs.

```bash
sudo gitlab-ctl tail
```

Amidst all the output, you should notice the command shows the full file path to each log. Most GitLab logs live in `/var/log/gitlab`. (Note: You can type `CTRL-C` to exit the `tail` command.)

2. You can also view GitLab logs by service. Run the following command to view only NGINX logs (i.e. log files in `/var/log/gitlab/nginx`).

```bash
sudo gitlab-ctl tail nginx
```

You should now see the most recent entries of log files specific to the NGINX web server.

3. Finally, you can drill down to an individual log file.

```bash
sudo gitlab-ctl tail nginx/gitlab_access.log
```

### Task B. Set minimum log levels

Admins are able to set minimum log levels for some GitLab services. Note that only some services such as NGINX and Gitaly let admins change the minimum logging level, and even then only for some log files. The `log_level` for other services, such as Sidekiq and Redis, cannot be changed.

1. Check the current minimum log levels for GitLab services.

```bash
sudo grep -n -E 'log_level|logging_level' /etc/gitlab/gitlab.rb
```

2. Note the line number for `praefect['logging_level']`.

3. Change the minimum log level for Praefect, which is the traffic manager for Gitaly. Replace "1234" with the appropriate line number from the `grep` output in the previous step.

```bash
sudo sed -i '1234s/warn/error/' /etc/gitlab/gitlab.rb
sudo sed -i '1234s/# //' /etc/gitlab/gitlab.rb
```

4. Re-run the `grep` command from Step 1 to verify the line was modified as intended.

5. Reconfigure to apply the changes.

```bash
sudo gitlab-ctl reconfigure
```

> Since we're using single node Omnibus, Praefect is not actually in use as a service. Praefect is only enabled if using Gitaly cluster.

### Task C. Manage log retention

GitLab uses **logrotate** to manage retention of all logs except those managed by the **runit** service manager (runit uses a separate service logging daemon called **svlogd**). Log retention can be configured in `/etc/gitlab/gitlab.rb`.

1. Examine default logrotate retention settings.

```bash
sudo grep -n 'logrotate' /etc/gitlab/gitlab.rb
```

2. **Optional**: View the default retention settings for the runit-managed logs.

```bash
sudo grep -n 'svlogd' /etc/gitlab/gitlab.rb
```

3. It appears logrotate (and svlogd) rotate log files every day, and retain 30 days worth of logs. We can verify this by looking inside the service log directories.

```bash
sudo ls /var/log/gitlab/puma
```

Note the gzipped archive files for Puma's stdout and stderr logs from previous days.

4. Change logrotate's behavior to rotate log files weekly. As before, modify the line `sed` edits accordingly using the line number from the grep output.

```bash
sudo sed -i '1234s/daily/weekly/g' /etc/gitlab/gitlab.rb
sudo sed -i '1234s/# //' /etc/gitlab/gitlab.rb
```

5. Change logrotate's retention period to 1 year of retained log files. As before, modify the line `sed` edits accordingly using the line number from the grep output.

```bash
sudo sed -i '1234s/30/52/g' /etc/gitlab/gitlab.rb
sudo sed -i '1234s/# //' /etc/gitlab/gitlab.rb
```

6. Run the following again to ensure your changes are properly written to `gitlab.rb`.

```bash
sudo grep -n 'logrotate' /etc/gitlab/gitlab.rb
```

7. Reconfigure to apply the changes.

```bash
sudo gitlab-ctl reconfigure
```

### Task D. Change log formatting

Many logs are JSON formatted by default. Admins may wish to configure text formatting depending on the log ingestion system used, or for readability.

1. Check the current log formats for GitLab services.

```bash
sudo grep -n '_format' /etc/gitlab/gitlab.rb
```

2. Run `sudo gitlab-ctl tail gitaly/current` to see the current JSON output for Gitaly logging.

3. Change Gitaly's log format from JSON to text formatting. As before, modify the line `sed` edits accordingly using the line number from the grep output.

```bash
sudo sed -i '1234s/json/text/' /etc/gitlab/gitlab.rb
sudo sed -i '1234s/#//' /etc/gitlab/gitlab.rb
```

4. Re-run the `grep` command from Step 1 to verify the line was modified as intended. The line should now read `gitaly['logging_format'] = "text"`.

5. Reconfigure to apply the change.

```bash
sudo gitlab-ctl reconfigure
```

6. Verify the updated formatting.

```bash
sudo gitlab-ctl tail gitaly/current
```

You should see the log output is now text formatted instead of JSON formatted.

## Lab Guide Complete

You have completed this lab exercise. You can view the other [lab guides for this course](/handbook/customer-success/professional-services-engineering/education-services/sysadminhandson).


### Suggestions?

If you’d like to suggest changes to the GitLab System Admin Basics Hands-on Guide, please submit them via merge request.
