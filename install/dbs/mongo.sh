#!/usr/bin/env bash

# Notes:
# - Installs mongo.

MONGO_VERSION=${MONGO_VERSION:-}

if [ "$(uname)" = "Darwin" ]; then
  brew update
  if [ -z $MONGO_VERSION ]; then
    brew install mongodb
  else
    brew install mongodb@$MONGO_VERSION
  fi

else
  UBUNTU_CODENAME=${UBUNTU_CODENAME:-bionic}
  MONGO_VERSION=${MONGO_VERSION:-4.0}
  sudo apt-get update
  sudo apt-get install -q -y \
    apt-transport-https
    gnupg

  sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4

  if [ "$UBUNTU_CODENAME" = "bionic" ] || [ "$UBUNTU_CODENAME" = "trusty" ]; then
    echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu $UBUNTU_CODENAME/mongodb-org/$MONGO_VERSION multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-$MONGO_VERSION.list
  elif [ "$UBUNTU_CODENAME" = "xenial" ]; then
    echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/$MONGO_VERSION multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-$MONGO_VERSION.list
  fi

  sudo apt-get update
  sudo apt-get install -q -y --force-yes mongodb
  export PATH=/usr/bin:$PATH
fi
