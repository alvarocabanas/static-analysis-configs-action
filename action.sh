#!/usr/bin/env bash

set -o errexit
set -o pipefail

# Populate defaults
[[ -n $GITHUB_ACTION_PATH ]] || GITHUB_ACTION_PATH=$(pwd)

if [ "${SEMGREP}" = "true" ]; then
  echo "ℹ️ Copying semgrep files to repo root directory"
  if [[ -f "$GITHUB_ACTION_PATH"/semgrep/${REPOSITORY}.yml ]]
  then
      cp "$GITHUB_ACTION_PATH"/semgrep/${REPOSITORY}.yml .semgrep.yml
  else
      cp "$GITHUB_ACTION_PATH"/semgrep/default.yml .semgrep.yml
  fi
  cp "$GITHUB_ACTION_PATH"/semgrep/.semgrepignore .semgrepignore
fi


if [ "${GOLANGCI_LINT}" = "true" ]; then
  echo "ℹ️ Copying golangci-lint files to repo root directory"
  if [[ -f "$GITHUB_ACTION_PATH"/golangci-lint/${REPOSITORY}.yml ]]
  then
      cp "$GITHUB_ACTION_PATH"/golangci-lint/${REPOSITORY}.yml .golangci.yml
  else
      cp "$GITHUB_ACTION_PATH"/golangci-lint/default.yml .golangci.yml
  fi
fi