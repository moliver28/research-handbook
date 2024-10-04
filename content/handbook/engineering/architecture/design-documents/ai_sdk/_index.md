---
title: "AI-SDK"
status: ongoing
creation-date: "2024-10-04"
authors: [ "" ]
coach: [ "" ]
approvers: [ "" ]
owning-stage: "~devops::modelops"
participating-stages: []
toc_hide: true
---

{{< design-document-header >}}

## Summary

The GitLab AI SDK is a comprehensive Python package that provides a unified interface for developing AI-powered features across GitLab products. It abstracts away the complexities of working with different LLM providers and integrates seamlessly with the existing AI Gateway architecture. The SDK aims to standardize AI development practices within GitLab, improve developer productivity, and ensure consistency across AI-powered features.

## Motivation

### Goals

1. Provide a unified and consistent interface for AI feature development across GitLab
2. Simplify integration with various LLM providers and AI models
3. Enable rapid prototyping and experimentation with AI features
4. Facilitate easier testing and evaluation of AI models and prompts
5. Improve code reusability and maintainability for AI-related components
6. Streamline the process of moving AI features from experimentation to production
7. Ensure compatibility with GitLab's existing infrastructure and security practices

### Non-Goals

1. Replacing the AI Gateway - the SDK will complement and integrate with it, not replace it
2. Supporting arbitrary machine learning tasks - focus is on NLP and LLM-based features
3. Providing a general-purpose ML framework - tailored specifically for GitLab's AI needs
4. Implementing custom LLM architectures - we'll rely on existing providers and models

## Proposal

The GitLab AI SDK will be a Python package that provides:

1. A high-level API for common AI tasks (text generation, embeddings, etc.)
2. Integrations with popular LLM providers (e.g. Anthropic, Vertex AI)
3. Tools for prompt engineering and management
4. Utilities for data preprocessing and postprocessing
5. Evaluation and testing frameworks
6. Seamless integration with the AI Gateway
7. Observability and monitoring capabilities
8. Local development and debugging tools

## Design and implementation details

### Architecture Overview

The GitLab AI SDK will be structured as follows:

```
gitlab_ai_sdk/
├── core/
│   ├── providers/
│   ├── models/
│   ├── prompts/
│   └── config/
├── utils/
│   ├── preprocessing/
│   ├── postprocessing/
│   └── data_handling/
├── evaluation/
│   ├── metrics/
│   ├── datasets/
│   ├── runners/
│   ├── reporting/
│   └── visualizations/
├── integrations/
│   ├── ai_gateway/
│   ├── gitlab_api/
│   ├── langsmith/
│   └── bigquery/
├── observability/
│   ├── logging/
│   ├── tracing/
│   └── metrics/
├── cli/
└── web/
    └── playground/
```

### Core Components

#### 1. Model Abstraction Layer

The Model Abstraction Layer provides a unified interface for different LLM providers:

```python
from gitlab_ai_sdk.core.providers import AnthropicProvider, VertexAIProvider
from gitlab_ai_sdk.core.models import LLMModel

class LLMModel(ABC):
    @abstractmethod
    def generate(self, prompt: str, **kwargs) -> str:
        pass

    @abstractmethod
    def embed(self, text: str) -> List[float]:
        pass

class AnthropicModel(LLMModel):
    def __init__(self, model_name: str, api_key: str):
        self.client = AnthropicProvider(api_key=api_key)
        self.model_name = model_name

    def generate(self, prompt: str, **kwargs) -> str:
        return self.client.complete(model=self.model_name, prompt=prompt, **kwargs)

    def embed(self, text: str) -> List[float]:
        return self.client.embed(model=self.model_name, text=text)

# Similar implementations for other providers
```

#### 2. Prompt Management

Tools for creating, versioning, and managing prompts:

```python
from gitlab_ai_sdk.core.prompts import Prompt, PromptTemplate, PromptRegistry

class Prompt:
    def __init__(self, content: str, metadata: Dict[str, Any] = None):
        self.content = content
        self.metadata = metadata or {}

class PromptTemplate:
    def __init__(self, template: str):
        self.template = template

    def format(self, **kwargs) -> Prompt:
        content = self.template.format(**kwargs)
        return Prompt(content, metadata={"template_args": kwargs})

class PromptRegistry:
    def __init__(self):
        self.prompts = {}

    def register(self, name: str, prompt: Union[Prompt, PromptTemplate]):
        self.prompts[name] = prompt

    def get(self, name: str) -> Union[Prompt, PromptTemplate]:
        return self.prompts[name]
```

