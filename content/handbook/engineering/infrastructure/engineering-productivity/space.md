---
title: 'SPACE: Satisfaction, Performance, Activity, Collaboration, and Efficiency'
---

<!-- As a draft, this is a copy of layouts/shortcodes/performance-indicators.md -->
{{ .Page.Store.Set "hastableau" true -}}
{{- $data := slice }}
{{- $dataURL := printf "https://gitlab.com/gitlab-com/content-sites/handbook/-/raw/draft-space/content/handbook/engineering/infrastructure/engineering-productivity/space.yml" }}
{{- with resources.GetRemote $dataURL }}
  {{- with .Err}}
    <h2>Unable to fetch data</h2>
  {{- else }}
      {{ $data = . | transform.Unmarshal }}
  {{- end }}
{{- end }}

{{- $satisfaction := where $data "category" "eq" "satisfaction" }}
{{- $performance := where $data "category" "eq" "performance" }}

## Satisfaction

<table>
  <thead>
    <tr>
        <th>Name</th>
        <th>Health</th>
        <th>Status</th>
    </tr>
  </thead>
  <tbody>
  {{- range $satisfaction -}}
    <tr>
        <td>{{- $link := printf "%s#%s" $.Page.RelPermalink (anchorize .name) }}
            <a href="{{ $link }}">{{ .name }}</a>
        </td>
        <td>
          {{- with .health.level -}}
            {{- partial "performance-indicators/health-level" . -}}
          {{- else }}
            <span class="badge bg-dark">Unknown</span>
          {{- end -}}
        </td>
        <td>
          {{- with .health.reasons -}}
            {{- partial "performance-indicators/health-reasons" . -}}
          {{- end -}}
        </td>
    </tr>
  {{- end }}
  </tbody>
</table>

## Metrics

{{-  range $satisfaction }}
  <ol>
  {{ range $satisfaction }}
    <li><a href="{{.base_path}}#{{ .name | anchorize }}">{{ .name }}
      {{ with .target}}(target: {{ . }}){{ end }}</a>
        {{$url := index .urls 0}}
        <a href="{{ $url }}">🔗</a>
      {{ else }}
      🐔
      {{ end }}
    </li>
  {{ end }}
  </ol>
{{- end }}
