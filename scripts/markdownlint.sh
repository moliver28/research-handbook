if ! [ -f markdownlint-cli2-codequality.json ]; then
  echo "[]" > markdownlint-cli2-codequality.json
fi

BRANCH_POINT=$(git merge-base origin/$CI_MERGE_REQUEST_TARGET_BRANCH_NAME origin/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME)
MODIFIED_MD_FILES=$(git diff --name-only --diff-filter=d $BRANCH_POINT origin/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME | grep '\.md$')

if [ -n "$MODIFIED_MD_FILES" ]; then
  markdownlint-cli2 $MODIFIED_MD_FILES
else
  echo "No Markdown files to lint."
fi