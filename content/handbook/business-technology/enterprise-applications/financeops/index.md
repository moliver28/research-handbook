---

title: "Finance Systems"
description: "Finance Systems Operations"
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## <i class="fas fa-book" id="biz-tech-icons"></i> Finance Systems Charter

The **Finance Systems Administrator Team** implements and supports specialized applications for the finance team within GitLab.

## <i class="fas fa-users" id="biz-tech-icons"></i> Meet the team

- [Jessica Salcido](/handbook/company/team/#jesssalcido) - Manager, Finance Systems (Q2C Expert)
- [Wendy Lam](/handbook/company/team/#wlam) - Senior Finance Systems Administrator (P2P and Record to Report Expert)
- [Brian Wong](/handbook/company/team/#brianmwong) - Finance Systems Administrator, *Certified Zuora Administrator*

## <i class="fas fa-tasks" id="biz-tech-icons"></i> How We Work within Enterprise Applications

- **All work in which requirements need vetting will need to follow the [Enterprise Applications intake process](/handbook/business-technology/enterprise-applications/#intake-request).**
- Once requirements are cleansed, the Business Systems Analyst team will create issues for system configuration work to be performed by the Finance Systems team.

### Service Desk / Services We Support

- [Service Desk Board](https://gitlab.com/groups/gitlab-com/-/boards/2802782?scope=all&label_name[]=FinSys%3A%3AService%20Desk) Labels: `~FinSys::Service Desk`
- Our Service Desk takes care of:
    - User Access to the Finance Systems we manage through Access Requests and Offboarding issues.
    - All services outlined [here](/handbook/business-technology/enterprise-applications/#--services-we-support-finance-systems-service-desk): SKU Requests, SKU Retirement, Configuration Changes, Department Change Requests, EntApps System Incident Log, Coupa Sandbox Refresh, NetSuite Sandbox Refresh, Zuora Central Sandbox Refresh.
- Issues will be assigned a Priority:
    - `~BT-Priority::1`
    - `~BT-Priority::2`
    - `~BT-Priority::3`
- Issues will be assigned to a [Milestone by Enterprise Applications leadership team](/handbook/business-technology/enterprise-applications/#entapps-milestone-planning). Assignment to a milestone is based on the [issue weight](/handbook/business-technology/enterprise-applications/#issue-weights), priority, and team member capacity.
- Once issues are assigned to a Finance Systems Administrator and assigned to a Milestone, we track the status of the issue by assigning labels:
    - **Open:** Pending Priority and Admin assignment. Access Requests will progress to "In Progress" within 72 hours of assignment of the `~FinSys::Service Desk` label.
    - **`~BT::InProgress`:** Priority and Admin has been assigned and it’s actively being worked on.
    - **Closed or BT::Done External:** Request has been fulfilled entirely or next steps have been agreed to. Sometimes an issue cannot be closed by the FinSys team because there are tasks/requests for other teams (i.e. Access Requests), so in those cases we’ll mark it with BT::Done External which indicates all work for the FinSys team has been completed.
    - If an issue is still Open, and a milestone is pending closure, we may move to the next Milestone during the Milestone Planning process.

### Finance Systems Change Management Procedures

Because the Finance Systems team works on in-scope business systems which are subject to compliance requirements, we adhere to the [Business Technology Change Management policy](/handbook/business-technology/change-management/#business-technology-change-management).

This means that [configuration changes](/handbook/business-technology/enterprise-applications/#entapps-system-configuration-change) made within the systems we own may require approvals, testing in pre-production environments, Peer Review, and/or Post-Implementation Review.

## <i class="far fa-paper-plane" id="biz-tech-icons"></i> Systems We Own

| System            | Function                         |
|-------------------|----------------------------------|
| Adaptive Insights | Financial Planning and Budgeting |
| Avalara           | Tax Engine                       |
| Coupa             | Procurement and AP               |
| DocuSign          | Signatures                       |
| NetSuite          | ERP                              |
| Stripe            | Payment Processor                |
| Tipalti           | AP                               |
| Navan             | Travel Booking                   |
| Navan Expense     | Expense Management               |
| Workiva           | Reporting                        |
| Zuora Billing     | Billing                          |
| Zuora Revenue     | Revenue Recognition              |
