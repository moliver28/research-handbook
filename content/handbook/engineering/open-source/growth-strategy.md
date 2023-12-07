---
aliases: /handbook/engineering/open-source/growth-strategy.html
title: "Open Source Growth Strategy"
---

## Strategy

We will be executing in 4 key areas in support of the company's broader [dual-flywheels](/company/strategy/#dual-flywheels) strategy to attain more contributions. The 4 key areas together are the building blocks of our contributor & contribution 10x acceleration strategy.

```mermaid
flowchart LR
  subgraph moreContributions["More Contributions"]
    contributorIncrease["Contributor Increase"]
    contributionIncrease["Contribution Increase"]
    increaseValue("Increase Contribution Value")
    improveVelocity("Improve Contribution Velocity")
    scaleCommunity("Scale the Community")
    expandOutreach("Expand Outreach")
    scaleCommunity-->improveVelocity
    scaleCommunity-->increaseValue
    expandOutreach-->scaleCommunity
    increaseValue-->contributionIncrease
    improveVelocity-->contributorIncrease
  end
  style moreContributions fill:#FFF, stroke:#9370DB, stroke-dasharray: 5 5
  style contributionIncrease fill:#9370DB,stroke:#9370DB,stroke-width:10px
  style contributorIncrease fill:#9370DB,stroke:#9370DB,stroke-width:10px
  style improveVelocity color:#6b4fbb, stroke:#9370DB
  style increaseValue color:#6b4fbb, stroke:#9370DB
  style expandOutreach color:#6b4fbb, stroke:#9370DB
  style scaleCommunity color:#6b4fbb, stroke:#9370DB
  click improveVelocity "./#improve-contribution-velocity" _self
  click increaseValue "./#increase-contribution-value" _self
  click expandOutreach "./#expand-outreach" _self
  click scaleCommunity "./#scale-the-community" _self
 ```

### Improve Contribution Velocity

Provide an outstanding and efficient contributor experience, from onboarding materials to final merge. Improve Contributor Journey, making it easier and more efficient to contribute. Gather feedback from wider community contributors and product teams on contribution friction.

#### Reduce Open Community MR Age

