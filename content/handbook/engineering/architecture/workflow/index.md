---
title: "Architecture Design Workflow"
---

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
They are version controlled documents that are released in this handbook
[user-facing documentation](https://gitlab.com/gitlab-com/content-sites/handbook/-/tree/main/content/handbook/engineering/architecture/design-documents)
and you can find [a list of published ones](design-documents/) there too.
Some of the design documents also live in separate repositories when a
design doc has to be confidential or when custom project configuration is
needed, see [GCP integration design doc](https://gitlab.com/gitlab-org/architecture/gitlab-gcp-integration/design-doc)
as an example.

Long-term iterations, longer than a single milestone, either on features or
maintenance tasks, are challenging because it is easy to lose focus, consensus,
conceptual integrity, architectural consistency, or alignment in why and how we
are doing something.

A design document describes a technical vision, a set of principles and key
architectural decisions that will guide implementation, as we move forward. It
acts as guardrails to keep team aligned. Design documents get constantly updated
with new insights and knowledge, after every iteration, to become even more
useful with time.

You can start with a design document that is one paragraph long, and evolve the
content as you move forward with your exploratory work, depending on what you
learn along the way. Design documents are not supposed to be complete and
detailed blueprints written upfront before we start implementation.

### Why are design documents tracked in merge requests?

Design documents are tracked as version controlled artifacts. This enables
anyone to propose changes in the form of merge requests. The merge requests can
be reviewed and approved before merging. Engineers usually provide feedback in
code review process by leaving comments in merge requests' diffs. We are using
the same process here. By doing so we can ensure that:

- there is always a single document that represents the current state of a given proposal
- you do not have to traverse multiple issues or threaded discussions to understand the direction
- feedback can be given and applied in the form of concrete suggestions and comments
- proposals / changes / decisions are being made in merge requests using "design as code" workflow

### Do I need to use Architecture Design Workflow?

Using the workflow is recommended for changes that meet any of the following
conditions:

- requires coordination across multiple functions, teams, departments
- could impact overall system stability, availability or performance
- multiple team members are being involved across multiple milestones
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

## Architecture Design Workflow

### Summary

1. Start writing a design document! Depending on whether the content
   can be considered [SAFE](/handbook/legal/safe-framework/) or not you may
   want to do that in a private space first. If you don't know what content to
   start with you can use [a template](https://gitlab.com/gitlab-com/content-sites/handbook/-/blob/main/content/handbook/engineering/architecture/design-documents/_template.md?plain=1).
   You will find a couple of suggestions there and a markdown front matter we
   use for status tracking.
1. Open a [merge request](https://gitlab.com/gitlab-com/content-sites/handbook/-/tree/main/content/handbook/engineering/architecture/design-documents)
   if you have not done it already and if it is SAFE to do so.
1. Post a link to your design document, with a brief description of it, in the
   internal [`#architecture`](https://gitlab.slack.com/archives/CJ4DB7517)
   channel on Slack for additional visibility and transparency.
1. If your design document describes a complex effort that will span
   multiple milestones, you may want to involve a [Coach Engineer](#the-coach-engineer):
   usually a Principal+ Engineer who will support you throughout process of
   describing a technical vision in your design document.
1. Work with the stakeholders and [domain experts](#domain-experts) to get your
   design reviewed and commented on. Design docs don't need to be comprehesive
   nor complete on the first iteration. They can be refined and enriched with
   details in iterations, as we discover important design aspects, fundamental
   design areas, key decisions. We advise to get our initial design doc merged
   as soon as possible.
1. Start exploration, research and implementation! Start writing code as soon as
   possible!
1. Iterate on the design doc in parallel as you discover new details, make
   fundamental design decisions, learn more about how you want to proceed with
   the implementation refine the content of the document frequently.
1. Take a look at existing design docs and learn from past experiences of
   engineers who have been successful with using the workflow.
1. Improve the workflow if you learn something that will make us all more
   productive next time!

### Roles

#### The Author

As the original author you are the primary DRI responsible writing the design
doc.

The Author is a DRI responsible for driving the process of writing a design
document. They can collaborate with a Coach, Engineering Management Leader,
Product Management Leader, Domain Experts, Functional Experts during the
process.

#### The Coach Engineer

Coach is a Principal+ Engineer, who has been already involved in work on the
complex technical initiatives, who can guide the author throughout the process
as a mentor and a coach.

The purpose of involving a coach in the process of writing a design document is
to allow people that know most about GitLab to share their knowledge and
perspective on introducing complex architectural changes, help navigate
organizational challenges, ensure the proposal is aligned with our roadmap, and
help management Engineering Leaders prioritize the work.

**Involving a Coach Engineer is optional**, but we strongly advise to involve one if:

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

### Design doc structure

A design doc is usually divided into multiple sections:

1. The introduction
1. Business objectives
1. High-level overview
1. Goals and key results
1. Current state pointer
1. Fundamental design areas
1. Key design decisions
1. Implementation details
1. Closing summary and references

As an author you decide which sections you want to include in your design doc.
Merged design documents will be published in our [public handbook](design-documents/).

#### Introduction

The introduction is a high-level executive summary explaining why we are doing
something and what is our approach to getting the thing done. The audience of
the here is very broad, so it is important to avoid excessive technical language.

#### Objectives

If the architecture design workflow is being used it means that what we want to
accomplish is going to be non-trivial and presumably expensive for the company.
An investment like this should have a solid business justification, we should
know what is going to be a business impact. It is recommended to add a note
about expected business results to a design doc.

#### Overview

The main design doc's content is usually a high-level overview of why and how we
want something to be implemented.

There are many ways in which a design doc can be written. We encourage taking a
pragmatic approach to writing a design doc: choose a way that works well in your
case. One of the frequently used ways is to keep the overview section short and
keeping it up-to-date. Find existing docs that have proven to be useful to
better understand how it can be written.

#### Decisions

We strongly recommend documenting key decisions made about fundamental aspects
of the design in the design doc. These decisions are going to become important
checkpoints during the implementation, and will provide more clarity around the
direction to newcomers.

To document a decision a lightweight process can be used:

- Identify fundamental design problems and note them down.
- Breakdown complex decisions into smaller ones, if needed.
- Describe the context on what we need to make a decision on.
- Document benefits, trade-offs and alternatives considered.
- Document why a specific solution was chosen.

You can use a lightweight Architectural Decision Record (ADR).
See an [example here](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/132129).
We recommend to add ADRs as subpages, and link them from a `Decision` section
on the main page of the design doc. An ADR usually has a few key sections:
context, decision, consequences, alternatives considered.

An example of an important design area could be "Client-server communication
protocol", while an example of decision could be: "Use Protocol Buffers as data
serialization format".

Team members often write **immutable ADRs**. If a decision has to be changed, we
can note that it has been superseeded and create a new ADR with the new
decision. This helps to reduce the amount of work required to keep a design doc
up-to-date. See an example in [GCP integration](https://gitlab.com/gitlab-org/architecture/gitlab-gcp-integration/design-doc)
design doc.

Sometimes it also makes sense to document known engineering areas in which we
haven't made any decisions yet, but we know we will have to. We call them
"fundamental design areas".

#### Implementation Details

As we move forward with implementation and iterate on a project, we continuously
incorporate feedback gained after each of the iterations and we often add it
into the design document itself. Technical details can go into subpages to keep
the main page of the design document (with the [overview](#overview)) short and
easy to read. Implementation details can be also extracted into issues / epics.

### Getting things done

Each design doc requires DRIs. DRIs decide on how to proceed with the design
doc, how to get it implemented, using known organizational tools and frameworks,
like a [Working Group](/handbook/company/working-groups/).

Typically we either proceed with a WG or with a dedicated team which will focus
on executing on a design document.

#### Amplification

Anyone can propose a change they believe we should work on. When these changes
turn out to be too intricate for a single individual contributor to handle
(complex backstage improvements, architectural changes, productivity or
efficiency improvements), or they span multiple iterations or teams, it may be
helpful to use the Architecture Design Workflow to get the proposal captured in
a design doc. The author of the proposal can collaborate with a Coach Engineer,
who will involve the right people to make sure that the proposal is well
described and gets considered for implementation.

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

#### Iteration

The Architecture Design Workflow does not dictate how much time you should spend
on the design phase, before you start writing producition code. It is
recommended to start writing a design doc and start writing code at around the
same time, but in certain cases it might be beneficial to spend more time on the
careful design upfront, followed by a set of feasibility studies before the
actual implementation starts. In the former case a design doc is a technical
artifact which evolves in parallel to us building the actual solution. In the
latter case, we make an implementation proposal before the implementation
starts, and then refine the design doc as needed as we move forward. In either
case the design doc will keep changing; it is rarely possible to write a design
doc and then to implement it without changing something during the process. Use
a pragmatic approach here, involve Coach Engineers if needed. There
is [no right or wrong here](https://docs.google.com/document/d/1UKAK51eyy7dOA9pRWz_VDEVhO6c2VBHoQ6MUB0RdvM8/edit#bookmark=id.9x1w2dmm4v52).

### Finally

When the work is completed, design documents no longer represent a
forward-looking vision, instead the content describes the work that has been
done and decisions that has been made. As such, a design document should be
updated to become more useful as a knowledge-sharing artifact, helping new
engineers and contributors to get familiar with design decisions and
architectural choices more quickly. If you are using an immutable architectural
decisions log (ADRs) updating the design doc should not require a lot of effort.
Alternatively you can archive a design doc if using it as documentation does not
serve any meaningful purpose.
