#!/bin/sh

DATE="<!date^$(date +%s)^at {date_num} {time_secs}|at $(date)>"

curl -X POST -H 'Content-type: application/json' --data "{
\"text\": \"$CI_PROJECT_NAME pipeline <$CI_PIPELINE_URL|#$CI_PIPELINE_ID> triggered by $GITLAB_USER_NAME ($GITLAB_USER_LOGIN) failed $DATE\",
\"mrkdwn\": true
}" $SLACK_WEBHOOK_URL;
