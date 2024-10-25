#!/bin/bash
MREPORT=markdownlint-cli2-codequality.json
VREPORT=vale-codequality.json
HREPORT=handbook-codequality.json
LREPORT=linkcheck.json
ERRORS=()
MSG=""
REPO_URL="https://gitlab.com/gitlab-com/content-sites/handbook"

generate_message() {
    MSG+="## ⚠️ Pipeline Failure - Linting Errors\n\n"
    MSG+="One of the linters has reported errors and as a result the pipeline has failed.  Once the pipeline completes, you'll find the code quality report above which can link you to where the error is in your code.  Additionally, below you'll find a table of the errors.  The table has links to the lint rules so you can find more information on how to fix the issue(s).\n\n"
    generate_table
    generate_addition_messages
    MSG+="If you need more help please reach out on Slack in [#mr-buddies](https://gitlab.slack.com/archives/CLM8K5LF4)."
}

generate_table() {
    MSG+="| Rule | File | Line | Error |\n"
    MSG+="|------|------|------|-------|\n"
    for i in $(seq 0 $(($(yq 'length' $MREPORT -o yaml)-1))); do
      ERROR=$(yq ".[$i].check_name" $MREPORT -o yaml | cut -d '/' -f 1)
      URL="https://github.com/DavidAnson/markdownlint/blob/main/doc/Rules.md#$ERROR"
      FILE=$(yq ".[$i].location.path" $MREPORT -o yaml)
      LINE=$(yq ".[$i].location.lines.begin" $MREPORT -o yaml)
      LOC="$REPO_URL/-/blob/$CI_COMMIT_SHA/$FILE#L$LINE"
      DESCRIPTION=$(yq ".[$i].description" $MREPORT -o yaml | cut -d ':' -f 2-)
      ERRORS+=( $ERROR )
      if [[ "$ERROR" ]]; then
        if [[ -z "$URL" ]]; then
          MSG+="| $ERROR | [$FILE]($LOC) | [$LINE]($LOC) | $DESCRIPTION |\n"
        else
          MSG+="| [$ERROR]($URL) | [$FILE]($LOC) | [$LINE]($LOC) | $DESCRIPTION |\n"
        fi
      fi
    done
    for i in $(seq 0 $(($(yq 'length' $VREPORT -o yaml)-1))); do
      if [[ $(yq ".[$i].severity" $VREPORT -o yaml) == "blocker" ]]; then
        ERROR=$(yq ".[$i].rule" $VREPORT -o yaml)
        URL=$(yq ".[$i].link" $VREPORT -o yaml)
        FILE=$(yq ".[$i].location.path" $VREPORT -o yaml)
        LINE=$(yq ".[$i].location.lines.begin" $VREPORT -o yaml)
        LOC="$REPO_URL/-/blob/$CI_COMMIT_SHA/$FILE#L$LINE"
        DESCRIPTION=$(yq ".[$i].description" $VREPORT -o yaml | cut -d ':' -f 2-)
        ERRORS+=( $ERROR )
        if [[ "$ERROR" ]]; then
          if [[ -z "$URL" ]]; then
              MSG+="| $ERROR | [$FILE]($LOC) | [$LINE]($LOC) | $DESCRIPTION |\n"
          else
              MSG+="| [$ERROR]($URL) | [$FILE]($LOC) | [$LINE]($LOC) | $DESCRIPTION |\n"
          fi
        fi
      fi
    done
    for i in $(seq 0 $(($(yq 'length' $HREPORT -o yaml)-1))); do
      ERROR=$(yq ".[$i].check_name" $HREPORT -o yaml | cut -d '/' -f 1)
      FILE=$(yq ".[$i].location.path" $HREPORT -o yaml)
      LINE=$(yq ".[$i].location.lines.begin" $HREPORT -o yaml)
      LOC="$REPO_URL/-/blob/$CI_COMMIT_SHA/$FILE#L$LINE"
      DESCRIPTION=$(yq ".[$i].description" $HREPORT -o yaml | cut -d ':' -f 2-)
      ERRORS+=( $ERROR )
      if [[ "$ERROR" ]]; then
        MSG+="| $ERROR | [$FILE]($LOC) | [$LINE]($LOC) | $DESCRIPTION |\n"
      fi
    done
    MSG+="\n"
}

generate_addition_messages() {
    eval ERRORS=($(printf "%q\n" "${ERRORS[@]}" | sort -u))
    for e in ${ERRORS[@]}; do
        case $e in
            MD009)          MSG+="> 🛑 You have a trailing spaces error.  The [practical handbook edits handbook](https://handbook.gitlab.com/handbook/practical-handbook-edits/) provides more tips, for example [removing trailing whitespaces](https://handbook.gitlab.com/handbook/practical-handbook-edits/#remove-trailing-whitespaces-in-a-merge-request).\n\n"
            ;;
            CODEOWNER)      MSG+="> 🛑 You have marked a handbook page as a controlled document without adding an entry to the controlled-documents section of CODEOWNERS.\n\n"
        esac
    done
    if [ -f "$LREPORT" ] && [ "$(jq 'length > 0' "$LREPORT")" = "true" ]; then
        MSG+="> ⚠️ If you are **renaming, moving, or deleting pages**, please check the Code Quality report, or the hugolint job's artifact files, to see if there are any related broken links.\n\n"
    fi

}

# Create an array of the report variables
reports=("$MREPORT" "$VREPORT" "$HREPORT" "$LREPORT")
# Initialize an array to store non-empty files
non_empty_files=()

# Check each report file exists and is not empty
for report in "${reports[@]}"; do
    if [ -f "$report" ] && [ "$(jq 'length > 0' "$report")" = "true" ]; then
        non_empty_files+=("$report")
    fi
done

# Print the list of non-empty files
if [ ${#non_empty_files[@]} -gt 0 ]; then
    echo "Using combined codequality.json: "
    for file in "${non_empty_files[@]}"; do
        echo "$file "
    done
    jq -s '.[0] + .[1] + .[2]' "${existing_reports[@]}" > codequality.json
    REPORT=codequality.json
else
    echo "All report files are empty."
fi

# TODO Improve error handling https://gitlab.com/gitlab-com/content-sites/docsy-gitlab/-/issues/10
if ! yq $REPORT -o yaml > /dev/null; then
    echo "Error: YQ is unable to read report file. Please post in the [#handbook Slack channel](https://gitlab.enterprise.slack.com/archives/C81PT2ALD) for assistance. Exiting..."
    exit $?
fi

generate_message
echo -e $MSG
