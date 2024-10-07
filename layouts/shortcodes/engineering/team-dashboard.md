{{- $filterValue := "" }}
{{- $filters := slice }}
{{- $section := false }}

{{- with (.Get "filters") }}
  {{ $filterValue = . }}
  {{- $filters =  slice (dict "name" "team_group" "value" (lower $filterValue) ) }}
{{- end }}

{{- $knownValues := slice "filters" }}
{{- range $k, $v := .Params }}
    {{- if not (in $knownValues $k) }}
        {{$filters = append (dict "name" $k "value" (lower $v)) $filters }}
    {{- end }}
{{- end }}

{{- with (.Get "section") }}
    {{- $section = . }}
    {{- $filters =  slice (dict "name" "development_section" "value" (lower $filterValue) ) }}
{{- end }}

{{- with (.Get "stage") }}
    {{- $section = . }}
    {{- $filters =  slice (dict "name" "stage" "value" (lower $filterValue) ) }}
{{- end }}

### Top Engineering Metrics dashboard

### MR Types dashboard

### Development dashboard

<details>
  <summary><b>Dashboard</b></summary>
</details>

### Infrastructure dashboard

<details>
  <summary><b>Dashboard</b></summary>
</details>

### Quality dashboard

<details>
  <summary><b>Dashboard</b></summary>
</details>

### UX dashboard

<details>
  <summary><b>Dashboard</b></summary>
</details>

### Security dashboard

<details>
  <summary><b>Dashboard</b></summary>
</details>
