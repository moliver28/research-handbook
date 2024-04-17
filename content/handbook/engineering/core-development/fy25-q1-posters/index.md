---

title: "FY25-Q1 Core Development Engineering Posters"
description: "Following the Engineering Poster Sessions, we wanted to provide an asynchronous experience to this very valuable session, where GitLab learned a lot about all the initiatives the Engineering organization is focused on."
---


{{ $data := getJSON "data/fy25-q1-coredev-posters.json" }}

{{ range $data }}
  <h3>{{ .title }}</h3>
  <figure class="video_container">
    <iframe src="{{ .video }}" frameborder="0" allowfullscreen="true"> </iframe>
  </figure>
  <iframe src="{{ .pdf }}" width="100%" height="600px" style="border:0;"></iframe>
{{ end }}
