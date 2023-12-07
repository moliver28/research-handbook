---
title: "Security Asset Management Standard"
---

{{% alert title="This is a Controlled Document" color="danger" %}}
Inline with GitLab's regulatory obligations, changes to [controlled documents]({{< ref "controlled-document-procedure" >}}) must be approved or merged by a code owner. All contributions are welcome and encouraged.
{{% /alert %}}

## Purpose

This document defines asset management measures and guidelines to support the protection of information assets in GitLab's all remote organizational environment. The measures and guidelines noted within the standard are designed to create a secure infrastructure, work environment, and protect sensitive information from physical threats.


## Scope

This standard applies to all GitLab team-members, contractors, advisors, and contracted parties interacting with GitLab computing resources and accessing company or customer data.

## Roles & Responsibilities

| Role | Responsibility |
|----|-------|
| Security Assurance | Responsible for implementing and executing this standard |
| Security Assurance Management (Code Owners) | Responsible for approving significant changes and exceptions to this standard |
| Team Members, Contractors, Advisors, Contracting Parties | Responsible for adhering to the 'Physical Devices and Location' requirements of this standard |

## Overview

As an all remote company, physical protection of information assets can be broken out into a defined "security zones". Security zones are defined as requirements for the handling of information assets in their physical location.

GitLab has two distinct security zones:

1. Infrastructure (for SaaS products)

- Hosted and physically secured by third party service provider(s)
- [Shared responsibility model](https://handbook.gitlab.com/handbook/security/isms/#assets)
- Adherance to physical security requrements reviewed annually as part of the Third Party Risk Management (TPRM) review and Complementary User Entity Contro (CUEC) review. This includes confirmation that independent third parties attest to effective physical security procedures including but not limited to:
    - Visitor Management
    - Premises Protection
    - Environmental Securities
    - Access Management

1. Physical Devices and Location

- Laptops are protected through [Endpoint Management Procedures](https://about.gitlab.com/handbook/business-technology/end-user-services/onboarding-access-requests/endpoint-management/) and secured through system configurations defined in the [IT Security - System Configurations handbook page](https://handbook.gitlab.com/handbook/business-technology/it/security/system-configuration/#clean-deskclear-screen) which include, but are not limited to:

   - Passwords
   - Screen timeout
   - Encryption
   - Endpoint detection and response

- Utilize trusted networks when available. If you are connecting from an untrusted network such as a public Wi-Fi, guest networks, or unsecured hotspots, you should use a [personal VPN](https://handbook.gitlab.com/handbook/tools-and-tips/personal-vpn/). GitLab has selected [NordLayer](https://handbook.gitlab.com/handbook/it/guides/nordlayer/) as the preferred provider.

- Keep [Clear Desk/Clear Screen](https://handbook.gitlab.com/handbook/business-technology/it/security/system-configuration/#clean-deskclear-screen) requirements.

- Ensure devices are not left unattended in public areas and are locked when not in use. [Activate a screensaver with password lock, lock the desktop, close the lid](https://handbook.gitlab.com/handbook/business-technology/it/security/system-configuration/#laptop-or-desktop-system-configuration).

- Personal mobile phone and tablet usage [must be passcode protected](https://handbook.gitlab.com/handbook/people-group/acceptable-use-policy/#personal-mobile-phone-and-tablet-usage).

- Sensitive data should not be stored on removable storage devices, such as USB drives or external hard drives. External media on company assets [is not sanctioned](https://handbook.gitlab.com/handbook/people-group/acceptable-use-policy/#use-of-external-media-on-company-assets).

- Printing documents containing sensitive information as defined by the [Data Classification Standard](https://handbook.gitlab.com/handbook/security/data-classification-standard/) is prohibited.

- [Secure your data during travel](https://handbook.gitlab.com/handbook/travel/#secure-your-data-during-travels) including utilizing a VPN, ensure that you are in a secure place and no-one can hear you when you are talking about restricted data, and locking your device when it is not in use.

- Do not bring company-owned devices to [embargoed countries](https://handbook.gitlab.com/handbook/sales/#export-control-classification-and-countries-we-do-not-do-business-in) without consulting the Legal Department.

## Exceptions

Exceptions to this procedure will be tracked as per the [Information Security Policy Exception Management Process](/handbook/security/#information-security-policy-exception-management-process).

## References

- [Internal Acceptable Use Policy](https://handbook.gitlab.com/handbook/people-group/acceptable-use-policy/)
- [IT Security System Configuration](https://handbook.gitlab.com/handbook/business-technology/it/security/system-configuration/#secure-system-configuration)
- [Information Security Management System](https://handbook.gitlab.com/handbook/security/isms/)
