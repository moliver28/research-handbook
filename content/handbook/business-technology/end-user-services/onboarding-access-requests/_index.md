---
title: "GitLab Laptop Management"
controlled_document: true
---

## Purpose

This page displays different pieces of information surrounding GitLab laptop procurement and management.

## Scope

At GitLab, we use centralized laptop management for company-issued laptops. If you are in possession of a company-issued laptop, the details below apply to you. However, not all endpoint management technologies GitLab deploys will be required for Apple, Linux, and Windows laptops. Some technologies may be specific to the hardware platform or operating system.

## Roles & Responsibilities

| Role | Responsibility |
|-----------|-----------|
| GitLab Team Members | Responsible for following the requirements in this procedure |
| Business Technology | Responsible for implementing and executing this procedure |
| Business Technology Management (Code Owners) | Responsible for approving significant changes and exceptions to this procedure |


## GitLab Laptops

### New Hire Laptop Ordering Process

The laptop ordering process for new hires starts as soon as an offer is accepted by a candidate and the initial Welcome email is sent by the Candidate Experience Specialist.
This email will include a link to the Notebook Order Form where the new team member will state their intent for obtaining or ordering hardware.

Team members that live in these countries can be serviced via the IT Laptop Ordering Process:

USA, Canada, Mexico, all of the EU, Thailand, China, Japan, Philippines, Singapore, Australia, New Zealand, India and the UK.

Please note that we are adding supported countries to this list as we discover our ability to order in them.
You can test this by going to order a MacBook Pro (or Dell) from the regional Apple store, and seeing if they let you customize a build or alternately refer you to local retailers.
If the latter, see below.

We currently cannot procure Apple laptops for Brazil or Israel. If your country is not listed above or for any general laptop procurement questions please contact `IT-Help@gitlab.com` or your Candidate Experience Specialist to discuss alternate options.
If the team member desires financial assistance to purchase the hardware, the Company will advance the funds to help facilitate the purchase (see Exception Processes below).

{{% alert title="**Warning: fake job scams**" color="warning" %}}
Scammers may impersonate GitLab and target job seekers. GitLab will never ask new hires to send us funds for equipment purchases.

