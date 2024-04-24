---
title: Value Stream Discovery
aliases: /handbook/solutions-architects/sa-practices/value-stream-assessments
---


When working with GitLab, many prospects and customers have software delivery performance improvements as critical business outcomes. Unfortunately, due to the inherent and increasing complexity in the software delivery process, an organization's software delivery value streams often consist of dozens, if not hundreds, of manual configuration touch points and handoffs. Typically, there is a lack of visibility and understanding into the current process, making it challenging to identify and measure software delivery improvements. Without understanding the current software development value streams, organizations risk putting time, effort, and money into areas that will not improve their software delivery capability in any meaningful way.

GitLab account teams should offer to assist prospects and customers in helping to provide an overview and understanding of their value stream(s).

The content on this page outlines the various approaches, tools, and artifacts we have available to help achieve a better understanding of our prospects and customers value streams. With this better understanding of the current state; identifying bottlenecks and establishing a baseline measurement of software delivery performance, GitLab can ensure our prospects and customers can achieve their critical business outcomes through implementation of impactful changes and improvements, delivered quickly and continuously.

## Approaches

At GitLab, the Value Stream Discovery process can be tailored to accommodate the diverse needs of our clients, ranging from basic discussions to elaborate explorations filled with metrics and data.

The journey might commence with a straightforward conversation, offering initial insights into software delivery challenges and business goals impacted. Another, more detailed starting point, could involve multiple discussions with various teams, providing a holistic yet concise view of the current software delivery processes, yet without delving deeply into metrics. An alternative more 'hands-on' experience could be in the form of a full-day session, focusing on 'a day in the life' of a developer, offering practical insights into daily workflows. Finally, for those who require a strategic, in-depth and outcome driven approach, we offer comprehensive, executive-sponsored workshops. These structured, multi-day, multi-team events present an end-to-end overview of the entire value stream, complete with detailed metrics and tailored recommendations.

This spectrum of approaches, from simple dialogues to intensive workshops, ensures that we can adapt to the varying depths of engagement required, with a constant aim to deliver relevant and impactful insights for enhancing our clients' software delivery efficiency and effectiveness.

## Value Stream Discovery Sessions

Value Stream Discovery (VSD) aims to gain a clear understanding of how an organization or a set of teams delivers value to its customers. VSD can be conducted using a variety of techniques, depending on objectives, time commitment, and the available level of customer/team engagement.

### Common Value Stream Discovery Techniques