#### 3. Data Processing Utilities

Utilities for text preprocessing and tokenization:

```python
from gitlab_ai_sdk.utils.preprocessing import Tokenizer, TextCleaner
from gitlab_ai_sdk.utils.postprocessing import OutputFormatter

class Tokenizer:
    def tokenize(self, text: str) -> List[str]:
        # Implementation depends on the specific tokenizer being used
        pass

class TextCleaner:
    def clean(self, text: str) -> str:
        # Implement text cleaning logic (e.g., remove special characters, normalize whitespace)
        pass

class OutputFormatter:
    def format(self, output: str, format_type: str) -> Any:
        # Implement output formatting logic (e.g., JSON, markdown, plain text)
        pass
```

### 4. Evaluation Framework

The evaluation framework will combine the strengths of both ELI5 and Prompt Library, providing a unified and flexible system for evaluating AI models and prompts:

```python
from gitlab_ai_sdk.evaluation import Evaluator, Metric, Dataset, EvaluationResult
from gitlab_ai_sdk.evaluation.metrics import BLEU, ROUGE, FunctionalCorrectness
from gitlab_ai_sdk.evaluation.datasets import BigQueryDataset, LangSmithDataset
from gitlab_ai_sdk.evaluation.runners import LocalRunner, DataflowRunner

class Evaluator:
    def __init__(self, model, dataset: Dataset, metrics: List[Metric]):
        self.model = model
        self.dataset = dataset
        self.metrics = metrics

    def evaluate(self, runner: Runner = LocalRunner()) -> EvaluationResult:
        results = runner.run(self.model, self.dataset)
        return EvaluationResult(
            [metric.calculate(results) for metric in self.metrics]
        )

class Dataset(ABC):
    @abstractmethod
    def load(self) -> List[Dict[str, Any]]:
        pass

class BigQueryDataset(Dataset):
    def __init__(self, project_id: str, dataset_id: str, table_id: str):
        self.project_id = project_id
        self.dataset_id = dataset_id
        self.table_id = table_id

    def load(self) -> List[Dict[str, Any]]:
        # Implement BigQuery data loading logic
        pass

class LangSmithDataset(Dataset):
    def __init__(self, dataset_name: str):
        self.dataset_name = dataset_name

    def load(self) -> List[Dict[str, Any]]:
        # Implement LangSmith data loading logic
        pass

class Metric(ABC):
    @abstractmethod
    def calculate(self, results: List[Dict[str, Any]]) -> float:
        pass

class FunctionalCorrectness(Metric):
    def calculate(self, results: List[Dict[str, Any]]) -> float:
        # Implement functional correctness calculation
        pass

class Runner(ABC):
    @abstractmethod
    def run(self, model, dataset: Dataset) -> List[Dict[str, Any]]:
        pass

class LocalRunner(Runner):
    def run(self, model, dataset: Dataset) -> List[Dict[str, Any]]:
        # Implement local evaluation running logic
        pass

class DataflowRunner(Runner):
    def __init__(self, project_id: str, region: str):
        self.project_id = project_id
        self.region = region

    def run(self, model, dataset: Dataset) -> List[Dict[str, Any]]:
        # Implement Dataflow evaluation running logic
        pass

class EvaluationResult:
    def __init__(self, metric_results: List[float]):
        self.metric_results = metric_results

    def to_langsmith(self) -> None:
        # Export results to LangSmith
        pass

    def to_bigquery(self, project_id: str, dataset_id: str, table_id: str) -> None:
        # Export results to BigQuery
        pass
```

This updated evaluation framework incorporates the following changes:

1. Support for both BigQuery and LangSmith datasets, allowing users to leverage existing data from both ELI5 and Prompt Library.
2. A flexible `Runner` system that supports both local execution (similar to ELI5) and distributed execution using Dataflow (similar to Prompt Library).
3. Integration with LangSmith for result storage and visualization, while maintaining the ability to export results to BigQuery.
4. A unified `Evaluator` class that can work with different datasets, metrics, and runners.
5. Support for custom metrics, including those from both ELI5 and Prompt Library.

