module gitlab.com/gitlab-com/content-sites/handbook

go 1.19

// 2024-02-23 @dnsmichi require 0.8.0 because of URL anchor regression in 0.9.0
// Remove when fixed in https://gitlab.com/gitlab-com/content-sites/handbook/-/issues/194
require github.com/google/docsy v0.9.1

require (
	github.com/google/docsy/dependencies v0.7.2 // indirect
	gitlab.com/gitlab-com/content-sites/docsy-gitlab v0.3.14 // indirect
)
