# frozen_string_literal: true

require 'gitlab-dangerfiles'

import_dangerfiles = [
  # Local dangerfiles
  'architecture',
  # External dangerfiles
  'z_retry_link'
]

Gitlab::Dangerfiles.for_project(self, 'handbook') do |dangerfiles|
  dangerfiles.import_dangerfiles(only: import_dangerfiles)
end
