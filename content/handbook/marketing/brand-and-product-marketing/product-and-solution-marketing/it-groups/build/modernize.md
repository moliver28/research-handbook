---
title: "Modernize applications"
---
## Overview

Embrace kubernetes and cloud native architectures to accelerate application delivery and reduce cycle time.

### Challenge: Modernize my application architecture

1. What challenges do I (VP Apps) face?
   1. **Maintenance and integration costs, predominantly human resources costs.** A large percentage of the overall IT budget goes to support teams of engineers needed to integrate and maintain a complex toolchain. An enterprise company with 1K developers needs 40 engineers just to maintain the DevOps toolchain instead of allocating these resources towards delivering business value.
   1. **Development is slowed/blocked by the operations team.** The quintessential challenge of the pre-DevOps world is that dev teams are incentivized to increase innovation velocity by shipping new features. Operations/Infra teams are incentivized for stability, uptime and error reduction. The higher the development velocity the greater the chance for downtime and errors so these teams are at odds with each other. The VP App Dev doesn't have enough enticing evidence or incentive to go to the VP IT Ops to advocate that to increase deployment velocity.
   1. **Developers doing ops** Today, teams and individual developers need to spend a significant amount of time worrying about the environment where their code is deployed.  *Bonus: Availability of infra* Teams was wait for physical servers to be procured, racked, configured, etc. the dev team is told where they can deploy by ops.
1. What does it look like today (problems faced)?
   1. **A big portion of resources and budget goes to undifferentiated integration and maintenance.** (e.g. Wanna spend less on maintaining tools and more on delivering business value? ) **Teams are silio'd by their tools** - each team has their favorite and is optimized to work with these set of tools.   They want to work "within" their specialized tools.  It is difficult to collaborate and trouble shooting across the stack because all of the teams don't have access to all the tools.
   1. **There is a long delay between code being written and then driving value for the company, or worse, it never gets to production at all.**  Code is written and then sits undeployed so that it is not driving value for the company. When problems or errors arise and need to be sent back to the developer it becomes difficult to troubleshoot because the code isn't fresh in their mind (context switching). They have to stop working on the code they've moved on to, in order to go back an re-acquaint themselves with the previous code to troubleshoot. Code is often written that never makes it to production. In addition to wasting time and money, this is demotivating for the developer who doesn't get to see the fruit of their labor.
   1. **Developers need to worry about environment dependencies and configuration rather than being able to solely focus on developing business logic.** They may even be spending time trying to decide what size VM they need to deploy to. In this order "DevOps" means "Developers have to do both dev and ops." Only a small percentage of developers actually enjoy this arrangement with most asking, "I'm a developer, please stop asking me to do operations."
1. What are the negative consequences to the business?
   1. **Large portion of budget spent on undifferentiated engineering.** Lost opportunity cost of not re-assigning maintenance engineers to drive value which leads to slower innovation and slower time to value.
   1. **Delayed and even unrealized revenue**. There's a delay between when code is written and when the business gets value from that code. Or worse, code is written that the business never gets value from.
   1. **Lower developer productivity, lower developer happiness, and  less reliable software (downtime  = lost revenue.)**  Developers are spending time working on infrastructure and configuration and not spending that time delivering business logic so they are less productive. They are working outside their core competencies. This means developer hiring and retention is negatively impacted. Uptime and resiliency is impacted because people who are not domain experts are put in charge of determining infrastructure.
1. What does it look like if a magic wand were to solve it today?
   1. **More engineers are working on the app instead of maintenance.** The maximum amount of human resources are devoted to driving business value.  - Dedicate the maximum amount of human resources to innovation (or "business value") instead of undifferentiated heavy lifting. (I have 500 engineers instead of 400)
   1. **Developers see their code in production quickly.**
       1. Infrastructure and deployment is fully automated.
       1. Developers are more motivated (everyone loves to see the output of their work)
       1. The business makes money on it - they can't make money on code that's sitting around not deployed (or never deployed)
       1. There's less risk in shipping smaller chunks of code
       1. With GitLab Developers have the ability to self-serve for testing so they have less overhead and coordination with a dedicated QA team.
   1. **Developers are focused on solving business problems.** Code is written to be environment and cloud agnostic. Development teams own the uptime of their own services, but they are enabled by the ops/SRE teams. Ops/SRE owns the infrastructure, dev owns the service. (My 400 engineers are each individually more productive)
1. What would be the positive outcomes for the business?
    1. Increased **speed of innovation** and ability to compete in the marketplace.
    1. **Revenue is pulled forward** because code in production is making money instead of sitting in a queue waiting to be deployed.
        1. "Pull revenue forward by getting code deployed faster"
    1. Great ability to **attract and retain talent.** Higher quality code and operations due to specialization. (dev focuses on dev, ops focuses on ops.)
1. What capabilities are required to make this happen?
    1. A single application that can provide functionality for the entire DevOps lifecycle
    1. Robust CI/CD
    1. Containers and Kubernetes.
1. How would you measure success (metrics)
    1. Cycle time, MTTR (Mean time to resolution)
    1. Time to value (delay from when code is written to running in production)
    1. Uptime, Error rate, infrastructure costs, HR retention rate
1. How does GitLab help solve the problem?
    1. GitLab is the only single application for the entire DevOps lifecycle. Teams all have access, have a single source of truth, and can collaborate seamlessly.
    1. GitLab's built-in CI/CD is best in class.
    1. GitLab has a built-in container registry and robust Kubernetes integration
1. Why are we better than the competition?
    1. **The only single application with all functionality built-in.**
    1. A **better CI/CD architecture than the competition.** Seamlessly a part of the same app as SCM. Errors and failures are surfaced directly on the developer's view (the merge request) for faster resolution. GitLab's runner architecture makes scaling jobs and running concurrent jobs simple.
1. What are the proof points that prove this?
    1. Customer stories/case studies
         1. [Jaguar Land Rover Chris Hill Video](https://about.gitlab.com/blog/2018/07/23/chris-hill-devops-enterprise-summit-talk/)
         1. [Human Geo switched from Jenkins to GitLab and cut costs by ⅓](https://about.gitlab.com/blog/2017/11/14/humangeo-switches-jenkins-gitlab-ci/)
         1. CNCF multi-project pipelines [video](https://www.youtube.com/watch?time_continue=373&v=Jc5EJVK7ZZk)

1. Analyst reports
    1. Forrester CI wave
1. Industry Awards
1. Other assets
    1. Scalable app deployment with GitLab and Google Cloud Platform (Kubernetes 101, GitLab GKE integration) https://www.youtube.com/watch?v=uWC2QKv15mk
    1. Google + GitLab - what is Kubernetes? https://www.youtube.com/watch?v=uWC2QKv15mk
    1. CNCF Webinar: Automating Kubernetes Deployments https://www.youtube.com/watch?v=wEDRfAz6_Uw
    1. CI/CD deep dive https://www.youtube.com/watch?time_continue=1888&v=pBe4t1CD8Fc
