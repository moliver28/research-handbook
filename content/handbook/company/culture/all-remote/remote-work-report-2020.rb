---
layout: developer-survey
title: 'The Remote Work Report 2020'
description: The Global Remote Work Report dissects the state of distributed work and surfaces key motivators for both employees and employers.
twitter_image: '/images/opengraph/remote-report-report.png'
extra_css:
  - remote-work-survey.css
draft: true
unlisted: true
---

%header.navbar.navbar-header-transparent#main-nav{role: "navigation"}
  .navbar-left
    = link_to "/", class: "navbar-brand animated" do
      = partial "includes/logos/wm_web.svg"
  %script{ src: "/javascripts/libs/tweenmax.min.js", type: "text/javascript" }

%main.hero.u-margin-top-lg
  %section.container
    .title-wrapper
      = image_tag "/images/remote-work-survey/cafe.svg", style: "float: right; margin-bottom: 20px; max-width: 300px;"
      %h1 The Remote Work Report by GitLab: The Future of Work is Remote
      %h3 Created to foster collaboration, innovation and evolution in the future of work, the 2020 Global Remote Work Report dissects the state of distributed work and surfaces key motivators for both employees and employers.
      %p This year, over 3,000 respondents – across various industries, roles, and geographic locations – candidly shared their experiences, creating a platform for understanding how remote is changing society, and how individuals interact with their vocation.
      %p By uncovering best practices and unmet needs, The Remote Work Report has synthesized the invaluable contributions from thousands of professionals allowing leaders to remove roadblocks and help teams thrive in a post-office world.
      %p
        Find out more
        %a.anchor-underline{href: "/company/culture/all-remote/"}
          about remote work
        or
        %a.btn.cta-btn.orange{href: "https://page.gitlab.com/rs/194-VVC-221/images/the-remote-work-report-by-gitlab.pdf"}
          Download the full report

%main.key-takeaways
  %section.container
    .row
      .col-md-12
        %h2 Project background

    .row
      .col-md-12
        %h4 Objective
        %p Explore the future of remote working in order to inform future marketing and thought leadership content for GitLab.
        %h4 Methodology
        %p GitLab surveyed 3,000 adult professionals, aged 21 and older, who work remotely or have the option to work remotely and are in roles with digital output from January 30, 2020 to February 10, 2020.
        %h4 Sample
        %p N=3,000
        %ul
          %li Adults 21+ years old
          %li Work remotely or have the option to work remotely  (no outsourced)
          %li Roles that have digital output
          %li Letters and green/red triangle throughout the report indicate significantly higher/lower at 95% confidence.
          %li Research conducted by Savanta

