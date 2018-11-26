#!/usr/bin/env bash

if [ "$(uname)" = "Darwin" ]; then
  brew services list | grep mongodb
else
  sudo service mongodb status
fi
