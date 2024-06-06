---
title: LangChain Evaluators
description: "LangChain's evaluation module provides evaluators you can use as-is for common evaluation scenarios, or you can define custom ones."
aliases: /handbook/engineering/development/data-science/ai-framework
---

## LangChain Evaluators

To create a custom evaluator called `oshot_choice` in LangSmith, we need to define it as a callable function or class that LangSmith can use to evaluate your results. This evaluator will be responsible for comparing the model’s outputs to the expected outputs and determining whether they meet the desired criteria.

### Define the Evaluator Function

First, define the `oshot_choice` evaluator function. This function should take the model’s inputs and outputs as parameters and return the evaluation results.

```python
from langsmith.evaluation.evaluator import EvaluatorResult

def oshot_choice(inputs, outputs):
    """
    Custom evaluator that compares the model's output to the expected output.
    
    Parameters:
    inputs (dict): A dictionary containing the input data, including the expected answer.
    outputs (dict): A dictionary containing the model's output data.

    Returns:
    EvaluatorResult: The result of the evaluation.
    """
    expected_answer = inputs.get("expected_answer")
    model_answer = outputs.get("answer")

    if expected_answer is None or model_answer is None:
        return EvaluatorResult(
            success=False,
            score=0,
            comment="Expected answer or model answer is missing."
        )

    # Custom evaluation logic (e.g., exact match, similarity check, etc.)
    if expected_answer == model_answer:
        return EvaluatorResult(
            success=True,
            score=1,
            comment="The model's answer matches the expected answer."
        )
    else:
        return EvaluatorResult(
            success=False,
            score=0,
            comment="The model's answer does not match the expected answer."
        )
```

### Integrate the Evaluator into Your Script

Update your evaluation script to use the `oshot_choice` evaluator.

```python
import os
import requests
from dotenv import load_dotenv
from langsmith import traceable
from langsmith.evaluation import evaluate, EvaluatorResult

# Load environment variables from .env file
load_dotenv()

@traceable
def get_chat_answer(question):
    base_url = 'http://localhost:3000'
    url = f"{base_url}/api/v4/chat/completions"
    headers = {
        "Content-Type": "application/json",
        "PRIVATE-TOKEN": os.getenv("GITLAB_PRIVATE_TOKEN"),
    }
    payload = {"content": question}
    response = requests.post(url, json=payload, headers=headers)
    if response.status_code == 200:
        return response.json()
    else:
        raise Exception(f"Error: {response.status_code} - {response.text}")

# Custom evaluator function
def oshot_choice(inputs, outputs):
    expected_answer = inputs.get("expected_answer")
    model_answer = outputs.get("answer")

    if expected_answer is None or model_answer is None:
        return EvaluatorResult(
            success=False,
            score=0,
            comment="Expected answer or model answer is missing."
        )

    if expected_answer == model_answer:
        return EvaluatorResult(
            success=True,
            score=1,
            comment="The model's answer matches the expected answer."
        )
    else:
        return EvaluatorResult(
            success=False,
            score=0,
            comment="The model's answer does not match the expected answer."
        )

def main():
    chain_results = evaluate(
        lambda inputs: get_chat_answer(inputs["question"]),
        data="duo_chat_questions_0shot",  # Replace with your dataset name
        evaluators=[oshot_choice],  # Use the custom evaluator
        experiment_prefix="Run Small Duo Chat Questions on GDK",
    )
    print(chain_results)

if __name__ == "__main__":
    main()
```

This will use the custom `oshot_choice` evaluator to assess the model’s answers against the expected answers in your dataset. Make sure to replace "duo_chat_questions_0shot" with the name of your uploaded dataset.

- [LangChain Evaluators](https://docs.smith.langchain.com/reference/sdk_reference/langchain_evaluators)

#### Evaluate questions on more dimensions

See https://gitlab.com/gitlab-org/ai-powered/eli5/-/blob/main/evaluation_scripts/chat/evaluate_multi_dimension.py?ref_type=heads for an example.

See [evaluator implementations for details](https://docs.smith.langchain.com/old/evaluation/faq/evaluator-implementations).
