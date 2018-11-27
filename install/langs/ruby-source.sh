#!/usr/bin/env bash

# Notes:
# - Installs ruby from source.

RUBY_VERSION=${RUBY_VERSION:-2.3.1}

RUBY_INSTALL_VERSION=${RUBY_INSTALL_VERSION:-0.5.0}
RUBY_DIR_NAME=ruby-install-$RUBY_INSTALL_VERSION
RUBY_TAR=$RUBY_DIR_NAME.tar.gz
RUBY_REPO_TAR=https://github.com/postmodern/ruby-install/archive/v$RUBY_INSTALL_VERSION.tar.gz
TEMP_DIRECTORY=${TEMP_DIRECTORY:-/tmp}
ORIGINAL_PWD=$(pwd)

sudo apt-get update
sudo apt-get install -q -y \
  build-essential \
  wget

cd $TEMP_DIRECTORY
wget -O $RUBY_TAR $RUBY_REPO_TAR
tar -xzvf $RUBY_TAR
cd $RUBY_DIR_NAME
make install
ruby-install ruby $RUBY_VERSION
export PATH=/opt/rubies/ruby-$RUBY_VERSION/bin:$PATH gem install bundler
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
cd $ORIGINAL_PWD
