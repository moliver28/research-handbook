# frozen_string_literal: true

require 'gitlab-dangerfiles'

Gitlab::Dangerfiles.for_project(self, 'handbook') do |dangerfiles|
  dangerfiles.import_plugins
end

# Reviewer Roulette based on required approvals

def note_for_spin_role(spin, role, category)
  spin.public_send(role)&.markdown_name(author: roulette.team_mr_author) # rubocop:disable GitlabSecurity/PublicSend
end

def markdown_row_for_spin(category, spin)
  maintainer_note = note_for_spin_role(spin, :maintainer, category)

  "| `#{category}` | #{maintainer_note} |"
end

rows = roulette.required_approvals.map do |approval|
  markdown_row_for_spin(approval.category, approval.spin)
end

markdown <<~MARKDOWN
  ## Reviewer Roulette
MARKDOWN

if rows.empty?
  markdown <<~MARKDOWN
    There are no required Code Owner approvals. Please ask an appropriate team member to review the content, or use the [Approvers Merge Request widget](https://docs.gitlab.com/ee/user/project/merge_requests/approvals/rules.html#multiple-approval-rules).
  MARKDOWN
else
  table = <<~MARKDOWN

    | Section | Maintainer |
    | ------- | ---------- |
  MARKDOWN

  markdown(table + rows.join("\n"))

  markdown <<~MARKDOWN
    **Please check reviewer's status!**
    - ![available](https://gitlab-org.gitlab.io/gitlab-roulette/status-svg/_success.svg) Reviewer is available!
    - ![unavailable](https://gitlab-org.gitlab.io/gitlab-roulette/status-svg/_alert.svg) Reviewer is unavailable!

    Please use the [Approvers Merge Request widget](https://docs.gitlab.com/ee/user/project/merge_requests/approvals/rules.html#multiple-approval-rules) in case the suggestion above wasn't useful.
  MARKDOWN
end
