#!/bin/sh
TODAY=$(date +%Y-%m-%d)

mr_count () {
    echo Performing word count on the Handbook...
    WORDCOUNT=$(find content/handbook -type f -name "*.md"  -exec cat {} + | LC_ALL=C wc -w)
    echo Performing page count on the Handbook...
    PAGECOUNT=$(find content/handbook -type f -name "*.md" | LC_ALL=C wc -l)
    echo Updating counts for the handbook.
    COUNT_FILE=assets/csv/handbook-count.csv
    # Append latest data
    echo $TODAY,$WORDCOUNT,$PAGECOUNT,Live Count >> $COUNT_FILE
}

clone_repo () {
    git config --global user.email "${GIT_USER_EMAIL:-$CI_EMAIL}"
    git config --global user.name "${GIT_USER_NAME:-$CI_USERNAME}"
    git clone https://$PROJECT_USERNAME:$PROJECT_TOKEN@gitlab.com/gitlab-com/content-sites/handbook.git /tmp/handbook
    cd /tmp/handbook
}

quarterly_count () {
    COUNT_FILE=/tmp/handbook/assets/csv/handbook-count.csv
    echo Performing quarterly word count on the Handbook...
    WORDCOUNT=$(find /tmp/handbook/content/handbook -type f -name "*.md"  -exec cat {} + | LC_ALL=C wc -w)
    echo Performing quarterly page count on the Handbook...
    PAGECOUNT=$(find /tmp/handbook/content/handbook -type f -name "*.md" | LC_ALL=C wc -l)
    echo Updating the quartly count for the handbook.
    echo $TODAY,$WORDCOUNT,$PAGECOUNT, >> $COUNT_FILE
}

legacy_handbook_count () {
    echo Starting www-gitlab-com quartly count
    COUNT_FILE=/tmp/handbook/assets/csv/about-count.csv
    REPO="https://gitlab.com/gitlab-com/www-gitlab-com.git"
    # Clone legacy repo
    echo "Cloning the www-gitlab-com repo"
    git clone $REPO /tmp/www-gitlab-com
    echo Performing word count...
    LEGACY_WORD_COUNT=$(find /tmp/www-gitlab-com/sites/handbook/source/handbook -type f \( -name "*.md" -or -name "*.md.erb" \) -exec cat {} + | LC_ALL=C wc -w)
    echo Performing page count...
    LEGACY_PAGE_COUNT=$(grep -l -r "\- TOC" /tmp/www-gitlab-com/* | wc -l)
    echo $TODAY,$LEGACY_WORD_COUNT,$LEGACY_PAGE_COUNT, >> $COUNT_FILE
    echo www-gitlab-com quarterly count complete.
}

push_to_main () {
    cd /tmp/handbook
    git add assets/csv/about-count.csv
    git add assets/csv/handbook-count.csv
    git commit -m "Update handbook word and page counts"
    git push origin main
}

if [ "$RUN_TYPE" = "quarterly" ]; then
    clone_repo
    quarterly_count
    legacy_handbook_count
    push_to_main
else
    mr_count
fi
