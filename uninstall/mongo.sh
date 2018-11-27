#!/usr/bin/env bash

REMOVE_MONGO_DATA=${REMOVE_MONGO_DATA:-false}

sudo service mongodb stop
sudo apt-get purge -y mongodb*

if [ $REMOVE_MONGO_DATA = true ]; then
  echo "Removing Mongo data."
  sudo rm -r /var/log/mongodb
  sudo rm -r /var/lib/mongodb
else
  echo "Leaving Mongo data. Set REMOVE_MONGO_DATA=true when calling script to remove data."
fi
