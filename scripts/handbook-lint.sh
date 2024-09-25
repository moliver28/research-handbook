# Define colors and styles
normal="\033[0m"
bold="\033[1m"
green="\033[32m"
yellow="\033[93m"
red="\033[31m"
ERROR_FOUND=false

# Create a code-quality report to populate if it doesn't exist
if ! [ -f handbook-codequality.json ]; then
  echo "[]" > handbook-codequality.json
fi

## MEDIA file checks ##
# Pull image and video lists
# diff differently depending on if CI environment, fork, or local
if [ -n "$CI_PROJECT_ID" ]; then
    # if CI_PROJECT_ID exists, we're in a CI environment
    if [ "CI_PROJECT_ID" == "42817607" ]; then
        # if CI_PROJECT_ID matches the current project, then it's not a fork
        BRANCH_POINT=$(git merge-base origin/$CI_MERGE_REQUEST_TARGET_BRANCH_NAME origin/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME)
        git diff --name-only --diff-filter=A $BRANCH_POINT origin/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME  | grep -E '\.(png|jpg|jpeg|gif|svg)$' | sort | uniq > /tmp/IMAGES-added
        git diff --name-only --diff-filter=d $BRANCH_POINT origin/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME | grep -E '\.(png|jpg|jpeg|gif|svg)$' | sort | uniq > /tmp/IMAGES
        git diff --name-only --diff-filter=A $BRANCH_POINT origin/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME  | grep -E '\.(mov|mp4|m4v|avi|mkv|ogg|webm)$' | sort | uniq > /tmp/VIDEOS
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
        git diff --name-only --diff-filter=A $BRANCH_POINT fork/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME  | grep -E '\.(png|jpg|jpeg|gif|svg)$' | sort | uniq > /tmp/IMAGES-added
        git diff --name-only --diff-filter=d $BRANCH_POINT fork/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME | grep -E '\.(png|jpg|jpeg|gif|svg)$' | sort | uniq > /tmp/IMAGES
        git diff --name-only --diff-filter=A $BRANCH_POINT fork/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME  | grep -E '\.(mov|mp4|m4v|avi|mkv|ogg|webm)$' | sort | uniq > /tmp/VIDEOS
   fi
elif [ -n "$1" ]; then
    # if $1 exists, locally specified a branch to check against
    git diff --name-only --diff-filter=A main...$1 | grep -E '\.(png|jpg|jpeg|gif|svg)$' | sort | uniq > /tmp/IMAGES-added
    git diff --name-only --diff-filter=d main...$1 | grep -E '\.(png|jpg|jpeg|gif|svg)$' | sort | uniq > /tmp/IMAGES
    git diff --name-only --diff-filter=A main...$1 | grep -E '\.(mov|mp4|m4v|avi|mkv|ogg|webm)$' | sort | uniq > /tmp/VIDEOS
else
    echo "No branch specified. If testing locally, specify source branch to check against main."
    exit 1
fi

## IMAGE checks
# Check if newly added images are in /static/images
printf "%b" "${bold}Checking that added images are in static/images directory...${normal}"
INCORRECT_IMAGE_PATHS=""
while read -r image; do
  if ! [[ "$image" =~ ^static/images/ ]]; then
    ERROR_FOUND=true
    INCORRECT_IMAGE_PATHS="$INCORRECT_IMAGE_PATHS- $image\n"
    fingerprint=$(sha256sum "$image")
    markdownlinjson=$(cat handbook-codequality.json)
    cat << EOF | jq -s 'add' - > handbook-codequality.json
$markdownlinjson
[
  {
    "type": "issue",
    "check_name": "IMAGES/Incorrect Path",
    "description": "The image \`$image\` is not in the /static/images directory. Please move it to the correct location.",
    "severity": "minor",
    "fingerprint": "$fingerprint",
    "location": {
      "path": "$image",
      "lines": {
        "begin": 0
      }
    }
  }
]
EOF
  fi
done < /tmp/IMAGES-added
if [[ $INCORRECT_IMAGE_PATHS != "" ]]; then
  printf "%b" " ${red}${bold}Failed.${normal}\n"
else
  printf "%b" " ${green}${bold}Success.${normal}\n"
fi

# Check if newly added images are under 500KB
printf "%b" "${bold}Checking that images are less than 500KB in size...${normal}"
LARGE_IMAGE_PATHS=""
while read -r image; do
  IMAGE_SIZE=$(du -k "$image" | cut -f 1)
  if [[ IMAGE_SIZE -ge 500 ]]; then
    ERROR_FOUND=true
    LARGE_IMAGE_PATHS="$LARGE_IMAGE_PATHS- $image\n"
    fingerprint=$(sha256sum "$image")
    markdownlinjson=$(cat handbook-codequality.json)
    cat << EOF | jq -s 'add' - > handbook-codequality.json
