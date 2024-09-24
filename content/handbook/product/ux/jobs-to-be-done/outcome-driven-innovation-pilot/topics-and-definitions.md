---
title: JTBD Topics & Definitions
description:
---

## Domain

In the context of Jobs To Be Done, a "Domain" refers to a distinct area of expertise or focus where specific Job Performers carry out their Main, Related, and Consumption Jobs. Each domain encompasses a set of related activities and responsibilities that are critical to the overall workflow and objectives of the customer.

Domains rarely have a 1:1 relationship with an Organization's Product Team structure. To account for this, teams will have to collaborate when working within the same Domain. For example; teams working with the Code development Domain should be collaborating with teams working in the Security Domain regarding security capabilities during code integration and vise/versa.

Think of Domains as the space your product exists within or the area you're trying to solve user problems in. In a platform like GitLab it's best to consider how GitLab is comprised of several product domains that help Job Performers achieve the Job of Delivering products to customers through DevSecOps.

Examples of Domains at GitLab include:

- **Project Planning:** This domain involves organizing and managing the software development lifecycle, including task management, scheduling, and resource allocation.
- **Application Security:** This domain focuses on ensuring the security of the code and the deployment environment.
- **Compliance and Governance:** This domain deals with ensuring that the software development and deployment processes comply with industry regulations and organizational policies.
- **Code Development:** This domain involves all activities related to writing, reviewing, and managing code.
- **Code Deployment:** This domain covers the processes of integrating, testing, and deploying code into production environments.
- **Tool Usage Analysis:** This domain involves monitoring how the tools within GitLab are being used by its users, identifying usage patterns, and optimizing tool effectiveness within the organization.
- **Product Usage Analytics:** This domain focuses on tracking how end-users interact with the delivered product to gather insights on user behavior, feature usage, and areas for improvement.

## Job Performers

The Job Performer is a critical concept referring to the individual undertaking or completing a particular Job. This performer is central to understanding the framework, as the JTBD approach focuses on the needs, motivations, and outcomes from the perspective of the Job Performer.

**Helpful Tips:**

| Do | Don't |
| --- | --- |
| Describe an individual completing a task | Use Job titles or Personas |
| Keep it focused on a single action | Compound actions using (and/or) |
| Keep it simple and generic | Reference technologies or solutions |

**Examples:**
| Good examples | Bad examples |
| --- | --- |
| Code Author | Software Engineer (Job title, not a Job Performer) |
| Code Reviewer | Merge Request Approver (References a specific solution/technology) |
| Change Deployer | Rachel, Release Manager (Persona, not a Job Performer) |

## Job Types

### Main Jobs

The Main Job (may also be referred to as a Core Job) serves as the central focus for innovation efforts. It represents a goal and has specific criteria. What is the Job Performer trying to get done in the selected Domain? Main Jobs should be timeless and as unchanging as possible. It should be expressed in functional terms, like a utilitarian goal. It's an act that should be performed and have a clear end state… the "done" part of JTBD. It is not what your company needs to do to deliver a service. Always think in terms of the Job Performer's perspective. The level of granularity for the Main Job can vary, depending on the innovation's purpose and feasibility. Another way to think about the Main Job is to consider the Domain your product exists in, then consider the most central, main or core goal your primary user (that is, the Job Performer) is trying to get done with your product... that's the Main Job. You might also try flipping things around and ask yourself "For what Job do my primary users hire my product?"

