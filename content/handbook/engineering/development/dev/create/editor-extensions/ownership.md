---
title: "Ownership and boundaries - Editor Extensions"
description: This page describes how teams working in features somehow related to Editor Extensions that span multiple groups and codebases should expect ownership and maintainership duties to be split among them.
---

## Context

Some features are authored by other groups that need to be exposed via our editor extensions. Having multiple groups contribute to the development of these features can lead to ambiguity and mismatched expectations when it comes to ownership and maintainership of each component of these features.

This page documents an agreed-upon approach to seeing ownership in a consistent way to align the expectations of everyone involved for increased efficiency.

## System overview

Currently, the external features being integrated via our Editor Extensions follow this architecture:

* UI component built on [gitlab-ui](https://gitlab.com/gitlab-org/gitlab-ui)
* Integration with Editors: Webview
* Integration with Editors: Business logic

## Ownership model

Using **Duo Chat** as an example:

| System part | Group responsible |
| ------ | ------ |
|    [Chat UI component in `gitlab-ui`](https://gitlab.com/gitlab-org/gitlab-ui/-/tree/main/src/components/experimental/duo/chat)     |   **AI-Powered:Duo Chat** group.     |
|    VS Code - [Chat Webview](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/tree/main/webviews/vue2/gitlab_duo_chat) (web page)    |     **AI-Powered:Duo Chat** group with support from **Create:Editor Extensions** group     |
|    VS Code - [Chat business logic](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/tree/main/src/common/chat?ref_type=heads) (extension)     |  **Create:Editor Extensions** group      |
|   JetBrains - [Chat Webview](https://gitlab.com/gitlab-org/editor-extensions/gitlab-jetbrains-plugin/-/tree/main/webview) (web page) |   **AI-Powered:Duo Chat** group with support from **Create:Editor Extensions** group      |
| JetBrains - [Chat business logic](https://gitlab.com/gitlab-org/editor-extensions/gitlab-jetbrains-plugin/-/tree/main/src/main/kotlin/com/gitlab/plugin/chat) (plugin) | **Create:Editor Extensions** group  |

## Process of notifying others

* When a team starts working on a feature:
  * PM/EM will notify **Create:Editor Extensions** group's PM/EM - this allows the team to forecast the capacity necessary to support in the near future
* When the UI of the feature is ready:
  * the authoring team opens an integration MR
    * The **Create:Editor Extensions** group will assign an engineer to take over the MR and complete integration