$markdownlinjson
[
  {
    "type": "issue",
    "check_name": "IMAGES/Too Large",
    "description": "The image \`$image\` is $IMAGE_SIZE KB, which is more than 500KB. Please make it smaller.",
    "severity": "minor",
    "fingerprint": "$fingerprint",
    "location": {
      "path": "$image",
      "lines": {
        "begin": 0
      }
    }
  }
]
EOF
  fi
done < /tmp/IMAGES
if [[ $LARGE_IMAGE_PATHS != "" ]]; then
  printf "%b" " ${red}${bold}Failed.${normal}\n"
else
  printf "%b" " ${green}${bold}Success.${normal}\n"
fi

## Video checks
# Check if newly added videos are in /static/videos
printf "%b" "${bold}Checking that added videos are in static/videos directory...${normal}"
INCORRECT_VIDEO_PATHS=""
while read -r video; do
  if ! [[ "$video" =~ ^static/videos/ ]]; then
    ERROR_FOUND=true
    INCORRECT_VIDEO_PATHS="$INCORRECT_VIDEO_PATHS- $video\n"
    fingerprint=$(sha256sum "$video")
    markdownlinjson=$(cat handbook-codequality.json)
    cat << EOF | jq -s 'add' - > handbook-codequality.json
$markdownlinjson
[
  {
    "type": "issue",
    "check_name": "VIDEOS/Incorrect Path",
    "description": "The video \`$video\` is not in the /static/videos directory. Please move it to the correct location.",
    "severity": "minor",
    "fingerprint": "$fingerprint",
    "location": {
      "path": "$video",
      "lines": {
        "begin": 0
      }
    }
  }
]
EOF
  fi
done < /tmp/VIDEOS
if [[ $INCORRECT_VIDEO_PATHS != "" ]]; then
  printf "%b" " ${red}${bold}Failed.${normal}\n"
else
  printf "%b" " ${green}${bold}Success.${normal}\n"
fi
# Remove tmp file
rm /tmp/IMAGES-added
rm /tmp/IMAGES
rm /tmp/VIDEOS

## CODEOWNERS checks ##
printf "%b" "${bold}Checking for broken CODEOWNER entries...${normal}"
cat .gitlab/CODEOWNERS | sed "/\[*\]/d" | sed "/^#/d" | sed '/^[[:space:]]*$/d' | sed "/^*/d" | sed "s/[[:space:]].*//" | sed "s~^/~./~" | sort | uniq > /tmp/CODEOWNERS
MISSING_FILE_ENTRY=""
while read ENTRY; do
  if ! [ -e $ENTRY ]; then
    ERROR_FOUND=true
    MISSING_FILE_ENTRY="$MISSING_FILE_ENTRY- $ENTRY\n"
    fingerprint=$(sha256sum .gitlab/CODEOWNERS)
    line=$(grep -n "${ENTRY:1}" .gitlab/CODEOWNERS | cut -d ":" -f 1 | head -n 1)
    markdownlinjson=$(cat handbook-codequality.json)
    cat << EOF | jq -s 'add' - > handbook-codequality.json
$markdownlinjson
[
  {
    "type": "issue",
    "check_name": "CODEOWNERS/Missing file",
    "description": "The file \`$ENTRY\` is listed in CODEOWNERS but the file itself is missing.  Please remove this CODEOWNER entry",
    "severity": "minor",
    "fingerprint": "$fingerprint",
    "location": {
      "path": ".gitlab/CODEOWNERS",
      "lines": {
        "begin": $line
      }
    }
  }
]
EOF
  fi
done < /tmp/CODEOWNERS
if [[ $MISSING_FILE_ENTRY != "" ]]; then
  printf "%b" " ${red}${bold}Failed.${normal}\n"
else
  printf "%b" " ${green}${bold}Success.${normal}\n"
fi
rm /tmp/CODEOWNERS

