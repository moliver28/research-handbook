#!/bin/zsh

# Stop on error
set -e

# Define colors and styles
normal="\033[0m"
bold="\033[1m"
green="\e[32m"
yellow="\e[93m"
red="\e[31m"

# Globals
HANDBOOK_REPO=$(git rev-parse --show-toplevel)
DIRECTORY_TO_SPLIT=NOSET
export FILTER_BRANCH_SQUELCH_WARNING=1

# Command line options
DUBDUBDUB_REPO=$(git rev-parse --show-toplevel)/../www-gitlab-com
IS_HANDBOOK=false
IS_COMPANY=false
IS_ENGINEERING=false
IS_MARKETING=false
SECTION=NOSET
TITLE=NOTSET
ICON=NOTSET
REPORT_OUT=NOTSET
USE_FILTER_REPO=false
TMP_REPO=/tmp/gitlab-migration
# SECTION=job-families
# TITLE="Job Families"
# ICON="fa-solid fa-users"

usage() {
    echo -e "Usage:"
    echo -e "  ${bold}${red}-H  --handbook${normal}               Indicates a handbook section is being moved rather than a site"
    echo -e "  ${bold}${red}-s  --section${normal}                Section directory name"
    echo -e "  ${bold}${red}-t  --tittle${normal}                 Human readable title of the section being moved"
    echo -e "  ${bold}${red}-i  --icon${normal}                   FontAwesome icon for new handbook entry"
    echo -e "  ${bold}${red}-r  --www-rero${normal}               The location of the www-gitlab-com repo"
    echo -e "  ${bold}${red}-o  --out${normal}                    The place to output the completion report normally ~/Desktop/\$SECTION-migration-report.md"

    echo -e "  ${bold}${red}-v  --version${normal}                Shows version details"
    echo -e "  ${bold}${red}-h  --help${normal}                   Shows this usage message"
}

version() {
    echo "Handbook Migration Script"
    echo "(c) GitLab 2022"
    echo "Licensed under the MIT License"
}

# Process command line arguments
while [ "$1" != "" ]; do
    case $1 in
        -H | --handbook)            IS_HANDBOOK=true
                                    ;;
        -C | --company)             IS_COMPANY=true
                                    ;;
        -E | --engineering)         IS_ENGINEERING=true
                                    ;;
        -M | --marketing)           IS_MARKETING=true
                                    ;;
        -s | --section)             shift
                                    SECTION=$1
                                    ;;
        -t | --title)               shift
                                    TITLE=$1
                                    ;;
        -i | --icon)                shift
                                    ICON=$1
                                    ;;
        -r | --www-repo)            shift
                                    DUBDUBDUB_REPO=$1
                                    ;;
        -T | --temp-loc)            shift
                                    TMP_REPO=$1
                                    ;;
        -g | --filter-repo)         USE_FILTER_REPO=true
                                    echo -e "${bold}Using Git Filter Repo (experimental)...${normal}"
                                    ;;
        -o | --out)                 shift
                                    REPORT_OUT=$1
                                    ;;
        -v | --version)             version
                                    exit
                                    ;;
        -h | --help)                usage
                                    exit 0
                                    ;;
        * )                         echo -e "Unknown option $1...\n"
                                    usage
                                    exit 1
    esac
    shift
done

# Check for required arguments
if [[ $SECTION == "NOTSET" ]]; then
  echo -e "${red}${bold}Error:${normal}  Section to migratte not set.  Exiting..."
  exit 1
fi

if [[ $TITLE == "NOTSET" ]]; then
  echo -e "${red}${bold}Error:${normal}  Title of section to migratte not set.  Exiting..."
  exit 1
fi

if [[ $IS_HANDBOOK == false && $IS_COMPANY == false && $IS_ENGINEERING == false ]]; then
  if [[ $ICON == "NOTSET" ]]; then
    echo -e "${red}${bold}Error:${normal}  Icon of section to migratte not set.  Exiting..."
    exit 1
  fi
fi

