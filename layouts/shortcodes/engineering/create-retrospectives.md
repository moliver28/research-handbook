{{- $groupLabel := "" }}
{{- $groupSlug := "" }}
{{- if .IsNamedParams }}
    {{- with (.Get "group-label") }}
        {{- $groupLabel = . }}
    {{- else }}
        <h2>Requires the group-label argument</h2>
    {{- end }}
    {{- with (.Get "group-slug") }}
        {{- $groupSlug = . }}
    {{- else }}
        <h2>Requires the group-slug argument</h2>
    {{- end }}
{{- else }}
    <h2>Requires arguments for <code>group-label</code> and <code>group-slug</code></h2>
{{- end }}


The Create: {{ $groupLabel }} group conducts [monthly retrospectives in GitLab issues][retros]. These include
the backend team, plus any people from frontend, UX, and PM who have worked with
that team during the release being retrospected.

These are confidential during the initial discussion, then made public in time
for each month's [GitLab retrospective]. For more information, see [team
retrospectives].

[retros]: https://gitlab.com/gl-retrospectives/create-stage/{{ $groupSlug }}/issues?scope=all&utf8=%E2%9C%93&state=all&label_name[]=retrospective
[GitLab retrospective]: /handbook/engineering/workflow/#retrospective
[team retrospectives]: /handbook/engineering/management/group-retrospectives/
