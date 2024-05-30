---
title: AI Framework Group - Eval like I am 5
description: "The AI Framework group is focused on how to support other product groups at GitLab with the AI Abstraction Layer, and GitLab AI feature development."
aliases: /handbook/engineering/development/data-science/ai-framework
---

## Creating and uploading a dataset

Creating a dataset tailored to your evaluation needs is a critical step in ensuring accurate and meaningful assessments of your AI models. Here’s how to create and upload a dataset for use with LangSmith.

#### Create Your Dataset

- Define Your Data Requirements:
  - Identify the types of inputs and expected outputs you need for evaluation. For a chat model, this might include various questions and their corresponding expected responses.
- Prepare Your Data
  - Create a CSV or JSON file containing your data. Each entry should include the necessary fields such as input questions and expected answers.

#### Example CSV Structure

```csv
question,expected_answer
"What's your name?","My name is GitLab Bot."
"How can I reset my password?","You can reset your password by going to the login page and clicking on 'Forgot password?'."
"What is the weather today?","I'm sorry, I can't provide weather updates."
"Tell me a joke.","Why did the scarecrow win an award? Because he was outstanding in his field!"
"Explain quantum physics.","Quantum physics is the branch of physics relating to the very small."
```

#### Example JSON Structure

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

#### Upload Your Dataset to LangSmith

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

#### How to decide how to create a dataset

...TODO

#### Current list of datasets

You can find the current list of ongoing datasets [here](https://gitlab.com/groups/gitlab-org/modelops/ai-model-validation-and-research/-/epics/6#data-sets--use-cases). If the dataset you need is not already in the LangSmith Project, please upload it to use it.