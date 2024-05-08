---
title: Threat Intelligence Team
---

## <i class="fas fa-rocket" id="biz-tech-icons"></i> Our Vision

Empower GitLab to make informed, intelligence-driven decisions that keep our company and customers secure, while setting a new standard for transparency and collaboration across the industry.

## <i class="fas fa-compass" id="biz-tech-icons"></i> Our Mission Statement

Our mission is to provide actionable intelligence that empowers our organization to stay ahead of emerging threats.

When a new threat makes headlines, we're already prepared with answers. We assess our risk, evaluate our ability to detect and prevent an attack, and provide recommendations for a rapid response.

We achieve this by continuously monitoring the threat landscape, analyzing risks, and delivering clear, concise reports that recommend immediate actions. Our deep understanding of our product's architecture and our organization's infrastructure allows us to identify the most relevant threats and provide targeted recommendations.

By building and maintaining relationships with industry peers, we gain access to timely, unique insights that are not otherwise available. These human connections and the trust they foster are essential to our success in staying ahead of threats.

Together, we protect GitLab and our customers by staying one step ahead of the rapidly evolving threat landscape.


## <i class="fas fa-users" id="biz-tech-icons"></i> The Team

The team is currently made up of cross-function participants from other groups, including SIRT and Red Team.

## <i class="fas fa-stream" id="biz-tech-icons"></i> Services We Provide

### Threat Intelligence Reports

Reports are the foundation of our Threat Intelligence program and are always actionable. We use GitLab.com to write the reports, enabling collaboration and allowing direct linking to recommendations and results.

All reports, regardless of type, consistently:

- Include linked issues with clearly defined next steps to address each topic covered
- Answer the following questions for each threat addressed:
  - How is this relevant to GitLab?
  - How well is GitLab prepared to deal with this threat today?
  - What steps is GitLab taking to better handle this threat?

The specific reports types we offer are described below.

#### Flash Reports

Flash Reports are delivered on an ad-hoc basis in response to rapidly emerging threats. They focus on a single topic, generally a specific threat actor, campaign, or vulnerability.

These reports help GitLab make quick decisions to protect our customers and our organization.

Recommendations linked to Flash Reports are often time-sensitive and critical. They are leveraged for activities like:

- Rapid iterations to security controls and detection capabilities
- Threat hunting
- Security communications
- Purple Team Flash Operations

Flash Reports use [this template](https://gitlab.com/gitlab-com/gl-security/security-operations/threat-intelligence-public/resources/threat-intelligence-templates/-/blob/main/.gitlab/issue_templates/flash_report.md?ref_type=heads).

#### Threat Briefings

Threat Briefings offer regular, high-level updates on the evolving threat landscape. They highlight the most relevant trends, actors, and campaigns that could affect GitLab in the coming weeks or months.

These reports help team members stay informed, vigilant, and prepared.

Recommendations linked to Threat Briefings are not as time-sensitive as those from a Flash Report. They are leveraged for activities like:

- Product roadmap and prioritization
- Standard iterations to security controls and detection capabilities
- Training on security awareness and job-specific skills
- Purchasing decisions and vendor evaluations

Threat Briefings are produced monthly using [this template](https://gitlab.com/gitlab-com/gl-security/security-operations/threat-intelligence-public/resources/threat-intelligence-templates/-/blob/main/.gitlab/issue_templates/threat_briefing.md?ref_type=heads) and include a live presentation with a Q&A session.

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

Requests for Information use [this template](https://gitlab.com/gitlab-com/gl-security/security-operations/threat-intelligence-public/resources/threat-intelligence-templates/-/blob/main/.gitlab/issue_templates/rfi.md?ref_type=heads).

## <i class="fas fa-chart-simple" id="biz-tech-icons"></i> How We Measure Success

We measure the success of our threat intelligence program using three key metrics: Adoption Rate, Attribution, and Impact. We track these metrics using GitLab.com issues and custom labels.

1. Adoption Rate: Measures the extent to which our intelligence-driven recommendations are accepted and implemented.
2. Attribution: Measures the accuracy, relevance, and source of our intelligence by tracking how often it is validated by real-life events.
3. Impact: Measures how often our intelligence helps prevent incidents, detect attacks, and improve response times.

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

- Threat Briefings (`TIAttribution::ThreatBriefing`)
- Flash Reports (`TIAttribution::FlashReport`)
- Threat Actor Tracking (`TIAttribution:ThreatActorTracking`)
- Request for Information (`TIAttribution::RFI`)

**Impact Labels:**

- Intelligence prevented an incident (`TIImpact::Prevention`)
- Intelligence allowed us to identify an attempted attack (`TIImpact::Detection`)
- Intelligence allowed us to respond to an incident (`TIImpact::Response`)

## <i class="fas fa-bullseye" id="biz-tech-icons"></i> Engaging Threat Intelligence

Please follow our [RFI process](#requests-for-information-rfi) to contact the team.

For a less formal discussion, you can find us in Slack in the `#g_security_threat_intel` channel.

## <i class="fas fa-link" id="biz-tech-icons"></i> Additional Resources

- [Threat Intelligence Templates](https://gitlab.com/gitlab-com/gl-security/security-operations/threat-intelligence-public/resources/threat-intelligence-templates): Public template repository for reports, RFIs, etc.
