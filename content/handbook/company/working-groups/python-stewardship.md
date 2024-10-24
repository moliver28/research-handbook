---
title: "Python Stewardship Working Group"
description: "Consolidating Python development within GitLab"
status: not started
---


## Attributes

| Property         | Value           |
|------------------|-----------------|
| Date Created     | 2024-11-01 |
| Target End Date  | 2025-02-01 |
| Epic             | https://gitlab.com/groups/gitlab-org/-/epics/15580 | 
| Slack            | #wg_python-stewardship (only accessible from within the company) |
| Google Doc       | Agenda (https://docs.google.com/document/d/1gs-OrjjyfxQ3BDaKxOXcrMuUl3z1jmsxGmbdmEgIBF8/edit?tab=t.dma9z3zh8fwb) (only accessible from within the company) |
| Meeting Calendar | Calendar (https://calendar.google.com/calendar/u/0?cid=Y18xZWE4ZTViZWZiYmUzMDk0MDgzNGJiZWViMWY1NTFlODVjNWQ0NzQwZDc0MzJhMWQyMDkzOWQ4MzU0YjhkNjU3QGdyb3VwLmNhbGVuZGFyLmdvb2dsZS5jb20) (only accessible from within the company) |

## Goal

- Consolidate Python development within GitLab, providing confidence to developers on developing high-quality Python codebases. 
- Simplify developer decision making by providing opininated guidelines on how to create, maintain and deploy Python services and libraries in GitLab.
- Define resources (courses, mentorship) for training  developers that want or need to contribute to a Python codebase.

## Context

While Python has been present at small scale for many years in the company, the evolution of our AI Infrastructure lead to Python becoming a critical part of our product. Yet, we haven't consolidated a development culture around it. 

As a result, developers are confused on how to write Python code, how to review Python code, and how to set up new functionality. Ruby developers also feel a lack of support when it comes to understanding and contributing to the codebase. One key difference between our Ruby codebase and our Python codebase is that the Python codebase is more distributed: instead of having a single repository we have multiple each responsible for an area.

Examples of existing Python codebases:

- AI Gateway https://gitlab.com/gitlab-org/modelops/applied-ml/code-suggestions/ai-assist/
- Prompt library https://gitlab.com/gitlab-org/modelops/ai-model-validation-and-research/ai-evaluation/prompt-library
- Duo Workflow service https://gitlab.com/gitlab-org/duo-workflow/duo-workflow-service

## Key milestones

- 17.7 - Kick off of Working group
- 17.8 - Contributions to documentation
- 17.9 - Define templates for Python services, libraries, linting and utilities

## Exit Criteria

| Criteria | Progress | DRI | Start date | End date |
| :---- | :---- | :---- | :---- | :---- |
| A non-Python developer has guidance on how to understand and contribute to Python codebase |  |  |  |  |
| Guidelines and templates for Python codebase creation (as described in outcomes) have been merged |  |  |  |  |
| Code review and maintainership guidelines for Python codebase have been merged |  |  |  |  |
| Guidelines for deployment of each of the three application types |  |  |  |  |

## Outcomes

Documentation and process:

- Training for non-Python developers  
- Development guidelines  
  - Different types of repositories:   
    - Python services (AIGW, workflow)  
    - Python utilities (CEF)  
    - libraries  
  - Creation of codebase  
  - Authentication  
  - Testing guidelines 
- Code review and maintainership guidelines
- Deployment guidelines
  - Python services (AIGW, workflow)  
  - Python utilities (CEF)  
  - libraries  

Development experience:

- Extraction of common setup  
  - Linters  
  - Frameworks
  - Code Structure  
  - CI for deployment

## Roles and Responsibilities

| Working Group Role | Person | Title |
|-----------------------|-----------------------|--------------------------------|
| Executive Sponsor | Tim Zallmann | VP of Engineering |
| Facilitator | Eduardo Bonet | Staff Fullstack Engineer, Custom models |
| Member | Fred de Gier | Staff Fullstack Engineer, MLOps |
| Member | Alejandro Rodríguez | Senior Backend Engineer, AI Framework |
| Member | Alexander Chueshev | Staff ML Engineer, AI Framework |
| Member | Tan Le | Staff ML Engineer, Model Validation |
| Member | Stephan Rayner | Senior ML Engineer, Model Validation |
| Member | Tetiana Chupryna | Senior Backend Engineer, Duo Chat |
| Member | Mohamed Hamda | Senior Backend Engineer, Custom models |
| Member | Dylan Bernardi | Backend Engineer, Editor Extensions |
| Member | Shola Quadri | Associate Backend Engineer, Code Creation |

### Non-goals

- Evolution of AI Gateway, although related to this WG proposal, is out of scope.
- Data Science use cases (such as code to develop a new ML model) differs substantially to system development, and merits their own set of guidelines.
