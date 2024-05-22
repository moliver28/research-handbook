#!/bin/zsh

DIRECTORY_TO_CHECK=engineering
START_FILE=0
COUNT=0
for f in $(find engineering/* -type f -name "*.erb"); do
  if (( $COUNT < $START_FILE )); then
    echo "Skipping file $f"
    COUNT=$[$COUNT +1]
    continue
  fi
  if [[ $(basename $f) == _* ]]; then
    echo "$COUNT: $f is partital File... Skipping"
    COUNT=$[$COUNT +1]
    continue
  fi
  echo "$COUNT: Viewing file: $f"
  bat --wrap auto --terminal-width 120 $f
  read -k1 "ANS?Rename file, continue or quit? (y/n/q) "
  echo "\nKey pressed = $ANS"
  case $ANS in
    [Qq]*)    echo "Stopping on file $COUNT :  $f"
              exit 0
              ;;
    [Yy]*)    file_path="$(echo $f | cut -d '.' -f 1).html.md"
              echo "Moving file $f to $file_path"
              git mv $f $file_path
              continue
              ;;
  esac
  COUNT=$[$COUNT +1]
done


