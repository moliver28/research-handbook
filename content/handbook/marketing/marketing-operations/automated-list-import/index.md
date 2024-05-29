---

title: "Self-Service List Imports"
description: "Automated process developed by Marketing Operations to facilitate self-service list imports"
---

With the purpose of increasing efficiency through the use of automation, Marketing Operations has developed a self-service process for list imports, to be used by campaign managers when they have third party vendor lists from events/other campaigns or to update the member status on field marketing events.

The objective of this process is to reduce the SLA for list imports to a minimum, allowing leads to be followed up as soon as possible by SDR/BDR teams while minimising the busy work of the various teams involved.

### How it Works

1. A google drive folder has been created for list import uploads. This folder is listening for any new CSV that is created.
1. Once a CSV is created, it is processed through one of our systems and each record is individually validated to ensure data integrity. Certain corrections are applied like transforming country and state codes to country and state names, deleting white spaces, converting well known mistaken values to their correct form, etc.
1. The process will activate the `Interesting Moments` campaign in the Marketo program so that the Interesting Moment is correctly applied.
1. Each record is added to the Marketo program according to the program status specified in the import file.
1. At the end, a slack alert is sent on the #event_list_upload channel with a report containing information regarding created, updated and failed leads.

#### [Video Explanation of list upload process](https://drive.google.com/file/d/1Wp3yYLZAPeBJs9J7wIBF3R8wFaGN0SF3/view?usp=share_link)

## How to use

**Step 1 - Before the import**
{: .alert .alert-info}

