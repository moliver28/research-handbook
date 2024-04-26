{{ $filters := slice }}
{{ $section := false }}
{{- with (.Get "filters") }}
  {{- $filters =  slice (dict "name" "team_group" "value" (lower .) ) }}
{{- end }}
{{- with (.Get "section") }}
    {{- $section = . }}
{{- end }}

#### Cross-functional Backlog

We also track our backlog of issues, including past due security and infradev issues, and total open [System Usability Scale (SUS) impacting](https://about.gitlab.com/handbook/engineering/infrastructure/engineering-productivity/issue-triage/#sus-impacting) issues and bugs.

{{ partial "sisense-with-filter" (dict "dashboard" "1000952" "filters" $filters "visible" (slice "team_group" "stage" "development_section")) }}

#### Merged Merge Request Types

MR Type labels help us report what we're working on to industry analysts in a way that's consistent across the engineering department. The dashboard below shows the trend of MR Types over time and a list of merged MRs.

{{ partial "sisense-with-filter" (dict "dashboard" "976854" "filters" $filters "visible" (slice "team_group" "stage" "development_section")) }}

{{- if not $section }}

#### Flaky Test Issues

Flaky test are problematic [for many reasons](/handbook/engineering/infrastructure/engineering-productivity/flaky-tests/).

{{ partial "sisense-with-filter" (dict "dashboard" "1095543" "filters" $filters "visible" (slice "team_group" "stage" "development_section")) }}

#### Slow RSpec Test Issues

Slow tests are impacting the [GitLab pipeline duration](https://docs.gitlab.com/ee/development/pipelines/index.html).

{{ partial "sisense-with-filter" (dict "dashboard" "1166661" "filters" $filters "visible" (slice "team_group" "stage" "development_section")) }}

{{- end }}
