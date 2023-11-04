#!/bin/bash

CHECKOUT=${1}

cd ..

git checkout "${CHECKOUT}"
git branch
git submodule foreach --recursive git checkout "${CHECKOUT}"
git submodule foreach --recursive git branch

