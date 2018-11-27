#!/usr/bin/env bash

MONGO_VERSION=${MONGO_VERSION:-}

if [ "$(uname)" = "Darwin" ]; then
  if [ -z $MONGO_VERSION ]; then
    brew services stop mongodb
  else
    brew services stop mongodb@$MONGO_VERSION
  fi
else
  sudo service mongodb stop
fi
