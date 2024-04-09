---
title: Jobs to be Done at GitLab
description: >-
  JTBD is a framework for viewing products and solutions in terms of jobs
  customers want to achieve. It's about understanding the goals that people want
  to accomplish.
---

Jobs to be Done (JTBD) is a framework for viewing products and solutions from the user's perspective. It's about understanding what people want to achieve so we can build a better solution that reflects those desires. The purpose of these materials is to empower GitLab team members to uncover user needs, identify strategic opportunities, validate existing plans, and open the door to innovation.

Much of what follows on this page and our other JTBD pages (Playbook, Deep Dive) borrows heavily from [Jim Kalbach](https://www.jtbdtoolkit.com/) and his book, “[The Jobs to be Done Playbook](https://www.amazon.com/Jobs-Be-Done-Playbook-Organization/dp/1933820683)”. 

This page covers the 'what' of Jobs to be Done. To skip to the 'how', or the _practice_ of doing Jobs to be Done research, head over to the [playbook](/handbook/product/ux/jobs-to-be-done/jtbd-playbook).

Note: the previous single source of truth for all the JTBD at GitLab ([a yml file](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/jobs_to_be_done.yml?_gl=1%2a1hjur0y%2a_ga%2aNDkwNzM2Mzg5LjE2MzUxODMzMTE.%2a_ga_ENFH3X7M5Y%2aMTY2ODAxOTA2Mi42Ni4xLjE2NjgwMTk2MjUuMC4wLjA.), internal only) is in the process of being replaced. In the meantime, GitLab teams performing JTBD should keep track of their [playbook](/handbook/product/ux/jobs-to-be-done/jtbd-playbook) work in FigJam. A handbook page containing all the JTBD will be created shortly.

## Anatomy of a JTBD Canvas

A Job to be Done Canvas is a way to arrange all of the elements of a [main job](#main-job-where-do-you-want-to-innovate) in an easy to read format, well-suited for iteration, sharing, and documentation. We use canvases throughout our [JTBD playbook](/handbook/product/ux/jobs-to-be-done/jtbd-playbook), as part of our [FigJam template](https://www.figma.com/file/Z4lsAOLH1ANN3pstQFYgSk/Jobs-to-be-done----Playbook-Template?type=whiteboard&node-id=0%3A1&t=7nzgsnW0igvXKwjr-1).
Each canvas has a number of different sections which combine to provide a **holistic picture of a main job and its job performer**. It can be a bit daunting, so here’s a breakdown of each part:

![JTBD canvas](JTBD_Canvas.png)

### **Main Job:** Where do you want to innovate?

The main job serves as the central focus for innovation efforts. It represents a goal and has specific criteria. It should be formulated using **action verbs**, without references to technology, solutions, or methods, and avoid complex combinations. It follows a pattern of 'verb + object + (optional) clarifier'. The level of granularity for the main job can vary, depending on the innovation's purpose and feasibility. If the main job isn’t obvious, move to the related jobs field on the canvas to explore the domain.

Main jobs hint at a task that can be completed, for example:

- Buy (verb) a new home (object) within 10 minutes of my work (clarifier)
- Write (verb) a book (object)
- Ensure (verb) code changes (object) meet organizational standards (clarifier)

Bad examples:

- Purchase the house at 123 Main Street for less than asking. (Too specific)
- Be a best selling author (Aspirational goal, but not a main job)

### **Job Performer:** Who do you want to innovate for?

To innovate effectively, start by identifying and understanding the specific job performer for the task, emphasizing that it refers to the person executing the job. Focus your research on one job performer at a time and align it with the main job, ensuring a clear and straightforward approach. A job performer is rarely the same as someone’s job title.

For the examples above, our job performers would be:

- New home buyer
- Author
- Code reviewer

Bad examples:

- Millionaire real estate investor (being a millionaire real estate investor is a relevant circumstance to how the job gets done, and what kind of homes they would be looking for, but this doesn’t describe the main job that’s getting done – this person could be buying, selling, renovating, etc.)
- Steven King (job performers are not a specific person)
- Software Engineer (job title, not a job performer)


### Note: Job Performers vs. Personas

A common area of confusion is the difference between a job performer and a [user persona](/handbook/product/personas/#user-personas). In short, a persona is more or less at the level of a job title, a Software Developer, for instance. However, a software developer may take on a number of different main jobs as part of their role (writing code, reviewing code, maintaining infrastructure, and so on). Similarly, other job titles or personas may also do the main jobs we look at in JTBD (an engineering manager may also review code, for example). 

Both personas and job performers are useful constructs in helping to understand and improve your product, but it is important not to conflate the two. Job performers in the JTBD framework don’t correspond to job titles (some exceptions apply) - they tend to live ‘closer’ to the main job we’re investigating. For instance, we might have a dozen personas that each ‘review code’ as part of their jobs - but if the experience of reviewing code is the one we’re focused on we only need to have one job performer - a ‘code reviewer’ - that encapsulates what all of these different personas have to go through in order to do that part of their jobs.


### **Outcomes:** How does the job performer measure the success of getting the job done?

Outcomes represent how the job performer gauges the success of completing the main job and are often subjective. An outcome statement is a sentence with a specific formula:

1. A verb indicating a **direction** of change (e.g., minimize, reduce, decrease).
2. A unit of **measure**, often time, effort, or likelihood.
3. Qualifiers that make the outcome statement **specific** and **relevant** to the target job.

For example:

- **Minimize** (_direction_) the **time** it takes (_measure_) to identify a potential new home (_qualifiers_)
- **Reduce** the **number of compromises** made when deciding on a new home
- **Minimize** the **distance** to the place of employment

These outcome statements provide insights into the job performer's criteria for success in accomplishing the job.

Bad examples:

- Find the best home quickly (Why? No verb indicating direction, ‘best’ is not specific enough to be useful.)
- Have the most attractive house on the street (Why? No direction, ‘most attractive’ is not a good unit of measure.)

### **Job Steps:** How does the job performer get the job done?

Job steps detail the sequential process through which a job performer accomplishes their task, forming a chronological job map. These steps typically begin with a first-person action verb, exclude references to technology, solutions, or methods, and avoid using "ANDs" or "ORs" for conciseness. Being product agnostic is critical to understanding the core of a job, and not simply how your users use your product.

For example:
- Decide where to look for a new home
- Determine selection criteria
- Seek new homes
- Transfer home ownership

Bad example:
- Ask Richard what neighborhoods are popular to live in (Who’s Richard? Does everyone who does this job have a Richard? Too specific.)

### **Emotional and Social Aspects:** How does the job performer feel while doing the job? How do they want to be perceived while doing the job?

When considering the emotional and social aspects of the job, explore how the job performer feels during the task and how they aim to be perceived. These are sort of the ‘experiential’ side of the job, as opposed to the functional aspect of the job. It’s important to solve for the functional side of the job first (without it you’re not really solving the core unmet need), and then consider the emotional and social aspects afterwards.

Understanding the emotional and social aspects of the job helps to determine how potential solutions could be delivered, and how to ensure the job performer’s needs are met.

Emotional aspects typically start with "feel" or "avoid feeling," while social aspects often begin with "appear as" or "avoid appearing as." For example:

Emotional Aspects:
- Feel in control of the home acquisition process
- Avoid feeling uncertain about new home selection

Social Aspects:
- Appear as a good future neighbor
- Avoid appearing unknowledgeable about the new home acquisition process

These aspects can vary widely and provide insights into the job performer's emotional and social motivations and challenges, which can be crucial in determining how potential solutions ought to be delivered. For example, if a programmer is worried about appearing fast to his coworkers, we can design a solution that includes lots of time-saving features (code completion, AI summarization, other automatic actions, and so on). 

### **Circumstances:** What are the factors or conditions that make a difference in how the job gets done?

Circumstances are the factors that influence how the job gets done. They often encompass time, manner, or place, among other characteristics. Circumstances are introduced with the word "if", indicate a range of options, and use "versus/vs." when applicable. For our real estate example, circumstances might include:

- If the job performer is single vs. married
- If the job performer has young children or not
- If the potential new home is local (within driving distance) vs. far away from the current location

Additionally, you can qualify the main job in order to narrow its scope, such as "get energy **in the morning**" or "get energy **in the afternoon at work.**" These are often called _job differentiators_, and provide a more focused perspective on the target job.

### **Related Jobs:** What else is the job performer trying to get done?

When considering innovation, it's essential to explore the additional goals that job performers have within the domain – known as related jobs. These related jobs are distinct objectives, each with its own distinct phases, and should be formulated at a similar level of detail for comparison, typically numbering between 3 to 6 per job performer. For our aspiring homeowners, related jobs may include:

- Finance a new home 
- Move homes
- Sell old home

### **Aspirations:** What does the job performer aspire to become by doing the job?

Aspirations represent the "be" goals of the job performer, signifying their desire for personal growth or transformation while completing the job. These aspirations should be derived from conversations with job performers and are placed at the top of the canvas as they hold a hierarchical position above the target job. Typically, there are 1 to 3 aspirations associated with any target job. For instance, in the context of a real estate organization, potential top-down elements for innovation related to "home ownership" could include:

- Job performer: New homeowner
- Target job: Acquire a new home
- Related jobs: Finance a new home, Move homes, Sell old home
- Aspirations: Be happy with home life, Be part of a local community

### **Actors (optional):** Who affects our job performer when doing their job?

It may help to think about the other actors or job performers that relate to your main job performer. Who does the job performer interact with in the course of performing their tasks? Where does information (or responsibility) reside before or after the main job? The related job performers or actors are often those performing the related jobs.

So, if the related jobs are: Finance a new home, Move homes, Sell old home

The related job performers might be: Mortgage broker, Real Estate Agent, Mover



## Main jobs to micro jobs

When talking about Jobs to be Done, we’re often talking about different levels of jobs. It’s important to note the differences in terminology between these levels so that you and your stakeholders can communicate effectively.


![JTBD hierarchy diagram](JTBD_Diagram.png)

### Main Jobs

A main job is a means to an end. It's an act that will be performed and should have a clear end state (the "done" part of JTBD). That is why we write jobs in the pattern Verb + Object + Clarifier when writing job statements.

Example: Buy a new home


### Small jobs

Small Jobs are more practical and correspond to a process or workflow. They answer the question, "How does the job get done?" in the context of the main Job and moves the user closer to accomplishing their goal.

Example: Put in an offer on a house 


### Micro-jobs

Micro-jobs are the small tasks a user may undergo to accomplish their small job and main job. Micro-jobs should be self-explanatory and easy to understand without much context.

Example: Decide how much you’re going to offer in relation to the asking price.

It’s important to be able to identify and correctly place jobs at the right altitude as you work through the Jobs to be Done process. It will help keep you focused on the main job and allow you to quickly incorporate (or discard) new information that you hear during interviews into your [job steps](#job-steps-how-does-the-job-performer-get-the-job-done).





<!-- OLD CONTENT - from deleted pages -- may be re-incorporated, so keeping it here for now

### JTBD Hierarchy

Using our examples, we can produce a JTBD hierarchy, confirming we operate at the right altitude.

- **Main job**: Maintain an acceptable level of risk in my organizations assets.
- **Small job**: Prioritize business-critical vulnerabilities in my assets.
- **Micro jobs**: Review the most recent risks detected in my assets; Refine the list of risks by relevancy; Refine the list of risks by impact.


### Using JTBD at GitLab

There are many methods a stage group may use to find or define strategic opportunities with JTBD. You can see more detailed uses of JTBD on our [How to use Jobs to Be Done](/handbook/product/ux/jobs-to-be-done/using-jtbd/) handbook page. If you plan on using one of these methods, remember to use [interviews to validate your jobs](/handbook/product/ux/jobs-to-be-done/deep-dive/#how-do-i-discover-jtbd-relevant-to-my-group) before spending too much time learning about inaccurate jobs.

## Quick methods to increase confidence

- Reference previous research and industry standards.
- Conduct [generative problem validation research](/handbook/product/ux/ux-research/problem-validation-and-methods/#when-to-use-problem-validation) using broad questions. For example, ask questions like, "tell me what you do as a software engineer."
- Run abbreviated 30-minute job interviews with a minimum of 5 participants (direct questions). For example, ask questions based on the JTBD such as, "tell me about the last time you made an architectural decision. What went well? What didn't go so well?" Document your interview using the [JTBD Interview Note template](https://docs.google.com/spreadsheets/d/e/2PACX-1vSX5b57MKfLFl59TfiN61rWNkm2Qctb8cVy40JUGsF6FyEcy3jhPBUxY-4D3exXxqXPwwBkcSOb0HT8/pub?output=xlsx).

## Job stories and user stories

Read "[What is and isn't a JTBD](/handbook/product/ux/jobs-to-be-done/deep-dive/#what-is-a-jtbd)".

[Job stories differ from user stories](https://jtbd.info/replacing-the-user-story-with-the-job-story-af7cdee10c27) because they are persona, product, and solution agnostic. This allows us to think more deeply about the user's context, motivations, and needs rather than just a *title, task, and goal*.

*Example:*

- **Job**: Address business-critical risks in my organization's assets.
- **Job story**: When I am on triage rotation, I want to address business-critical risks in my organization's assets, so I can minimize the likelihood of a security incident.
- **User story**: As a Security Analyst, I want to address vulnerabilities in my applications, So that I can ensure there are no unattended risks.

Job stories offer a higher-level view of the main objective. However, when written at a lower altitude, they can serve the same function as user stories, guiding your solutions while keeping the main job, circumstances, and need in mind.

If you want a detailed breakdown of each segment of the JTBD, learn more about the [structure of a JTBD](/handbook/product/ux/jobs-to-be-done/deep-dive/#how-do-i-structure-a-jtbd). -->


<!-- 
---
title: "Mapping Jobs to be Done (JTBD)"
description: "How do I create a job map? How do I validate a JTBD?"
---

The Main Job is a process that you can sequence chronologically into a Job Map. A Job Map reveals the process of completing the job from the executor’s point of view, not the buyer or customer perspective. The intent is to illustrate what the job performer is striving to get done at each stage in executing a job.

## What a Job Map is not

A Job Map is not a customer journey, service blueprint, or workflow diagram. It does not reflect what a person does to discover, learn about, select, buy, and use a product or service. These activities are relevant to the buyer and purchasing process.

It’s also not about mapping tasks or physical activities, but about creating a sequence of smaller goals that make up the Main Job. Ideally, the Job Map will not include any means of performing the job.

## How to create a Job Map

From your interviews, create a sequence of stages in a visual representation that shows underlying patterns of intent. As you map, think about what the job performer’s subgoals are and the phases of intent that unfold as the job gets done. There is a [template in FigJam](https://www.figma.com/file/M8w3pkidNUAUIQrQALifFS/JTBD-Template?type=whiteboard&t=HXmKttyxz1lwX9B8-6) that you can use for this. The template uses the eight standard phases from Tony Ulwick’s [Outcome-Driven Innovation (ODI) method](https://jobs-to-be-done.com/outcome-driven-innovation-odi-is-jobs-to-be-done-theory-in-practice-2944c6ebc40e).

Each stage should have a purpose and be formulated as a functional job. Avoid including emotional and social aspects in the stage labels, and avoid bringing in adjectives and qualifiers that indicate a need, like “quickly” or “accurately.” Strive to make the stages as universal and stable as possible without reference to the means of execution. Jobs are separate from solutions.

Consider these job stages as more of a guideline than a prescriptive model. The point is to remember to cover all types of stages involved in executing the main job&mdash;before, during, and after. Modify the names of the stages as needed to describe your particular Main Job, but keep them short (ideally expressed as single-word verbs). The table below reflects some common verbs for each of the stage types in the universal job map.

| Stage      | Description                                            | Common Verbs                           |
| ---------- | ------------------------------------------------------ | -------------------------------------- |
| Define     | Determine objectives and plan how to get the job done. | Define, Plan, Select, Determine        |
| Locate     | Gather materials and information needed to do the job. | Locate, Gather, Access, Retrieve       |
| Prepare    | Organize materials and create the right setup.         | Prepare, Set up, Organize, Examine     |
| Confirm    | Ensure that everything is ready to perform the job.    | Confirm, Validate, Prioritize, Decide  |
| Execute    | Perform the job as planned.                            | Execute, Perform, Transact, Administer |
| Monitor    | Evaluate success as the job is executed.               | Monitor, Verify, Track, Check          |
| Modify     | Modify and iterate as necessary.                       | Modify, Update, Adjust, Maintain       |
| Conclude   | End the job and follow-up.                             | Conclude, Store, Finish, Close         |


### Step 1 - Create a job map

1. Use this ([FigJam Template](https://www.figma.com/file/M8w3pkidNUAUIQrQALifFS/JTBD-Template?type=whiteboard&t=HXmKttyxz1lwX9B8-6)).
1. Start with the three large phases of the Main Job: beginning, middle, and end. Arrange the sub-jobs uncovered from your interviews in the appropriate category.
1. Continue to group the jobs into stages, using the universal stages as a starting point, but changing them as needed. Language is important, so spend time refining it as you go.

You might end up with fewer or more stages than eight. It’s also possible to include a loop for interaction or even a branch in the flow. The diagram you create should stand as a clear model for describing the process of performing the job that everyone in your organization can relate to.

Ideally, you will validate this job map with job performers. Talk through it with them. If the labels and/or divisions between stages need a great deal of explanation or seem to be confusing, rework them until it’s simple enough to be self-explanatory.

### Step 2 - Put the job map to use

You can use a Job Map to identify opportunities and ways to create new value. The Job Map ultimately defines the scope of your business/stage group. Align your solutions to it to spot gaps and opportunities. Compare alternative offerings and means of getting a job done for competitive insight. Prioritize areas within the job process to drive your service roadmap. Find opportunities that can be reflected in marketing campaigns and sales pitches.

To get started, ask yourself these questions:
- Is there a more efficient order of stages in performing the job?
- Where do people struggle the most to get the job done?
- What causes the job to get off track?
- Can you eliminate stages or steps along the way?
- How might the job be carried out in the future, given current trends?
- How might you get more of the job done for customers?
- What related jobs can your offering address or tie in to the job?


## References and Further Reading

- [Jobs to be Done Playbook by Jim Kalbach](https://rosenfeldmedia.com/books/jobs-to-be-done-book/)
- [Jobs to be Done by Anthony Ulwick](https://jobs-to-be-done-book.com/)
- [Competing Against Luck by Clay Christenson](https://www.amazon.com/dp/0062435612/ref=cm_sw_em_r_mt_dp_U_v0k9Eb92AEDZX)
- [Intercom on Jobs to be Done by Intercom](https://www.intercom.com/resources/books/intercom-jobs-to-be-done)

 -->


 



  <!--
  ---
title: "Jobs to be Done (JTBD) Deep Dive"
description: "There are more than a few frameworks for Jobs to be Done. The aim of this documentation is to adapt those frameworks to create a shared understanding that fits our needs."
---

There are more than a few different frameworks for Jobs to be Done (JTBD) out there. The aim of this documentation is to adapt those frameworks and create a shared understanding of a JTBD process that fits our needs here at GitLab.

Our goal is to make products that people want, as well as make people want our products. Using JTBD can help us do that.

## What is a JTBD?

- **A lens for viewing your products and solutions in terms of the jobs customers are trying to achieve.** Instead of looking at the demographic factors of usage, JTBD focuses on what people seek to achieve in a certain circumstance ([see Clayton Christensen's Milkshake video](https://www.youtube.com/watch?v=sfGtw2C95Ms)).
- **A way to understand the goals that people want to accomplish.** Achieving those goals amounts to progress in their lives. Jobs are also the needs, motivators, and drivers of behavior: they predict why people behave the way they do. This moves beyond mere correlation and strives to find causality.
- **A chance to step back from your business and understand the objectives of the people you serve.** To innovate, don’t ask customers about their preferences, but instead understand their underlying needs and motivations.
- **A framework for improving collaboration and communication across disciplines and stage groups.** Since JTBD isn't particular to any expertise (for example, product, UX, marketing), it can be used by all of these disciplines to focus team members on the core problem that the business aims to solve for its customers. For example, rather than marketing having personas, UX having user stories, and so on, the company can use JTBD to establish common, high-level definitions that everyone can use.

## What isn't a JTBD?

- **They are not about your product, service, or brand.** People “hire” products to get a job done. Instead of focusing on your own solution, you must first understand what people want and why that’s important to them.
- **They are not about specific products or particular solutions.** Instead, they focus on the process that people go through to solve a problem.
- **They are not a replacement for the user persona framework.** The two contrasting viewpoints share similarities without being incompatible. They can be used together to gain a more holistic view of the product and its users. For example, you may want to consider the job statement and process while drafting the workflow of a new feature, but you may want to check specific content on a page suitable for a particular user persona.

## When should I use a JTBD?

Use JTBD throughout the design process, but most notably to:
- Define scope
- Validate direction
- Evaluate existing experiences
- Assess category maturity

## How do I structure a JTBD?

A core strength of JTBD is its structure, which clearly separates out various aspects of achieving objectives. The who, what, how, why, and when/where are analyzed individually, giving both precision and flexibility to JTBD methods.

### *Who* is the focus of a JTBD?

When writing a JTBD, focus on the **job performer**. In other words, write it from the perspective of an end user who is trying to do the job. Conversely, do not write a JTBD from the perspective of what GitLab (or the business stakeholder) wants to achieve.

Other functions within the job ecosystem to consider include the following:

- **Approver:** Someone who authorizes the acquisition of a solution
- **Reviewer:** Someone who examines a solution for appropriateness
- **Technician:** The person who integrates a solution and gets it working
- **Manager:** Someone who oversees a job performer while performing the job
- **Audience:** People who consume the output of performing the job
- **Assistant:** A person who aids and supports the job performer in getting the job done

Note that these different roles don’t refer to job titles. Instead, they represent different functional actors within the context of getting a job done.

### *What* does the job performer want to accomplish (independent of your solution)?

The aim of the job performer is not to interact with your company but to get something done. Because they don’t mention solutions or technology, jobs should be as timeless and unchanging as possible. Strive to frame jobs in a way that makes them stable, even as technology changes.

#### Is a Job Performer the same as a User Persona?

No, a user persona represents a person in an organization with a particular job title. That persona may have 3-4 main jobs, which can be expressed using the JTBD framework.  Similarly, the role of job performer can be taken by more than one user persona.

While using the JTBD framework, a user's job title or personal details are not as crucial as their capability to successfully carry out the job process. As a result, the two frameworks do have some overlap but are not designed to fit together perfectly. The following visual Venn diagram may be helpful in understanding this overlap.

![PerformerPersonaDiagram](persona-v-performer.png)

### *How* will the job get done? (objective of the JTBD)

The process follows job performers as they move through different goal stages in order to accomplish their goal.

- Understanding the process of the job performer’s intent is key to JTBD.
- You can illustrate the job in a chronological map using a sequence of stages, such as Beginning, Middle, and End.
- Each stage can contain multiple user stories. Be careful not to get into the tasks/physical activities just yet.
- Because the job has to be “done,” be sure to formulate the job in a way that has an end state.
- Once you have the sequence, specify the tasks needed to complete each user story.

### *Why* does the performer act in a certain way? What are their requirements or intended outcomes during the job process?

Why do the job performers act the way they do while getting a job done? Their actions might be tied to achieving specific outcomes, such as producing a specific report. Their actions might also be tied to requirements or processes to which they must adhere.

In JTBD, a need is seen in relation to getting the job done. Needs aren’t demands from a solution, but an individual’s requirements for getting a job done. Needs aren’t aspirations, either, which are above the job in terms of abstraction.

Example: If a main job is defined as *file taxes*, their need may be to *minimize the time it takes to gather documents or maximize the likelihood of getting a return*.

Example: Expressions like “have financial peace of mind” or “provide for my family” are motivations beyond getting the job. These are important aspects to consider later, but not needs related to reaching the objective of filing taxes.

### *When and where* does the job get done?

The circumstance (or contextual factors) that frame job execution include when and where the job gets done; for example, aspects around time, manner, and place. A job without context is not complete and cannot provide strategic direction. There is a dependency between formulating a job and knowing the circumstances.

JTBD uses circumstances to make them relevant to an organization. The conditions around the job give it meaning and relevance and therefore must be considered. Adding contextual detail to the situation also helps greatly when designing a solution.

Example: *Get breakfast* is a very broad job that could apply to many situations. But for a fast food restaurant, *get breakfast on the go*, is a more precise job to focus on.

Example: A solution for the job *get breakfast on the go* could include everything from going to a restaurant or diner to eating a packed lunch at a desk. But when considering specific circumstances like *when late for work, while commuting* and *when cost is a factor*, a morning milkshake might be a better solution for the job.

### *How do I discover* JTBD relevant to my group?

Jobs to be Done are discovered by interviewing real-world users. At GitLab, it is advised to use the assistance of a UX Researcher throughout the process.

1. Determine the project's scope with the relevant stakeholders. Understanding who you want to talk to you and what jobs you want to understand is just as important as determining what jobs are not in scope for this project.
1. Create a problem validation issue similar to this [example issue](https://gitlab.com/gitlab-org/ux-research/-/issues/2223) in the UX Research project, and fill out the description.
1. You may create an assumptive JTBD map with internal stakeholders [similar to this template](https://drive.google.com/file/d/154noxIz5_ziAk9KHASHqb8faYCTw9ZyQ/view?usp=sharing). You can also validate your findings through desk research. This map can prepare you for the participant's workflow and the language they might use to describe their job. This is activity is optional.
1. When you're ready to interview external participants, adjust this [screener template](https://docs.google.com/document/d/1paH7wpXvCIOIDIy_GiDkbXWy3gfF4a8WXGYzLDMONkc/copy) as needed. Remember to recruit GitLab users and non-users, as the JTBD framework is product-agnostic.
1. Afterwards, you can modify this [JTBD Script template](https://docs.google.com/document/d/1wnvsJtWrLntliOxyYudrSnqatmxPZBvAYobXusW2np8/copy) to help you conduct the interviews. Remember to keep the scope and output of the interviews in mind while modifying the script. Keep in mind the job process and statement should be something that does not need a user interface and might even be applicable in the distant future.
1. Finally, summarize the data using a Figjam board similar to this [previously used JTBD canvas](https://www.figma.com/file/chlrPbqJWNELUR2dFapUcL/JTBD-%26-JTBD-Research-%3E-Secure-and-Govern-Job-Canvas-and-Heirarchy_2023-08-23_11-14-17?type=whiteboard&node-id=0-1&t=VaQ5WIqs1zyElt3e-0). If possible, have a note-taker fill out each participant's canvas as the interviews take place. Then, present it to the participant as a way to verify the information.

### *How can I use* JTBD?

JTBD can be used to obtain valuable insights through numerous methods, from screeners to heuristic evaluations. You can see more detailed uses of JTBD on our [How to use Jobs to Be Done](/handbook/product/ux/jobs-to-be-done/using-jtbd/) handbook page. If you plan on using one of these methods, remember to use interviews to validate your jobs before spending too much time learning about inaccurate jobs.

## JTBD examples and tips

JTBDs are difficult to get right can take some time to refine. Below is an example of a job statement and its versions throughout the refinement process. The feedback provided for each version can offer some helpful tips to keep in mind when you're writing them.

Version 1: When new features are added to a product, I want to know if and how those changes impact performance so that I can ensure my product works as expected for users.

- "When new features are added to a product" - Make sure to describe the circumstances the job performer is in when they need to get the job done. New features being added is not an isolated act.
- "I want to know if and how those changes impact performance" - This job can be a bit more specific (instead of using "if and how"). It will be easier to validate when you focus on one aspect of the need/outcome for the job performer.
- "so that I can ensure my product works as expected for users" -  How can you make the outcome for the job performer more specific? Why is it important that the product works as expected? What is the desired end state and/or feeling that a job performer has for doing this job? Make sure to describe the circumstances that the job performer is in when they need to get the job done.

Version 2: When I or my teammate is making a code change to our product, I want to know if the change introduces a latency for my end users so that I can ensure users are satisfied with the performance of the product and continue to use it

- "When I or my teammate is making a code change to our product" - We don't need to specify the "who" this is for since it seems to apply to any code changes to the product.
- "so that I can ensure users are satisfied with the performance of the product and continue to use it" - Handling a latency doesn't measure satisfaction, but it deals directly with usability.

Final version: When a code change is made, I want to know if the change introduces a latency for my end users so that I can meet the quality standards of performance response time to maintain usability for our end users.

- [x] Describe specific circumstances that the job performer is in when they need to get the job done.
- [x] Focus on one specific goal or aspect that the job performer needs to complete when writing out the job statement so that it makes it easier to validate in the future.
- [x] Focus the outcome of the job statement around the desired end state or feeling for the job performer as well as the reason why completing the job is so important. Ensure the outcome is something that is measurable and can be used to validate the job statement.
 
  -->