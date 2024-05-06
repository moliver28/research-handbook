---

title: Service Desk Single-Engineer Group
---

## Service Desk Single-Engineer Group

The Service Desk SEG is a [Single-Engineer Group](/handbook/company/structure/#single-engineer-groups) within our [Incubation Engineering Department](/handbook/engineering/development/incubation/).

### Vision

Our goal is to provide a complete, yet lightweight and customizable customer support solution that seamlessly integrates with the GitLab ecosystem and brings customers, support staff and developers closer together.


<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/LDVQXv3I5rI" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

### Mission

- Make Service Desk useful for professional support teams so they efficiently and effectively work through their support issues.
- Helping organizations build a professional and on-brand customer support workflow that grows with the business.
- Making Service Desk an integral part of the GitLab support workflow by providing the tools our teams need.
- Helping managers and support ops automate repetitive tasks for their support staff.
- Increase awareness of the capabilities of GitLab Service Desk and how it can help our customers handle customer support.

### Recent updates and showcases

Please feel free to [subscribe to this GitLab issue to receive notifications](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/3) when new updates are available.

**Watch the latest video**

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/yVxaKfNE2XE" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

We publish [short mid month update videos](/handbook/engineering/development/incubation/#mid-month-update-video) and
longer [end of month showcase videos](/handbook/engineering/development/incubation/#end-of-month-showcase) to
[demonstrate our progress](/handbook/engineering/development/incubation/#demonstrating-progress).

| Date | Summary / written version | Video |
| ---- | ------------------------- | ----- |
| `16.6` Showcase (2023-12-22) | [Nov. 2023 Showcase](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/25) | [Showcase Video](https://www.youtube.com/watch?v=yVxaKfNE2XE) |
| October Showcase (2023-11-24) | [Oct. 2023 Showcase](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/19) | [Showcase Video](https://www.youtube.com/watch?v=9Fwqt8EcZ-g) |
| September Showcase (2023-10-20) | [Sep. 2023 Showcase](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/17) | [Showcase Video](https://www.youtube.com/watch?v=sGaw5QHvKBU) |
| August Showcase (2023-09-19) | [Aug. 2023 Showcase](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/15) | [Showcase Video](https://www.youtube.com/watch?v=OIFDH5L6VwA) |
| July Showcase | - | - |
| June Showcase (2023-07-07) | [Jun. 2023 Showcase](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/14) | [Showcase Video](https://www.youtube.com/watch?v=PkgfXulZ6ZQ) |
| May Showcase (2023-06-13) | [May 2023 Showcase](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/13) | [Showcase Video](https://www.youtube.com/watch?v=51SQQaVT8u4) |
| April Showcase | - | - |
| March Showcase (2023-04-06) | [Mar. 2023 Showcase](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/12) | [Showcase Video](https://www.youtube.com/watch?v=9LYkvard3ew) |
| March Mid Month Update (2023-03-22) | [15.10 release, customer feedback, verification](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/11) | [Update Video](https://www.youtube.com/watch?v=bOg9laFjqPk) |
| February Showcase (2023-03-02) | [Feb. 2023 Showcase](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/10) | [Showcase Video](https://www.youtube.com/watch?v=mR_ejrr8880) |
| Update 4 (2023-02-21) | [15.9 release, GDK docs, verification](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/9) | [Update Video](https://www.youtube.com/watch?v=uMAjoe9Ehng) |
| January Showcase (2023-01-30) | [Jan. 2023 Showcase](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/7) | [Showcase Video](https://www.youtube.com/watch?v=rw-2fqtUodQ) |
| Update 3 (2023-01-20) | [Foundation &amp; verification](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/7) | [Update Video](https://www.youtube.com/watch?v=CiP7LRqm8vo) |
| Update 2 (2023-01-06) | [First MR &amp; upcoming tasks breakdown](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/6) | [Update Video](https://www.youtube.com/watch?v=jbUX611DR-g) |
| Update 1 (2022-12-09) | [Product Vision &amp; customizable E-Mail Addresses](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/4) | [Update Video](https://www.youtube.com/watch?v=AmKy4IGmevc) |

We are also [exploring ideas, existing issues and user feedback](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/2). Please feel free to contribute.

### Current focus

#### Multiple external participants

[External participants](https://gitlab.com/groups/gitlab-org/-/epics/3758) can be invited to an issue and can only interact with it via email. They receive Service Desk notification emails like the external author of a Service Desk ticket. This feature enables customers to have more than one external participant on a Service Desk ticket or regular issue. Part of this feature is to automatically include `CC`ed email addresses on a Service Desk ticket, manage them via quick actions and allow them to individually unsubscribe.

#### Quality of Life improvements

Additionally to bigger features and initiatives we're trying to always include at least once quality of life improvement for Service Desk customers in every release.

#### Former Respond group categories

The Service Desk SEG is also the DRI for the [former Respond group](/handbook/engineering/development/ops/monitor/respond/) categories
[Service Desk](https://about.gitlab.com/direction/service_management/service_desk/),
[incident management](https://about.gitlab.com/direction/service_management/incident_management/) and
[on-call schedule management](https://about.gitlab.com/direction/service_management/on-call_schedule_management/). 
Service Desk remains the focus.

### Released features

#### Create Service Desk tickets from the UI and API

**Released in GitLab 16.10**

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/ibUGNc2wifQ" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

Not GitLab users can create Service Desk tickets from The UI using the quick action `/convert_to_ticket user@example.com`
on a regular issue. Using the issues and notes API you can also create Service Desk tickets programmatically.
This allows customers to build custom integration and intake forms.

See the [feature issue](https://gitlab.com/gitlab-org/gitlab/-/issues/433376) and the
[documentation](https://docs.gitlab.com/ee/user/project/service_desk/using_service_desk.html#convert-a-regular-issue-to-a-service-desk-ticket)
for details.

#### Customizable e-mail address on a per-project basis

**Custom email address for Service Desk has been released in Beta in GitLab 16.4.**

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/_moD5U3xcQs" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

Configure a custom email address to show as the sender of your support communication. Maintain brand identity and
instill confidence among support requesters with a domain they recognize.

The feature requires customers to set up email forwarding from their custom email address to the generated Service Desk
email address. They then provide SMTP credentials for the custom email address so GitLab can send Service Desk emails
on their behalf.

If you have questions or would like to share feedback, see [this feedback issue](https://gitlab.com/gitlab-org/gitlab/-/issues/329990)
or the [feature issue](https://gitlab.com/gitlab-org/gitlab/-/issues/329990).

#### Native attachments for Service Desk emails

Native attachments for Service Desk emails allow external participants like the issue author to receive uploads to a
comment as a native email attachment (up to 10MBs). This is great because previously based on your project settings
or instance configuration external participants could not access media assets via the provided links in certain scenarios.

**Shipped in gitLab 15.10**. See the [release post item](https://about.gitlab.com/releases/2023/03/22/gitlab-15-10-released/#native-attachments-for-service-desk-emails) and the [feature issue](https://gitlab.com/gitlab-org/gitlab/-/issues/11733).
This SEG did not implement the feature, but mentored the team, designed the solution and published the feature.

#### Obfuscate email addresses of Service Desk issues based on user role

Making sure private data is protected no matter where a Service Desk issue ends up. If you do not have at least the reporter role in a GitLab project or group, you won’t be able to view the email address of the author of a Service Desk issue and issue email participants in general. No matter whether it’s a public or private project or the issue is confidential or not.

**Shipped in GitLab 15.9**. See the [release post item](https://about.gitlab.com/releases/2023/02/22/gitlab-15-9-released/#redact-service-desk-email-addresses-in-issues)

If you want to get more into the details, [check out the merge request which also links to all related issues](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/108901).

### Background

We have a [Service Desk offering](https://about.gitlab.com/direction/service_management/service_desk) in GitLab that we'd like
to make an integral part of the GitLab support workflow. We have early usage, a community of prolific contributors and
a new team ([Respond group in Monitor stage](/handbook/product/categories/#respond-group)) onboarding to
the new domain.

### Product Development Group affinity

- [Respond group in Monitor stage](/handbook/product/categories/#respond-group) owns Service Desk and currently
  onboards to the new domain
- [Project management group in Plan stage](/handbook/product/categories/#project-management-group) as Service Desk issues use all of GitLabs planning functionality

### Other resources

- ["Introducing GitLab Service Desk" product overview video](https://www.youtube.com/watch?v=LDVQXv3I5rI)
- ["Create Service Desk tickets from the UI and API" feature walkthrough video](https://www.youtube.com/watch?v=ibUGNc2wifQ)
- ["Reopen Service Desk issues when an external participant comments" feature walkthrough video](https://www.youtube.com/watch?v=163wDM1e43o)
- [Replace `mail_room` email ingestion with scheduled Sidekiq jobs](https://docs.gitlab.com/ee/architecture/blueprints/email_ingestion/)
- [Custom email address for Service Desk (Overview)](https://youtu.be/_moD5U3xcQs)
- [Video walkthrough on how to set up `mail_room` and Service Desk locally in GDK](https://youtu.be/SdqBOK43MlI)
