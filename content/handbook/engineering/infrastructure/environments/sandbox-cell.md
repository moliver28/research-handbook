---

title: "Sandbox Cell environment"
description: "Detailed information about the Sandbox Cell environment"
---







## Sandbox Cell

The Sandbox Cell is a sandbox environment used for pre-production testing of the latest Staging Canary code with full access to the environment and control over data.

| **Name** | **URL** | **Purpose** | **Deploy** | **Database** | **Terminal access** | **Slack channel** |
| ---- | --- | ------- | ------ | -------- | --------------- | --------- |
| Sandbox Cell |  | Pre-production testing | Frequently (Parallel to `gstg-cny`) | Separate and local | All engineers | [`#staging-ref`](https://gitlab.slack.com/archives/C02LN0K1N3Y) |

### Purpose

- Cover testing needs of Test Platform and Development teams in a production-like environment
- Admin testing access
  - Current Staging (`gstg`) has customer data which is a blocker for giving more access to Development and Test Platform teams.
- Testing different paid tiers
- Democratizing testing and better test data
- Better access to test accounts and wider permissions
- Performant sandbox environment for engineers

### Pending integrations
- Geo
- [CustomersDot](https://gitlab.com/gitlab-org/quality/quality-engineering/team-tasks/-/issues/2458)

### Environment information

- Deployed with [GitLab Environment Toolkit (GET)](https://gitlab.com/gitlab-org/gitlab-environment-toolkit) 
- **add more details**


#### Deployment process

**add description**



### How to use the Sandbox Cell

The Sandbox Cell is a safe playground for engineers who want to test latest Staging(`gstg-cny`) code. Sandbox Cell has several advantages that allow it to be a full-fledged sandbox environment:

- Sandbox Cell deployments do not block the deployment process and can be tweaked or updated by any GitLab engineer. Hence GitLab engineers have wide permissions and full control over the environment.
- Environment follows 3k hybrid architecture and could be used for load testing if needed.



#### Enable Feature Flags

TBD

#### Admin access

WIP

~~Note that Sandbox environment is shared across all engineers. If you plan to perform changes to GitLab Admin settings, please do communicate broadly to team.

#### SSH access and Rails console

TBD

##### Connect via your browser

TBD

##### Connect from your local terminal

1. ~~Navigate to the [staging-ref cluster](https://console.cloud.google.com/kubernetes/clusters/details/us-east1-c/staging-ref-3k-hybrid-us/details?project=gitlab-staging-ref&cloudshell=false) or to the [staging-ref geo cluster](https://console.cloud.google.com/kubernetes/clusters/details/europe-west6-c/staging-ref-3k-hybrid-eu/details?cloudshell=false&project=gitlab-staging-ref)~~
1. ~~Click **Connect**~~
1. ~~Copy the command and run it locally to get `kubeconfig`~~
1. ~~Follow [Kubernetes cheat sheet](https://docs.gitlab.com/charts/troubleshooting/kubernetes_cheat_sheet.html#gitlab-specific-kubernetes-information)~~
TBD

#### Request access to GCP project and environment

TBD

#### Trigger QA pipelines

TBD

#### Monitoring

TBD

#### Upgrade paid plans

~~By default, all users and groups are on the `Free` plan. To upgrade a paid plan use [Admin account](#admin-access) and do the following:~~

1. ~~Navigate to [Admin area](https://docs.gitlab.com/ee/administration/).~~
1. ~~Select Users or Groups section depending on what entity you would like to upgrade.~~
1. ~~Search for user or group by name and click "Edit".~~
1. ~~Select the required paid plan in "Plan".~~
1. ~~Click "Save changes".~~

~~Watch [this demo](https://gitlab.com/gitlab-org/gitlab/uploads/43733f0e0b58ded0e964909cfe4489e8/admin_paid_plan.gif) to see an example when a group was promoted to Premium plan.~~

#### Pre-existing test accounts

TBD

#### Working with a SAML SSO enabled group

TBD

### Future iterations and known limitations

TBD

### Feedback

~~If you need some additional custom configuration for the Sandbox Cell to be explored or you have other feedback and ideas for improvements, please reach out to the team.
