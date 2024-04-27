#!/bin/bash

TOKEN="glpat-sQXwRBSz4P67yH8q8fTZ"

SAVEIFS=${IFS}   # Save current IFS (Internal Field Separator)
IFS=$'\n'      # Change IFS to newline char

LABELS=( $(grep -Pohr '`~".*?"`' content|sort -u) )

for label in ${LABELS[@]}; do
    label_name=$(echo ${label} | tr -d '~`\"' )
    url_safe_name=$(echo ${label_name} | tr -s ' ' '+' )

    URL="https://gitlab.com/api/v4/projects/278964/labels?search=${url_safe_name}&per_page=100"
    RESPONSE=$(curl --header "PRIVATE-TOKEN: ${TOKEN}"  -s "${URL}")
    NAMES=$(echo ${RESPONSE} | jq .[].name)

    INDEX=0
    FOUND=false
    for name in ${NAMES[@]}; do
        if [ "x${name}" = "x\"${label_name}\"" ]; then
            FOUND=true
            COLOUR=$(echo ${RESPONSE} | jq .[${INDEX}].color)
            TEXT_COLOUR=$(echo ${RESPONSE} | jq .[${INDEX}].text_color)
            LIGHT_TEXT=""

            if [ ! "x${TEXT_COLOUR}" = "x\"#FFFFFF\"" ]; then
                LIGHT_TEXT='light="true" '
            fi

            echo "Name: ${name} - Colour: ${COLOUR} - Text colour: ${TEXT_COLOUR} - Light text: ${LIGHT_TEXT}"

            REPLACEMENT='s/'"${label}"'/{{< label name='"${name}"' color='"${COLOUR}"' '"${LIGHT_TEXT}"'>}}/g'
            $(find content -type f -iname '*.md' -exec sed -i "${REPLACEMENT}" {} \;)
        fi

        ((INDEX++))
    done

    if ! $FOUND ; then
        echo "Unable to find ${label_name} label on GitLab.com"
        echo "${URL}"
        echo "${RESPONSE}"
    fi
done

# LABELS=($LABELS) # split the `names` string into an array by the same name
IFS=$SAVEIFS   # Restore original IFS
