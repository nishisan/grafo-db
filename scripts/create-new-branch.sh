#!/bin/bash

BRANCH_NAME=${1}
echo "-----------------------------------"
echo "Creating New Branch :${BRANCH_NAME}"
echo "-----------------------------------"
cd ..
git checkout -b "${BRANCH_NAME}"
git push --set-upstream origin "${BRANCH_NAME}"
git submodule foreach --recursive git checkout -b "${BRANCH_NAME}"
git submodule foreach --recursive git push --set-upstream origin "${BRANCH_NAME}"
