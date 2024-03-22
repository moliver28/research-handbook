# frozen_string_literal: true

require 'gitlab-dangerfiles'

Gitlab::Dangerfiles.for_project(self, 'handbook') do |dangerfiles|
  dangerfiles.import_plugins

  # For simplicity only enable Reviewer Roulette for now.
  dangerfiles.import_dangerfiles(only: %w[simple_roulette z_retry_link])
end
