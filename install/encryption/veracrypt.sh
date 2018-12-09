#!/usr/bin/env bash

# Note
# - Not interactive.

PREVIOUS_PWD=$(pwd)
TEMP_DIR=${TEMP_DIR:-/tmp}
TEMP_TIME=${TEMP_TIME:-$(date +%Y-%m-%dT%H-%M-%S -u)}
cd $TEMP_DIR

VC_TEMP_DIR=${VC_TEMP_DIR:-$TEMP_DIR/veracrypt-$TEMP_TIME}
VC_VERSION=${VC_VERSION:-1.23}
VC_TAR=${VC_TAR:-veracrypt-$VC_VERSION-setup.tar.bz2}
VC_URI=${VC_URI:-https://launchpad.net/veracrypt/trunk}
VC_DOWNLOAD_URI=${VC_DOWNLOAD_URI:-$VC_URI/$VC_VERSION/+download/$VC_TAR}
VC_GUI=${VC_GUI:-true}
VC_SYSTEM=${VC_SYSTEM:-x64}

# Download
wget $VC_DOWNLOAD_URI

# Extract
mkdir $VC_TEMP_DIR
tar xjvf $VC_TAR -C $VC_TEMP_DIR
cd $VC_TEMP_DIR

# Install
VC_EXE=veracrypt-$VC_VERSION-setup-gui-$VC_SYSTEM
if [ "$VC_GUI" = false ]; then
  VC_EXE=veracrypt-$VC_VERSION-setup-console-$VC_SYSTEM
fi
sudo ./$VC_EXE

# Cleanup
rm -rf $VC_TEMP_DIR
rm $TEMP_DIR/$VC_TAR

# Restore
cd $PREVIOUS_PWD

