---
title: "Security Risk Team"
---

## <i class="fas fa-bullseye" style="color:rgb(110,73,203)" aria-hidden="true"></i> Security Risk Mission{#security-risk-mission}

To drive security risk treatment at GitLab by empowering teams to make informed and intelligent [decisions](/handbook/leadership/making-decisions/#making-decisions) through proactive identification, monitoring, prioritization, and reporting of security risks.

## <i class="far fa-lightbulb" style="color:rgb(110,73,203)" aria-hidden="true"></i> Core Competencies{#core-competencies}

----

### <i class="fas fa-shield-alt" style="color:rgb(253,109,38)" aria-hidden="true"></i> Security Operational Risk Management (StORM) Program{#storm}

The Security Risk team manages an integrated Operational Risk Management program focused on the identification, assessment, continuous monitoring, and reporting of Security Risks across the organization. Risk Reduction is 1 of 5 of the Security Department's operating principles ([Security Vision and Mission](/handbook/security/#i-classfas-fa-rocket-idbiz-tech-iconsi-security-vision-and-mission)). As such, the Security Risk Team takes a leading role in providing the information required by leadership to establish our Strategic Roadmap and our quarterly [Objectives and Key Results (OKRs)](/handbook/company/okrs/).

 Visit the [StORM Program & Procedures]({{< ref "storm-program" >}}) handbook page for additional details, including a quick introduction to Risk Management at GitLab as well as information about the purpose, scope, and specific procedures executed as part of the program.


{{% panel header="**Need to communicate a potential risk to the team?**" header-bg="warning" %}}
Please refer to the [communication section of the StORM Program & Procedures]({{< ref "storm-program#communication-of-risks-to-the-security-risk-team" >}}) page for information on the various ways that team members can use to escalate potential risks to the Security Risk Team.
{{% /panel %}}

### <i class="fas fa-hands-helping" style="color:rgb(253,109,38)" aria-hidden="true"></i> Security Third Party Risk Management (TPRM) Program{#tprm}

GitLab maintains an industry-leading Third Party Risk Management (TPRM) Program through the use of automation, continuous monitoring, and deep integration across business functions to validate the security of GitLab data shared with external parties.

The integration of GitLab's TPRM program within the vendor Procurement flow enables cross-functional [collaboration](/handbook/values/#collaboration) between Privacy, Legal, IT, and People Operations to facilitate [transparent](/handbook/values/#transparency), risk-based decision making, Business and Stakeholder-focused [Results](/handbook/values/#results), and adherence to GitLab's Regulatory and [Compliance Obligations](/handbook/security/security-assurance/security-compliance/certifications.html). The vendor relationships maintained through this program are leveraged to create efficiencies across the organization.

### <i class="fas fa-exclamation-triangle" style="color:rgb(253,109,38)" aria-hidden="true"></i> Business Impact Analysis (BIA) and Critical System Tiering (CST){#bia}

The [Business Impact Analysis]({{< ref "business-impact-analysis" >}}) (BIA) helps determine the systems critical to serving GitLab's Customers.

The output of the BIA is the designation of a [Critical System Tier](/handbook/security/security-assurance/security-risk/storm-program/critical-systems/) (CST) for a new system by the Security Risk Team.

### <i class="fas fa-warehouse" style="color:rgb(253,109,38)" aria-hidden="true"></i> Asset Inventory Maintenance{#asset-inventory}

Establishing a complete and accurate inventory of assets is key to the success of GitLab's Risk Program. As such, the Security Risk Team collaborates closely with IT and Business Owners to ensure new systems are added to the [Tech Stack](/handbook/business-technology/tech-stack-applications/#roles-and-responsibilities).

----

## <i class="fas fa-users" style="color:rgb(110,73,203)" aria-hidden="true"></i> Team Members{#team-members}

|Team Member|Role|
|:----------:|:----------:|
|[Ty Dilbeck](https://gitlab.com/tdilbeck)|[Manager, Security Risk](handbook/job-families/security/security-risk/#manager-security-risk)|
|[Eric Geving](https://gitlab.com/ericgeving)|[Senior Security Risk Engineer](handbook/job-families/security/security-risk/#senior-security-risk-engineer)|
|[Kyle Smith](https://gitlab.com/kylesmith2)|[Senior Security Risk Engineer](handbook/job-families/security/security-risk/#senior-security-risk-engineer)|
|[Ryan Lawson](https://gitlab.com/rlawson1)|[Senior Security Risk Engineer](handbook/job-families/security/security-risk/#senior-security-risk-engineer)|
|[Nirmal Devarajan](https://gitlab.com/ndevarajan)|[Security Assurance Engineer](handbook/job-families/security/security-risk/#security-risk-engineer-intermediate)|

## <i class="fa-solid fa-d" style="color:rgb(110,73,203)" aria-hidden="true"></i> Functional DRIs{#dris}

While the [DRI](/handbook/people-group/directly-responsible-individuals/#characteristics-of-a-project-dri) is the individual who is ultimately held accountable for the success or failure of any given project, they are not necessarily the individual that does the tactical project work. The DRI should consult and collaborate with all teams and stakeholders involved to ensure they have all relevant context, to gather input/feedback from others, and to divide action items and tasks amongst those involved.

DRIs are responsible for ensuring a [handbook-first approach](/handbook/company/culture/all-remote/handbook-first/) to their project(s) and challenging existing processes for [efficiency]({{< ref "values#efficiency" >}}).

|Function     |DRI|
|:----------:|:----------:|
|[Annual Risk Assessment]({{< ref "storm-program#storm-procedures" >}})     |Kyle Smith|
|[Business Impact Analysis]({{< ref "business-impact-analysis" >}})     |Nirmal Devarajan|
|[New System Additions to Tech Stack and Post-Implementation Checks]({{< ref "tech-stack-applications" >}})     |Nirmal Devarajan|
|[Critical System Tiering]({{< ref "critical-systems#determining-critical-system-tiers" >}})     |Kyle Smith|
|[Ongoing SecRisk-Related Observations Management]({{< ref "observation-management-procedure#introduction-to-observation-management-at-gitlab" >}})     |Nirmal Devarajan|
|[Ongoing Risk Treatment](storm-program#storm-procedures)     |Kyle Smith|
|[Ongoing TPRM Assessments]({{< ref "third-party-risk-management" >}})     |Ryan Lawson|
|[Periodic SOX CUEC Facilitation]({{< ref "sox_cuec_mapping_procedure" >}})     |Eric Geving|
|[Periodic TPRM Assessments]({{< ref "third-party-risk-management" >}})     |Eric Geving|
|TPRM Data Quality and Emerging Requirements Management | Eric Geving |
|[StORM Metrics and Reporting](storm-program#step-5-annual-storm-reports)     |Kyle Smith|
|TPRM Metrics and Reporting     |Ryan Lawson|
|TPRM Application Integrations  |Ryan Lawson|

## <i class="fas fa-id-card" style="color:rgb(110,73,203)" aria-hidden="true"></i> Contact the Team{#contact}

- <i class="fas fa-envelope fa-fw" style="color:rgb(219,59,33)" aria-hidden="true"></i> Email: `securityrisk@gitlab.com`
- <i class="fab fa-slack fa-fw" style="color:rgb(219,59,33)" aria-hidden="true"></i> Slack:
   - [#security-risk-management channel](https://gitlab.slack.com/archives/C01EKDNRVFD)
   - [#sec-assurance channel](https://gitlab.slack.com/archives/C0129P7DW75) (includes the broader Security Assurance Team)
   - Mention `@security-risk`
- <i class="fab fa-gitlab fa-fw" style="color:rgb(219,59,33)" aria-hidden="true"></i> GitLab: Tag the team across GitLab using `@gitlab-com/gl-security/security-assurance/security-risk-team`

<a href="{{< ref "security-assurance" >}}" class="btn bg-primary text-white btn-lg">Return to the Security Assurance Homepage</a>
