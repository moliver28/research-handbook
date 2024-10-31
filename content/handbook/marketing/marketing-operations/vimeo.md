---
title: "Vimeo"
description: "Vimeo is a video hosting, sharing, creating and services platform. "
---

## About Vimeo

Vimeo is a video hosting, sharing, creating and services platform.

## Access

### Single access

Vimeo is connected to Okta. To request access, [create an access request](/handbook/it/end-user-services/onboarding-access-requests/access-requests/) and use the GitLab user group `gitlab-com/gl-security/corp/helpdesk` to provision you. Make sure to include the business case for why you would like access and tag a team member from brand video. Once provisioned to Vimeo, brand video can adjust your permission set as needed.

### Bulk access

If a team is needing access to Vimeo, please open a [bulk access request](/handbook/it/end-user-services/onboarding-access-requests/access-requests/#individual-or-bulk-access-request) and use the GitLab user group `@gitlab-com/gl-security/corp/helpdesk` to provision you. Once access is granted, please ping `@joanna_c` to update permissions for each user in the group. 

### User Roles

[Managing team members on your account](https://vimeo.zendesk.com/hc/en-us/articles/224818687-Managing-team-members-on-your-account)

1. `Viewers` - Viewers can be invited to specific folders within the account, but they will have limited access to the contents of those folders. They can access the review page, leave notes, and share videos that are within those folders. They do not have the ability to upload, edit, publish, or access any other settings or areas of the account that are meant for working members.
1. `Contributors` - Contributors can be invited to access a specific folder within the account. They'll have the ability to upload, edit, review, share, and publish videos within a folder, but won't have access to any of your other folders or areas of your account. A contributor also won't be able to change the title of a folder, delete a folder, or delete a video from the account. They can view settings of a video in that folder as well as the analytics tab, which has numbers from the past 30 days but won't have access to advanced analytics for the video. Once in the `Video Manager`, Contributors will only be able see the folders to which they have been invited. In addition, contributors can access settings of an archived live event within the folder to which they contribute. Contributors can start a live event to Vimeo if they are using an external encoder via RTMP (after the Owner or Admin creates an event and provides the Contributor with the RTMP URL and Stream Key). **Note:** If the Vimeo account is connected to other social accounts such as Facebook, then any live events the Contributor starts from their encoder will also simulcast to that destination.
1. `Admins` - Admins can help upload and manage all videos, folders, and collections. Admins will not be able to access account settings or payment information. Admins also cannot delete videos; only the account owner can do this. Admins have access to the following features:
   - Creating, managing, and deleting collections
   - Creating, managing, and deleting folders
   - Changing the privacy settings of your videos
   - Viewing advanced analytics of your videos
   - Create live events
   - Adjust privacy settings, embed customization, and interaction tool settings for live events
   - Stream to live events using WebRTC or RTMP from an external encoder
   - End live events
   - Export chat transcripts
1. `Owners` - Only Owners can do the following:
   - Edit and organize the account's profile page
   - Access Simulcast settings
   - Authenticate API-integrated encoders and applications - This means any encoder that allows you to connect to Vimeo by logging in to account directly from the software or application (e.g. Livestream Studio via login, Mevo, Vimeo mobile app, or other third-party direct integrations)
   - Delete live events
   - Access Developer API and create and manage developer apps for their account

## Support

1. `#brand_video` in Slack
1. [Contact Support](https://help.vimeo.com/hc/en-us/contact)
1. [Help Center](https://help.vimeo.com/hc/en-us)

## Training

1. [Onboarding Call (GitLab team - internal use only) 202005](https://drive.google.com/file/d/1k61AoPcGBNtXIUltYEHOk6_9vFBUDGYB/view?usp=sharing)
1. [Training Call (GitLab team - internal use only) 202006](https://drive.google.com/file/d/14jHp_nZGVBml7ipz1ZpeCvuAJInrADdk/view?usp=sharing)
1. [Video School](https://vimeo.com/videoschoolvideos)

## Video Manager

The [video manager](https://vimeo.zendesk.com/hc/en-us/articles/115004610668-The-video-manager) is where all the video uploads are stored and managed.

When you navigate to Vimeo.com, you first land in the video manager (when logged in). The video manager houses all videos uploaded, both public and private, as well as video drafts, showcases, and any live events.

You can also navigate to the `Videos` sidebar menu option to access the video manager.

### Create a Folder

1. Click the `+` icon next to the `Videos` sidebar menu option.
1. Enter a descriptive name for the folder.
1. If you want to share this folder with specific team members, add them by email address or by selecting them from the team members in the account list.
1. In the `Notifications` tab, you can toggle the ability to connect to Slack to send folder notifications so you can track team activity on videos, review pages, and more.
1. When done inputting your folder info and options, click `Create`.

### Video Deletion Policy

Only the `Owner` role has the ability to delete videos in Vimeo. As such, we have a folder in Vimeo named `TO BE DELETED`. If you have a video that you would like to mark for deletion, please move it to this folder. Note that the `Owner` role will delete any videos in this folder that are older than 30 days or upon request.

## Create

[Vimeo Create](https://vimeo.zendesk.com/hc/en-us/articles/360037832151-Vimeo-Create-overview) is Vimeo's new video maker tool. It allows you to easily and quickly create your own video from stock videos, photos, and personal videos. [See the knowledge base article](https://vimeo.zendesk.com/hc/en-us/articles/360037832151-Vimeo-Create-overview) for a full tutorial.

## Upload

Vimeo accepts most video file formats (MP4, MOV, WMV, AVI, and FLV). Vimeo does not accept audio files, image files, or other non-video formats (MP3, WAV, WMA, JPG, and PNG). If you compress your source file prior to upload, follow [these guidelines](https://help.vimeo.com/hc/en-us/articles/12426043233169-Video-and-audio-compression-guidelines). For more information on uploading videos to Vimeo, [see this help article](https://vimeo.zendesk.com/hc/en-us/articles/229838988-Preparing-to-upload).

### Email capture

[Email capture](https://vimeo.zendesk.com/hc/en-us/articles/224819147-Email-capture) can appear before, during, or after a video, with the option to "gate" your video behind the email capture field, or let viewers skip it.

You can set up the email capture screen to appear before, during, or after your embedded videos, then download those email addresses. There is no direct integration between Vimeo and Marketo. You can only set up one email capture screen per video. For example, if you've already chosen to display the email capture screen before your video, you'll no longer see the options to display it during or after in the embed settings. **Note:** Email capture is not supported on Facebook or Twitter.

**Setting up email capture**

1. Navigate to the `Interaction tools` tab in your video's settings.
1. Select to enable email capture before, during, or after your video. If you choose to display the email capture screen before or during your video, you have the option to allow or prevent viewers from skipping the email capture screen. You also have the option to add a custom message, up to 100 characters in length, that will display along with the email capture fields.

**Interaction stats for email capture**

From the stats panel for your video, you can check the number of times the email capture screen has been seen and the number of email addresses submitted for the past 30 days. [Learn more about stats for video interaction tools](https://help.vimeo.com/hc/en-us/articles/12426973464465-Live-analytics-overview).

**Downloading all captured emails as a CSV**

On the `Marketing` tab of `Account Settings`, you can download a CSV of all the emails captured through your embedded videos. The CSV contains the name (if provided), video ID, domain, and date captured associated with each email address. To download the CSV:

1. Click the button below the `Download email addresses` heading. The first time you download the CSV, you will be prompted to accept the following terms:
    - I will only use collected email addresses for marketing purposes.
    - I will not share these email addresses with others.
    - I will comply with CAN-SPAM, CASL, and any other applicable laws.
    - I will provide an unsubscribe mechanism and comply promptly with opt-out requests.

Once you accept, the CSV will download.

**Download captured emails for an individual video**

If you only want the email addresses from one particular video, you can download that CSV by navigating to your video manager. Select the desired video then navigate to `Analytics` > `Interaction` and click `Download email addresses`.

### Cards

[Cards](https://vimeo.zendesk.com/hc/en-us/articles/115007469808-Cards) are a customizable, notification-style layer that you can set to appear during playback and remain on the screen for six seconds.

### End screens

[End screens](https://vimeo.zendesk.com/hc/en-us/articles/115007893267-End-screens) allow you to determine exactly what appears when videos finish playing.

## Privacy Settings Overview

1. `Anyone` - Allow anyone to see this video.
1. `Only me` - Make this video visible to me and no one else
1. `Only people I follow` - Make my videos visible only to people I follow on Vimeo (Note: this setting will make it so that people you follow will see your video in their feeds)
1. `Only people I choose` - I'll select people with whom I want to share this video (Note: this setting will only work for sharing with other Vimeo members you follow)
1. `Only people with a password` - Protect this video with a password (Note: you can share password-protected videos with non-Vimeo members).
1. `Only people with the private link` - Make video visible only to people who have the link. (Your video cannot appear in channels or groups, and any credits you've added will be removed.)
1. `Hide this video from vimeo.com` - This video can be embedded on other sites but can't be viewed on vimeo.com. (Your video cannot appear in channels and groups but can still be added to showcases and portfolios.)

[See more info on privacy settings](https://vimeo.zendesk.com/hc/en-us/articles/224817847-Privacy-settings-overview).

## Showcases

With a [showcase](https://vimeo.zendesk.com/hc/en-us/articles/228908367-Showcases), you can organize videos together to share publicly or privately. A showcase is a great way to distribute a collection of videos to any audience. And with password-protection, you can control exactly who gets to see each one.

### Create a Showcase

1. Click the `+` icon in the left sidebar menu next to `Showcases`.
1. Input a title and description for your showcase.
1. Select the [privacy level](/handbook/marketing/marketing-operations/vimeo/#privacy-settings-overview) for your showcase. The privacy level you select will determine whether you toggle `SEO: Show in Google results` on or off.
1. In the right window pane, click the `Add video` button to add on-demand videos to your showcase. You can also create a [live event](/handbook/marketing/marketing-operations/vimeo/#live-events) for the showcase.
1. In the left sidebar menu, click `Assets`. Here you can add branded assets to your showcase including a logo, thumbnail, and accent color.
1. In the left sidebar menu, click `SEO`. If you toggled `SEO: Show in Google results` off in step 3, disregard this step. If you toggled `SEO: Show in Google results` on, input the site title, description and meta keywords for this showcase. [More on SEO with showcases here](https://vimeo.zendesk.com/hc/en-us/articles/360032785152-Search-Engine-Optimization-SEO-with-showcases).
1. In the left sidebar menu, click `Web`. Toggle on/off the various layout options for your showcase. The right window pane shows a preview of how your showcase will look as you toggle your options.
1. In the `Domain` tab, select `Vimeo URL`. In the right window pane, you can customize the URL of your showcase and then copy the link.
1. In the left sidebar menu, select `Embed` if you are embedding your showcase on the website. Toggle on/off the embed options for your showcase before copying the embed code.
1. Once you've finalized your showcase options, click the `Share` button in the top right navigation. You can copy the link or send it via email with an optional message.

### Custom Domains

A [custom domain](https://vimeo.zendesk.com/hc/en-us/articles/228908367-Showcases#customdomain) can be created for your showcase. If you are interested, please open an issue in marketing ops.

## Analytics

Analytics allow you to access in-depth insights about your videos and your Vimeo account. All members can track overall video performance, and advanced analytics and functionality.

To access video [analytics](https://vimeo.zendesk.com/hc/en-us/articles/224820247-Analytics-overview), hover over `Manage Videos` in the top left navigation menu and click `Analytics`.

[View the knowledge base article](https://vimeo.zendesk.com/hc/en-us/articles/224820247-Analytics-overview) for a full tutorial.

## Integrations

### Okta

Vimeo is integrated with Okta for [access](#access).

### Slack

If there is an interest to pursue the [Slack integration](https://vimeo.zendesk.com/hc/en-us/articles/360001939888-Slack-integration) for your team or project, please open an issue in marketing ops.

### Social Media

[Evaluating](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/3872).

### Google Tag Manager

The following event actions are sent from the player and are [being tracked via Google Tag Manager](https://help.vimeo.com/hc/en-us/articles/22098668654481-Google-Tag-Manager-Integration):

1. load
1. play
1. progress - 25%
1. progress - 50%
1. progress - 75%
1. progress - 100%
1. `emailcapture`
