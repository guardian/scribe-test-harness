#!/bin/bash

# POST INSTALL
# This script will copy boilerplate scripts into the current working directory
# It is assumed that this module is installed as a dependency to a scribe plug-in

CWD=`pwd`
DIRNAME=`dirname $0`
TARGET_PATH="$CWD/../run-tests.sh"

if [ ! -e $TARGET_PATH  ]
then
  cp "$DIRNAME/run-tests.sh" $TARGET_PATH
  echo "Copying run-tests.sh to $TARGET_PATH: cp result $?"
fi
