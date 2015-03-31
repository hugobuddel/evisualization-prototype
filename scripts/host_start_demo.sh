#!/bin/env bash

# Directory of the script
# http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Get settings if necessary.
$DIR/lxc_settings_auto.sh

# Set the system and awe user if necessary.
$DIR/host_create_user.sh
$DIR/host_copy_awe_user.sh

evis_user /home/evis/scripts/start_demo_screen.sh

