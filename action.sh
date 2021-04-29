#!/usr/bin/env bash

set -o errexit
set -o pipefail

# Populate defaults
[[ -n $GITHUB_ACTION_PATH ]] || GITHUB_ACTION_PATH=$(pwd)

if [[ -f "$GITHUB_ACTION_PATH"/semgrep/${REPOSITORY}.yml ]]
then
    echo "ℹ️ Copying semgrep files to repo root directory"
    cp "$GITHUB_ACTION_PATH"/semgrep/${REPOSITORY}.yml .semgrep.yml
    cp "$GITHUB_ACTION_PATH"/semgrep/.semgrepignore .semgrepignore
else
  echo "❌ Semgrep file does not exist for REPOSITORY '${REPOSITORY}'"
  return 1
fi
