#!/usr/bin/env zsh

# Location of this script
TOOLS_PATH=$(cd `dirname $0` && pwd)

BIN_PATH=${HOME}/bin

ln -fs $TOOLS_PATH/dcsz.sh $BIN_PATH/dcsz
ln -fs $TOOLS_PATH/tsshz.py $BIN_PATH/tsshz
