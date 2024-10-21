---
title: "Model Rollout Guide"
---

## Create a Rollout Plan

Create an issue using the the Rollout Plan template. This must be done before or during the implementation of the new model.
Specific rollout plans may need to be created for different [rollout phases](#rollout-phases).

## Rollout method

Rollout of a new model will be done through a [Feature Flag](https://docs.gitlab.com/ee/development/feature_flags/).

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

Before doing this rollout, make sure that the Internal Rollout Plan and the Internal Feedback issues have been created.

### Rollout to all GitLab team members

This is a required step before rolling out to all users. With dog-fooding from GitLab team members, the larger volume of requests can help us determine:

- if we need to increase the request quota for the model
- if additional post-processing is needed for the completions coming from the model
- if we need to reach out to the model providers for bug fixes
- and other considerations

Before doing this rollout, make sure that the Internal Rollout Plan and the Internal Feedback issues have been created.

### Rollout to all users

This step is done when the model is ready for widespread use. Rollout to all users can be done by percentage of actors (recommended), or you can rollout to all users at once.

This is essentially a feature release. Before doing this announcement, make sure that the release has been announced in the appropriate channels.