printf "%b" "${bold}Checking for duplicate CODEOWNER entries...${normal}"
cat .gitlab/CODEOWNERS | sed "/\[*\]/d" | sed "/^#/d" | sed '/^[[:space:]]*$/d' | sed "/^*/d" | sed "s/[[:space:]].*//" | sed "s~^/~./~" > /tmp/CODEOWNERS
DUPLICATE_ENTRIES=""
for d in $(cat /tmp/CODEOWNERS | sort | uniq -d); do
  ERROR_FOUND=true
  DUPLICATE_ENTRIES="$DUPLICATE_ENTRIES- $d\n"
  fingerprint=$(sha256sum .gitlab/CODEOWNERS)
  line=$(grep -n "${d:1}" .gitlab/CODEOWNERS | cut -d ":" -f 1 | head -n 1)
  markdownlinjson=$(cat handbook-codequality.json)
      cat << EOF | jq -s 'add' - > handbook-codequality.json
$markdownlinjson
[
  {
    "type": "issue",
    "check_name": "CODEOWNERS/Duplicate Entry",
    "description": "\`$d\` is listed in CODEOWNERS more than once.  Please remove any duplicate CODEOWNER entries",
    "severity": "minor",
    "fingerprint": "$fingerprint",
    "location": {
      "path": ".gitlab/CODEOWNERS",
      "lines": {
        "begin": $line
      }
    }
  }
]
EOF
done < /tmp/CODEOWNERS
if [[ $DUPLICATE_ENTRIES != "" ]]; then
  printf "%b" " ${red}${bold}Failed.${normal}\n"
else
  printf "%b" " ${green}${bold}Success.${normal}\n"
fi
rm /tmp/CODEOWNERS

BROKEN_OWNERSHIP=""
sed -n '/^\[/,/^$/ p' .gitlab/CODEOWNERS | sed "/\[*\]/d" | sed "/^#/d" | sed '/^[[:space:]]*$/d' | sed "/^*/d" > /tmp/CODEOWNERS
printf "%b" "${bold}Checking if files have broken ownership...${normal}"
while read LINE; do
  if ! echo $LINE | grep -qE "@gitlab-com/content-sites|@gitlab-com/egroup"; then
    ERROR_FOUND=true
    FILE=$(echo $LINE | cut -d " " -f 1)
    BROKEN_OWNERSHIP="$BROKEN_OWNERSHIP- $FILE\n"
    fingerprint=$(sha256sum .gitlab/CODEOWNERS)
    line=$(grep -n "$LINE" .gitlab/CODEOWNERS | cut -d ":" -f 1 | head -n 1)
    markdownlinjson=$(cat handbook-codequality.json)
    cat << EOF | jq -s 'add' - > handbook-codequality.json
$markdownlinjson
[
  {
    "type": "issue",
    "check_name": "CODEOWNERS/Bad ownership",
    "description": "The entry for \`$FILE\` doesn't have the handbook and egroup groups attached to it.  Please add them.",
    "severity": "major",
    "fingerprint": "$fingerprint",
    "location": {
      "path": ".gitlab/CODEOWNERS",
      "lines": {
        "begin": $line
      }
    }
  }
]
EOF
  fi
done < /tmp/CODEOWNERS
if [[ $BROKEN_OWNERSHIP != "" ]]; then
  printf "%b" " ${red}${bold}Failed.${normal}\n"
else
  printf "%b" " ${green}${bold}Success.${normal}\n"
fi
rm /tmp/CODEOWNERS

FM_MISSING_FILES=""
printf "%b" "${bold}Checking for missing controlled document entries in CODEOWNERS...${normal}"
sed -n '/^.*\[Controlled-Documents\]/,$p' .gitlab/CODEOWNERS | tail -n +2 > /tmp/CODEOWNERS
sed -n '/^.*\[Controlled-Documents\]/,$p' .gitlab/CODEOWNERS | sed "/\[*\]/d" | sed "/^#/d" | sed '/^[[:space:]]*$/d' | sed "/^*/d" | sed "s/[[:space:]].*//" > /tmp/CODEOWNERS-files
for f in $(grep -Irl "controlled_document: true" content | sed -e "s|./content/handbook/|/content/handbook/|g"); do
  FOUND=false
  while read FILE; do
    if echo "/$f" | grep -q $FILE; then
      FOUND=true
    fi
  done < /tmp/CODEOWNERS-files
    if [[ $FOUND == "false" ]]; then
            ERROR_FOUND=true
            FM_MISSING_FILES="$FM_MISSING_FILES- $f\n"
            fingerprint=$(sha256sum $f | cut -d " " -f 1)
            line=$(grep -n "controlled_document: true" $f | cut -d ":" -f 1)
            markdownlinjson=$(cat handbook-codequality.json)
            cat << EOF | jq -s 'add' - > handbook-codequality.json