To use this consolidated evaluation framework:

```python
from gitlab_ai_sdk import AISDK, Model
from gitlab_ai_sdk.evaluation import Evaluator, BigQueryDataset, LangSmithDataset, LocalRunner, DataflowRunner
from gitlab_ai_sdk.evaluation.metrics import BLEU, FunctionalCorrectness

# Initialize the SDK
sdk = AISDK.from_config("config.yaml")

# Get a model
model = sdk.get_model("anthropic/claude-2")

# Create a dataset (either BigQuery or LangSmith)
dataset = BigQueryDataset("project-id", "dataset-id", "table-id")
# Or: dataset = LangSmithDataset("dataset-name")

# Create an evaluator with desired metrics
evaluator = Evaluator(model, dataset, metrics=[BLEU(), FunctionalCorrectness()])

# Run evaluation locally
local_result = evaluator.evaluate(runner=LocalRunner())

# Or run evaluation using Dataflow
dataflow_result = evaluator.evaluate(runner=DataflowRunner("project-id", "us-central1"))

# Export results
local_result.to_langsmith()
dataflow_result.to_bigquery("project-id", "results-dataset", "results-table")
```

#### 5. AI Gateway Integration

Seamless communication with AI Gateway endpoints:

```python
from gitlab_ai_sdk.integrations.ai_gateway import AIGatewayClient

class AIGatewayClient:
    def __init__(self, base_url: str, auth_token: str):
        self.base_url = base_url
        self.auth_token = auth_token

    def generate(self, endpoint: str, prompt: str, **kwargs) -> str:
        # Implement API call to AI Gateway generate endpoint
        pass

    def embed(self, endpoint: str, text: str) -> List[float]:
        # Implement API call to AI Gateway embed endpoint
        pass
```

#### 6. Observability

Logging, tracing, and metrics collection:

```python
from gitlab_ai_sdk.observability.logging import SDKLogger
from gitlab_ai_sdk.observability.tracing import Tracer
from gitlab_ai_sdk.observability.metrics import MetricsCollector

class SDKLogger:
    def __init__(self, name: str):
        self.logger = logging.getLogger(name)

    def info(self, message: str):
        self.logger.info(message)

    def error(self, message: str):
        self.logger.error(message)

class Tracer:
    def __init__(self):
        # Initialize tracing system (e.g., OpenTelemetry)
        pass

    def start_span(self, name: str):
        # Start a new span
        pass

    def end_span(self):
        # End the current span
        pass

class MetricsCollector:
    def __init__(self):
        # Initialize metrics collection system (e.g., Prometheus)
        pass

    def increment(self, metric_name: str, value: int = 1):
        # Increment a counter metric
        pass

    def record(self, metric_name: str, value: float):
        # Record a gauge metric
        pass
```

### API Design

The main API for the GitLab AI SDK will be designed for simplicity and ease of use:

```python
from gitlab_ai_sdk import AISDK, Model, Prompt, Evaluation

# Initialize the SDK
sdk = AISDK.from_config("config.yaml")

# Get a model
model = sdk.get_model("anthropic/claude-2")

# Create and use a prompt
prompt = sdk.prompts.get("summarize").format(text="Lorem ipsum...")
completion = model.generate(prompt)

# Generate embeddings
embedding = model.embed("Some text to embed")

# Evaluate results
evaluation = sdk.evaluations.get("functional_correctness")
score = evaluation.evaluate(completion, expected_output)

# Log metrics
sdk.metrics.record("completion_latency", 0.5)
```

### Integration with AI Gateway

The SDK will integrate with the AI Gateway by:

1. Using AI Gateway endpoints for model access when possible
2. Supporting AI Gateway authentication mechanisms
3. Providing fallback options for direct model access when necessary

Example configuration:

```yaml
# config.yaml
ai_gateway:
  url: https://ai-gateway.gitlab.com
  auth_token: ${AI_GATEWAY_TOKEN}

models:
  anthropic/claude-2:
    provider: ai_gateway
    endpoint: /v1/completions
  vertex_ai/text-bison:
    provider: direct
    project_id: ${GCP_PROJECT_ID}
    location: us-central1
```

