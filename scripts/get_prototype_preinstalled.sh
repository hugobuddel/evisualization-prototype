#!/usr/bin/env bash

# Get a preinstalled version of the eVisualization prototype.

# Directory of the script
# http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Get proot, needs to be available outside of the container.
$DIR/get_proot.sh 

# Get the container.
$DIR/get_container_preinstalled.sh

# Create a user in the container. This is necessary to ensure the userid matches the files.
$DIR/host_create_user.sh

# Copy these scripts to the container.
$DIR/copy_scripts.sh

# Tell the shell where the container can be found and make shell functions.
source $DIR/lxc_settings.sh

# Update the prototype code.
evis_user /home/evis/scripts/user_update_aweorange.sh

# Copy the awe user if necessary.
$DIR/host_copy_awe_user.sh

# Update the system packages.
evis_root /home/evis/scripts/root_aptget_upgrade.sh

