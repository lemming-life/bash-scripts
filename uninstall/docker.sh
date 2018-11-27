#!/usr/bin/env bash

if [ "$(uname)" = "Darwin" ]; then
  DOCKER_DIRECTORY=${DOCKER_DIRECTORY:-/Applications/Docker.app/Contents/MacOS}
  .$DOCKER_DIRECTORY/Docker --uninstall
else
  sudo apt-get purge -q -y docker.io
  sudo rm -rf /var/lib/docker
fi
