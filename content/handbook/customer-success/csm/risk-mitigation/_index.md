---

title: "CSM Strategies for Mitigating Risk In Customer Accounts"
description: "CSM Strategies for Mitigating Risk In Customer Accounts"
---






## **Types of Risk**

We have identified these as the most common types of risk in an account:

- **Cost/Budget**
   - Over License
   - Acquisition by larger entity
   - Downsizing (ie, Covid related)
- **ROI** (the customer doesn't feel they're getting value)
   - Not a priority
   - Lack of a plan
   - Lack of leadership support
- **Competitive**
- **Product** (the product does do what they want or meets their needs or isn't mature enough)
- **Product Usage** (not using features & functionality they've paid for... Ex. Ultimate customer not using Secure)
- **Lack of Engagement/Loss of Champion**

## **Discovery into the Risk**

It can be beneficial to read back the [Command Plan](/handbook/sales/command-of-the-message/command-plan/) in SFDC and discuss the risk internally with the account team on original reasons for purchase. Then check back with the customers if these original value drivers still apply and if they still align with company goals. Use our [Command of the Message](/handbook/sales/command-of-the-message/) to find additional discovery questions.

Based on the identified type of risk, the CSM can use some of the following questions to dig a bit deeper into the risk, that may help identify mitigation options:

### Cost/Budget

   - Over License
      - `Do you know how to regularly prune inactive users?`
      - `Are you aware of our "User Cap" functionality?`
      - For Ultimate: `Are you aware of our "Guest Users" functionality?`
   - Acquisition by larger entity
      - `What is the integration plan and timeline with the new entity?`
      - `Will you be required to adopt their toolchain?`
      - `Do they have any existing master service agreements (MSA's) in place that you'll be required to follow?`
      - `What tools does the new entity use?`
   - Downsizing (ie, Layoffs)
      - `Do you anticipate a re-hiring of laid-off workers? If so, what's the timeline?`
   - `What's your fiscal year?`
   - `Have you budgeted for a certain number of users?`
   - `Do you have a growth plan for adding users over time?`
   - `Do you understand our licensing (ie, true-ups)?`

### ROI (the customer doesn't feel they're getting value)

   - Not a priority / Lack of leadership support
      - `What are your DevOps priorities? How can we align with those?`
   - Lack of a plan
      - `How can we help you adopt greater use and derive greater value from GitLab?`
   - `Where do you feel you're getting the most value out of GitLab right now?`
   - `Where do you feel you're getting the least value out of GitLab right now?`

### Competitive

   - `Where do you feel other products are stronger or provide more value than GitLab?`
   - `Is this a pricing issue or a feature issue?`

### Product (the product does do what they want or meets their needs or isn't mature enough)

   - `Have you worked with your CSM on a prioritized list of features?`
   - `What feature(s) do you need **right now** to continue using GitLab?`
   - `Where do you see more opportunity to replace other tools if GitLab was more mature?`

### Product Usage (not using features & functionality in their license tier)

#### Ultimate Customer not using Secure

We should generally begin by presenting our DevSecOps Maturity Score demonstrating to the customer their current usage of GitLab Secure. Once they understand the level to which they're using Secure, we can dig a bit deeper with some discovery questions:
   1. `What kind of security tests are mandated or recommended within your organization?`
      - If they give any answer related to 3rd party products, just to question 2.
      - If they say “nothing is mandated/recommended”, ask “why”.
      - Adoption is shown to increase dramatically when leadership has bought into the solution and mandates usage.
   1. `What tools are you using to meet those mandates?`
      - Third-party or custom-built in-house solutions?
      - Are those specific tools mandated or do teams have the freedom to choose what they use?
   1. `Does your organization have a concrete shift-left or DevSecOps initiative in play?`
      - If “Yes”... “Tell me about that in terms of tooling and timelines.”
   1. `Are you aware that you can enforce compliance and security testing at the group level using our compliance frameworks?`
      - If they say “No”, arrange for enablement around compliance frameworks.
      - If they say “Yes”, follow up with “Are you using them to ensure security compliance?”

#### Customer not using CI

We should generally begin by presenting our CI Maturity Score demonstrating to the customer their current usage of GitLab CI *if* they are using CI to some degree. Once we understand how many users (if any) are using CI today, we can then dig a bit deeper with some discovery questions:
   - `What are users currently using as CI tool?`
      - Users can still use other products for CI. Offer to help them migrate.
   - `Why aren't users moving to GitLab CI?`
   - `What is blocking users to adopt CI pipelines in GitLab?`
      - Lack of knowledge is often a blocker for CI adoption
   - `How can we support you in improving adoption?`

   Customers may also be stuck on topics around the migration off of other tools, developer sentiment, lack of buy-in or other areas of challenge.  [Please reference the CI Landing Zone](/handbook/customer-success/csm/adoption-landing-zones/CI/) for training and content addressing these challenges.

### Lack of Engagement/Loss of Champion

   - `Who is in charge of maintaining GitLab going forward?`
   - `Is there someone in your organization in charge of tool adoption or change management?`

## **Mitigation**

Once we know the risk and done some discovery into that risk, we have some options available to help mitigate that risk:

### Cost/Budget

- Explore cloud provider retiring spend
   - Lots of company's have minimum amounts they have to spend on the cloud every year to continue receiving discounts. They can use that spend on GitLab and we only take a 3% haircut to the cloud provider, but its better than 100% churn.
- Help identify other redundant tools that GitLab can replace.
   - Good areas to target are CI/CD tools, Package tools (eg. Artifactory) and Security tooling

### ROI

- This can be used as part of the cost/budget risk mitigation strategy.
- Product Marketing has been helpful in putting together generic ROI decks that can be tailored to a specific customer.
- Our marketing page has an ROI calculator: https://about.gitlab.com/calculator/

### Competitive

- Product Marketing has numerous battle cards based on the competitor [linked in our handbook](/handbook/sales/qualification-questions/#additional-questions-if).
- Seek help in the #competition Slack channel
- It's very important to determine the "why this competitor" instead of the "who is the competitor". The why is usually a cost or feature/functionality disparity. This will also help determine mitigation.

### Product

- Based on the discovery questions, identify the gaps.
- If it's a maturity problem, each product Stage has a roadmap page in the handbook. Product Managers are also generally very happy to get on a call with a customer to discuss the roadmap and to listen to the customer's needs and wants.
- If its a functionality gap, make sure that you've identified all the gaps and added the customer to the relevant issues using the [Product Feedback Template](/handbook/product/how-to-engage/#feedback-template). Its also a good opportunity to get a PM on a call with the customer to help advocate for these issues and get them on the roadmap.

### Product Usage (not using features & functionality in their license tier)

#### Ultimate Customer not using Secure

- Offer a [Secure Workshop](/handbook/customer-success/workshops/secure/) if they don't understand the value of GitLab Secure.
- Present our [DevSecOps Adoption Path](https://docs.google.com/presentation/d/16dQw4KI-swX85G8utpdVUkT_BXGYsvtlu3Qb_-VP6Bg/edit#slide=id.g14710b3b06d_0_232) **[Internal Link]** to a Development Team Lead to help guide the customer to adopting GitLab Secure functionality. Presenting to the right persona is critical as they have the influence to enact/enforce the adoption path recommendations
- Try to identify teams who are willing to test out Secure functionality at a small scale
- Try to engage with the Security team to find out what policies aren't being followed
- Try to engage with the Economic Buyer and let them know of the lack of adoption (through a DevSecOps Maturity Score presentation) and your concerns
   - Encourage them to implement a top-down mandate to use more GitLab Secure
- Track adoption progress during cadence calls by presenting updated DevSecOps Maturity Scores and trend patterns

#### Customer not using CI

- Offer an [Advanced CI/CD workshop](/handbook/customer-success/workshops/ci-workshop.html) if they have difficulty in building pipelines.
- Work with the GitLab team to build CI/CD templates for certain jobs and pipelines to make it easier for users to adopt CI.
- If it is a migration problem, work with the customer on tutorials to do a migration
   - Try to identify teams who are willing to work with you on their pipeline
   - Extract templates out of the teams pipeline to share to the broader audience
   - Run AMA sessions with the customer to answer any pipeline questions.

### Lack of engagement/Loss of champion

- For lack of engagement, please see our [Strategies for Non-Engaged Customers](/handbook/customer-success/csm/engagement/Non-engaged-customer-strategies/) handbook page.
- For a loss of champion, the CSM and their sales counterpart are to proactively seek out and establish new champions
   - Identify who's replacing your champion and cultivate that relationship.
   - Find someone who loves GitLab and include them in future calls (if they aren't already).
   - CSMs should be quick to loop in GitLab executive contacts to reach out to the customer at the highest levels.
   - Even if a champion leaves, there's still going to be someone in a position of authority who can advocate for us. Find that person.

