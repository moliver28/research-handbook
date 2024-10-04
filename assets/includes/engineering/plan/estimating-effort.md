When weighting an issue for a milestone, we use a lightweight, relative estimation approach, recognizing that [tasks often take longer than you think](https://erikbern.com/2019/04/15/why-software-projects-take-longer-than-you-think-a-statistical-model.html). These weights are primarily
used for capacity planning, ensuring that the total estimated effort aligns with each group's capacity for a milestone.

##### Key Principles

- **Relative Estimation:** We focus on the relative complexity and effort required for each issue rather than precise time estimates.
- **Aggregate Focus:** The sum of all issue weights should be reasonable for the milestone, even if individual issues vary in actual time taken.
- **Flexibility:** It’s acceptable for an issue to take more or less time than its weight suggests. Variations are expected due to differences in individual expertise and familiarity with the work.

##### Weight Definitions

| Weight | Meaning |
| --- | --- |
| 1 | Trivial, does not need any testing |
| 2 | Small, needs some testing but nothing involved |
| 3 | Medium, will take some time and collaboration |
| 4 | Substantial, will take significant time and collaboration to finish |
| 5 | Large, will take a major portion of the milestone to finish |

**Initial Planning:** During milestone planning, tasks can be estimated up to a weight of **5** if necessary. However, as the milestone approaches and the team moves closer to starting implementation, any task with a weight larger than **3** should be decomposed into smaller, more manageable issues or tasks with lower weights.

**Why This Approach:** Allowing larger weights early on provides flexibility in high-level planning. Breaking down tasks closer to implementation ensures better clarity, reduces risk, and facilitates more accurate tracking and execution.

We assess the available capacity for a milestone by reviewing recent milestones and upcoming team availability. This ensures that our milestone planning remains realistic and achievable based on the collective effort estimated through these weights.