%main.key-takeaways
  %section.container
    .row
      .col-md-12
        %h2 Key Takeaways
    .row
      .col-md-12
        %h4 All-remote Is Surging
        %p All-remote is the purest form of remote work, with each team member on a level playing field. 43% of remote workers feel that it is important to work for a company where <strong>all</strong> employees are remote. Currently, more than 1 in 4 respondents belong to an all-remote organization, with no offices, embracing asynchronous workflows as each employee works in their own native time zone. An added 12% work all-remote with each employee synched to a company-mandated time zone.
        %h4.u-margin-top-md Everyone Can Contribute
        %p The true power of remote teams is unleashed when everyone is empowered to move the organization forward. 56% of remote workers said that everyone in their company can contribute to process, values, and company direction, with 50% also defaulting to shared documents and relying on meetings only as a last resort.
        .image-divider
          = image_tag "/images/remote-work-survey/train.svg"
        %h4.u-margin-top-md Debunking Remote Work Myths
        %p Remote workers aren't all traveling nomads. Findings showed 38% saw lack of commute as a top benefit, with that time instead spent with family (43%), working (35%), resting (36%), and exercising (34%). Employees find themselves to overall be more productive (52%) and efficient (48%), with 74% of remote workers agreeing that their company lives by its values. Additionally, unlike traditionally thought, 52% of remote workers actually travel less.
        %h4.u-margin-top-md Accessibility and Opportunity to Grow/Continue Your Career as a Parent
        %p Benefits of working remotely have enabled employees to focus on their families without having to give up their career. 34% percent found the ability to care for family a top benefit of remote work, in addition to 53% citing schedule flexibility and 38% saying lack of commute. It was also found that, in place of commuting, 43% are able to spend more quality time with family — 55% of respondents having children under 18.
        .image-divider
          = image_tag "/images/remote-work-survey/house.svg"
        %h4.u-margin-top-md Remote Work Levels the Playing Field
        %p 14% of remote workers surveyed have a disability or chronic illness and 83% of those workers were able to work because of remote work. Remote work levels the playing field: it fosters a better sense of work/life harmony and creates opportunity for everyone to contribute in the workplace.
        %h4.u-margin-top-md Remote is Becoming Second Nature
        %p Nearly 90% of those surveyed are satisfied with <em>existing</em> tools and processes that enable remote team communications, and feels that their leadership team provides autonomy while working remotely.
        .image-divider
          = image_tag "/images/remote-work-survey/mountain.svg"
        %h4.u-margin-top-md Remote is Here to Stay
        %p 86% of respondents believe remote work is the future. But it's also the present, as evidenced by 84% of those surveyed saying that they are able to accomplish all of their tasks remotely right now.
        %h4.u-margin-top-md Remote is the Ultimate Hiring Advantage
        %p 62% of respondents said that they would consider leaving a co-located company for a remote role. Why? Everyone values remote benefits differently, from reduced anxiety to improved health to reduced office politics. Said another way, the freedom of remote <strong>universally matters</strong> for a <strong>remarkably diverse array of reasons</strong>.
        .image-divider
          = image_tag "/images/remote-work-survey/beach.svg"
        %h4.u-margin-top-md The Work From Anywhere Opportunity
        %p 47% said that managing at-home distractions were a top challenge. It's time to phase out the phrase "work from home," empowering team members to work from anywhere that they're optimally productive. Reimbursing for co-working spaces and external offices is a good place to start.
        %h4.u-margin-top-md All The Feels
        %p Nearly half of those surveyed consider themselves "Lucky" to work remotely, with Practical, Valued, Smart, and Proud rounding out the top 5. Fewer than 10% associated with the terms Alone, Tired and Misunderstood.
        %h4.u-margin-top-md Remote ≠ Alone
        %p When in-person interactions are intentional, as is the case in a remote setting, they matter more. 82% of remote workers say their company supports in-person gatherings through events, summits, meet-ups, and more. Meanwhile, 66% are already connected to remote work communities.

%main.remote-worker.u-padding-top-xl
  %section.container
    .row
      .col-md-12.u-margin-bottom-sm
        %h2 The Remote Worker
    .row.image-card
      .col-md-4.col-md-offset-1.u-margin-bottom-sm
        = image_tag "/images/remote-work-survey/department.svg", loading: "lazy", alt: "Departments", title:"Departments"
      .col-md-4.col-md-offset-1.u-margin-bottom-sm
        = image_tag "/images/remote-work-survey/title.svg", loading: "lazy", alt: "Title", title:"Title"
      %hr.hr-clear
      .col-md-4.col-md-offset-1.u-margin-bottom-sm
        = image_tag "/images/remote-work-survey/frequency.svg", loading: "lazy", alt: "Frequency of working remote", title:"Frequency of working remote"
      .col-md-4.col-md-offset-1.u-margin-bottom-sm
        = image_tag "/images/remote-work-survey/length.svg", loading: "lazy", alt: "Length of time working remote", title:"Length of time working remote"
      %hr.hr-clear
      .col-md-4.col-md-offset-1.u-margin-bottom-sm
        = image_tag "/images/remote-work-survey/status.svg", loading: "lazy", alt: "Employment status", title:"Employment status"
      .col-md-4.col-md-offset-1.u-margin-bottom-sm
        = image_tag "/images/remote-work-survey/outside.svg", loading: "lazy", alt: "Work from outside home city", title:"Work from outside home city"
      %hr.hr-clear
      .col-md-4.col-md-offset-1.u-margin-bottom-sm
        = image_tag "/images/remote-work-survey/location.svg", loading: "lazy", alt: "Primary work location", title:"Primary work location"
      .col-md-4.col-md-offset-1
        = image_tag "/images/remote-work-survey/country.svg", loading: "lazy", alt: "Residence country", title:"Residence country"

