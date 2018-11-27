#!/usr/bin/env bash

if [ "$(uname)" = "Darwin" ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "You are not on a mac. You can't install homebrew."
fi
