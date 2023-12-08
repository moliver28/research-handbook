---
aliases: /handbook/engineering/infrastructure/team/reliability/general.html

title: "Reliability:General Team"
---







## Mission

The General Team supports the Reliability Team's [overall vision](/handbook/engineering/infrastructure/team/reliability/#vision) by supporting services for GitLab.com that do not fit the mission of the other [Reliability Teams](/handbook/engineering/infrastructure/team/reliability/#reliability-teams). See the [dedicated General Team Page](/handbook/engineering/infrastructure/team/reliability/general.html) for more details.

## Vision

The General Team exists to ensure that all services at GitLab are properly supported by either providing that support directly or routing requests for new work to the appropriate [Reliability team](/handbook/engineering/infrastructure/team/reliability/#reliability-teams) while also being the primary operators and maintainers of the GitLab.com application.  In the short-term, the goal is shrink the overall pool of what we call "General" by assigning ownership of services to appropriate [Reliability team](/handbook/engineering/infrastructure/team/reliability/#reliability-teams) so that full attention can be paid to the processes, frameworks, architecture and automation required to properly support the GitLab.com application in the long term.

## Ownership and Responsibilities

### Services
The General Team is assigned issues based on the services they own.  This includes everything labeled `owner: reliability_general` in the [Service Catalog](https://gitlab.com/gitlab-com/runbooks/blob/master/services/service-catalog.yml). 

#### Overlap
It is not always easy or possible to definitively determine the primary services associated with an issue, incident, or other piece of work.  When there is a lack of clarity, General Team members should collaborate with other Reliability Teams to determine the best path forward.  If necessary reach out to any Reliability Engineering Manager for assistance.

#### DBRE Support
The [DBRE team](https://about.gitlab.com/handbook/engineering/infrastructure/team/reliability/database-reliability.html) occasionally requires SRE support which the General Team, by default, will provide.

## How We Work - Prioritization
### Issues and Epics
Issues are prioritized utilizing the [Issue Management and Prioritization Process for Reliability](https://about.gitlab.com/handbook/engineering/infrastructure/team/reliability/issues.html).  The issues themselves are managed on The [General Team Issue Board](https://gitlab.com/gitlab-com/gl-infra/reliability/-/boards/3993753?label_name%5B%5D=team%3A%3AGeneral).   This board is reviewed a minimum of once per week by the Engineering Manager for the General Team or by another member of the team if the Engineering Manager is not available.  

### OKRs
OKRs are established following the same process for [issue prioritization](https://about.gitlab.com/handbook/engineering/infrastructure/team/reliability/issues.html).  In addition to OKRs, a variable percentage of team capacity is reserved each quarter for unplanned work (as the General Team will, by default, own any work that does not currently have a pre-defined owner).

### Corrective Actions and Security Issues

`~Severity::1`/`~Severity::2` Corrective Actions and `~reliability::P1`/`~reliability::P2` Security issues are, by default, prioritized over all other types work.
``By default,`~Severity::1`/`~Severity::2` Corrective Actions and `~reliability::P1`/`~reliability::P2` Security issues are prioritized over all other issue types.

### Processes
#### Monthly Availability Updates

The General Team is responsible for ensuring the published Monthly Availability Updates are maintained.  This is currently a manual process.   Items to update include:

 1. [Historical Service Level Availability](/handbook/engineering/monitoring/#historical-service-level-availability) including [maintenance windows](https://status.gitlab.com/pages/history/5b36dc6502d06804c08349f7]) from the month in the comments
 2. [Executive Summary](/handbook/engineering/infrastructure-quality/performance-indicators/#executive-summary)
 3. [GitLab.com Availability](/handbook/engineering/infrastructure-quality/performance-indicators/#gitlabcom-availability) (Only last 3 months are required)

Each of these items should be updated to reflect the most recent month.  ([Sample MR](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/127806)).
 
Latest results are on the [GitLab.com General SLA Dashboard](https://dashboards.gitlab.net/d/general-slas/general-slas?orgId=1&from=now-1M%2FM&to=now-1M%2FM) (internal only)
 
**Note**: Updates must be merged by the 7th day of each month.  This is currently a scheduled event on the Reliability General Team's Calendar.  Contact any member of the team for more details on this process.
{: .alert .alert-info}

#### Monthly Review of Incident and Pager Trends
The General team coordinates the monthly process to identify incident and pager trends across the engineering organization.  This is an async process with the following objectives:

 * Identify actions to address issues identified in the Reliability Team Monthly Availability Reports.
 * Generate action items based on the review of key metrics for incidents and pages.
 * Generate and delegate action items to the relevant teams based on the review process.  This includes:
    * [Corrective Actions](https://about.gitlab.com/handbook/engineering/infrastructure/incident-management/#corrective-actions)
    * [Infradev Issues](https://about.gitlab.com/handbook/engineering/workflow/#infradev)
    * [Reliability Improvement Issues](https://gitlab.com/gitlab-com/gl-infra/reliability/-/issues/new)
    
These efforts are coordinated asynchronously via the [GitLab Incident and Pager Trends Monthly Review Agenda](https://docs.google.com/document/d/1SBoyuKK_g3RbYMcwJZs6dFqCGH9NCqu-M3QsHIwiKMw/edit#)

The process is scheduled on the General Team Calendar to kick off on the first Tuesday of each month.

The DRI kicking off the process and ensuring its progress is rotated among members of the General Team.

All our welcome to participate in the process of identifying trends.  EOCs, especially, are encouraged to participate.

##### Monthly Review of Incident and Pager Trends: How to guide for DRIs

1. Add a new section to the [agenda](https://docs.google.com/document/d/1SBoyuKK_g3RbYMcwJZs6dFqCGH9NCqu-M3QsHIwiKMw/edit#) for the current month.
1. Announce that the process is kicking off in #infrastructure-lounge and #reliability-lounge on Slack and solicit feedback.
1. Week 1: Review the agenda and respond to any questions or comments
1. Week 2: Reply to the announcement thread and solicit additional feedback.
1. Week 2: Review the agenda and respond to any questions or comments
1. Week 3: Review the `Identified Trends` section of the agenda and coordinate the creation of any required Corrective Actions, Infradev Issues, or Infrastructure Improvement Issues.
1. Week 4: Reply to the announcement thread that the the process is coming to a close
1. Week 4: Add an item to the [Reliability Leadership Sync Agenda](https://docs.google.com/document/d/1K-od3_I1TsMcyLag-KyUw-iuCAaaqjR0GIbrmBwVU4M/edit#) and include a summary of action items created.  Please include severity for each item.
1. Week 4: Send a final reply to the announcement thread indicating that the process is closed for the month.


## Team Status Updates
The General Team provides weekly updates all Epics following the [Reliability Process for Epics](https://about.gitlab.com/handbook/engineering/infrastructure/team/reliability/issues.html#epics).

OKRs are updated every Wednesday as required by the [Reliability Process for OKR Updates](https://about.gitlab.com/handbook/engineering/infrastructure/team/reliability/#okrs)

[Current OKRs](https://gitlab.com/gitlab-com/gitlab-OKRs/-/issues/?sort=closed_at_desc&state=opened&type%5B%5D=objective&label_name%5B%5D=Reliability%3A%3AGeneral&first_page_size=100)

## Performance Indicators

 * Success Criteria: 85% of OKRs achieved
 * Issue Metrics
   * Corrective Actions Over Time (specific to the General Team)
     * Success Criteria: Must meet or exceed the Reliability [SLO](https://about.gitlab.com/handbook/engineering/infrastructure/team/reliability/issues.html#service-level-agreements)
   * Lead Time
     * Success Criteria: Meets or exceeds current [Reliability SLO](https://about.gitlab.com/handbook/engineering/infrastructure/team/reliability/issues.html#service-level-agreements)
 * Customer Satisfaction
    * Success Criteria: TBD

## Team Members

<%= direct_team(manager_slug: 'gerir', department: 'Reliability:General') %>

## Key Technical Skills
The General Team must maintain a broad and diverse set of technical skills while also maintaining the ability to switch contexts frequently.  Some of these technical skills include:

 * Software engineering - Proficiency in one or more programming languages and experience with software development methodologies.

 * Systems administration - Knowledge of operating systems and experience with tasks such as installing and configuring software, managing users and permissions, and setting up and maintaining network services.

 * Network and Application Security and Compliance - Understanding of network security concepts and experience penetration testing and vulnerability assessment.

## Common Links

 * Issue Board: [All issue by priority](https://gitlab.com/gitlab-com/gl-infra/reliability/-/boards/3993753?label_name%5B%5D=team%3A%3AGeneral)
 * Slack Channel: #g_infra_general
 
