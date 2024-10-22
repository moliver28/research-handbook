---
title: "Code Suggestions Model Rollout Guide"
---

This document serves as a guide for rolling out Code Suggestions models.

## Create a Rollout Plan

Create an issue using the the Rollout Plan template. This must be done before or during the implementation of the new model.
Specific rollout plans may need to be created for different [rollout phases](#rollout-phases).

## Rollout method

Rollout of a new model will be done through a [Feature Flag](https://docs.gitlab.com/ee/development/feature_flags/).

You must create a [Feature Flag Rollout Issue](https://gitlab.com/gitlab-org/gitlab/-/blob/master/.gitlab/issue_templates/Feature%20Flag%20Roll%20Out.md)
for the new feature flag.

## Pre-rollout checklist

- Make sure that you have reviewed the [considerations when adding a new model](implementation_guidelines.md#considerations-when-adding-a-new-model)
- Make sure that the model provider or host can handle the volume of requests on AI Gateway

## Rollout phases

Rollout of a new model is usually done in 3 phases:

1. Rollout to Code Creation team members and other interested stakeholders
2. Rollout to all GitLab team members
3. Rollout to all users

### Rollout to Code Creation team members and other interested stakeholders

This is an optional but recommended step before rolling out to all GitLab team members. Code Creation team members and interested stakeholders will have more knowledge of the currently used models, and they can give valuable feedback around latency and correctness in comparison to current models.

Before rollout, make sure that an Internal Feedback issue has been created. Make sure to direct all feedback to the internal feedback issue.

### Rollout to all GitLab team members

This is a required step before rolling out to all users. With dog-fooding from GitLab team members, the larger volume of requests can help us determine:

- if we need to increase the request quota for the model
- if additional post-processing is needed for the completions coming from the model
- if we need to reach out to the model providers for bug fixes
- and other considerations

Before rollout, make sure that the
[Internal Rollout](https://gitlab.com/gitlab-org/code-creation/code-suggestions-model-evaluation-hub/-/blob/main/.gitlab/issue_templates/internal_rollout.md)
and Internal Feedback issues have been created. Make sure to direct all feedback to the internal feedback issue.

For further guidance around rolling out to GitLab team members, please refer to the

### Rollout to all users

This step is done when the model is ready for widespread use. Rollout to all users can be done by percentage of actors (recommended), or you can rollout to all users at once.

Since this is considered a feature release, ensure proper announcement of the release through appropriate channels before launch.
