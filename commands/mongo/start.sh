#!/usr/bin/env bash

echo "Configuration is usually located at /etc/mongodb.conf"

MONGO_VERSION=${MONGO_VERSION:-}

if [ "$(uname)" = "Darwin" ]; then
  if [ -z $MONGO_VERSION ]; then
    brew services start mongodb
  else
    brew services start mongodb@$MONGO_VERSION
  fi
else
  sudo service mongodb start
fi
