---
aliases: /handbook/engineering/development/incubation/mlops/jtbd.html

title: "MLOps Jobs to Be Done"
description: "What are the problems users want MLOps to solve?"
---

## What is this

To better contextualize our efforts on MLOps Incubation Engineering, we are defining a list of [Jobs To Be Done](/handbook/product/ux/jobs-to-be-done/) - the objectives our users are trying to accomplish in MLOps. We will anchor these JTBD to the [stage](https://about.gitlab.com/stages-devops-lifecycle/) they belong to, and each MLOps exploration will try to address one or more of these JTBD.

This is a living issue, and new JTBD will continue to be added based on our understanding of MLOps and user Feedback.

## Why is MLOps different from traditional DevOps?

While MLOps goals is the exact same as DevOps, the JTBD are a result of the difference between software the includes ML (sometimes referred as [software 2.0](https://karpathy.medium.com/software-2-0-a64152b37c35)) and traditional software. **For traditional software, logic is made explicit through code, while on for ML the logic is implicit in the data, and extracted through a variety of technique's**. By relying on the data, it becomes a first class citizen for Ops (quality of the underlying data will impact directly on the quality of the software output), and not being explicit brings different types of vulnerability and uncertainty that needs to be addressed. **Note that MLOps is not a branch of DevOps, it's a superset of it.**

## MLOps JTBD

When working with software that includes Machine Learning, I want be able to iterate on the models with confidence, so that I can deliver the most value to my users.

## MLOps JTBD per stage     

### Plan

| Code          | Job Description |
|---------------|-----------------|
| <a id="IE_MLOPS_PL_1">IE_MLOPS_PL_1</a> | When starting a project, I want to make a decision on when using Machine Learning becomes ROI positive, so that I don't optimize early on |
| <a id="IE_MLOPS_PL_2">IE_MLOPS_PL_2</a> | When starting working with ML, I want find knowledge from previous analysis done by colleagues, so that I can build upon them |

### Create

| Code          | Job Description |
|---------------|-----------------|
| <a id="IE_MLOPS_CR_1">IE_MLOPS_CR_1</a> | When working on a Machine learning model, before release, I want to share and discuss the code with colleagues, so that I catch bugs and bad assumptions                         |
| <a id="IE_MLOPS_CR_2">IE_MLOPS_CR_2</a> | When creating a machine learning model, I want to encode the training as a pipeline, so that I can minimize human error                                                          |
| <a id="IE_MLOPS_CR_3">IE_MLOPS_CR_3</a> | When optimising a model, I want to compare the outcomes of pontential hyperparemeter variations, so that I can choose the best candidate                                         |
| <a id="IE_MLOPS_CR_4">IE_MLOPS_CR_4</a> | When creating a Machine Learning model, I want automatic creation of models from input data and desired outcome, so that I can focus on modelling the data and the business case |
| <a id="IE_MLOPS_CR_5">IE_MLOPS_CR_5</a> | When creating a Machine Learning model, I need access to production data, so that my models are accurate |
| <a id="IE_MLOPS_CR_6">IE_MLOPS_CR_6</a> | When creating a Machine Learning model, I want to access to synthetic data, so that I don't void users privacy |
| <a id="IE_MLOPS_CR_7">IE_MLOPS_CR_7</a> | When training a model, I want to run part of my code in one or more remote machines, so that I can finish training faster |
| <a id="IE_MLOPS_CR_8">IE_MLOPS_CR_8</a> | When training a new model, I want to explore existing models so that I can build upon them |
| <a id="IE_MLOPS_CR_9">IE_MLOPS_CR_9</a> | When creating a machine learning model, I want to explore and process the data available, so that I can decide how to approach the problem |
| <a id="IE_MLOPS_CR_10">IE_MLOPS_CR_10</a> | When creating a machine learning model, I need to label my dataset either manually or crowdsourced, to define the target of the machine learning model |

### Verify

| Code          | Job Description |
|---------------|-----------------|
| <a id="IE_MLOPS_VR_1">IE_MLOPS_VR_1</a> | When the underlying data changes, I want to be informed so that I can adapt the model                                                                                            |
| <a id="IE_MLOPS_VR_2">IE_MLOPS_VR_2</a> | When code or data for the model changes, I want to rerun hyperparameter tuning so that I can chose the best model                                                                |
| <a id="IE_MLOPS_VR_3">IE_MLOPS_VR_3</a> | When testing ML code, I want to run the training DAG as specified during create, so that I don't duplicate work                                                                  |
| <a id="IE_MLOPS_VR_4">IE_MLOPS_VR_4</a> | When working with ML, I want to schedule model trainings based on time or triggers, so that the model doesn't suffer performance degradation |
| <a id="IE_MLOPS_VR_5">IE_MLOPS_VR_5</a> | When working with ML, I want minimize how often each step of the DAG is run, so that costs are reduced |
| <a id="IE_MLOPS_VR_6">IE_MLOPS_VR_6</a> | When a model is deployed, I want to verify whether the labeling was done correctly, and is still valid, so that I am sure the targets were correct |


### Packaging

| Code          | Job Description |
|---------------|-----------------|
| <a id="IE_MLOPS_PG_1">IE_MLOPS_PG_1</a> | When working in a software with a Machine Learning, I want to package models in a common format, so that I avoid changing code on every release |
| <a id="IE_MLOPS_PG_2">IE_MLOPS_PG_2</a> | When multiple versions of the models exist, I want to trace the code, data and configuration that was used to create each of them, so that I can reproduce the model |
| <a id="IE_MLOPS_PG_3">IE_MLOPS_PG_3</a> | When iterating on a model, I want to search and browse through past versions, so that I can deploy a past version |
| <a id="IE_MLOPS_PG_4" href="#IE_MLOPS_PG_4">IE_MLOPS_PG_4</a> | When iterating on a model, I want to see the performance of past models, so that I can communicate progress over time  |

### Release

| Code          | Job Description |
|---------------|-----------------|
| <a id="IE_MLOPS_RL_1" href="#IE_MLOPS_RL_1">IE_MLOPS_RL_1</a>  | When deploying an ML model, I want to deploy packaged ones, so that I minimize human itervention |
| <a id="IE_MLOPS_RL_2" href="#IE_MLOPS_RL_2">IE_MLOPS_RL_2</a> | When deploying an ML model, I want to be able to deploy multiple versions simultaneously, so that I can compare their behavior |
| <a id="IE_MLOPS_RL_3" href="#IE_MLOPS_RL_3">IE_MLOPS_RL_3</a> | When a model is deployed, it should have access to the data in the same format as during training, so that they don't behave differently |
| <a id="IE_MLOPS_RL_4" href="#IE_MLOPS_RL_4">IE_MLOPS_RL_4</a> | When a model is deployed, I my data transformation pipelines to be orchestrated, so that the model has the right data available |
| <a id="IE_MLOPS_RL_5" href="#IE_MLOPS_RL_5">IE_MLOPS_RL_5</a> | For deployed models, I want to batch predictions, so that I can avoid heavy compitation during runtime |
| <a id="IE_MLOPS_RL_6" href="#IE_MLOPS_RL_6">IE_MLOPS_RL_6</a> | For deployed models, I want to make predictions on streaming data, so that my model reacts quickly to new data |
| <a id="IE_MLOPS_RL_7" href="#IE_MLOPS_RL_7">IE_MLOPS_RL_7</a> | When deploying a machine learning model, I need to compare prior and current version on live data, so that I can publish the best version  |


### Secure

| Code          | Job Description |
|---------------|-----------------|
| <a id="IE_MLOPS_SC_1">IE_MLOPS_SC_1</a> | When using ML models as libraries (eg fine tuning transformers), I want to be warned whether the parameters were tampered with, so that I don't introduce unwanted behaviour     |

### Configure

| Code          | Job Description |
|---------------|-----------------|
| <a id="IE_MLOPS_CF_1">IE_MLOPS_CF_1</a> | When working in a software with a Machine Learning, I want to control resources for each model accordingly, so that I provide the best user experience while keeping costs low   |
| <a id="IE_MLOPS_CF_2">IE_MLOPS_CF_2</a> | When training or running a machine learning model, I want to specify the hardware configurations needed, so that I don't need to file a ticket for new resources |
| <a id="IE_MLOPS_CF_3">IE_MLOPS_CF_3</a> |  When training or running a machine learning model, I want to not depend on a specific cloud provider, to avoid vendor lockin |

### Monitor

| Code          | Job Description |
|---------------|-----------------|
| <a id="IE_MLOPS_MN_1">IE_MLOPS_MN_1</a> | When input data configuration changes, I want to be warned, so that I can retrain my machine learning model                                                                      |
| <a id="IE_MLOPS_MN_2">IE_MLOPS_MN_2</a> | When the performance of a a Machine Learning model degrades, I want to be informed, so that I can retrain my machine learning model                                              |
| <a id="IE_MLOPS_MN_3">IE_MLOPS_MN_3</a> | When a deployed machine learning model is taking too much resources, I want to be informed, so that I don't incur into too much cost                                             |
| <a id="IE_MLOPS_MN_4">IE_MLOPS_MN_4</a> | After deploying a model, I want to run adhoc analysis on the prediction data, to explore the outcomes and potential improvements                                                 |
| <a id="IE_MLOPS_MN_5">IE_MLOPS_MN_5</a> | After deploying a model, I want to run adhoc analysis on the prediction data, so that I can answer questions from the business                                                   |
| <a id="IE_MLOPS_MN_6">IE_MLOPS_MN_6</a> | When deploying a model, I want to have model performance divided by cohorts of users, so that I can detect potential biases                                                      |
| <a id="IE_MLOPS_MN_7">IE_MLOPS_MN_7</a> | After deploying a model, I want to label predictions following the initial labeling process, so that I can verify if the model works as expected |

## Resources

- [Machine Learning Operations: Overview, Definition, and Architecture](https://arxiv.org/abs/2205.02302)
- [Designing Machine Learning Systems](https://learning.oreilly.com/library/view/designing-machine-learning/9781098107956/)
- [Practical MLOps](https://learning.oreilly.com/library/view/practical-mlops/9781098103002/)







