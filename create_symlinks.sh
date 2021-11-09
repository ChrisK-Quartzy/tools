#!/usr/bin/env zsh

# Location of this script
TOOLS_PATH=$(cd `dirname $0` && pwd)

BIN_PATH=${HOME}/bin

ln -s $TOOLS_PATH/tsshz.sh $BIN_PATH/tsshz
