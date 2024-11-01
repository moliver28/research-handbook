---

title: Gitlab Duo Chat
category: GitLab.com
subcategory: Gitlab Duo
description: "Workflow for tickets related to GitLab Duo Chat"
---

## Overview

This workflow covers all tickets related to problems and/or questions about GitLab Duo - Code Suggestions.

## Possible questions and responses

1. If a customer is dissatisfied with the quality of the answers provided, such as inaccuracies, incompleteness, offensiveness, comprehensibility, lack of helpfulness, errors, etc., then respond by using the duo_chat_accuracy macro, which includes:
   - a reference to our model accuracy and quality [doc](https://docs.gitlab.com/ee/user/ai_features.html#model-accuracy-and-quality )
   - this text:
     > Please use the feedback form in Duo Chat to help our team improve Duo Chat. Include as much detail as you can about your question, the context in which you were asking the question, the response, and how the response could be better. Please keep in mind that the GitLab team cannot see your question, nor the context, nor the answer unless you provide it via the feedback. Depending on your goals you may achieve better results when using our predefined questions that you can reach via various UI elements (e.g. the :question: in the file viewer in GitLab, or the context menu in the IDE, or the slash commands in the IDE).

1. If a customer is expressing concern about a perceived delay in response time, then respond by using the duo_chat_response_time macro, which includes this text:
   > I am sorry that you are experiencing poor response times from Duo Chat. GitLab is aware that responses may be slow sometimes. Depending on your goals you may achieve quicker results when using our predefined questions that you can reach via various UI elements (e.g. the :question: in the file viewer in GitLab, or the context menu in the IDE, or the slash commands in the IDE). Please help our product team to become aware of slow answers every time they occur by using the feedback form in Duo Chat itself. The product team can then investigate for possible bugs.

