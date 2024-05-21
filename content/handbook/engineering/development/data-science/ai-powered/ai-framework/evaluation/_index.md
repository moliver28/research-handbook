---
title: AI Framework Group
description: "The AI Framework group is focused on how to support other product groups at GitLab with the AI Abstraction Layer, and GitLab AI feature development."
aliases: /handbook/engineering/development/data-science/ai-framework
---

# Step-by-Step Guide to Evaluate Chat Using GitLab AI Evaluation Data and LangSmith

This guide provides a comprehensive example of how to evaluate AI-powered chat features using the AI evaluation datasets available in the GitLab repository and LangSmith for prompt evaluation. It combines the instructions from the provided dataset with steps from the demonstration video.

## Prerequisites

- LangSmith Account: Ensure you have a LangSmith account and API key.
- GitLab Repository Access: Ensure you have access to the [GitLab AI Evaluation Data](https://gitlab.com/gitlab-org/ai-powered/ai-framework/ai-evaluation-data) repository.
- Python Environment: Set up a Python environment with necessary libraries (langsmith, json, matplotlib).

## Step 1: Access the Dataset

First, clone the repository to get the necessary data.

```sh
GIT_LFS_SKIP_SMUDGE=1 git clone https://gitlab.com/gitlab-org/ai-powered/ai-framework/ai-evaluation-data.git
cd ai-evaluation-data
git reset --hard <SHA1>
git lfs pull
Replace <SHA1> with the specific commit SHA1 if you need a concrete revision of the dataset.
```

### Step 2: Understand the Dataset Structure

The Duo Chat dataset consists of two main parts:

- Context Dataset: Contains descriptions of GitLab resources.
- Queries Dataset: Contains user queries submitted to Duo Chat.

Example structure:

**Context Dataset:**

- context_id: STRING (UUID)
- context: STRING (JSON describing a GitLab resource)
- context_type: STRING (either issue or epic)
- referer_url: STRING, NULLABLE

**Queries Dataset:**

- query_id: STRING (UUID)
- query: STRING (User query)
- context: STRING (JSON describing a GitLab resource)
- resource_id: INT, NULLABLE
- resource_type: STRING (either issue or epic)
- referer_url: STRING, NULLABLE

### Step 3: Set Up LangSmith for Evaluation

Initialize LangSmith: Ensure you have LangSmith set up and accessible.

Load the Dataset: Use the data/duo_chat/v1/jsonl file to load the context and queries datasets.

```python
import json
import os

# Define paths to the dataset
context_dataset_path = 'data/duo_chat/v1/jsonl/context.jsonl'
queries_dataset_path = 'data/duo_chat/v1/jsonl/queries.jsonl'

# Load context dataset
with open(context_dataset_path, 'r') as f:
    context_data = [json.loads(line) for line in f]

# Load queries dataset
with open(queries_dataset_path, 'r') as f:
    queries_data = [json.loads(line) for line in f]

print(f"Loaded {len(context_data)} context entries and {len(queries_data)} queries.")
```

### Step 4: Evaluate Chat Prompts Using LangSmith

Create a Prompt Evaluation Function: This function will evaluate the chat responses based on the queries and contexts provided.

```python
from langsmith import LangSmithClient

# Initialize LangSmith client
client = LangSmithClient(api_key='your_api_key')

# Define evaluation function
def evaluate_prompt(query, context):
    prompt = f"Context: {context}\nUser Query: {query}\n"
    response = client.run_prompt(prompt)
    return response

# Example evaluation
for query_entry in queries_data:
    query = query_entry['query']
    context_id = query_entry['context']
    context_entry = next((item for item in context_data if item['context_id'] == context_id), None)
    if context_entry:
        context = context_entry['context']
        response = evaluate_prompt(query, context)
        print(f"Query: {query}\nResponse: {response}\n")

```

Run Batch Evaluations: Evaluate multiple prompts in a batch and collect the results.

```python
results = []

for query_entry in queries_data:
    query = query_entry['query']
    context_id = query_entry['context']
    context_entry = next((item for item in context_data if item['context_id'] == context_id), None)
    if context_entry:
        context = context_entry['context']
        response = evaluate_prompt(query, context)
        results.append({
            'query': query,
            'context': context,
            'response': response
        })

# Save results for further analysis
with open('evaluation_results.json', 'w') as f:
    json.dump(results, f, indent=4)
```

### Step 5: Analyze and Report Results

Load and Analyze Results:

```python
with open('evaluation_results.json', 'r') as f:
    results = json.load(f)

# Example analysis: count correct responses
correct_responses = [res for res in results if res['response'] == 'Expected output']
accuracy = len(correct_responses) / len(results) * 100

print(f"Accuracy: {accuracy}%")
```

Generate Reports: Create visualizations or detailed reports based on the evaluation results.

```python
import matplotlib.pyplot as plt

# Example: plot accuracy
labels = ['Correct', 'Incorrect']
sizes = [len(correct_responses), len(results) - len(correct_responses)]

fig1, ax1 = plt.subplots()
ax1.pie(sizes, labels=labels, autopct='%1.1f%%', startangle=90)
ax1.axis('equal')  # Equal aspect ratio ensures that pie is drawn as a circle.

plt.title('Prompt Evaluation Accuracy')
plt.show()
```

## Using LangSmith for Prompt Testing

Edit Prompts in Playground:

- Navigate to LangSmith's playground.
- Load a prompt.
- Configure model settings.
- Test different variations of the prompt.

Dataset Evaluation:

- Create a dataset with multiple questions.
- Example questions: "Summarize this issue", "How do I show an alert box in JavaScript?"

Run Experiments:

- Run the dataset in parallel.
- Use evaluators to test for correctness.

```python
# Example evaluation function
def run_experiment(dataset, evaluators):
    experiment_results = []
    for data in dataset:
        query = data['query']
        context = data['context']
        response = evaluate_prompt(query, context)
        result = {
            'query': query,
            'context': context,
            'response': response,
            'evaluators': []
        }
        for evaluator in evaluators:
            evaluation_result = evaluator.evaluate(response)
            result['evaluators'].append(evaluation_result)
        experiment_results.append(result)
    return experiment_results

# Define evaluators
class CorrectnessEvaluator:
    def evaluate(self, response):
        # Implement correctness evaluation logic
        return {'correct': response == 'Expected output'}

# Example dataset
dataset = [{'query': 'Summarize this issue', 'context': '...'}, {'query': 'How do I show an alert box in JavaScript?', 'context': '...'}]

# Run experiment
experiment_results = run_experiment(dataset, [CorrectnessEvaluator()])

# Analyze results
correct_responses = [res for res in experiment_results if all(e['correct'] for e in res['evaluators'])]
accuracy = len(correct_responses) / len(experiment_results) * 100
print(f"Experiment Accuracy: {accuracy}%")
```

Optimize Prompts:

- Compare different commits of prompts.
- Analyze correctness, speed, and cost.
- Use charts for error rates, latencies, token cost, and completions.
- Integrating LangSmith Tracing for Debugging

Activate Tracing:

- Run local experiments with tracing enabled.
- Analyze tracing data for failed evaluations to identify issues.

```python
# Enable tracing in LangSmith
client.enable_tracing()

# Example prompt evaluation with tracing
response = client.run_prompt(prompt)
tracing_data = client.get_tracing_data()

# Analyze tracing data
failed_traces = [trace for trace in tracing_data if trace['status'] == 'failed']
for trace in failed_traces:
    print(f"Trace ID: {trace['id']}, Error: {trace['error']}")
```

## Full Example 

```python
import json
import requests
import itertools
from datetime import datetime, timezone
from typing import List, Dict, Any, Tuple

# Replace 'your_langsmith_api_key' with your actual LangSmith API key
LANGSMITH_API_KEY = 'your_langsmith_api_key'

class LangSmithClient:
    def __init__(self, api_key: str):
        self.api_key = api_key
        self.base_url = "https://api.langsmith.com/v1/"

    def run_prompt(self, prompt: str) -> str:
        headers = {
            'Authorization': f'Bearer {self.api_key}',
            'Content-Type': 'application/json'
        }
        data = {
            'prompt': prompt,
            'max_tokens': 150
        }
        response = requests.post(f"{self.base_url}completions", headers=headers, json=data)
        response_data = response.json()
        return response_data['choices'][0]['text'] if 'choices' in response_data else response_data

client = LangSmithClient(api_key=LANGSMITH_API_KEY)

def evaluate_prompt(query: str, context: str) -> str:
    prompt_template = f"Context: {context}\nUser Query: {query}\n"
    response = client.run_prompt(prompt_template)
    return response

def load_data(file_path: str) -> List[Dict[str, Any]]:
    with open(file_path, 'r') as file:
        return [json.loads(line) for line in file]

def independent_llm_judge(answers: List[Dict[str, Any]], models: List[str]) -> List[Dict[str, Any]]:
    results = []
    for model in models:
        for answer in answers:
            prompt = f"Evaluate the following response:\nContext: {answer['context']}\nQuery: {answer['query']}\nResponse: {answer['response']}\n"
            evaluation = client.run_prompt(prompt)
            results.append({
                'model': model,
                'query': answer['query'],
                'context': answer['context'],
                'response': answer['response'],
                'evaluation': evaluation,
                'timestamp': datetime.now(timezone.utc).isoformat()
            })
    return results

def collective_llm_judge(answers: List[Dict[str, Any]], models: List[str]) -> List[Dict[str, Any]]:
    grouped_answers = {}
    for answer in answers:
        key = (answer['context'], answer['query'])
        if key not in grouped_answers:
            grouped_answers[key] = []
        grouped_answers[key].append(answer)

    results = []
    for model in models:
        for key, group in grouped_answers.items():
            context, query = key
            combined_responses = "\n".join([f"Response from model: {a['response']}" for a in group])
            prompt = f"Evaluate the following responses collectively:\nContext: {context}\nQuery: {query}\n{combined_responses}\n"
            evaluation = client.run_prompt(prompt)
            results.append({
                'model': model,
                'query': query,
                'context': context,
                'responses': combined_responses,
                'evaluation': evaluation,
                'timestamp': datetime.now(timezone.utc).isoformat()
            })
    return results

def similarity_score(answers: List[Dict[str, Any]], models: List[str]) -> List[Dict[str, Any]]:
    results = []
    for (a1, a2) in itertools.combinations(answers, 2):
        prompt = f"Compare the similarity between the following responses:\nContext: {a1['context']}\nQuery: {a1['query']}\nResponse 1: {a1['response']}\nResponse 2: {a2['response']}\n"
        similarity = client.run_prompt(prompt)
        results.append({
            'model_1': a1['model'],
            'model_2': a2['model'],
            'query': a1['query'],
            'context': a1['context'],
            'response_1': a1['response'],
            'response_2': a2['response'],
            'similarity': similarity,
            'timestamp': datetime.now(timezone.utc).isoformat()
        })
    return results

context_data = load_data('data/duo_chat/v1/jsonl/context.jsonl')
queries_data = load_data('data/duo_chat/v1/jsonl/queries.jsonl')
models = ['text-davinci-002', 'curie', 'babbage']

answers = []
for query_entry in queries_data:
    query = query_entry['query']
    context_id = query_entry['context']
    context_entry = next((item for item in context_data if item['context_id'] == context_id), None)
    if context_entry:
        context = context_entry['context']
        response = evaluate_prompt(query, context)
        answers.append({
            'query': query,
            'context': context,
            'response': response
        })

independent_results = independent_llm_judge(answers, models)
collective_results = collective_llm_judge(answers, models)
similarity_results = similarity_score(answers, models)

results = {
    'independent_llm_judge': independent_results,
    'collective_llm_judge': collective_results,
    'similarity_score': similarity_results
}

with open('evaluation_results.json', 'w') as file:
    json.dump(results, file, indent=4)

print("Evaluation complete. Results saved to evaluation_results.json")
```

- **LangSmithClient Class**: Handles the API interaction with LangSmith to run prompts.
- `evaluate_prompt` Function: Formats a query and its context into a prompt and gets the response from LangSmith.
- **Data Loading: Reads and parses JSONL files containing context and query data.
- **Evaluation Functions:
  - `independent_llm_judge`: Evaluates answers using independent LLMs for correctness, readability, and comprehensiveness.
  - `collective_llm_judge`: Evaluates answers collectively using a single prompt.
  - `similarity_score`: Compares the similarity between pairs of responses.
- **Evaluation Loop**: Iterates over queries, finds corresponding contexts, evaluates prompts, and stores results.
- **Saving Results**: Saves the evaluation results to a JSON file.

## Use with GDK

- Setting Up GDK: Ensure your GDK is set up and running.
- Updating Prompts: Modify prompts in the local GDK instance.
- Running Evaluations: Create a script to run evaluations locally.

### Setting Up GDK

Follow the instructions on the [GitLab Development Kit](https://gitlab.com/gitlab-org/gitlab-development-kit) repository to get your local instance up and running.

### Update Prompts

Ensure your prompts are updated and stored in your local GitLab instance. For example, you can update the prompt template in the [executor.rb](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/lib/gitlab/llm/chain/tools/issue_identifier/executor.rb?ref_type=heads) file.

### Running Evaluations

Create a script to evaluate prompts against your local instance. This script will not use an internal API but will instead simulate the prompt evaluations locally.

Run the script to evaluate the prompts and optimize the chat responses.

```bash
pip install requests
python evaluate_prompts.py
```

#### Script

```python
import json
import requests
import itertools
from datetime import datetime, timezone
from typing import List, Dict, Any, Tuple

# Replace 'your_gdk_api_key' with your actual GDK API key
GDK_API_KEY = 'your_gdk_api_key'
GDK_URL = 'http://localhost:3000/api/v4/'  # Adjust the port if necessary

class GDKClient:
    def __init__(self, api_key: str, base_url: str):
        self.api_key = api_key
        self.base_url = base_url

    def run_prompt(self, prompt: str) -> str:
        headers = {
            'PRIVATE-TOKEN': self.api_key,
            'Content-Type': 'application/json'
        }
        data = {
            'prompt': prompt,
            'max_tokens': 150
        }
        response = requests.post(f"{self.base_url}ai/complete", headers=headers, json=data)
        response_data = response.json()
        return response_data['choices'][0]['text'] if 'choices' in response_data else response_data

client = GDKClient(api_key=GDK_API_KEY, base_url=GDK_URL)

def evaluate_prompt(query: str, context: str) -> str:
    prompt_template = f"""Answer the question as accurately as you can.

    You have access only to the following tools:
    <tools>
    %<tools_definitions>s
    </tools>
    Consider every tool before making a decision.
    Ensure that your answer is accurate and contains only information directly supported by the information retrieved using provided tools.

    You must always use the following format:
    Question: the input question you must answer
    Thought: you should always think about what to do
    Action: the action to take, should be one tool from this list or a direct answer (then use DirectAnswer as action): [%<tool_names>s]
    Action Input: the input to the action needs to be provided for every action that uses a tool
    Observation: the result of the actions. If the Action is DirectAnswer never write an Observation, but remember that you're still GitLab Assistant.

    ... (this Thought/Action/Action Input/Observation sequence can repeat N times)

    Thought: I know the final answer.
    Final Answer: the final answer to the original input question.

    When concluding your response, provide the final answer as "Final Answer:" as soon as the answer is recognized.
    %<current_code>s
    If no tool is needed, give a final answer with "Action: DirectAnswer" for the Action parameter and skip writing an Observation.

    You have access to the following GitLab resources: %<resources>s.
    You also have access to all information that can be helpful to someone working in software development of any kind.
    At the moment, you do not have access to the following GitLab resources: Merge Requests, Pipelines, Vulnerabilities.
    When there is no available tool or resource is not available to accurately answer the question you must tell it to the user using phrase: "The question you are asking requires data that is not available to GitLab Duo Chat. Please share your feedback below.".

    Avoid asking for more details if you cannot provide an answer anyway.
    Ask user to leave feedback.

    %<current_resource>s
    Begin!

    Question: {query}
    """
    response = client.run_prompt(prompt_template)
    return response

def load_data(file_path: str) -> List[Dict[str, Any]]:
    with open(file_path, 'r') as file:
        return [json.loads(line) for line in file]

def independent_llm_judge(answers: List[Dict[str, Any]], models: List[str]) -> List[Dict[str, Any]]:
    results = []
    for model in models:
        for answer in answers:
            prompt = f"Evaluate the following response:\nContext: {answer['context']}\nQuery: {answer['query']}\nResponse: {answer['response']}\n"
            evaluation = client.run_prompt(prompt)
            results.append({
                'model': model,
                'query': answer['query'],
                'context': answer['context'],
                'response': answer['response'],
                'evaluation': evaluation,
                'timestamp': datetime.now(timezone.utc).isoformat()
            })
    return results

def collective_llm_judge(answers: List[Dict[str, Any]], models: List[str]) -> List[Dict[str, Any]]:
    grouped_answers = {}
    for answer in answers:
        key = (answer['context'], answer['query'])
        if key not in grouped_answers:
            grouped_answers[key] = []
        grouped_answers[key].append(answer)

    results = []
    for model in models:
        for key, group in grouped_answers.items():
            context, query = key
            combined_responses = "\n".join([f"Response from model: {a['response']}" for a in group])
            prompt = f"Evaluate the following responses collectively:\nContext: {context}\nQuery: {query}\n{combined_responses}\n"
            evaluation = client.run_prompt(prompt)
            results.append({
                'model': model,
                'query': query,
                'context': context,
                'responses': combined_responses,
                'evaluation': evaluation,
                'timestamp': datetime.now(timezone.utc).isoformat()
            })
    return results

def similarity_score(answers: List[Dict[str, Any]], models: List[str]) -> List[Dict[str, Any]]:
    def calculate_similarity_score(answer1: str, answer2: str) -> float:
        # Dummy similarity calculation for example purposes
        return 0.9

    results = []
    for answer1, answer2 in itertools.combinations(answers, 2):
        score = calculate_similarity_score(answer1['response'], answer2['response'])
        results.append({
            'query': answer1['query'],
            'context': answer1['context'],
            'model_1': answer1['model'],
            'response_1': answer1['response'],
            'model_2': answer2['model'],
            'response_2': answer2['response'],
            'similarity_score': score,
            'timestamp': datetime.now(timezone.utc).isoformat()
        })
    return results

# Example usage
if __name__ == "__main__":
    test_data_path = 'path_to_your_test_data.json'
    test_data = load_data(test_data_path)
    models = ['text-davinci-003', 'text-curie-001']

    independent_results = independent_llm_judge(test_data, models)
    collective_results = collective_llm_judge(test_data, models)
    similarity_results = similarity_score(test_data, models)

    print(json.dumps(independent_results, indent=2))
    print(json.dumps(collective_results, indent=2))
    print(json.dumps(similarity_results, indent=2))
```

#### Notes

- Ensure that your GDK instance has the necessary endpoints to handle prompt evaluations. The provided script assumes an endpoint similar to `/api/v4/ai/complete` exists.
- Update the `PROMPT_TEMPLATE` variable to reflect the actual prompt templates used in your local GDK instance.
- Models: Adjust the list of models to match those you want to evaluate with.
- Data Paths: Ensure paths to data files are correctly set.

By following these steps, you can effectively evaluate and optimize AI-powered chat features using GitLab's AI evaluation datasets and LangSmith, ensuring high-quality and accurate responses. For more detailed information, refer to the [LangSmith documentation](https://langsmith.docs/) and the [GitLab AI Evaluation Data repository](https://gitlab.com/gitlab-org/ai-powered/ai-framework/ai-evaluation-data).