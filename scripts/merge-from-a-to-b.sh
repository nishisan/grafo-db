#!/bin/bash
cd ..

#
# MERGE FROM A TO B
#

MERGE_FROM=${1}
MERGE_TO=${2}

#bash commit-all.cmd "MERGING ${MERGE_FROM} To ${MERGE_TO}"


git checkout "${MERGE_TO}"
git merge "${MERGE_FROM}"
git push

git submodule foreach --recursive git checkout "${MERGE_TO}"
git submodule foreach --recursive git merge "${MERGE_FROM}"
git submodule foreach --recursive git push







