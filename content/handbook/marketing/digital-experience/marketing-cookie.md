---

title: Marketing Cookies
description: >-
  Learn more about how Digital Experience uses browser cookies.
---

# Marketing cookie

The Digital Experience team uses the `gitlab_user` cookie as a tool to customize content on the `about.gitlab.com` domain.

This cookie determined if a user has an active sesssion within the GitLab product. No user information is passed to the cookie and it expires with the session. This implementation is on `gitlab.com` domain so it will propagate down to all subdomains, including about.gitlab.com. This cookie does not work in review apps within Buyer Experience, so keep that in mind. 

For more information, read the [docs on that](https://docs.gitlab.com/ee/user/profile/#cookies-used-for-sign-in).

Note that this cookie can sometimes not show up for GitLab team members. This does not affect production. Make sure to check with Marketing analytics to see the user breakdown between authenticated and non-authenticated users.

## Related MRs

* Updating marketing cookie: https://gitlab.com/gitlab-org/gitlab/-/merge_requests/131072
* Setting marketing cookie: for logged in users: https://gitlab.com/gitlab-org/gitlab/-/merge_requests/113761


 <figure class="video_container">
   <iframe src="https://www.youtube.com/embed/Nm8wWtoBCTc" frameborder="0" allowfullscreen="true"> </iframe>
 </figure>
