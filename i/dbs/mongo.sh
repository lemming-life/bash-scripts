#!/usr/bin/env bash

# Notes:
# - Installs mongo.
# - Supports serveral linux distros.

MONGO_VERSION=${MONGO_VERSION:-4.0}
UBUNTU_CODENAME=${UBUNTU_CODENAME:-bionic}

sudo apt-get update
sudo apt-get install -y gnupg
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4

if [ "$CODENAME" = "bionic" ]; then
  echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/$MONGO_VERSION multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-$MONGO_VERSION.list
elif [ "$CODENAME" = "xenial" ]; then
  echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/$MONGO_VERSION multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-$MONGO_VERSION.list
elif [ "$CODENAME" = "trusty" ]; then
  echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/$MONGO_VERSION multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-$MONGO_VERSION.listg
fi

sudo apt-get update
sudo apt-get install -q -y mongodb
export PATH=/usr/bin:$PATH

