#!/bin/bash

# Script Arguments
MSG=$1
NOTE_USER_ID=$CI_BOT_USER_ID # could update this to an argument passed to the script

# Expected Environment Varaibles
#        GITLAB_TOKEN  | The users GitLab token.
#        CI_PROJECT_ID | The GitLab project id.
# CI_MERGE_REQUEST_IID | The GitLab merge request IID.
#       CI_BOT_USER_ID | The Danger Bot user id.

# Log In to glab CLI https://gitlab.com/gitlab-org/cli
glab auth login -t $GITLAB_TOKEN

# Search for any existing notes by our Danger Bot user.
note_id=`glab api projects/$CI_PROJECT_ID/merge_requests/$CI_MERGE_REQUEST_IID/notes | jq -c ".[] | select( .author | .id | contains($CI_BOT_USER_ID)) | .id"`

# If the note already exists, update the message to reduce MR notes.
if [ ! -z "$note_id" ]; then
  echo "Found existing note with id: $note_id"
  # TODO: test that this works
  glab api projects/$CI_PROJECT_ID/merge_requests/$CI_MERGE_REQUEST_IID/notes/$note_id -f body=$MSG
else
  echo "Creating new note with violations..."
  glab mr note --unique $CI_MERGE_REQUEST_IID -m "$MSG"
fi
