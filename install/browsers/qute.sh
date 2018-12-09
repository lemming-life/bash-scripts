#!/usr/bin/env bash

if [ "$(uname)" = "Darwin" ]; then
  brew install qute
else
  sudo apt-get update
  sudo apt-get install -q -y libglib2.0-0 libgl1 libfontconfig1 libx11-xcb1 libxi6 libxrender1 libdbus-1-3
  sudo apt-get install -q -y ./python3-pypeg2_*_all.deb
  sudo apt-get install -q -y ./qutebrowser*.deb
  sudo apt-get install -q -y qutebrowser
fi
