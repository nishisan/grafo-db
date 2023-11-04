#!/bin/bash

export COMMIT_MESSAGE=${1:-Bump}

echo "Commit message is :${COMMIT_MESSAGE}"
sleep 5


git submodule foreach --recursive 'git add .; git diff-index --quiet HEAD || git commit -m "${COMMIT_MESSAGE}"'
git submodule foreach --recursive git push
git add .
git commit -m "${COMMIT_MESSAGE}"
git push

