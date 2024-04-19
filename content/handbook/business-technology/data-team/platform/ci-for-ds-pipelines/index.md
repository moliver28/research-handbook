---

title: "Getting Started With CI/CD for Data Science Pipelines"
description: "How to Run Data Science Pipelines Using GitLab CI/CD"
---

 







----

## Our Approach to Using CI/CD For Data Science

When it comes to training and scoring machine learning models, there are trade-offs to using your local machine vs. CI. Our approach is flexible to allow a user to do both.

- When executing training or scoring runs on your local machine, users will be able to:
  - Execute training or scoring code using local resources and python builds specific to the machine
  - Log, view, and retrieve experiments in your preferred experiment tracker
  - Upload and download model artifacts to your preferred model/package registry
  - Commit changes to the repository that will ***not*** trigger a CI pipeline

- When executing training or scoring runs remotely using GitLab CI/CD, users will be able to:
  - Select CPU or GPU compute instance based on the needs of the model
  - Automatically detect and rebuild the model image based on changes to the Dockerfile or requirements.txt
  - Log, view, and retrieve experiments in your preferred experiment tracker
  - Upload and download model artifacts directly to the GitLab package registry
  - Automatically report model metrics and performance in the merge request for review by others.
  - Commit changes to the repository and automatically trigger the training CI pipeline based on a specific commit message
     - Training CI pipeline only executes with the following commit message: `train <path/to/notebook/your_notebook.ipynb>`
     - Allows the pipeline to execute just the desired notebook
  - Commit changes to the repository and automatically trigger the scoring CI pipeline based on a specific commit message
     - Scoring CI pipeline only executes with the following commit message: `score <path/to/notebook/your_notebook.ipynb>`
  - Schedule training and scoring CI pipelines to run at set dates and times
  - Log pipeline results to project [wiki](https://docs.gitlab.com/ee/user/project/wiki/)
  - Use [GitLab for Slack](https://docs.gitlab.com/ee/user/project/integrations/gitlab_slack_application.html) integration to monitor pipeline status

  
### Advantages of Using CI for Training Data Science Models

  - Reproducibility
  - Automation
  - Speed
  - Logging results directly to Merge Request and project wiki
  - Scalable GPU and CPU resources
  - Scheduling
  - Slack notifications for monitoring CI pipelines

## Getting Started

This section covers, in detail, the mechanisms behind how these pipelines is created and configured. **If you are just interested in getting your data science CI training pipeline up and running, skip directly to the [Model Training Step-by-Step Instructions](/handbook/business-technology/data-team/platform/ci-for-ds-pipelines#model-training-step-by-step-instructions)**

**If you are just interested in getting your data science CI scoring pipeline up and running, skip directly to the [Scoring and Productionalization Step-by-Step Instructions](/handbook/business-technology/data-team/platform/ci-for-ds-pipelines#score-and-productionalization-step-by-step-instructions)**

### Key Repository Files

Within our public **[GitLab Data Science CI Example](https://gitlab.com/gitlab-data/data-science-ci-example)** repository are the following:
- **.gitlab-ci.yml**: This is the CI/CD configuration file that define the jobs that define the jobs that will be run in each pipeline. This is pulled from the [CI/CD Component Catelog](https://gitlab.com/explore/catalog/gitlab-data/ds-component-pipeline), with only a few variables needed to be specified by the user.
- **Dockerfile**: Instructions for creating the docker image. Here we are using python 3.9 running on Ubuntu 22.04 with CUDA drivers for GPU  
- **requirements.txt**: The python packages to install in the docker container
- **config.yaml**: Configuration for training notebook
- **scoring_config.yaml**: Configuration for scoring notebook
- **notebooks/training_example.ipynb**: training notebook used for this example
- **notebooks/scoring_example.ipynb**: scoring code productionalization notebook used for this example

## Model Training with CI/CD

### Training Pipeline

1. **Build**
   - **build-ds-image**: activated whenever changes are added to the **Dockerfile** or **requirements.txt** files. This will rebuild the image used to train the model
2. **Train**
   - **train-commit-activated**: To execute a training pipeline. Activated by using the `train <path/to/notebook/your_notebook.ipynb>` commit message
3. **Notify** (optional)
   - **publish-metrics-comment**: Write model metrics as a comment to the merge request. This is executed after a training or scoring run is performed via commit message.

![CI Jobs](ci-pipelines.png)

### Training Setup

Let's take a detailed look at the repository (**Code -> Repository**):

- In the **notebooks** directory, open [training_example.ipynb](https://gitlab.com/gitlab-data/data-science-ci-example/-/blob/main/notebooks/training_example.ipynb). We do not need to change anything in here, but note the first cell of the notebook. [Papermill](https://papermill.readthedocs.io/en/latest/#) will be used to execute this notebook in the CI pipeline and this cell has been tagged as `parameters` to allow Papermill to change these values. There are 3 variables with preset values:
  - `is_local_development = True`: The default assumption is that the notebook is being run locally. The CI pipeline will modify this value to `False` automatically so the notebook can be optimized to run in CI
  - `tree_method = 'auto'`: The default value for xgboost. The CI pipeline changes this value to `gpu_hist` when using a GPU runner in CI to take advantage certain performance enhancements. The assumption that is the model will train via CPU when run locally due to lack of a compatible local GPU.
  - `notebook_dir = 'notebooks'`: The directory of the training notebooks. This value is the same locally as it is the CI pipeline.
- To see exactly how the CI pipeline changes these values, now let's view [.gitlab-ci.yml](https://gitlab.com/gitlab-data/data-science-ci-example/-/blob/main/.gitlab-ci.yml). Because we are using a component from the CI/CD catelog, we actaully want to look at the [Data Science ML Component Pipeline](https://gitlab.com/gitlab-data/ds-component-pipeline/-/blob/main/templates/ds-pipeline/template.yml?ref_type=heads). In this file, search for `train-commit-activated`. This is the most important stage in the CI pipeline. A few things to note:
  - `image: $CONTAINER_IMAGE`: The training job will use the container created in the build job (as defined by `build-ds-image`), using the [Dockerfile](https://gitlab.com/gitlab-data/data-science-ci-example/-/blob/main/Dockerfile) and [requirements.txt](https://gitlab.com/gitlab-data/data-science-ci-example/-/blob/main/requirements.txt) files in the repository.
  - `tags: Determines which runner to use. In this case, we want to be able to change the runner based on the project we are working on, so this gets specified by `TRAIN_RUNNER` and `SCORE_RUNNER` in [.gitlab-ci.yml](https://gitlab.com/gitlab-data/data-science-ci-example/-/blob/main/.gitlab-ci.yml) located back in our project repository
  - `script:
        ...
        - papermill -p is_local_development False -p tree_method 'gpu_hist' $notebookName -`: Tells papermill to override the variable values defined in the first cell of the notebook with the values shown when utlizing a the GPU runner.
- Finally, let's look at the [config.yml](https://gitlab.com/gitlab-data/data-science-ci-example/-/blob/main/config.yml). Here we can configure certain variables for training our model:
  - `outcome`: Our outcome/target/dv variable. The example notebook is using the breast cancer dataset from scikit-learn and the outcome field in that dataset is named `target`
  - `optuna` configurations: The example notebook runs an xgboost model with [Optuna](https://optuna.org/). There are *a lot* of customizations that are possible with this setup, but to keep it simple, we have only included:
    - `n_trials`: Number of trails to run in the Optuna study
    - `model_file_name`: The output name of the joblib model file
  - `mlflow': There are a few configurations you can make here if you like, but the defaults will also work fine
    - `experiment_name`: Name of your MLFlow Experiment
    - `run_name`: ID or name of the MLFlow Experiment Run


### Model Training Step-by-Step Instructions

1. [Fork](https://docs.gitlab.com/ee/user/project/repository/forking_workflow.html) the public [GitLab Data Science CI Example](https://gitlab.com/gitlab-data/data-science-ci-example) repository. Forking will allow you to further customize the code to meet your own needs.
1. Optional (but recommended) Configurations:
   - Experiment Tracker: This will allow you to log your experiments in the native [Experiment Tracker](https://docs.gitlab.com/ee/user/project/ml/experiment_tracking/) (or MLFlow instance) and log the model artifacts to the [package registry](https://docs.gitlab.com/ee/user/packages/package_registry/).
      - Review the [MLflow Client Compatibility Instructions](https://docs.gitlab.com/ee/user/project/ml/experiment_tracking/mlflow_client.html) to set up the `MLFLOW_TRACKING_URI` and `MLFLOW_TRACKING_TOKEN` CI/CI in your project.
      - Create a project access token (**Settings -> Access Tokens -> Add New Token**) named `REPO_TOKEN` with a `Developer` role and the following scopes: `api, read_api, read_repository, write_repository`. Be sure to copy this token
          - ***Note***: Enabling group access tokens is a not available for SaaS Free accounts.  If using a Free account, you will need to fork the project into a personal (instead of a group) namespace ![Create Project Token](create_token.png)
      - Create the following new CI Variables (**Settings -> CI/CD -> Variables -> Add New Variable**):
         - `MLFLOW_TRACKING_TOKEN`: For the value, enter the project access token value created above.
         - `MLFLOW_TRACKING_URI`: For the value, use the GitLab API MLFlow endpoint as outlined in the MLFlow instructions above. For example, `https://gitlab.com/api/v4/projects/<your_project_id>/ml/mlflow`. Project ID can be found in **Settings -> General**
         - ***Note:*** Untick the "Protect Variable" flag to enable experiment tracking on unprotected branches
    - Write Model Metrics to Merge Request
       - Create the following new CI Variable (**Settings -> CI/CD -> Variables -> Add New Variable**):
         - `REPO_TOKEN`: For the value, enter the project access token value created above.
         - ***Note:*** Untick the "Protect Variable" flag to enable experiment tracking on unprotected branches ![Create CI Variables](create_ci_variables.png)

1. Now, let's make some changes to activate our training pipeline:
1. Create a new branch (**Code -> Branches -> New Branch**)
     - <img src="new_branch.png" width="500">
1. First let's make sure the `build-ds-image` will get triggered, which will build the container our model will run in. This job of the pipeline is only activated when changes are detected in **Dockerfile** or **requirements.txt**. So let's make a change:
     - Edit **Dockerfile**, replacing the maintainer value with your GitLab handle and commit the change to your branch. ![Edit Dockerfile](edit_dockerfile.png)
1. If running from a Free account:
     - GPU runners are available at the Premium and Ultimate tiers. If using a Free account, also edit `.gitlab-ci.yml` to switch to a shared CPU runner
     - Change the `train-commit-activated` `tag:` from `saas-linux-medium-amd64-gpu-standard` to `saas-linux-small-amd64`. This can also be used to scale up or down the runner as needed.
     - Under `script`, change `papermill -p is_local_development False -p tree_method 'gpu_hist' $notebookName -` to `papermill -p is_local_development False $notebookName -`. This defaults the notebook to using CPU rather than GPU. ![Edit CI](edit_ci.png)
1. Edit **config.yaml**
     - Change `n_trials` to a new value between `10` and `20`.
     - For the commit message enter `train notebooks/training_example.ipynb`. This will tell the GitLab that you want to execute the training CI pipeline on the **training_example.ipynb** notebook found in the notebooks directory. Commit the change. ![Edit Config](edit_config.png)
1. Click "Create merge request". Make sure you are merging into your local fork and click "Create merge request" once again. This should activate the training CI pipeline for the newly created MR.
1. Click on "Pipelines" and you should see the training pipeline running. Click into the pipeline to see which which stage the pipeline is in.
   - ***Note:*** If you did not set up Write Model Metrics to Merge Request above, then the `cml` job will fail. The pipeline will still pass with warnings ![Pipeline Jobs](pipeline_jobs.png)
1. Once the pipeline has finished, you will see a new comment posted on the merge request that contains some model metrics from the run (assuming you set up Write Model Metrics to Merge Request).
   - <img src="model_metrics.png" width="700">
1. Now let's look at the experiment run we just completed with our CI pipeline (**Analyze -> Model Experiments**)
   - Click on your experiment name.
   - You should see a new run logged from the CI Pipeline. Click into that run.
   - Run details are displayed, including a link to the CI job, the merge request, various parameters and metrics, and model artifacts. ![Experiment Tracker](experiment.png)
   - Click on "Artifacts". This will take you to the Package Registry, where all the artifacts associated with that particular model run are stored. You should see the joblib model file and a requirements.txt. These can be used later to deploy your model. ![Artifacts](artifacts.png)
1. Finally, let's look at the container that was used to train the model (**Deploy -> Container Registry**)
   - This container will be used in subsequent runs of the model and will only get rebuilt when **Dockerfile** or **requirements.txt** are modified. ![Container](container.png)


## Scoring and Productionalization with CI/CD

### Scoring Pipeline
1. **Build** 
   - **build-ds-image**: activated whenever changes are added to the **Dockerfile** or **requirements.txt** files. This will rebuild the image used to score the model. Ideally, this should be the same image that was used to train the model.
2. **Score**
   - **score-commit-activated**: To manually execute a scoring pipeline. Activated by using the `score <path/to/notebook/your_notebook.ipynb>` in the commit message
   - **score-scheduled**: To execute a scoring pipeline based on a defined schedule using [Scheduled pipeliens](https://docs.gitlab.com/ee/ci/pipelines/schedules.html)
3. **Notify** (Optional)
   - **publish-metrics-comment**: Write model performance metrics as a comment on the merge request. This is executed after a scoring run is performed via commit message.
   - **write-to-wiki**: Write model performance metrics and job details to the project wiki. Only executes for scheduled jobs that use `score-scheduled` 

![CI Jobs](ci-pipelines.png)

### Productionalization Setup


### Scoring and Productionalization Step-by-Step Instructions


## Slack Notifications (optional)
- In Slack, add the GitLab for Slack app
- Follow the instructions in the [Gitlab For Slack app documentation](https://docs.gitlab.com/ee/user/project/integrations/gitlab_slack_application.html)
- We’ve setup our slack notifications so that notifications are sent to the #data-science-pipelines channel only when a pipeline fails. If a pipeline succeeds, a notification is not sent.
![Slack Notifications Config](slack_notifications.png)


**And that's it! Feel free to modify these pipelines and notebooks to fit your data science modeling needs. And be sure to check out all the other great data science resources on our [Data Science Handbook Page](/handbook/business-technology/data-team/organization/data-science/). Happy pipelining!**

