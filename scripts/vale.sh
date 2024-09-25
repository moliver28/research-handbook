
if ! [ -f vale-codequality.json ]; then
  echo "[]" > vale-codequality.json
fi

# diff differently depending on if CI environment, fork, or local
if [ -n "$CI_PROJECT_ID" ]; then
    # if CI_PROJECT_ID exists, assume we're in a CI environment
    if [ "CI_MERGE_REQUEST_SOURCE_PROJECT_ID" == "CI_MERGE_REQUEST_PROJECT_ID" ]; then
        # if CI_PROJECT_ID matches the current project, then it's not a fork
        BRANCH_POINT=$(git merge-base origin/$CI_MERGE_REQUEST_TARGET_BRANCH_NAME origin/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME)
        MODIFIED_VALE_FILES=$(git diff --name-only --diff-filter=d $BRANCH_POINT origin/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME | grep '\.vale')
        MODIFIED_MD_FILES=$(git diff --name-only --diff-filter=d $BRANCH_POINT origin/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME | grep '\.md$')
    else
        # assume otherwise it's a fork
        git fetch origin $CI_MERGE_REQUEST_TARGET_BRANCH_NAME
        # Add the fork as a remote and fetch the source branch
        git remote add fork $CI_MERGE_REQUEST_SOURCE_PROJECT_URL
        git fetch fork $CI_MERGE_REQUEST_SOURCE_BRANCH_NAME
        BRANCH_POINT=$(git merge-base origin/$CI_MERGE_REQUEST_TARGET_BRANCH_NAME fork/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME)
        MODIFIED_VALE_FILES=$(git diff --name-only $BRANCH_POINT fork/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME | grep '\.vale')
        MODIFIED_MD_FILES=$(git diff --name-only $BRANCH_POINT fork/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME | grep '\.md$')
        printf "CI_MERGE_REQUEST_TARGET_BRANCH_NAME: $CI_MERGE_REQUEST_TARGET_BRANCH_NAME\nCI_MERGE_REQUEST_SOURCE_PROJECT_URL: $CI_MERGE_REQUEST_SOURCE_PROJECT_URL\nCI_MERGE_REQUEST_SOURCE_BRANCH_NAME: $CI_MERGE_REQUEST_SOURCE_BRANCH_NAME\nBRANCH_POINT: $BRANCH_POINT\n"
        echo "MODIFIED_MD_FILES: $MODIFIED_MD_FILES"
   fi
elif [ -n "$1" ]; then
    # if $1 exists, locally specified a branch to check against
    MODIFIED_VALE_FILES=$(git diff --name-only --diff-filter=d main...$1 | grep '\.vale')
    MODIFIED_MD_FILES=$(git diff --name-only --diff-filter=d main...$1 | grep '\.md$')
else
    echo "No branch specified. If testing locally, specify source branch to check against main."
    exit 1
fi

## lint all markdown files if .vale files are changed, otherwise only lint the changed markdown files
if [ -n "$MODIFIED_VALE_FILES" ]; then
  echo "Vale files have changed. Linting all markdown file..."
  vale --output=.vale/vale-json.tmpl --minAlertLevel suggestion --glob='{content,assets,layouts}/**/*.md' . > vale-codequality.json
  vale --minAlertLevel error --output=.vale/vale.tmpl --glob='{content,assets,layouts}/**/*.md' .
elif [ -n "$MODIFIED_MD_FILES" ]; then
  echo "Linting changed files: $MODIFIED_MD_FILES"
  vale --output=.vale/vale-json.tmpl --minAlertLevel suggestion $MODIFIED_MD_FILES > vale-codequality.json
  vale --minAlertLevel warning --output=.vale/vale.tmpl $MODIFIED_MD_FILES
else
  echo "No Markdown files to lint."
fi
