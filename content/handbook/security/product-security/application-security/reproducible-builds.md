---
title: "Reproducible Builds"
description: "Learn how GitLab is implementing [Reproducable Builds][13] for our build processes."
---

# What are Reproducible Builds?

Reproducible Builds (RB) is a methodology for building software that allows the end user to verify that the build published on any given release is *sufficiently similar*[1] or the same as the build that is deployed locally. 

The RB methodology is composed of three major tenants:
	- Hermetic: All build inputs are specified in an unambigious way. Each item that goes into a build is given a fully resolved version number and/or cryptographic hash. Hermeticity is verified as part of the build process
	- Reproducable: When you run the build process, you should get the same bit-by-bit output as the developer. All sources of nondeterminism and variance should be removed and all information necessary to reproduce the build should be provided up front in a `buildinfo` or similar lock file.
	- Verifiable: Mechanisms should be employed to cryptographically verify the end binary to the source it was built from in a trustworthy manner. 

1. Sufficient similarity highlights that 100% verifiability is not always feesable. Variances across compiler versions, OS hardware, timestamps, ordering of files on a filesystem, and other sources of nondeterminism will degrade similarity metrics. Sufficient similarity goals are to be set by the source code maintainers.


# Why are Reproducible Builds Important?

RB allows for end users to have confidence in the software supply chain for a built component. It hardens the software build process from threats like backdoors and other in-transit vulnerabilities that can arise from distribution mirrors, third party hosting and so on. It also assists in debugging. Builds with problems that have a low RB similarity score can be more easily triaged.

## What are the Technical Requirements for Hermeticity?

Builds need to implement binary provenance (BP). Binary provenance is another way of saying that the build system should have descriptions of exactly how a given binary artifact is built. This includes the inputs, the transformation and the entity that performed the build. The BP is a file that includes the following fields:

- Authenticity Attestation: describes system that produced the BP and includes cryptographic signatures to provide attestation as to the authenticity for the file
- Expected Outputs: describes all expected outputs of the build process as well as provides a cryptographic hash for each artifact.
- Expected Inputs: describes everything included in the build. This field allows the verifier to correlate the source to the artifact
	- Sources: within the expected inputs field. This might look like "`git commit 291e...494d`" from `https://gitlab.com/gitlab-org/gitlab`" or even "`gitlab-ee-17.0.1`" with SHA256 hash "`75a4...9982`"
	- Dependencies: Every implicit dependency needs to be linked in a format above. Each input affects the integrity of the build.
- Commands: each command used to intiate the build needs to be outlined in such a way as to allow for autmated analysis
	- Example: `{"gitlab-omnibus": {"command": "build", "target": "//main:hello_world"}}"`
- Environment: any information such as architecture details, environment variables, tool/compiler versions, etc.
- Versioning: Build timestamps 

Note that other fields may be beneficial and the list above is not comprehensive. Each BP should be modified to fit the approprate threat landscape. Builds that require higher fidelity should include additional fields to aid in verification.

## What are the Technical Requirements for Reproducibility?
As mentioned above, different Reproducible Builds are going to have different required similarity scores. It's not always fesable to enforce 100% reproducability as some nondeterministic factors may be unable to be mitigated. In order to meet the criteria for reproducibility, builds should be:
    - Byte-by-byte verifiable: this typically takes the form of a cryptographic hash that is able to be compared against an authenticated source
    - Automatable: build hashes of source inputs, expected outputs, attestations, and so on should be provided in a format that is easily able to be verified by automation