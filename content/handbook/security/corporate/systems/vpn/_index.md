---
title: Laptop VPN for Public Networks and System Administration
---

## Overview

NordLayer is our supported VPN (Virtual Private Network) platform for GitLab Team Members.

The use of NordLayer is optional, however it is recommended when [working on guest networks or public Wi-Fi](/handbook/security/corporate/services/laptops/security/networks). In other words, you should connect to the VPN to secure your laptop's traffic anytime that you're not at home. That could be at a co-working location, an airport, a coffee shop or on a guest network at a customers office.

Some members may use a different VPN solution for these scenarios and we would recommend that they migrate to NordLayer when it's convenient.

- [Wireless Networks Security Standards](/handbook/security/corporate/services/laptops/security/networks)
- [Setup Guide](/handbook/security/corporate/systems/vpn/setup)
- [Troubleshooting Guide](/handbook/security/corporate/systems/vpn/troubleshooting)
- [Vendor Docs](https://help.nordlayer.com/)

## Background Context

When we first approached the idea of a simple VPN for those times that our employees work away from home (coffee shops, trains, planes, etc.), we found a lot of options out there. While many VPN options exist, some are much more than we need, and some far less.

When it comes to our decision on NordLayer, we had a number of things to look at:

- Is it secure?
- Is it easy to administer?
- Does it support multiple operating systems?
- Are admin actions logged?

We tested many options and while a number fit a few of these, NordLayer fit the most with security being our most important criteria.

## NordLayer for System Administration

NordLayer is also used for system administration purposes, providing secure access to internal systems and resources. Here are some key points about using NordLayer for system administration:

1. Access Control: NordLayer allows for granular access control, ensuring that only system administrators can access specific resources.

2. Multi-Factor Authentication: For enhanced security, NordLayer is implemented with Okta Device Trust Authentication policies.

3. Secure Remote Access: System administrators can securely access internal systems from any location, enabling efficient remote work and incident response.

4. Network Segmentation: NordLayer supports network segmentation, allowing administrators to isolate sensitive systems and limit potential security risks.

5. Encrypted Communication: All traffic between the administrator's device and internal systems is encrypted, protecting sensitive data in transit.

6. Centralized Management: The NordLayer admin panel provides a centralized interface for managing user access, monitoring connections, and configuring security policies.

When using NordLayer for system administration, always follow GitLab's security best practices and ensure that you have the appropriate permissions before accessing any systems or data.

Dedicated IP's are listed below for reference by Security teams or incident response.

| Location | IP |
| --- | --- |
| GitLab - Los Angeles | 146.70.49.165 |
| GitLab - New York | 146.70.186.59 |
| GitLab - Atlanta | 205.234.251.167 |
| Gitlab - Belgium | 146.70.55.7 |
| GitLab - Hungary | 217.138.192.12 |
| GitLab - Japan | 146.70.138.86 |
| GitLab - Australia | 88.216.59.30 |


## System Owner and Support

- DRI: `@adamhuss`
- `#security-corpsec` Slack channel
