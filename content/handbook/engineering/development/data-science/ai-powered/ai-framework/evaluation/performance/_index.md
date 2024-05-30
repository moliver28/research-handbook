---
title: AI Framework Group - Eval like I am 5
description: "The AI Framework group is focused on how to support other product groups at GitLab with the AI Abstraction Layer, and GitLab AI feature development."
aliases: /handbook/engineering/development/data-science/ai-framework
---

## Example evaluating performance metrics

This script evaluates performance metrics by sending chat requests, measuring latency, tracking token usage, and calculating overall metrics such as error rate, average latency, and reliability.

```python
import os
import requests
import time
from dotenv import load_dotenv
from langsmith import traceable
from langsmith.evaluation import evaluate
from langchain_openai import ChatOpenAI
from langchain_community.callbacks.manager import get_openai_callback

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
    start_time = time.time()
    response = requests.post(url, json=payload, headers=headers)
    end_time = time.time()
    latency = end_time - start_time
    
    if response.status_code == 200:
        response_data = response.json()
        tokens_used = response_data.get('usage_metadata', {}).get('total_tokens', 0)
        return {
            "response": response_data,
            "latency": latency,
            "tokens_used": tokens_used,
            "status": "success"
        }
    else:
        return {
            "status": "error",
            "status_code": response.status_code,
            "latency": latency,
            "tokens_used": 0
        }

def main():
    dataset_name = "duo_chat_questions_0shot"
    chain_results = evaluate(
        lambda inputs: get_chat_answer(inputs["question"]),
        data=dataset_name,
        evaluators=["oshot_choice"],
        experiment_prefix="Run Small Duo Chat Questions on GDK",
    )

    total_requests = len(chain_results)
    successful_requests = sum(1 for result in chain_results if result['status'] == 'success')
    error_requests = total_requests - successful_requests
    latencies = [result['latency'] for result in chain_results if result['status'] == 'success']
    tokens_used = [result['tokens_used'] for result in chain_results if result['status'] == 'success']

    performance_metrics = {
        "total_requests": total_requests,
        "successful_requests": successful_requests,
        "error_requests": error_requests,
        "error_rate": error_requests / total_requests if total_requests > 0 else 0,
        "average_latency": sum(latencies) / len(latencies) if latencies else 0,
        "average_tokens_per_second": sum(tokens_used) / sum(latencies) if latencies else 0,
        "time_to_first_token_render": min(latencies) if latencies else 0,
        "reliability": successful_requests / total_requests if total_requests > 0 else 0
    }

    print("Performance Metrics:")
    for key, value in performance_metrics.items():
        print(f"{key}: {value}")

if __name__ == "__main__":
    main()
```