%main.remote-companies.u-padding-top-xl
  %section.container
    .row
      .col-md-12.u-margin-bottom-sm
        %h2 Companies allowing remote work
        %p Out of the companies that allow remote work, the majority have a hybrid approach and 1-in-4 have a 100% remote policy where employees work in their own native time zone.
        %p Companies in the US are more likely to allow employees to work 100% remotely and they work in their own time zone or a company mandated one.
    .row.image-card
      .col-md-9.col-md-offset-1.u-margin-bottom-sm
        = image_tag "/images/remote-work-survey/policy.svg", loading: "lazy", alt: "Company policy on remote work", title:"Company policy on remote work"
      .col-md-9.col-md-offset-1.u-margin-bottom-sm
        = image_tag "/images/remote-work-survey/percent.svg", loading: "lazy", alt: "% of company working remote", title:"% of company working remote"
      .col-md-4.col-md-offset-1.u-margin-bottom-sm
        = image_tag "/images/remote-work-survey/attitudes.svg", loading: "lazy", alt: "Attitudes on remote working", title:"Attitudes on remote working"
      .col-md-4.col-md-offset-1.u-margin-bottom-sm
        = image_tag "/images/remote-work-survey/ability.svg", loading: "lazy", alt: "% of remote workers with chronic illness or disability", title:"% of remote workers with chronic illness or disability"
      .col-md-9.col-md-offset-1
        = image_tag "/images/remote-work-survey/benefits.svg", loading: "lazy", alt: "Benefits of working remote", title:"Benefits of working remote"

%main.remote-challenges.u-padding-top-xl
  %section.container
    .row
      .col-md-12.u-margin-bottom-sm
        %h2 Challenges and feelings
        %p It is no surprise that managing at-home distraction is one of the biggest challenges with working remotely. Collaboration with colleagues/clients and isolation are second and third biggest challenges.
    .row.image-card
      .col-md-4.col-md-offset-1.u-margin-bottom-sm
        = image_tag "/images/remote-work-survey/challenges.svg", loading: "lazy", alt: "Challenges", title:"Challenges"
      .col-md-4.col-md-offset-1
        = image_tag "/images/remote-work-survey/feelings.svg", loading: "lazy", alt: "Feelings", title:"Feelings"

%main.not-an-option.u-padding-top-xl
  %section.container
    .row
      .col-md-12.u-margin-bottom-sm
        %h2 If remote work is not an option
        %p Almost half of remote workers would be willing to resume commuting. However, 36% of them are not and they would search for a new remote role elsewhere. Interestingly, those who are younger than 55 are significantly more likely to search for a new remote role.
    .row.image-card
      .col-md-9.col-md-offset-1
        = image_tag "/images/remote-work-survey/options.svg", loading: "lazy", alt: "If remote working is not an option", title:"If remote working is not an option"

%main.remote-relocation.u-padding-top-xl
  %section.container
    .row
      .col-md-12.u-margin-bottom-sm
        %h2 Relocation
    .row.image-card
      .col-md-4.col-md-offset-1.u-margin-bottom-md
        = image_tag "/images/remote-work-survey/likelihood.svg", loading: "lazy", alt: "Likelihood to relocate", title:"Likelihood to relocate"
      .col-md-4.col-md-offset-1
        = image_tag "/images/remote-work-survey/reasons.svg", loading: "lazy", alt: "Reasons", title:"Reasons"

