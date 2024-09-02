---
title: Google Workspace Apps
---

Effective 2024-06-26, Google Workspace applications that connect via OAuth are blocked without prior approval. Using Google for sign-in only is exempt from this policy.

### Adding an external OAuth application to Google Workspace

Please create a [app integration issue](https://gitlab.com/gitlab-com/Finance-Division/procurement-team/procurement/-/issues/new?issuable_template=app_integrations). Once the app integration issue has undergone all necessary reviews and approvals, please [submit a CorpSec issue](https://gitlab.com/gitlab-com/gl-security/corp/issue-tracker/-/issues/new) and link the app integration issue.

### Adding an internal app/app script to Google Workspace

You may be blocked from using an internal Google Apps Script, particularly if it runs from a Google Doc/Sheet/Slides. Please use the following steps to get your script authorized:

1. If you don't already have a [Sandbox Cloud account](/handbook/infrastructure-standards/realms/sandbox/), please create an [account](/handbook/infrastructure-standards/realms/sandbox/#individual-aws-account-or-gcp-project), and request a GCP project be created.
1. [Access your GCP project](/handbook/infrastructure-standards/realms/sandbox/#accessing-your-gcp-project)
1. Inside your newly created GCP project (formatted {emailHandle}-{cloudAccountShortId}), search for **OAuth consent screen**.
1. Select **Internal**
1. Select **Create**
1. Enter an app name, support email and developer e-mail. The emails should both be your work email.
1. Select **Save and Continue**
1. Select **Save and Continue** (may not need to add any scopes)
1. Click the **Google Cloud** logo at the top left of the screen and copy your **Project ID**
1. Now in the Google Doc/Sheet/Slides:
   1. Select **Extensions > Apps scripts**
   1. Select the **Settings wheel -> Project settings**
   1. Under Google Cloud Platform (GCP) Project heading, choose **Change Project** and paste your **Project ID**, then **Set project**

#### Troubleshooting

1. If you continue to get authorization errors after completing the above:
   1. Open the script editor console and run the script manually
   1. Manually approve the OAuth access dialogs and authorizations