$markdownlinjson
[
  {
    "type": "issue",
    "check_name": "CODEOWNERS/Controlled Document Missing",
    "description": "The file \`$f\` has identified itself as a controlled document in the front matter but is missing an entry in the CODEOWNERS file",
    "severity": "minor",
    "fingerprint": "$fingerprint",
    "location": {
      "path": "$f",
      "lines": {
        "begin": $line
      }
    }
  }
]
EOF
    fi
done
if [[ $FM_MISSING_FILES != "" ]]; then
  printf "%b" " ${red}${bold}Failed.${normal}\n"
else
  printf "%b" " ${green}${bold}Success.${normal}\n"
fi
rm /tmp/CODEOWNERS-files

printf "%b" "${bold}Checking for Controlled Documents that don't identify as such...${normal}"
CO_MISSING_FILES=""
sed -n '/^.*\[Controlled-Documents\]/,$p' .gitlab/CODEOWNERS | sed "/\[*\]/d" | sed "/^#/d" | sed '/^[[:space:]]*$/d' | sed "/^*/d" | sed "s/[[:space:]].*//" | sed "s~^/~./~" > /tmp/CODEOWNERS
while read FILE; do
  for f in $(find $FILE* -type f -name "*.md"); do
    if ! grep -q "controlled_document: true" $f; then
      ERROR_FOUND=true
      CO_MISSING_FILES="$CO_MISSING_FILES- $f\n"
      fingerprint=$(sha256sum $f)
      markdownlinjson=$(cat handbook-codequality.json)
      cat << EOF | jq -s 'add' - > handbook-codequality.json
$markdownlinjson
[
  {
    "type": "issue",
    "check_name": "CODEOWNERS/Missing front matter",
    "description": "The file \`$f\` is listed as a controlled document in CODEOWNERS but is missing the front matter to mark it as a controlled document",
    "severity": "minor",
    "fingerprint": "$fingerprint",
    "location": {
      "path": "$f",
      "lines": {
        "begin": 1
      }
    }
  }
]
EOF
    fi
  done
done < /tmp/CODEOWNERS
if [[ $CO_MISSING_FILES != "" ]]; then
  printf "%b" " ${red}${bold}Failed.${normal}\n"
else
  printf "%b" " ${green}${bold}Success.${normal}\n"
fi
rm /tmp/CODEOWNERS

if [[ $ERROR_FOUND == "true" ]]; then
  printf "%b" "\n${bold}${red}Linting Failed!${normal}${bold} - There are a number of issues with CODEOWNERS and/on Controlled Documents.${normal}\n\n"
  if [[ $INCORRECT_IMAGE_PATHS != "" ]]; then
    printf "%b" "The following images are being added, but are not located in the static/images folder:\n\n"
    printf "%b" "$INCORRECT_IMAGE_PATHS\n"
  fi
  if [[ $LARGE_IMAGE_PATHS != "" ]]; then
    printf "%b" "The following images are being added, but are larger than 500KB each:\n\n"
    printf "%b" "$LARGE_IMAGE_PATHS\n"
  fi
  if [[ $INCORRECT_VIDEO_PATHS != "" ]]; then
    printf "%b" "The following videos are being added, but are not located in the static/videos folder:\n\n"
    printf "%b" "$INCORRECT_VIDEO_PATHS\n"
  fi
  if [[ $MISSING_FILE_ENTRY != "" ]]; then
    printf "%b" "The following files are listed in CODEOWNERS but don't exist in the repo:\n\n"
    printf "%b" "$MISSING_FILE_ENTRY\n"
  fi
  if [[ $DUPLICATE_ENTRIES != "" ]]; then
    printf "%b" "The following Duplicate file entries have been found in the CODEOWNERS file:\n\n"
    printf "%b" "$DUPLICATE_ENTRIES\n"
  fi
  if [[ $BROKEN_OWNERSHIP != "" ]]; then
    printf "%b" "The following entires in CODEOWNERS are missing the handbook and/or egroup groups:\n\n"
    printf "%b" "$BROKEN_OWNERSHIP\n"
  fi
  if [[ $FM_MISSING_FILES != "" ]]; then
    printf "%b" "Controlled documents found but with no CODEOWNER entry.  File(s) affected:\n\n"
    printf "%b" "$FM_MISSING_FILES\n"
  fi
  if [[ $CO_MISSING_FILES != "" ]]; then
    printf "%b" "Controlled documents found in CODEOWNERS but not marked as a controlled document.  File(s) affected:\n\n"
    printf "%b" "$CO_MISSING_FILES\n"
  fi
  exit 1
else
    printf "%b" "\n${green}Success!${normal} - No issues found with CODEOWNERS or Controlled Documents\n"
fi
