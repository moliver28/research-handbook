---
layout: default
title: GitLab's Universal Remote weekly web show
description: "Join us for a weekly web show where we’ll take 30 minutes to talk about the realities of remote work. We’ll tackle the real challenges, ask the hard questions, and of course, we’ll be sure to not take ourselves too seriously."
suppress_header: true
extra_css:
  - meetups.css
  - events.css
  - community.css
  - bl-modal.css
  - video-carousel.css
extra_js:
  - libs/on-scroll.js
  - in-page-nav.js
  - all-clickable.js
  - events.js
  - libs/slick.min.js
  - video-carousel.js
draft: true
unlisted: true
---
.blank-header
  = image_tag "/images/home/icons-pattern-left.svg", class: "image-border image-border-left", alt: "GitLab hero border pattern left svg"
  = image_tag "/images/home/icons-pattern-right.svg", class: "image-border image-border-right", alt: "GitLab hero border pattern right svg"
  .header-content
    %h1 Universal Remote weekly web show: "Universal Remote: Juggling Video Calls & Sweat Pant Pitfalls"
    %p Watch now on YouTube
    = link_to("Watch episodes", "https://www.youtube.com/playlist?list=PLFGfElNsQthay5Dd5OUC9DsNiIl7tzhMW", class: "btn cta-btn purple-reverse")

.wrapper.wrapper--large-fonts
  #content.devops-content.u-margin-top-lg
    .wrapper.container.js-in-page-nav-group{role: "main"}
      .row.u-margin-top-xl.js-in-page-nav-section#attend-a-virtual-meetup
        .col-md-10.col-md-offset-1
          %h2.u-text-brand About GitLab and Universal Remote

          %p Welcome to <a href="https://www.youtube.com/playlist?list=PLFGfElNsQthay5Dd5OUC9DsNiIl7tzhMW">Universal Remote</a>, GitLab's new weekly web show focused on helping teams transition to a fully remote world. GitLab is the largest all-remote company in the world with over 1,200 team members spanning across 65 countries. Since its inception, GitLab has embraced remote work and now has a dedicated team to foster remote best practices. GitLab is dedicated to helping remote teams succeed. We recently published The Remote Playbook and the Remote Work Report, and the Remote team consults with organizations across industries and geographies to help transition teams to virtual workspaces. The sudden shift to remote work can be challenging, especially given current events, so we'll take 30 minutes each week to help your team work efficiently and make the transition as smooth as possible. We'll uncover the tips, tricks, and insights gleaned from GitLab's long history of remote work and from partners in the industry. Our goal is to make remote content digestible, actionable, and fun.

          %iframe{ src: "https://www.youtube.com/embed/videoseries?list=PLFGfElNsQthay5Dd5OUC9DsNiIl7tzhMW", height: "505", width: "853", frameborder: "0", allow: "autoplay; encrypted-media", allowfullscreen: ""}

          %p.u-margin-top-md Below are some topics we will cover this season.

          %ul
            %li How to balance work and home life as a remote worker
            %li How to rapidly transition your teams to a remote environment without losing momentum in your business
            %li How to set up a remote work emergency plan
            %li How to adjust to work-from-home" guide for employees new to working remotely
            %li How to support your team as a remote manager
            %li Why communication is important for successful remote working
            %li Five first steps for newly-remote leaders
            %li Five first steps for newly-remote employees
            %li The foundations of remote work

      .row.u-margin-top-xl.js-in-page-nav-section#organize-a-virtual-meetup
        .col-md-10.col-md-offset-1
          %h2.u-text-brand Our Sister Podcast

          %p
            Our weekly podcast is live! Tune is as we share some of the great insights gleaned from the weekly web show and beyond.

            <div id='buzzsprout-small-player-1127639'></div><script type='text/javascript' charset='utf-8' src='https://www.buzzsprout.com/1127639.js?container_id=buzzsprout-small-player-1127639&player=small'></script>

      .row.u-margin-top-xl.js-in-page-nav-section#resources
        .col-md-10.col-md-offset-1
          %h2.u-text-brand Resources on Remote Work

          %p Please find more remote work resources <a href="/company/culture/all-remote/">here</a>. From the cost savings on office space to more flexibility in employees' daily lives, all-remote work offers a number of advantages to organizations and their people. Find out more about how to get strated or improve team functions using a remote first business model.

          .resource-block.resource-block--resources.u-margin-top-md

            %ul.resource-list.list-unstyled
              %li.resource-list-item
                %h4.resource-title
                  = link_to("Remote Playbook", "https://about.gitlab.com/company/culture/all-remote/")
                %span.resource-author FREE Remote Playbook from the world's largest all-remote company

              %li.resource-list-item
                %h4.resource-title
                  = link_to("Remote Resources", "https://about.gitlab.com/company/culture/all-remote/")
                %span.resource-author GitLab's Guide to Remote Work

.center-horizontal
  %nav
    %ul#pagination
      %li
        %button#previous-event-page-button
          <<
      %li#next-event-page
        %button#next-event-page-button
          >>

.wrapper.community-content
  #content.devops-content.u-margin-top-lg
    .wrapper
      .row.u-margin-bottom-xl
        %h2.u-margin-bottom-sm.text-center
          Previous Episodes
        .video-slider
          - data.video_carousel.each do |video|
            -if video.carousel_identifier.include?("Universal Remote Carousel 1")
              = partial "includes/components/video-carousel/video-item.html.haml", locals: {name: video.name, title: video.title, company: video.company, photourl: video.photourl, videolink: video.video_link}

        - data.video_carousel.each do |video|
          -if video.carousel_identifier.include?("Universal Remote Carousel 1")
            = partial "includes/components/video-carousel/video-carousel-modal.html.haml", locals: {videolink: video.video_link, title: video.title, photourl: video.photourl}
