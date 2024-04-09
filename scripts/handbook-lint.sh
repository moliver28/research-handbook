# Define colors and styles
normal="\033[0m"
bold="\033[1m"
green="\033[32m"
yellow="\033[93m"
red="\033[31m"
ERROR_FOUND=false

# If markdownlint passed without issue we'll need to create a
# a code-quality report to populate
if ! [ -f handbook-codequality.json ]; then
  echo "[]" > handbook-codequality.json
fi

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
done
if [[ $DUPLICATE_ENTRIES != "" ]]; then
  printf "%b" " ${red}${bold}Failed.${normal}\n"
else
  printf "%b" " ${green}${bold}Success.${normal}\n"
fi
rm /tmp/CODEOWNERS

BROKEN_OWNERSHIP=""
sed -n '/^.*\[Controlled-Documents\]/,$p' .gitlab/CODEOWNERS | sed "/\[*\]/d" | sed "/^#/d" | sed '/^[[:space:]]*$/d' | sed "/^*/d" > /tmp/CODEOWNERS
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
rm /tmp/CODEOWNERS

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
    rm handbook-codequality.json
fi
