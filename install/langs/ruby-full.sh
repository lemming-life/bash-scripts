#!/usr/bin/env bash

# Notes:
# - Installs ruby.

RUBY_VERSION=${RUBY_VERSION:-}

if [ "$(uname)" = "Darwin" ]; then
  brew update
  if [ -z $RUBY_VERSION ]; then
    brew install ruby
  else
    brew install ruby@$RUBY_VERSION
  fi

else
  sudo apt-get update
  sudo apt-get install -q -y --force-yes \
    apt-transport-https \
    software-properties-common

  if [ -z $RUBY_VERSION ]; then
    # 2.3
    sudo apt-get install ruby-full
  else
    echo | sudo apt-add-repository ppa:brightbox/ruby-ng
    sudo apt-get update
    sudo apt-get install -q -y ruby$RUBY_VERSION ruby$RUBY_VERSION-dev
  fi
fi
