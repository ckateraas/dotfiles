#! /usr/bin/env bash
set -o allexport

# Set default value for SINCE_DATE
ARGS="$@"
SINCE_DATE=${ARGS:-"yesterday"}

DATE_FORMAT="+%d%b"

echo "All commits between"
figlet "$SINCE_DATE & today"
echo

function commits_for_branch {
  COMMAND="git --no-pager log $1 --oneline --decorate --no-merges --after $(date -d $SINCE_DATE $DATE_FORMAT) --before $(date $DATE_FORMAT)"
  LOGS=$($COMMAND)
  if [[ ! -z "$LOGS" ]]; then
    $COMMAND
  fi
}

git branch -r | tr -d '\*' | xargs -IX bash -c "commits_for_branch X"

set -o allexport
