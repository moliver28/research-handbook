---
title: "Static Analysis Group EC2 development machine setup guide"
---

## Static Analysis Group EC2 development machine setup guide

Some of the SAST analyzers, [including Semgrep](https://github.com/returntocorp/semgrep/issues/2252), do not run on the M1 mac as ARM64 is not supported.

To overcome this, a SAST developer image has been added to the EC2 AMI catalog and shared with the `arn:aws:organizations::663740273027:organization/o-qjrbh9ll6x` sandbox organisation so that SAST contributors can run SAST analyzers in a development environment. To setup the image:

- Create an AWS sandbox account for yourself: https://gitlabsandbox.cloud/login
- Head over to the EC2 AMI catalog and search for `static-analysis-workspace`. You should see a result under "My AMIs"
- Select the AMI and click "Launch Instance with AMI".
- For the instance type, `c6a.xlarge` is recommended as it should provide decent single core performance which is useful for the integration tests.
- In "Network Settings", ensure the check box "Allow SSH traffic from" is selected and choose "My IP" in the dropdown select
- Create or select a key pair. Download the private key `.pem`.
- Wait for the instance to start.
- Navigate to the instance page and note the public IP address.
- SSH into the instance using `ssh -i <path-to-pem> ubuntu@<ip>`
- You should be greeted by the MOTD
