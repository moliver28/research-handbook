---
layout: markdown_page
title: "Architecture Design Workflow"
---

# Architecture Design Workflow

As engineers at GitLab, we lead the **evolution** of software, constantly
working to find the right balance between proactive work, reactive work, and
innovation. We strive to determine what work is important and what work is not,
leveraging knowledge from those that know the most about GitLab, and empowering
people to work on things that make everyone more productive. Experimenting and
innovating are core to how we work, and **we focus on collaboration, results
and iteration** to achieve our goals.

With growth, however, comes complexity. An organic approach to our work
sometimes requires help to ensure we are most efficient. Help may be in the
form of validating our technical approaches, ensuring organizational alignment
across teams and departments, and driving priorities to key decision makers.
**Technical Engineering Leaders take on the task of helping engineers through
these challenges**. The **Architecture Design Workflow** is intended to provide
guidance, influence amplification, iteration framework and additional
visibility to drive the solution of complex problems both technically and
organizationally.

## Design Documents

Design documents are the primary artifact that the workflow revolves around.
They are version controlled documents that are released alongside our
[user-facing documentation](https://gitlab.com/gitlab-org/gitlab/-/tree/master/doc/architecture/blueprints)
and you can find [a list of published ones](https://docs.gitlab.com/ee/architecture) there too.

Long-term iterations, longer than a single milestone, either on features or
maintenance tasks, are challenging because it is easy to lose consensus,
conceptual integrity, architectural consistency, or alignment in why and how we
are doing something.

A design document describes a technical vision and a set of principles that
will guide implementation, as we move forward. It acts as guardrails to keep
team aligned. Design documents get constantly updated with new insights and
knowledge, after every iteration, to become even more useful with time.

You can start with a design document that is one paragraph long, and evolve the
content as you move forward with your exploratory work, depending on what you
learn along the way.

### Why are design documents tracked in merge requests?

Design documents are tracked as version controlled artifacts. This enables
anyone to propose changes in the form of merge requests. Engineers usually
provide feedback in code review process by leaving comments in merge requests'
diffs. We are using the same process here. By doing so we can ensure that:

- there is always a single document that represents the current state of a given proposal
- you do not have to traverse multiple issues or threaded discussions to grok our direction
- feedback can be given and applied in the form of concrete suggestions using 'suggestions' feature
- proposals / changes are being made in merge requests, using "design as code" workflow

### Do I need to use Architecture Design Workflow?

Using the workflow is recommended for changes that meet any of the following
conditions:

- requires coordination across multiple functions
- could impact overall system stability
- requires more implementation time than two milestones
- changes GitLab in a significant way
- impacts the operation of GitLab substantially
- introduce special handling across distributions and deployments
- adds a new service outside of the rails monolith, or an additional data source.

Invoking this workflow is unnecessary if:

- fixing a flaky test
- minor refactoring of code
- small performance improvements
- upgrading versions of dependencies

Invoking the architecture design workflow is also not necessary when you are
doing a complex thing that you have a lot of experience with, and you've done
at GitLab many times before. In such case, then perhaps there is no benefit in
involving a Coach and using the workflow.

Please use a pragmatic approach when deciding whether to use the workflow or a
regular lightweight design process by considering the cost (process overhead) /
benefit (guidance, coaching, visibility) ratio.

## Design Workflow: Summary

The workflow is divided into two phases: a design phase, and an implementation
phase. The main focus is on the design phase, but the process also extends
beyond it.

As an engineer, you and your manager determine whether to invoke the
Architecture Design Workflow. When in doubt, do not hesitate to reach out to
a Principal+ Engineer for input.

### Design Phase

1. Start writing a design document somewhere! Depending on whether the content
   can be considered [SAFE](/handbook/legal/safe-framework/) or not you may
   want to do that in a private space first. If you don't know what content to
   start with you can use [a template](https://gitlab.com/gitlab-org/gitlab/-/blob/master/doc/architecture/blueprints/_template.md?plain=1).
   You will find a couple of suggestions there and a markdown front matter we
   use for status tracking.
1. Open a [merge request](https://gitlab.com/gitlab-org/gitlab/-/tree/master/doc/architecture/blueprints)
   if you have not done it already and if it is SAFE to do so.
1. Post a link to your design document, with a brief description of it, in the
   internal [`#architecture`](https://gitlab.slack.com/archives/CJ4DB7517)
   channel on Slack for additional visibility and transparency.
1. If your design document describes an complex effort that will span
   multiple milestones, you may want to involve a Coach: a Principal+ Engineer
   who will support you throughout process of describing a technical vision in
   your design document.
1. Work with all of the stakeholders and domain experts to get your design
   reviewed, refined, approved and merged!
1. Assign DRIs that will drive the implementation effort.

### Implementation phase

Once your design document has been merged you can start collaborating with the DRIs
to get the work done in a way that seems best for everyone involved.

The design document is an artifact that accompanies you during the
implementation journey. After each iteration you can get back to it, to update
it with the current state of the engineering initiative.

1. Assign DRIs.
1. Iterate on the change in a way it has been described in your design document.
1. Once you learn something new, or want to make a change, update the design document.
1. Involve a Coach when needed to help you move forward with the implementation.
1. Repeat the process until your proposal has been implemented!

## Design Workflow: The Detailed View

### Design Phase

Anyone can propose a change they believe we should work on. When these changes
turn out to be too intricate for a single individual contributor to handle
(complex backstage improvements, architectural changes, productivity or
efficiency improvements), or they span multiple iterations or teams, it may be
helpful to invoke the Architecture Design Workflow, as the proposal itself may
not be something that is directly actionable.

The author of the proposal can collaborate with a Coach, who will involve the
right people to make sure that the proposal is well described and gets
considered for implementation.

### Roles

#### The Author

As the original author of a proposal, you are the primary DRI during the design
phase.

#### The Coach

Coach is a Principal+ Engineer, who has been already involved in work on the
complex technical initiatives, who can guide the author throughout the process
as a mentor and a coach.

The purpose of involving a coach in the process of writing a design document is
to allow people that know most about GitLab to share their knowledge and
perspective on introducing complex architectural changes, help navigate
organizational challenges, ensure the proposal is aligned with our roadmap, and
help management Engineering Leaders prioritize the work.

**Involving a Coach is optional**, but we strongly advise to involve one if:

1. Accepting a proposal outlined in the design document means that we will need
   to spend 6+ milestones on the implementation.
1. Multiple people from a team or a department will need to be involved in the
   implementation for a longer period of time.
1. It is a cross-functional or foundational initiative, where a single team
   will not be enough to implement a vision described in the design document.
1. A team struggles to describe the proposal in a design document and would
   greatly benefit from involving a Coach to provide guidance and mentoring.

#### The Engineering Management Leader

The Coach may be able to help you identify the right management Engineering
Leader to evaluate the proposal. Managers are key decision-makers, and,
ultimately, will help to navigate the organizational complexities to get your
proposal approved and funded.

#### The Product Management Leader

The Engineering Management Leader and a Coach might be able to help you to
identify the right Product Manager to collaborate on the proposal. PMs are the
decision-makers that will help to include your proposal in the stream of work
that is always in-flight. PMs can also help with funding your proposal if the
believe that we need to hire new people to get it done or to invoke other
processes to find people who can work on it.

#### Domain Experts

[Domain Experts](https://docs.gitlab.com/ee/development/code_review.html#domain-experts)
are engineers with a deep understanding of one or more particular areas. Domain
Experts:

1. Help to ensure conceptual integrity of the features and changes their groups
   / stages / sections are working on
1. Help to collaborate with EMs and PMs and other Engineers to ensure the
   quality of work done in their area of interest
1. Help to plan and draft necessary architectural and conceptual changes that
   will become a leverage in their area of interest

A Domain Expert is an engineer, usually an individual contributor, who knows
most about specific aspects of the codebase and a domain in the area of
proposed changes, but might still lack the deep understanding of the process
behind introducing complex architectural changes, hence the collaboration
between a Domain Expert and a Coach might be very useful.

#### Functional Experts

Functional Experts are engineers with deep knowledge across specific functional
areas, which include [Security](/handbook/security/#-contacting-the-team), QA,
Database, and Infrastructure. You should always consider involving these
functional experts during the creation of a design document, so that we
generate awareness early in the cycle and so that they can provide their input.

### Design Document

The Author is a DRI responsible for driving the process of writing a design document. They can collaborate with a Coach, Engineering Management Leader,
Product Management Leader, Domain Experts, Functional Experts during the process.

First page of the design document should outline the main vision of a change.
Technical details can go into subpages, or be extracted into issues / epics.
The first paragraph should be written as an "executive summary". The main page
of the design document, and especially the summary, should not be deeply
technical.

Beyond that the design document is a description of [Why, How and What](https://en.wikipedia.org/wiki/Start_With_Why)
of the change that has been proposed. It is also a mind map of future
iterations. It describes challenges, opportunities and a technical vision that
are supposed to guide team members throughout their iterations, even though
usually not many technical details are required. As we move forward with
implementation and iterate on a project, we continuously incorporate feedback
gained after each of the iterations, into the design document itself.

Merged design documents will be published on our [documentation website](https://docs.gitlab.com/ee/architecture/)

If you don't know what content you could put into a design document, you can use
[this template](https://gitlab.com/gitlab-org/gitlab/-/blob/master/doc/architecture/blueprints/_template.md?plain=1)
as a starting point.

Please be conscious of our [SAFE](/handbook/legal/safe-framework/) framework
guidelines, and start collaborating on a design document in a private space
(like a Google Doc) if it should not be made public.

### Implementation Phase

Once the design document gets approved and merged it is important to assign DRIs.
It is usually good to assign DRIs from three different areas of the organization:

1. An Engineering Management Leader (for example - Director of Engineering)
1. A Product Management Leader (for example - Senior Product Manager)
1. A Technical Leader (for example - Senior Backend Engineer)

These people will be responsible for the implementation phase of the design document.

DRIs can decide to start a [Working Group](/company/team/structure/working-groups/)
to add an additional structure to the efforts related to the change. Key
considerations in deciding to form a Working Group are the size, complexity,
and organizational impact of the change.

#### Amplification

We recognize the challenge of implementing complex changes or features, over
many months or even years. It is difficult to start such a work, fund it in the
long term and avoid disruptive distractions as the implementation moves
forward.

Design documents are often written by individual engineers, yet these documents
usually describe far-reaching visions. Implementing such a vision takes time
and might require funding. The Architecture Design Workflow has been built
to better support teams in getting this kind of work done. There are a few
associated processes, established to increase the likelihood of a success.

One of processes designed to help is a monthly Architecture Evolution Sync
meeting with Engineering Fellows and Engineering Leadership, among others. The
purpose of this meeting is to:

- Increase visibility and awareness of key design documents.
- Coordinate large initiatives across the organization.
- Provide status updates about the most important initiatives.
- Receive guidance regarding staffing and funding.

#### Evolution

Once the work starts, it is important to realize that working on complex
technical / architectural initiatives is an evolutionary process. The DRIs will
be responsible for getting back to the content described in the design
document, to update it with the information from the feedback every iteration
gives them.  The design document evolves as the implementation continues.

### Finally

When the work is completed, design documents no longer represent a
forward-looking vision, instead the content describes work done. As such, they
can be removed from *docs.gitlab.com* website or transformed into blog posts.
