#!/bin/bash

IMAGE_NAME="grei2021"

docker run --user root -e NB_UID=$(id -u) -e NB_GID=$(id -g) -e CHOWN_HOME=yes -e CHOWN_HOME_OPTS='-R' -it --rm --name="IntelixenciaArtificial" -v "${PWD}":/home/jovyan/work -p 8888:8888 ${IMAGE_NAME} start-notebook.sh --NotebookApp.token=''