# Check report output directory
if [[ $REPORT_OUT == "NOTSET" ]]; then
  if [ -d ~/Desktop ]; then
    REPORT_OUT=~/Desktop/$SECTION-migration-report.md
  else
    REPORT_OUT=~/$SECTION-migration-report.md
  fi
else
  touch $REPORT_OUT
  if [! -f $REPORT_OUT ]; then
    echo -e "${red}${bold}Error:${normal} Unable write to report output location ($REPORT_OUT). Exiting..."
    exit 1
  fi
fi

# check for directories
if [ ! -d $DUBDUBDUB_REPO ]; then
    echo -e "${red}${bold}Error:${normal} Unable located the dubdubdub directory $DUBDUBDUB_REPO. Exiting..."
    exit 1
fi

BRANCH_NAME=add-$SECTION-to-handbook
if [[ $IS_HANDBOOK == true ]]; then
    DIRECTORY_TO_SPLIT=sites/handbook/source/handbook/$SECTION
    NEW_SECTION=content/handbook/$SECTION
elif [[ $IS_COMPANY == true ]]; then
        DIRECTORY_TO_SPLIT=sites/uncategorized/source/company/$SECTION
        NEW_SECTION=content/handbook/company/$SECTION
elif [[ $IS_ENGINEERING == true ]]; then
        DIRECTORY_TO_SPLIT=sites/handbook/source/handbook/engineering/$SECTION
        NEW_SECTION=content/handbook/engineering/$SECTION
elif [[ $IS_MARKETING == true ]]; then
        DIRECTORY_TO_SPLIT=sites/handbook/source/handbook/marketing/$SECTION
        NEW_SECTION=content/handbook/marketing/$SECTION
else
    DIRECTORY_TO_SPLIT=sites/uncategorized/source/$SECTION
    NEW_SECTION=content/$SECTION
fi

if [ ! -d $DUBDUBDUB_REPO/$DIRECTORY_TO_SPLIT ]; then
 echo -e "${red}${bold}Error:${normal} Unable located the handbook section to migrate. Exiting..."
     exit 1
 fi

# Make sure we're on Master and we have have all the latest commits for handbook
echo -e "${bold}Making sure both repos are up to date...${normal}"

cd $HANDBOOK_REPO
git checkout main
git pull
# Make sure we're on Master and we have have all the latest commits for dubdubdub
cd $DUBDUBDUB_REPO
git checkout master
git pull

# Prepare directories
echo -e "${bold}Making a copy of the www-gitlab-com repo directory...${normal}"
mkdir -p $TMP_REPO
TMP_REPO=$TMP_REPO/$(echo $DUBDUBDUB_REPO |rev| cut -d '/' -f 1|rev)
cp -r $DUBDUBDUB_REPO $TMP_REPO

echo -e "${bold}Switch to copy of www-gitlab-com at ${TMP_REPO}...${normal}"
cd $TMP_REPO

if [[ $USE_FILTER_REPO == "true" ]]; then
  echo -e "${bold}Performing git filter repo... this might take a few minutes...${normal}"
  git remote rm origin
  git filter-repo --preserve-commit-encoding --force --path $DIRECTORY_TO_SPLIT
else
  # subtree split the directories
  echo -e "${bold}Performing git subtree split... this might take a few minutes...${normal}"
  git remote rm origin
  git filter-branch --subdirectory-filter $DIRECTORY_TO_SPLIT -- --all

  git filter-branch -f --index-filter 'git ls-files -s | sed -e "s/\t\"*/&'$SECTION'\//" |
      GIT_INDEX_FILE=$GIT_INDEX_FILE.new \
          git update-index --index-info &&
   mv "$GIT_INDEX_FILE.new" "$GIT_INDEX_FILE"' HEAD

   # Clean up everything outside of the content and .git directories
   echo -e "${bold}Cleaning up www-gitlab-com repo before commit and migration...${normal}"
   for i in $(/bin/ls -a); do
       case $i in
       .)              continue
                       ;;
       ..)             continue
                       ;;
       .git)           continue
                       ;;
       $SECTION)      continue
                       ;;
       *)
           rm -rf $i
       esac
   done
fi


