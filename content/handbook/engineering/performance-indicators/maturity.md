---
title: Engineering Function Performance Indicators Maturity
draft: true
---

## Summary

This page contains a table of performance indicators order by their maturity (ascending) so we can understand which ones we need to focus on building. Maturity has to do with the state of the automation, not the metric itself.

## Other PI Pages

{{% include "includes/performance_indicator_links.md" %}}

## Maturity Legend

{{% include "includes/performance-indicator-maturities.md" %}}

## Performance Indicators by Maturity

<!-- Depricating as original code is broken as gives all departments
<table>
    <tr>
        <td>Name</td>
        <td>Organization</td>
        <td>Maturity</td>
        <td>Reason(s)</td>
    </tr>
    <% performance_indicators_by_maturity_level.each do |pi| %>
    <tr>
        <td><%= pi.name %></td>
        <td><%= pi.org %></td>
        <td><%= color_code_maturity(pi_maturity_level(pi)) %></td>
        <td><ul><% pi_maturity_reasons(pi).each do |reason| %>
          <li><%= reason %></li>
        <% end %></ul></td>
    </tr>
    <% end %>
<table>
--->
