#!/usr/bin/env bash

# Notes:
# - Installs docker.

if [ "$(uname)" = "Darwin" ]; then
  brew update
  brew install docker
else
  sudo apt-get update
  sudo apt-get upgrade -q -y
  sudo apt-get install -q -y docker.io
fi
