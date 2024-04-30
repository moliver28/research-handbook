---

title: Marketing Cookies
description: >-
  Learn more about how Digital Experience uses browser cookies.
---

# Marketing cookie

The Digital Experience team uses the `gitlab_user` cookie as a tool to customize content on the `about.gitlab.com` domain. This cookie is set when a user logs into GitLab.com.

This cookie determines if a user has an active sesssion within the GitLab product. If they do, this cookie will be present. The user information passed is to which tier a user belongs to (Free, Premium, Ultimate). **No other user data is passed**. This cookie expires with the session. This implementation is on `gitlab.com` domain so it will propagate down to all subdomains, including about.gitlab.com. This cookie does not work in review apps within Buyer Experience or Blog, so keep that in mind when developing for personalization. If you want to verify that features are being rolled out appropriately, reach out to Matketing Analytics to see if the breakdown looks correct from their end.  

For more information, read the [docs on that](https://docs.gitlab.com/ee/user/profile/#cookies-used-for-sign-in).

Note that this cookie can sometimes not show up for GitLab team members. This does not affect production. Make sure to check with Marketing analytics to see the user breakdown between authenticated and non-authenticated users.

## Related MRs

* Updating marketing cookie: https://gitlab.com/gitlab-org/gitlab/-/merge_requests/131072
* Setting marketing cookie: for logged in users: https://gitlab.com/gitlab-org/gitlab/-/merge_requests/113761


 <figure class="video_container">
   <iframe src="https://www.youtube.com/embed/Nm8wWtoBCTc" frameborder="0" allowfullscreen="true"> </iframe>
 </figure>
