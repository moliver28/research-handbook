---

title: How to create Support Team Meta OKR labels, for a new Fiscal Year
category: References
description: General guide for creating new OKR labels
---

### Overview

Use this when we start a new Fiscal Year and need new OKR labels for our [Support Team Meta issues](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/). See examples of labels for previous years, in the [.triage-policies.yml](https://gitlab.com/gitlab-com/support/support-team-meta/-/blob/master/.triage-policies.yml) file.

### Workflow

1. The new labels are defined by Support Senior Leadership.
1. [Create the new labels](https://gitlab.com/gitlab-com/support/support-team-meta/-/labels) for the Support Team Meta repository.
    1. Label naming follows this format: `FYxx OKR::Our New Okr`. You get to choose the label colours =)
    1. These should be [scoped labels](https://docs.gitlab.com/ee/user/project/labels.html#scoped-labels).
    1. Besides the OKR labels, it is also necessary to create a "Not Applicable" and an "Auto Closing" label for the new fiscal year. In case you're wondering: Yes, these should indeed also be scoped labels.
1. Edit the [.triage-policies.yml](https://gitlab.com/gitlab-com/support/support-team-meta/-/blob/master/.triage-policies.yml) file.
    1. The new labels need to be added under the "forbidden labels:" section. "Forbidden" sounds counter intuitive - just accept it, you're in the right place. Leave all the old labels there too.
    1. Under "actions:"
        1. Edit "labels:" to be the new years' Auto Closing label.
        1. Edit "comment:" to mention the new years' OKR labels.
    1. Under "conditions:", edit "labels:" to be the new years' Auto Closing label.

You are now done - welcome to the new Fiscal Year!
