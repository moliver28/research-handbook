#!/bin/bash
REPORT=markdownlint-cli2-codequality.json
ERRORS=()
MSG=""
REPO_URL="https://gitlab.com/gitlab-com/content-sites/handbook"

generate_message() {
    MSG+="## ⚠️ Pipeline Failure - Linting Errors\n\n"
    MSG+="One of the linters has reported errors and as a result the pipeline has failed.  Once the pipeline completes you'll find the code quality report above which can link you to where the error is in your code.  Additionally below you'll find a table of the errors.  The table has links to the markdown lint rules so you can find more information on how to fix the issue(s).\n\n"
    generate_table
    generate_addition_messages
    MSG+="If you need more help please reach out on Slack in [#mr-buddies](https://gitlab.slack.com/archives/CLM8K5LF4) or [#handbook](https://gitlab.slack.com/archives/C81PT2ALD)."
}

generate_table() {
    MSG+="| Rule | File | Line | Error | Help |\n"
    MSG+="|------|------|------|-------|------|\n"
    for i in $(seq 0 $(($(yq 'length' $REPORT -o yaml)-1))); do
      ERROR=$(yq ".[$i].check_name" $REPORT -o yaml | cut -d '/' -f 1)
      DESCRIPTION=$(yq ".[$i].description" $REPORT -o yaml | cut -d ':' -f 2-)
      URL="https://github.com/DavidAnson/markdownlint/blob/main/doc/Rules.md#$ERROR"
      FILE=$(yq ".[$i].location.path" $REPORT -o yaml)
      LINE=$(yq ".[$i].location.lines.begin" $REPORT -o yaml)
      LOC="$REPO_URL/-/blob/$CI_COMMIT_SHA/$FILE#L$LINE"
      ERRORS+=( $ERROR )
      if [[ $ERROR == "Missing CODEOWNER entry" ]]; then
        MSG+="| $ERROR | [$FILE]($LOC) | [$LINE]($LOC) | $DESCRIPTION |  |\n"
      else
        MSG+="| [$ERROR]($URL) | [$FILE]($LOC) | [$LINE]($LOC) | $DESCRIPTION | [➡️]($URL) |\n"
      fi
    done
    MSG+="\n"
}

generate_addition_messages() {
    eval ERRORS=($(printf "%q\n" "${ERRORS[@]}" | sort -u))
    for e in ${ERRORS[@]}; do
        case $e in
            MD009)          MSG+="> 🛑 You have a Trailing spaces error.  The [practical handbook edits handbook](https://handbook.gitlab.com/handbook/practical-handbook-edits/) provides more tips, for example [removing trailing whitespaces](https://handbook.gitlab.com/handbook/practical-handbook-edits/#remove-trailing-whitespaces-in-a-merge-request).\n\n"
            ;;
            CODEOWNER)      MSG+="> 🛑 You have marked a handbook page as a controlled document without adding an entry to the controlled-documents section of CODEOWNERS.\n\n"
        esac
    done
}

if ! yq > /dev/null; then
    echo "Error: You need to have yq install.  Exiting..."
    exit 1
fi

if [ -f handbook-codequality.json ] && [ -f markdownlint-cli2-codequality.json ]; then
    echo "Using combined codequality.json"
    sed 's|\]|,|' handbook-codequality.json >> codequality.json
    sed 's|\[||' markdownlint-cli2-codequality.json >> codequality.json
    REPORT=codequality.json
elif [ -f handbook-codequality.json ]; then
    echo "markdownlint-cli2-codequality.json not present... using handbook-codequality.json only"
    REPORT=handbook-codequality.json
elif [ -f markdownlint-cli2-codequality.json ]; then
    echo "handbook-codequality.json not present... using markdownlint-cli2-codequality.json only"
    REPORT=markdownlint-cli2-codequality.json
else
    echo "Error: unable to find report file ($REPORT).  Exiting..."
    exit 1
fi

if ! yq $REPORT -o yaml > /dev/null; then
    echo "Error: YQ is unable to read file.  Exiting..."
    exit $?
fi

generate_message
echo -e $MSG