At time of upload, a program should already exist in `Marketo` . Campaigns are to be created by the campaign owner. For a running list of program templates, go [here](/handbook/marketing/marketing-operations/campaigns-and-programs/#how-to-clone-the-marketo-program).

Make sure that the campaign's `tokens` are filled in, which are found under the `My Tokens` tab in the main campaign. `Tokens` are used via `Smart Campaigns` to apply `Last Interesting Moments` to all leads whom appear in the campaign. The minimum `tokens` that should be used relate to the campaign's `Event Name`, `Event Date` and `Landing Page URL`. Without these filled out, `Last Interesting Moments` will fill in permanently `blank`. This does not mean your upload will fail or not complete. It just means in the LIM field you will see blank datapoints, for example: `Attended {{my.event name}}, which starts on {{my.event date}}. Location: {{my.event location}}` instead of `Attended Developer Conference, which starts on May 29, 2022, Location: San Francisco`.

Please note, the `Last Interesting Moments` and the `My Tokens` associated with them are separate from `Last Event Notes`. Tokens do not communicate with `Last Event Notes` and uploads from other columns in the list upload sheet. To ensure these are loaded correctly please make sure the SFDC campaign and the last event notes are filled out on your import sheet, Columns N and O. This will be explained more in the data cleaning steps below. Again, if this information is left blank it does not mean your import will fail, it will just be missing that infmoration in the leads record.

**Step 2 - Add your lead data to the spreadsheet**
{: .alert .alert-info}

Go to the import template [Google Sheet](https://docs.google.com/spreadsheets/d/143REaMQLyIy7to-CFktL45TTTLZxBQRJUDIOMCA3CVo/edit#gid=257616838) and make a copy of the document. This spreadsheet template allows for quick edits and faster data checks, refer to the [below instructions](#data-cleaning-instructions) for data cleanup advice. It is the responsibility of the person submitting the list to clean the list utilizing the import cleaning template.

<details>
  <summary markdown="span"> Click to expand screenshot</summary>

![ALT](/handbook/marketing/marketing-operations/automated-list-import/images/make-a-copy.png)

</details>

**Step 3 - Download the CSV**
{: .alert .alert-info}

After you populated your spreadsheet with lead data, Download the leads tab as a `CSV`. Go to `File`>`Download`>`CSV`.

<details>
  <summary markdown="span">Click  to expand screenshot</summary>

![Download CSV](/handbook/marketing/marketing-operations/automated-list-import/images/download-csv.png)

</details>

**Step 4 - Drop the CSV in the Google Drive folder**
{: .alert .alert-info}

1. Go to the [Google Drive folder](https://drive.google.com/drive/folders/1SvDR2KW8_vtPZjJ7WWihA1iOgSJn0_fv?usp=share_link) called `List Import Automation`. If you do not have access to the folder, open an AR request with the Marketing Operations team seeking access to both the `List Import Automation` and the `Report Folder`. 
1. Drop your CSV containing lead data into the folder
1. An automated process will pick up your CSV and start processing each record in your file, validating the data.

**Step 5 - Go to the `#event_list_upload` slack channel.**
{: .alert .alert-info}

**When the import finishes processing in Marketo, it will send a slack message with information about:**

    1. Report link
    1. Marketo program link
    1. Records created
    1. Records updated
    1. Failed records

<details>
  <summary markdown="span"> Click to expand screenshot</summary>

![Slack alert](/handbook/marketing/marketing-operations/automated-list-import/images/slack-alert-import.png)

</details>

**If you want to receive these notifications you can subscribe to the import complete notification labels.**

Pubsec field marketers need to use `List Upload Complete - PubSec` label on either list import issue or another event related issue if no list upload issue is made. This is optional for private sector uploads, which use `List Upload Complete - Private Sector`. SDR/BDR/Sales can subscribe to this label to get notifications when the import is complete

**Step 6 - Review the report**
{: .alert .alert-info}

1. Congrats! The import is complete. Review the information passed in the slack alert.
1. If there are failed records, review the report linked in the message. The first column, `Status`, contains useful information regarding the reason a specific lead failed to be imported.
1. If there are failed records, you can review the errors and correct them in the same report. You can then delete the first column, `Status` message, download the CSV again and reimport after correcting the errors.

<details>
  <summary markdown="span"> Click to expand screenshot</summary>

![Report status column](/handbook/marketing/marketing-operations/automated-list-import/images/report-status.png)

</details> 
  
## Common errors

1. Country or State Failed Validation: We check the country and state values against a strict picklist. Having wrong values in those fields results in Salesforce refusing to accept to sync a new lead.
1. Missing email, last name, company, program status or marketo program name: Those fields are all required for a successful import. Missing any of them will result in an error.
1. Program status does not exist: The program status in the import file must match exactly the value in the Marketo Program. We strive to catch and correct errors before the import happens but edge cases will result in an error.
1. Wrong value for `Opt-in`: This field only accepts TRUE/FALSE or YES/NO. Any other value will result in an error.

## Data Cleaning Instructions

{{% panel header="**Caution**" header-bg="danger" %}}
DO NOT MAKE CHANGES TO THE ORIGINAL SPREADSHEET OR INPUT DATA INTO IT. MAKE A COMPLETE COPY AS INDICATED IN THE LIST UPLOAD ISSUE TEMPLATE
{{% /panel %}}

<details>

<summary  markdown="span"> Click to expand data cleaning instructions</summary>

The following data cleanup is required for any list prior to sending it to the Marketing Operations team. **If your spreadsheet/data does not meet these guidelines it will be returned to you to fix prior to being uploaded.**

**Steps (also documented in _How it Works_ tab of the spreadsheet):**

1. Use the "Lead Data for upload" tab to drop your relevant data into the matching blue columns in the left-most rows (i.e. copy the column in your file for "First Name" and paste it in the column "First Name"). This tab will remain locked and untouched by MktgOps as they will `Duplicate` into a new tab for additional cleaning

1. Do not alter any rows or columns with the green column headers. These contain formulas that will reference your inputs under the blue column headers and provide you with proper capitalization (see clarifications below for more detail), as well as data entry that is acceptable for Marketo/Salesforce, and check the syntax of the email provided by your event organizer.

1. Check for any ""warnings"" highlighted in red in the blue columns and erroneous emails marked as `FALSE` in the green columns - if there are none, you are good to go! (If there are highlighted cells, follow the instructions in the _Warning Handling_ steps below. Correct the errors and then proceed.)

1. Copy the data found under the green header and PASTE > VALUES into the blue header section of the spreadsheet. Erase the green header section after the formatted data has been copied over

1. Rename the spreadsheet to match the campaign tag name

**Error Handling:**

- **Email Syntax:** If the syntax of the email is not met (meaning it includes @ and a relevant ending such as .com or .co.uk or .io) it will be listed as FALSE under the green column headers and the email can be updated to make it ready for upload. Note that Google Sheets does not understand all email domains, such as `.mil` or `.us`, and those can be ignored

- **GitLab emails:** If the person has @gitlab in their email address, they will be highlighted in red under the blue column header and should be removed

- **Duplicate Records:** If the person is a duplicate based on email address, they will appear red under the blue column header, and should be removed from the list.

** Best Practices **

1. Remove inaccurate entries

- `Job Title` **remove** "self", "me", "n/a", etc

- `Phone` **remove** obvious junk numbers 0000000000, 1234567890, etc

- `State` should be empty unless `country` equals `United States` or `Canada`

1. **Blank fields** are better than junk data. We have enrichment tools that are designed to write to blank fields. Also we can run reports on the blank fields to find where our data gaps are.

1. If you do not have a CONTACT `Phone` **do not** substitute the ACCOUNT `Phone` and vice versa. Leave it blank.

1. Sort spreadsheet by `Email Address` and remove duplicates.

1. Only lead records from authorized sources -- meaning sources have legally obtained lead record data-- will be flagged as `Opted-in`. **No exceptions**

- Pulling list of names out of LinkedIn and importing the records into SFDC **does not** qualify as compliant. In EMEA these lists _will not_ be uploaded

- Field events that have not gained consent from the attendees that their name will be shared **are not** compliant.

- Agreements to be contacted must explicitly state the individual has `opted-in` to receive communication and cannot leave room for nuance

- Getting someone's name and/or business card from a meetup **does not** qualify as compliant.

1. Remove all [embargoed country](/handbook/legal/trade-compliance/) records.

1. `Washington DC` is a `State` value and is not to be split up between `City` `State`.

1. `Zip Codes` contain five (5) numbers, States in US East may start with a `0`, make sure the `Zip/Postal Code` field is **plain text** and the leading `0` appears.

1. Member Statuses must match exactly to the program type and member status [listed](/handbook/marketing/marketing-operations/campaigns-and-programs/#campaign-type--progression-status). If you are updating the member status for an event where we collected registrations through a form, you must include both `No Show` and `Attended` records.

1. If list contains non-Latin characters (ex. Asian languages), it must be uploaded to Marketo using UTF-8 and UTF-16. [Marketo instructions here](https://docs.marketo.com/display/public/DOCS/Import+a+Non-Latin+Characters+List). Salesforce Data Loader requires UTF-8 encoding, [instructions here](https://help.salesforce.com/articleView?id=faq_import_dataloader_specialchars.htm&type=5).

1. If there are notes added to the `Last Event Notes` column, add the `SFDC campaign name` to the column titled `Last Event SFDC Campaign Name` for each lead that has notes. If there are no notes for that lead, do not add anything to either column. This column is used to automatically move notes to the `Qualification Notes` field found on lead and contact pages in Salesforce. That field is not overridden like the `Last Event Notes` field and it's where we can keep the notes for much longer.

- Use the correct member statuses based on the definitions and type [here](/handbook/marketing/marketing-operations/campaigns-and-programs/#campaign-type--progression-status). They must be exact matches, no abbreviations.

- Format of the import file has to be CSV. Any other type of import will cause an error and a message tagging the file owner on slack will alert of this issue.

- Record ownership will be assigned using established lead routing, which is [controlled by Traction Complete](/handbook/marketing/marketing-operations/traction-lead-complete/)

- In order to mark leads as `Opt-in = TRUE`, a record of the terms and conditions the leads agreed to upon having their data collected must be recorded. Check the `terms of service` wording has been recorded in the upload issue **before** opting in leads to receive marketing communications. No ToS, no `Opt-in`. Period. To find the appropriate language, refer to [Marketing Rules and Consent Language](/handbook/legal/marketing-collaboration/#marketing-rules-and-consent-language)

- If there are any records who have opted out of contact for any reason, define that on the spreadsheet by selecting `Opt-in = FALSE`

- Leave `Opt-In` empty if no other option is available

</details>

| Field Name             | Required                                  | Accepted Values                                                                                                                           | Notes                                                                                                                                                                                                                                                                   |
| ---------------------- | ----------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Marketo Program Name   | Yes                                       | Exact name of program from Marketo                                                                                                        | This value is used to add records as campaign members in Marketo                                                                                                                                                                                                        |
| First Name             | No                                        |                                                                                                                                           |                                                                                                                                                                                                                                                                         |
| Last Name              | Yes                                       |                                                                                                                                           | Missing this value will result in an **error**                                                                                                                                                                                                                          |
| Email Address          | Yes                                       |                                                                                                                                           | Missing this value will result in an **error**                                                                                                                                                                                                                          |
| Company Name           | Yes                                       |                                                                                                                                           | Missing this value will result in an **error**                                                                                                                                                                                                                          |
| State/Province         | No but preferable for US/Canada/Australia | See values [here](#reference-values-for-picklists)                                                                                        |
| Country                | Yes                                       | See values [here](#reference-values-for-picklists)                                                                                        | Missing this value will result in an **error**                                                                                                                                                                                                                          |
| Campaign Member Status | Yes                                       | See values [here](#reference-values-for-picklists)                                                                                        | This will determine the status in the Marketo Program                                                                                                                                                                                                                   |
| Label as Opt-In?       | No                                        | Yes/No or True/False                                                                                                                      | Leave blank if no option is provided                                                                                                                                                                                                                                    |
| CRM Partner ID         | No                                        | You can find a list of these IDs [here](/handbook/marketing/channel-marketing/partner-campaigns/#partner-crm-ids) | If this import is a part of a joint event with partners, you must include the CRM Partner ID as a column in your list upload. You can find a list of these IDs [here](/handbook/marketing/channel-marketing/partner-campaigns/#partner-crm-ids) |

## Reference values for picklists

<details>

<summary  markdown="span"> Click to expand reference values table for Country, State & Program Member picklist</summary>

| Countries                                    | States                               | Program Member Statuses |
| -------------------------------------------- | ------------------------------------ | ----------------------- |
| Afghanistan                                  | Alberta                              | Follow Up Requested     |
| Aland Islands                                | British Columbia                     | Visited Booth           |
| Albania                                      | Manitoba                             | Meeting Attended        |
| Algeria                                      | New Brunswick                        | No Show                 |
| Andorra                                      | Newfoundland and Labrador            | Meeting No Show         |
| Angola                                       | Nova Scotia                          | Meeting Requested       |
| Anguilla                                     | Northwest Territories                | Sales Invited           |
| Antarctica                                   | Nunavut                              | Sales Nominated         |
| Antigua and Barbuda                          | Ontario                              | Marketing Invited       |
| Argentina                                    | Prince Edward Island                 | Registered              |
| Armenia                                      | Quebec                               | Attended                |
| Aruba                                        | Saskatchewan                         | Attended On-Demand      |
| Australia                                    | Yukon Territories                    | No Action               |
| Austria                                      | Armed Forces Americas                | Downloaded              |
| Azerbaijan                                   | Armed Forces Europe                  | Shipped                 |
| Bahamas                                      | Alaska                               | Delivered               |
| Bahrain                                      | Alabama                              | Cancelled               |
| Bangladesh                                   | Armed Forces Pacific                 | Returned                |
| Barbados                                     | Arkansas                             | Requested Contact       |
| Belarus                                      | American Samoa                       | Subscribed to Updates   |
| Belgium                                      | Arizona                              | Member                  |
| Belize                                       | California                           | Filled-out Survey       |
| Benin                                        | Colorado                             |                         |
| Bermuda                                      | Connecticut                          |                         |
| Bhutan                                       | Washington DC                        |                         |
| Bolivia                                      | Delaware                             |                         |
| Bonaire, Sint Eustatius and Saba             | Florida                              |                         |
| Bosnia and Herzegovina                       | Federated Micronesia                 |                         |
| Botswana                                     | Georgia                              |                         |
| Bouvet Island                                | Guam                                 |                         |
| Brazil                                       | Hawaii                               |                         |
| British Indian Ocean Territory               | Iowa                                 |                         |
| Brunei Darussalam                            | Idaho                                |                         |
| Bulgaria                                     | Illinois                             |                         |
| Burkina Faso                                 | Indiana                              |                         |
| Burundi                                      | Kansas                               |                         |
| Cambodia                                     | Kentucky                             |                         |
| Cameroon                                     | Louisiana                            |                         |
| Canada                                       | Massachusetts                        |                         |
| Cape Verde                                   | Maryland                             |                         |
| Cayman Islands                               | Maine                                |                         |
| Central African Republic                     | Marshall Islands                     |                         |
| Chad                                         | Michigan                             |                         |
| Chile                                        | Minnesota                            |                         |
| China                                        | Missouri                             |                         |
| Christmas Island                             | Northern Mariana Islands             |                         |
| Cocos (Keeling) Islands                      | Mississippi                          |                         |
| Colombia                                     | Montana                              |                         |
| Comoros                                      | North Carolina                       |                         |
| Congo                                        | North Dakota                         |                         |
| Congo, the Democratic Republic of the        | Nebraska                             |                         |
| Cook Islands                                 | New Hampshire                        |                         |
| Costa Rica                                   | New Jersey                           |                         |
| Cote d'Ivoire                                | New Mexico                           |                         |
| Croatia                                      | Nevada                               |                         |
| Cuba                                         | New York                             |                         |
| Curaçao                                      | Ohio                                 |                         |
| Cyprus                                       | Oklahoma                             |                         |
| Czech Republic                               | Oregon                               |                         |
| Denmark                                      | Pennsylvania                         |                         |
| Djibouti                                     | Puerto Rico                          |                         |
| Dominica                                     | Palau                                |                         |
| Dominican Republic                           | Rhode Island                         |                         |
| Ecuador                                      | South Carolina                       |                         |
| Egypt                                        | South Dakota                         |                         |
| El Salvador                                  | Tennessee                            |                         |
| Equatorial Guinea                            | Texas                                |                         |
| Eritrea                                      | United States Minor Outlying Islands |                         |
| Estonia                                      | Utah                                 |                         |
| Ethiopia                                     | Virginia                             |                         |
| Falkland Islands (Malvinas)                  | US Virgin Islands                    |                         |
| Faroe Islands                                | Vermont                              |                         |
| Fiji                                         | Washington                           |                         |
| Finland                                      | Wisconsin                            |                         |
| France                                       | West Virginia                        |                         |
| French Guiana                                | Wyoming                              |                         |
| French Polynesia                             | California                           |                         |
| French Southern Territories                  | New York                             |                         |
| Gabon                                        | Alabama                              |                         |
| Gambia                                       | Alaska                               |                         |
| Georgia                                      | Alberta                              |                         |
| Germany                                      | American Samoa                       |                         |
| Ghana                                        | Arizona                              |                         |
| Gibraltar                                    | Arkansas                             |                         |
| Greece                                       | Armed Forces Americas                |                         |
| Greenland                                    | Armed Forces Europe                  |                         |
| Grenada                                      | Armed Forces Pacific                 |                         |
| Guadeloupe                                   | British Columbia                     |                         |
| Guatemala                                    | California                           |                         |
| Guernsey                                     | Colorado                             |                         |
| Guinea                                       | Connecticut                          |                         |
| Guinea-Bissau                                | Delaware                             |                         |
| Guyana                                       | Federated Micronesia                 |                         |
| Haiti                                        | Florida                              |                         |
| Heard Island and McDonald Islands            | Georgia                              |                         |
| Holy See (Vatican City State)                | Guam                                 |                         |
| Honduras                                     | Hawaii                               |                         |
| Hong Kong                                    | Idaho                                |                         |
| Hungary                                      | Illinois                             |                         |
| Iceland                                      | Indiana                              |                         |
| India                                        | Iowa                                 |                         |
| Indonesia                                    | Kansas                               |                         |
| Iran, Islamic Republic of                    | Kentucky                             |                         |
| Iraq                                         | Louisiana                            |                         |
| Ireland                                      | Maine                                |                         |
| Isle of Man                                  | Manitoba                             |                         |
| Israel                                       | Marshall Islands                     |                         |
| Italy                                        | Maryland                             |                         |
| Jamaica                                      | Massachusetts                        |                         |
| Japan                                        | Michigan                             |                         |
| Jersey                                       | Minnesota                            |                         |
| Jordan                                       | Mississippi                          |                         |
| Kazakhstan                                   | Missouri                             |                         |
| Kenya                                        | Montana                              |                         |
| Kiribati                                     | Nebraska                             |                         |
| Korea, Democratic People's Republic of       | Nevada                               |                         |
| Korea, Republic of                           | New Brunswick                        |                         |
| Kuwait                                       | New Hampshire                        |                         |
| Kyrgyzstan                                   | New Jersey                           |                         |
| Lao People's Democratic Republic             | New Mexico                           |                         |
| Latvia                                       | New York                             |                         |
| Lebanon                                      | Newfoundland and Labrador            |                         |
| Lesotho                                      | North Carolina                       |                         |
| Liberia                                      | North Dakota                         |                         |
| Libyan Arab Jamahiriya                       | Northern Mariana Islands             |                         |
| Liechtenstein                                | Northwest Territories                |                         |
| Lithuania                                    | Nova Scotia                          |                         |
| Luxembourg                                   | Nunavut                              |                         |
| Macao                                        | Ohio                                 |                         |
| Macedonia, the former Yugoslav Republic of   | Oklahoma                             |                         |
| Madagascar                                   | Ontario                              |                         |
| Malawi                                       | Oregon                               |                         |
| Malaysia                                     | Palau                                |                         |
| Maldives                                     | Pennsylvania                         |                         |
| Mali                                         | Prince Edward Island                 |                         |
| Malta                                        | Puerto Rico                          |                         |
| Martinique                                   | Quebec                               |                         |
| Mauritania                                   | Rhode Island                         |                         |
| Mauritius                                    | Saskatchewan                         |                         |
| Mayotte                                      | South Carolina                       |                         |
| Mexico                                       | South Dakota                         |                         |
| Moldova, Republic of                         | Tennessee                            |                         |
| Monaco                                       | Texas                                |                         |
| Mongolia                                     | United States Minor Outlying Islands |                         |
| Montenegro                                   | US Virgin Islands                    |                         |
| Montserrat                                   | Utah                                 |                         |
| Morocco                                      | Vermont                              |                         |
| Mozambique                                   | Virginia                             |                         |
| Myanmar                                      | Washington                           |                         |
| Namibia                                      | Washington DC                        |                         |
| Nauru                                        | West Virginia                        |                         |
| Nepal                                        | Wisconsin                            |                         |
| Netherlands                                  | Wyoming                              |                         |
| New Caledonia                                | Yukon Territories                    |                         |
| New Zealand                                  | Washington DC                        |                         |
| Nicaragua                                    | New South Wales                      |                         |
| Niger                                        | Queensland                           |                         |
| Nigeria                                      | South Australia                      |                         |
| Niue                                         | Tasmania                             |                         |
| Norfolk Island                               | Victoria                             |                         |
| Norway                                       | Western Australia                             |                         |
| Oman                                         | Australian Capital Territory         |                         |
| Pakistan                                     | Northern Territory                   |                         |
| Palestinian Territory, Occupied              |                                      |                         |
| Panama                                       |                                      |                         |
| Papua New Guinea                             |                                      |                         |
| Paraguay                                     |                                      |                         |
| Peru                                         |                                      |                         |
| Philippines                                  |                                      |                         |
| Pitcairn                                     |                                      |                         |
| Poland                                       |                                      |                         |
| Portugal                                     |                                      |                         |
| Qatar                                        |                                      |                         |
| Reunion                                      |                                      |                         |
| Romania                                      |                                      |                         |
| Russian Federation                           |                                      |                         |
| Rwanda                                       |                                      |                         |
| Saint Barthélemy                             |                                      |                         |
| Saint Helena, Ascension and Tristan da Cunha |                                      |                         |
| Saint Kitts and Nevis                        |                                      |                         |
| Saint Lucia                                  |                                      |                         |
| Saint Martin (French part)                   |                                      |                         |
| Saint Pierre and Miquelon                    |                                      |                         |
| Saint Vincent and the Grenadines             |                                      |                         |
| Samoa                                        |                                      |                         |
| San Marino                                   |                                      |                         |
| Sao Tome and Principe                        |                                      |                         |
| Saudi Arabia                                 |                                      |                         |
| Senegal                                      |                                      |                         |
| Serbia                                       |                                      |                         |
| Seychelles                                   |                                      |                         |
| Sierra Leone                                 |                                      |                         |
| Singapore                                    |                                      |                         |
| Sint Maarten (Dutch part)                    |                                      |                         |
| Slovakia                                     |                                      |                         |
| Slovenia                                     |                                      |                         |
| Solomon Islands                              |                                      |                         |
| Somalia                                      |                                      |                         |
| South Africa                                 |                                      |                         |
| South Georgia and the South Sandwich Islands |                                      |                         |
| South Sudan                                  |                                      |                         |
| Spain                                        |                                      |                         |
| Sri Lanka                                    |                                      |                         |
| Sudan                                        |                                      |                         |
| Suriname                                     |                                      |                         |
| Svalbard and Jan Mayen                       |                                      |                         |
| Swaziland                                    |                                      |                         |
| Sweden                                       |                                      |                         |
| Switzerland                                  |                                      |                         |
| Syrian Arab Republic                         |                                      |                         |
| Taiwan                                       |                                      |                         |
| Tajikistan                                   |                                      |                         |
| Tanzania, United Republic of                 |                                      |                         |
| Thailand                                     |                                      |                         |
| Timor-Leste                                  |                                      |                         |
| Togo                                         |                                      |                         |
| Tokelau                                      |                                      |                         |
| Tonga                                        |                                      |                         |
| Trinidad and Tobago                          |                                      |                         |
| Tunisia                                      |                                      |                         |
| Turkey                                       |                                      |                         |
| Turkmenistan                                 |                                      |                         |
| Turks and Caicos Islands                     |                                      |                         |
| Tuvalu                                       |                                      |                         |
| Uganda                                       |                                      |                         |
| Ukraine                                      |                                      |                         |
| United Arab Emirates                         |                                      |                         |
| United Kingdom                               |                                      |                         |
| United States                                |                                      |                         |
| Uruguay                                      |                                      |                         |
| Uzbekistan                                   |                                      |                         |
| Vanuatu                                      |                                      |                         |
| Venezuela, Bolivarian Republic of            |                                      |                         |
| Viet Nam                                     |                                      |                         |
| Virgin Islands, British                      |                                      |                         |
| Wallis and Futuna                            |                                      |                         |
| Western Sahara                               |                                      |                         |
| Yemen                                        |                                      |                         |
| Zambia                                       |                                      |                         |
| Zimbabwe                                     |                                      |

</details>

## FAQ

**Q: I made a mistake on my upload: Loaded to the wrong campaign, had field values in the wrong column, uploaded with the wrong status, etc. What do I do?**

A: Before re-uploading the correct list or trying to fix the error, please get in touch with MOps in the `#mktgops` Slack channel. Instructions will be provided. If you uploaded to the wrong program, we need to revert that prior to the new list being loaded, otherwise it will cause issues with lead scoring and be more challenging to correct.

**Q: Why do my interesting moments show Attended {{my.event name}}, which starts on {{my.event date}}. Location: {{my.event location}}?**

A: Your tokens were not filled out before the time of the import. A new batch campaign will need to be created to update this information.

**Q: I haven’t received a notification that my import is complete, how can I check its status?**

A: If you have access to log into Marketo, navigate to the campaign and you can see the number of leads that have been loaded. Check these numbers against your CSV file to see its progress. Refresh this page periodically to see if those numbers continue to increase. If they seem to have stopped and don’t match your final numbers you can notify mktgops and we can check for any failures.

**Q: Can I use this system to update information on a list that already exists? (Ex: I need to change their opt-in status or their employee bucket numbers.)**

A: Yes, you can create a CSV list with the members email and the column data you want to update and import the same way, this will update the records.

**Q: What’s taking so long?!?**

A: Workato is running the leads through all the processing needed to add leads, update fields, and sync to SFDC. Due to Workato and Google Workspace’s integration, there is a built-in delay to prevent the API from being over-taxed and canceling the job halfway through. With larger lists, the process can take some time but we do not expect the process to go over the 24 hour SLA. As an example; we have seen lists of non english leads of upwards of 800+ taking close to 14 hours to fully complete.

- Example: Uploaded at 1:20PM -> Progress check at 3:00PM: (467 members added so far out of the 807 total) ->
  Import Complete Message at 3:14AM.

**Q: Can I use this process for submitting On24 event notes?**

A: Not at this time. There will be a separate processing flow built to automate this process.

**Q: Is there a size limit for lists?**

A: So far we have tested list sizes primarily around `1,000` leads in size. We have no reason to believe there is a limit but the list size does seem to affect processing time. If the list is 2,000 or more, consult MktgOps as this may affect processing time.
