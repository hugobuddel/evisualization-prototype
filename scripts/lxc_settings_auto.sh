#!/bin/env bash

# Automatically determine the best lxc settings.

# Directory of the script
# http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Check whether the settings have already been set.
if [ -z $DIR_LXC_EVIS ]
then
    # If not, then get the default.
    source $DIR/lxc_settings.sh
fi
