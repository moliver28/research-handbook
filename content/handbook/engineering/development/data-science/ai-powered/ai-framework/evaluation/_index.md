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

By following these steps, you can effectively evaluate and optimize AI-powered chat features using GitLab's AI evaluation datasets and LangSmith, ensuring high-quality and accurate responses. For more detailed information, refer to the [LangSmith documentation](https://langsmith.docs/) and the [GitLab AI Evaluation Data repository](https://gitlab.com/gitlab-org/ai-powered/ai-framework/ai-evaluation-data).