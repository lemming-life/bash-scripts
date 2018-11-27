#!/usr/bin/env bash

if [ "$(uname)" = "Darwin" ]; then
  brew install git
  brew install git-lfs
else
  sudo apt-get update
  sudo apt-get install -q -y \
    git \
    git-lfs
fi

git lfs install