# Migrate the content from dubdubdub to handbook using git pull
# This preserves the git history of all the files we're pulling in
echo -e "${bold}Performing migration from www-gitlab-com copy to handbook...${normal}"
cd $HANDBOOK_REPO
git checkout -b $BRANCH_NAME
git remote add $SECTION $TMP_REPO
git pull $SECTION master --allow-unrelated-histories --no-edit


if [[ $USE_FILTER_REPO == "true" ]]; then
  if [[ $IS_HANDBOOK == true ]]; then
    NEW_SECTION_PATH=content/handbook/$SECTION
    git mv sites/handbook/source/handbook/$SECTION content/handbook/
    rmdir sites/handbook/source/handbook sites/handbook/source sites/handbook sites
  elif [[ $IS_COMPANY == true ]]; then
    NEW_SECTION_PATH=content/handbook/company/$SECTION
    git mv sites/uncategorized/source/company/$SECTION content/handbook/company/
    rmdir sites/uncategorized/source/company sites/uncategorized/source sites/uncategorized sites
  elif [[ $IS_ENGINEERING == true ]]; then
    NEW_SECTION_PATH=content/handbook/engineering/$SECTION
    git mv sites/handbook/source/handbook/engineering/$SECTION content/handbook/engineering/
    rmdir sites/handbook/source/handbook/engineering sites/handbook/source/handbook sites/handbook/source sites/handbook sites
  elif [[ $IS_MARKETING == true ]]; then
    NEW_SECTION_PATH=content/handbook/marketing/$SECTION
    git mv sites/handbook/source/handbook/marketing/$SECTION content/handbook/marketing/
    rmdir sites/handbook/source/handbook/marketing sites/handbook/source/handbook sites/handbook/source sites/handbook sites
  else
    NEW_SECTION_PATH=content/$SECTION
    git mv sites/uncategorized/source/$SECTION content/
    rmdir sites/uncategorized/source sites/uncategorized sites
  fi
else
  if [[ $IS_HANDBOOK == true ]]; then
    NEW_SECTION_PATH=content/handbook/$SECTION
    git mv $SECTION content/handbook/
  elif [[ $IS_COMPANY == true ]]; then
    NEW_SECTION_PATH=content/handbook/company/$SECTION
    git mv $SECTION content/handbook/company/
  elif [[ $IS_ENGINEERING == true ]]; then
    NEW_SECTION_PATH=content/handbook/engineering/$SECTION
    git mv $SECTION content/handbook/engineering/
  elif [[ $IS_MARKETING == true ]]; then
    NEW_SECTION_PATH=content/handbook/marketing/$SECTION
    git mv $SECTION content/handbook/marketing/
  else
    NEW_SECTION_PATH=content/$SECTION
    git mv $SECTION content/
  fi
fi

if [ -f $NEW_SECTION_PATH/index.html.md ]; then
  git mv $NEW_SECTION_PATH/index.html.md $NEW_SECTION_PATH/_index.md
elif [ -f $NEW_SECTION_PATH/index.html.erb ]; then
  git mv $NEW_SECTION_PATH/index.html.erb $NEW_SECTION_PATH/_index.md
else
  echo -e "${bold}Creating index page for new content...${normal}"
  # Create an index page so we can view the content
  cat << EOF > $NEW_SECTION_PATH/_index.md
---
title: $TITLE
cascade:
  type: docs
menu:
  main:
    name: $TITLE
    pre: '<i class="$ICON"></i>'
---
EOF
fi

# Run markdownlint to try to fix as many errors as possible

echo -e "${bold}Runnig markdownlint in fix mode...${normal}"
sed -i '' -e 's~"fix": false,~"fix": true,~g' .markdownlint-cli2.jsonc
sed -i '' -e 's~fix: false~fix: true~g' .markdownlint.yaml
# Disable fail on error as we're expecting markdown lint to still have errors
set +e
if which markdownlint > /dev/null; then
    markdownlint -f  "content/**/*.md"
else
  docker run -v ${PWD}:/workdir davidanson/markdownlint-cli2:next -f "content/**/*.md"
