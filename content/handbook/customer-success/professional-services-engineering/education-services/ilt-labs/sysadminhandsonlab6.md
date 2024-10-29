---
title: "GitLab System Admin - Hands-On Lab: Troubleshooting"
description: "This Hands-On Guide demonstrates how to troubleshoot your GitLab instance"
---

> Estimated time to complete: 30 minutes

## Objectives

The objective of this lab is to demonstrate how to use Prometheus and Grafana for log analysis and monitoring.

## Task A. Issues at the reverse proxy

1. From a shell session on your GitLab instance, view one of the NGINX active logs.

   ```bash
   sudo gitlab-ctl tail nginx/gitlab_access.log
   ```

1. After typing this, navigate to your GitLab instance and try accessing various pages on the instance. Note how each request has an Nginx log message associated with it. 

1. Let's cause an error in the Nginx service. Stop the Nginx service using the following command:

   ```bash
   sudo gitlab-ctl stop nginx
   ```

1. Attempt to navigate to `http://<your_gitlab_instance>` using a web browser. Your web browser should display "**This site can't be reached**" or a similar message.

1. Check `nginx/access_log` again.

   ```bash
   sudo gitlab-ctl tail nginx/gitlab_access.log
   ```

    > Take note that no new log messages have appeared in these logs. Since Nginx cannot be reached, it cannot log the access request. In this case, we can immediately understand that Nginx has an issue.

1. Verify web services aren't running or listening anywhere.

   ```bash
   curl -i http://localhost/nginx_status
   curl -i http://localhost:80
   ```

1. Restart NGINX services.

   ```bash
   sudo gitlab-ctl restart nginx
   ```

1. View the logs and verify that Nginx is now receiving and processing requests.

   ```bash
   sudo gitlab-ctl tail nginx/gitlab_access.log
   ```

1. Verify the webserver is running and listening on port 80.

   ```bash
   curl -i http://localhost/nginx_status
   ```

## Task B. Tracing Issuing at the GitLab Rails level

For this example, let's suppose that an issue occurred in GitLab Rails. To simulate this:

1. Stop the `puma` service by running `sudo gitlab-ctl stop puma`.

1. Navigate to your GitLab instance. Note that you get a `502 Waiting for GitLab to boot` error.

1. The first location that requests reach for this component is Nginx. Let's take a look at the logs by running:

    ```bash
    cat /var/log/gitlab/nginx/gitlab_access.log
    ```

1. In this output, search for your HTTP request. It will look something like this:

    ```bash 
    173.34.175.144 - - [25/Oct/2024:14:48:00 +0000] "GET / HTTP/1.1" 502 2026 "http://34.56.107.198/" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36" -
    ```

    > We can tell this is the request based on the URL being accessed and the Nginx status code. This status code is a 502 and the request is to the root of the web application.

1. This output tells us our request reaches Nginx. From here, we can trace to the next location in the architecture, `Workhorse`. To view the logs for `Workhorse`, run:

    ```bash
    cat /var/log/gitlab/gitlab-workhorse/current
    ```

1. In this output, look for the request that matches the URL of your `Nginx` request. It will look like this:

    ```json
    {"backend_id":"rails","content_type":"text/html; charset=utf-8","correlation_id":"01JB22H7ENN72DH5XNMTB2170Z","duration_ms":0,"host":"34.56.107.198","level":"info","method":"GET","msg":"access","proto":"HTTP/1.1","referrer":"http://34.56.107.198/","remote_addr":"173.34.175.144:0","remote_ip":"173.34.175.144","route":"","route_id":"default","status":502,"system":"http","time":"2024-10-25T14:50:49Z","ttfb_ms":0,"uri":"/favicon.ico","user_agent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36","written_bytes":2026}
    ```

    > In this request, we can collect some additional important details. We can see our request was sent to rails. If the request reached rails, we can use the `correlation_id` to locate it in the logs. Let's take note of the correlation ID and search for it in the Rails log.

1. To view the log for your Rails application, run the command:

    ```bash
    cat /var/log/gitlab/gitlab-rails/production_json.log
    ```

1. These logs have a lot of data, since we are looking for a correlation ID, we can try grepping for it in the logs:

    ```bash
    cat /var/log/gitlab/gitlab-rails/production_json.log | grep your-correlation-id
    ```

1. You will get no results. This tells you the GitLab Rails did not receive the request from Workhorse. From here, we can diagnose the issue with rails, starting by looking at the status:

    ```bash
    sudo gitlab-ctl status
    ```

1. In this output, we will see that Rails is not running. To remedy this, we can restart the Rails process:

    ```bash
    sudo gitlab-ctl restart puma
    ```

### Task C. Tracing a Healthy Request

With GitLab Rails back up, we can now try tracing a valid request to see how it looks in the logs. This will help you get comfortable with correlating a correlation ID to a request.

1. Make a request to your GitLab instance.

1. Locate the request correlation ID by running:

    ```bash
    cat /var/log/gitlab/gitlab-workhorse/current
    ```

    > In the results, look for the request that matches your request URL. It should be the most recent request. Take note of the `correlation_id` property.

1. Search for the correlation ID in the GitLab Rails logs:

    ```bash
    cat /var/log/gitlab/gitlab-rails/production_json.log | grep your-correlation-id
    ```

