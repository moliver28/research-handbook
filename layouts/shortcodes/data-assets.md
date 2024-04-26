{{ range site.Data.public.data_assets }}
### {{ .title }}

{{ .description | markdownify }}
{{ end }}