fi
set -e
sed -i '' -e 's~"fix": true,~"fix": false,~g' .markdownlint-cli2.jsonc
sed -i '' -e 's~fix: true~fix: false~g' .markdownlint.yaml

# Then add the migrated section to the markdownlintignore file
# We'll clean up markdownlint issues once the migration is complete
if [[ $IS_COMPANY == true ]]; then
  echo "content/handbook/company/$SECTION/**/*.md" >> .markdownlintignore
  sed -i '' "s~\"ignores\": \[~\"ignores\": \[\n    \"content/handbook/company/$SECTION/**/*.md\",~g" .markdownlint-cli2.jsonc
elif [[ $IS_ENGINEERING == true ]]; then
  echo "Skipping mdlintignore as already have a blanket one for engineering"
elif [[ $IS_MARKETING == true ]]; then
  echo "Skipping mdlintignore as already have a blanket one for marketing"
# elif [[ $IS_HANDBOOK == true ]]; then
#   echo "content/handbook/$SECTION/**/*.md" >> .markdownlintignore
#   sed -i '' "s~\"ignores\": \[~\"ignores\": \[\n    \"content/handbook/$SECTION/**/*.md\",~g" .markdownlint-cli2.jsonc
# else
#   echo "content/$SECTION/**/*.md" >> .markdownlintignore
#   sed -i '' "s~\"ignores\": \[~\"ignores\": \[\n    \"content/$SECTION/**/*.md\",~g" .markdownlint-cli2.jsonc
fi

# Commit the result and raise an MR against the new handbook repo
echo -e "${bold}Commiting changes and rasing a new MR...${normal}"
git add .
git commit -m "Migrate $SECTION from www-gitlab-com to handbook"

