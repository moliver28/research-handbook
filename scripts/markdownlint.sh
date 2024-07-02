if ! [ -f markdownlint-cli2-codequality.json ]; then
  echo "[]" > markdownlint-cli2-codequality.json
fi

BRANCH_POINT=$(git merge-base origin/$CI_MERGE_REQUEST_TARGET_BRANCH_NAME origin/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME)
MODIFIED_MARKDOWN_CONFIG=$(git diff --name-only --diff-filter=d $BRANCH_POINT origin/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME | grep 'markdownlint-cli2.jsonc')
MODIFIED_MD_FILES=$(git diff --name-only --diff-filter=d $BRANCH_POINT origin/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME | grep '\.md$')

## lint all files if markdownlint config changes, otherwise only lint changed markdown files
if [ -n "$MODIFIED_MARKDOWN_CONFIG" ]; then
  echo "Markdown config file changed, running full markdown linting..."
  markdownlint-cli2 "content/**/*.md" "assets/**/*.md" "layouts/**/*.md"
elif [ -n "$MODIFIED_MD_FILES" ]; then
  echo "Running linting only on modified markdown files..."
  markdownlint-cli2 $MODIFIED_MD_FILES
else
  echo "No Markdown files to lint."
fi