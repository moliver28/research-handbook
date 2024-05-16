## Retrospectives

This page contains executive summaries of retrospectives done by the Secure::static analysis group. The purpose of these summaries is to externalize lessons learned during the retrospective process. 

Access to internal retrospecritive documentation is avilable to the team and their immediate counterparts only.

### 17.0

This milestone focused on a migration of functionality of various analyzers to the semgrep based analyzer and their [deprecation](https://docs.gitlab.com/ee/update/deprecations.html#sast-analyzer-coverage-changing-in-gitlab-170). 

During this milestone the following concerns were raised in no particular order: 

1. Lack of awerness of QA processes that failed during the final moments of the milestone caused confusion.

1. The release process for the sast-rules/semgrep pair is cumbersome and needs streamlining. 

1. Implementation plans were not kept up to date during the milesonte and caused unnecessary difficulty during the review process. 
    
Specific Remedaitions raised during the discussion: 

1. Undertake [maintenance tasks](https://gitlab.com/gitlab-org/gitlab/-/issues/440373) to reduce complexity of semgrep & sast-rules realese.

1. Apply striner review processes for implementation plans, and refer to the [MVC principle](https://handbook.gitlab.com/handbook/product/product-principles/#the-minimal-viable-change-mvc) more frequently