%main.company-remote.u-padding-top-xl
  %section.container
    .row
      .col-md-12.u-margin-bottom-sm
        %h2 Company and remote work
    .row.image-card
      .col-md-4.col-md-offset-1.u-margin-bottom-md
        = image_tag "/images/remote-work-survey/benefits-employers.svg", loading: "lazy", alt: "Benefits to the employers", title:"Benefits to the employers"
      .col-md-4.col-md-offset-1.u-margin-bottom-md
        = image_tag "/images/remote-work-survey/contribution.svg", loading: "lazy", alt: "Contribution, communication, and reimbursement", title:"Contribution, communication, and reimbursement"
      %hr.hr-clear
      .col-md-4.col-md-offset-1.u-margin-bottom-md
        = image_tag "/images/remote-work-survey/stats.svg", loading: "lazy", alt: "Statistics", title:"Statistics"
      .col-md-4.col-md-offset-1
        = image_tag "/images/remote-work-survey/support.svg", loading: "lazy", alt: "Support and connection", title:"Support and connection"

%main.remote-demographics.u-padding-top-xl
  %section.container
    .row
      .col-md-12.u-margin-bottom-sm
        %h2 Demographics
    .row.image-card
      .col-md-2.u-margin-bottom-sm
        = image_tag "/images/remote-work-survey/age.svg", loading: "lazy", alt: "Age distribution", title:"Age distribution"
      .col-md-2.col-md-offset-1.u-margin-bottom-sm
        = image_tag "/images/remote-work-survey/ethnicity.svg", loading: "lazy", alt: "Ethnicity", title:"Ethnicity"
      .col-md-2.col-md-offset-1.u-margin-bottom-sm
        = image_tag "/images/remote-work-survey/marital.svg", loading: "lazy", alt: "Marital status", title:"Marital status"
      .col-md-2.col-md-offset-1.u-margin-bottom-sm
        = image_tag "/images/remote-work-survey/caregiver.svg", loading: "lazy", alt: "Caregiver status", title:"Caregiver status"
      %hr.hr-clear
      .col-md-2.u-margin-bottom-sm
        = image_tag "/images/remote-work-survey/usa.svg", loading: "lazy", alt: "Household income USA", title:"Household income USA"
      .col-md-2.col-md-offset-1.u-margin-bottom-sm
        = image_tag "/images/remote-work-survey/uk.svg", loading: "lazy", alt: "Household income UK", title:"Household income UK"
      .col-md-2.col-md-offset-1.u-margin-bottom-sm
        = image_tag "/images/remote-work-survey/canada.svg", loading: "lazy", alt: "Household income Canada", title:"Household income Canada"
      .col-md-2.col-md-offset-1.u-margin-bottom-sm
        = image_tag "/images/remote-work-survey/australia.svg", loading: "lazy", alt: "Household income Australia", title:"Household income Australia"
      %hr.hr-clear
      .col-md-2.u-margin-bottom-sm
        = image_tag "/images/remote-work-survey/family.svg", loading: "lazy", alt: "Family composition", title:"Family composition"
      .col-md-2.col-md-offset-1
        = image_tag "/images/remote-work-survey/gender.svg", loading: "lazy", alt: "Gender split", title:"Gender split"

%main.remote-firmographics.u-padding-top-xl
  %section.container
    .row
      .col-md-12.u-margin-bottom-sm
        %h2 Firmographics
    .row.image-card
      .col-md-4.col-md-offset-1.u-margin-bottom-md
        = image_tag "/images/remote-work-survey/industry.svg", loading: "lazy", alt: "Industry", title:"Industry"
      .col-md-4.col-md-offset-1
        = image_tag "/images/remote-work-survey/number.svg", loading: "lazy", alt: "Number of employees", title:"Number of employees"

%main.end-ctas.u-padding-top-lg.u-padding-bottom-md.u-margin-top-md.purplebg{style: "text-align: center;"}
  %section.container
    .row
      .col-md-12.u-margin-bottom-sm
        %h2 Thanks for reading
        %p
          Find out more
          %a.anchor-underline{href: "/company/culture/all-remote/"}
            about remote work
          or
        %p
          %a.btn.cta-btn.orange{href: "https://page.gitlab.com/rs/194-VVC-221/images/the-remote-work-report-by-gitlab.pdf"} Download the full report

%script{src: "/javascripts/image-lazy-load.js", type: "text/javascript"}
%script{type: "text/javascript"}
  :plain
    imageLazyLoad();
