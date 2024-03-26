---

title: "Developer Advocate Team Workflow"
aliases:
- /handbook/marketing/developer-relations/developer-evangelism/workflow/index.html
---







## Team Workflow

Welcome to the Developer Advocate team workflow page. Learn how the team works and how to work with the team. We primarily use the [Developer Advocate Meta issue tracker](https://gitlab.com/gitlab-com/marketing/developer-relations/developer-advocacy/developer-advocacy-meta/-/issues). We own the team label `developer-advocacy` and all of our other labels which are located at the [gitlab-com](https://gitlab.com/gitlab-com) group level. You can add the labels as necessary to any issue under this group for our team to track.

### How to work with the Developer Advocate Team

Opening an issue is the best way to get a conversation started. The `developer-advocacy` label is at the `gitlab-com` group level, which means it can be added to any issue or merge request in the group's structure.

The `developer-advocacy` label is required, other labels are optional. The [DA-Bot](/handbook/marketing/developer-relations/developer-advocacy/projects/#developer-advocacy-bot) or a team member will do the triage and add the necessary labels. To reduce noise in the comments, please add the `DA-Type::Consulting` and the relevant `Consulting` team labels yourself.

You can use the [request a Developer Advocate issue template](https://gitlab.com/gitlab-com/marketing/developer-relations/developer-advocacy/developer-advocacy-meta/-/issues/new?issuable_template=developer-advocate-request) to submit a request. It provides a guide to collect the required information to triage the request.

## Roadmap view

The Developer Advocate team uses the [Roadmap in the Developer Relations Group](https://go.gitlab.com/community-relations-team-roadmap) to track our work. Epics for our team are tracked within this group using the `developer-advocacy` label.

### Epics

Work items that fit our team strategy, including events and content plans, are tracked using epics and child epics. Use the following search filters to find the strategy epics for each fiscal year:

- [DevRel Events Strategy](https://gitlab.com/groups/gitlab-com/marketing/developer-relations/-/epics?state=opened&page=1&sort=start_date_desc&label_name[]=DevRel-Events&search=strategy)
- [DevRel Content Strategy](https://gitlab.com/groups/gitlab-com/marketing/developer-relations/-/epics?state=opened&page=1&sort=start_date_desc&label_name[]=DevRel-Content&search=strategy)
- [DevRel Release Evangelism](https://gitlab.com/groups/gitlab-com/marketing/developer-relations/-/epics?state=opened&page=1&sort=start_date_desc&search=devrel+release+evangelism)

For each activity of the team, a sub-epic should be created under the relevant parent epic and with relevant labels added.

For each fiscal year's plan, we use the following structure to organize epics on our roadmap:
- FYXX Events
  - Child epic for each event we will support
- FYXX Content
  - FYXXQ{1,2,3,4}
    - Child epic for each piece of content (blog, video, contributed article, media interview, etc) we will publish
  - FYXX Release Evangelism epic (contains all release shares and results)


#### Start and due dates

For blog posts and other content, start and due dates should correspond with the expected week of publishing. Do not set start date to the time you'll begin working on a piece of content as this can affect the roadmap view.

#### Epic Labels

These are the recommended labels for Epics created in the Developer Relations group. They are used for filtering the epics.

| Label                      | Description |
|----------------------------|----------------------------------------------------------------|
| `DevRel-Events`       | Should be applied to all events related epics |
| `DevRel-Content` | Should be applied to all Content related epics |
| `Region-AMER` | Applied to events happening in North America |
| `Region-APAC`  | Applied to events happening in APAC |
| `Region-EMEA` | Applied to events in EMEA |
| `Region-LATAM` | Applied to events in Latin America |
| `Content-Blog` | GitLab Blog posts |
| `Content-Newsletter` | Newsletters
| `Content-Partner Blog` | Blogs posts on partner websites |
| `Content-Social` | Social media campaigns or threads |
| `Content-Video` | Video Content or Streaming |
| `Content-Webinar` | Online Webinars |
| `Content-Releases` | GitLab Release campaigns |
| `CFP` | Any event epic (and ancestor epics) that have a CFP issue |

**Important!** Where you are adding a label to a sub-epic, its ancestors must include the label for filtering to work properly. This is a workaround, because the roadmap only filters top-level epics using labels, but works when an epic and its ancestors have the label you are filtering with. For example, in the image below, you will notice that the FY24 Content & the sub epic "Blog post - March 2023", both have the label `Content-Blog`, they both appear when the label is used as a filter. The child epic will not appear in the filter, when its ancestors don't have the label you are searching with.

![Roadmap Filter using Labels](/images/handbook/marketing/developer-relations/developer-advocacy/workflow/roadmap-labels.png)

### Syncing epics roadmap with the technical content plan

The roadmap view needs to be synced with the `Technical Content Plan - Developer Advocates` (search in Google drive).

Checklist for updating delivery dates:

1. Sync the delivery date in the technical content plan with the epic due date.
1. Update the epic's title to the `month, year` the content is delivered.
1. Update the epic's parent epic to match the quarter where the content is delivered.
1. Update the epic's labels to match the quarter where the content is delivered.

The following quick actions example updates a content epic from FY25Q1 to FY25Q2.

```
/unlabel ~"FY25-Q1"

/parent_epic https://gitlab.com/groups/gitlab-com/marketing/developer-relations/-/epics/392

/label ~"FY25-Q2"

```

### Subscribing to epic updates

To get notifications, you can [subscribe to epic labels](https://docs.gitlab.com/ee/user/project/labels.html#receive-notifications-when-a-label-is-used) starting with the ["DevRel" prefix](https://gitlab.com/groups/gitlab-com/-/labels?subscribed=&search=devrel).

Please follow the [content library resources](/handbook/marketing/developer-relations/developer-advocacy/content/) for general content updates.

### Epic Templates

Please use this template when creating Epics for activities that should appear for the Developer Advocate team on the roadmap:

#### Content Epic Template

```markdown
> Epic Title Guide:
> Dates should be using ISO dates, see https://about.gitlab.com/handbook/communication/#writing-style-guidelines
> Format:
>  Content: Title - Author - Publish Month, Publish Year


## Activity Summary

**Please consider addressing these key questions in your summary:**

1. Who is our audience?
    - A:

2. What is the best content type (blog post, video, how-to) to deliver this message?
    - A:

3. How does this content help our audience?
    - A:

4. How does this content help us achieve our goals?
    - A:


## Team or Individual DRIs
**Please add team label to epic.**


## Relevant Issues, Epics or resources

-

## Checklist
**Please review the tasks and tick them off.**

- [ ] Add to Technical content sheet.
    - [ ] When started: Mark the row as yellow (in progress)
- [ ] Add epic start/due date, synced with the technical content sheet row.
- [ ] Add issues for tracking content (blog pitches, etc.)

On completion:

- [ ] [Distribute the content](https://handbook.gitlab.com/handbook/marketing/developer-relations/developer-advocacy/content/content-distribution) (Highspot, Slack, social media, etc.)
- [ ] Add results to the epic, and to the technical content sheet. Mark the sheet row as completed (green).

<!-- these labels should be included on all templates -->
/label ~"developer-advocacy"

<!-- Note: These are samples for guidance, please add relevant labels for activity region, type, quarter or any other labels relevant to your team/program. Please update or include additional relevant labels here. -->

/label ~"DevRel-Content" ~"FY25-Q1"

<!-- Link to parent epic where necessary. Please choose the quarterly epic from the
FY25 epic https://gitlab.com/groups/gitlab-com/marketing/developer-relations/-/epics/339 -->

<!-- FY25Q1 -->
/parent_epic https://gitlab.com/groups/gitlab-com/marketing/developer-relations/-/epics/391

<!-- Link to Child epic where necessary -->
/child_epic

<!-- Mention team members that should be aware of the epic -->
/cc

```

#### Events Epic Template

```markdown
> Epic Title Guide:
> Dates should be using ISO dates, see https://about.gitlab.com/handbook/communication/#writing-style-guidelines
> Format:
>  Content: Title - Author - Publish Month, Publish Year
>  Event: Event Name, Location, ISO Date

## Activity Summary

**Please consider addressing these key questions in your summary:**

1. Who is our audience?
    - A:

2. What is the best content type (blog post, video, how-to) to deliver this message?
    - A:

3. How does this content help our audience?
    - A:

4. How does this content help us achieve our goals?
    - A:

## Team or Individual DRIs
**Please add team label to epic.**


## Relevant Issues, Epics or resources

-

## Checklist
**Please review the tasks and tick them off.**

- [ ] Add epic start/due date.
- [ ] Add issues for tracking tasks (CFPs, code challenge, lightning talks, staffing, etc.)
- [ ] Document learnings, notes, ideas, etc. in the epic.

On completion:

- [ ] [Create event report slides and share them](/handbook/marketing/developer-relations/events/#event-reporting)

<!-- these labels should be included on all templates -->
/label ~"developer-advocacy"

<!-- Example: These are samples for guidance, please add relevant labels for activity region, type, quarter or any other labels relevant to your team/program. Please include additional relevant labels here.  -->

/label ~"DevRel-Events" ~"Region-AMER" ~"FY25-Q1"


<!--Link to parent epic where necessary -->

<!-- Events epic (FY25) -->
/parent_epic https://gitlab.com/groups/gitlab-com/marketing/developer-relations/-/epics/326


<!-- Link to Child epic where necessary -->
/child_epic

<!-- Mention team members that should be aware of the epic -->
/cc

```

#### Release Evangelism Epic Template

```markdown
## :eyes: Pins

* [Release Evangelism handbook](https://handbook.gitlab.com/handbook/marketing/developer-relations/developer-advocacy/social-media/#release-evangelism) provides all resources.
* [#release-post](https://gitlab.slack.com/archives/C3TRESYPJ) Slack channel (internal)
* [Release post MR items](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests?label_name%5B%5D=release+post)

### :construction_site: Tasks

1. Create campaign short URLs in the [Release Evagelism Campaign](https://campaign-manager.gitlab.com/campaigns/view/3), under the Developer Relations Team in [CommunityApps](https://campaign-manager.gitlab.com/), and add them into the releases sections below.
1. Review and identify social share items, add text examples for team members to copy/paste.

## :bulb: Releases

- https://about.gitlab.com/releases/
- https://about.gitlab.com/upcoming-releases/

<!-- Repeat the template below 12x for all releases for the coming fiscal year. -->
### <version> (yyyy-mm-dd)

- Release blog post:
- Twitter/X:
- LinkedIn:
- Mastodon:

Social shares

1.

Feature highlights

| Feature | Section | URL | Social text example |
|---------|---------|-----|---------------------|
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |


/label ~"developer-advocacy" ~"DA-Type::Evangelist" ~"DevRel-Content" ~"Content-Releases"


```

### CFPs

CFP epics should not be created to avoid clutter on the Roadmap, instead the `CFP` label should be added to the corresponding event's epic. If no related event epic exists, create one and add the CFP issue to it.

### Epics Triage

The [DevRel-Bot](https://gitlab.com/gitlab-da/devrel-bot) uses the [GitLab Triage](https://gitlab.com/gitlab-org/ruby/gems/gitlab-triage) project to ensure appropriate & consistent usage of labels.

## Labels

The Developer Advocate team workflow is supported by labels, which help determine the type of issue, its status, and other relevant information. The team's primary label is `developer-advocacy`. All issues the team owns, are a part of, or needs to be aware of, should be tagged with `developer-advocacy`. Other Labels are listed below:

#### General labels

| **CFP Labels** | **Description** |
| ---------- | ----------- |
| `DA-DueSoon` | This is used to monitor DE issues that are due soon |
| `DA-Peer-Review` | Feedback is needed on the issue from DE team members |
| `DA-Ops` | Used to label issues related to the Developer Advocacy `Ops in DevOps` theme |
| `DA-Dev` | Used to label issues related to the Developer Advocacy `Dev in DevOps` theme |
| `DA-k8s` | Used to label issues related to the Developer Advocacy `Kubernetes` theme |

### Issue management

The team creates issues for iteration, team discussions, and other issues for internal processes. These issues are tracked using the following labels:

| **Process Labels** | **Description** |
| -------------- | ----------- |
| `DA-Process::Open` | Process related issues that are still being discussed or worked |
| `DA-Process::Pending` | Process related issues on hold due to an external factor |
| `DA-Process::Done` | Completed Process issues |
| `DA-Process::FYI` | Issues that require no action from the team, but need to be aware of |

#### Workflow

| Label | Use |
|-------|-----|
|`DA-Status::ToDo` | Issues that are planned for the future |
|`DA-Status::Doing` | Issues the team is currently working on |
|`DA-Status::Done` | Issues that have been completed |
|`DA-Status::OnHold` | Issues that are for whatever resume pending |
|`DA-Status::Cancelled` | Issues that have been cancelled, either by the team or the requestor in the case of a consulting request |
|`DA-Status::FYI` | Issues the team needs to be aware of but no action is required |

The default flow is from ToDo -> Doing -> (OnHold) -> Done. Issues with FYI don't go through any workflow, as they are owned by another team and will go through a different workflow.

#### Issue Types

These labels help identify the type of activity documented in an issue. These are useful for the team to understand where time is spent and assign appropriate DRIs.

| Label | Use |
|-------|-----|
| `DA-Type::Content` | Issues for Content creation, this can be any type of content |
| `DA-Type::Evangelist` | Issues for the Evangelist program |
| `DA-Type::Process` | Issues for operational activities of the team |
| `DA-Type::Response` | Issues for Community Response activities |
| `DA-Type::Consulting` | Issues requested by other teams, more details below |
| `DA-Type::analysts` | Work for analysts |
| `DA-Type::blog` | Tracking blog work for Developer Advocacy team |
| `DA-Type::collateral` | For tracking work on things like whitepapers, etc |
| `DA-Type::competitive` | Competitive research and/or comparison work |
| `DA-Type::demo` | |
| `DA-Type::demo-azure` | Demos that show GitLab working with Azure |
| `DA-Type::enablement` | Internal enablement activities (sales, CS, SDR, etc)|
| `DA-Type::learn` | work related to setup/maintenance of learn@GitLab that is OTHER THAN asset creation.|
| `DA-Type::other` | Work that doesn't fall into other defined categories. One off work, etc.|
| `DA-Type::partner` | |
| `DA-Type::presentation` | Work around creating and/or presenting an presentation|
| `DA-Type::tech-marketing` | Technical Product Marketing Management team|
| `DA-Type::web` | Web pages|
| `DA-Type::workshop` | |


#### Consulting Labels

Requests from other teams for the Developer Advocates to own, participate or collaborate on activities are classified as consulting, and these requests are usually labeled based on the team requesting. These are teams in the company that the Developer Advocate team collaborate with often, here are their labels:

- `DA-Consulting::Alliances`
- `DA-Consulting::CorpComms`
- `DA-Consulting::CorpEvents`
- `DA-Consulting::Community`
- `DA-Consulting::Engineering`
- `DA-Consulting::FieldMktg`
- `DA-Consulting::GrowthMktg`
- `DA-Consulting::Product`
- `DA-Consulting::Sales`

These labels are required where an issue has `DA-Issue-Type::External` and `DA-Type::Consulting`, aside the team label `developer-advocacy` and `DA-Status` scoped label. If your team is not listed, you can still submit a request and it will be triaged appropriately

Issues created for Consulting count against team quarterly budgets, you can learn more in the [Request budgets section below](/handbook/marketing/developer-relations/developer-advocacy/workflow/#request-budgets).

#### Bot Labels

These labels are automatically assigned by the [DA-Bot](/handbook/marketing/developer-relations/developer-advocacy/projects/#developer-advocacy-bot) for triaging purposes.


| Label | Use |
|-------|-----|
| `DA-Bot::Auto` | Issue is automatically created by DA-Bot and will be closed after a period, usually 2 weeks from creation |
| `DA-Bot::Hold` | Issue is currently on hold and should not be triaged by teh DA-Bot except where it has been in the Hold status for too long. |
| `DA-Bot::Skip` | The DA-Bot should not perform any action on issues with this label
| `DA-Bot::Triage` | Issue has been silent for a while and needs to be triaged |
| `DA-Due::AddDate` | An Issue needs a due date |
| `DA-Due::N/A` | Due date is not needed because the team doesn't own the issue or a due date is not applicable |
| `DA-Due::Past` | Issue is past its due date |
| `DA-Due::Soon` | Issue is due soon |

#### Other Labels

| Label | Use |
|-------|-----|
| `DA-Release-Evangelism` | Release Evangelism issues, often auto created and closed by the DA-Bot |
| `DA-Issue-Type::External` | Issues created by Other teams |
| `DA-Issue-Type::Internal` | Issues created & owned by the DevEvangelism team

#### CFP Labels

These labels are used to track workflow of the CFP submissions.

| Label | Use |
|-------|-----|
| `CFP` | Identifies CFP labels, this is needed |
| `CFP::Upcoming` | Identifies CFPs that will be open soon |
| `CFP::Open` | Identifies Open CFPs |
| `CFP::Closed` | Identifies Closed CFPs |
| `CFP::Cancelled` | Identifies Cancelled CFPs |
| `CFP::Submitted` | Identifies that submissions were made for the CFP |
| `CFP::Accepted` | Identifies if any submission was accepted for a CFP |
| `CFP-EDU` | Identifies CFPs that are relevant to the Education team |
| `CFP-OSS` | Identifies CFPs that are relevant to the Open Source teams |
| `CFP-Submitted::{0..7}` | This is used to note the number of submissions that were made for metrics purposes |
| `CFP-Accepted::{0..7}` | This is used to note the number of acceptances for metrics purposes |

### CFP Workflow

The CFP workflow is based on the [CFP labels](#cfp-labels) explained above.

```plantuml
start
: CFP, CFP::Upcoming;
: CFP, CFP::Open;
if (CFP submissions) then (yes)
    : CFP, CFP::Submitted, CFP-Submitted::{0..7};

    if (CFP is Accepted) then (yes)
        : CFP, CFP::Accepted, CFP-Accepted::{0..7};
    else (no)
        : CFP, CFP::Closed;
    endif;
elseif (No submissions) then (missed)
    : CFP, CFP::Closed;
else  (cancelled)
    : CFP, CFP::Cancelled;
endif
stop
```

Example CFP workflow using [quick actions](https://docs.gitlab.com/ee/user/project/quick_actions.html):

1. Planning to submit, or when you have submitted already:
    1. Create a new [CFP issue](https://gitlab.com/gitlab-com/marketing/developer-relations/developer-advocacy/developer-advocacy-meta/-/issues/new?issuable_template=cfp).
    2. The issue template already sets the `~"CFP" ~"CFP::Open"` labels.
    3. Set the due date to the CFP submission due date.
2. Submitted 1 talk:
    1. Change the label to `~CFP-Submitted ~CFP-Submitted::1`
    2. In case you have submitted multiple talks, adjust the `~CFP-Submitted::` scoped label to reflect the correct number.
    3. Update the `submissions` section in the issue. Comment on the issue for visibility.

```
/label ~CFP-Submitted ~CFP-Submitted::1
```

3. After the CFP closed, set the `CFP::Closed` label and update the due date to the CFP notification date listed in the issue.

```
/due <cfp notification date>
```

4. CFP notifications come in, and at least 1 talk was accepted.
    1. Change the label to `~CFP-Accepted ~CFP-Accepted::1`
    2. In case you have multiple talks accepted, adjust the `~CFP-Accepted::` scoped label.
    3. Comment on the issue with the talk titles for visibility.
    4. Set the due date to the event date, and ensure all speakers are assigned.

```
/label ~CFP-Accepted ~CFP-Accepted::1
```

5. When the event is done, update the issue with feedback and results.
    1. Add talk videos to the [YouTube playlist](/handbook/marketing/developer-relations/developer-advocacy/#youtube-playlist), if existing.
    2. Mark the issue as `DA-Status::Done` and close it.

```
/label ~DA-Status::Done
/close
```

If no talks were accepted, only close the issue shown above.

If the CFP closed without submission, add the `CFP::Closed` label. In case the CFP was planned to submit, and decisions were made otherwise, add the `CFP::Cancelled` label.

### Boards

- [Team General Issue Board](https://gitlab.com/groups/gitlab-com/-/boards/1565342?&label_name[]=developer-advocacy)
- [Team Activity Type Issue Board](https://gitlab.com/groups/gitlab-com/-/boards/3811304?label_name[]=developer-advocacy)
- [CFP Issue Board](https://gitlab.com/groups/gitlab-com/-/boards/1616902?label_name[]=CFP)

### Request budgets

In order to prevent burnout, prioritize requests appropriately, and ensure we successfully deliver on the requests to which we commit, our team has created budgets for our internal stakeholders. These budgets encourage team members to prioritize their requests, ensuring our team addresses the highest priority needs for GitLab.

These request types fall into the following categories:

1. Event requests
1. CFP requests
1. Content requests

Ongoing activities including team-driven content creation and speaking opportunities that supports our goals and OKRs, release support, and social media monitoring, including Hacker News, do not count towards any team budgets.

#### Event requests

Event requests include both event attendance (ex: attending client meetings, event staffing, attending dinners or social events, monitoring events for news) and speaking engagements at events such as demos and presentations.

#### CFP (Call for Proposals) requests

CFP requests include asking a Developer Advocate to submit a proposal for an event or media opportunity or support a fellow team member in submitting to an open CFP.

See [Requesting a Developer Advocate to submit a CFP](/handbook/marketing/developer-relations/developer-advocacy/cfps/) to request a Developer Advocate to submit to a CFP for a corporate, field, or partner event.

#### Content requests

Content requests include blog post, podcasts, media interviews, or any request that involves engaging a Developer Advocate in a media opportunity.

#### Scoring requests

| Request Type | New / Existing Content | Budget score |
| ------------ | ---------------------- | ------------ |
| Event        | New                    | 3            |
| Event        | Existing / No content  | 1            |
| CFP          | New                    | 2            |
| CFP          | Existing               | 1            |
| Content      | New                    | 2            |
| Content      | Existing               | 1            |

Each team listed below is allocated 15 points per quarter for requests:

| Team                       | Team Label  |
|----------------------------|------------------|
| Corporate Events           | `DA-Consulting::CorpEvents`  |
| Corporate Communications   | `DA-Consulting::CorpComms`   |
| Developer Relations        | `DA-Consulting::Community`   |
| Growth Marketing           | `DA-Consulting::GrowthMktg`  |
| Field Marketing / ABM      | `DA-Consulting::FieldMktg`   |
| Sales / SDRs               | `DA-Consulting::Sales`       |
| Alliances                  | `DA-Consulting::Alliances`  |
| Product                    | `DA-Consulting::Product`     |
| Engineering                | `DA-Consulting::Engineering` |

If your team is not listed above, we will handle your request based on our availability.

#### Managing requests

This process covers any content request, Webcast, Interview, Meetup, etc. The process involves the following:

- Requestors should assign a label that identifies their team and a weight correlating with their budget score to allow us to track each team's budget consumption.
- A member of the Developer Advocate team will triage the issue and provide all necessary details and directions
- The necessary labels are applied to the issue as actions are taken on the request
- Once the request is complete, the issue is assigned back to the requestor to provide the necessary metrics generated as a result of the before it is closed.

