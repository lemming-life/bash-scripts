#!/usr/bin/env bash

TARGET_PATH=${TARGET_PATH:-$(pwd)}

find $TARGET_PATH -name "*.sh" -execdir chmod +x {} +

