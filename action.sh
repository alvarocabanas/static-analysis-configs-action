#!/usr/bin/env bash

set -o errexit
set -o pipefail

# Populate defaults
[[ -n $GITHUB_ACTION_PATH ]] || GITHUB_ACTION_PATH=$(pwd)

echo "ℹ️ Copying semgrep file to repo root directory"
cp semgrep/${INTEGRATION}.yml .semgrep.yml