---
title: Laptop Disk Encryption
---

## Overview

All laptops are required to have hard drive disk encryption enabled.

All team members needed to provide proof of disk encryption in the new laptop order or onboarding issue.

## Configuration Steps

### Apple macOS

> **No Action Required:** We use [Jamf](/handbook/security/corporate/systems/jamf) to enable hard drive encryption for you automatically and monitor for any laptops that are misconfigured. You do not need to configure anything, however you are encouraged to verify that is enabled.

You need to enable FileVault to ensure that your laptop hard drive is encrypted.

1. From your Mac, choose Apple menu ** > System Settings**.
2. Click on the "Security & Privacy" icon.
3. Click on the "FileVault" tab.
4. Verify that FileVault is turned on and your drive is encrypted.

[Vendor Docs - Protect data on your Mac with FileVault](https://support.apple.com/guide/mac-help/protect-data-on-your-mac-with-filevault-mh11785/mac)

### Linux

TODO

## Proof of Encryption

To provide proof of Full Disk Encryption, please do the following depending on the system you are running.

### Apple macOS

Take a single screenshot with two windows side-by-side showing both the confirmation of enabled Full Disk Encryption as well as the info showing your serial number.

Both pieces of information can be found by:

1. In the Menu Bar click on  ** > System Settings**.
2. Click on the "Security & Privacy" icon.
3. Click on the "FileVault" tab.
4. Then in the Menu Bar click on  ** > About This Mac**.
5. Take a screenshot for both windows side by side

### Linux

Take a screenshot showing the output of `sudo dmsetup ls && sudo dmidecode -s system-serial-number && cat /etc/fstab`