* **Why:** Improve the speed of contribution to production by reducing [Open community MR Age (OCMA)](/handbook/marketing/developer-relations/performance-indicators/#open-community-mr-age) & review time. We have identified product groups with the highest OCMA. Analysis and improvements are needed to address product groups with the biggest opportunity. In addition to improving MR review and gathering feedback.
* **Epic:** <https://gitlab.com/groups/gitlab-org/-/epics/9073>
* **DRI:** [Contributor Success team](/handbook/marketing/developer-relations/contributor-success/)

#### Simplify & improve contribution guides

* **Why:** Make contribution guides easy to navigate. Our current contribution guides are fragmented and can be hard for new contributors to navigate and understand.
* **Epic:** <https://gitlab.com/groups/gitlab-com/quality/-/epics/16>
* **DRI:** [Developer Relations team](/handbook/marketing/developer-relations/)

#### Improve contribution tooling

* **Why:** Provide fast and efficient contributor experience via our tooling. Our contributor tooling needs to be optimized for contributor productivity
* **Epic:** <https://gitlab.com/groups/gitlab-com/quality/-/epics/2>
* **DRI:** [Engineering Productivity team](/handbook/engineering/quality/engineering-productivity/)

#### Product groups focus

* **Why:** Contribution submissions, backlog, and technology stack vary amongst all [product groups](/company/team/structure/#product-groups). Providing a healthy community backlog alignment & establishing a common best practice outreach for all product groups.
* **Epic:** <https://gitlab.com/groups/gitlab-org/-/epics/9074>
* **DRI:** [Product Operations](/handbook/product/product-operations/), [Developer Relations team](/handbook/marketing/developer-relations/) & [Contributor Success team](/handbook/marketing/developer-relations/contributor-success/)

#### Unified Workflow

* **Why:** By reducing workflows that are unique to team members or wider community members, we can create more clarity to everyone in documentation, automation and communication, delivering a boost in velocity.
* **Epic:** <https://gitlab.com/groups/gitlab-org/-/epics/11649>
* **DRI:** [Contributor Success team](/handbook/marketing/developer-relations/contributor-success/)

### Increase Contribution Value

Incentivize, attract and retain contributors by providing a compelling value and regular recognition of contributors for their work. Contributor career advancement materials and awards.

#### Define contributor value proposition

* **Why:** We need a clear definition of what drives people to contribute to GitLab and to present a compelling value proposition for increasing code contribution.
* **Epic:** <https://gitlab.com/groups/gitlab-com/quality/-/epics/11>
* **DRI:** [Developer Relations team](/handbook/marketing/developer-relations/)

#### Developer badges & certification

* **Why:** Implement a badging system and eventually work towards a certification program for GitLab developers
* **Epic:** <https://gitlab.com/groups/gitlab-org/-/epics/9075>
* **DRI:** [Contributor Success team](/handbook/marketing/developer-relations/contributor-success/)

#### Contributor recognition

* **Why:** Provide sustained and impactful recognition to recognize & retain our contributors. Increase frequency and targeted recognition to types and persona of contributors
* **Epic:** <https://gitlab.com/groups/gitlab-org/-/epics/9076>
* **DRI:** [Contributor Success team](/handbook/marketing/developer-relations/contributor-success/) & [Developer Relations team](/handbook/marketing/developer-relations/)

#### Contributor career advancement

* **Why:** In Open Source Projects, the contributors’ motivation in addition to solving a bug or adding a missing feature is to get experience and build their CV for career advancement.
* **Epic:** <https://gitlab.com/groups/gitlab-org/-/epics/9077>
* **DRI:** [Contributor Success team](/handbook/marketing/developer-relations/contributor-success/)

### Expand Outreach

Increase awareness with content and events to drive large amounts of contributors. Our outreach efforts so far have been limited. A proactive and focused effort to bring awareness and drive members from external communities will be required. Engineering to work alongside Developer Relations in expanded outreach events.

#### Increase contribution backlog exposure

* **Why:**  Contributing as a new member to a massive project can be overwhelming, which can lead to analysis paralysis and potentially losing contributors. We should offer a lens into a discoverable, sizable set of issues we can direct newcomers to. Consider using established 3rd party platforms.
* **Epic:** <https://gitlab.com/groups/gitlab-com/quality/-/epics/12>
* **DRI:** [Developer Relations team](/handbook/marketing/developer-relations/)

#### Scale contributor events

* **Why:** Build a sense of belonging, provide the social environment for contributors to have their voice, meet with their peers, share knowledge and celebrate.
* **Epic:** <https://gitlab.com/groups/gitlab-org/-/epics/9078>
* **DRI:** [Developer Relations team](/handbook/marketing/developer-relations/) & [Contributor Success team](/handbook/marketing/developer-relations/contributor-success/)

#### Community office hours

* **Why:** We need to scale office hour calls that have traditionally been a unique opportunity for product groups to provide support, guidance to code contributors as well as gather feedback.
* **Epic:** <https://gitlab.com/groups/gitlab-com/quality/-/epics/14>
* **Status:** Resolved
* **DRI:** [Developer Relations team](/handbook/marketing/developer-relations/) & [Contributor Success team](/handbook/marketing/developer-relations/contributor-success/)

#### Increase social presence

* **Why:** Increase our social media presence beyond the currently limited mediums (Twitter, Discord), which will allow us to tap into existing developer communities.
* **Epic:** <https://gitlab.com/groups/gitlab-com/quality/-/epics/15>
* **DRI:** [Developer Relations team](/handbook/marketing/developer-relations/)

### Scale the Community

Leverage the full-time customer contributor model and create wider community teams for rapid growth.

#### Create a governance model & allow community participation in decision-making

* **Why:** A decision making model that works for the entire community allows us to make decisions faster. It allows wider community members with multiple domain expertise to make decisions on GitLab changes. It allows the maintainers to have the final sign-off. It lets the community be in the driving seat and fosters growth.
* **Epic:** <https://gitlab.com/groups/gitlab-org/-/epics/9079>
* **DRI:** [Contributor Success team](/handbook/marketing/developer-relations/contributor-success/)

#### Returning & Frequent Contributors

* **Why:** Increased contribution by motivating recurring contributions from organizations that use or extend GitLab, such as customers, partners and OSS communities. Reward those that achieve that status with GitLab benefits that are valuable to the individual and the organization.
* **Epic:** <https://gitlab.com/groups/gitlab-org/-/epics/9080>
* **DRI:** [Developer Relations team](/handbook/marketing/developer-relations/) & [Contributor Success team](/handbook/marketing/developer-relations/contributor-success/)

#### Foster more collaboration

* **Why:** We would like to depart from having contributors work single-handedly and create a team that can do more together.
* **Epic:** <https://gitlab.com/groups/gitlab-org/-/epics/9081>
* **DRI:** [Contributor Success team](/handbook/marketing/developer-relations/contributor-success/)

#### Contribution specialization

* **Why:** To surface contribution opportunities tailored to tech professions, implement frontend, backend, UX, Test and etc specialization in contribution types and MR coaches. This also allows a more aligned interaction between contributor and MR coaches of the same specialization.
* **Epic:** <https://gitlab.com/groups/gitlab-org/-/epics/9082>
* **DRI:** [Contributor Success team](/handbook/marketing/developer-relations/contributor-success/)
