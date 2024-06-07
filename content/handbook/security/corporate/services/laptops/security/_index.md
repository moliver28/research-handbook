---
title: Laptop Security Configuration Standards
# controlled_document: true
---

## Overview

New laptops should be configured with security in mind.

We require the use of an @gitlab.com Apple ID that is separate from any personal Apple ID's you may have.
Some of these reasons include:

- Backups, keychains and documents are all considered sensitive information, and should not be stored in personal services.
- 2FA for remote lock, wipe, or account resets are common methods of account compromises, and ensuring the use of GitLab.com email addresses also ensures we are in control of that aspect of multi-factor authentication.
- Keeping a strong separation between work and personal accounts will help prevent the accidental leak of information from one to the other, in either direction.

Defense in depth, in part, means you make a best effort to be secure at each layer. To read through more instructions, please refer to [security best practices](/handbook/security/#best-practices) when configuring your new laptop.

**All team-members must provide proof of whole-disk encryption within the new laptop order issue.**

Certain circumstances (world region and availability of hardware) might require the self installation of Linux on a Dell that was shipped with OEM Windows.

Please make sure you follow any needed requirements when self installing and open an issue with IT-Ops for verification.

For laptops shipped with OEM Windows you may want to make a full drive backup (e.g. by using open source utility [Clonezilla](https://clonezilla.org/) to the external drive before installing Linux. That way you could restore your laptop to the original state at any time. It will make the RMA process much easier in case you need it.

### Full Disk Encryption

To provide proof of Full Disk Encryption, please do the following depending on the system you are running.

- Apple : Take a screenshot showing both the confirmation of enabled Full Disk Encryption as well as the info showing your serial number.
    Both pieces of information can be found by clicking on the Apple icon in the top left corner of your screen.
    For proof of disk encryption, choose `System Preferences -> Security & Privacy`, and then choose the `FileVault` tab near the top of the window.
    For your serial number, choose the `About This Mac` option.
    Please get both pieces of information in a single screenshot.
- Linux : Take a screenshot showing the output of `sudo dmsetup ls && sudo dmidecode -s system-serial-number && cat /etc/fstab`

### Fleet Intelligence & Remote Lock/Wipe

GitLab has a large and ever-growing fleet of laptops, which IT Operations is responsible for maintaining.
In order to do this and combined with our Zero Trust security policies and various Compliance needs, there must be some measure of intelligence and reporting in place.
To accomplish this goal we are utilizing Jamf for MacOS devices to obtain only the essential information required. For Linux machines we will be utilizing DriveStrike as a light-touch mechanism.

For more information regarding Jamf, refer to our [Endpoint Management](https://internal.gitlab.com/handbook/it/endpoint-tools/) handbook page.

For more information regarding DriveStrike, refer to our [DriveStrike](/handbook/it/guides/drivestrike/) handbook page.

## Exceptions

Exceptions to this procedure will be tracked as per the [Information Security Policy Exception Management Process](/handbook/security/#information-security-policy-exception-management-process).

## References

- Parent Policy: [Information Security Policy](/handbook/security/)
