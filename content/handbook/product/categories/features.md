---

title: "Features by Group"
---







# Features by Group
This page is meant to showcase the features by tier across GitLab's Product Hierarchy.

<% data.sections.each do |sectionKey, section| %>
## <%= section.name %> Section

  <% data.stages.stages.select{|stageKey,stage| stage.section==sectionKey}.each do |stageKey, stage| %>
### <%= stage.display_name %>

    <% if stage.groups %>
      <% stage.groups.each do |groupKey, group| %>
        <% groupLine=[] %>
        <% groupLine << "Slack Channel: [#{group.slack.channel}](https://gitlab.slack.com/app_redirect?channel=#{group.slack.channel})" if group&.slack&.channel %>
        <% groupLine << "Slack Alias: @#{group.slack.alias}" if group&.slack&.alias %>
        <% groupLine << "GitLab Group: @#{group.gitlab_group}" if group&.gitlab_group %>
        <% groupLine << "[Handbook](/handbook/#{group.handbook})" if group&.handbook %>
        <% groupLine << "Product Management: #{team_links_from_group(group: group.pm_team_tag)}" if group.pm_team_tag %>
        <% groupLine << display_users_group("Product Manager", group.pm) if group.pm %>
        <% groupLine << display_users_group("Product Marketing Manager", group.pmm) if group.pmm %>
        <% groupLine << display_users_group("Staff Product Designer", group.spd) if group.spd %>
        <% groupLine << display_users_group("Product Designer", group.ux) if group.ux %>
        <% groupLine << display_users_group("Engineering Manager", group.em) if group.em %>
        <% groupLine << display_users_group("Fullstack Manager", group.fullstack_managers) if group.fullstack_managers %>
        <% groupLine << display_users_group("Backend Engineering Manager", group.backend_engineering_manager) if group.backend_engineering_manager %>
        <% groupLine << display_users_group("Frontend Engineering Manager", group.frontend_engineering_manager) if group.frontend_engineering_manager %>
#### <%= "#{stage.display_name}:#{group.name}" %> Group
<%= "#{groupLine.join(' \\| ')}" if groupLine %>
        <% if group.categories %>

| Category | Features in Core | Features in Premium | Features in Ultimate |
|:---------|:-----------------|:--------------------|:---------------------|
          <% group.categories.each do |category_key| %>
            <% category = Gitlab::Homepage::Category.all!.find{|category| category.key == category_key} %>
            <% ultimateList=[] %>
            <% premiumList=[] %>
            <% coreList=[] %>
            <% if category.features? %>
              <% category.features.sort_by { |feature| feature[:title] }.each do |feature| %>
                <% ultimateList << "[#{feature.title}](#{feature.link})" if feature.gitlab_ultimate && !feature.gitlab_premium %>
                <% premiumList << "[#{feature.title}](#{feature.link})" if (feature.gitlab_premium || feature.gitlab_starter) && !feature.gitlab_core %>
                <% coreList << "[#{feature.title}](#{feature.link})" if feature.gitlab_core %>
              <% end %>
            <% end %>
            <%# coreList = coreList.map { |item|  "<li>#{item}</li>" } %>
            <%= "| **[#{category.name}](#{category.best_link})** | #{coreList.join('<br /><br />')} | #{premiumList.join('<br /><br />')} | #{ultimateList.join('<br /><br />')} | " %>
          <% end %>
        <% end %>

      <% end %>

    <% end %>
  <% end %>

<% end %>

<%= partial("includes/product/categories-names") %>
