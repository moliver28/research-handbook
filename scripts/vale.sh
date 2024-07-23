
if ! [ -f vale-codequality.json ]; then
  echo "[]" > vale-codequality.json
fi

BRANCH_POINT=$(git merge-base origin/$CI_MERGE_REQUEST_TARGET_BRANCH_NAME origin/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME)
MODIFIED_VALE_FILES=$(git diff --name-only --diff-filter=d $BRANCH_POINT origin/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME | grep '\.vale')
MODIFIED_MD_FILES=$(git diff --name-only --diff-filter=d $BRANCH_POINT origin/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME | grep '\.md$')

## lint all markdown files if .vale files are changed, otherwise only lint the changed markdown files
if [ -n "$MODIFIED_VALE_FILES" ]; then
  echo "Vale files have changed. Linting all markdown file..."
  vale --output=.vale/vale-json.tmpl --minAlertLevel suggestion --glob='{content,assets,layouts}/**/*.md' . > vale-codequality.json
  vale --minAlertLevel warning --output=.vale/vale.tmpl --glob='{content,assets,layouts}/**/*.md' .
elif [ -n "$MODIFIED_MD_FILES" ]; then
  echo "Linting changed files: $MODIFIED_MD_FILES"
  vale --output=.vale/vale-json.tmpl --minAlertLevel suggestion $MODIFIED_MD_FILES > vale-codequality.json
  vale --minAlertLevel error --output=.vale/vale.tmpl $MODIFIED_MD_FILES
else
  echo "No Markdown files to lint."
fi
