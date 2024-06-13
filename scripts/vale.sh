
if ! [ -f vale-codequality.json ]; then
  echo "[]" > vale-codequality.json
fi

BRANCH_POINT=$(git merge-base origin/$CI_MERGE_REQUEST_TARGET_BRANCH_NAME origin/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME)
MODIFIED_MD_FILES=$(git diff --name-only $BRANCH_POINT origin/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME | grep '\.md$')

if [ -n "$MODIFIED_MD_FILES" ]; then
  vale --output=.vale/vale-json.tmpl --minAlertLevel suggestion $MODIFIED_MD_FILES > vale-codequality.json
  vale --minAlertLevel warning --output=.vale/vale.tmpl $MODIFIED_MD_FILES
else
  echo "No Markdown files to lint."
fi