1. As a result, you should see a log message that matches your correlation ID, like this:

    ```json
    {"method":"GET","path":"/","format":"html","controller":"RootController","action":"index","status":200,"time":"2024-10-25T15:05:43.089Z","params":[],"correlation_id":"01JB23CG5BM7X1KDDKX5DZ2RCK","meta.caller_id":"RootController#index","meta.feature_category":"groups_and_projects","meta.remote_ip":"173.34.175.144","meta.user":"root","meta.user_id":1,"meta.client_id":"user/1","remote_ip":"173.34.175.144","user_id":1,"username":"root","ua":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36","queue_duration_s":0.036988,"request_urgency":"low","target_duration_s":5,"redis_calls":68,"redis_allowed_cross_slot_calls":5,"redis_duration_s":0.012599,"redis_read_bytes":7048,"redis_write_bytes":5562,"redis_cache_calls":25,"redis_cache_allowed_cross_slot_calls":3,"redis_cache_duration_s":0.004691,"redis_cache_read_bytes":1971,"redis_cache_write_bytes":2244,"redis_db_load_balancing_calls":3,"redis_db_load_balancing_duration_s":0.000548,"redis_db_load_balancing_write_bytes":104,"redis_feature_flag_calls":31,"redis_feature_flag_duration_s":0.005347,"redis_feature_flag_read_bytes":4694,"redis_feature_flag_write_bytes":2526,"redis_repository_cache_calls":3,"redis_repository_cache_duration_s":0.000853,"redis_repository_cache_read_bytes":203,"redis_repository_cache_write_bytes":79,"redis_sessions_calls":6,"redis_sessions_allowed_cross_slot_calls":2,"redis_sessions_duration_s":0.00116,"redis_sessions_read_bytes":180,"redis_sessions_write_bytes":609,"db_count":52,"db_write_count":0,"db_cached_count":11,"db_txn_count":0,"db_replica_txn_count":0,"db_primary_txn_count":0,"db_main_txn_count":0,"db_ci_txn_count":0,"db_main_replica_txn_count":0,"db_ci_replica_txn_count":0,"db_replica_count":0,"db_primary_count":52,"db_main_count":52,"db_ci_count":0,"db_main_replica_count":0,"db_ci_replica_count":0,"db_replica_write_count":0,"db_primary_write_count":0,"db_main_write_count":0,"db_ci_write_count":0,"db_main_replica_write_count":0,"db_ci_replica_write_count":0,"db_replica_cached_count":0,"db_primary_cached_count":11,"db_main_cached_count":11,"db_ci_cached_count":0,"db_main_replica_cached_count":0,"db_ci_replica_cached_count":0,"db_replica_wal_count":0,"db_primary_wal_count":0,"db_main_wal_count":0,"db_ci_wal_count":0,"db_main_replica_wal_count":0,"db_ci_replica_wal_count":0,"db_replica_wal_cached_count":0,"db_primary_wal_cached_count":0,"db_main_wal_cached_count":0,"db_ci_wal_cached_count":0,"db_main_replica_wal_cached_count":0,"db_ci_replica_wal_cached_count":0,"db_replica_txn_max_duration_s":0.0,"db_primary_txn_max_duration_s":0.0,"db_main_txn_max_duration_s":0.0,"db_ci_txn_max_duration_s":0.0,"db_main_replica_txn_max_duration_s":0.0,"db_ci_replica_txn_max_duration_s":0.0,"db_replica_txn_duration_s":0.0,"db_primary_txn_duration_s":0.0,"db_main_txn_duration_s":0.0,"db_ci_txn_duration_s":0.0,"db_main_replica_txn_duration_s":0.0,"db_ci_replica_txn_duration_s":0.0,"db_replica_duration_s":0.0,"db_primary_duration_s":0.039,"db_main_duration_s":0.039,"db_ci_duration_s":0.0,"db_main_replica_duration_s":0.0,"db_ci_replica_duration_s":0.0,"cpu_s":0.225071,"mem_objects":91945,"mem_bytes":8675485,"mem_mallocs":19041,"mem_total_bytes":12353285,"pid":239709,"worker_id":"puma_2","rate_limiting_gates":[],"db_duration_s":0.02908,"view_duration_s":0.11937,"duration_s":0.20995}
    ```

When Rails is accepting requests, these log messages provide a wealth of information for troubleshooting and debugging.

## Task D. Collecting SOS

In some cases, troubleshooting will require the assistance of GitLab Support. To help GitLab Support troubleshoot any errors, it is helpful to provide a full account of your instance logs. For this purpose, you can use the GitLab SOS tool. 

1. To run GitLab SOS, use the following commands:

    ```bash
    /opt/gitlab/embedded/bin/git clone --recursive https://gitlab.com/gitlab-com/support/toolbox/gitlabsos.git && cd gitlabsos
    sudo /opt/gitlab/embedded/bin/ruby ./gitlabsos.rb
    ```

1. After the run completes, you will see the location of your support bundle, in the form of `/root/gitlabsos/gitlabsos.your-instance-name_gitaly-nginx-psql-puma-redis-sidekiq.tar.gz`.

    > When you file support requests, you can attach this bundle to provide all of your instance logs.

## Lab Guide Complete

You have completed this lab exercise. You can view the other [lab guides for this course](/handbook/customer-success/professional-services-engineering/education-services/ilt-labs/sysadminhandson).

### Suggestions?

If you'd like to suggest changes to the GitLab System Admin Basics Hands-on Guide, please submit them via merge request.
