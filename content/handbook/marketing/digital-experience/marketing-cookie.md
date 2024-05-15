---

title: Marketing Cookies
description: >-
  Learn more about how Digital Experience uses browser cookies.
---

# Marketing cookies

The Digital Experience team use the `gitlab_user` and `gitlab_tier` cookies as a tool to customize content on the `about.gitlab.com` domain. These cookies are set when a user logs into GitLab.com. Both of these cookies expires with the session, or after 2 weeks (whichever comes first).

* The `gitlab_user` cookie determines if a user has an active sesssion within the GitLab product. If they do, this cookie will be present. 

* The `gitlab_tier` cookie contains information for which tier a user belongs to (Free, Premium, Ultimate). This is the only user data that is being passed. **No other user data is passed**.  


This implementation is on the [GitLab product project](https://gitlab.com/gitlab-org/gitlab) for the Enterprise Edition of the product. Thus, it will exist in the `gitlab.com` domain, and it will propagate down to all project subdomains, including about.gitlab.com. The cookies do not work in review apps for other projects such as within Buyer Experience or Blog, so keep that in mind when developing for personalization in the Digital Experience team. If you want to verify that features are being rolled out appropriately, reach out to Matketing Analytics to see if the breakdown looks correct from their end.  

For more information, read the [docs on that](https://docs.gitlab.com/ee/user/profile/#cookies-used-for-sign-in).

Note that this cookie can sometimes not show up for GitLab team members. This does not affect production. Make sure to check with Marketing analytics to see the user breakdown between authenticated and non-authenticated users.

## Related MRs

* Newest MR: https://gitlab.com/gitlab-org/gitlab/-/merge_requests/151323
* Updating marketing cookie: https://gitlab.com/gitlab-org/gitlab/-/merge_requests/131072
* Setting marketing cookie: for logged in users: https://gitlab.com/gitlab-org/gitlab/-/merge_requests/113761


 <figure class="video_container">
   <iframe src="https://www.youtube.com/embed/Nm8wWtoBCTc" frameborder="0" allowfullscreen="true"> </iframe>
 </figure>