Read the ["What to know about a fake job scam impersonating GitLab"](https://about.gitlab.com/blog/2023/06/29/fake-gitlab-job-scam/) blog post to learn the warning signs and how to protect yourself.

{{% /alert %}}

### Laptop Refresh

Team members can choose to refresh their laptop, no questions asked, after 3 years of use (not necessarily 3 years of employment if a used laptop was issued at the time of onboarding). If the laptop is sufficient for your needs, you may opt to continue using a laptop until it no longer receives the latest macOS version from Apple (approximately 5 years).

The old laptop must be [wiped](/handbook/business-technology/end-user-services/#laptop-wipe-schedules-for-it-analysts) or [returned](#laptop-recyclereturn) **within 2 weeks of receiving the replacement laptop**, so please prioritize transferring information between laptops within this timeframe.

Laptops being requested as part of the refresh program use [this template](https://gitlab.com/gitlab-com/it/end-user-services/issues/laptop-issue-tracker/-/issues/new?issuable_template=Laptop_Refresh_Upgrade).

If you qualify/complete a laptop refresh, please also refer to our [Laptop Buy back Policy](#laptop-buy-back-policy) below.

### GitLab Laptop Replacement Program

We get it, sometimes things happen! If you laptop is broken or not sufficient for your role you can request a replacement laptop if you do not qualify for the 3 year refresh yet.

Replacement laptops for broken GitLab laptops can be requested as needed by [creating an issue](https://gitlab.com/gitlab-com/it/end-user-services/issues/laptop-issue-tracker/-/issues/new?issuable_template=Laptop_Replacement) in the End User Services issue tracker project. Please describe the reason for your replacement in the issue. (i.e., my screen and battery are damaged) also, please note replacements will require your manager's approval in the issue.

Many team members can use their company issued laptop until it breaks. If your productivity is suffering, you can request a new laptop. The typical expected timeframe for this is about three years, but it can depend on your usage and specific laptop.

**Please note**

Laptops paid for or reimbursed by the company are property of GitLab. They need to be reported with serial numbers, make, model, screen size and processor to IT Ops by enrolling the device for proper [asset tracking](/handbook/finance/accounting/#fixed-asset-register-and-asset-tracking).
Since these items are company property, you do not need to buy insurance for them unless it is company policy to do so (for example, at the moment we do not purchase Apple Care), but you do need to report any loss or damage to IT Ops as soon as it occurs.

### Laptop Repair

If your primary laptop is broken and needs to be repaired you can take it into an Apple store (or any authorized service center) . You should ensure that you have a recent backup before doing so, and that your laptop is not your only registered device for iCloud two-factor authentication.

If the repair is not going to be too expensive (less than $1,000 USD), follow the below process to repair and expense. If the repair is going to take longer than a day, then you need to make sure you have a back up laptop to work on that uses a supported hardware OS.

Before repairing, you must open an issue in the [End User Services Issue Tracker](https://gitlab.com/gitlab-com/it/end-user-services/issues/laptop-issue-tracker/-/issues/new?issuable_template=Laptop_Repair) to document the repair. The issue must include IT and your managers approvals prior to the repair being done. Please make sure to attach/include any estimates or receipts for the repair that you get from Apple (or any authorized service center) in the issue. Picture or PDF will work just fine.

Do not provide the repair center with any credentials to your laptop. If they ask, you can tell them that they're authorized to do a factory reset on the laptop should it be necessary to run diagnostics. This will help prevent sensitive data from being accidentally or intentionally leaked during repair.

Once you receive your laptop back, re-install MacOS ([instructions here](https://support.apple.com/en-au/HT208496)) and restore your data from a recent backup. This is to ensure that no unauthorized software was added during the repair process. Make sure that your [disk is encrypted](/handbook/business-technology/end-user-services/onboarding-access-requests/#full-disk-encryption) and you've reinstalled [Jamf for Mac or DriveStrike for Linux](/handbook/business-technology/end-user-services/onboarding-access-requests/#fleet-intelligence--remote-lockwipe). Also, ensure that you have installed [SentinelOne](https://internal.gitlab.com/handbook/it/endpoint-tools/#endpoint-management-technologies) in order to keep your laptop secure.

If, however, the repair is going to be expensive and take weeks to fix and you have no back up laptop, your best option is to replace the laptop.

In this case please open [an issue to replace](https://gitlab.com/gitlab-com/it/end-user-services/issues/laptop-issue-tracker/-/issues/new?issuable_template=Laptop_Replacement).
When you receive the new laptop, please follow the guidelines in the template. After you have moved to the replacement laptop, we can have the old one sent off to be [recycled](#laptop-recyclereturn)

### Laptop Purchasing and Shipping Process

Once End User Services receives your laptop order, we will start working on purchasing your laptop. We leverage business relationships with several different vendors across the globe to accomplish this remotely. Please note delivery times will vary depending on location, hardware supply, vendor selection, and shipping method.

In some instances, we may be able to work out priority or overnight delivery. We will not be able to service this for all cases and regions at this time but please feel free to reach out to laptops@gitlab.com or talk with your hiring manager to review all options available.

If you are a hiring manager or member of the hiring/recruiting team, you may check the status and content of a new hires order in the [IT Equipment Order Process Project](https://gitlab.com/gitlab-com/it/end-user-services/issues/it-equipment-order-processing/-/issues/?sort=created_date&state=opened&first_page_size=100)

Estimated Delivery Timelines for GitLab Hardware

- US New Hires - 1-2 weeks (Apple) and 3-5 weeks (Linux)
- EMEA New Hires - 1-2 weeks (Apple) and 3-5 weeks (Linux)
- Other Regions - 2-3 weeks (Apple) and 6-9 weeks (Linux)

### Key Performance Indicators

KPI 90% of laptops will arrive prior to start date or 21 days from the date of order.

### Additional Laptop Request/Personal Laptop Usage

We do not allow personal laptops to be used for GitLab work. If you are in need of a additional device, have a business justification, have manager approval and IT approval, you can request an additional laptop through the [Laptop Refresh/Upgrade template](https://gitlab.com/gitlab-com/it/end-user-services/issues/laptop-issue-tracker/-/issues/new#). Please note that if the secondary device is approved it will be a refurbished device and not a new device.

### Laptops Out of Spec

If the laptop is outside the standardized specifications listed [here](#apple-hardware) then manager and [Michael Beltran's](/handbook/company/team/#mbeee)/[Steve Ladgrove's](https://about.gitlab.com/company/team/#sladgrove) approval will be required before IT can purchase the laptop.

### Exception Processes

If you are in a region where we are not able to have a laptop delivered, and you need to request funds be advanced in order for a local purchase to take place;
Obtain two quotes from local retailers (online or physical).

Email your manager with those quotes attached, requesting the funds advance and detailing the reason why (geo region, unable to have laptop delivered).
Your manager will supply this information and follow the [process to initiate an advance](/handbook/finance/expenses/#team-member-expense-temporary-advances).

Should a laptop not be available to a new GitLab team-member upon their start date, it is permissable for a team member to temporarily use a personal macOS or Linux laptop.

If in the rare case that your laptop arrives damaged or unusable prior to your start date, please reach out to your Candidate Experience Specialist and CC [laptops@gitlab.com](mailto:laptops@gitlab.com) for next steps on an immediate replacement or repair.

If you are unable to complete any of the steps above, you may request a Laptop Exception using this [template](https://gitlab.com/gitlab-com/gl-security/security-assurance/security-risk-team/third-party-vendor-security-management/-/blob/master/.gitlab/issue_templates/Laptop%20Exception%20Request). These requests require approval from leadership across multiple departments and are discouraged due to the possibility of data leakage.

### Laptop Configurations

GitLab approves and supports the use of Linux and Apple's macOS as the OS for employee laptops. To keep GitLab IT Support efficient, Windows is not supported as a hardware laptop OS.

Further information on GitLab authorized operating systems, versions, and exception process is available on the [Approved Operating Systems for GitLab Team Member Endpoint Systems](https://internal.gitlab.com/handbook/it/it-self-service/operating-systems/) page.

The operating system choices have obviously affected the hardware selection process.

Apple hardware is the common choice among GitLab team members. Team members may also select a Dell Linux laptop if they are familiar with Linux and capable of self-support, as long as they are using an approved operating system.

NOTE: GitLab's IT Ops team uses a corporate discount for our corporate-purchased Apple products only. Apple does **not** have an employee discount program for GitLab at this time.

#### Apple Hardware

- MacBook Pro 14" -  M3 / 16GB Unified memory / 512GB storage  **Standard model**
- MacBook Pro 16" - M3 Max / 36GB Unified memory / 512GB or 1TB storage (depending on vendor) **Performance model**
- MacBook Pro 14" - M3 Max / 36GB Unified memory / 512GB or 1TB storage (depending on vendor) **Performance model**


Most roles that require higher performance machines are approved for a 14" or 16" MacBook Pro M3 Max. Please see this [spreadsheet](https://docs.google.com/spreadsheets/d/1OuC0_iliCzASKfOhDLWO4fBmDS-uL3VGRMI6063R6tk/edit?usp=sharing) (public) to locate your department group and determine which machine you are eligible for.

#### Linux Hardware

{{% alert color="warning" %}}
IT strongly encourages team members to select Macs; please only request a Linux laptop if you are experienced in Linux and capable of self-support.
{{% /alert %}}

**Below are roles that qualify for Linux Laptops**
- Engineers, Support Engineers, Data Analysts, Technical Marketing Managers, Product Designers, UX Managers, Product Managers, Technical Writers, and Digital Production are eligible for Dell Precision Mobile Workstation laptops from the 5570 line. Due to supply constraints, specific models available from these lines my vary. IT will work with each person to find an available model meeting the following specifications: [15.6” display / 512 GB SSD / 32 GB of RAM / Intel i9 or i7 CPU](https://www.dell.com/en-us/shop/laptops/new-15-5560-workstation/spd/precision-15-5570-laptop).


\*\*NOTE: The maximum price of Linux laptops is not to exceed **the price of the equivalent [16” MacBook pro laptop](#apple-hardware)**. Please make sure you order this model a minimum of 14 days, based on your locality, prior to your desired date to receive.

Our **only approved Linux laptop vendor at this time is Dell**. These laptops generally come pre-loaded with Ubuntu Linux in order to save money on unused Windows licenses. Dell do not currently sell laptops pre-installed with Linux in Australia and New Zealand; staff will need to install Linux themselves.

Dell is GitLab's exclusive Linux vendor for the following reasons:

- Dell has the longest history of shipping laptops with Linux pre-installed among major manufacturers.
- Dell is able to ship laptops to all countries in which GitLab employees live.
- As we move forward with Zero Trust networking solutions, we need to have a stable and unified platform for deployment of software components in the GitLab environment.
    Standardization on a single platform for Linux simplifies this.
- The current Ubuntu LTS is the preferred Linux platform; Ubuntu LTS has a record of stability and quick patching.
- Purchasing laptops from a single vendor opens the possibility of corporate discounts.
- [Dell is a certified Ubuntu vendor](https://certification.ubuntu.com/desktop/models?query=&category=Desktop&category=Laptop&level=&release=18.04+LTS&vendors=Dell) with multiple laptop choices available. They even have their own Ubuntu OEM release of Ubuntu they maintain, and as a result of their effort, the standard Ubuntu Linux 20.04 LTS image natively supports Dell hardware and even firmware updates.
- To date, all of Dell's major security issues have not been related to their hardware.

Laptops are purchased by IT Ops during a team member's onboarding process; the team-member will be sent a form to fill out for ordering.

#### Windows for Customer Support and Product Development

While GitLab limits the Laptop Hardware OSes supported for team member daily work, specific roles will need to use Windows for Customer Support and Product Development to ensure excellent platform and ecosystem support for GitLab customers and partners who develop for the Microsoft Ecosystem.

Microsoft Windows Professional (Desktop OS) and Windows Server may need to be used by some technical roles for supporting GitLab customer usage of Windows and developing GitLab software. These editions can be used for support and development purposes using virtualization or cloud instances and are self-supported and must be in compliance with [all endpoint policies](https://internal.gitlab.com/handbook/it/it-self-service/operating-systems/), [including installation of SentinelOne](/handbook/business-technology/end-user-services/onboarding-access-requests/endpoint-management/edr/) as well all information in this section.

Complete details about Windows usage is available on the [Approved Operating Systems for GitLab Team Member Endpoint Systems](https://internal.gitlab.com/handbook/it/it-self-service/operating-systems/) page.

### Laptop Vendor Selection Criteria

When recommending or approving end user device vendors for team member access, the Security Team tries to balance privacy, security, and compliance to ensure a solid choice for accessing GitLab data.
Our current recommendations include Apple MacBook Pro running macOS and Dell Precision running Linux.

By its very nature, GitLab has historically been very open as a company, starting as open source and migrating from a group of coders with their own laptops to an organization that needs to protect not just their own corporate data but customer data as well.
Having developed a Data Classification Policy and currently implementing Zero Trust, we've had to make adjustments in laptop recommendations.

Our laptop vendor selection criteria is as follows:

#### Team member need

The main needs center around processing power and the operating system support for required workloads.
Most modern systems meet the processing power needs of our team members.
Apple macOS and Dell Linux distributions meet the operating system needs.

#### Security needs

GitLab needs the ability to ensure a secure and stable platform. From an operating system perspective, macOS and Linux meet the needs. The Security team has found a slight advantage in Ubuntu as a Linux distribution due to their rapid response time when it comes to patching security flaws, and we recommend this distribution. It is necessary to use an [approved Linux distribution](https://internal.gitlab.com/handbook/it/it-self-service/operating-systems/).


#### Compliance needs

To meet compliance needs for the various certifications, programs, and industry regulations, we have to meet criteria including the ability to restrict access to sensitive data to company-issued laptops running company-monitored software.
In many cases we need to be able to prove this via auditing, including outside auditors.
Using one vendor for macOS (Apple by default) and one for Linux (Dell by default).
A part of this process will include ensuring systems are patched, and in the Linux case we want to ensure firmware patches are applied.
Very few hardware vendors not only supply Linux as an operating system but also provide a way to apply patches - including security patches - to firmware via the normal Linux patch process.

There is no specific example for using one brand over another from a compliance perspective.
That being said, there are customers we wish to sell GitLab products that have specific requirements internally, and to align ourselves with those requirements can be not only a positive sign we understand the customer space, but give us a competitive advantage.
For example, since there is a [strong push](https://internal.gitlab.com/handbook/engineering/infrastructure/platforms/gitlab-dedicated/us-public-sector-services/) to sell to agencies within the US Government, we will already face restrictions such as support from only US-citizen GitLab team members while on US soil.
As these agencies also have access to classified (non-public) reports on such things as computer vendors, one only has to note which laptops are approved for purchase.
For that reason, we will restrict our vendor list to vendors that are currently approved by the various organizations issuing those certifications and programs we are trying to be compliant with.
This simplifies the ability to support those customers which may impose restrictions on team members working in support roles for that customer solely based upon the hardware they are using.
In other words, we eliminate this possibility of becoming a situation to be managed.

#### Logistics needs

To be able to use a laptop vendor, we have to be able to purchase and ship hardware to our team members regardless of where they live.
Therefore the vendor should be able to handle most if not all shipping requirements to all team members. Our current hardware provider for the US is CDW. GitLab laptops that are procured from CDW will come with GitLab branded asset labels by default. Please refer to this issue for more information on GitLab asset labels. [GitLab Branded Laptop Labels](https://gitlab.com/gitlab-com/it/end-user-services/issues/laptop-issue-tracker/-/issues/914)


### Configuring New Laptops & Apple IDs

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

For laptops shipped with OEM Windows you may want to make a full drive backup (e.g. by using open source utility [Clonezilla](https://clonezilla.org/)) to the external drive before installing Linux.
That way you could restore your laptop to the original state at any time.
It will make the RMA process much easier in case you need it.


### Laptop Buy back Policy

If the team member has not completed 1 calendar year at the time of offboarding or has received a laptop refresh within the past year, they have the option to purchase their laptop for current market value from GitLab. If the laptop has been used by the team member for more than one year, they can opt to keep their laptop at no cost, subject to promptly working with the Company during the offboarding process to enable the laptop to be wiped and, when required by applicable legal obligations, imaged for preservation purposes.

If the team member would like to purchase the laptop at the current market value, they will need to send an email to laptops@gitlab.com to start the process. If purchasing, our Manager of IT, or Lead IT Analyst will approve, and we will send the employee an email with the determined value. If the employee decides to move forward with purchasing, our accounting department will reach out with payment information.

Retained laptops must be [wiped](#laptop-wipe).

If the departing team member opts not to retain or [donate](#laptop-donations) their laptop, they can return them to GitLab. See the [returning old/offboarded laptops](#laptop-recyclereturn) section for details.

**If the team member is under an active Legal Hold or possesses material related to an active Company investigation, they must comply with the notice requirements. Failure to comply with an active Legal Hold may expose the team member or the Company to adverse consequences, including civil or criminal penalties and sanctions. Their obligation to follow the procedures outlined in the notice continues until the hold is lifted, even if they depart the Company. If the team member departs the Company, all Company devices and any material they're holding in accordance with any active Legal Hold Notice or active Company investigation should be turned over upon their departure.**

### Laptop Recycle/Return

We use [SIPI Asset Recovery](https://www.sipicorp.com/itad/) for devices that need to be recycled/returned.  At GitLab IT's discretion, laptops may also be sent to an IT Team member for repurposing. Either way, GitLab IT will provide a shipping label and box upon request at no cost to yourself.

If the IT department has record of a current litigation hold for the offboarded employee, IT will consult with Legal before proceeding.

All team member laptops must be securely [wiped](#laptop-wipe) before being returned. This not only protects the company, but also protects you since it is possible for personal information to exist on these machines.
Reformatting a computer is not sufficient in these cases because it is possible for sensitive data to be recovered after reinstalling an operating system.

### Laptop Wipe

Laptop wipes must be performed via [scheduling an appointment](/handbook/business-technology/end-user-services/#laptop-wipe-schedules-for-it-analysts) with an IT analyst to wipe the machine and re-install the base operating system, and remove any and all software and configurations that were supplied by GitLab. Laptops must be wiped with [Jamf](https://internal.gitlab.com/handbook/it/endpoint-tools/jamf/) for macOS, and [DriveStrike](https://internal.gitlab.com/handbook/it/endpoint-tools/#drivestrike) for Linux. Using these tools ensures a clean disk wipe is performed and GitLab can retain evidence of the disk wipe.

Under no circumstance should you perform your own disk wipe unless you are doing so at the request of IT to troubleshoot a technical problem with the laptop. If GitLab discovers that a device has not been wiped according to policy, GitLab may act to enforce a remote wipe without notice.

### Laptop Donations

Donating hardware/laptops will help people in disadvantaged areas and/or from underrepresented groups with their ability to learn about technology. Therefore GitLab offers the possibility to donate hardware devices to [vendors on a curated list](https://docs.google.com/spreadsheets/d/15g4v5coC_yLlVNTKUZMwATllZhxzqbxrtvwJsi8bjXE/edit#gid=0) after 3 years of use. This curated list has been a result of the [Upstream Diversity Working Group](/handbook/company/working-groups/upstream-diversity/).

The vendors on the list have been meeting the following criteria:

1. Their focus group should be people in disadvantaged areas and/or underrepresented groups
1. They should be non-profit
1. Their values have to align with GitLab's CREDIT values
1. They should pass a "negative-press" check (first 2 pages of Google)

If you, as a GitLab team member, would like to add a vendor aligned with the criteria, please comment in the [Vendor sheet](https://docs.google.com/spreadsheets/d/15g4v5coC_yLlVNTKUZMwATllZhxzqbxrtvwJsi8bjXE/edit#gid=0).

#### Steps for donating your hardware

1. Create an issue for [laptop refresh](#laptop-refresh)
1. Indicate in the issue you want to donate your used laptop to a vendor on the curated list.
1. Indicate in the issue which option of logistics will be used: Local Drop off or Sending via courier.
1. For security reasons we want to make sure all laptops are fully [wiped](#laptop-wipe) before drop off or sending.
1. When you receive your new laptop, complete the donation.


## GitLab Asset Management

### Snipe-IT

The End User Services Team has been busy iterating and setting up [Snipe-IT open source asset management](https://snipeitapp.com/). As of April 2021, GitLab has an asset-tracking application that is the source of truth for all GitLab hardware! 

How does it work exactly?

I'm glad you asked! We installed and configured the application in a GCP virtual machine, we set up an integration with Jamf and our Okta LDAP directory to automatically sync users and laptop information from Jamf. Linux machines will be imported manually through the apps web interface.
If you would like a more detailed view of what has been completed and what will come in the future, please check out the [master issue](https://gitlab.com/gitlab-com/business-technology/change-management/-/issues/296) for Snipe-IT.

## Other Resources

### Okta

In an effort to secure access to systems, GitLab is utilizing Okta.
The key goals are:

- We can use Okta to enable Zero-Trust based authentication controls upon our assets, so that we can allow authorized connections to key assets with a greater degree of certainty.
- We can better manage the login process to the 80+ and growing cloud applications that we use within our tech stack.
- We can better manage the Provisioning and De-provisioning process for our users to access these application, by use of automation and integration into our HRIS system.
- We can make Trust and Risk based decisions on authentication requirements to key assets, and adapt these to ensure a consistent user experience.

To read more about Okta, please visit the [Okta](/handbook/business-technology/okta/) page of the handbook.

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


### Google Workspace Deprovisioning

IT Ops has an automated workflow that triggers upon a notification from PeopleOps of a team-member offboarding. This automated workflow is composed of 2 parts that are outlined below. The first part happens within 1 hour of the offboarding. The second part occurs after 90 days of the offboarding. This workflow will send out notifications throughout this 90 day period to let the Former Team member's manager know that the final deadline is approaching.

#### These are the steps that follow immediately upon termination of a team-member

- The former team-member (FTM) is removed from all Google groups
- The former team-member (FTM) is locked from access to their laptop
- The former team-member (FTM) is removed from access to all GitLab provisioned services linked to their Okta account
- The former team-member (FTM) is removed from access to all GitLab provisioned services not linked to their Okta account
- Unless there is a legal hold on their laptop, the laptop is securely wiped
- The FTM’s manager is setup as a delegate to their Gmail and Google Calendar
- The FTM’s manager gains editor privileges to all “My Drive” Google Drive Files
- The FTM’s account is moved to the Former Team Members OU
- Remove the FTM account from the Global Address List
- All of the account’s sign in cookies/sessions are cleared and the account password is reset to a random 64 character password
- The account’s recovery email is set to null
- The account’s recovery phone number is set to null
- The FTM’s auto-response email message is setup.

#### These are the steps that follow after the Former Team Member has been gone for 90 days

- All of the former team-member (FTM) aliases are removed
- Archive of all Google Drive files in the users My Drive that are marked as owner
- These are saved in the Offboarded Users Drive Archive
- Each user has their own folder in the following format
- <emailUsername>_google_drive
- The FTM’s account is suspended
- The FTM’s account will be moved to NoGSuiteLicense OU
- The Google Workspace License is removed from the account

#### The following notifications will be sent out to the FTM’s manager and IT over Slack.

**Immediate Slack notification:**

> Hello `<Manager Firstname>``<Manager Lastname>`, you are receiving this notification to let you know that one of your direct reports `<Firstname>``<LastName>` has been deprovisioned from GitLab’s Google Workspace. In keeping with our standard offboarding policy you will receive a copy of this user’s Google Drive data as well as delegated access to their email and calendar account. This delegate access will remain available to you for 90 days after which the account will be closed, and all data will be archived. Please be sure to copy anything you wish to keep to your own account before this time. For more information about how to access this data please see information in this Handbook page (provide link).
>
> You will receive another notification 30 days before and then a final notification at 1 week before this account is closed. If you have any questions about this process, or need assistance with access the data, please feel free to reach out to the Corp IT team in the #it_help Slack channel.

**30 Days Slack notification**

> Hello `<Manager Firstname>``<Manager Lastname>`, you are receiving this notification to let you know that one of your direct reports `<Firstname>``<LastName>` was deprovisioned from GitLab’s Google Workspace 60 days ago. In keeping with our standard offboarding policy you will continue to have delegated access to their email and calendar account for another 30 days after which the account will be closed, and all data will be archived. Please be sure to copy anything you wish to keep to your own account before this time. For more information about how to access this data please see information in this Handbook page (provide link).
>
> You will receive another notification at 1 week before this account is closed. If you have any questions about this process, or need assistance with access the data, please feel free to reach out to the Corp IT team in the #it_help Slack channel.

**7 Days Slack notification**

> Hello `<Manager Firstname>``<Manager Lastname>`, you are receiving this notification to let you know that one of your direct reports `<Firstname>``<LastName>` was deprovisioned from GitLab’s Google Workspace 83 days ago. In keeping with our standard offboarding policy you will continue to have delegated access to their email and calendar account for another 7 days after which the account will be closed, and all data will be archived. Please be sure to copy anything you wish to keep to your own account before this time. For more information about how to access this data please see information in this Handbook page (provide link).
>
> This is the final notification. If you have any questions about this process, or need assistance with access the data, please feel free to reach out to the Corp IT team in the #it_help Slack channel.

**Final Slack notification**

> The GitLab Google Workspace account for `<Firstname>``<LastName>` has been archived after 90 days as per our standard offboarding policy.

## Exceptions

Exceptions to this procedure will be tracked as per the [Information Security Policy Exception Management Process](/handbook/security/#information-security-policy-exception-management-process).

## References

- Parent Policy: [Information Security Policy](/handbook/security/)
