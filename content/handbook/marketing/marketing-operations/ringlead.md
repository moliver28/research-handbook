---
title: "Ringlead"
description: "The Ringlead platform orchestrates Salesforce and Marketing Automation processes like managing duplicates, data normalization, segmentation, enrichment."
---

### About Ringlead

RingLead is a SaaS application designed to enable sales and marketing to become efficient and productive.

The Ringlead platform orchestrates Salesforce and Marketing Automation processes like managing duplicates, data normalization, segmentation, enrichment.

As an introduction, below are a few items that will help with using the platform and understand how their tools help us reach our data goals.

<table>
  <tr>
        <td style = "text-align: center;"> <b>Product</b> </td>
                 <td style = "text-align: center;"> <b>Overview</b> </td>
                         <td style = "text-align: center;"> <b>Feature</b> </td>
                                 <td style = "text-align: center;"> <b>Description </b> </td>
   </tr>
   <tr>
        <td rowspan = "4" style = "text-align: left; vertical-align: top;"> <b> Cleanse </b> </td>
          <td rowspan = "4" style = "text-align: left; vertical-align: top;">Cleanse your database by removing costly duplicates or hundreds of custom object records while creating data records that are standardized and easily update with Cleanse. </td>
              <td style= "text-align: left; vertical-align: top;"> <a href = "www.help.zoominfo.com/lightning/articles/help/Overview-of-Salesforce-Deduplication-Best-Practices"> Overview of Salesforce Deduplication Best Practices</a> </td>
                <td style= "text-align: left; vertical-align: top;"> Scan    your database for duplicates based on specific criteria                                             that you define. Once you've identified your duplicates, easily merge them saving you storage costs and time. </td>
   </tr>
     <tr>
         <td style= "text-align: left; vertical-align: top;"> <a href = "www.help.zoominfo.com/lightning/articles/help/Overview-of-Normalization-Rules-in-RingLead">Overview of Normalization Rules in RingLead</a> </td>
            <td style= "text-align: left; vertical-align: top;"> Standardize your    addresses, websites, phone numbers, and more to keep data easy to    navigate and search on </td>
  </tr>
     <tr>
          <td style= "text-align: left; vertical-align: top;"> <a href = "www.help.zoominfo.com/lightning/articles/help/How-to-Create-and-Run-a-Mass-Update-Task">How to Create and Run a Mass Update Task</a> </td>
            <td style= "text-align: left; vertical-align: top;"> Update fields on custom and standard objects after filtering and defining your new values </td>
   </tr>
     <tr>
          <td style= "text-align: left; vertical-align: top;"> <a href = "www.help.zoominfo.com/lightning/articles/help/How-to-Mass-Delete-Leads-with-Last-Activity-Greater-Than-2-Years">How to Mass Delete Leads with Last Activity Greater Than 2 Years</a> </td>
            <td style= "text-align: left; vertical-align: top;"> Clean out your Salesforce by deleting custom and standard objects </td>
  </tr>
     <tr>
         <td rowspan = "6" style= "text-align: left; vertical-align: top;"> <b>Enrichment </b> </td>
            <td rowspan = "6" style= "text-align: left; vertical-align: top;"> Make the most out of the data you have and fill in the gaps where you don't. Company firmographics and contact data can be completed and updated with this tool. Use your existing vendor, or let us help you find the best data from any vendor. </td>
            <td style= "text-align: left; vertical-align: top;"> <a href = "www.help.zoominfo.com/lightning/articles/help/How-to-Perform-Salesforce-Mass-Enrichment">How to Perform Salesforce Mass Enrichment</a> </td>
            <td style= "text-align: left; vertical-align: top;"> Enrich records directly from any data vendor. </td>
   </tr>
     <tr>
          <td style= "text-align: left; vertical-align: top;"> <a href = "https://university.zoominfo.com/formcomplete-made-easy"> FormComplete Made Easy </a> </td>
          <td style= "text-align: left; vertical-align: top;"> Allow web form users to spend less time entering data with a RingLead powered address search    right on your form </td>
   </tr>
     <tr>
          <td style= "text-align: left; vertical-align: top;"> <a href = "https://api-docs.zoominfo.com/#4d0c0007-bb7c-4eea-a2a0-53b01730713f">API Enrichment</a> </td>
            <td style= "text-align: left; vertical-align: top;"> Enable expanded data    such as addresses and company information to come in with your form submissions </td>
  </tr>
     <tr>
         <td style= "text-align: left; vertical-align: top;"> <a href = "www.help.zoominfo.com/lightning/articles/help/Instant-Enrich-Explained">Instant Enrich Explained</a> </td>
          <td style= "text-align: left; vertical-align: top;"> Enrich data directly within your Salesforce Lead, Contact, and Account objects </td>
  </tr>
  <tr>
        <td style= "text-align: left; vertical-align: top;"> <a href = "https://university.zoominfo.com/ringlead-multi-vendor-enrich-overview-for-admins-live-webinar"> RingLead Multi-Vendor Enrich Overview for Admins (Live Webinar)</a> </td>
          <td style= "text-align: left; vertical-align: top;"> Enrich data using a data vendor outside of RingLead. </td>
   </tr>
  <tr>
        <td style= "text-align: left; vertical-align: top;"> <a href = "www.help.zoominfo.com/lightning/articles/help/Package-Manage-Explained">Package Manage Explained</a> </td>
          <td style= "text-align: left; vertical-align: top;"> Having multiple vendors with multiple delivery mechanisms can be challenging and Package Management offers a way to consolidate these into an easy to use and codeless system. </td>
  </tr>
