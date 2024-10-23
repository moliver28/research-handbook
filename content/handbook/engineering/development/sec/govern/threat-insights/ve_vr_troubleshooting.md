---
title: Vulnerability Explanation and Vulnerability Resolution troubleshooting
---

## Troubleshooting Resource Guide for VE and VR

When working with Vulnerability Resolution and Vulnerability Explanation, you might run into an error. Most commons
problems are documented in this section.
If you find an undocumented issue, you should document it in this section after
you find a solution.

If you need help developing or testing locally, plese see the [setup guide](ve_vr_setup).

For availability of these features please first check the prerequisites listed here: [vulnerability explanation](https://docs.gitlab.com/ee/user/application_security/vulnerabilities/#vulnerability-explanation) and [vulnerability resolution](https://docs.gitlab.com/ee/user/application_security/vulnerabilities/#vulnerability-resolution).

Also check: [VR troubleshooting guide](https://docs.gitlab.com/ee/user/application_security/vulnerabilities/#troubleshooting).

| Problem                                                               | Solution                                                                                                                                                                                                                                                                              |
|-----------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|  Upstream errors such as "The upstream AI provider request timed out without responding" | This may indicate an issue with our third-party AI. This could be Anthropic outage - check [status](https://status.anthropic.com/).|
| Specific recurring errors like "an unexpected error has occurred" | This may indicate an issue with the creation of the diff patch or MR. |
| If you see that the VR button is disabled, that means that the CWE is not part of the supported list at this time. |  Feature coverage restriction: VR is available for a set of CWEs, check SSOT [doc](https://docs.google.com/spreadsheets/d/1G5zN4s4Inw2xhcyZP1U1oDW1erJuxL7QZsXSoOGNKeI/edit?gid=1605042126#gid=1605042126). |
| Query custom errors in Elastic | Check this [dashboard](https://log.gprd.gitlab.net/app/r/s/8no4f) for further investigation. |

### Dashboard to see logs

1. [Production log dashboard](https://log.gprd.gitlab.net/app/r/s/Bfmiw)
1. [Staging log dashboard](https://nonprod-log.gitlab.net/app/r/s/2OKmz)
