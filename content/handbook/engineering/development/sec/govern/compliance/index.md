---

title: "Compliance Group"
---







## Govern:Compliance
{: #welcome}

## What we work on
* We use the [Group Direction page](/direction/govern/compliance/) to describe our high-level goals and direction for our group.
* From the high-level goals and direction we filter down to a prioritised list of Epics, we try to keep updated in our [Tactical Priorities](https://about.gitlab.com/direction/govern/compliance/tactical-priorities.html)
* This prioritised list we then use when planning each Milestone. Each Milestone will have its own Issue in our [Planning Epic](https://gitlab.com/groups/gitlab-org/govern/compliance/-/epics/2)
  * In addition to using the high-level goals and direction as an input to planning Milestones, the Compliance Product Manager considers input from Sales, customers, and internal stakeholders (dogfooding) to decide on the priority for the issues added to each Milestone.
* We also use [OKRs](/company/okrs/) to help prioritise strategic initiatives within the group. We use Issues for planning and collate them in our [OKR Epic](https://gitlab.com/groups/gitlab-org/govern/compliance/-/epics/4)

## How we work
* In accordance with our [GitLab values](/handbook/values/).
* Transparently: nearly everything is public, we record/livestream meetings whenever possible (see [links](/handbook/engineering/development/sec/govern/compliance/#links))
* We get a chance to work on the things we want to work on.
* Everyone can contribute; no silos.
  * The goal is to have product give engineering and design the opportunity to be involved with direction and issue definition from the very beginning.
* We do an optional, asynchronous daily stand-up in our stand-up channel:
  * Govern:Compliance [#g_govern_compliance_daily](https://gitlab.slack.com/archives/C013E163FD0)

### Code Review
<%= partial("handbook/engineering/development/sec/govern/compliance/code_review.erb") %>

### Working on ad hoc work and questions
From time to time, there will be ad hoc work and questions that arise, such as Slack questions, questions in Issues, Error Budget investigations, etc. All Compliance group members are encouraged to watch these mediums and engage.

As first responder, we will acknowledge the ad hoc work / question in the appropriate medium. This is to ensure that the questioner knows that we are on it.

Similar to [Spikes](#spikes), as a rule of thumb, if the work will take longer than 1 hour to investigate and respond, then create an issue. This is to ensure that this work is accounted for, is transparent and has a DRI. This can be done through asking the questioner to create an issue, or taking ownership and creating the issue ourselves.

We try to ensure that the ad hoc work Issue has as much info as possible, asking for more info where required. Before working on an Issue, we make sure to define a clear question or problem that needs to be delivered.

Next, we take ownership of the Issue, assigning it to ourselves. We also add the :eyes: reaction to the Slack message/Issue comment to indicate that investigation has begun. We also ensure correct label hygiene (~type::, ~group::, ~priority::, ~workflow::). In the comments, ping the Compliance EM and PM to ensure transparency. Depending on priority, it may need to go through [cross-functional prioritization process](#milestone-planning) to get it planned, scheduled, and completed.

Once the investigation is complete, we follow up in the original medium. We also add the :white_check_mark: reaction to the original Slack message/Issue comment to indicate that investigation is complete.

### Spikes
<%= partial("handbook/engineering/development/sec/govern/compliance/spikes.erb") %>

### Proof-of-concept MRs
<%= partial("handbook/engineering/development/sec/govern/compliance/pocs.erb") %>

### Working on unscheduled issues
<%= partial("handbook/engineering/development/sec/govern/compliance/unscheduled_issues.erb") %>

### Testing
<%= partial("handbook/engineering/development/sec/govern/compliance/testing.erb") %>

## Milestone Planning
We plan in monthly cycles in accordance with our [Product Development Timeline](/handbook/engineering/workflow/#product-development-timeline). Our typical planning cycle is suggested to look like:

### Pre-planning
<%= partial("handbook/engineering/development/sec/govern/compliance/pre_planning.erb") %>

### Planning
<%= partial("handbook/engineering/development/sec/govern/compliance/planning.erb") %>

### Issue Prioritization
<%= partial("handbook/engineering/development/sec/govern/compliance/prioritization.erb") %>

## During Milestone
<%= partial("handbook/engineering/development/sec/govern/compliance/release.erb") %>

### Development Flow
<%= partial("handbook/engineering/development/sec/govern/compliance/development_flow.erb") %>

### Discovery/Refinement
<%= partial("handbook/engineering/development/sec/govern/compliance/refinement.erb") %>

#### Backlog
<%= partial("handbook/engineering/development/sec/govern/compliance/backlog.erb") %>

#### Estimation
<%= partial("handbook/engineering/development/sec/govern/compliance/estimation.erb") %>

#### Implementation Plan
<%= partial("handbook/engineering/development/sec/govern/compliance/plan.erb") %>

#### Breaking down or promoting issues
<%= partial("handbook/engineering/development/sec/govern/compliance/promote_issues.erb") %>

### Implementation

#### Verification
The issue verification should be done by someone else other than the MR author. This decreases the case of defects getting into production and a different perspective to cover more test cases.

The verification process is also about sharing knowledge of development between the rest of the group. In an all remote organisation it is easy to become siloed developing features even in the same team, and this attempts to help bridge this.

- All MRs should have verification steps in the description. In the case where multiple MRs are created for an issue, the engineer who is assigned to the issue should add complete verification steps in the issue description or as a reply to the triage bot's comment.
- When an engineer has merged their work, they should move their issue into the verification status, indicated by the `~workflow:verification` label and wait until they receive notification that their work has been deployed on staging via the release issue email.
  - For ~`~type::bug`, `~type::feature`, or big changes the engineer should verify again once the change is available on .com/production and leave a comment summarizing the testing that was completed. Also provide a link to a project or page, if applicable.
- Issues in the ~workflow:verification state are assigned randomly by the triage bot based on the verification policy to an applicable team engineer. This engineer should then verify the issue. In addition to following the verification steps provided, the verifying engineer is encouraged to do exploratory testing by using the feature in a way that doesn't follow the happy path.
- Once the issue has been verified in production, the verifying engineer will close the issue and unassign themselves. The issue will automatically get the `~workflow::complete` label added.

In cases where verification in staging or production is unfeasible, the [staging-ref environment](https://about.gitlab.com/handbook/engineering/infrastructure/environments/staging-ref/) may be used. For complex setups, the DRI for the MR should work with a domain expert to ensure verification steps are clear and correct.

In some cases it may be appropriate for the MR author to to verify the change themselves, for example feature flag rollout or monitoring a background migration. In these cases, the author should add the `verified-by-author` label to the issue to prevent the triage bot from assigning another team member, and the author should add a comment in the issue explaining why they are verifying the issue themselves.

##### Handling Discoveries of Issues  

__Verifier: the engineer verifying the issue on .com/production (not the MR author)__

1. Verifier: documents findings by commenting on the verification thread on the issue.
1. Verifier: opens new issues ~"type::bug"  or ~"type::feature" based on fiindings.
   1. Verifier: sets the severity and/or priority based on [priority](https://about.gitlab.com/handbook/engineering/quality/issue-triage/#priority)/[severity](https://about.gitlab.com/handbook/engineering/quality/issue-triage/#severity-slos) triage process and the issue type (~"type::bug"  or ~"type::feature").
   1. ~"severity::1" / ~"severity::2" to be pulled directly into the milestone with comment added to ping(`@`) the engineering manager.
1. Verifier: assigns the MR author to newly opened issues.
1. Verifier: closes the issue and unassigns themself. The issue will automatically get the `~workflow::complete` label added.

#### Demos
During the `workflow::verification` process, we determine whether the Issue requires a demo. If unsure, work with PM to determine if a demo is required. Demos are great for showcasing progress and help users quickly understand how to use a features and its benefits. Our process for this is similar to [Single Engineer Groups Demo](https://about.gitlab.com/handbook/engineering/demos/#single-engineer-groups-demo):

- Record a video on your computer or via Zoom livestream of the working software. You can also use [loom](https://about.gitlab.com/handbook/tools-and-tips/other-apps/#loom) for recording demos.
- Upload to the [GitLab Unfiltered Channel](https://www.youtube.com/channel/UCMtZ0sc1HHNtGGWZFDRTh5A) and add to the [Compliance Group - Product Playlist](https://www.youtube.com/playlist?list=PL05JrBw4t0KqWds1BN41IJxLd1AvpZxGu)
- Post the YouTube link to the appropriate Slack channel and in the Issue

### Release posts
<%= partial("handbook/engineering/development/sec/govern/compliance/release_posts.erb") %>


## Meetings
<%= partial("handbook/engineering/development/sec/govern/compliance/meetings.erb") %>

## Group Shared Calendar
The [Compliance Group Shared Calendar](https://calendar.google.com/calendar/embed?src=c_e21c4d99155603fa2f3b06f41628bebfe6013218000c822ec2fdfe7ed877d3e1%40group.calendar.google.com) is used to make sure PTO events are visible to everyone on the team.

### Syncing your Time Off by Deel entries to the Shared Calendar
Below are the steps to add the calendar to Time Off by Deel:

1. Open Slack
1. Open app in slack "Time Off by Deel"
1. Go to tab "Home", 
1. Click on the dropdown "Your Events", and select "Calendar Sync".
1. Under "Additional calendars to include?", click on "Add calendar".
1. Add the following calendar ID: `c_e21c4d99155603fa2f3b06f41628bebfe6013218000c822ec2fdfe7ed877d3e1@group.calendar.google.com`

Great job! 🎉 Your PTO events will be synced to Compliance Group Shared Calendar from now on. 🚀

## Group News
The EM will usually create a general update for the group on what is happening within the company and within the group on a weekly basis.
This update currently takes the form of an issue within the [compliance update Epic](https://gitlab.com/groups/gitlab-org/govern/compliance/-/epics/3)

The Compliance EM also contributes to issues in the [Govern stage weekly updates](https://gitlab.com/groups/gitlab-com/-/epics/2126) epic.

## Group Members
The following people are permanent members of the group:

<%= stable_counterparts(role_regexp: /Govern.+Compliance/) %>

## Dashboards

#### Product
[Product performance indicators / North star metrics](https://app.periscopedata.com/app/gitlab/663045/Manage:-Compliance-Dashboard)

<%= partial "handbook/engineering/metrics/partials/_cross_functional_dashboard.erb", locals: { filter_value: 'compliance' } %>

## Links and resources
{: #links}

* GitLab
  * [gitlab-org/govern/compliance](https://gitlab.com/gitlab-org/govern/compliance)
  * [General issues and discussions](https://gitlab.com/gitlab-org/govern/compliance/general/-/issues)
  * [Engineering issues and discussions](https://gitlab.com/gitlab-org/govern/compliance/engineering)
  * Compliance alias: `@gitlab-org/govern/compliance`
  * Compliance engineering alias: `@gitlab-org/govern/compliance/engineering`
  * [Milestone retrospectives](https://gitlab.com/gl-retrospectives/govern/compliance/-/issues)
  * Issue boards
    * [Build board](https://gitlab.com/groups/gitlab-org/-/boards/1305010)
    * [Planning board](https://gitlab.com/groups/gitlab-org/-/boards/4657720)
* Our Slack channels
  * Govern:Compliance [#g_govern_compliance](https://gitlab.slack.com/messages/CN7C8029H)
  * Daily standups [#g_govern_compliance_updates](https://gitlab.slack.com/archives/C013E163FD0)
  * Group related sentry errors [#g_govern_compliance_alerts](https://gitlab.slack.com/archives/C05GEBG97V3)
  * Complaince engineering alias: `@govern_compliance`
* Google Group
  * [sec-govern-compliance](https://groups.google.com/a/gitlab.com/g/sec-govern-compliance)

* Compliance group playlists on GitLab Unfiltered channel
  * [Product](https://www.youtube.com/playlist?list=PL05JrBw4t0KqWds1BN41IJxLd1AvpZxGu)
  * [Meetings](https://www.youtube.com/playlist?list=PL05JrBw4t0Kq7_yBKIYHi8qvCWeU0Q3yH)

<%= partial("handbook/engineering/development/sec/govern/shared_links.erb") %>
