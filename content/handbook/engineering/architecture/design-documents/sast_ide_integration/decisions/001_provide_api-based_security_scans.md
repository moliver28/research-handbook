---
owning-stage: "~devops::secure"
description: 'SAST IDE Integration ADR 001: Provide API-based security scans'
---

# SAST IDE Integration ADR 001: Provide API-based security scans

## Summary

1. The original spikes for SAST integration explored two avenues: local scanning or remote scanning
1. A number of tradeoffs were considered with the focus was on iterating towards an effective integration with a fixed timeline

A remote scanning solution supports a larger usecase, faster onboarding and it potentially reduces maintenance effort while increasing observability in comparison to a local scanning solution.

Initially, we plan to mitigate the costs of remote data access by scanning on a per-file basis. By minimizing the time to market, we can more quickly begin iterating on features according to customer demand.

## Context

[Summarized from the original spike discussion](https://gitlab.com/groups/gitlab-org/-/epics/10283#note_1888852733):

As covered in [the epic's technical needs](https://gitlab.com/groups/gitlab-org/-/epics/10283#technicalplatform-needs) we want as few installation steps and dependencies as possible; a goal that is most easily achieved by hosted, remote scanning solutions. It also fits GitLab's existing deployment paradigms and evolving best practices around [Project Runway](../../../../infrastructure/platforms/tools/runway/) and the [AI Gateway](../../../architecture/design-documents/ai_gateway/) which already provide pathways to realise service integrations. In contrast, for local scanning we do not have these pathways yet.

Both the spike and previous technical discovery assumed we must retain ephemeral environments (modeling our CI builds), so we maintained this constraint.

The main benefits of a remotely hosted solution:

* rapid customer onboarding (see above)
* continuous deployments (shipping binary ties us to a limited release cycle and longer support windows for those who dont upgrade, both for rule refinement and bugfixes)
* observability and centralized telemetry
* reduced costs incurred for customers
* leveraging service for platform usecases beyond IDE code search (best example is matching this paradigm for platform-wide secret detection; i.e. scanning MR descriptions for secrets) or running analysis on-demand

## Future Considerations

We will focus on UX constraints, IDE integration, and coordinated deployment from the starting point of an entirely remote, single-file scanner.

With each usability question and performance concern, we can redress execution and data locality in the appropriate context of a functioning system.
