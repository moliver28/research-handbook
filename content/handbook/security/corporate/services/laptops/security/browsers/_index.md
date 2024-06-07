---
title: Laptop Security Standards for Web Browsers
# controlled_document: true
---

## Overview

We use Google Chrome as our primary web browser since many of our collaboration and security tools are natively integrated with Google.

We do not recommend using Firefox or Safari, although we do not prevent it. A few team members use Brave, however it is not supported by Security.

## Configuration Steps

- [Vendor Docs - Install Chrome](https://support.google.com/chrome/answer/95346?hl=en&co=GENIE.Platform%3DDesktop&oco=0#zippy=%2Cmac)
- [Vendor Docs - Chrome Profiles](https://support.google.com/chrome/answer/185277?hl=en&ref_topic=7439538&sjid=3263200837792153330-NC)

## Password Management

Do not allow the Chrome, Safari, or Firefox web browser to save your passwords. Do not use a personal password manager (Bitwarden, LastPass, etc.) or personal 1Password account to store your work credentials. This presents an unnecessary risk.

We use [1Password Business](https://1password.com/business) and the [1Password Chrome Extension](https://chromewebstore.google.com/detail/1password-%E2%80%93-password-mana/aeblfdkhhhdcdjpifhhbdiojplfjncoa?hl=en&pli=1) for storing and autofilling all passwords, passkeys, and 2FA One Time Password (OTP) codes.

- [1Password Setup Guide](/handbook/security/corporate/systems/1password/setup)

## Personal Use

We do allow team members to use their laptop for personal use (at their discretion), including gaming or personal browsing. This includes social media, online banking and normal consumer applications. It is never a good idea to use your work computer for not-safe-for-work (NSFW) websites.

Our concerns usually start with websites that contain lots of popups, click bait, multiple pages of celebrity photos, or are susceptible to malware. In other words, you can view your Facebook news feed, however please avoid opening any advertisements. Please visit any of these kinds of websites on your personal phone or tablet since they are much less vulnerable to malware installation.

You'll be required to read the [Acceptable Use Policy](https://handbook.gitlab.com/handbook/people-group/acceptable-use-policy/) as part of the onboarding issue.

Please be aware that your computer is monitored by [Jamf](/handbook/security/corporate/systems/jamf) (MDM) and [SentinelOne](/handbook/security/corporate/systems/sentinelone) (EDR), **including any URLs that you visit**. This is only used for retroactive security investigations and we do not proactively monitor for you activity. In other words, it's not a "big brother" monitoring approach, it's for having as much forensic breadcrumb trail data as possible if your computer is breached. You can learn more about what data we can see in this [slide deck](https://docs.google.com/presentation/d/1C2ufNXF28l0KTd5PPTkq1TjUWeWPI44VfwYbsvOzkns/edit).
