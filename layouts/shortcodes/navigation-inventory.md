This inventory is generated directly from the gitlab-org/gitlab repo.
Last updated at {{ index .Site.Data.navigation "generated_at" }}
from `{{ index .Site.Data.navigation "commit_sha" }}`.

{{ range .Site.Data.navigation.contexts }}
### {{ .title }}

<table>
<tr>
<th>Nav item</th>
<th>Sample URL</th>
{{ range .items }}
{{ $group := . }}
<tr>
<td><strong>{{ .title }}</strong></td>
<td>{{ .link }}</td>
</tr>
{{ range .items }}
<tr>
<td>{{ $group.title }} &gt; <strong>{{ .title }}</strong></td>
<td>{{ .link }}</td>
</tr>
{{ end }}
{{ end }}
</table>
{{ end }}