#!/usr/bin/env bash

set -o errexit
set -o pipefail

[[ -n $GITHUB_ACTION_PATH ]] || GITHUB_ACTION_PATH=$(pwd)
[[ -n $SEMGREP_APPEND ]] || SEMGREP_APPEND="false"

echo $GITHUB_ACTION_PATH
ls -la

find ./golangci-lint  -type f | while read -r file
do
  fileBasename=$(basename $file)

  if [[ ! -f "$fileBasename" ]]
  then
      echo "ℹ️ Copying $fileBasename file to repo root directory"
      cp "$GITHUB_ACTION_PATH/$file" "$fileBasename"
  else
      echo "ℹ️ Local $fileBasename file detected skipping overwrite"
  fi
done