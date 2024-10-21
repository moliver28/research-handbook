---
title: "Secret Detection Service: Monitoring"
---

### When to use this runbook?

This runbook is intended to be used when monitoring the [Secret Detection Service](https://handbook.gitlab.com/handbook/engineering/architecture/design-documents/secret_detection/#phase-2---standalone-secret-detection-service) to identify and mitigate any reliability issues or performance regressions that may occur when it is enabled on Gitlab SaaS.

### What to monitor?

We primarily need to monitor system metrics and recurrent errors raised within the service. Here are the narrowed down list of monitoring targets:

* **Resource Saturation**: Saturation is a measure of what ratio of a finite resource is currently being utilized.
* Aggregated Service Level Indicators(SLIs)
  * **Apdex Score**: Apdex is a measure of requests that complete within a tolerable period of time for the service.
  * **Error Ratio**: Error rates are a measure of unhandled service exceptions per second. Client errors are excluded when possible.
  * **Request Rate**: The operation rate is the sum total of all requests being handle for all components within this service. Note that a single user request can lead to requests to multiple components.
* Recurrent appplication errors raised in the service tracked in the Error Monitoring tool.

### How to monitor the service?

Most of above-mentioned monitoring targets i.e. Resource Saturation and Aggregated SLIs, are available in the [**Service Overview Dashboard**](https://dashboards.gitlab.net/d/secret-detection-main/secret-detection3a-overview?orgId=1).

The recurrent application errors, however, will be available in the [Sentry](https://new-sentry.gitlab.net/organizations/gitlab) tool. **Please Note**: the application error monitoring capability for the service is yet to be integrated. Please refer this [issue](https://gitlab.com/gitlab-org/gitlab/-/issues/499067) to track the completion of the feature. 

Meanwhile, you may refer to the logs for any log messages with `ERROR` levels to look for application-related errors. **Logs** are available [here](https://console.cloud.google.com/run/detail/us-east1/secret-detection/logs?project=gitlab-runway-production).

#### Additional References

* [Documentation](https://gitlab.com/gitlab-org/security-products/secret-detection/secret-detection-service/-/blob/main/README.md?ref_type=heads)

* [Architecture](https://handbook.gitlab.com/handbook/engineering/architecture/design-documents/secret_detection/decisions/004_secret_detection_scanner_service/)

* [Benchmarks](https://gitlab.com/gitlab-org/gitlab/-/work_items/468107)

* [Monitoring](./secret-detection-svc-monitoring.md)
