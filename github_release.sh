#!/usr/bin/env bash

set -e

CURRENT_VERSION=$(cat package.json  | jq -r .version)
COMMIT_MESSAGE=$(git show -s --format=%B HEAD -1)

# GITHUB RELEASE
echo $CURRENT_VERSION
echo $COMMIT_MESSAGE
ghr -b "${COMMIT_MESSAGE}" "${CURRENT_VERSION}" .
