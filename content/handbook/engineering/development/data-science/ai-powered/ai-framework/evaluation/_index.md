---
title: AI Framework Group - Evalus
description: "The AI Framework group is focused on how to support other product groups at GitLab with the AI Abstraction Layer, and GitLab AI feature development."
aliases: /handbook/engineering/development/data-science/ai-framework
---

# Step-by-Step Guide for Conducting Evaluations using LangSmith

This guide is designed to help Backend and Frontend developers at GitLab conduct evaluations using LangSmith, even if you are not familiar with Python. The process is broken down into easy-to-follow steps with detailed explanations, examples, and links for further context.

## Prerequisites

- Basic Tools and Setup:
  - Ensure you have a GitLab account and access to the relevant repositories.
  - Set up the GitLab Development Kit (GDK). Follow the [GDK setup guide](https://gitlab.com/gitlab-org/gitlab-development-kit).
- Python Installation:
  - Make sure Python is installed on your machine. You can download and install it from the [official Python website](https://www.python.org/downloads/).
-	API Keys and Tokens:
  - Obtain the necessary API keys for LangSmith and OpenAI. You can get these from `@oregand`, `@m_gill` or `@tzallmann`. You can also reach out to the #g_ai_framework slack channel and ask. An account will be created for you under https://smith.langchain.com.
  - Ensure you have a GitLab private token with the necessary permissions. You can generate one from your GitLab profile settings under [“Access Tokens”](https://gitlab.com/-/user_settings/personal_access_tokens). Make sure it has `api` and `ai_features` checked.

## Step 1: Setting Up Your Environment

### Install Python and Necessary Libraries:

Ensure Python 3 is installed on your machine. If not, download and install it from the official [Python website](https://www.python.org/downloads/).

### Install Required Python Libraries:

Open your terminal and install the following libraries:

```bash
pip install requests langsmith langchain langchain-openai
```

### Create the Evaluation Directory

Navigate to your project directory and create a new folder called `evaluation_scripts`. Inside this folder, create subfolders for each feature you plan to evaluate, such as `chat` and `code_suggestions`:

```bash
mkdir -p evaluation_scripts/chat evaluation_scripts/code_suggestions
cd evaluation_scripts
```

### Set Environment Variables

In the `evaluation_scripts` directory  create a `.env` file and add the following lines. This file stores your environment variables securely. Leave the `OPENAI_API_KEY` blank.

```bash
LANGCHAIN_TRACING_V2=true
LANGCHAIN_ENDPOINT=https://api.smith.langchain.com
LANGCHAIN_API_KEY=your_langsmith_api_key
OPENAI_API_KEY=''
GITLAB_PRIVATE_TOKEN=your_gitlab_private_token
```

## Step 2: Create and upload your dataset

Creating a dataset tailored to your evaluation needs is a critical step in ensuring accurate and meaningful assessments of your AI models. Here’s how to create and upload a dataset for use with LangSmith.

### Create Your Dataset

- Define Your Data Requirements:
  - Identify the types of inputs and expected outputs you need for evaluation. For a chat model, this might include various questions and their corresponding expected responses.
- Prepare Your Data
  -	Create a CSV or JSON file containing your data. Each entry should include the necessary fields such as input questions and expected answers.

### Example CSV Structure

```csv
question,expected_answer
"What's your name?","My name is GitLab Bot."
"How can I reset my password?","You can reset your password by going to the login page and clicking on 'Forgot password?'."
"What is the weather today?","I'm sorry, I can't provide weather updates."
"Tell me a joke.","Why did the scarecrow win an award? Because he was outstanding in his field!"
"Explain quantum physics.","Quantum physics is the branch of physics relating to the very small."
```

### Example JSON Structure

```json
[
  {
    "question": "What's your name?",
    "expected_answer": "My name is GitLab Bot."
  },
  {
    "question": "How can I reset my password?",
    "expected_answer": "You can reset your password by going to the login page and clicking on 'Forgot password?'."
  },
  {
    "question": "What is the weather today?",
    "expected_answer": "I'm sorry, I can't provide weather updates."
  },
  {
    "question": "Tell me a joke.",
    "expected_answer": "Why did the scarecrow win an award? Because he was outstanding in his field!"
  },
  {
    "question": "Explain quantum physics.",
    "expected_answer": "Quantum physics is the branch of physics relating to the very small."
  }
]
```

### Upload Your Dataset to LangSmith

Once your dataset is prepared, follow these steps to upload it to LangSmith:

- Log In to LangSmith:
  - Visit the LangSmith website at `https://smith.langchain.com` and log in with your credentials.
- Navigate to the Datasets Section:
  - In the LangSmith dashboard, locate and click on the “Datasets” section.
- Upload the Dataset:
  - Click on the “Upload Dataset” button.
  - Choose your CSV or JSON file and upload it. Ensure you provide a meaningful name and description for your dataset.
- Verify the Upload:
  - After uploading, verify that the dataset appears in your list of datasets and that the entries are correctly formatted.

Once your dataset is uploaded to LangSmith, you can reference it in your evaluation scripts.

### How to decide how to create a dataset

...TDOD

### Current list of datasets

...TODO

## Step 3: Create a Basic Evaluation Script

### Write the Evaluation Script

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

### Directory Structure

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

### Running the Script Locally

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

2. Question: "How can I reset my password?"
   Expected Answer: "You can reset your password by going to the login page and clicking on 'Forgot password?'."
   Model Answer: "You can reset your password by going to the login page and clicking on 'Forgot password?'."
   Result: PASS
   Evaluation Metrics:
     - Accuracy: 100%
     - Latency: 300ms
     - Token Usage: 25 tokens

3. Question: "What is the weather today?"
   Expected Answer: "I'm sorry, I can't provide weather updates."
   Model Answer: "I'm sorry, I can't provide weather updates."
   Result: PASS
   Evaluation Metrics:
     - Accuracy: 100%
     - Latency: 220ms
     - Token Usage: 12 tokens

4. Question: "Tell me a joke."
   Expected Answer: "Why did the scarecrow win an award? Because he was outstanding in his field!"
   Model Answer: "Why did the scarecrow win an award? Because he was outstanding in his field!"
   Result: PASS
   Evaluation Metrics:
     - Accuracy: 100%
     - Latency: 260ms
     - Token Usage: 20 tokens

5. Question: "Explain quantum physics."
   Expected Answer: "Quantum physics is the branch of physics relating to the very small."
   Model Answer: "Quantum physics is the branch of physics relating to the very small."
   Result: PASS
   Evaluation Metrics:
     - Accuracy: 100%
     - Latency: 400ms
     - Token Usage: 30 tokens

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

Question: "How can I reset my password?"
Trace ID: def456
Latency: 300ms
Tokens Used: 25
----------------------------------------

Question: "What is the weather today?"
Trace ID: ghi789
Latency: 220ms
Tokens Used: 12
----------------------------------------

Question: "Tell me a joke."
Trace ID: jkl012
Latency: 260ms
Tokens Used: 20
----------------------------------------

Question: "Explain quantum physics."
Trace ID: mno345
Latency: 400ms
Tokens Used: 30
----------------------------------------

Evaluation completed successfully.
```

### Making Changes to Prompts and Rerunning the Evaluation

To evaluate changes to prompts in the GDK, you can follow these steps:

- Locate the Prompt File:
  - The prompts for the chat model are located in the GitLab repository. For example, the file might be at [base.rb](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/lib/gitlab/llm/chain/agents/zero_shot/prompts/base.rb), etc.
-	Modify the Prompt:
  - Open the [base.rb](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/lib/gitlab/llm/chain/agents/zero_shot/prompts/base.rb) file and make your changes to the prompt. For instance, you might modify the `base_prompt` method to improve the clarity and specificity of the system prompt, which can lead to better model performance. Improving the clarity of prompts in language models like those used in Chat can significantly enhance the performance and reliability of the model.

#### Example of the original base_prompt method:

```ruby
module Gitlab
  module Llm
    module Chain
      module Agents
        module ZeroShot
          module Prompts
            class Base
              def self.base_prompt(options)
                system_prompt = options[:system_prompt] || Utils::Prompt.default_system_prompt
                zero_shot_prompt = format(options[:zero_shot_prompt], options)
                Utils::Prompt.role_conversation([
                  Utils::Prompt.as_system(system_prompt, zero_shot_prompt),
                  Utils::Prompt.as_user(options[:user_input]),
                  Utils::Prompt.as_assistant(options[:agent_scratchpad], "Thought:")
                ])
              end
            end
          end
        end
      end
    end
  end
end
```

#### Example of a modified base_prompt method to improve clarity:

```ruby
module Gitlab
  module Llm
    module Chain
      module Agents
        module ZeroShot
          module Prompts
            class Base
              def self.base_prompt(options)
                system_prompt = options[:system_prompt] || "You are a helpful assistant knowledgeable about GitLab's features and services. Answer questions clearly and concisely."
                zero_shot_prompt = format(options[:zero_shot_prompt], options)
                Utils::Prompt.role_conversation([
                  Utils::Prompt.as_system(system_prompt, zero_shot_prompt),
                  Utils::Prompt.as_user(options[:user_input]),
                  Utils::Prompt.as_assistant(options[:agent_scratchpad], "Response:")
                ])
              end
            end
          end
        end
      end
    end
  end
end
```

#### Rerun the Evaluation

With the prompt updated, rerun the evaluation script to see how the changes affect the model’s performance. Navigate back to your `evaluation_scripts/chat` directory and run:

```bash
python evaluate.py
```

#### Expected Benefits of the Improved Prompt

1. By explicitly stating that the assistant should be knowledgeable about GitLab’s features and services and provide clear and concise answers, the model has a better understanding of the expected output.
2. The additional context helps the model generate more accurate responses, directly addressing user queries with relevant information.
3. Users receive more precise and helpful responses, enhancing their overall experience with the chat system.
4. With clearer instructions, the model can process queries more efficiently, potentially reducing latency and token usage.

## Step 4: Integrate with GitLab CI/CD

Using a CI/CD pipeline for evaluations provides several key benefits compared to running evaluations solely on your local machine.

### Create a GitLab CI/CD Pipeline

In your project repository, create or update your .gitlab-ci.yml file with the following content:

```bash
stages:
  - evaluate

evaluate_langsmith:
  stage: evaluate
  script:
    - pip install requests langsmith langchain
    - python evaluate.py
```

### Commit and Push Changes

```bash
git add .gitlab-ci.yml evaluate.py
git commit -m "Add LangSmith evaluation script and CI/CD pipeline"
git push origin main
```

### Monitor the Pipeline 

Navigate to your GitLab project and monitor the CI/CD pipeline. Ensure the job evaluate_langsmith runs successfully.

## Step 5: Analyzing the Results

- Review Output:
  - Check the output of your evaluation job in the GitLab CI/CD pipeline. It should print the results of the evaluation, showing the performance and any issues identified.
- Trace and Debug:
  - If there are errors or unexpected results, use the tracing functionality provided by LangSmith. Refer to the LangSmith documentation for detailed guidance on tracing and debugging.

## Step 6: Good Evaluation Heuristics

- Choosing Evaluation Metrics:
  - Accuracy: Measure how often the model’s predictions are correct.
  - Precision and Recall: Evaluate the balance between correctly identified positive results and the number of actual positives.
  - F1 Score: Combines precision and recall into a single metric.
  - Latency: Measure the time taken to produce a response.
  - Token Usage: Evaluate the efficiency of the model in terms of token consumption.
  - Conciseness and Coherence: Assess the clarity and logical consistency of the model’s output.
- Designing Evaluations:
  - Baseline Comparisons: Compare new models or prompts against a baseline to determine improvements.
  - Side-by-Side Evaluations: Conduct evaluations that compare different models, prompts, or configurations directly against each other.
  - Custom Evaluators: Implement custom evaluation functions to test specific aspects of your model’s performance relevant to your application’s needs.
- Best Practices:
  - Start Small: Begin with a small, representative dataset to quickly iterate and refine your models and prompts.
  - Automate: Use CI/CD pipelines to automate the evaluation process, ensuring consistent and repeatable results.
  - Traceability: Use tracing tools to understand why certain results occurred, making debugging and improvement more straightforward.

## Additional Resources

- [LangSmith Evaluation Cookbook](https://github.com/langchain-ai/langsmith-cookbook/blob/main/README.md#testing--evaluation): Contains various evaluation scenarios and examples.
- [GitLab Duo Chat Documentation](https://docs.gitlab.com/ee/development/ai_features/duo_chat.html): Comprehensive guide on setting up and using LangSmith for chat evaluations.
- [Prompt and AI Feature Evaluation Setup and Workflow](https://gitlab.com/groups/gitlab-org/-/epics/13952): Details on the overall workflow and setup for evaluations.

By following these steps, you can effectively conduct evaluations using LangSmith, even with minimal Python knowledge. For any issues or further assistance, refer to the provided documentation links or reach out to your team leads.
