---

title: Hightouch
description: Hightouch Overview
twitter_image: /images/tweets/handbook-marketing.png
twitter_site: "@gitlab"
twitter_creator: "@gitlab"
---








# <i class="fab fa-gitlab fa-fw" style="color:rgb(252,109,38); font-size:.85em" aria-hidden="true"></i>


## DRIs

| DRI            | Role            |
| -------------- | --------------- |
| Amy Waller     | Business Owner  |
| Mihai Conteanu | Technical Owner |


## Hightouch Handbook - Syncing Data to Iterable

Welcome to the Hightouch Handbook! This documentation page provides essential information on using the Hightouch tool to sync data to [Iterable](/handbook/marketing/marketing-operations/iterable/). As the Marketing Operations Manager, it's crucial to have a reliable and efficient data synchronization process, and Hightouch plays a vital role in achieving that. Let's dive into the key components: syncs, models, sources, and objects.

## Syncs


| Sync Name                               | Object          | Type        | Sync refresh | Description                                                              |
|-----------------------------------------|-----------------|-------------|--------------|--------------------------------------------------------------------------|
| Iterable-Production                     | Record/user     | Update Only | 24 hours     | Syncs data on all namespaces a person is member                          |
| Iterable - First Namespace Details Sync | Record/user     | Update Only | 24 hours     | Syncs data in individual fields on the first namespaces a person created |
| Iterable - First Namespace Details Sync | Custom Event    | Update Only | 24 hours     | Syncs events in Iterable for tracking and debuging purposes              |
| Marketo Activities                      | Custom Activity | Update Only | 24 hours     | Creates custom activities in Marketo                                     |


Syncs are the core of Hightouch's data transfer capabilities. They facilitate the transfer of data from various sources to Iterable. In simple terms, syncs are the operations that keep our data in Iterable up to date. By configuring syncs to meet our needs, we ensure accurate and relevant data for delivering campaigns such as onboarding experiences and nurture emails.


Key elements of a Hightouch sync configuration:

- Model: The model that you want to sync. The model defines the object types and fields that you want to sync.
- Destination: The destination that you want to sync to. Hightouch supports a variety of marketing tools and systems, as well as custom destinations. Each destination acts as an add-on expense. We are utilising Marketo and Iterable.
- Sync mode: The sync mode that you want to use. Hightouch supports upsert, insert, and update sync modes.
- Record matching: How rows in the source should be matched to records in the destination. This is especially important for update and upsert syncs.
- Schedule: The frequency of the sync. You should consider the frequency of your sync. If you sync too often, you may put a strain on the data warehouse and marketing tools. As a standard we are syncing data once every 24 hours.

### Tips
- When configuring a Hightouch sync, it is important to carefully consider the data that you want to sync. The data should be relevant to the destination that you are syncing to.
- You should also carefully consider the sync mode that you want to use. If you use the wrong sync mode, you may overwrite data in your destination.
- It is important to test your syncs thoroughly before using them in production. This will help you to identify and fix any potential problems.
- You should also monitor your syncs on a regular basis to ensure that they are running smoothly.
- Sync logs: The sync logs provide more detailed information about the execution of your syncs. You can view the start and end time of each sync, the number of records that were synced, and any errors that occurred.
- Data quality checks: You can also perform data quality checks to ensure that your data is being synced correctly. For example, you can compare the number of records in your source and destination systems to make sure that they match.

### Common errors
`No record was found with lookup for email:johndoe@john.com`
-This error will be expected in the Iterable-Marketo Sync because we are using the `update only` method. This means there are records in the snowflake table which don't exist in Iterable but it will try to sync them. Records are created in Iterable through API calls from product and due to size limitation we do not wish to sync all records from the warehouse.

`Specified password has expired. Password must be changed using the Snowflake web console.`
-The Snowflake connector password expires once every three months and has to be reset in the snowflake UX by logging in with the `HIGHTOUCH_USER`. The password has then to be changed in Hightouch>Sources>Snowflake



![Syncs](/handbook/source/handbook/marketing/marketing-operations/hightouch/Hightouch_1.png)

![Syncs_2](/handbook/source/handbook/marketing/marketing-operations/hightouch/Hightouch_2.png)

## Models

A Hightouch model is a definition of the data that you want to sync. It includes the object types (e.g., users, accounts, leads) and the fields that you want to sync for each object type. We use the SQL editor to model the data from Snowflake depending on the specific information we need to sync. Hightouch models are important because they allow you to control the data that is synced between your data warehouse and your marketing tools.



How to create a Hightouch model

1. Select the source that you want to sync from. Hightouch supports a variety of data warehouses, including Amazon Redshift, Google BigQuery, and Snowflake.
2. Choose a modeling method. Hightouch supports three modeling methods:
- SQL editor: Write a SQL query to define your model.
- Table selector: Select the tables and columns that you want to include in your model.
- dbt model selector: Select a dbt model to use as your model.
3. Define the object types and fields that you want to sync.
4. Configure the model's primary key.
5. Save your model.
6. Once you have created a model, you can use it to create a sync.


### Here are some examples of Hightouch models

- A customer model that includes the customer's name, email address, and purchase history.
- A lead model that includes the lead's name, company, and email address.
- An event model that includes the event type, event date, and customer ID.
- A product model that includes the product name, description, and price.


## Sources

Sources represent the data systems and platforms we extract data from for syncing. Hightouch supports various sources, including databases, data warehouses, and third-party applications. By connecting Hightouch with these sources, we simplify the process of pulling data into our syncs and streamline data synchronization.

Hightouch provides pre-built connectors for popular data sources, ensuring smooth integration. Additionally, it offers the flexibility to create custom connectors, allowing us to connect with any source that meets our requirements.

Our current source is the data warehouse in Snowflake. We are pulling data from the dbt model [here](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.poc_pump_marketing_contact_namespace_detail#code).

## Objects

Hightouch can sync various types of objects to Iterable, enabling us to leverage a wide range of data in our marketing campaigns. Some of the commonly synced objects include:

1. **Users**: Hightouch can sync user profiles, attributes, and events to Iterable, providing a holistic view of each user. This data is essential for creating personalized and targeted campaigns.

2. **Events**: By syncing events, Hightouch allows us to track user interactions and behaviors. This data can be utilized to trigger specific marketing actions or segment users based on their engagement.

3. **Segments**: Hightouch can sync dynamic segments to Iterable, ensuring that the most up-to-date user groups are available for our campaigns. This enables us to target specific segments with tailored messaging.

By syncing these objects and more, Hightouch empowers us to deliver highly personalized and engaging experiences to our users through Iterable.

## Monthly Queried Records (MQR)

Each time a sync runs in Hightouch and records are queried, it consumes MQRs. For the same record queried multiple times during the billing period it only counts as one.
Please note that we have a limit of 1.5 million Monthly Queried Records (MQRs) per billing period.

