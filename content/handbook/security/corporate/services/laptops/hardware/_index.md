---
title: Laptop Hardware Models and Specs
---

## Overview

Laptops are **purchased by Corporate Security** during a team member's onboarding process. The team-member will be sent a form to fill out for ordering.

GitLab approves and supports the use of macOS as the OS for employee laptops. We also approve Linux for employee laptops, however team members will be self-supporting. For security concerns and support efficiency reasons, Windows is not supported as a hardware laptop OS for team members unless it is for [specific product development and testing use cases](#windows).

Further information on GitLab authorized operating systems, versions, and exception process is available on the [Approved Operating Systems](/handbook/security/corporate/services/laptops/os) page.

The operating system choices have obviously affected the hardware selection process.

Apple hardware is the common choice among GitLab team members. Team members may also select a Dell Linux laptop if they are familiar with Linux and capable of self-support, as long as they are using an approved operating system. Please do not select Linux if you have never used macOS or Apple products before.

> We have a corporate discount for corporate-purchased Apple products only. Apple does **not** have an employee discount program for GitLab at this time.

## Apple

### MacBook Model Eligibility

Most roles that require higher performance machines are approved for a 14" or 16" MacBook Pro M3 Max. Please see this [spreadsheet](https://docs.google.com/spreadsheets/d/1OuC0_iliCzASKfOhDLWO4fBmDS-uL3VGRMI6063R6tk/edit?usp=sharing) (public) to locate your department group and determine which machine you are eligible for.

> **New Team Members:** If your job title includes the word `Engineer` and your team is not approved for a performance model, it may be an oversight or typo. Please ask in [#it_help](https://gitlab.enterprise.slack.com/archives/CK4EQH50E) before submitting an order form to confirm whether you can order the performance model. If you have not started at GitLab yet, please send this question via email to your Candidate Experience Specialist.

### Standard MacBook Model

- MacBook Pro 14"
- M3 Processor (8c CPU, 10c GPU, 16c Neural)
- 16GB Memory
- 512GB Storage

### Performance MacBook Model

- MacBook Pro 14" or 16" *(based on regional inventory)*
- M3 Max Processor (14c CPU, 30c GPU, 16c Neural)
- 36GB Memory
- 512GB or 1TB Storage (based on inventory, not user choice)

> We have inventory of laptops ready to ship to team members in countries with a large number of team members. This ensures that you can get your laptop promptly and not need to wait several weeks or months for custom order machines.
>
> As a result, the choice of chassis color and screen size (14" or 16") may be restricted based on regional vendor inventory. For example, we may only stock 16" models in a specific color in some regions for inventory efficiency.

## Linux

### Linux Model Eligibility

> Corporate Security strongly encourages team members to choose a Mac. Please only request a Linux laptop if you are experienced in Linux and capable of self-support. Linux is **not** a substitute for MacBooks if you don’t know how to use Macs.
>
> **Fun Fact:** Less than 10% of team members use Linux on their work laptop. We provide AWS and GCP cloud infrastructure for each team member to deploy Linux virtual machine servers and containers for experiments while maintaining corporate security standards on their laptop for day-to-day work.

If you are adamant on using a Linux machine, we approve Linux laptops for the following roles:

- Engineers
- Support Engineers
- Data Analysts
- Technical Marketing Managers
- Product Designers
- UX Managers
- Product Managers
- Technical Writers
- Digital Production
- Security Engineers (research or testing roles, no system administration roles)

### Linux Hardware Models

We have standardized on the [Dell Precision 5690](https://www.dell.com/en-us/shop/dell-computer-laptops/new-precision-5690-workstation/spd/precision-16-5690-laptop/s004p5690usvp) Mobile Workstation laptops.

These laptops generally come pre-loaded with Ubuntu Linux in order to save money on unused Windows licenses. Dell do not currently sell laptops pre-installed with Linux in Australia and New Zealand; staff will need to install Linux themselves.

Dell is GitLab's exclusive Linux vendor for the following reasons:

- Dell has the longest history of shipping laptops with Linux pre-installed among major manufacturers.
- Dell is able to ship laptops to all countries in which GitLab employees live.
- As we move forward with Zero Trust networking solutions, we need to have a stable and unified platform for deployment of software components in the GitLab environment. Standardization on a single platform for Linux simplifies this.
- The current Ubuntu LTS is the preferred Linux platform; Ubuntu LTS has a record of stability and quick patching.
- Purchasing laptops from a single vendor opens the possibility of corporate discounts.
- [Dell is a certified Ubuntu vendor](https://certification.ubuntu.com/desktop/models?query=&category=Desktop&category=Laptop&level=&release=18.04+LTS&vendors=Dell) with multiple laptop choices available. They even have their own Ubuntu OEM release of Ubuntu they maintain, and as a result of their effort, the standard Ubuntu Linux 20.04 LTS image natively supports Dell hardware and even firmware updates.
- To date, all of Dell's major security issues have not been related to their hardware.

Due to supply constraints, specific models available may vary. Due to custom order lead times (based on country), please order this laptop at least 14 days prior to start date.

We will work with each person to find an available model meeting the following specifications:

- 16" Display
- Intel i9 CPU or equivalent
- 512GB SSD
- 32GB Memory

The maximum price of Linux laptops is **not to exceed the price of the equivalent 16" MacBook Pro**.

## Windows

While GitLab limits the Laptop operating systems supported for team member daily work, specific roles will need to use Windows for Customer Support and Product Development to ensure excellent platform and ecosystem support for GitLab customers and partners who develop for the Microsoft Ecosystem.

Microsoft Windows Professional (Desktop OS) and Windows Server may need to be used by some technical roles for supporting GitLab customer usage of Windows and developing GitLab software. These editions can be used for support and development purposes using virtualization or cloud instances and are self-supported and must be in compliance with all endpoint policies, [including installation of SentinelOne](/handbook/security/corporate/systems/sentinelone) as well all information in this section.

Complete details about Windows usage is available on the [Windows](/handbook/security/corporate/systems/windows) page.
