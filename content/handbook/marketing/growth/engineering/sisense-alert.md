---
aliases: /handbook/marketing/growth/engineering/sisense_alert.html

title: Sisense alert
description: "How to create a SiSense alert"
---







## What is a SiSense SQL alert?

A [SiSense SQL alert](https://dtdocs.sisense.com/article/sql-alerts#CreateAlert) can run SQL on a schedule and trigger an email when a certain criteria or rule, such as a threshold or target, is met.  This email can optionally [generate a message in a slack channel](https://slack.com/slack-tips/send-email-to-slack).

## How do I create one?

1. Identify the graph that shows the data you want to alert on
1. View the source SQL
1. Expand the source SQL to see the raw SQL if it contains variables.  To do this, select `Query` underneath the SQL.
1. Copy/paste the query into a new `exploration`
1. Change the query to aggregate per day if it aggregates on a longer time frame
1. Determine the range for what is "too high" and what is "too low".  To do this you may want to copy the data using the "multiple file" icon which has the tooltip `Copy to clipboard` and paste it to a Google sheet.
1. Change the query to use a SQL [`case` statement](https://www.postgresqltutorial.com/postgresql-case/) that returns `0` if everything is ok and `1` if it should alert.
1. Choose the bell icon on the far right to show alerts.
1. Paste in your SQL, set the criteria and set the email (which can be directed to a slack channel if desired) to send when the criteria is met.
1. Test your alert by setting the frequency to be often (hourly) and reverse the criteria (so it fires when things are ok) to make sure it works.  After you get the first alert, set the criteria back and confirm an hour later you are no longer receive the alert.

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/lb2iH-dqEe4" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

## Hints

* Every time you change the query in a small way, test to make sure it still works.  The error messages from SiSense are not always clear on what may be broken. Update your SQL iteratively!
* Using one standard deviation from the average is often a good choice for determining if a metric is outside of a normal range
* An effective alert may be, each day, compare the average over the last 7 days to see if it is higher or lower than the average +/- the standard deviation over the last 30 days.


## Psuedo-code example

Query from the graph:
```SQL
select date_trunc(week,created_at_date) as day, count(*) as widgets_created_per_day
from widget_log
where created_at_date < DATEADD(day,-90,CURRENT_DATE()
group by 1
```

Query changed to be daily:

```SQL
select date_trunc(day,created_at_date) as day, count(*) as widgets_created_per_day
from widget_log
where created_at_date < DATEADD(day,-90,CURRENT_DATE()
group by 1
```

Average over the last 7 days
```SQL
select avg(widghets_created_per_day) from (
select date_trunc(day,created_at_date) as day, count(*) as widgets_created_per_day
from widget_log
where created_at_date < DATEADD(day,-7,CURRENT_DATE()
group by 1) as T
```

Average over the last 30 days
```SQL
select avg(widghets_created_per_day) from (
select date_trunc(day,created_at_date) as day, count(*) as widgets_created_per_day
from widget_log
where created_at_date < DATEADD(day,-30,CURRENT_DATE()
group by 1) as T
```

Standard deviation over the last 7 days
```SQL
select stdev(widghets_created_per_day) from (
select date_trunc(day,created_at_date) as day, count(*) as widgets_created_per_day
from widget_log
where created_at_date < DATEADD(day,-7,CURRENT_DATE()
group by 1) as T
```

Example for an alert if metric is above acceptable threshold

_Change the `>` to a `<` for checking it is under (in a separate alert)_

```SQL
select case when
/* copy above average over the last 7 days */
>
(
/* copy above average over the last 30 days */
+
/* copy above standard deviation over the last 30 days */
)
then 'alert'
else 'ok'
end
```

## Where can I find an example?

_Confidential inside GitLab due to specific metrics that were discussed that are not things we can be publicly transparent about_

* [GitLab-data Issue 7534](https://gitlab.com/gitlab-data/analytics/-/issues/7534)
* [Video walkthrough](https://youtu.be/lb2iH-dqEe4)
* [Example alert]( https://app.periscopedata.com/app/gitlab/alert/Create-Stage-Adoption-Rate-Alert/5a437245067f4698bee4d2010fdac649/edit)

