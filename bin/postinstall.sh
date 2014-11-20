#!/bin/bash

# POST INSTALL
# This script will copy boilerplate scripts into the current working directory
# It is assumed that this module is installed as a dependency to a scribe plug-in

CWD=`pwd`;
DIRNAME=`dirname $0`;

if [ ! -e "$CWD/run-tests.sh"  ]; then
  cp "$DIRNAME/run-tests.sh"  "$CWD/run-tests.sh";
fi
