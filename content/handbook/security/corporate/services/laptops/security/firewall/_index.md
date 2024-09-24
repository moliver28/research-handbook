---
title: Laptop Firewalls
---

## Overview

All laptops need to have the operating system firewall enabled.

GitLab uses SaaS web applications and does not use a VPN to access most services (unless you are a Infrastructure or Security system administrator).

See the [wireless networks](/handbook/security/corporate/services/laptops/security/networks) handbook page to learn more about best practices when traveling and using public networks.

## Configuration Steps

### Apple macOS

- [Vendor Docs - Enable the Firewall](https://support.apple.com/guide/mac-help/block-connections-to-your-mac-with-a-firewall-mh34041/mac)
- [Vendor Docs - Firewall Settings](https://support.apple.com/guide/mac-help/change-firewall-settings-on-mac-mh11783/mac)

### Ubuntu Linux

- [Vendor Docs](https://ubuntu.com/server/docs/firewalls)

## Advanced Firewalls

For team members that are security conscious, you can purchase and expense 3rd party firewall software like [Little Snitch](https://www.obdev.at/products/littlesnitch/index.html) or [LuLu](https://objective-see.org/products/lulu.html). These allow you to monitor and control outbound traffic on a per-application basis.

Be sure to allow Jamf and SentinelOne to communicate with their management consoles.

<!-- TODO: Add link to SentinelOne agent troubleshooting offline -->

## Network Exceptions

Sometimes a team member needs to test a particular scenario that requires bypassing of the firewall.

It is important to not use tools designed to circumvent network firewalls for the purpose of exposing your laptop to the public Internet. An example of this would be using [ngrok](https://ngrok.com/) to generate a public URL for accessing a local development environment.

Our core product offers remote code execution as a feature. Other applications we test often expose similar functionality via the relaxed nature of development environments. Running these on a laptop exposed to the Internet would essentially provide a back-door for remote attackers to abuse. This could result in the complete compromise of your home network and all business and personal accounts that have been accessed from your machine.

Our [Acceptable Use Policy](/handbook/people-group/acceptable-use-policy/) prohibits circumventing the security of any computer owned by GitLab, and using ngrok in this manner is an example of circumventing our firewall requirements.

An alternative to ngrok is to use [GitLab Sandbox Cloud](/handbook/company/infrastructure-standards/realms/sandbox/#how-to-get-started) to create temporary infrastructure.

If you do need to circumvent the firewall, please ensure that you do it as safely as possible by ensuring one of the following network scenarios/configurations is used for your laptop:

- If you do not need Internet access during your test scenario, disconnect from the Internet before disabling the firewall for your tests and re-enable it before re-connecting to the Internet.

- Make sure the connected network is not a public network, or a network with a publicly-known WiFi password (e.g. a coffee shop WiFi network with the password written on a chalkboard). Your home network with your laptop behind the built-in firewall in your Internet router that protects your network is considered a non-public network. Refer to [wireless networks](/handbook/security/network-isolation/) for more information.

- Keep the firewall active and make use of virtual machines and containers to create a self-contained network configuration.

- If your testing is frequent, configure the firewall to only allow the ports needed for your testing, and stay on an [isolated network](/handbook/security/network-isolation/) or use a [personal VPN](/handbook/tools-and-tips/personal-vpn/).

- Contact the Security department in the `#security` Slack channel if you have questions about this.
