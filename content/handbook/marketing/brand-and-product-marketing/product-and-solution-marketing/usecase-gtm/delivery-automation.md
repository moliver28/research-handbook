---
description: "How GitLab approaches the Automated Software Delivery solution including messaging and key resources to help marketing and sales."

title: "DevSecOps Solution Resource: Automated Software Delivery"
---








## Looking for a customer-facing overview of GitLab's Automated Software Delivery Capabilities?

See [Automated Software Delivery](https://about.gitlab.com/solutions/delivery-automation)

The page below is intended to align GitLab sales and marketing efforts with a single source of truth for our go-to-market efforts around Automated Software Delivery.

### Who to contact

|     Product Marketing    |    Developer Advocate    |
| ------------------------ | ------------------------- |
| Daniel Hom (@danielhom) / Aathira Nair (@anair5) | Itzik Gan Baruch (@iganbaruch) |


## Background (2 min read)

**Automated Software Delivery** allows organizations to develop software faster by making teams more productive, unlocking operational efficiencies, accelerating app modernization, and unleashing the value of digital transformation.
- From a GitLab capabilities point of view - it includes DevOps essentials like SCM, CI, CD, GitOps, AutoDevOps and Observability


The opportunity is huge. As per the [GitLab DevSecOps survey 2022](https://about.gitlab.com/developer-survey/previous/2022/) -
- 85% of organizations are using 2-10 DevOps tools
- 69% of organizations would like to consolidate their toolchains
- Devs are spending more time than ever before on maintaining or integrating toolchains. Nearly 40% said they spend between one-quarter and one-half of their time on these tasks (more than double the 2021 percentage), while 33% are spending at least half their time and as much as all of their time on toolchain integration and maintenance


Cloud transformation and application modernization is a key CIO initiative for 2022
- Automated Software Delivery becomes key to support the increase in cloud instances (microservices and ephemeral instances mean manually setting up, configuring and tearing down these instances is not feasible anymore)


## Getting Started {#getting-started}

### Who to meet / Ideal Customer Profile {#who-to-meet}

{: .alert .alert-gitlab-orange}

The persona interested in application automation is generally different from the persona interested in infrastructure automation and continuous delivery. Application automation interest comes from development or engineering organizations while infrastructure automation and continuous delivery interest comes from the operations, systems, infrastructure, platform and cloud side of the organization.

| | Enterprise | Mid Market | SMB |
| - | ----------- | -------------- |
| **User Persona** | SCM/CI-> Developer, team lead, DevOps Engineer <br> CD-> DevOps engineer, app operator, sys admin, release manager, platform engineer | SCM/CI-> Developer, team lead, DevOps Engineer <br> CD-> DevOps engineer, app operator, sys admin, release manager, platform engineer | varies |
| **Buyer Persona** | CIO / CTO at C level <br> SCM/CI -> Mgr / Director - App Dev <br> CD -> Mgr / Director - Infra/Ops | CIO / CTO at C level <br> SCM/CI -> Mgr / Director - App Dev <br> CD -> Mgr / Director - Infra/Ops | varies |
| **Tech Stack** | Includes GitHub, Perforce, Jenkins, BitBucket, Subversion, ArgoCD, Harness | Includes GitHub, Perforce, Jenkins, BitBucket, Bamboo, Subversion, ArgoCD, Harness OR the absence of a tech stack OR freemium version of GitLab / GitHub | Absence of tech stack OR freemium version of GitLab / GitHub |
| **Infra / Cloud Provider / Deploy Targets** | AWS or GCP or internal data center or Kubernetes | AWS or GCP (or none) or Kubernetes | AWS or GCP (or none) or Kubernetes |
| **Additional Criteria** | - Automation a key initiative <br> - merger & acquisition <br> - consolidation of CI-CD solutions <br> - increased hiring and projects <br> - hiring new CIO, App Dev, Infra teams | - Automation a key initiative <br> - increased hiring and projects <br> - hiring new CIO, App Dev, Infra teams | - increased hiring and projects <br> - adoption of new cloud/technologies |
| **Business Driver** | - Digital Transformation <br> - Cloud Transformation <br> - Application Modernization <br> - Automated Software Delivery | - Cloud Transformation <br> - Application Modernization <br> - Automated Software Delivery | - Cloud Transformation <br> - Application Modernization <br> - Automated Software Delivery |



### Keywords to listen for  {#keywords}

{: .alert .alert-gitlab-orange}

- Manual efforts
  - including Manual builds, Manual code reviews, Manual peer reviews, Manual testing, manual deployments, manual infrastructure configurations, amongst others.
- Employee dissatisfaction
  - listen to Repetitive tasks, too much time in managing pipelines, setting up and configuring pipelines, setting up and configuring infrastructure, managing releases
- Increase speed / velocity
- Cloud native applications
- Kubernetes and containers
- Multi platform / multi language support
- Cloud transformation
- Application Modernization

### Value discovery {#value-discovery}

{: .alert .alert-gitlab-orange}

### Discovery Questions — Current State: Where’s the pain?

1. **How much of your team’s job is manual?** This should help scope interest. Many teams struggle with little or no automation - resulting in inefficiencies, errors and employee dissatisfaction.  Key areas of manual effort include - unit testing, performance testing, code review, peer reviews, license checks, manual transfer of application images, manual deploy, manual post deploy testing, amongst others.
1. **How much time is your team spending in configuring, fixing, or maintaining your pipelines compared to doing “real work”?** Managing complex pipelines is a real problem. We find that our customers with complicated toolchains have more difficulty managing complex pipelines and supporting integrations. This usually makes implementing and maintaining CI/CD more expensive than originally planned.
1. **Are you able to manage both current and latest technologies with your existing toolset?** Moving to cloud or cloud native technologies like Kubernetes requires a different way of operation - their existing toolset may not be built ground up for such transformations and could require hacking a number of fragile integrations together to support.
1. **Are you able to measure key success metrics for your automation?** Metrics such as Change Lead Time, Deployment Frequency, Mean Time to Resolution, and Change Failure Rate. This will reveal the lack of integration and traceability across various tools being put together to achieve automation.
1. **Are you able to deploy with confidence?** Are you able to have full visibility into the pipeline from idea to production? Are you able to setup your infra, deploy in phases, test, roll back on error - all from a single application?

### Discovery Questions — Future State: Where Would You Like to Be?

1. **What does automation success look like?** What parts of your SDLC would you have fully automated? This can help uncover areas that they immediately see a pain and can help you identify areas of growth for the customer
1. **What would your team do with the time reclaimed from maintaining pipelines?** This provides an opportunity to discuss what true success would look and how freeing resources improves productive value added by the team
1. **What technologies do you see being supported by your CI-CD solution?** This can help uncover future technology adoption and drivers for change. They may also have a need to have various technologies being supported by the same solution
1. **What success metrics would you want to showcase?** What are the short term metrics and long term metrics? This can help uncover areas of success we can immediately showcase
1. **How important are safe, progressive deployments to your organization?** This uncovers the importance of downtime and how flexible deployment options are key to their automation success.



### Common Pains Points  {#common-pains}

| Challenges "before scenarios" | So What? "negative consequences" |
| ----------------------------- | -------------------------------- |
| Manual processes, lack of standardization | Highly inefficient and error prone processes |
| Employee dissatisfaction due to manual and repetitive processes | Employee churn, inability to hire & retain talent |
| Fragile, complex pipelines are tough to maintain | Requires expert, expensive team members who become a single point of failure |
| Adoption of new technologies not fast enough  | Requires new tools, expertise for managing new technologies  |
| Infrastructure configuration not fast enough or repeatable  | Lack of standardization and automation leads to higher downtime and errors  |
| Lack of scalable review and authorization processes  | Highly skilled workers doing menial tasks - leading to dissatisfaction  |
| Lack of safe deployment options and traceability  |  Longer time to repair, downtime and customer perception issues |


### Common benefits  {#common-benefits}

| Desired Future State (“After Scenarios”) | So What? (“Positive Business Outcomes”) |
| ----------------------------- | -------------------------------- |
| Faster time to value with automation and standardization of testing, review, packaging, release and deployment  |  Automation to focus on “real work”, less risk, improved employee satisfaction  |
| Faster mean time to repair with better traceability and deployment options  |  Reduce customer perception issues, downtime, improve retention  |
| Faster adoption of cloud native technologies  | Cloud native first development along with current deployment targets for more flexibility using a single tool   |
| Better employee satisfaction  |  Improved automation, removal of manual / repetitive tasks and reduce integration work improves employee satisfaction  |

### Required capabilities  {#required-capabilities}


| Required capability  | Customer Metrics |
| ----------------------------- | -------------------------------- |
| Test automation, pipeline configuration management  | Automation to focus on “real work”, less risk, improved employee satisfaction  |
| Change control and collaboration  | Reduce customer perception issues, downtime, improve retention  |
| Safe deployment and roll back  | Cloud native first development along with current deployment targets for more flexibility using a single tool  |
| Code quality, peer reviews  | Improved automation, removal of manual / repetitive tasks and reduce integration work improves employee satisfaction  |


### Customer Adoption and Value

These value statements are used to measure of GitLab Adoption by the customer and provide guidance to our field teams (CSMs in particular) for conversations on expanding usage.

##### CI Adoption Score

| Area | Measure | Value |
| -- | -- | -- |
| CI Utilization | Depth of CI Adoption as a percentage of licensed seats | - Increase build speeds. Development teams work more efficiently by reducing otherwise manual work.<br> - Catch potential errors sooner rather than later before they intensify.<br> - Maximize development time and improves productivity. Less manual work. <br> - Faster feedback and less risk that changes cause builds to break. <br> - Gives teams more flexibility, making it easier to adopt. <br> - Reduces business risk and protects intellectual property. Instills confidence in end-users. |
| Container Registry | Container registry enabled  | - Centralize the publication and consumption of container images <br> - Standardize on authentication methods and authorization models throughout your software lifecycle <br> - Eliminate the need to store & rotate credentials for third-party systems (i.e. leverage CI Job Tokens with GitLab CI to authenticate) <br> - Ensure standardized use of cloud object storage to limit attack surface (eg. avoid leaks through open S3 buckets) <br> - Improve visibility and control over cloud storage utilization on a per-project/per-group basis (i.e. through storage quotas, expiration policies, and usage reporting) |
| Templates | The number of instance-wide template repositories that exist in an instance | - Proliferate best-practices approaches through easily reusable pipeline templates <br> - Promote innersourcing and collaboration through the use of templates <br> - Speed time to green pipeline by providing new projects a well defined starting point <br> - Improve compliance with required reporting, or other important pipeline tasks (test coverage, linting, scanning, etc.) |
| Deployments Utilization | Depth of Deployment adoption as a percentage of licensed seats | - Faster time to value with automation and standardization of testing, review, packaging, release and deployment <br> - Faster mean time to repair with better traceability and deployment options <br> - Cloud native first development along with current deployment targets for more flexibility using a single tool |
| Deployment Count per User L28D | Deployment Count per User (last 28 days) <br> - Number of deployments within last 28D divided by number of licensed users | - Faster time to value with automation and standardization of testing, review, packaging, release and deployment <br> - Faster mean time to repair with better traceability and deployment options <br> - Cloud native first development along with current deployment targets for more flexibility using a single tool |
| Value Stream analytics | How many users went to the VSA page in the last 28 days | - VSA helps businesses identify and target waste and inefficiencies, and take action to optimize those workstreams to deliver the highest possible velocity of value. <br> - GitLab's one platform approach ensures a single platform, workspace and data model which creates a shared view of actionable insights, of your end to end software delivery lifecycle |

## Positioning value  {#positioning-value}

{: .alert .alert-gitlab-orange}


### Elevator pitch

GitLab enables you to deliver better software, faster. Unleash team productivity and efficiency, and accelerate the velocity of software development by automating the build, test, and deployment of your applications. Accelerate your digital transformation and app modernization goals with automated provisioning and maintenance of cloud-native infrastructure Finally, GitLab allows you to easily start where you are, and reduce tooling and complexity as your adoption matures with our flexible platform that has built-in, end-to-end security and out-of-the-box integrations

### Value Proposition (How GitLab does it?)

- **GitLab helps you deliver better software, faster**
> "Instead of spending a full day setting up for production and doing manual tests, those simple tasks are now automated. This allowed release time to go from 24 hours to just 10 minutes." - [Airbus](https://about.gitlab.com/customers/airbus/)
- **GitLab is one of the easiest platforms to get started with your DevOps journey**
> "It just worked. That was the biggest success because we didn’t have any problems with installing GitLab, with updating it and it was really simple to start for us," [MGA]
- **GitLab allows you to start where you are in your journey and reduce other tools as your adoption matures**
> "As per the Forrester Total Economic Impact study, customers were able to eliminate at least 3 tools per year" [TEI](https://about.gitlab.com/resources/report-forrester-tei/)
- **GitLab supports your cloud-native application transformations (as well as your traditional applications!)**
> "GitLab integrates natively with Kubernetes, which gives the development team peace of mind because they can trust that the tool will work automatically without constant maintenance." - [Hotjar](https://about.gitlab.com/customers/hotjar/)
- **GitLab allows you to automate infrastructure and deploy to different cloud providers (and your existing infrastructure as well)**
> "Our DevOps teams can provision production-ready solutions within minutes, from Kubernetes to multi-cloud and multi-tier complex hybrid cloud infrastructures" - [SURF](https://about.gitlab.com/customers/surf/)
- **GitLab is a single application for full Automated Software Delivery including change management, CI/CD and infrastructure automation allowing you to achieve better stability and ship high quality applications faster**
> "If something goes wrong, GitLab offers a simple fix. For example, if we deployed the wrong ratio of our services to the server, we can see the history, read the commit message, and identify the author to roll back commits" - [Parimatch](https://about.gitlab.com/customers/parimatch/)
- **GitLab helps improve developer experience**
> "Developer happiness matters because happy developers simply do better work. You need to keep your developer experience at a high level because that’s the only way you really can deliver value fast. GitLab has played … a significant part in helping us increase our developer experience.” - [Moneyfarm](https://about.gitlab.com/customers/moneyfarm/)

### Differentiators (How GitLab does Automated Software Delivery better?)

Apart from the single application, DevOps Platform narrative, there are a number of key areas which GitLab does well and better than competitors.

| Differentiator | Description |
| -------------- | ----------- |
| **Multi-platform** | Execute builds on Unix, Windows, OSX, and any other platform that supports Go |
| **Multi-language** | Build scripts work with Java, PHP, Ruby, C, and any other language |
| **Multi-deployment targets** | Deploy to embedded systems, on-premise servers, Raspberry Pi devices, mainframes, virtual machines, Kubernetes clusters, FaaS offerings, multiple clouds like AWS, GCP, Azure, IBM and Oracle |
| **Faster builds** |  GitLab splits builds over multiple machines for parallel execution |
| **Autoscaling** | Automatically spin up and down VM's or Kubernetes pods to make sure your builds get processed immediately while minimizing costs |
| **Versioned tests** | a .gitlab-ci.yml file that contains your tests, allowing developers to contribute changes and ensuring every branch gets the tests it needs |
| **Flexible Pipelines** | Define multiple jobs per stage and even trigger other pipelines |
| **Ease test environment creation** | With the review app - use custom Docker images, spin up services as part of testing, build new Docker images, run on Kubernetes - use this to run UX tests, DAST, usability tests etc |
| **Built in Container Registry** | built-in container registry to store, share, and use container images |
| **Distributed version control** | Reduced time to clone and fetch large repos for geographically distributed teams |
| **Product development management** | Version control not just source code but also IP, graphic assets, animations and binaries to mention a few |
| **Unified deployment and observability** | Visualise what goes into production (Review apps and release planning), what to deploy to production (feature flags) , who to deploy it to (Progressive Delivery and deployment strategies like Canary), monitor performance of deployment (via browser performance testing, performance monitoring/tracing) and rollback based on performance via post deployment monitoring, all from a single application |
| **Secure Kubernetes Cluster access** | Avoid exposing your cluster by establishing a secure connection with your Kubernetes cluster for your CI/CD jobs |
| **Push and pull based deployments** | Majority of customers still prefer the control that push based deployment gives, we support both |


### Competitors

From a competitive comparison for Automated Software Delivery, the following are the key competitors and what they are lacking at a high level. Review the detailed comparison in the [devops-tools](https://about.gitlab.com/competition/) comparison pages
- [GitHub](https://about.gitlab.com/competition/github/) - Strong on SCM, GitHub Actions for CI/CD is still not ready for primetime. GitLab can integrate and migrate customers using GitHub for SCM easily with GitLab.
- Jenkins - Complex to manage, many fragile integrations, not suitable for cloud native transformation
- [JFrog](https://about.gitlab.com/competition/jfrog/) - Strong on CI, but requires integrations or has limited capabilities for rest of the areas.
- [Circle CI](https://about.gitlab.com/competition/circleci/)
- [Weaveworks Flux CD](/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/usecase-gtm/gitops/#weaveworks---using-flux-oss-operator) - Main solution only for the GitOps operator, requires multiple integrations to achieve end to end GitOps flow.


### Handling Objections

| Objection | Response |
| ----------------------------- | -------------------------------- |
| *“I don’t need another tool to replace my existing tool”*  | - We can meet you where you are - you don’t need to rip and replace all your existing tools <br> - You can start by supplementing GitLab CI or CD or SCM with your existing toolset of Jira, GitHub, Jenkins etc <br> - Once you find value in the specific area (e.g., SCM, CI, CD, Security, Compliance) - you can expand your use of GitLab to achieve better ROI  |
| *“I don’t want to be locked into one company for my entire DevOps lifecycle”*  | - Toolchain sprawl is a reality - many customers have stopped benefitting from DevOps due to this <br> - Application & resource integration & management actually hinders how fast the organization can move. <br> - Customers partner with GitLab to accelerate time to market for new products/services, improve efficiencies & reduce security & compliance risks. Walk me through how your priorities align with these outcomes.  |
| *“Each development team decides what they need”*  | - Allowing each team to decide creates silos of innovation & development. It also significantly limits the impact of your digital transformation. <br> - Each team then also needs to setup, integrate and maintain these integrations. <br> - Describe how this works for you. How many tools have you spent money on as a result?   |


## Key Value at different tiers  {#tier-value}

{: .alert .alert-gitlab-orange}

### Value at Premium

As organizations get started and grow in their automation journey, GitLab Premium offers Faster Code Reviews, Advanced CI/CD, Release Controls and Self-managed reliability with expert support to enhance team productivity and collaboration. GitLab Premium adds enterprise level features like priority support, upgrade assistance and a technical account managers (for eligible accounts).

For up-to-date and full list of value at Premium, visit [Why Premium](https://about.gitlab.com/pricing/premium/). Some key features include (based on highest Post Purchase Survey Results):

- **Faster code reviews** Ensure high code quality across teams through seamless code review workflows
  - [Multiple approvers](https://docs.gitlab.com/ee/user/project/merge_requests/approvals/rules.html) in code review To ensure strict code review, you can require a minimum number of users to approve of a merge request before it is able to be merged.
  - [Code Owners](https://docs.gitlab.com/ee/user/project/codeowners/) Assign Code Owners to files to indicate the team members responsible for code in your project. Code owners are assigned automatically as merge request approvers.
  - [Code Review Analytics](https://docs.gitlab.com/ee/user/analytics/code_review_analytics.html) Find bottlenecks in your code review process by understanding how long open merge requests have been in review.
- **Advanced CI/CD** Build, maintain, deploy, and monitor complex pipelines
  - [CI/CD Pipelines Dashboard](https://docs.gitlab.com/ee/user/operations_dashboard/) Visualize the history and current status of pipelines across projects and groups all in a single dashboard that can be customized for each user.
  - [Multi-project pipeline graphs](https://docs.gitlab.com/ee/ci/multi_project_pipelines.html) Visualize how pipelines across projects are linked together, including cross project dependencies.
  - [Merge Trains](https://docs.gitlab.com/ee/ci/pipelines/merge_trains.html) Reduce pipeline queueing and waiting time with merge trains which allows parallel pipeline execution, with each pipeline building off the merge result of the previous one.
  - [CI/CD for external repo](https://docs.gitlab.com/ee/ci/ci_cd_for_external_repos/) Connect your projects hosted on external services (like GitHub or Bitbucket) and leverage the power of GitLab CI/CD pipelines to build, test, and deploy your applications easily.
- **Release Controls** Implement controls to ensure teams ship high quality and secure code
  - [Approval rules for code review](https://docs.gitlab.com/ee/user/project/merge_requests/approvals/rules.html) Approval rules ensure that the right people review merge requests by specifying eligible approvers and the minimum number of approvals required for a merge request.
  - [Required Merge Request Approvals](https://docs.gitlab.com/ee/user/project/merge_requests/approvals/) Guarantee quality and standards of your code by mandating a set number of necessary approvals and predefine a list of specific approvers.
  - [Merge Request Dependencies](https://docs.gitlab.com/ee/user/project/merge_requests/dependencies.html) Coordinate the order in which merge requests are merged within the same project and/or across different projects.
  - [Push rules](https://docs.gitlab.com/ee/push_rules/push_rules.html) Reject new code and commits that don't comply with company policy.
- **Self Managed Reliability** Ensure disaster recovery, high availability and load balancing of your self-managed deployment
  - [Disaster Recovery](https://docs.gitlab.com/ee/administration/geo/disaster_recovery/index.html) Fail over in minutes to another data-center.
  - [Maintenance mode](https://docs.gitlab.com/ee/administration/maintenance_mode/index.html) Maintenance mode allows systems administrators to perform maintenance operations, such as preparing for a scheduled failover, with minimal disruption to end users.
  - [Fault-tolerant Git storage with Gitaly](https://docs.gitlab.com/ee/administration/gitaly/praefect.html) Configure replicated Git storage with automatic failover, strong consistency, and read distribution for improved fault tolerance and performance.


### Value at Ultimate

Most of the value of the Automated Software Delivery Solution is available to customers at the GitLab Premium tier. GitLab Ultimate adds Security, Compliance, Portfolio and Value Stream Management - which are covered by other solution areas.

For up-to-date list of value at Ultimate, visit [Why Premium](https://about.gitlab.com/pricing/ultimate/).


## Resources {#resources}

{: .alert .alert-gitlab-orange}

### Related Pages  {#resource-page}

- Continuous integration ([Sales Resource Page](/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/usecase-gtm/ci/), [Customer Solution Page](https://about.gitlab.com/features/continuous-integration/))
- Continuous Delivery ([Sales Resource Page](/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/usecase-gtm/cd/), [Customer Solution Page](https://about.gitlab.com/stages-devops-lifecycle/continuous-delivery/))
- Source Code Management ([Sales Resource Page](/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/usecase-gtm/version-control-collaboration/), [Customer Solution Page](https://about.gitlab.com/stages-devops-lifecycle/source-code-management/))
- GitOps ([Sales Resource Page](/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/usecase-gtm/gitops/), [Customer Solution Page](https://about.gitlab.com/solutions/gitops/))

### Customer Stories  {#customer-stories}

| Company | Problem | Solution | Result |
| [Goldman Sachs](https://about.gitlab.com/customers/goldman-sachs/) | Needed to increase developer efficiency & software quality | GitLab Premium (CI/CD, SCM) | Improved 2 builds/day to 1000+/day; simplified workflow & administration |
| [Sopra Steria](https://about.gitlab.com/customers/sopra_steria/) | Needed to standardize a tool for DevOps with single authorization | GitLab Premium (CI/CD, SCM) | Less than 6 minute builds, deploying to AWS, GCP, Azure  |
| [Wag!](https://about.gitlab.com/2019/01/16/wag-labs-blog-post/) | Slow release process taking over 40 minutes | GitLab Ultimate (CI, CD) | Release process reduced to 6 minutes; 8 releases per day with built-in security; a full deployment pipeline to Amazon Elastic Container Service (ECS)  |
| [ANWB](https://about.gitlab.com/customers/anwb/) | Prolonged outages, long time to debug toolset integrations | GitLab Premium (CI, CD) |  Setup for cloud transformation - Google Cloud on K8S |
| [Ticketmaster](https://about.gitlab.com/blog/2017/06/07/continuous-integration-ticketmaster/) | Slow build process prevented innovation | GitLab Premium (CI) | 15x faster - from over 2 hours to 8 minute builds; faster releases and better customer experiences (5 star app reviews)  |
| [Hotjar](https://about.gitlab.com/customers/hotjar/) | Legacy systems, maintenance of tool integration, slow adoption of cloud technologies | GitLab Premium (Ci, CD) |  50% faster deployments, 30% faster build times, 2-15 deploys per day |
| [Paessler](https://about.gitlab.com/customers/paessler-prtg/)  | Large complex pipelines, slow feedback loop | GitLab Premium (Ci, CD) | 75% faster build times, testing from 45 min to 15 min  |

More case studies here -> Filter by Usecase *CI* or *CD* or *SCM* or *GitOps* to find the latest case studies in the [case study board](https://gitlab.com/gitlab-com/marketing/strategic-marketing/customer-reference-content/case-study-content/-/boards/1804878)

### Webinars, e-books, whitepapers, videos, presentations  {#resources-list}

#### Customer facing presentations

- [Source code management](https://docs.google.com/presentation/d/1mVi6-dsMsaA-KPVd2fn1StXuJQ62-kJDm-4J0rc_B1U/edit?usp=sharing)
- [Continuous Integration](https://docs.google.com/presentation/d/1O6iwRt1DO9m-3vp3RAsUDLp6PGTOoA16UUrsBmx_MJo/edit#slide=id.p)
- [Continuous Delivery](https://docs.google.com/presentation/d/1bGdjQNfHxmYKYz_ZsrtyhEyXLGlv8UoTavi_aGl3UNc/edit#slide=id.p)
- [GitOps](https://docs.google.com/presentation/d/1o728pUdk1rrNqWAZpzZVdfZ3gzADvTXSssVzqL-6WB4/edit#slide=id.g8d846209b0_25_172)

### WebPage, Whitepapers, infographics, blogs
- [What is GitOps?](https://about.gitlab.com/topics/gitops/)
- [Infrastructure as Code using GitLab & Ansible](https://about.gitlab.com/blog/2019/07/01/using-ansible-and-gitlab-as-infrastructure-for-code/)
- [Part 1 of 3: Why collaboration technology is critical for GitOps](https://about.gitlab.com/topics/gitops/gitops-gitlab-collaboration/)
- [Part 2 of 3: How infrastructure teams use GitLab and Terraform for GitOps](https://about.gitlab.com/topics/gitops/gitlab-enables-infrastructure-as-code/)
- [Part 3 of 3: How to deploy to any cloud using GitLab for GitOps](https://about.gitlab.com/topics/gitops/gitops-multicloud-deployments-gitlab/)
- [GitOps with GitLab: The CI/CD Tunnel](https://about.gitlab.com/blog/2022/01/07/gitops-with-gitlab-using-ci-cd/)
- [Auto DevOps 101: How we’re making CI/CD easier](https://about.gitlab.com/blog/2019/10/07/auto-devops-explained/)
- [Progressive Delivery](https://about.gitlab.com/blog/2019/04/19/progressive-delivery-using-review-apps/)
- [How We Switched to a Continuous Delivery Pipeline in 3 months](https://medium.com/faun/how-we-switch-to-a-continuous-delivery-pipeline-in-3-months-9667b9f65f7a)

### Videos
- SCM: [Source Code Walk Through, January 2020](https://www.youtube.com/watch?v=wTQ3aXJswtM) by James Ramsey, Group Product Manager for the Create Stage
- SCM: [GitLab Flow pattern](https://youtu.be/InKNIvky2KE?list=WL)
- SCM: [Design Management Walkthrough, January 2020](https://youtu.be/LzFRBMGl2SA) by Christen Dybenko, PM Knowledge Group
- SCM: [Web IDE walkthrough, January 2020](https://www.youtube.com/watch?v=oDZu71nWctc&list=PL05JrBw4t0Kp0LPy37-rcLf9KYppouxPR&index=11&t=2s) by Kai Armstrong, PM Editor Group
- SCM: [Merge Request and Source Control as part of the Software Development Life Cycle](https://youtu.be/UuX-GnYWNwo?t=274) by William Chia sPMM CI/CD
- SCM: [GitLab Namespaces: users, groups and subgroups](https://www.youtube.com/watch?v=r0sJgjR2f5A) by Brendan O'Leary, Tech Evangelist
- SCM: [Rich Change Controls for Building Workflows you can Trust](https://youtu.be/uW95PV8d-w8?t=186) by Darwin Sanoy, Solutions Architect
- CI/CD: [CI/CD with GitLab](https://youtu.be/1iXFbchozdY)
- CI/CD: [GitLab for complex CI/CD: Robust, visible pipelines](https://youtu.be/qy8A7Vp_7_8)
- CI/CD: [How do Runners work?](https://youtu.be/IsthhMm64u8)
- CI/CD: [Mastering CI/CD](https://about.gitlab.com/webcast/mastering-ci-cd/)
- CI/CD: [What is Auto DevOps?](https://www.youtube.com/watch?v=pPRF1HEtQ3s&feature=youtu.be)
- GitOps: [What is GitOps? Why is it important? How can you get started?](https://www.youtube.com/watch?v=JtZfnrwOOAw)
- GitOps: [What is Infrastructure as Code](https://www.youtube.com/watch?v=zWw2wuiKd5o)
- GitOps: [Infrastructure as Code using GitLab & Ansible](https://youtu.be/M-SgRTKSeOg)
- GitOps: [Part 1 of 3: How GitLab supports GitOps: The Process](https://www.youtube.com/watch?v=wk7YAXijIZI)
- GitOps: [Part 2 of 3: How GitLab supports GitOps: The Infrastructure](https://www.youtube.com/watch?v=5rqoLj8N5PA)
- GitOps: [Part 3 of 3: How GitLab supports GitOps: The Application](https://www.youtube.com/watch?v=heQ1WY_08Tc)
- GitOps: [GitOps with GitLab and Terraform](https://www.youtube.com/watch?v=G7JOjI6V3AY)
- GitOps: [Using GitLab for GitOps to break down silos and encourage collaboration](https://www.youtube.com/watch?v=5ykRuaZvY-E)
- GitOps: [GitOps Click Through Demo](https://drive.google.com/open?id=1UT32lLvXtwAslkK7o8asbko3a231WKrjmlcM0z9coPw)

#### Training
- [Git in Gifs](https://www.youtube.com/playlist?list=PLFGfElNsQthZcx-NEyMsPl-dl3Q_p-3yv)
- [Why You Should Move To Git](https://www.youtube.com/watch?v=iVUqKJpHc5s)
- [CI/CD Overview Video](https://www.youtube.com/watch?v=wsbSvLyC2Z8)
- [CS Skills Exchange: CI Deep Dive](https://www.youtube.com/watch?v=ZVUbmVac-m8&list=PL05JrBw4t0KorkxIFgZGnzzxjZRCGROt_&index=3&t=0s)
- [CS Skills Exchange: Runners Overview](https://www.youtube.com/watch?v=JFMXe1nMopo&list=PL05JrBw4t0KorkxIFgZGnzzxjZRCGROt_&index=11&t=0s)
- [CS Skills Exchange: Runners Overview](https://www.youtube.com/watch?v=JFMXe1nMopo&list=PL05JrBw4t0KorkxIFgZGnzzxjZRCGROt_&index=11&t=0s)
- [Technically Competing Against Microsoft Azure DevOps](https://drive.google.com/open?id=18jwSeeUylGXv8LoEedCMRfBZt9t7QLOYKCHJp-SvdqA) *(GitLab internal only)*
- [Competing Against Jenkins](https://drive.google.com/open?id=1IvftLfaQyKn5-n1GLgCZokOoLU-FFzQ8LfJ9cf0FVeg) *(GitLab internal only)*
- [Make Your Life Easier with CI/CD Presentation](https://docs.google.com/presentation/d/1scYkmV4Xdfj-8iwwpEiLCe0vBfpAdrL5pyA2w1Fgnf0/edit#slide=id.g7193b194b5_0_96)


#### Demo Videos and Click through demos
- [All Marketing Click Through Demos](/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/demo/#click-throughs)
- [All Marketing Live Demos](/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/demo/#live-instructions)
- [Jira & Jenkins Integration Video](https://www.youtube.com/embed/Jn-_fyra7xQ)
- [How to setup the Jira Integration](https://www.youtube.com/watch?v=p56zrZtrhQE)
- [GitHub Integration Video](https://www.youtube.com/embed/qgl3F2j-1cI)
- [Migrating from Jenkins to GitLab](https://youtu.be/RlEVGOpYF5Y)
- [Using GitLab CI/CD pipelines with GitHub repositories](https://youtu.be/qgl3F2j-1cI)
- [Live Demo: GitLab CI/CD Deep Dive](https://youtu.be/pBe4t1CD8Fc)

### Services {#services}

GitLab Professional Services help customers become efficient in GitLab quickly. GitLab (or a GitLab partner) offers a number of service offerings to support customers.

Here are some service offerings you can position with the customer:
1. [GitLab CI/CD Training](https://about.gitlab.com/services/education/gitlab-ci/)
1. [GitLab with Git Basics Training](https://about.gitlab.com/services/education/gitlab-basics/)
1. [Data Migration Services](https://about.gitlab.com/services/migration/)
1. [Dedicated Engineering](https://about.gitlab.com/services/dedicated-engineering/)


Advisory/Consulting services to help with GitOps rollout are planned to be rolled out later this year. Please register your interest for a GitOps Advisory offering [here](https://gitlab.com/gitlab-com/customer-success/professional-services-group/ps-leadership-team/ps-practice-management/-/issues/74) to help PS effectively prioritize!

As you position services, you can use our [Services Pitch Deck](https://docs.google.com/presentation/d/1CFR8_ZyE9r4Dk_mjoWGe4ZkhtBimSdN0pylIPu-NAeU/edit#slide=id.g2823c3f9ca_0_9) to help establsh the value of engaging with PS. Other services can be found in our [Complete list of professional service offerings](https://about.gitlab.com/services/)

Talk with @em in the [professional services slack channel](/handbook/customer-success/professional-services-engineering/working-with/#slack) to learn more.
