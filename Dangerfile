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
    There are suggestions for the changes in this merge request.
  MARKDOWN
else
  markdown <<~MARKDOWN
    | Section | Maintainer |
    | ------- | ---------- |
  MARKDOWN

  markdown(rows.join("\n"))

  markdown <<~MARKDOWN
    **Please check reviewer's status!**
    - ![available](https://gitlab-org.gitlab.io/gitlab-roulette/status-svg/_success.svg) Reviewer is available!
    - ![unavailable](https://gitlab-org.gitlab.io/gitlab-roulette/status-svg/_alert.svg) Reviewer is unavailable!

    Please refer to [documentation page](https://docs.gitlab.com/ee/development/code_review.html#reviewer-roulette)
  MARKDOWN
end
