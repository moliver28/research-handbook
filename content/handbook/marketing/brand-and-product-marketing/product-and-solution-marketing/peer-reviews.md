---
title: Peer Reviews
suppress_header: true
extra_css:
  - press.css
---

.blank-header
  = image_tag "/images/home/icons-pattern-left.svg", class: "image-border image-border-left", alt: "GitLab hero border pattern left svg"
  = image_tag "/images/home/icons-pattern-right.svg", class: "image-border image-border-right", alt: "GitLab hero border pattern right svg"
  .header-content
    %h1 Peer Reviews
    %p Check out what people are saying

.gitlab-content-container.margin-top50
  .content
    .content-section
      - data.proofpoints.each do |review,review_comments |
        %h4
          = review
          <hr>
        - review_comments.each do |pp, index|
          %li
            = succeed ',' do
              %a{ href: "#{pp.quotelink}", target: "_blank" }
                = pp.quote
            = succeed ',' do
              = pp.role
            = succeed ',' do
              = pp.industry
            = succeed ',' do
              = pp.csize
            = pp.region
        <hr>