* **Discovery Session (with Value Stream Concepts):** Integrate value stream mapping concepts into standard discovery sessions. This aligns well with GitLab's [Command of the Message](https://handbook.gitlab.com/handbook/sales/command-of-the-message/) approach, focusing on understanding the customer's current state, future desired state, and the metrics they'll use to measure success.  It's vital to grasp how the customer's value stream ties into achieving their larger business goals.
* **"Day in the Life":** Leverage the established ["Day in the Life" SA practice](https://handbook.gitlab.com/handbook/solutions-architects/sa-practices/day-in-the-life/) to extract valuable value stream information. While initial observations might be limited to a single team, the resulting metrics and insights provide a valid foundation. Ideally, expand this exercise to involve multiple teams within the value stream for greater cross-functional visibility.
* **Value Stream Discovery Session (Informal):** A focused session involving representatives from across the value stream. Less structured than a full workshop, it still prioritizes understanding the customer's value stream with the potential to identify immediate improvement areas if time allows.
* **Value Stream Workshop:** A comprehensive approach detailed [below in this handbook page](#value-stream-workshop).

### Customer-Focused Techniques

Since Value Stream Discovery aims to uncover challenges in delivering value to the end-user, techniques focusing on them can be valuable:

* **Customer Journey Mapping:** Visualize the customer's experience as they interact with the value stream. Map touchpoints, identify pain points, and uncover opportunities to improve their journey, enhancing overall delivered value ([Lucidchart Overview](https://www.lucidchart.com/blog/how-to-build-customer-journey-maps)).
* **Voice of the Customer (VOC):** Employ surveys, interviews, or user testing to collect direct feedback from end-users on their experience with the value stream. This qualitative data provides insights into their needs, frustrations, and areas for improvement ([Gainsight Overview](https://www.gainsight.com/essential-guides/voice-of-the-customer/)).


### Choosing a Technique

Factors to consider when selecting the most suitable approach include:

* **Time constraints:** Simpler techniques are easier to fit into busy schedules.
* **Level of Engagement:** Does the customer/team have the bandwidth for in-depth workshops, or would a less intensive approach be more suitable?
* **Urgency:** Are there immediate pain points the value stream could address? Simpler techniques could offer faster insights.
* **Desired Outcome:** Is the goal a high-level understanding, or a detailed action plan necessitating a full workshop?

**Important Note:** Regardless of the technique selected, the core aim of Value Stream Discovery is to collaboratively understand the customer's process of delivering value, identify inefficiencies, and pinpoint opportunities for optimization.

## Value Stream Workshop

### Process

1. [Qualify the Opportunity for a Value Stream Workshop](#qualify)
1. [Educate potential participants and obtain commitment to the workshop](#education-and-commitment)
1. [Prepare for the Value Stream Workshop](#prepare)
1. [Initial customer positioning](#position)
1. [Plan the Value Stream Workshop](#planning-meeting-with-customer)
1. [Facilitate the Value Stream Workshop](#value-stream-workshop)
1. [Executive Briefing - Summarize the findings](#executive-briefing---summarize-the-findings)
1. [Contribute back to this framework](#how-to-contribute)

### Qualify

Running a Value Stream Workshop requires a non-trivial investment of time by both the GitLab field teams and our prospects and customers. To ensure the appropriate return on this investment of time, the opportunities should meet the following criteria, and if not, please give any justification for why an exception should be made:

* We have a strong relationship with an executive sponsor
* The account has a total addressable market of at least 1000 GitLab users (100 users for Commercial Accounts)
* The prospect or customer is focused on improving their software delivery performance or related practies (e.g., securing their software supply chain, cloud migrations, application modernization, developer experience and efficiency)
* We have a relationship with the [economic buyer](/handbook/sales/meddppicc/#economic-buyer)
* We have identified and established a relationship with the [internal champion](/handbook/sales/meddppicc/#champion)
* We suggest positioning a Value Stream Workshop prior to POVs (Proof of Value) to understand bottlenecks, key metrics important to stakeholder. This also gives us an opportunity to agree to the success criterias before starting the POV as value drivers for deal closure.


Key indicators that the opportunity is well-suited include:

* There is a specific initiative to accomplish one or more of the following by a specific date
    * Improve developer experience and efficiency
    * Transform or objectively improve their ability to deliver software
    * Modernize their DevOps capabilities
    * Security their software supply chain
    * Modernize a specific application or applications
    * Deliver a new critical application to the market
    * Migration to the cloud
* The customer is currently using some features of GitLab and is interested in how leveraging more of the platform will drive software delivery outcomes
* For customer success, a value stream workshop should help uncover opportunities to expand into new use cases or improve current adoption by identifying bottlenecks in the current software delivery value stream
* An existing customer shows interest in adopting our value stream analytics feature to drive software delivery performance

The scope of a value stream workshop should always be clearly defined. A clearly defined scope ensures that the correct people are being included in the team and reduces the risk of time lost agreeing what should be focussed on. For this reason, the scope of a GitLab facilitated workshop must always be within the DevSecOps space.

### Education and Commitment

A successful value stream workshop requires a commitment to the workshop by the software delivery stakeholders and the personnel experienced with the various processes that constitute their value stream. Without understanding the process and its value to their organization, participants will lack the commitment to ensure a successful value stream workshop. Educate the prospect or customer on the benefits, process details, and the required commitment. Leverage the [Value Stream Workshop Positioning Deck](https://docs.google.com/presentation/d/1dOy-YGmsQio3v4EVjhFoCJWekzG0Z8PIpwsqliTyku0/edit?usp=sharing) - ([Recording](https://youtu.be/oxYjSrYLML4)) by customizing it for the prospect or customer to assist with this step.

_While a Value Stream Workshop is an advanced discovery session, it's expected that initial [opportunity discovery](/handbook/sales/playbook/discovery/) and [technical discovery](/handbook/solutions-architects/processes/technical-discovery/) have both been conducted prior._

#### Key Benefits

* Discovery and documentation of the software delivery value stream or "path to production" currently in place
    * Establish an agreed upon baseline from which to measure the progress of software delivery performance
    * Identify manual configuration touchpoints and handoffs and other value stream bottlenecks
    * Create a process improvement roadmap
    * Understand the return on investment of a value delivery platform
    * Promote collaboration amongst traditionally siloed functions within the DevSecOps lifecycle

After the prospect or customer understands the process and its benefits, confirm commitment from the stakeholders and workshop participants by scheduling the facilitated workshop and/or interviews. Estimate the duration of the discovery session and set the expectation that the documented value stream, recommendations, and readout will be delivered.

#### What is The Required Time Commitment?

Focusing on the goals and benefits listed above, the time required to complete a minimally viable value stream workshop will vary from organization to organization. The workshop should NOT require exhaustive discussion and research. Depending on the availability and commitment of the various value stream participants and stakeholders, the practice could take as little as 4 hours to complete or up to 15 hours spread out through multiple sessions over multiple days.

### Prepare

#### Value Stream Workshop Tracking Issue

The **very first step** when considering a value stream workshop is to notify the Value Stream Discovery team of the intent, and provide as much information as possible regarding the prospect/customer. To do so:

* Please create a new issue in [value stream discovery project](https://gitlab.com/gitlab-com/customer-success/value-stream-assessment)
* Use the template labeled `request_value_stream_assessment`

This gives the team at GitLab the ability to both track the progress of the Value Stream Discovery and allocate team members to the effort, a key requirement for the next preparation steps.

#### Internal Preparation Meeting

It is extremely important to have an internal preparation meeting (can be async) prior to positioning a Value Stream Workshop to the customer. The goal of the meeting is to be able to discuss:
* The opportunity (should include SFDC link for SA engagement)
* The key players & their roles
* What metrics are these key players measured by
* Any OKRs for these key players that the account team is aware of
* What will be the succesful outcome from a Value Stream Workshop
* Pick key slides to deliver to customer
* Pick key discovery questions to be asked during positioning & customer planning session
* Important chorus recordings to review
* Identify and communicate to a [GitLab Executive Sponsor](/handbook/sales/field-operations/gtm-resources/#executive-sponsorship-program)

### Position

The initial customer positioning allows us to position value stream assesment to our key stakeholders & get their buy in. The customer positioning should include:
* What is a Value Stream Workshop?
* What does a Value Stream Workshop entail?
* Who are the key participants involved in the Value Stream Workshop?
* What are some of the expected outcomes of a Value Stream Workshop for them?

It is important to identify a project or few projects as next step for the planning meeting with customer.

Here are some resources that can be used as starting point for the positioning session:
* [Customer positioning deck](https://docs.google.com/presentation/d/1dOy-YGmsQio3v4EVjhFoCJWekzG0Z8PIpwsqliTyku0/edit?usp=sharing) - ([Recording](https://youtu.be/oxYjSrYLML4))
* [Internal positioning deck](https://docs.google.com/presentation/d/1kWqXBbBC2BZ1w9dWEUe4hVJdcXMcO6tXNK9dFY-5XF0/edit#slide=id.gef34d4c13c_1_636)


### Planning meeting with customer

Planning a Value Stream Workshop can generally be done within an hour, given the right expectation, focus and people involved.

It is recommended that when planning a Value Stream Workshop, a [Value Stream Transformation Charter](https://docs.google.com/spreadsheets/d/1uiJtMRWvm4DVI_h8pOqRZPwuvCcQhohpk1Vl71PHbtc/edit) should be used.

#### Define Value Stream

* What is the value stream that is to be mapped?
* Where does the mapping process start and end?
* What context or conditions are being considered?
* What triggering event initiates the work flowing through the value stream?
* What is the demand rate? (The volume of incoming work per day, week, month, etc. relating to this value stream)
* (Optionally) Which team, project, feature, etc. is being mapped?
* Define boundaries and limitations
    * When looking at desired future state, it is very likely there will be certain limitations that the team needs to operate within (financial, systems, customer, organisational, physical, etc)
    * This is critical to avoid creating an unrealistic desired future state, or one that's simply not achievable in the defined time frame
* Define the time frame (How quickly do they need to realise the future state?)

Without the answers to these questions we risk spending significant time and energy trying to understand each possible variation and often will end up with metrics that are hard to define (the "it depends" trap). As such, it's critically important that these definitions are confirmed and agreed upon prior to the workshop (generally as part of the planning meeting).

### Value Stream Workshop

* People
* Process
* Tools
* Workflows
* Questions

#### People

| Role    | Responsibilities | GitLab Roles |
| -------- | ------- |------- |
| Scribe(s)  |A team member who's primary purpose is to document the session, capture key metrics as they emerge which will later be used to create a executive briefing template. |  AE, Shadow SA, CSM |
| Facilitator |A team member fully versed in the Value Stream Mapping process who is responsible for leading the session; ensuring that discussion is staying on-topic, at the right level and at the required pace.    |  SA |
| Account Leader |Ensure that the long term strategic vision for the prospect is considered when discussing desired future state and they can also provide additional context to the current state.  Schedule meetings with the Value Stream Workshop participants.  Send summary followup emails after each session ([template](https://docs.google.com/document/d/1Aq9J8akzXOngW2vP4GmObviZDP1lo9uRvbEl4ytxgQM/edit))Update VSW Tracking fields in Salesforce.| AE |

#### Process

The process which we will go through, at a high level, is as follows  (per functional persona/team, in a single workshop or across a few meetings):

1. Why we are here? (Exec sponsor led)
1. Re-iterate expectations set in the planning meeting
    1. Start and end points for the value stream
1. Current state
    1. Initial process "walk-through" / information discovery
        1. Capture people, processes and technology per persona/team ([information discovery guide](https://docs.google.com/spreadsheets/d/1uaXYION8me79Akm9KKhItAEZmGxaiZmKX8zRlLbs7vI/edit#gid=666358624))
    1. 2nd process "walk-through" (if needed)
1. Design future state (when doing a single workshop with all personas or in the planning meeting with your sponsor)
    1. Review the expectations again, to align the team on the target they are aiming to create
    1. Determine "right work" (which processes and steps are required for the value stream to be optimal)
        1. Remove processes and process steps when they are truely unnecessary
        1. Add processes and process steps when they can increase **overall** process time and lead time
    1. Making work flow
        1. Aim to reduce the lead time (LT), process time (PT) and achieve a higer percent complete and accurate (%C&A) for every process block where prossible
        1. Use Lean countermeasures and improvement tools
    1. Managing the work
        1. How will we measure if the value stream is performing as we intended? (KPIs)
        1. Who will monitor and manage the value stream performance?


#### Tools

* Remote:
    * [Google Sheets - Value Stream Mapping Template](https://docs.google.com/spreadsheets/d/1ioMIf_wV95mGUwjHezjT3zOTkEeG_gEnKanVS4hJB0k/edit?usp=sharing)
    * Zoom, MS Teams, or Google Meet
    * LucidChart for Value Stream Map visulization
      * LucidChart is an IT-managed application. If you are unsure if you have LucidChart access, go to the Okta interface in your browser, then select "Search Your Apps" and see if `LucidChart SSO` is available. If yes, LucidChart has been assigned to you and you can launch it from Okta and collaborate on any LucidChart Documents your team has shared with you. If no, then `LucidChart SSO` has not been assigned to you yet.
      * If you do not have `LucidChart SSO` assigned to you in Okta, please navigate to the ["access-requests" Project](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/) and submit an Issue requesting "Lucid Chart". Assign the Issue to your Manager and add the `IT::to do` label. An example Access Request Issue may be found [here](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/19341).
      * If your Access Request is urgent, paste the link to your Access Request Issue into the #it_help Slack channel and @ mention `it-help` with a note on why it is urgent.
* Onsite:
    * Stickies
    * Pens
    * Large whiteboard

#### Example Workflows

1. Idea to Production
1. Response to Production Incident
1. Toolchain Upgrading and Maintenance

##### Idea to Production

![Idea to Production](workflow-02.png)

##### Response to Production Incident

![Response to Production Incident](workflow-01.png)

##### Toolchain Upgrading and Maintenance

![Toolchain Upgrading and Maintenance](workflow-03.png)

### Executive Briefing - Summarize the Findings

The final meeting as part of the Value Stream Workshop process is the findings and next steps presentation (though it's called an executive presentation, it's expected to be a two-way discussion). The high level topics of this meeting are:

1. Summary of planning outcomes; what process was to be mapped and what target goals were created
1. Summary of the current state mapping (with VSM diagram)
1. Summary of the proposed future state mapping (with VSM diagram)
1. Highlight the key differences, expected process and business benefits
1. Walkthrough of recommendations
1. Walkthrough and gain agreement for the transformation plan. The transformation plan should be built in conjunction with professional services to yield best results. Please read how to position professional services in an opportunity [here](/handbook/solutions-architects/processes/#positioning-professional-services)
1. Define next steps and suggest a review date

Example template of the executive briefing can be found [here](https://docs.google.com/presentation/d/130KJLxGJlVxU0CiuofLwaPV7rV-_uEC31FV8xf62mCg/edit?usp=sharing). Please modify accordingly to suit your customer's need.

It is recommended to review the executive briefing with your champion, key stakeholder before the final meeting to collect additional feedback. The goal is to then deliver it jointly to the broader team to gain agreement.

### FAQs from customers/prospects

1. What's in it for me - the customer?
    * Free, hands-on consultative analysis of their software delivery lifecycle, including their current state, future state, and areas of improvements.
    * Competitive analysis of where they are compared to their peers in the industry. This report contains the most recent benchmark values for the four DORA metrics (widely regarded as good measures of DevOps performance) [State of DevOps Report 2021](https://services.google.com/fh/files/misc/state-of-devops-2021.pdf).
    * Recommendations on how to overcome visible or invisible challenges with a strategic plan to help them reach their future state.
1. What are typical outcomes for a customer?
    * For one medical device company in Silicon Valley, doing a Value Stream Workshop provided them with a tangible adoption plan to decrease their release cycle from 6 months to 1 months. It was specific, actionable, and realistic.
    * For a financial service bank, doing a Value Stream Workshop provided them with a comparison of their process with their peers, and the clear path forward to improve their processes, and ultimately allowed them to achieve a desired ROI of releasing software faster while increasing quality.

    * Financial Services customers have realized the below outcomes when coupling a Value Stream Workshop with GitLab investment:
        * Faster time to market
        * Increase deployment frequency
        * Reduced lead time to change
        * Improved change failure rate
        * Necessary capabilities obtained to drive transformation change (e.g., digital, DevOps, software delivery, modern applications)
1. Which teams are typically involved?
    * We start with application development team, quality engineering team, DevOps then application security.
1. What's the best place to start?
    * Pick the most business critical application or a representative application that has faster time to market requirement.
1. That's a lot of time investment from our teams Or Our teams are busy with other projects.
    * It takes 1 or 1.5 hr per team to do focused discovery for a Value Stream Workshop. We interviewed 4 different teams for our silicon valley customer in 4.5 hrs. We can start with the least busy team if you don't want it to be pursued in a group setting.
1. Can you interview 1 team at a time?
    * Yes. We would like to start with application development team if so. This helps us understand an overview of their development process(idea-production) process.



### Salesforce Tracking

[Three minute video overview](https://youtu.be/k_pJJuk-qTE) covering the fields and process described below.

The Account Leader (AE) is responsible for maintaining the Salesforce opportunity level VSW Tracking Fields outline below:

* **VSW Start Date** - Date of the VSW kickoff call with the prospect/customer.(This is the first meeting with the prospect/customer, after they've committed to do a VSW, to discuss [planning of the VSW workshop](#planning-meeting-with-customer).)
* **VSW End Date** - The date the VSW readout is presented to the prospect/customer or the date of the last meeting with the prospect if the VSW status is set to "Stalled."
* **VSW Status** - The status of the VSW where
  * **Planning** - Internal qualification and planning is occuring.  Please remove the status if it becomes unqualified during this step. VSW start date should not be set when this status is set.
  * **Pitched** - We've positioned a VSW with the prospect/customer.  VSW start date should not be set when this status is set.
  * **Accepted** - When the customer has agreed to do a VSW and has scheduled a kickoff call.  VSW start date should not be set when this status is set.
  * **In-process** - We've had a kickoff call, are actively facilitating the VSW, or are compiling the result for the readout.
  * **Completed** - We have presented the VSW executive readout to the prospect/customer.  VSW End Date should be set.
  * **Stalled** - We were in-process but the prospect/customer is non-responsive and we can't schedule additional interviews.  VSW End Date should be set.
* **VSW Readout** - The sentiment from the VSW Readout meeting.
  * **Positive** - The prospect/customer was highly receptive to our recommendations and we have progressive next steps.
  * **Neutral** - The prospect/customer was receptive but we do not have clear next steps.
  * **Negative** - The prospect/customer was not receptive to our recommendation.
* **VSW URL** - The URL to the the google drive folder containing the readout presentation and any other VSW artifacts.
* **VSW Start Date Net ARR** - (Auto populated field) The opportunity Net ARR when the VSW start date is populated.

Solutions Architects should leverage the following [SA Actiity Types](/handbook/solutions-architects/processes/activity-capture/activity-desc/#description-for-value-stream-workshop) when [loggin activity](/handbook/solutions-architects/processes/activity-capture/activity-desc/#description-for-value-stream-workshop)

* VSW Pitch
* VSW Execution

### Training and Enablement

The single source of truth for training and VSW artifacts can be found on the associated [HighSpot page](https://gitlab.highspot.com/items/6418507b8913729120197bbf).

#### Value Stream Workshop Overview

This course is designed to provide an overview of how GitLab account teams should assist prospects and customers by providing a lightweight assessment of their value stream. The course outlines the approaches, tools, and artifacts used to conduct a value stream assessment for our prospects and customers.

* [GitLab Value Stream Workshop Accreditation on LevelUp](https://levelup.gitlab.com/access/saml/login/internal-team-members?returnTo=https://levelup.gitlab.com/learn/learning-path/value-stream-assessment-accreditation)

#### Past Enablement

* [2023-03-23 Webcast - Winning With Value Stream Assessments - Jonathan Fullam](https://gitlab.highspot.com/items/641d1b3c054fb79cebe7288f)
* [2022-02-03 Webcast - Value Stream Assessment - Simon Mansfield, Reshmi Krishna](https://youtu.be/jfM3AG6dBFY)

## How to Contribute

In the spirit of collaboration and iteration, please help to continuously improve this framework. Ways to contribute include:

* Create a merge request to improve this page
* Add feedback or tasks to the [Value Stream Workshop Issue](https://gitlab.com/gitlab-com/customer-success/solutions-architecture-leaders/sa-initiatives/-/issues/44)
* Share your experiences in the **#customer-success** and **#solutions-architects** slack channels
* Provide feedback and/or updates to the positioning deck or provide links to your own variations
* Provide links to your facilitation recordings, summary documentation, and/or other artifacts to this page
* Collaborate in the **#value-stream-discovery** slack channel
