---

title: Package Group - GitLab Quality Assurance End-to-End Testing for the Package group
---







## Overview

The goal of this page is to document how the package group uses the [GitLab QA framework](https://gitlab.com/gitlab-org/gitlab-qa) ([video walkthrough](https://www.youtube.com/watch?v=eP1esI-o_0o)) to implement and run [end-to-end tests](https://docs.gitlab.com/ee/development/testing_guide/end_to_end/).
It also provides instructions on how to use HackyStack for demo purposes.

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/PHvZxvHxwXw" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

[Supporting slides for the above tutorial](https://docs.google.com/presentation/d/1CIovqR0iNPjr8lGhwvFl2b69ZGbEgd2X5zn_TOu_khY/edit?usp=sharing)

### Why do we have them

> End-to-end testing is a strategy used to check whether your application works as expected across the entire software stack and architecture, including the integration of all micro-services and components that are supposed to work together.

This is particularly true for a group that works with several services such as the [Container Registry](https://about.gitlab.com/direction/package/#container-registry), and the uploading of packages to a [Package Registry](https://about.gitlab.com/direction/package/#package-registry). These tests use the software as a user would and without mocking component dependencies.
The testing strategy for [this level of the pyramid](https://docs.gitlab.com/ee/development/testing_guide/testing_levels.html) can be found under the [Package QA Test Suite](https://gitlab.com/groups/gitlab-org/-/epics/5082) epic.

### When and where do we run them

**Any time** - This can be done either locally in [GDK](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/master/README.md), using the gitlab-qa gem or by triggering a pipeline on a specific environment (Staging, Nightly, Canary, etc).

**Merge Request** - The whole QA End-to-End test suite can be run on your MR by triggering manually the `package-and-qa` job.

**Scheduled Pipelines** - [Schedule](/handbook/engineering/infrastructure/test-platform/debugging-qa-test-failures/#qa-test-pipelines).
Package tests run in all the scheduled pipelines since we have a few tests tagged as `:reliable`. These tests (`:reliable` and `:smoke`) block deployments in case of failure and are a part of GitLab's sanity test suite.
Other Package related tests that are not tagged as `:reliable` run when the full suite of tests runs.


### Where are they

In the [GitLab repository](https://gitlab.com/gitlab-org/gitlab), the End-to-End tests for the Package group are located at:
- `qa/qa/specs/features/api/5_package` _*_
- `qa/qa/specs/features/browser_ui/5_package`
- `qa/qa/specs/features/ee/api/5_package` _*_
- `qa/qa/specs/features/ee/browser_ui/5_package` _*_


### How to run them locally

#### Using GDK

To test against your local GDK, first make sure:
- Environment variables are correctly set
	- `QA_DEBUG` is set to **true** so the debug logs are enabled
	- `WEBDRIVER_HEADLESS` is set to **false** so you can see the test run in an automated browser
- GDK is up and running
	- and using a [loopback interface](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/master/doc/index.md#create-loopback-interface-for-gdk) to be able to use a runner in a docker container
	- [hostname mapped to the loopback interface](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/master/doc/index.md#set-up-gdktest-hostname)

To run the tests:
1. On the terminal, go to `path-to-your-gdk/gitlab/qa`
1. Make sure that you have all the necessary gems installed: `bundle install`
1. Issue the command:
	1. To run all the tests for free features: `bundle exec bin/qa Test::Instance::All http://gdk.test:3000 -- qa/specs/features/browser_ui/5_package --tag orchestrated --tag packages`
	1. To run all the tests for paid features: `bundle exec bin/qa Test::Instance::All http://gdk.test:3000 -- qa/specs/features/ee/browser_ui/5_package --tag orchestrated --tag packages` (currently there are no tests for paid features)
	1. To run all the API tests for free features: *currently there are API tests for free features **at the End-to-End level** but they run only in Staging and Preprod environments*
	1. To run all the API tests for free features: *currently there are no API tests for paid features **at the End-to-End level***

**Note:** The command above is targeting `http://gdk.test:3000` which should be changed according to your hostname mapped to the loopback interface.

- `Test::Instance::All` refers to the test scenario `Instance::All`. A test scenario is a statement describing the functionality of the application to be tested.
These [are created on the GitLab QA](https://gitlab.com/gitlab-org/gitlab-qa/-/tree/master/lib/gitlab/qa/scenario/test) orchestration tool to define and compose
all the necessary pre-conditions that a GitLab instance must have in order to be tested. `All` is just simply running all the tests without pre-configuring a GitLab
instance as we are using our GDK as the GitLab instance under test. In order to configure the GDK instance to have the Registry and/or the Package Registry enabled please follow the existing [GDK Docs](https://gitlab.com/gitlab-org/gitlab-development-kit/-/tree/main/doc/howto).
- `http://gdk.test:3000` is the hostname of the GitLab instance under test. When running locally is the hostname of the GDK.
- `qa/specs/features/browser_ui/5_package` is the path to the folder where non-paid package features are.
- `--tag orchestrated --tag packages` are [RSpec metadata](https://docs.gitlab.com/ee/development/testing_guide/end_to_end/rspec_metadata_tests.html#rspec-metadata-for-end-to-end-tests) used for filtering tests.
Particularly useful when running on pipelines, but they also need to be included when running locally since they act as a filter for running `:packages` related tests only.


## Using the gitlab-qa gem

Install the `gitlab-qa` gem by running the command `gem install gitlab-qa`. This gem was created to verify the integrated pieces that compose GitLab work well together making it possible to run the QA test suite for any merge request before it gets merged to master.

This can be used as an alternative to test with GDK. It requires providing a GitLab image to spin up the GitLab instance under test.
Using `EE` or `CE`, as seen below on example commands, will pull the [latest nightly image](https://hub.docker.com/r/gitlab/gitlab-ee/tags).
To build a custom image locally (**builds only the test code**) do:

1. Go to the GitLab folder on your gdk and run `docker build -f qa/Dockerfile -t gitlab/gitlab-ee-qa:test . `
2. After building the QA Image pull the `gitlab/gitlab-ee nightly` image with: `docker pull gitlab/gitlab-ee:nightly`
3. Associate the QA Image `test` with GitLab Nightly: `docker tag gitlab/gitlab-ee:nightly gitlab/gitlab-ee:test`
4. On commands bellow, modify to use the built image: `QA_SKIP_PULL=true gitlab-qa Test::Instance::Image gitlab/gitlab-ee:test --omnibus-config ...`

To use the image built on the MR, which has **application changes**, trigger `package-and-qa` and verify the `qa-test` job log. There is a variable with the name `RELEASE` which contains the packaged GitLab image with the new application changes.
There is also an image address with the test code, stored on a variable named `QA_IMAGE`. Take note of both variables and use them in the following manner:

`QA_SKIP_PULL=true gitlab-qa Test::Instance::Image <RELEASE> <QA_IMAGE> --omnibus-config packages`

Using the `QA_SKIP_PULL=true` means that the framework will skip pulling the latest image and use the image passed instead.

### Orchestrated-level scenarios

#### Scenario - Run all package manager tests

Applies to all tests tagged with the `:packages` metadata. Configures a GitLab instance to have the Package Registry enabled.

* Run the command: `gitlab-qa Test::Instance::Image EE --omnibus-config packages` 

#### Scenario - Run all tests from the Package group against an Object Storage provider

Applies to all tests in the `5_package` folder tagged with the `:object_storage` metadata. 

* Run the command to test against **AWS**: `gitlab-qa Test::Instance::Image EE --omnibus-config object_storage_aws`
* Run the command to test against **GCP**: `gitlab-qa Test::Instance::Image EE --omnibus-config object_storage_gcp`
* Run the command to test against **MinIO**: `gitlab-qa Test::Instance::Image EE --omnibus-config object_storage`

The configurations for these different providers can be found on the [Omnibus Configurations](https://gitlab.com/gitlab-org/gitlab-qa/-/tree/master/lib/gitlab/qa/runtime/omnibus_configurations) folder in GitLab QA.
They require some environment variables to be set prior running the command:

| Scenario              | Variable            | Description                          |
|-----------------------|---------------------|--------------------------------------|
| AWS S3 Object Storage | AWS_S3_REGION       | AWS region where bucket is created   |
| AWS S3 Object Storage | AWS_S3_KEY_ID       | AWS credentials                      |
| AWS S3 Object Storage | AWS_S3_ACCESS_KEY   | AWS credentials                      |
| AWS S3 Object Storage | AWS_S3_BUCKET_NAME  | Name of the bucket set in AWS        |
| GCP Object Storage    | GCS_BUCKET_NAME     | Name of the bucket set in GCS        |
| GCP Object Storage    | GOOGLE_JSON_KEY     | JSON key credential                  |
| GCP Object Storage    | GOOGLE_CLIENT_EMAIL | Email address of the service account |
| GCP Object Storage    | GOOGLE_PROJECT      | GCP project name                     |

All the values above can be found on the QA 1Password Vault. They are passed to the command like `AWS_S3_REGION=value  AWS_S3_KEY_ID=value ... gitlab-qa Test::Instance::Image EE --omnibus-config object_storage_aws`.

#### Scenario - Run Container Registry tests

There are two kinds of Container Registry scenarios.

#### TLS Enabled Registry

* Run the command: `GITLAB_TLS_CERTIFICATE=$(cat /path/to/certificate.crt) gitlab-qa Test::Integration::RegistryTLS EE` 

The TLS certificate used can be found on the GitLab QA [tls_certificates folder](https://gitlab.com/gitlab-org/gitlab-qa/-/blob/master/tls_certificates/gitlab/gitlab.test.crt).

#### Insecure Registry

* Run the command: `gitlab-qa Test::Integration::Registry EE`

This is a preferable way when the instance does not run on HTTPS or there is no access to a TLS certificate of the GitLab instance being tested.

#### Composed Scenario - Run the Container Registry tests against an Object Storage provider

This composes two scenarios by setting up a GitLab instance that has both an Object Storage provider configured and the Registry with TLS enabled.

* Run the command: `GITLAB_TLS_CERTIFICATE=$(cat /path/to/certificate.crt) gitlab-qa Test::Integration::RegistryTLS EE --omnibus-config object_storage`

Note: the command above uses the option `--omnibus-config object_storage` which can be adjusted to `--omnibus-config object_storage_aws` or `--omnibus-config object_storage_gcp` depending on the Object Storage provided for setup.

#### CDN Scenario - Run the Registry with a Google CDN enabled

This is a [single scenario](https://gitlab.com/gitlab-org/gitlab-qa/-/blob/master/lib/gitlab/qa/scenario/test/integration/registry_with_cdn.rb) but it configures the Registry to be insecure, borrowing some of the configuration in the simple Insecure Registry scenario.
To run this scenario ensure that the following credentials are set:

| Scenario              | Variable                    | Description                          |
|-----------------------|-----------------------------|--------------------------------------|
| Registry with a CDN   | GOOGLE_CDN_SIGNURL_KEY      | private key used for signing URLs   |
| Registry with a CDN   | GOOGLE_CDN_SIGNURL_KEY_NAME | name of the key used for signing URLs    |
| Registry with a CDN   | GOOGLE_CDN_LB               | where the Google CDN load balancer is listening |
| Registry with a CDN   | GCS_CDN_BUCKET_NAME         | Name of the bucket set in GCS            |
| Registry with a CDN   | GOOGLE_CDN_JSON_KEY         | JSON key credential                      |

* Run the command (with all the above variables set): `GOOGLE_CDN_LB=... GOOGLE_CDN_SIGNURL_KEY= ... gitlab-qa Test::Integration::RegistryWithCDN EE`

**Which resources it uses and where are they?**

This test setup uses a GCS bucket (separated from the bucket used for GCS Object Storage tests), a Load Balancer with a static IP and
a backend bucket mapped to the CDN-enabled GCS bucket. These resources currently run on GCP `gitlab-qa-resources`.
The `ipfilteredby` is set to `none` by default in this test, meaning all downloads are being redirected to the CDN.

Note: Staging, PreProd, and Production use `ipfilteredby` set to `gcp`. This confirms and covers two possible scenarios of `ipfilteredby`.

#### Scenario - Run Dependency Proxy tests

* Run the command: `gitlab-qa Test::Integration::Registry EE -- qa/specs/features/browser_ui/5_package/dependency_proxy/dependency_proxy_spec.rb --tag registry`


#### Scenario - Run Dependency Proxy on a SAML Group SSO enabled 

* Run the command: `CI=true gitlab-qa Test::Integration::GroupSAML EE -- qa/specs/features/browser_ui/5_package/dependency_proxy/dependency_proxy_sso_spec.rb --tag group_saml`

More information on how to run tests using the gitlab-qa gem can be found on [What Tests Can Be Run](https://gitlab.com/gitlab-org/gitlab-qa/-/blob/master/docs/what_tests_can_be_run.md) docs on the GitLab QA repository.

### FAQ

#### How can I have access to the GitLab QA Vault in 1Password?
There are important variables to run several scenarios listed above. Also when running tests against different environments these variables
are necessary. To have access to this vault please create an [access request](/handbook/business-technology/end-user-services/onboarding-access-requests/access-requests/) to the 1Password GitLab QA Vault.
 
#### I triggered package-and-qa. Where do I find the tests?
If you have an MR and want to make sure it is running the End-to-End tests, please trigger the manual `package-and-qa` job on the pipeline of your MR. After the pipeline runs there will be a note on your MR titled "Allure report" with a `package-and-qa` test report link. 
It is also possible to see which jobs failed in the `package-and-qa` pipeline, just follow the downstream pipelines, and within the `gitlab-qa-mirror` pipeline, access the `packages` job to inspect the result. We also have relevant Package tests running in `object_storage` and `registry` jobs.

In Staging, or other environments [that run full tests](/handbook/engineering/infrastructure/test-platform/debugging-qa-test-failures/#qa-test-pipelines), all the
tests within the `qa/specs/features/browser_ui/5_package` folder can be found running on the `qa-triggers-browser_ui-5_package` job.

#### What is the difference between orchestrated-level scenarios and instance-level scenarios?
Orchestrated-level scenarios are configurations for a GitLab instance and all necessary components required to perform the test. An example would be a GitLab instance with [object storage settings](https://gitlab.com/gitlab-org/gitlab-qa/-/blob/master/lib/gitlab/qa/runtime/omnibus_configurations/object_storage.rb) enabled, using [a Minio component](https://gitlab.com/gitlab-org/gitlab-qa/-/blob/master/lib/gitlab/qa/component/minio.rb).
Instance-level scenarios are the tests scripts in the `qa/qa/specs/` folder.

#### How can I run tests against environments?
To run tests from a local machine is possible by using the intended environment address (i.e `staging.gitlab.com`, `pre.gitlab.com`) in the following way:

`bundle exec bin/qa Test::Instance::All https://staging.gitlab.com -- qa/specs/features/browser_ui/5_package --tag packages`

Each of the environments require different environment variables. These are described in the [GitLab QA documentation](https://gitlab.com/gitlab-org/gitlab-qa/-/blob/master/docs/what_tests_can_be_run.md#testinstancestaging).
The command above runs the local **test code** against Staging.

If the MR has modified test code where these modified tests run only against Staging, then it would be best to trigger manually a [Staging pipeline](https://ops.gitlab.net/gitlab-org/quality/staging/-/pipelines) and pass
the `RELEASE` and `QA_IMAGE` variables. These variables can be found on the MR, after triggering the `package-and-qa` job, under the `qa-test` job. These variables values can be found at the job log.

#### How are the tests filtered to run on a particular job or pipeline?
Not all the tests run in all pipelines. There are some tests running only in Staging or not running against Object Storage providers. This can be found at the top of the test spec:

```ruby
describe 'Container Registry Online Garbage Collection', :registry_gc, :requires_admin, only: { subdomain: %i[pre] } do
```

The `only: {}` metadata defines and filters the environment. Know more about [Execution Context Selection](https://docs.gitlab.com/ee/development/testing_guide/end_to_end/execution_context_selection.html).

#### Can I use the gitlab-qa gem to just do the setup of a GitLab instance locally without running tests?
Yes. There are two useful options that can be passed to the command: `--no-teardown` which ensure the gitlab instance stays up after running tests and `--no-tests` for only setting up the instance without having any test code run.

An example:

`GITLAB_TLS_CERTIFICATE=$(cat /path/to/certificate.crt) gitlab-qa Test::Integration::RegistryTLS EE --no-tests`

Output:

```shell
...
Skipping tests.
The orchestrated docker containers have not been removed.
Docker shell command: `docker ps`
CONTAINER ID  IMAGE                     ... PORTS
fdeffd791b69  gitlab/gitlab-ee:nightly      22/tcp, 443/tcp, 0.0.0.0:32768->443/tcp
````

Runs locally on `https://0.0.0.0:32768` using `https://` because it is TLS enabled.

### Troubleshooting
Please reach out to [your counterpart SET](/handbook/engineering/quality/#individual-contributors) or in the `#quality` channel.

### Helpful Documentation

- [Testing Guide - End-to-End Testing](https://docs.gitlab.com/ee/development/testing_guide/end_to_end/)
- [GitLab QA orchestration tool](https://gitlab.com/gitlab-org/gitlab-qa)
- [Run QA tests against your GDK setup](https://gitlab.com/gitlab-org/gitlab-qa/-/blob/master/docs/run_qa_against_gdk.md)
- [Beginner's Guide to writing End-to-End tests](https://docs.gitlab.com/ee/development/testing_guide/end_to_end/beginners_guide.html)

## Using HackyStack

For ephemeral demos which require an Omnibus instance with an active Container Registry and a project with multiple images/tags automatically provisioned,
we have available a sandbox environment that can be launched and destroyed on demand. To use it:

1. Login to `https://gitlabsandbox.cloud`
2. Select Cloud Account ID `dev-package-container-96a3ff34``
3. Take note of your credentials on the View Credentials tab
4. Click on the Play icon for the `f88b66c5 svistas` environment
5. Input your credentials to access the HackyStack environment
6. Run a CI/CD pipeline (Note that `Deploy` is a manual action that needs to be manually triggered after `Validate` runs)
7. Click on the `Deploy` job after it passes to obtain the URL and access credentials to the demo Omnibus instance
8. Open the `demo-project`
9. The environment can be destroyed by returning to the HackyStack environment and manually triggering the `Destroy` job


