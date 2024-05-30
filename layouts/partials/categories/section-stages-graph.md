{{ $params := . }}
```mermaid
graph TD;
{{ range $stages_k, $stages_v := site.Data.public.stages.stages }}
  {{ if eq $stages_v.section $params.section_key }}
    {{ $params.section_key }}[{{ $params.section_name }} section]-->s_{{ $stages_k }}[{{ $stages_v.display_name }} stage];

    {{ range $group_k, $group_v := $stages_v.groups }}
        s_{{ $stages_k }}-->g_{{ $group_k }}["{{ $group_v.name }}
        group"];
        click g_{{ $group_k }} "/handbook/{{ $group_v.group_link }}";
    {{ end }}
  {{ end }}
{{ end }}
```
_Click on a group name to see more details._