# Raise the MR using glab cli
MR_TITLE="Migrated $SECTION from www-gitlab-com to here"
MR_DESCRIPTION="
This MR is the result of a subtree split and git pull from www-gitlab-com.  We have run markdown lint in fix mode
to fix most markdown liniting errors although a number will still persist.  We have updated links which point to
\`/handbook\` and \`/company\` to point to the full URLs on the Handbook.
"
HANDBOOK_MR_OUTPUT=$(glab mr create --push --no-editor -y -b main -a jamiemaynard -l "handbook::operations" -t "$MR_TITLE" -d "$MR_DESCRIPTION")
echo $HANDBOOK_MR_OUTPUT

if [[ $IS_MARKETING == "true" || $IS_ENGINEERING == "true" ]]; then
  echo "Skipping cleaning up www-gitlab-com"
  echo -e "${bold}Cleaning up the copy of www-gitlab-com repo...${normal}"
  rm -rf /tmp/gitlab-migration
  cat << EOF >> $REPORT_OUT
---
title: $TITLE
Description: Migration report for moving the handbooks $SECTION section
---

## Migration Report for "$TITLE"

**Section:** $SECTION

**Completed:** $(date)

Please complete the following tasks:

- [ ] Review the MR in handbook for the new content
  - MR Link: [$HANDBOOK_MR_OUTPUT]($HANDBOOK_MR_OUTPUT)
- [ ] Move files in to place
- [ ] Convert .erb files to markdown and shortcodes
- [ ] Fix outstanding markdown lint errors (optional)
- [ ] Merge MR for \`handbook\`

EOF
  cat $REPORT_OUT
  exit 0
fi

echo -e "${bold}Moving on to clean up of www-gitlab-com repo...${normal}"
cd $DUBDUBDUB_REPO
# Setup redirects in dubdubdub
echo -e "${bold}Setting up redirects in www-gitlab-com...${normal}"
git checkout -b removing-$SECTION-and-adding-redirects


if [[ $IS_COMPANY == true ]]; then
  REDIRECT_SOURCE=/company/$SECTION
  REDIRECT_TARGET=https://handbook.gitlab.com/handbook/company/$SECTION
elif [[ $IS_ENGINEERING == true ]]; then
  REDIRECT_SOURCE=/handbook/engineering/$SECTION
  REDIRECT_TARGET=https://handbook.gitlab.com/handbook/engineering/$SECTION
elif [[ $IS_MARKETING == true ]]; then
  REDIRECT_SOURCE=/handbook/marketing/$SECTION
  REDIRECT_TARGET=https://handbook.gitlab.com/handbook/marketing/$SECTION
elif [[ $IS_HANDBOOK == true ]]; then
  REDIRECT_SOURCE=/handbook/$SECTION
  REDIRECT_TARGET=https://handbook.gitlab.com/handbook/$SECTION
else
  REDIRECT_SOURCE=/$SECTION
  REDIRECT_TARGET=https://handbook.gitlab.com/$SECTION
fi

# Replace existing redirects with new URL
gsed -i -e "s~target: $REDIRECT_SOURCE~target: $REDIRECT_TARGET~g" data/redirects.yml

# Add new redirect for migrated content
cat << EOF >> data/redirects.yml
- sources: $REDIRECT_SOURCE
  target: $REDIRECT_TARGET
  comp_op: '~'
EOF

# Add entry to codeowners for migrated content
sed -i '' -e "s~\[handbook-migration\]~[handbook-migration\]\n/$DIRECTORY_TO_SPLIT/ @jamiemaynard @marshall007~g" .gitlab/CODEOWNERS

# Remove old content and replace with a README.md
echo -e "${bold}Removing migrated content from www-gitlab-com...${normal}"
git rm -r $DIRECTORY_TO_SPLIT/*
mkdir -p $DIRECTORY_TO_SPLIT
cat << EOF > $DIRECTORY_TO_SPLIT/README.md
# $TITLE has been migrated

This handbook content has been migrated to the new handbook site and as such this directory
has been locked from further changes.

Viewable content: [$REDIRECT_TARGET]($REDIRECT_TARGET)
Repo Location: [https://gitlab.com/gitlab-com/content-sites/handbook/-/tree/main/$NEW_SECTION_PATH](https://gitlab.com/gitlab-com/content-sites/handbook/-/tree/main/$NEW_SECTION_PATH)

If you need help or assitance with this please reach out to @jamiemaynard (Developer/Handbooks) or
@marshall007 (DRI Content Sites).  Alternatively ask your questions on slack in [#handbook](https://gitlab.slack.com/archives/C81PT2ALD)

EOF

echo -e "${bold}Committing changes and raising a new MR on www-gitlab.com...${normal}"
git add .
git commit -m "Removed migrated $SECTION handbook content"
MR_TITLE="Remove and clean up $SECTION following migration"
MR_DESCRIPTION="
This MR adds redirects for the $SECTION section of the handbook that has been migrated.
It removes all migrated code and replaces the content with a README.md advising
where this section of the handbooks code has moved to and where to get help.
"
WWW_MR_OUTPUT=$(glab mr create --push --no-editor -y -b master -a jamiemaynard -l "handbook::operations" -t "$MR_TITLE" -d "$MR_DESCRIPTION")
echo $WWW_MR_OUTPUT

echo -e "${bold}Cleaning up the copy of www-gitlab-com repo...${normal}"
rm -rf /tmp/gitlab-migration

cat << EOF >> $REPORT_OUT
---
title: $TITLE
Description: Migration report for moving the handbooks $SECTION section
---

## Migration Report for "$TITLE"

**Section:** $SECTION

**Completed:** $(date)

Please complete the following tasks:

- [ ] Review the MR in handbook for the new content
  - MR Link: [$HANDBOOK_MR_OUTPUT]($HANDBOOK_MR_OUTPUT)
- [ ] Move files in to place
- [ ] Convert .erb files to markdown and shortcodes
- [ ] Fix outstanding markdown lint errors (optional)
- [ ] Merge MR for \`handbook\`
- [ ] Check redirects are going to work correctly
  - If a redirect won't work add it to the \`layoutss/index.redirects\` file
  - Alternatively add it to the aliases section in the pages frontmatter
- [ ] Review the MR in \`www-gitlab-com\` for the removal of the old content
  - MR Link: [$WWW_MR_OUTPUT]($WWW_MR_OUTPUT)
- [ ] Merge MR for \`wwww-gitlab-com\`
- [ ] Advise on Slack the content has been successfully migrated

EOF

cat $REPORT_OUT
