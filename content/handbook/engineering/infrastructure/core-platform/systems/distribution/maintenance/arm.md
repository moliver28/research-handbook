---
aliases: /handbook/engineering/infrastructure/core-platform/systems/distribution/maintenance/arm.html

title: "Distribution Team Infrastructure: ARM"
description: "Describes the hardware and use of infrastructure for building ARM packages."
---







## Hardware Provider

AWS Graviton is the current provider for ARM64 and Raspberry Pi runner
instances. All [distribution][distribution] team members should be able to
log in with their own credentials.

## Teams Working on ARM Related Tasks

Several GitLab teams collaborate to provide support for ARM:

1. [Distribution][distribution] manages the ARM runner provider
   and issues with build pipelines.
1. [Developer Relations team][developer-relations] and support teams answer questions and provide community assistance in the forums.
1. [Verify CI][verify-ci] would help build packages for ARM runners.

## Failure Notifications

Build failures for master, stable branches, and tags are sent to the
[distribution][distribution] team slack channel. Developers receive failure
notices via e-mail for pipelines triggered from their feature branches as
they would normally for any other branch.

## Frequently Asked Questions

### What GitLab packages get built for Raspberry Pi?

Due to [memory requirements] we do not currently recommend the Raspberry Pi
as a production platform. Due to this, we only build packages for the
Community Edition.

[verify-ci]: /handbook/engineering/development/ops/verify/
[distribution]: /handbook/engineering/infrastructure/core-platform/systems/distribution/
[developer-relations]: /handbook/marketing/developer-relations/
[memory requirements]: https://docs.gitlab.com/ee/install/requirements.html#memory
