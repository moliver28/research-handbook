---
controlled_document: true
title: "Endpoint Detection and Response at GitLab"
description: "Endpoint Detection and Response: EDR, endpoint security, anti-virus, macOS, Windows, Linux, endpoint management"
---

## Overview

With an increased number of high profile breaches in the media today it is important we carefully consider the risk and external threats GitLab faces.  Due to our service and the companies that use us, it is credible that we are or will soon become a high profile target for adversaries looking to exploit GitLab or a GitLab customer. Endpoint detection and response (EDR) technology helps further strengthen endpoint security protecting not only GitLab, but each of our Team Members as well. All macOS, Windows and Linux devices used by GitLab Team Members for the purposes of fulfilling the responsibilities of their role as a GitLab Team Member are required have the SentinelOne EDR agent installed and functioning. The use of a Windows endpoint requires a specific business reason and an approved exception as the [use of a Windows endpoint is prohibited](/handbook/business-technology/end-user-services/onboarding-access-requests/#laptop-configurations).

### What is Endpoint Detection and Response (EDR)?

EDR is a collection of endpoint security technologies that together record and store endpoint-system-level behaviors, use various data analytics techniques to detect suspicious system behavior, provide contextual information, block malicious activity, and provide remediation paths to restore affected systems.

### What is SentinelOne?

[SentinelOne](https://www.sentinelone.com/) is the EDR technology chosen by GitLab to help protect endpoint devices. All data associated with the effort conducted to evaluate EDR vendors while ultimately resulted in the choosing of SentinelOne can be found in the efforts [project repo](https://gitlab.com/gitlab-com/gl-security/security-research/edr-proof-of-concept/-/tree/master).

### Why is this necessary?

GitLab is a growing global company and as such we are required to meet compliance requirements in different countries, with one of those requirements being endpoint protection. An EDR solution meets that requirement. A number of customers also ask us if we are protecting their data by us protecting the systems that could potentially access their data, and ask specifically about EDR and Antivirus. EDR meets this requirement and addresses customer concerns.

Equally important is the security and privacy of our team members and their laptops. As GitLab continues to grow, we are increasing the likelihood that we will be targeted by malicious attackers. We want to ensure we have a way to protect team members and their laptops whether they are at home, on the road, or at the coffee shop down the street.

### How to get help with SentinelOne

If you need help with the SentinelOne agent on your endpoint please reach out to in the `#sentinelone` Slack channel. If you have security concerns please reach out to the Security team in the #security Slack channel.

### Exception request process

If SentinelOne is causing issues with your ability to fulfill the responsibilities of your role, you may request an exception to be granted using the [Information Security Policy Exception Management Process](/handbook/security/#information-security-policy-exception-management-process). Exceptions will be granted based on the goal of least needs, attempting to maximize effectiveness, efficiency, and security risk mitigation of SentinelOne while minimizing the negative impact on the team member. For this reason, rarely will an exception be granted to completely disable SentinelOne. Rather, an exception will be granted for specific directory paths, specific applications, or specific collections of data that SentinelOne may be negatively impacting through quarantine or system performance degradation.

### What is the difference between EDR and Antivirus?

Antivirus can be seen as one part of the EDR complete security technology solution. Traditionally, antivirus software is a single program which serves basic purposes like scanning, detecting and removing viruses and different types of malware. For EDR, real time status, remediation paths, endpoint firewalls, and system behavioral analytics come together to create a comprehensive technology stack to protect against modern day digital attacks.

### How does EDR technology work?

The first line of defense is stopping (or if configured, alerting) common threats on the laptop. As for additional or more "layered" lines of defense, certain types of activity (mainly involving processes on the laptop) are recorded and uploaded to a private instance for further processing and investigation. Much more sophisticated processing can take place for more thorough threat detection. As a result, the agent on the laptop is typically 40-60mb in size, as opposed to the older traditional antivirus solutions which can be well over a gigabyte. This results in less resources being used on the laptop including low CPU and low memory usage.

### Is this in addition to Jamf or a replacement for Jamf?

The EDR technology is in addition to Jamf. While Jamf does offer security features and protections, an EDR solution combined with Jamf will offer great ability to detect and stop significant threats and advanced digital attacks on GitLab team member laptops.

Do not attempt to modify or remove SentinelOne components, unless instructed to do so by IT personnel for troubleshooting purposes.

### Will it monitor my local network?

No. The EDR solution only monitors the GitLab laptop, like an antivirus solution would (only much more efficiently).


### Why are we using a third party EDR system?

We do not want to write our own EDR solution, nor do we want to assemble a series of partial solutions into some type of chain to attempt to meet compliance requirements. Not only does a third party EDR solution allow us to meet requirements in a thorough and more economic way, it will show auditors, regulators, and customers that we are taking security seriously and implementing it consistently.

### Can we self-host our own solution to have more control?

We could, although this would require a substantial amount of effort to be able to have a self-managed solution that would address both compliance requirements and customer concerns. The chosen EDR technology is a single-tenant-hosted third party EDR solution to help ensure GitLab and Team Member data privacy.

### I dual boot two different operating systems, do they both need an agent?

Yes. Each operating system on a host computer that is used to access GitLab computing resources, infrastructure, or environments, will need have an EDR agent installed.

### I have several virtual hosts on my laptop, do they all need agents?

Yes. Each operating system on a computer, to include the host operating system, and all guest operation systems, that are used to access GitLab computing resources, infrastructure, or environments, will need have an EDR agent installed.


### I run my own antivirus solution on my work laptop, isn’t that enough?

While this effort is certainly appreciated, we need a way to be able to audit laptops to meet compliance requirements. We would still encourage you to run any such antivirus product up until the EDR solution has been rolled out to your laptop. After which time, we strongly encourage you to uninstall the antivirus solution previously installed. Multiple instances of these technologies, especially from different vendors, have the tendency to cause issues on an endpoint which may negatively impact system performance and your productivity.


### Who owns and manages the EDR solution at GitLab?

Jointly, the Security Department and IT will be responsible for different components. [SIRT](/handbook/security/security-operations/sirt/sec-incident-response.html) will manage the console for incidents, [IT Security](/handbook/business-technology/#security-and-compliance) will handle the configuration and deployment of agents (via Jamf), and [Compliance](/handbook/security/security-assurance/security-compliance/) will handle auditing components. With two departments responsible for usage, we deem it to be joint ownership.

### What safeguards are in place to ensure that owners of this process can prevent abuse?

While such a possibility exists, we feel that the risk of something like this happening is much, much smaller than some of the risks that an endpoint management solution is made to address. Risks like:
 - Laptop is accidentally infected with malware and team-member is unaware of the infection.
 - Laptop is accidentally infected with malware or was the target of an attack.
 - The Laptop is compromised and the GitLab team members access and identity are used to further attack GitLab and our customers.
 - A new security exploit is discovered, and unpatched applications start getting exploited in the wild.
 - GitLab experiencing a targeted attack on our endpoints, which could lead to a compromise of the GitLab Production environment resulting in a customer data breach.

That being said, the EDR solution provides the ability to audit any processes and actions that have been conducted by an Administrator or the technology itself. The solution has role-based access controls implemented to limit access to certain features, and all of the use of such features is auditable.

### What options does a team member have to protect their home network privacy?

If you wish to add further privacy and security to your home network, you can further isolate your work machine by creating a separate network for it. While we cannot provide you with any direct support for this type of network setup, the Security team has a good writeup with some [examples](/handbook/security/network-isolation/) that might help to get you started.

### How do I install the SentinelOne agent on Linux?



<div class="panel panel-info">
**Note**
{: .panel-heading}
<div class="panel-body">

If you are using Advanced Intrusion Detection Environment (AIDE) to monitor file integrity and detect intrusions, you will need to create an exclusion in AIDE. When both AIDE and the SentinelOne Agent are running together, AIDE is not able to update its database correctly. AIDE tries to scan a SentinelOne Directory and cannot scan it.

To create an exclusion for SentinelOne, edit `/etc/aide.conf` and add
`!/opt/sentinelone/mount` to the end to ignore the SentinelOne Agent mount directory:

```shell
echo '!/opt/sentinelone/mount' | sudo tee -a /etc/aide.conf
```

</div>
</div>

1. Make sure you are using an approved [Linux distribution](/handbook/it/operating-systems/).
1. [Download](https://gitlab.com/gitlab-com/it/security/sentinelone-installers)
   the configuration file and the appropriate installer (DEB/RPM). In the following
   examples, we'll assume you put those in the following locations and that you
   renamed the package name to be `sentinelagent`:

   - Configuration file: `~/.config/sentinelone/config.cfg`
   - DEB package: `~/Downloads/sentinelagent.deb`
   - RPM package: `~/Downloads/sentinelagent.rpm`

1. Get your laptop's serial number:

   ```shell
   sudo dmidecode -s system-serial-number
   ```

1. Edit `config.cfg` and update `S1_AGENT_CUSTOMER_ID`:

   1. Replace `tanuki` with the username portion (the part before the `@` sign or the [local-part per RFC2822](https://www.rfc-editor.org/rfc/rfc2822)) of your GitLab email address.
   1. Replace `ABCD1234` with your laptop's serial number.
   1. Verify that the edited variable is formatted correctly with a hyphen separating the GitLab email and serial number. For example, `S1_AGENT_CUSTOMER_ID=jdoe@gitlab.com-ABCD1234`.

1. Install the package (commands may differ slightly based on distro):

   - For Fedora 37 and other supported RPM-based distributions:

     ```shell
     export S1_AGENT_INSTALL_CONFIG_PATH=~/.config/sentinelone/config.cfg
     sudo -E rpm -i --nodigest ~/Downloads/sentinelagent.rpm
     ```

   - For Ubuntu 22.04 and other supported Debian or Ubuntu-based distributions:

     ```shell
     export S1_AGENT_INSTALL_CONFIG_PATH=~/.config/sentinelone/config.cfg
     sudo -E apt install ~/Downloads/sentinelagent.deb
     ```

1. To verify that it installed correctly, you should see the following output
   after the installation:

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

   You can also check if the systemd service is running:

   ```shell
   $ systemctl status sentinelone

   ● sentinelone.service - Monitor SentinelOne Agent
     Loaded: loaded (/lib/systemd/system/sentinelone.service; enabled; vendor preset: enabled)
     Active: active (running) since Fri 2023-02-10 09:37:35 CET; 4min 5s ago
    Process: 298024 ExecStart=/opt/sentinelone/bin/sentinelctl control run (code=exited, status=0/SUCCESS)
   Main PID: 298039 (s1-agent)
     Status: "Starting agent..."
      Tasks: 50
     Memory: 594.6M (limit: 7.9E)
        CPU: 1min 19.288s
     CGroup: /system.slice/sentinelone.service
             ├─298034 s1-orchestrator "" "" "" "" "" "" "" ""
             ├─298035 s1-network "" "" "" "" "" "" "" "" "" ""
             ├─298037 s1-scanner "" "" "" "" "" "" "" "" "" ""
             ├─298039 s1-agent "" "" "" "" "" "" "" "" "" "" "
             ├─298041 s1-firewall "" "" "" "" "" "" "" "" "" "
             ├─298043 s1-fanotify "" "" "" "" "" "" "" "" "" "
             └─298045 s1-perf "" "" "" "" "" "" "" "" "" "" ""
   ```

   <div class="panel panel-info">
   **You don't see the previous outputs?**
   {: .panel-heading}
   <div class="panel-body">

   If you don't see the previous outputs, it means that SentinelAgent was not
   installed correctly, most probably it didn't take into account the configuration
   file, or you didn't set it up correctly. In that case, you must first uninstall
   the package before trying to install it again:

   - For Fedora 37 and other supported RPM-based distributions:

     ```shell
     sudo dnf remove sentinelagent
     ```

   - For Ubuntu 22.04 and other supported Debian or Ubuntu-based distributions:

     ```shell
     sudo apt purge sentinelagent
     ```

   </div>
   </div>

1. Wait five minutes, and then verify connectivity:

   ```shell
   sudo sentinelctl management status
   ```

   You should see `Connectivity: On` and a valid SentinelOne URL.
   If this is not your result, reach out for assistance in the
   [`#sentinelone`](https://gitlab.slack.com/archives/C043PF9TU4X) channel.

### How do I calculate how much CPU is being used by SentinelOne on MacOS?

If you are using Activity Monitor to monitor CPU usage, be aware that it is calculated as the percent utilized for a single CPU thread. For example, an M1 Max laptop has 10 threads, so total CPU capacity is 1000%. To view the number of threads available on your system, open Terminal and run:

```shell
sysctl -n hw.ncpu
```

Expect SentinelOne to use less than 10% of total CPU power (for example, displayed as less than 100% in Activity Monitor on a M1 Max).


### How do I collect metrics for support on MacOS due to an issue with high CPU or RAM?

1. In a terminal, run:
`sudo sentinelctl profiler start 30`
2. Reproduce the scenario that caused the issue, or run it for a few minutes. It will run in the background. You will not see output.
3. Collect the metric log:
`sudo sentinelctl profiler stop`
4. Analyze the data as below, and then if needed share the file with #sentinelone and we will get a ticket open with SentinelOne support.

### My SentinelOne agent is offline

The most common reason for a SentinelOne agent to appear offline is a local firewall prohibiting outbound connections to `*.sentinelone.net`. HTTPS (port 443) needs to be allowed outbound to that domain. For macOS, the most common local firewalls are Little Snitch, pfSense or Lulu. Linux users may have pfSense or iptables blocking access. To check status of your agent:

On macOS, open a Terminal prompt and run:

``` shell
sudo sentinelctl status
```

and look for the status of `Connected:` (should be "on"). Resolve the local firewall block and it should re-connect.

On Linux, run:

```shell
sudo sentinelctl management status
```

 You should see `Connectivity: On` and a valid SentinelOne URL.
   If this is not your result, reach out for assistance in the
   [`#sentinelone`](https://gitlab.slack.com/archives/C043PF9TU4X) channel.



