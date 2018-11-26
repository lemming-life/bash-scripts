#!/usr/bin/env bash

MONGO_VERSION=${MONGO_VERSION:-}

if [ "$(uname)" = "Darwin" ]; then
  if [ -z "$MONGO_VERSION" ]; then
    brew services restart mongodb
  else
    brew services restart mongodb@$MONGO_VERSION
  fi
else
  sudo service mongodb restart
fi
