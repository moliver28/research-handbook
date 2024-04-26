{{- $slackChannel := "" }}
{{- $slackURL := "" }}
{{- $groupLabel := "" }}
{{- $groupIssuesURL := "" }}
{{- if .IsNamedParams }}
    {{- with (.Get "slack-channel") }}
        {{- $slackChannel = . }}
    {{- else }}
        <h2>Requires the group-label argument</h2>
    {{- end }}
    {{- with (.Get "slack-url") }}
        {{- $slackURL = . }}
    {{- else }}
        <h2>Requires the group-slug argument</h2>
    {{- end }}
    {{- with (.Get "group-label") }}
        {{- $groupLabel = . }}
    {{- else }}
        <h2>Requires the group-slug argument</h2>
    {{- end }}
    {{- with (.Get "group-issues-url") }}
        {{- $groupIssuesURL = . }}
    {{- else }}
        <h2>Requires the group-slug argument</h2>
    {{- end }}
{{- else }}
    <h2>Requires arguments for <code>group-label</code> and <code>group-slug</code></h2>
{{- end }}


The team is globally distributed and separated by many timezones.  This presents some challenges in how we communicate since our work days only overlap by a couple hours.  We have decided as a team to embrace asynchronous communication because scheduling meetings is difficult to coordinate.  We meet as a team one day per week, on Wednesdays for a team meeting and our team's Engineering Managers schedule regular 1-on-1s.

- We are pro-active about asking questions in advance with the understanding that the turnaround on receiving an answer is usually 1-2 working days, subject to one's workload.
- Our engineering plan and issue boards need to be updated regularly to communicate what stage our work is in.
- Any meetings that we hold need a preset agenda and are recorded for folks who are unable to attend.
- Having a positive work/life balance, despite these challenges, must be a high priority and handled intentionally so no one is routinely starting early or staying late to attend meetings.

#### How to work with us

##### Slack

Daily standup updates are posted to [{{ $slackChannel }}]({{ $slackURL }}).

Feel free to ask us questions directly in this Slack channel and someone will likely get back to you in 1-2 working days.  We will use following emojis to respond to the posted question accordingly:

- <img alt="eyes" src="https://a.slack-edge.com/production-standard-emoji-assets/10.2/apple-large/1f440@2x.png" height="20" width="20"> - `:eyes:` to indicate that one of us has seen it
- <img alt="checkmark" src="https://a.slack-edge.com/production-standard-emoji-assets/10.2/apple-large/2705@2x.png" height="20" width="20"> -- `:white_check_mark:` to indicate that the question has been answered

The verify stage has a separate Slack channel under [`#s_verify`](https://gitlab.slack.com/archives/C0SFP840G), which encompasses the other groups of Verify.

##### GitLab Issues and MRs

Most spontaneous team communiation happens in issues and MRs. Our issues have a group label of [<i class="fa-brands fa-slack"></i> #{{ $groupLabel }}]({{ $groupIssuesURL }}).  You can also tag a team member with `@mention` in the issue if you have someone specific to ask.

If you need to call the attention of the entire group, you can tag `@gitlab-com/<%= gitlab_subgroup %>`.
