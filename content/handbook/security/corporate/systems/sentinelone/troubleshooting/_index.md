---
title: SentinelOne EDR Troubleshooting Guide
---

If you are experiencing issues with SentinelOne, please try the following troubleshooting steps.

## Linux Installation Error

> I do not see the outputs on the Linux installation steps. What should I do?

The SentinelAgent was not installed correctly. Most likely this is due to a configuration file error or commands did not run successfully.

1. Verify that you are using a supported [Linux distribution](/handbook/security/corporate/services/laptops/security/os).

1. Uninstall the package.

    ```shell
    # Fedora 37+ and RPM distributions
    sudo dnf remove sentinelagent
    ```

    ```shell
    # Ubuntu 22.04+ and Debian/Ubuntu distributions
    sudo apt purge sentinelagent
    ```

1. Install the package again (distro commands may vary).

    ```shell
    # Fedora 37+ and RPM distributions
    export S1_AGENT_INSTALL_CONFIG_PATH=~/.config/sentinelone/config.cfg
    sudo -E rpm -i --nodigest ~/Downloads/sentinelagent.rpm
    ```

    ```shell
    # Ubuntu 22.04+ and Debian/Ubuntu distributions
    export S1_AGENT_INSTALL_CONFIG_PATH=~/.config/sentinelone/config.cfg
     sudo -E apt install ~/Downloads/sentinelagent.deb
     ```

1. Verify that the agent is running in the terminal output.

    ```plaintext
    Setting registration token...
    Registration token successfully set
    Setting management device type...
    Device type successfully set
    Setting customer ID...
    Customer ID successfully set
    Starting agent...
    Agent is running
    ```

1. Wait five minutes, and then verify connectivity:

   ```shell
   sudo sentinelctl management status
   ```

1. You should see `Connectivity: On` and a valid SentinelOne URL. If this is not your result, reach out for assistance in the [`#sentinelone`](https://gitlab.slack.com/archives/C043PF9TU4X) channel.

## CPU Usage

> How do I calculate how much CPU is being used by SentinelOne on MacOS?

If you are using Activity Monitor to monitor CPU usage, be aware that it is calculated as the percent utilized for a single CPU thread. For example, an M1 Max laptop has 10 threads, so total CPU capacity is 1000%. To view the number of threads available on your system, open Terminal and run:

```shell
sysctl -n hw.ncpu
```

Expect SentinelOne to use less than 10% of total CPU power (for example, displayed as less than 100% in Activity Monitor on a M1 Max).

## Usage Metrics

> How do I collect metrics for support on MacOS due to an issue with high CPU or RAM?

1. Open your Terminal or iTerm and run the following command.

    ```shell
    sudo sentinelctl profiler start 30
    ```

2. Reproduce the scenario that caused the issue, or run it for a few minutes. It will run in the background. You will not see output.

3. Collect the metric log:

    ```shell
    sudo sentinelctl profiler stop
    ```

4. You should see a notification in the top right on your screen indicating a report is being generated.

    ![S1 Report Generation](images/S1ReportProgress.png)

5. After some time a report will finish and you will see another notification from SentinelOne that a log file was completed. Click the notification and you may be required to allow the SentinelAgent access to files on your Desktop folder. The file will then download to your Desktop folder.

    ![S1 Completion](images/S1ProfileComplete.png)
    ![S1 Allow Desktop Folder](images/S1AllowDesktop.png)

6. Analyze the data that the report generates, and if needed share the file in the #sentinelone Slack channel and we will get a ticket open with SentinelOne support.

## Offline Agent

The most common reason for a SentinelOne agent to appear offline is a local firewall prohibiting outbound connections to `*.sentinelone.net`. HTTPS (port 443) needs to be allowed outbound to that domain.

For macOS, the most common local firewalls are Little Snitch, pfSense or Lulu.

Linux users may have pfSense or iptables blocking access.

### macOS Offline Agent

1. Open your Terminal or iTerm and run the following command.

    ```shell
    sudo sentinelctl status
    ```

1. Look for the status of `Connected:` (should be "on").

1. Resolve the local firewall block and it should re-connect.

### Linux Offline Agent

1. Open your Terminal and run the following command.

    ```shell
    sudo sentinelctl management status
    ```

1. You should see `Connectivity: On` and a valid SentinelOne URL.

1. If this is not your result, reach out for assistance in the [`#sentinelone`](https://gitlab.slack.com/archives/C043PF9TU4X) channel.
