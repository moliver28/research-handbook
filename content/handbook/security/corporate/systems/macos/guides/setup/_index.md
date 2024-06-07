---
title: Apple macOS Guide (Initial Setup)
---

## Overview

The first time your MacBook starts up, the Setup Assistant will walk you through the simple steps needed to get start using your new Mac. You can respond to all the prompts, or skip some and choose “Set up later” when you see that option.

Most steps can be followed using sensible options. **Please read through this page before proceeding to learn more about GitLab-specific configuration requirements or recommendations.**

- [Vendor Documentation - macOS User Guide](https://support.apple.com/guide/mac-help/welcome/14.0/mac)
- [Vendor Documentation - Get started with your Mac](https://support.apple.com/guide/mac-help/get-started-with-your-mac-mchl3a2c2cb0/mac)
- [Vendor 101 Training Webinars - New to Using a Mac](https://events.apple.com/content/events/pst/us/en/default.html?token=xww6uj7woR0X9A3Y9qIMRkNVdH60MurN7MAvJSY75sHQxWqaTEhMjEmalXqC7MMJuZhb5dzJ1P9mLUXaAAfCMipX6qVTaNqFY_njjpamZQfrSbMYEpe-edwBN1r5nI4t-GCxEY8&a=1&l=e)

## GitLab Configuration for macOS

### Wireless Networks

It is safe to connect to the wireless network at your home or a friend or family member's house.

The safest wireless network when traveling outside of your house is using the hotspot on your phone if possible.

When connecting to a wireless network at a coffee shop or co-working space or hotel, you should use [NordLayer VPN](/handbook/security/corporate/systems/vpn) to establish a secure connection to avoid local network traffic interception.

**Security Best Practice:** When traveling in public spaces (ex. airports, airplanes, trains, etc.), it is a security best practice to disable Wi-Fi on your laptop until you need to use it. Even if you are not connected to a wireless network, your wireless chip is still scanning for networks "on the wire" and may try to connect to a familiar or known network.

- [System Guide - NordLayer VPN](/handbook/security/corporate/systems/vpn)
- [Vendor Documentation - Wi-Fi: Connecting to WiFi Networks](https://support.apple.com/guide/mac-help/use-the-wi-fi-status-menu-on-mac-mchlfad426fa/14.0/mac/14.0)
- [Vendor Documentation - Wi-Fi: Using iPhone or iPad as Hotspot](https://support.apple.com/guide/mac-help/iphone-ipad-connect-mac-internet-mchl7594e36f/14.0/mac/14.0)
- [Vendor Documentation - Wi-Fi: Status Symbols](https://support.apple.com/guide/mac-help/wi-fi-menu-icons-on-mac-mchlcedc581e/mac)

### Apple ID

Your Apple ID consists of an email address and a password. It’s the account you use for everything you do with Apple—including using the App Store, Apple TV app, Apple Book Store, iCloud, Messages, and more.

**Please create a new Apple ID** using your `{handle}@gitlab.com` work email address to keep your personal and work data separate.

**Do not use your personal email address Apple ID.**

When prompted for a credit card for purchases, use a personal card. You can submit expense reports for apps that you purchase on the App Store using an `@gitlab.com` Apple ID.

### Transfer Information from a Mac (Migration Assistant)

If you are a new GitLab team member, choose the `Don't transfer any information now` option. Do not try to transfer information from a personal Mac or your previous company's computer.

If you received a replacement laptop from GitLab, you can choose to transfer information from your old MacBook or start over with a clean slate.

- [Vendor Documentation - Migration Assistant](https://support.apple.com/guide/mac-help/transfer-information-mac-computer-device-mh27921/14.0/mac/14.0)
- [Vendor Migration - Migration Assistant](https://support.apple.com/en-us/102613)

### Siri

**Most team members do not use Siri on their work Mac.** You can always turn it on later if you have a need.

You can use Siri if you'd like. Remember that Siri is tied to your work Apple ID and won't be able to access or control any smart home devices or send messages to your contacts on your personal phone or devices.

### iCloud Drive

To help protect company data and improve collaboration, any yellow, orange, or red data should be stored in Google Drive, GitLab issue or repository code, or in the handbook.

**Do not enable iCloud Drive**.

iCloud has the ability to store desktop and documents in iCloud. GitLab uses Google Drive for document and file storage, so please make sure this feature is disabled. This can be unchecked during installation or reconfigured later using the instructions below.

1. From your Mac, choose Apple menu ** > System Settings**.
2. Click **(Your Name) Apple ID** in the top left corner, then click **iCloud**.
3. Under **Apps Using iCloud**, click **iCloud Drive**.
4. Turn off **Desktop & Documents Folders** or **Sync this Mac**.
5. Click Done.

- [Company Policy - Data Classification Standard](/handbook/security/data-classification-standard/)
- [Vendor Documentation](https://support.apple.com/en-us/109344)

### Disk Encryption

You need to enable FileVault to ensure that your laptop hard drive is encrypted.

1. From your Mac, choose Apple menu ** > System Settings**.
2. Click on the "Security & Privacy" icon.
3. Click on the "FileVault" tab.
4. Verify that FileVault is turned on and your drive is encrypted.

- [Vendor Documentation - Protect data on your Mac with FileVault](https://support.apple.com/guide/mac-help/protect-data-on-your-mac-with-filevault-mh11785/mac)

### Touch ID (Biometrics)

**Please enable Touch ID on initial setup.**

We use WebAuthn for 2FA at GitLab. In other words, you will be prompted for your fingerprint (or YubiKey) on a regular basis when signing into Okta SSO and various web applications.

> **Reminder:** This is a work machine. Do not add finger prints for your significant other or children.

- [Vendor Documentation - Using Touch ID on Mac](https://support.apple.com/guide/mac-help/use-touch-id-mchl16fbf90a/14.0/mac/14.0)
- [Vendor Documentation - Touch ID and Password Settings on Mac](https://support.apple.com/guide/mac-help/touch-id-password-settings-on-mac-mchl319754b3/14.0/mac/14.0)

## Mac Cheat Sheet

If you are new to using a MacBook or switched from another OS such as windows, check out these useful shortcuts and options.

![mactips2.png](/handbook/security/corporate/systems/macos/guides/setup/images/mactips2.png)

![mactips1.png](/handbook/security/corporate/systems/macos/guides/setup/images/mactips1.png)
