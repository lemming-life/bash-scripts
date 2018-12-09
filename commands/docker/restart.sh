#!/usr/bin/env bash

if [ "$(uname)" = "Darwin" ]; then
  killall Docker && open /Applications/Docker.app
else
  sudo systemctl restart docker
fi
