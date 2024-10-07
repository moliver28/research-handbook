if ! [ -f markdownlint-cli2-codequality.json ]; then
  echo "[]" > markdownlint-cli2-codequality.json
fi

# diff differently depending on if CI environment, fork, or local
if [ -n "$CI_PROJECT_ID" ]; then
    # if CI_PROJECT_ID exists, assume we're in a CI environment
    if [ "$CI_PROJECT_ID" == "42817607" ]; then
        # if CI_PROJECT_ID matches the current project, then it's not a fork
        BRANCH_POINT=$(git merge-base origin/$CI_MERGE_REQUEST_TARGET_BRANCH_NAME origin/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME)
        MODIFIED_MARKDOWN_CONFIG=$(git diff --name-only --diff-filter=d $BRANCH_POINT origin/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME | grep 'markdownlint-cli2.jsonc')
        MODIFIED_MD_FILES=$(git diff --name-only --diff-filter=d $BRANCH_POINT origin/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME | grep '\.md$')
    else
        # assume otherwise it's a fork
        git fetch origin $CI_MERGE_REQUEST_TARGET_BRANCH_NAME
        # Add the fork as a remote and fetch the source branch
        git remote add fork $CI_MERGE_REQUEST_SOURCE_PROJECT_URL
        git fetch fork $CI_MERGE_REQUEST_SOURCE_BRANCH_NAME
        BRANCH_POINT=$(git merge-base origin/$CI_MERGE_REQUEST_TARGET_BRANCH_NAME fork/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME)
        MODIFIED_MARKDOWN_CONFIG=$(git diff --name-only $BRANCH_POINT fork/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME | grep 'markdownlint-cli2.jsonc')
        MODIFIED_MD_FILES=$(git diff --name-only $BRANCH_POINT fork/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME | grep '\.md$')
        printf "CI_MERGE_REQUEST_TARGET_BRANCH_NAME: $CI_MERGE_REQUEST_TARGET_BRANCH_NAME\nCI_MERGE_REQUEST_SOURCE_PROJECT_URL: $CI_MERGE_REQUEST_SOURCE_PROJECT_URL\nCI_MERGE_REQUEST_SOURCE_BRANCH_NAME: $CI_MERGE_REQUEST_SOURCE_BRANCH_NAME\nBRANCH_POINT: $BRANCH_POINT\n"
        echo "MODIFIED_MD_FILES: $MODIFIED_MD_FILES"
   fi
elif [ -n "$1" ]; then
    # if $1 exists, locally specified a branch to check against
    MODIFIED_MARKDOWN_CONFIG=$(git diff --name-only --diff-filter=d main...$1 | grep 'markdownlint-cli2.jsonc')
    MODIFIED_MD_FILES=$(git diff --name-only --diff-filter=d main...$1 | grep '\.md$')
else
    echo "No branch specified. If testing locally, specify source branch to check against main."
    exit 1
fi

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
