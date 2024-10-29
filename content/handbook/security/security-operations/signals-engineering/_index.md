---
title: Signals Engineering Team (SIT)
---

## Engaging Signals Engineering

Teams can engage Signals Engineering by heading over to the #signals-engineering slack channel. SIRT can also engage signals engineering for detection and alert tuning needs by selecting the "report a bug" feature in GUARD. 

## Our Vision

Improve the effectiveness and overall coverage of GitLab's detection engineering program internally and for customers, identifying opportunities to reduce the mean time to detection creation for incidents, and partnering with the product team to drive security observability improvements in the GitLab product, corporate, cloud and identity infrastructure.

## Our Mission Statement

Improve Detection Engineering
- Improving coverage & effectiveness of detections

Reducing Time to Detection Creation
- Improving depth and quality of incident detections
- Reducing how long it takes to create quality detections

Improving Security Observability
- Partnering with product to improve GitLab security signals
- Improving security signals in corporate, cloud, identity infrastructure

Providing Customer Value
- Improving customer facing detection capabilities and offerings
- Identifying & partnering stakeholders to implement customer observability needs

## The Team & Priorities

### Team Members

| Team Member | Role |
|---|---|
| Matt Coons | [Security Manager](https://handbook.gitlab.com/job-families/security/security-leadership/) | 
| Harjeet Sharma | [Staff Security Engineer, Signals Engineering](https://handbook.gitlab.com/job-families/security/security-engineer/#signals-engineering) | 
| Evan Baltman | [Security Engineer, Signals Engineering](https://handbook.gitlab.com/job-families/security/security-engineer/#signals-engineering) | 

### Our Stakeholders

While Signals Engineering has dedicated engineers focussed on advancing projects and handling operational duties, there are a number of stakeholders both within the Security Division and beyond that Signals Engineering collaborate with to drive results. 

| Stakeholder | Shared Responsiblities/Dependencies | 
|---|---|
| SIRT | Detection tuning, new detections, GUARD DaC framework |
| T&S | Omamori integration |
| Security Logging | Security logging capabilities & collaboration |
| Threat Intel | Threat driven detections, Top threat actor detections |
| GitLab Customers | Consumer of customer facing detections |
| Product team | Collaboration to improve security signal capabilities |
| GitLab product team | Collaboration to improve security signal capabilities |

### Current Priorities

In the first 6 months (FY25Q4 - FY26Q1), we are focusing on on "Low hanging fruit" and establishing the Signals Engineering program. 

Some highlights include: 

1. Reducing alert false positives & improving FP alerting/handling workflow
2. Initial metrics creation & label standarization
3. Improving customer facing detection creation & sharing process
4. Writing new detections to close identified detection gaps

As the program matures, we will expand our focus to improve our automation and maturity as well as bolstering our customer detection capabilities. 

## What we've Built & Services we Offer

### GUARD

GUARD (GitLab Universal Automated Response and Detection) is the Security Team's Detections as Code (DaC) pipeline and alerting automation framework. GUARD hands off an alert to the SIRT incident handling process stops when an alert is converted into a SIRT incident. 

GUARD is a shared responsibility model between Signals Engineering and SIRT - Both SIRT and Signals Engineering build threat detections and have the ability to commit new and maintain existing detections in GUARD. 

#### Threat Detection Tuning

When SIRT identifies a threat detection that needs to be tuned, tuning requests are submitted to the Signals Engineering team for improvements. 

#### Threat Detection Creation

The Signals Engineering team tracks detection coverage and builds new threat detections based on several needs: 

### Threat Actor Tracking

Threat Actor Tracking is an ongoing effort where we closely monitor the threat actors that pose the greatest risk to GitLab. By continuously monitoring their activities, tactics, and techniques, we develop a better understanding of their motivations and capabilities.

This intelligence helps us anticipate their next moves and proactively strengthen our defenses. It also helps us attribute early indicators to these groups, giving us a heads-up when they are actively targeting us.

Threat Actor Tracking is done inside our Threat Intelligence Platform (TIP).

### Requests For Information (RFI)

RFIs allow GitLab team members to request our help in analyzing threats and making intelligence-informed decisions. Team Members can [open an issue in our tracker using the RFI template](https://gitlab.com/gitlab-com/gl-security/security-operations/threat-intelligence/threat-intelligence-issue-tracker/-/issues/new).

Some examples where an RFI can provide value:

- Investigating active security incidents
- Decisions on product security features and functionality
- Third-party vendor and product evaluations

Supporting S1 incidents will always take priority over all other work.

Requests for Information use [this template](https://gitlab.com/gitlab-com/gl-security/security-operations/threat-intelligence-public/resources/threat-intelligence-templates/-/blob/main/.gitlab/issue_templates/rfi.md?ref_type=heads).

## <i class="fas fa-chart-simple" id="biz-tech-icons"></i> How We Measure Success

We measure the success of our threat intelligence program using three key metrics: Impact, Adoption Rate, and Attribution. We track these metrics using GitLab.com issues and custom labels.

1. Impact: Measures how often our intelligence helps prevent incidents, detect attacks, and improve response times, and drive significant product improvements that keep our customers secure.
1. Adoption Rate: Measures the extent to which our intelligence-driven recommendations are accepted and implemented.
1. Attribution: Measures the accuracy, relevance, and source of our intelligence by tracking how often it is validated by real-life events.

Monitoring these metrics helps us continually refine our services, prioritize high-impact activities, and demonstrate the value of our program.

### Metric Labels

**Recommendation Classification Labels:**

- Detections & Alerts (`TIRec::Detection`)
- Security Controls (`TIRec::Control`)
- Processes and Procedures (`TIRec::Process`)
- Threat Hunting (`TIRec::Hunting`)
- Communications (`TIRec::Comms`)
- Training (`TIRec::Training`)

**Recommendation Outcome Labels:**

- Under review (`RecOutcome::UnderReview`)
- Accepted and actively being worked on (`RecOutcome::InProgress`)
- Accepted but backlogged (`RecOutcome::Backlogged`)
- Accepted but blocked (`RecOutcome::Blocked`)
- Fully adopted and closed (`RecOutcome::Adopted`)
- Partially adopted and closed (`RecOutcome::PartiallyAdopted`)
- Not adopted and closed (`RecOutcome::NotAdopted`)

**Attribution Labels (source of validated intelligence):**

- Threat Insights (`TIAttribution::ThreatInsights`)
- Flash Reports (`TIAttribution::FlashReport`)
- Threat Actor Tracking (`TIAttribution:ThreatActorTracking`)
- Request for Information (`TIAttribution::RFI`)

**Impact Labels:**

- Intelligence prevented an incident (`TIImpact::Prevention`)
- Intelligence allowed us to identify an attempted attack (`TIImpact::Detection`)
- Intelligence allowed us to respond to an incident (`TIImpact::Response`)

## <i class="fas fa-link" id="biz-tech-icons"></i> Additional Resources

- [Threat Intelligence Templates](https://gitlab.com/gitlab-com/gl-security/security-operations/threat-intelligence-public/resources/threat-intelligence-templates): Public template repository for reports, RFIs, etc.
