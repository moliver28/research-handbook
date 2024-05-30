---
title: AI Framework Group - Eval like I am 5
description: "The AI Framework group is focused on how to support other product groups at GitLab with the AI Abstraction Layer, and GitLab AI feature development."
aliases: /handbook/engineering/development/data-science/ai-framework
---

## Step-by-Step Guide for Conducting Evaluations using LangSmith at GitLab - ELI5 Evals

This guide is designed to help Backend and Frontend developers at GitLab conduct evaluations using LangSmith, even if you are not familiar with Python. The process is broken down into easy-to-follow steps with detailed explanations, examples, and links for further context.

### Prerequisites

- Basic Tools and Setup:
  - Ensure you have a GitLab account and access to the relevant repositories.
  - Set up the GitLab Development Kit (GDK). Follow the [GDK setup guide](https://gitlab.com/gitlab-org/gitlab-development-kit).
- Python Installation:
  - Make sure Python is installed on your machine. You can download and install it from the [official Python website](https://www.python.org/downloads/).
- API Keys and Tokens:
  - Obtain the necessary API keys for LangSmith and Anthropic. You can get these from `@oregand`, `@m_gill` or `@tzallmann`. You can also reach out to the `#g_ai_framework` slack channel and ask. An account will be created for you under `https://smith.langchain.com`.
  - Ensure you have a GitLab private token with the necessary permissions. You can generate one from your GitLab profile settings under [“Access Tokens”](https://gitlab.com/-/user_settings/personal_access_tokens). Make sure it has `api` and `ai_features` checked.

### Step 1: Setting Up Your Environment

#### Install Python and Necessary Libraries

Ensure Python 3 is installed on your machine. If not, download and install it from the official [Python website](https://www.python.org/downloads/).

#### Install Required Python Libraries

Open your terminal and install the following libraries

```bash
pip install requests langsmith langchain langchain-openai python-dotenv
```

#### Create the Evaluation Directory

Navigate to your project directory and create a new folder called `evaluation_scripts`. Inside this folder, create subfolders for each feature you plan to evaluate, such as `chat` and `code_suggestions`:

```bash
mkdir -p evaluation_scripts/chat evaluation_scripts/code_suggestions
cd evaluation_scripts
```

#### Set Environment Variables

In the `evaluation_scripts` directory  create a `.env` file and add the following lines. This file stores your environment variables securely. Leave the `OPENAI_API_KEY` blank.

```bash
LANGCHAIN_TRACING_V2=true
LANGCHAIN_ENDPOINT="https://api.smith.langchain.com"
LANGCHAIN_API_KEY="your_langsmith_api_key"
LANGCHAIN_PROJECT="26a248f8-d774-467d-860f-047f99a8e8b5"
OPENAI_API_KEY=""
GITLAB_PRIVATE_TOKEN="your_gitlab_private_token"
```

### Step 2: Create and upload your dataset

* [See our dataset guide here](./datasets/)

The goal would be to use an exisitng dataset, or create and upload a new one specific to your evaluations. 

### Step 3: Create a Basic Evaluation Script

#### Write the Evaluation Script

In the `evaluation_scripts/chat` directory, create a new file named `evaluate.py`.

```python
import os
import requests
from langsmith import traceable, wrappers
from langsmith.evaluation import evaluate
from dotenv import load_dotenv

load_dotenv()  # Load environment variables from .env file

@traceable
def get_chat_answer(question):
    base_url = 'http://localhost:3000'
    url = f"{base_url}/api/v4/chat/completions"
    headers = {
        "Content-Type": "application/json",
        "PRIVATE-TOKEN": os.getenv("GITLAB_PRIVATE_TOKEN"),
    }
    payload = {
        "content": question
    }
    response = requests.post(url, json=payload, headers=headers)
    if response.status_code == 200:
        return response.json()
    else:
        raise Exception(f"Error: {response.status_code} - {response.text}")

def main():
    chain_results = evaluate(
        lambda inputs: get_chat_answer(inputs["question"]),
        # Replace "duo_chat_questions_0shot" with the name of your uploaded dataset
        data="duo_chat_questions_0shot",
        evaluators=["oshot_choice"],
        experiment_prefix="Run Small Duo Chat Questions on GDK",
    )
    print(chain_results)

if __name__ == "__main__":
    main()
```

**note: make sure to replace "duo_chat_questions_0shot" with the name of your uploaded dataset**

#### Directory Structure

Your project directory should look like this:

```bash
project_root/
├── evaluation_scripts/
│   ├── chat/
│   │   ├── .env
│   │   └── evaluate.py
│   ├── code_suggestions/
│   │   ├── .env
│   │   └── evaluate.py
```

#### Running the Script Locally

Make sure your GDK is running. Open a new terminal window, navigate to your GDK directory, and start it:

```bash
cd path/to/your/gdk
gdk start
```

Then, in your terminal where `evaluate.py` is located, run:

```bash
python evaluate.py
```

An example output would be:

```bash
Running evaluation for: Run Small Duo Chat Questions on GDK

----------------------------------------
Evaluation Results:
----------------------------------------

1. Question: "What's your name?"
   Expected Answer: "My name is GitLab Bot."
   Model Answer: "My name is GitLab Bot."
   Result: PASS
   Evaluation Metrics:
     - Accuracy: 100%
     - Latency: 250ms
     - Token Usage: 15 tokens

     ...

----------------------------------------
Summary:
----------------------------------------
Total Questions Evaluated: 5
Passed: 5
Failed: 0
Overall Accuracy: 100%
Average Latency: 286ms
Average Token Usage: 20.4 tokens
----------------------------------------

Trace Details:
----------------------------------------
Question: "What's your name?"
Trace ID: abc123
Latency: 250ms
Tokens Used: 15
----------------------------------------

...

Evaluation completed successfully.
```

#### Making Changes to Prompts and Rerunning the Evaluation

To evaluate changes to prompts in the GDK, you can follow these steps:

- Locate the Prompt File:
  - The prompts for the chat model are located in the GitLab repository. For example, the file might be at [base.rb](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/lib/gitlab/llm/chain/agents/zero_shot/prompts/base.rb), etc.
- Modify the Prompt:
  - Open the [base.rb](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/lib/gitlab/llm/chain/agents/zero_shot/prompts/base.rb) file and make your changes to the prompt. For instance, you might modify the `base_prompt` method to improve the clarity and specificity of the system prompt, which can lead to better model performance. Improving the clarity of prompts in language models like those used in Chat can significantly enhance the performance and reliability of the model.

###### Example of the original base_prompt method

```ruby
  system_prompt = options[:system_prompt] || Utils::Prompt.default_system_prompt
  zero_shot_prompt = format(options[:zero_shot_prompt], options)
  ...
```

###### Example of a modified base_prompt method to improve clarity

```ruby
  system_prompt = options[:system_prompt] || "You are a helpful assistant knowledgeable about GitLab's features and services. Answer questions clearly and concisely."
  zero_shot_prompt = format(options[:zero_shot_prompt], options)
  ...
```

###### Rerun the Evaluation

With the prompt updated, rerun the evaluation script to see how the changes affect the model’s performance. Navigate back to your `evaluation_scripts/chat` directory and run:

```bash
python evaluate.py
```

###### Expected Benefits of the Improved Prompt

1. By explicitly stating that the assistant should be knowledgeable about GitLab’s features and services and provide clear and concise answers, the model has a better understanding of the expected output.
2. The additional context helps the model generate more accurate responses, directly addressing user queries with relevant information.
3. Users receive more precise and helpful responses, enhancing their overall experience with the chat system.
4. With clearer instructions, the model can process queries more efficiently, potentially reducing latency and token usage.

### Step 4: Analyzing the Results

- Review Output:
  - Check the output of your evaluation job in the GitLab CI/CD pipeline. It should print the results of the evaluation, showing the performance and any issues identified.
- Trace and Debug:
  - If there are errors or unexpected results, use the tracing functionality provided by LangSmith. Refer to the LangSmith documentation for detailed guidance on tracing and debugging.

### Good Evaluation Heuristics

* [See our heuristics guide here](./heuristics/)

### Evaluating performance metrics

* [See our performance guide evaluation here](./performance/)

### Integrate with GitLab CI/CD

* [See our GitLab CI/CD guide here](./cicd/)

### Additional Resources

- [LangSmith Evaluation Cookbook](https://github.com/langchain-ai/langsmith-cookbook/blob/main/README.md#testing--evaluation): Contains various evaluation scenarios and examples.
= [LangSmith How To Guides](https://docs.smith.langchain.com/how_to_guides): Contains various how to walkthroughs.
- [GitLab Duo Chat Documentation](https://docs.gitlab.com/ee/development/ai_features/duo_chat.html): Comprehensive guide on setting up and using LangSmith for chat evaluations.
- [Prompt and AI Feature Evaluation Setup and Workflow](https://gitlab.com/groups/gitlab-org/-/epics/13952): Details on the overall workflow and setup for evaluations.

By following these steps, you can effectively conduct evaluations using LangSmith, even with minimal Python knowledge. For any issues or further assistance, refer to the provided documentation links or reach out to your team leads.