Main Jobs follow the [Job Statement]<!--(/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#Job-Statements)--> format: [verb] + [object] + [(optional) contextual clarifier]

>💡 Main Jobs are mapped using a Job Map.

**Examples:**

| Good examples | Bad examples |
| --- | --- |
| Deploy [verb] code changes [object] | Manage Releases -- No clear end state, the Job will never be done. |
| Ensure code changes meet Org standards | Review Merge Request efficiently -- References a solution (Merge Request) and uses an Adjective (efficiently) |

### Consumption Chain Jobs

When looking through the lens of the Job Performer, there are several aspects of a product that must get done prior to, during, or after a Main Job can be achieved. For instance, the first thing that must be done is to evaluate a product for purchase, involving research, evaluation, and transaction. After buying a product, it must be received, installed, and set up. Users must learn how to use it, and they might also need to transport, clean, store, maintain, upgrade, repair, and eventually dispose of it. While people don't buy products to configure or maintain them, making these tasks easier can make a product more attractive.

These tasks are called Consumption Chain Jobs. Each Job has its own set of desired outcomes and are often _consumed_ by a Main Job in order to help facilitate that Job's achievement.

Focusing on increasing efficiencies of or entirely eliminating Consumption Chain Jobs can lead to better products and competitive advantages. For example, making it easier to configure, and optimize deployments or set up branch rules can set a product apart from its competitors.

>💡 Consumption Chain Jobs are **not** mapped using a Job Map. Instead, they are listed and do not have a specific order.

Consumption Chain Jobs should be written in a similar format to Main Jobs, using the [verb] + [object] + [(optional) contextual clarifier] structure. However, _Consumption Jobs **can** be solution-specific and reference technologies_.

Some examples of Consumption Job Types:

- Purchasing the product
- Downloading, Installing the product
- Setting up, Configuring, Organizing, Provisioning the product
- Learning to use, Onboarding the product
- Maintaining, Upgrading, Optimizing the product
- Troubleshooting, Diagnosing, Debugging the product
- Repairing, Resolving, Restoring the product
- Archiving, Deleting, Destroying, Removing the product

### Related Jobs

While completing the Main Job, the end user may need to complete other Jobs. Knowing what those Related Jobs are is important as it can lead to the creation of a platform-level solution that gets many Jobs done. It is not uncommon for the primary user to have 3 to 5 Related Jobs on their mind.

Related Jobs are often within the same or adjacent Domain. For example, A Related Job to "Implement enhancements to my application" would be "Ensure code changes adhere to Org standards." Both of these are in the Code Development domain.

>💡 Knowing what your Related Jobs are can lead to the creation of a platform-level solution that gets many Jobs done.

## Main Job Hierarchy

![Job Map](JTBD_MainJob_Hierarchy.png)

### Job Statements

The Job statement is a structured way to write clear and concise job statements that capture the essence of what the Job Performer is trying to accomplish no matter the level of the Job. The formula is:

**[verb] + [object] + [_(optional)_ contextual clarifier]**

- **Verb**: The action the Job Performer is taking to accomplish the job.
- **Object**: The target or focus of the verb's action.
- **Contextual Clarifier**: An optional phrase that provides additional context or specificity to the Job Statement.

**Helpful Tips:**

| Do | Don't |
| --- | --- |
| Start with a verb | Use adjectives |
| Use verbs with an end state (Deploy, Implement, Plan) | Use verbs with no end state (Manage, Track, Optimize) |
| Write as a utilitarian goal | Mention solutions or technologies |
| Keep it focused on a single goal | Combine goals by using (and/or) |

The key is to focus on the Job Performer's goal and desired outcome, rather than the means to achieve it (that is, solutions). This allows for greater opportunities to come up with innovative solutions that may not have been considered before.

### Job Stages

Job Stages should represent high-level Job Statements that describe the step or _stage_ the Job Performer is in during this process of achieving their Main Job. The complete set of Stages and their Job Steps form a Universal Job Map.

Job Stages follow the [Job Statement]<!--(/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#Job-Statements)--> format. Examples of Job Stage _verbs_ include:

- **Define**, Plan, Select, Determine
  - People often have goals or a set of objectives in mind at the onset of job execution. 
  - What aspects of getting the job done must the user define up front in order to proceed? This step includes determining objectives; planning the approach; assessing which resources are necessary or available to complete the job; and selecting resources.
- **Locate**, Gather, Access, Receive
  - People need to obtain certain inputs to get a job done-these inputs can be materials, ingredients, data, etc. 
  - What inputs or items must the user locate to do the job? Inputs are both tangible (e.g. the surgical tools a nurse must locate for an operation) and intangible (e.g. business or other requirements that a software developer uses when writing code).
- **Prepare**, Set-up, Organize, Examine
  - People must set up the environment and organize the inputs in order to execute the job correctly. 
  - How must the user prepare the inputs and environment to do the job? Nearly all user jobs involve an element of setting up and organizing materials.
- **Confirm**, Validate, Prioritize, Decide
  - People want to know that the job will produce the desired results before the execution step begins. 
  - Once preparation is complete, what does the user need to verify before proceeding with the job to ensure its successful execution? Here, the user makes sure that materials and the working environment have been properly prepared; validates the quality and functional capacity of material and informational components; and confirms priorities when deciding among execution options.
- **Execute**, Perform, Transact, Administer
  - People consider the execution step the most important part of the job. It is closely tied to the job-to-be-done. 
  - What must users do to execute the job successfully? Whether they’re printing a document or administering anesthesia, users consider the execution step the most important part of the job. Because execution is also the most visible step, users are especially concerned about avoiding problems and delays, as well as achieving optimal results.
- **Monitor**, Verify, Track, Check
  - People consider the execution of the job to ensure the outputs are predictable and effective. 
  - What does the user need to monitor to ensure that the job is successfully executed? Users must keep an eye on the results or output during execution, especially to determine whether they have to make adjustments to get the task back on track in the event of a problem. For some jobs, users must also monitor environmental factors to see whether and when adjustments are necessary.
- **Modify**, Update, Adjust. Maintain
  - People make adjustments to job execution to help overcome issues that have been encountered. 
  - What might the user need to alter for the job to be completed successfully? When there are changes in inputs or in the environment, or if the execution is problematic, the user may need help with updates, adjustments, or maintenance. At this step, users need help deciding what should be adjusted as well as determining when, how, and where to make changes.
- **Conclude**, Store, Finish, Close
  - People take a final step that signifies the job is complete. Not all jobs conclude-some are continuous. 
  - What must the user do to finish the job? With some simple jobs such as hand washing, the conclusion is self-evident. Complex jobs, on the other hand, may involve some concluding process steps.

>💡 Main Jobs typically have 8 ± 1 Job Stages. It's more typical to have all 8 Job Stages in a Main Job's Universal Job Map, though some may not align with the needs of the Main Job and can be left out, if appropriate.

### Jobs Steps

Job Steps are the small objectives a user must complete to accomplish the Stages and, therefore Main Job. These should be self-explanatory and easy to understand without much context. They are the sequential series of objectives a Job Performer must complete to accomplish the Stage. Each Job Step is high-level and can be broken out into it's own workflow if you were to zoom-in on it; they are not individual tasks. Avoid being too granular when writing Job Steps in order to keep them relevant to all performers executing the Job.

Job Steps follow the [Job Statement]<!--(/handbook/product/ux/jobs-to-be-done/jtbd_topics__definitions/#Job-Statements)--> format.

## Job Differentiators

Job Differentiators are the factors or circumstances that influence how the Job gets done. They often encompass time, manner, or place, among other characteristics. Job Differentiators are introduced with the word "if", to indicate a range of options, and use "versus/vs." when applicable to show a comparison.

What goes into Job Differentiators:

- Begins with words like _if_
- Should show a range of options with Versus/Vs
- Avoid ANDs or ORs (they need to be singular), and be technology/solution agnostic.

Good Job Differentiators examples:

- If the Code Author is implementing a new feature vs. implementing a security patch
- If the Code Reviewer is reviewing a database update vs. a feature enhancement

## Outcomes

Outcomes are vital in the Jobs to Be Done framework because they reveal what Job Performers value when trying to get a Job done and how they measure success. They allow you to identify unmet needs and create differentiated value by focusing on Outcomes rather than features or functionality. Understanding Outcomes helps in designing effective solutions, making better prioritization decisions, and measuring the real impact of your work.

### Outcome statements

An Outcome statement is the benchmark by which Job Performers gauge success in accomplishing a task. Progress is measured across three key dimensions: speed, predictability, and efficiency:

1. **Speed:** Progress is marked by completing tasks faster, reducing the time required for accomplishment.
2. **Predictability/Reliability:** Progress entails increased reliability and decreased likelihood of deviations or errors.
3. **Efficiency:** Progress is achieved by minimizing waste and optimizing output.

💡 The ideal scenario for Job Performers involves **instant task completion**, **100% predictability**, and **0% efficiency loss**. Such perfection facilitates progress and fulfills needs. In other words, the Job Performer can accomplish their Job _perfectly_ because every imperfection has been removed.

| Dimension | Definition | Formula |
| --- | --- | --- |
| Speed | Measured by time. Progress is evaluated by minimizing the time required to accomplish a specific task in a given context. | Minimize the time it takes to [accomplish something] [in some context] when getting a job done. |
| Predictability/Reliability | Measured using likelihood. Progress is gauged by minimizing the likelihood of undesired outcomes in task completion. | Minimize the likelihood that [some unwanted thing happens] [in some context] when getting a job done. |
| Efficiency | Measured using likelihood. Progress is gauged by minimizing the likelihood of actions leading to waste or inefficiency in task completion. | Minimize the likelihood of [doing something that causes waste/inefficiency] [in some context] when getting a job done. |

💡 Every Job Step and Consumption Job will have three outcome statements, one for each dimension.

![Outcome Mapping](./Concepts_Outcome_mapping.png)

### Measuring Outcome statements

When [benchmarking]<!--(content/handbook/product/ux/jobs-to-be-done/JTBD-Evaluation-Methods#benchmarking-the-domain)-->, Outcome statements are measured by evaluating the Job Performer’s perception of both the importance and satisfaction of the outcome. Combining these two elements allows teams to understand if they are meeting their user's needs and how they should prioritize their efforts. At this point, Outcomes can also be referenced as **needs**, and we can group them into three categories based on Job Performer responses.

#### Overserved Needs

Overserved Needs are user requirements or desires that are excessively addressed by existing offerings. This often results in unnecessary features, complexity, or costs exceeding what users value or require. These needs are met so that the additional features or capabilities provide diminishing returns or even negative value to the user.

Key Characteristics of Overserved Needs:

1. **Excessive Features:** The product or service includes more features than the customer finds useful or necessary, leading to complexity and potential confusion.
2. **Higher Cost:** Overserving needs often leads to higher costs for the customer, as they pay for features or functionalities they do not need or use.
3. **Decreased Usability:** Additional, unnecessary features can make a product more difficult to use, detracting from the overall user experience.
4. **Wasted Resources:** Companies invest resources into developing and maintaining features that add little value to the customer/user, leading to inefficiencies.

By identifying and addressing overserved needs, businesses can streamline their offerings, reduce costs, enhance usability, and better align their products and services with what customers/users truly value.

#### Properly Served/Table Stake Needs

Customer requirements or desires that are adequately and satisfactorily addressed by existing market offerings. These needs are met to such an extent that customers/users feel their expectations are fulfilled and have little to no frustration or dissatisfaction with the current solutions.

Key Characteristics of Properly Served Needs:

1. **High Satisfaction:** Customers/users are generally satisfied with how their needs are being met. The existing products or services deliver the desired outcomes effectively and efficiently.
2. **Minimal Frustration:** Current solutions cause little to no frustration or inconvenience. Users find them easy to use and reliable.
3. **Mature Solutions:** The market has mature solutions that have evolved to address these needs well. These solutions are often refined through continuous improvement and user feedback.
4. **Low Demand for Change:** Because these needs are well met, there is typically less demand for new or radically different solutions. Customers may be loyal to existing brands and products.
5. **Essential Features or Functions:** These must be met to satisfy customers, and failing to meet them would result in dissatisfaction.

By focusing on properly serving needs, businesses can maintain customer/user satisfaction, build brand loyalty, and ensure sustained success in the market.

#### Underserved Needs

Refers to a requirement or desire of customers that is not adequately addressed by the current market offerings. These needs may be partially met or not met at all, presenting opportunities to innovate and create value. Identifying underserved needs is crucial for developing products or services that better satisfy customer demands and stand out from competitors.

Key Characteristics of Underserved Needs:

1. **Partial Fulfillment:** The current solutions might address the need to some extent but fail to provide a complete or satisfactory solution. Users might be using workarounds or supplementary products to bridge the gap.
2. **Lack of Awareness:** Users might not fully recognize that their needs are underserved until they encounter a better solution. Due to a lack of better alternatives, they might accept subpar solutions as the norm.
3. **High User Frustration:** Underserved needs often lead to significant frustration, inconvenience, or inefficiency for users. These pain points can be critical drivers of dissatisfaction and highlight areas ripe for improvement.
4. **Opportunity for Innovation:** Addressing underserved needs presents a significant opportunity for innovation. By understanding and fulfilling these needs, we can create products or services that offer superior value and differentiate the market.

Understanding and addressing underserved needs is a powerful strategy for achieving business success. It allows companies to deliver exceptional value, differentiate themselves from competitors, and build loyal customer relationships.

## Job Canvas

A Job to be Done Canvas is a way to arrange all of the elements of a [Job Performer's]<!--(/handbook/product/ux/jobs-to-be-done/#job-performer-who-do-you-want-to-innovate-for)--> Main Job or Consumption Chain Job in an easy to read format, well-suited for iteration, sharing, and documentation. We use canvases throughout our [JTBD playbook]<!--(/handbook/product/ux/jobs-to-be-done/jtbd-playbook)-->, as part of our [FigJam template](https://www.figma.com/file/Z4lsAOLH1ANN3pstQFYgSk/Jobs-to-be-done----Playbook-Template?type=whiteboard&node-id=0%3A1&t=7nzgsnW0igvXKwjr-1).
Each canvas has different sections which combine to provide a **holistic picture of a Job Performer's Main Job or Consumption Chain Job**.