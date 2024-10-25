---
title: Social Media Community Management
description: 'Engaging and responding to the community'
twitter_image: /images/opengraph/handbook/social-marketing/social-admin-cm.png
twitter_image_alt: GitLab's Social Media Community Management Handbook Page
twitter_site: 'gitlab'
twitter_creator: 'gitlab'
---

## Community Management is a team effort

In order to communicate and respond to our community effectively, management of responses and conversations is a shared effort between Social Media, [Developer Relations](/handbook/marketing/developer-relations/), [Developer Advocates](/handbook/marketing/developer-relations/developer-advocacy), various experts, and our Support Teams. The two key teams in our processes are the Social and Developer Relations teams. Both act as either the final point of contact or the responsible party to forward messages to the other teams.

## Engaging with team member social Posts

_non-executive, non-evangelist, non-brand personality team members_

GitLab brand channels provide additional impressions/view, comments, and clicks when engaging with team member social posts. It will be more common for the brand social profile to like or comment on a team member post, because this does not interfere with the editorial calendar, while still provding an amplification. We also leave a small amount of space to retweet/quote retweet users (including Team Members) on Twitter, as this is appropriate for the channel and still aids in our editorial efforts. Shares on Facebook or LinkedIn are highly unlikely, due to the low volume of appropriate content available to be calendared on these channels.

Team member social posts that would considered for likes or comments from the brand channel include:

- sharing GitLab content that would also be covered by brand channel posts (blogs, event registrations, etc.)
- mentioning GitLab in a conversation with another user
- sharing security or patch releases

Team member social posts that would be considered for retweeting or sharing include:

- promoting a region-wide (EMEA, APAC, etc) event that is or is not currently led by corporate events
- when the author shares their own content (writer of a blog, speaker at an event, etc.)
- breaking changes that were not otherwise covered with brand channel posts
- living or explaining GitLab values or products in a way that is fun or educational
- any posts at the social team's discretion

It is important to note that team member social posts are considered the same pool of content as the greater community. Who's post gets shared is a subjective response from the social team and does not have a specific or repeatable formula, due to the nature of every day social media activity.

### Communicating team member posts to the social team

While our team will see every post where the brand handle is tagged, the volume creates a delay. Consider sharing the link to your post in the #social_media_action channel for the brand team to engage.

Also, consider sharing the link to your post in #content_updates or #social_media_posts for additional awareness, increasing the possibility for other team members to engage with your post.

## Responding as the company on LinkedIn for any post

Because of limited API access, it's challenging to engage and respond with posts on LinkedIn that do not directly @mention the company page. However, you can use the following method.

