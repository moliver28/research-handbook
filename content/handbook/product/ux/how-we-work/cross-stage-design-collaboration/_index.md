---
title: "Cross-stage design collaboration"
description: "The UX Department works alongside the community, Product Management, Development, Quality, and Brand teams to design the GitLab product. Our users' workflows often cross multiple areas of the GitLab product. In these instances, it's best for our teams to work collaboratively across stages."
---

### How do we determine if the topic is cross-stage design

There are several points during the design process where we might identify cross-stage collaboration needs. It is recommended to involve potential partners as early as possible. It is best to determine if there is a collaboration need quickly rather than have to backtrack later when it is too late.

**During the discovery and research phase**, it is essential to pay attention to the user journey or other types of research reports; from the research insights, we can assess if the user is using multiple features that cross-stages or if the pain points involve features owned by different teams.

**During the design phase**, there could be signs that we need to contact other teams for potential collaboration. First, the target user is the primary persona of another stage; second, the use case you are targeting is part of a JTBD belonging to another stage; third, the feature you are designing exists in a page/area belonging to another stage; and last, some part of the user's journey is using some features that belong to another stage.

**For Pajamas contributions**, it is a collaboration-first approach. When designing a component, we want to ensure that the component is suitable for all areas. When we design reusable features and components, such as search or filtering, it is better to collaborate with more than one designer to consider the frequency and complexity of these features in the product.

### How can we find the right DRI for a particular feature

GitLab has a wide range of product features. Several resources can help us identify the [Directly Responsible Individual (DRI)](/handbook/people-group/directly-responsible-individuals/) for each feature:

- Which feature belongs to which group: use the [category page](/handbook/product/categories/) and the [feature page](/handbook/product/categories/features/)
- Who is responsible for the feature: use the [team page](/handbook/product/categories/#dev-section)
Ask in the [#ux-coworking](https://gitlab.slack.com/archives/CLW71KM96) channel if you can't find the answer using the above resources

### When should we contact the other team(s)

During the planning phase, if you can anticipate a certain amount of effort will be needed from other team members, it's better to contact them as soon as possible. Suggestions:

- Contact the other team(s) **before** problem validation if we can anticipate that they may want or be able to contribute to the research.
- Contact the other team(s) **after** problem validation in relation to the research insights if a collaboration opportunity was uncovered during the research.
If, for some reason, another relevant team was not involved before problem validation, make sure to involve them as early as possible in the design discovery and exploration process and provide opportunities for the other team(s) to provide feedback on the ideal future-state design, to avoid duplicative work.

### What kind of information would be helpful for teams for better cross-stage collaboration

**At the problem validation stage**, the goal of the collaboration is to make sure the problems are the right ones to solve by all parties, so it's recommended to have the following information:

- Jobs To Be Done (JTBD) and personas
- Related previous research
- A research plan (or at least some research questions or a hypothesis to be answered)
**At the design stage**, the goal is to design a solution together that matches all user needs and workflows. Therefore, it is essential to have clear documentation of the following:
- How the feature works: both from the user's point of view and a technical point of view.
- The precise problem statement, JTBD, and persona(s)
- Relevant user feedback/ UXR insights and data
- Design scope and urgency: this helps all teams figure out a prioritization and collaboration plan

### What needs to be agreed upon for better cross-stage design collaboration

To execute effective collaboration, come to an agreement on the following with your team and relevant design partners:

- Prioritization: It is ideal if all teams agree on when this problem needs to be addressed, and both the leading team and supporting team should plan together. However, if one team needs the feature sooner to solve confirmed user pain points, the team can be the DRI and move forward with an MVC. At the same time, keep the discussions ongoing for further design, research, and development plans for the next step.
- Effort and timing: Based on the prioritization, all teams should agree on clear effort needs from each team and the time frame for the project.
- Who leads the collaboration: There is no definite answer to who is leading the design and implementation. In general, consider the urgency of the need and the capacity of both the leading designer and the designer who provides support. For example, if two different teams will lead the implementation and design, the implementation should be at most six months after the design effort is done.

### Cross-stage design collaboration frameworks

The collaboration methods can be flexible. You can collaborate like [design pairs](how-we-work/#https://handbook.gitlab.com/handbook/product/ux/pair-designing). Or use formal frameworks to help designers work together, consider using those, especially when there are more than two designers. [Design Pod](/handbook/product/ux/how-we-work/cross-stage-design-collaboration/design-pod) is a framework that has clearly defined roles and responsibilities and is tasked with achieving a high-impact business goal. If the design collaboration is more aimed at exploitation without a clear business goal, consider using a Design Jam instead.

### Tips for cross-stage collaboration

- Keep a single source of truth in one issue/epic.
- Have a list of todos and be sure to check them off when complete so that it is clear and straightforward to everyone what the current status is and what still needs to be done.
- Have a "parking lot" issue to put future (post-MVC) ideas/ discussions in.
- Have a sync session or record a video walking through the prototype to show the context of the product.
Always assume positive intent (and other communication tips per our handbook). And keep in mind that all GitLab users are essential, not just those that our stages tend to prioritize.
