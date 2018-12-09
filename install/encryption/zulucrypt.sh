#!/usr/bin/env bash

ZC_GUI=${CZ_GUI:-true}

sudo apt-get update

if [ "ZC_GUI" = true ]; then
  sudo apt-get install zulucrypt-gui
else
  sudo apt-get install zulucrypt-cli
fi