Every specific LinkedIn post from a page or a person has its own URL, [like this one](https://www.linkedin.com/posts/wilspillane_open-source-social-media-strategies-from-activity-6674298269985767424-4SEx/). At the end of the URL, there is a string of characters at the end, like `6674298269985767424-4SEx/` from the example above. If you add the following to the end of the post URL when you are an admin of the GitLab LinkedIn page, you'll be able to engage and comment as GitLab.

`?actorCompanyId=5101804`

The URL example from earlier is
`https://www.linkedin.com/posts/wilspillane_open-source-social-media-strategies-from-activity-6674298269985767424-4SEx/`.

Adding the `actorCompanyId` to the url would look like
`https://www.linkedin.com/posts/wilspillane_open-source-social-media-strategies-from-activity-6674298269985767424-4SEx/?actorCompanyId=5101804`

This URL would allow for GitLab to comment and engage.

## Core Social Channel Escalations

This escalation workflow dictates predetermined actions and DRIs for Twitter, Facebook, LinkedIn, and Instagram

| If...                                                                                                                              | Then...                                                                                                                                                                                  | Who owns the response to the community member?                                                                                                                                                                               |
|------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| A user tags GitLab in a question or comment that does not require a SME / seems generic or benign                                  | The social team decides whether or not to engage directly on the social channel. This work will usually be done in Sprout, but can be done natively on-channel.                          | The social team                                                                                                                                                                                      |
| A user doesn't tag GitLab in a question or comment but mentions "GitLab" in plain text                                             | The social team does not engage because we have not been invited to respond with an @ mention                                                                                            | No one - we weren't invited to respond with an @ mention                                                                                                                                             |
| A user tags GitLab in a question or comment that does require a product-related SME                                                | Community Operations responds with directions to the forum                                                                                                                            | Community Operations                                                                                                                                                                               |
| A user tags GitLab in a question or comment that does require a non-product-related SME (think employer brand, remote, etc.)       | The social team decides whether or not to engage directly on the social channel and works with the non-product-related SME to craft a response. This work would usually be done in Slack | A response may come from brand channel (the social team) or from an SME in the space (e.g., we tag Darren in response to a question), but the social team owns the responsibility to find a response |
| A user identifies themselves as a free and open source user and tags GitLab in a question or comment that would require assistance | Community Operations responds with directions to the forum                                                                                                                             | Community Operations                                                                                                                                                                               |
| A user identifies themselves as a paying customer of GitLab and tags GitLab in a question or comment that would require support    | Community Operations forwards to support                                                                                                                                              | Support Team                                                                                                                                                                                       |
| A user doesn't identify themselves at all and tags GitLab in a question or comment that would require assistance                   | Community Operations responds with directions to the forum                                                                                                                             | Community Operations                                                                                                                                                                               |
| We receive a message that breaks our code of conduct or that of the social channel                                                 | The receiver reviews the message reports the message via the native tools to the specific social channel as spam, a troll, etc.                                                          | Whoever the receiver is                                                                                                                                                                              |

## Channel and Source Ownership

This chart defines who owns what channels, sources, and how often they are reviewed.

| Channel                 | Source                                               | Tool                                                  | Who Reviews?                                                                                                                                                                   | Review Cycles                                                          | Justification                                                                                                                                                                                                 | Note                                                                                                                    |
|-------------------------|------------------------------------------------------|-------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------|
| Twitter @GitLab         | Mentions, DMs, Retweets, Quote Tweets, New Followers | Sprout Social, Tweetdeck, Twitter App, Zapier         | Social Team, Community Operations                                                                                                                                              | More than 3 times a day during business; periodically over the weekend | Twitter is for live and recent changes/news. Requires more engagement and community management than other channels.                                                                                           | -                                                                                                                       |
| Facebook                | Wall Posts, Comments, Ad Comments, Private Messages  | Sprout Social, Facebook App, Zapier                   | Social Team, Community Operations                                                                                                                                              | 1-2 times during business; no weekend requirements                     | Facebook does not receive many comments and users shouldn't expect immediate responses.                                                                                                                       | Reviewing items in Sprout doesn't remove the native Facebook notifications, so we'll need one SSOT (likely Sprout)      |
| LinkedIn                | Comments                                             | Sprout Social, LinkedIn App                           | Social Team                                                                                                                                                                    | 1-2 times during business; no weekend requirements                     | While LinkedIn works 7 days a week, our engagement isn't necessary. Most comments are not questions, and users don't have an expectation on a response time for LinkedIn.                                     | responding directly to a user comment doesn't allow for tagging the user in Sprout (could be a LinkedIn API limitation) |
| LinkedIn                | Shares, Mentions                                     | LinkedIn App (not available through a 3rd Party tool) | Social Team                                                                                                                                                                    | 2-3 times a week                                                       | This activity helps with reviewing how GitLab is perceived on the channel, and engagement aids in impressions. However, this is not a high priority activity.                                                 | Requires a manual check several times a week for engagement and awareness factors                                       |
| Instagram               | Comments, Ad Comments, Mentions, and Media Tags      | Sprout Social, Instagram App                          | Social Team                                                                                                                                                                    | 1-2 times during business; no weekend requirements                     | Instagram does not receive many comments and users shouldn't expect immediate responses.                                                                                                                      | -                                                                                                                       |
| Instagram               | DMs                                                  | Instagram App                                         | Social Team                                                                                                                                                                    | 1-2 times a day                                                        | While we don't receive many messages, what we do get is mentions of being in a user story. With only a 24 hour lifecyle, if we want to engage with users who tag us, we'll need to look at least once a day.  | Not available through a 3rd party tool                                                                                  |
| HackerNews              | Mentions                                             | Zapier + Slack                                        | Community Operations, Developer Evangelism, Team Member Experts                                                                                                                | via notification in Slack                                              | no cycle is necessary because notifications happen live                                                                                                                                                       | notifications in #hn-mentions channel, requires a personal account to respond                                           |
| Reddit                  | Mentions                                             | Zapier + ZenDesk                                      | Community Operations, Developer Evangelism, Team Member Experts                                                                                                                | via notification in Slack                                              | no cycle is necessary because notifications happen live                                                                                                                                                       | requires a personal account to respond                                                                                  |
| StackOverflow           | Mentions                                             | Zapier + ZenDesk                                      | Community Operations, Developer Evangelism, Team Member Experts                                                                                                                | via notification in Slack                                              | no cycle is necessary because notifications happen live                                                                                                                                                       | requires a personal account to respond                                                                                  |
| GitLab Forum            | New User Posts                                       | Zapier + Slack                                        | Community Operations, Developer Evangelism, Team Member Experts                                                                                                                | via notification in Slack                                              | no cycle is necessary because notifications happen live                                                                                                                                                       | notifications to the #gitlab-forum channel                                                                              |
| YouTube (both channels) | Comments on our videos                               | YouTube App                                           | We need to identify who owns these channels, whether or not we want comments on, and how often they need to be checked. This has been a crack in our workflows for many teams. | -                                                                      | -                                                                                                                                                                                                             | there is no community management function available in 3rd parties                                                      |

## Community Management on Instagram

It is worth calling out platform specifics for [Instagram](https://www.instagram.com/gitlab) in [our handbook](/handbook/marketing/integrated-marketing/digital-strategy/social-marketing/#instagram-) because the channel does not operate like any other Brand Social Channel. Since Instagram is a visual first platform, we take an editorial approach that prioritizes brand awareness, and 1:1 conversation. This is GitLab's opportunity to share real team member stories, and express our values.

One of the challenges we face as an all-remote organization on Instagram, is that we typically have lower quality images. We have to depend on team members and their cell phone photos. So our approach to each post is to be authentic. Don't filter the image. These are photos of real offices or experiences, and portray actual team members.

<details>
 <summary markdown='span'>
   Sizes & Ratios
 </summary>

When posting to the Instagram feed, you can tap the expand/zoom feature at the bottom left of your photo. This will allow your photo to appear in a 1.91:1 ratio or 1080x608 pixels. If there are no sizing issues, then the photo can remain in a 1:1 ratio or 1080x1080 pixels.

When posting multiple photos to your feed post, think about which image will receive most engagement. That image should display first. Hint: team members and their pets or families engage really well!
</details>

<details>
 <summary markdown='span'>
  Caption
 </summary>

We choose to use long form captions on our Instagram page because it allows us to provide our community an authentic story. Make sure to always give credit when do. This can be simply done by adding - Name, Title at the end.
</details>

<details>
 <summary markdown='span'>
  Post consistently
 </summary>

Instagram is an unrealistic channel for GitLab to post every single day on. That is why we develop themes to live by during a given period. For each campaign launched, you should post once a week.

Always post at THE optimal time. Because we don't post multiple times a day on Instagram, you have the opportunity to schedule each week at the 5 start stime that Sprout Social recommends. This will guarentte that your post is published at the peak time and with the most eyes on it.
</details>

<details>
 <summary markdown='span'>
  Use hashtags
 </summary>

We noticed that posts with a group of hashtags increased the reach of each feed post. So by using hashtags, your post will be discovered through the Explore Page. Each theme or campaign you run, should start with hashtag research. Once you've determined your tags they should be added at the end of every single caption. Don't forget to add a space between the caption and the tags. Otherwise they will be visually distracting.
</details>

<details>
 <summary markdown='span'>
  Respond and engage
 </summary>

Make sure to always respond or engage with your community each chance you get. The GitLab Brand Instagram provides a unique opportunity to foster 1:1 conversation or interaction. Because we don't post every day- it is likely there are only a few comments. That's why you should like or comment on every single one that isn't an automated bot. Remember to have fun and be relatable in these moments. Even a simple "thanks + an emoji!" can go a long way.
</details>

<details>
 <summary markdown='span'>
  Strategically Post Stories
 </summary>

Because we only post weekly, a great way to increase accounts reached, content interactions, and followers is to post a Story related to the feed post you shared recently. After new interactions slow down, post an Instagram story that repackages the content for our audience. If you are sharing a quote, you can [use this template](https://www.canva.com/design/DAEhlR0eLXc/-ILYwspj8NRtfN_-O1yT5g/view?utm_content=DAEhlR0eLXc&utm_campaign=designshare&utm_medium=link&utm_source=sharebutton&mode=preview).
</details>