</table>

Currently, GitLab, uses Ringlead's Cleanse capabilities, specifically Deduplication, while the enrichment is done through [Zoominfo](/handbook/marketing/marketing-operations/zoominfo/), our SSOT when it comes to lead/contact enrichment.

### Set Up & Access

Currently, Sales & Marketing Operations have access to Ringlead. To request access [please follow the access request process](/handbook/business-technology/end-user-services/onboarding-access-requests/access-requests/) as outlined in the business operations handbook.

### Ways to access Ringlead & Help

Once you have access you can follow [this link](https://dms.ringlead.com/auth/login/?next=/) to login. For more information about Ringlead and it's capabilities please visit the [Ringlead Help center](https://ringlead.atlassian.net/wiki/spaces/DUG/overview).

## Current Process & Order of Operations

Deduplication and cleaning up a CRM database requires some thought on the processes needed to be successful.  It will depend a lot on what our urgent problems are and our final goals. Below you will see the best practices, using Salesforce as the example, recommendations which Ringlead customers can use to help achieve their goal of clean, efficient and usable data by starting with their main object. Your main object is your ultimate parent (Accounts frequently in Salesforce as an example). That object should be cleaned first of duplicates then move down to the next level and so on. Please see below for our basic Salesforce Recommendations.

Finding and merging duplicate records is easy with RingLead while preventing valuable data from being lost. When merging duplicates, Surviving Field Value Rules can be set for each field resulting in the chosen Master record having the best, most recent and most valuable data. Since you will have complete, precise control over the values that survive in the Master, you can safely merge large numbers of duplicate record groups automatically.

Marketing Operations works with the tool in order to deduplicate the existing leads and contact records, as well as any other custom objects that need deduplication.

Lead and Contact objects are being worked by Marketing Operations while the Account object, by Sales Operations.

Increasing the database cleanliness through deduplication is important and there are good ways and bad ways to go about it. Organizations need to make sure they follow the correct order of operations in order to achieve a clean database. In the current process, MOps and SOps are using the Ringlead's guidance for proper deduplication of our database.

### Recommended order of operations

1. Lead Deduplication (Completed & Automated - runs weekly on Saturdays)
2. Account Deduplication (Taking place using Openprise as the tool of choice and is run by Sales Operations)
3. Converting Leads to New Contacts (This step is skipped in our case since it would impact sales workflow considerably. We will re-evaluate if the sales team is not as heavily focused on leads as we are now.)
4. Contact Deduplication (Completed & Automated - runs weekly on Saturdays)
5. Lead to Contact Deduplication (Final Testing is worked on as we speak with go live date scheduled for end of Q3 FY25)
6. Deduplication of Custom Objects (only if needed)

### Account Deduplication

Account deduplication is currently being managed by Sales Ops. The deduplication job applies for Prospect Accounts w/o ZI Company ID and runs weekly every Saturday at 12:00 PDT.

### Lead to Lead Deduplication

Lead to Lead deduplication is managed by Marketing Ops and is taking place on a weekly basis on Saturdays. From the deduplication job certain lead records are excluded, as follows:

- Records that have a value in the Vartopia Partner Account field;
- Records that are actively being sequenced;
- Records which status is Qualifying or Qualified;
- Records for which either the Last Name or Company Name is `[[unknown]]`

### Contact to Contact Deduplication

Contact to Contact deduplicaion, as the lead to lead deduplication, is managed by Marketing Ops and is taking place on a weekly basis on Saturdays. From the deduplication job certain contact records are excluded, as follows:

- Records that have Account Type = `Partner`;
- Records that are actively being sequenced;
- Records which status is Qualifying or Qualified;
- Records for which either the Last Name or Account Name is `[[unknown]]`
- Records that are flagged as being on an open quote using the **On Open Quote** checkbox;
- Records that are marked as current customers with the **Current Customer** checkbox;

### Lead to Contact Deduplication

Lead to Contact Deduplication is in it's final testing phase and is expected to go live in Q3 FY25. For the lead to contact deduplication, the same filtering criteria will be followed.

### Custom Object Deduplication

Once all the standard fields have been deduplicated in the correct order of operations, we can move to custom object deduplication to make sure all our custom objects are clean and duplicate free as well.