### Cross-version Compatibility

To ensure compatibility across different GitLab versions:

1. Implement a version detection mechanism:

```python
from gitlab_ai_sdk.utils.version import get_gitlab_version, VersionInfo

def get_gitlab_version() -> VersionInfo:
    # Implement version detection logic
    pass

class FeatureManager:
    def __init__(self):
        self.gitlab_version = get_gitlab_version()

    def is_feature_available(self, feature_name: str) -> bool:
        # Check if the feature is available for the current GitLab version
        pass
```

2. Use feature flags for gradual rollout of new functionality:

```python
from gitlab_ai_sdk.utils.feature_flags import FeatureFlags

class FeatureFlags:
    def __init__(self, config: Dict[str, Any]):
        self.flags = config.get("feature_flags", {})

    def is_enabled(self, flag_name: str) -> bool:
        return self.flags.get(flag_name, False)
```

3. Implement compatibility layers for older GitLab versions:

```python
from gitlab_ai_sdk.utils.compatibility import CompatibilityLayer

class CompatibilityLayer:
    def __init__(self, gitlab_version: VersionInfo):
        self.gitlab_version = gitlab_version

    def get_compatible_function(self, function_name: str):
        if self.gitlab_version < VersionInfo(15, 0):
            return getattr(self, f"{function_name}_legacy")
        return getattr(self, function_name)

    def some_function(self, *args, **kwargs):
        # New implementation
        pass

    def some_function_legacy(self, *args, **kwargs):
        # Legacy implementation for GitLab versions < 15.0
        pass
```

### Deployment and Distribution

1. Package the SDK as a PyPI package:

```toml
# pyproject.toml
[build-system]
requires = ["setuptools>=61.0", "wheel"]
build-backend = "setuptools.build_meta"

[project]
name = "gitlab-ai-sdk"
version = "0.1.0"
description = "GitLab AI SDK for developing AI-powered features"
dependencies = [
    "requests",
    "pyyaml",
    "anthropic",
    "google-cloud-aiplatform",
]
```

2. Provide installation instructions for different GitLab environments:

```bash
# For GitLab.com SaaS
pip install gitlab-ai-sdk

# For self-managed GitLab
pip install gitlab-ai-sdk==${GITLAB_VERSION}

# For GitLab Dedicated
pip install gitlab-ai-sdk==${GITLAB_VERSION} --extra-index-url ${DEDICATED_PYPI_URL}
```

3. Include the SDK in the AI Gateway Docker image:

```dockerfile
FROM python:3.9-slim

# Install the GitLab AI SDK
RUN pip install gitlab-ai-sdk==${SDK_VERSION}

# ... rest of the Dockerfile
```

### Security Considerations

1. Implement secure handling of API keys and tokens:

```python
from gitlab_ai_sdk.utils.secrets import SecretManager

class SecretManager:
    def __init__(self, config: Dict[str, Any]):
        self.config = config

    def get_secret(self, name: str) -> str:
        # Implement secure secret retrieval (e.g., from environment variables or a secret store)
        pass
```

2. Ensure proper access control and authorization when accessing GitLab resources:

```python
from gitlab_ai_sdk.utils.auth import AuthorizationManager

class AuthorizationManager:
    def __init__(self, user: User):
        self.user = user

    def can_access_resource(self, resource: str) -> bool:
        # Implement authorization logic
        pass
```

3. Follow GitLab's security best practices for code and dependency management:

- Regularly update dependencies and scan for vulnerabilities
- Implement input validation and sanitization
- Use parameterized queries to prevent SQL injection
- Implement rate limiting and throttling mechanisms

## Alternative Solutions

1. Extend the AI Gateway to include SDK functionality
   - Pros: Tighter integration with existing systems
   - Cons: Increased complexity of AI Gateway, less flexibility for developers
2. Use existing open-source AI development frameworks
   - Pros: Leverage community-maintained tools
   - Cons: Less tailored to GitLab's specific needs, potential compatibility issues
3. Develop AI features without a dedicated SDK
   - Pros: No additional abstraction layer
   - Cons: Inconsistent implementations, duplication of effort, harder maintenance

