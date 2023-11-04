#!/bin/bash
#
# Este Script realiza o Build e a publicação de uma branch no Registry do Docker
#
# @Author: Lucas Nishimura < lucas at nubsphere.com >
#

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
MODULE_ROOT=$(dirname $(dirname $(readlink -fm $0)))


cd ${MODULE_ROOT}

RELEASE_BRANCH=${1}

echo "--------------------------------------------------------------"
echo "Module Root is ${MODULE_ROOT} Building for:[${RELEASE_BRANCH}]"
echo "--------------------------------------------------------------"

#
# Sincroniza localmente:
#
git pull --recurse-submodules
git pull 
#
# Agora faz o checkou de tudo para a Branch:
#
git submodule foreach --recursive git checkout ${RELEASE_BRANCH}
git submodule foreach --recursive git pull
git checkout ${RELEASE_BRANCH}

cd ${DIR}
