---
title: Corporate Security Direction
---

## Zero Trust Architecture

- [NIST 800-207](https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-207.pdf)
- [Google BeyondCorp Approach](https://research.google/pubs/beyondcorp-a-new-approach-to-enterprise-security/)

Our information security strategy is built around the principles of Zero-Trust Architecture (ZTA), which assumes that threats can exist both inside and outside our organizational boundaries. These principles remain consistent across our production environments where we host our customer’s data and our IT Business Systems used to support GitLab’s business operations. The approach couples cryptographically verifiable device identities with human authentication/authorization, and data centric access controls based on least privilege principles. GitLab’s strategy outlines our commitment to implementing, continuously monitoring, and improving our security controls and practices to safeguard data and assets.

Any ZTA system supported should be flexible enough that the architecture needs to be able to support “non-human” authentication with principles of both ZTA and least privilege. Examples of this should include automated services that communicate via tokens, api keys, and other forms of authentication and identification we currently use. A good example of this would be GitLab Runners. This does not mean that we will be designing non-human authentication, but we might have to be able to interact with and possibly administer portions of the non-human process, and we should consider this scenario when designing and implementing architectural changes to the overall ZTA strategy.

Additionally we need to keep in mind that changes to industry standards can come in different forms from different sources. For example, the U.S. Government via the FedRAMP program could require changes in multiple ways, from general [ZTA requirements](https://www.whitehouse.gov/wp-content/uploads/2022/01/M-22-09.pdf) to specifics including [quantum cryptography](https://www.whitehouse.gov/wp-content/uploads/2022/11/M-23-02-M-Memo-on-Migrating-to-Post-Quantum-Cryptography.pdf), so flexibility needs to be factored into existing and future ZTA deployments.

To achieve this we will require multiple vendor provided products, team engineering efforts, and integration into GitLab where possible. Our goal is to build a Zero Trust program framework that is considered industry leading and an example of how to approach security while properly balancing the needs of the business.

Our strategy envisions an iterative approach while recognizing that emerging threats, immediate business needs and other operational demands may impact the timeline. In addition, this strategy assumes that headcount and other budget support from the business will be in place. We will be focusing on reducing risk while developing frameworks that support iteration and expansion of our capabilities over time and as needed.