## Future Work

1. Expand SDK to cover more AI use cases in GitLab:
   - Implement support for multi-modal models (text + images)
   - Add specialized modules for code-related tasks (e.g., code completion, code review)
2. Implement a plugin system for custom AI tools and agents:

```python
from gitlab_ai_sdk.plugins import PluginManager, Plugin

class PluginManager:
    def __init__(self):
        self.plugins = {}

    def register_plugin(self, name: str, plugin: Plugin):
        self.plugins[name] = plugin

    def get_plugin(self, name: str) -> Plugin:
        return self.plugins[name]

class Plugin(ABC):
    @abstractmethod
    def initialize(self, sdk: AISDK):
        pass

    @abstractmethod
    def run(self, *args, **kwargs):
        pass
```

### Duo Workflow Alignment 

The vision for Duo Workflow as a general-purpose tool that can handle complex, multi-step tasks while leveraging GitLab's existing infrastructure and the new embedding and search capabilities being developed fits into our overall goal for an SDK.

```python
from gitlab_ai_sdk import AISDK, DuoWorkflowModel
from gitlab_ai_sdk.features.duo_workflow import WorkflowExecutor, WorkflowService, Agent
from gitlab_ai_sdk.integrations.ai_gateway import AIGatewayClient
from gitlab_ai_sdk.utils.search import SemanticSearch, HybridSearch
from gitlab_ai_sdk.utils.embeddings import EmbeddingGenerator

# Initialize the SDK
sdk = AISDK.from_config("config.yaml")

# Set up AI Gateway client
ai_gateway_client = AIGatewayClient(base_url="https://ai-gateway.gitlab.com", auth_token="your_token")

# Initialize Duo Workflow model
duo_workflow_model = DuoWorkflowModel(ai_gateway_client)

# Create a workflow service
workflow_service = WorkflowService(duo_workflow_model)

# Create a workflow executor
workflow_executor = WorkflowExecutor()

# Initialize search and embedding utilities
semantic_search = SemanticSearch(sdk.get_embedding_model("code-search"))
hybrid_search = HybridSearch(semantic_search)
embedding_generator = EmbeddingGenerator(sdk.get_embedding_model("general"))

# Define a workflow with ReAct-style agents
async def example_workflow():
    workflow = await workflow_service.create_workflow("Optimize codebase and improve logging")
    
    # Create agents
    code_optimizer = Agent("code_optimizer", workflow_service)
    logging_expert = Agent("logging_expert", workflow_service)
    
    # Execute workflow steps
    await workflow.execute_step("Analyze codebase", code_optimizer)
    optimization_results = await code_optimizer.reason_and_act()
    
    await workflow.execute_step("Improve logging", logging_expert)
    logging_results = await logging_expert.reason_and_act()
    
    # Use semantic search to find related issues and MRs
    related_items = await semantic_search.search("logging optimization", ["issues", "merge_requests"])
    
    # Generate embeddings for new content
    new_code_embedding = await embedding_generator.generate(optimization_results.code)
    
    # Use the executor to apply changes
    await workflow_executor.apply_changes(optimization_results.changes)
    await workflow_executor.apply_changes(logging_results.changes)
    
    # Commit changes
    commit_message = f"Optimize codebase and improve logging\n\nRelated items: {', '.join(related_items)}"
    await workflow_executor.commit_changes(commit_message)
    
    # Complete the workflow
    await workflow.complete()

# Run the workflow
sdk.run_workflow(example_workflow)

# Evaluate the workflow
evaluator = sdk.create_evaluator(
    model=duo_workflow_model,
    dataset=sdk.datasets.get("code_optimization_test_set"),
    metrics=[
        sdk.metrics.get("code_quality_improvement"),
        sdk.metrics.get("logging_coverage"),
        sdk.metrics.get("performance_impact")
    ]
)
evaluation_result = evaluator.evaluate()

# Log metrics
sdk.metrics.record("workflow_completion_time", evaluation_result.completion_time)
sdk.metrics.record("code_quality_improvement", evaluation_result.code_quality_improvement)
sdk.metrics.record("logging_coverage", evaluation_result.logging_coverage)
```