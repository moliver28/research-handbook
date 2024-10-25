---
title: "GitLab System Admin - Hands-On Lab: Exploring the GitLab Instance"
description: "This Hands-On Guide demonstrates how to access and work with command line tools in your GitLab instance"
---

## Objectives

In this lab, you will SSH into your GitLab instance and work with the various command line tools available in it. This will help you understand the different ways you can work with your GitLab installation.

## Task A. Accessing the GitLab Instance

You will access your GitLab installation using SSH. As a part of this class, you were provided an SSH key and instance IP to use for this process. To SSH into your GitLab instance, you can use the following steps.

1. On your local computer, open a terminal window.

1. Navigate to the directory that contains the SSH key file for your server.

1. SSH connections require that your private key file is not accessible by others. On Linux and MacOS, you can do this with the following command:

    ```bash
    chmod 400 <keyfile_name>
    ```

    On Windows, you can do this with the following command:

    ```bash
    icacls .\keyname.pem /inheritance:r
    ```

1. Use your assigned IP address and SSH key file to log in to the server that will host your GitLab Omnibus install:

    ```bash
    ssh -i <keyfile_name> root@<vm_ip_address>
    ```

    > If you encounter an error like: WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!, you may need to reset your SSH known hosts. To do this, run the command `ssh-keygen -R <vm_ip_address>`.

1. Press Enter. 

1. If your system displays an authentication warning, type `yes` and press Enter.

1. After typing yes, you will be connected to your server.

## Task B. Interacting with gitlab-ctl

The `gitlab-ctl` command line utility provides you with tools for managing and troubleshooting your GitLab instance. In this task, you will see the different ways you can interact with your GitLab installation through the `gitlab-ctl` tool.

1. On your GitLab instance, run the command `sudo gitlab-ctl status`. You will see an output similar to below:

    ```bash
    run: alertmanager: (pid 904) 110s; run: log: (pid 899) 110s
    run: gitaly: (pid 910) 110s; run: log: (pid 884) 110s
    run: gitlab-exporter: (pid 903) 110s; run: log: (pid 886) 110s
    run: gitlab-kas: (pid 893) 110s; run: log: (pid 881) 110s
    run: gitlab-workhorse: (pid 894) 110s; run: log: (pid 888) 110s
    run: logrotate: (pid 900) 110s; run: log: (pid 892) 110s
    run: nginx: (pid 901) 110s; run: log: (pid 896) 110s
    run: node-exporter: (pid 907) 110s; run: log: (pid 889) 110s
    run: postgres-exporter: (pid 898) 110s; run: log: (pid 885) 110s
    run: postgresql: (pid 890) 110s; run: log: (pid 882) 110s
    run: prometheus: (pid 906) 110s; run: log: (pid 891) 110s
    run: puma: (pid 905) 110s; run: log: (pid 895) 110s
    run: redis: (pid 897) 110s; run: log: (pid 883) 110s
    run: redis-exporter: (pid 902) 110s; run: log: (pid 887) 110s
    run: sidekiq: (pid 911) 110s; run: log: (pid 909) 110s
    ```

    > The status command shows you an overview of the GitLab components running on your server. 

1. Next, try stopping a GitLab component, using the command `sudo gitlab-ctl stop nginx`.

    > As an output, you will see `ok: down: nginx: 0s, normally up`.

1. To verify that the `Nginx` is no longer running, run the command `sudo gitlab-ctl status`. You will see that `Nginx` is not running in the output.

    ```bash
    down: nginx: 58s, normally up; run: log: (pid 896) 1070s
    ```

1. To restart `Nginx`, run the command `sudo gitlab-ctl restart nginx`.

    > As an output, you will see `ok: run: nginx: (pid 1869) 0s`.

1. Run `sudo gitlab-ctl status` to verify that `Nginx` is up and running again.

## Task C. Interacting with GitLab Rails

GitLab Rails is a command line tool which allows you to interact with GitLab directly through Ruby on Rails. This tool can be valuable for troubleshooting and fixing instance errors. 

1. To access GitLab Rails, run the command `sudo gitlab-rails console`.

    > This command may take a few minutes to complete.

1. After the command completes, run `u = User.find_by_username('root')`.

    > This command will find a user in GitLab with the username `root` and store them in the variable `u`.

1. Print the user's attributes using `pp u.attributes`.

1. Print the user's username using `pp u.username`.

1. Once complete, type `quit` to exit the Rails console.

## Task D. Interacting with PostgreSQL

GitLab uses PostgreSQL for all application related data. Sometimes it is helpful to view this data through `psql`. 

1. To access PostgreSQL, run the command `sudo gitlab-psql -d gitlabhq_production`.

1. Run the command `\x on` to make queries results extended.

1. To see all the tables in the PostgreSQL database, run `\dt`.

1. Try querying some tables! For example: `SELECT * FROM projects;`, `SELECT * FROM users;`.

## Lab Guide Complete

You have completed this lab exercise. You can view the other [lab guides for this course](/handbook/customer-success/professional-services-engineering/education-services/ilt-labs/sysadminhandson).

### Suggestions?

If you'd like to suggest changes to the GitLab System Admin Basics Hands-on Guide, please submit them via merge request.